module control_angle_txn #(
	//角度值
    parameter ANGLE_NUM           = 180,
    parameter PIPELINES_NUM       = 10
)
(
	input clk,    // Clock
	input arstn,  // Asynchronous reset active low

	//拉高一次，对外读取 PIPELINES_NUM 个角度数据
	input wire			control_unit_start_one_new_txn_angle_data,
	input wire			control_unit_get_next_angle,
	output reg			control_unit_one_angle_txn_done,
	output wire			control_unit_angle_data_txn_done,

	output reg	[7:0]	angle_num,
	output wire			angle_num_valid,

	//对外接口
	output reg			start_one_new_txn_angle_data,
	output reg			get_next_angle,
	input wire			one_angle_txn_done,
	input wire			angle_data_txn_done
);
//内部参数定义
function integer clogb2 (input integer bit_depth);              
	begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	end                                                           
endfunction
parameter integer PIPELINES_NUM_W = clogb2(PIPELINES_NUM - 1);

assign control_unit_angle_data_txn_done = angle_data_txn_done;

//状态机
localparam IDLE                  = 6'b000001;
localparam START_TXN             = 6'b000010;
localparam DELAY0                = 6'b000100;
localparam DELAY1                = 6'b001000;
localparam CNT_TXN               = 6'b010000;
localparam COMPLETE              = 6'b100000;

reg	[5:0]	mst_state;

reg one_angle_txn_done_ff1;
reg one_angle_txn_done_ff2;
wire one_angle_txn_done_posedge;
assign one_angle_txn_done_posedge = (~one_angle_txn_done_ff2) && one_angle_txn_done_ff1;
always @(posedge clk) begin 
	if(~arstn) begin
		one_angle_txn_done_ff1 <= 1;
		one_angle_txn_done_ff2 <= 1;
	end else begin
		one_angle_txn_done_ff1 <= one_angle_txn_done;
		one_angle_txn_done_ff2 <= one_angle_txn_done_ff1;
	end
end

reg [PIPELINES_NUM_W-1:0] txn_num_cnt;
wire add_txn_num_cnt;
wire end_txn_num_cnt;

always @(posedge clk) begin
    if((arstn==1'b0) || control_unit_start_one_new_txn_angle_data == 1'b1)begin
        txn_num_cnt <= 0;
    end
    else if(add_txn_num_cnt)begin
        if(end_txn_num_cnt)
            txn_num_cnt <= 0;
        else
            txn_num_cnt <= txn_num_cnt + 1;
    end
end

assign add_txn_num_cnt = one_angle_txn_done_posedge;       
assign end_txn_num_cnt = add_txn_num_cnt && txn_num_cnt == PIPELINES_NUM - 1;

wire add_angle_num;
wire end_angle_num;
always @(posedge clk) begin
    if((arstn==1'b0) || control_unit_start_one_new_txn_angle_data == 1'b1)begin
        angle_num <= 0;
    end
    else if(add_angle_num)begin
        if(end_angle_num)
            angle_num <= 0;
        else
            angle_num <= angle_num + 10;
    end
end

assign add_angle_num = end_txn_num_cnt;       
assign end_angle_num = add_angle_num && angle_num == ANGLE_NUM - 10;
assign angle_num_valid = add_angle_num;

//状态机控制FIFO读
always @ ( posedge clk)                                                                            
  begin                                                                                                     
    if (arstn == 1'b0 )                                                                             
      begin                                                                                                                        
        mst_state <= IDLE;
        control_unit_one_angle_txn_done <= 1'b1;
        start_one_new_txn_angle_data <= 1'b0;    
        get_next_angle <= 1'b0;                                        
      end                                                                                                   
    else                                                                                                    
      begin
      	case (mst_state)
      	  IDLE:
      	    begin
      	    	get_next_angle <= 1'b0;
      	    	if(control_unit_start_one_new_txn_angle_data == 1'b1) begin
      	    		start_one_new_txn_angle_data <= 1'b1;
      	    		control_unit_one_angle_txn_done <= 1'b0;
      	    		mst_state <= START_TXN;
      	    	end
      	    	else begin
      	    		start_one_new_txn_angle_data <= 1'b0;
					control_unit_one_angle_txn_done <= one_angle_txn_done;
      	    		mst_state <= IDLE;
      	    	end
      	    end
      	  START_TXN:
      	    begin
      	    	start_one_new_txn_angle_data <= 1'b0;
      	    	mst_state <= DELAY0;
      	    end
      	  DELAY0:
      	    begin
      	    	mst_state <= DELAY1;
      	    end
      	  DELAY1:
      	    begin
      	    	mst_state <= CNT_TXN;
      	    end
      	  CNT_TXN:
      	    begin
                if(end_txn_num_cnt) begin
      	    		get_next_angle <= 1'b0;
      	    		mst_state <= COMPLETE;
      	    	end
      	    	else begin
      	    		if (add_txn_num_cnt) begin
      	    			get_next_angle <= 1'b1;
      	    		end
      	    		else begin
      	    			get_next_angle <= 1'b0;
      	    		end
      	    		mst_state <= CNT_TXN;
      	    	end
      	    end
      	  COMPLETE:
      	  	begin
				if(angle_data_txn_done) begin
      	    		get_next_angle <= 1'b0;
      	    		mst_state <= IDLE;
      	    	end
      	    	else if(control_unit_get_next_angle == 1'b1) begin
      	    		get_next_angle <= 1'b1;
      	    		control_unit_one_angle_txn_done <= 1'b0;
      	    		mst_state <= CNT_TXN;
      	    	end
      	    	else begin
      	    		get_next_angle <= 1'b0;
      	    		control_unit_one_angle_txn_done <= one_angle_txn_done;
      	    		mst_state <= COMPLETE;
      	    	end
      	    end
      	  default:
      	    begin
      	    	mst_state <= IDLE;
      	    end
      	endcase
      end
  end
endmodule
