/*
完成读取角度和补零
存在问题：
角度数据是以双倍位宽读取，必须是偶数，否则会出现最后一位多读一个错误数据的问题
*/
module read_angle_data #(
	parameter FFT_N                       = 512,
	parameter ANGLE_NUM                   = 180,
	parameter ANGEL_DATA_LEN              = 367,
	parameter ANGEL_DATA_LEN_HALF         = 184,
	parameter  C_M_TARGET_SLAVE_BASE_ADDR = 32'h40000000,
	parameter integer C_NO_BURSTS_REQ     = 5,
	parameter integer C_M_AXI_ADDR_WIDTH  = 32,
	parameter integer C_M_AXI_BURST_LEN   = 16
)
(
	input clk,    // Clock
	input arstn,  // Asynchronous reset active low

	input wire [31:0] angle_base_addr,
	input wire angle_base_addr_valid,
	//Control
	//单周期脉冲信号
	// txn_done为 1 时 start_one_new_txn 可以产生一个脉冲,开始一帧图像的传输
	// 
	// 接着等待one_angle_txn_done为 1 ，当one_angle_txn_done == 1 时 表示已经传输完一个角度的数据
	// 这个时候get_next_angle 可以产生一个脉冲 开始传输下一个角度的数据
	// 
	input wire			start_one_new_txn,
	input wire			get_next_angle,
	output reg			one_angle_txn_done,
	output reg			txn_done,

	//AXI Stream
	output wire	[63:0]	M_AXIS_TDATA,
	output wire			M_AXIS_TLAST,
	output wire			M_AXIS_TVALID,
	input  wire			M_AXIS_TREADY,
	
	//FIFO control   64*512
	output wire			rd_fifo_rd_en,
	input  wire	[63:0]	rd_fifo_dout,
	input  wire			rd_fifo_full,
	input  wire			rd_fifo_empty,
	input  wire	[9:0]	rd_fifo_data_count,

	//AXI control
	output reg	[C_M_AXI_ADDR_WIDTH-1 : 0]	axi_txn_base_rd_addr,
	output reg	[C_NO_BURSTS_REQ : 0]		axi_txn_rd_burst_counter, //传输数量 按2KB速度传输
	output reg								axi_txn_rd_cfg_valid,
	input wire								axi_txn_rd_busy,
	output reg								init_axi_txn_rd

);

	function integer clogb2 (input integer bit_depth);              
	begin                                                           
	  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	    bit_depth = bit_depth >> 1;                                 
	  end                                                           
	endfunction

	function integer myceil(input integer a,input integer b);              
	begin
	  for(myceil=0; a>=b; myceil=myceil+1) begin                 
	    a = a - b; 
	  end   
	  if (a==0) begin
	  	myceil = myceil;
	  end
	  else begin
	  	myceil = myceil + 1;
	  end                             
	end
	endfunction   
	
	parameter integer TOTAL_NUM = ANGEL_DATA_LEN*ANGLE_NUM; //729*180; //131220 图像像素总数
	parameter integer BURST_NUM = myceil(TOTAL_NUM,512); //2K突发次数
	
	parameter integer ANGLE_DATA_STREAM_NUM = ANGEL_DATA_LEN_HALF;
	parameter integer ANGLE_DATA_STREAM_WIDTH = clogb2(ANGLE_DATA_STREAM_NUM-1);

	parameter integer FFT_STREAM_NUM = FFT_N;
	parameter integer FFT_STREAM_WIDTH = clogb2(FFT_STREAM_NUM-1);
	
	parameter integer BURST_COUNT_WIDTH = clogb2(BURST_NUM-1);
	parameter integer COUNTER_NUM_2KB = 2048/(C_M_AXI_BURST_LEN*8);

	reg [31:0] base_addr;
 	always @(posedge clk ) begin
 		if(~arstn) begin
 			base_addr <= C_M_TARGET_SLAVE_BASE_ADDR;
 		end 
 		else if(angle_base_addr_valid) begin
 			base_addr <= angle_base_addr;
 		end
 		else begin
 			base_addr <= base_addr;
 		end
 	end

    wire	[63:0]	axis_tdata;
	wire			axis_tlast;
	wire			axis_tvalid;
	wire			axis_tready;

	assign M_AXIS_TDATA  = axis_tdata;
	assign M_AXIS_TLAST  = axis_tlast;
	assign M_AXIS_TVALID = axis_tvalid;
	assign axis_tready   = M_AXIS_TREADY;

	//状态机
    localparam IDLE            = 7'b0000001;
    localparam CLEAN_FIFO_IDLE = 7'b0000010;
    localparam WAIT_FIFO       = 7'b0000100;
    localparam READ_DATA       = 7'b0001000;
    localparam WAIT_READ       = 7'b0010000;
    localparam WAIT_NEXT_READ  = 7'b0100000; 
    localparam CLEAN_FIFO      = 7'b1000000;

    reg	[7-1:0]	mst_state;

    reg start_txn_to_fft;
    wire finsh_txn_to_fft;

    reg	[63:0]	rd_fifo_dout_throw;
    reg			rd_fifo_rd_en_clean;
    wire		rd_fifo_rd_en_axis;
	reg			switch_en;

	assign rd_fifo_rd_en = switch_en == 0 ? rd_fifo_rd_en_clean : rd_fifo_rd_en_axis;

	//请求角度计数器
	reg [8-1:0] angle_num_cnt;
	wire add_angle_num_cnt;
	wire end_angle_num_cnt;
	always @(posedge clk)begin
	    if(arstn==0 )begin
	        angle_num_cnt <= 0;
	    end
	    else if(add_angle_num_cnt)begin
	        if(end_angle_num_cnt)
	            angle_num_cnt <= 0;
	        else
	            angle_num_cnt <= angle_num_cnt + 1;
	    end
	end
	assign add_angle_num_cnt = start_one_new_txn || get_next_angle;       
	assign end_angle_num_cnt = add_angle_num_cnt && angle_num_cnt== ANGLE_NUM - 1;

	//FFT点数计数器
	reg [FFT_STREAM_WIDTH-1:0] fft_stream_cnt;
	wire add_fft_stream_cnt;
	wire end_fft_stream_cnt;
	always @(posedge clk) begin
	    if(~arstn) begin
	        fft_stream_cnt <= 0;
	    end
	    else if(add_fft_stream_cnt)begin
	        if(end_fft_stream_cnt)
	            fft_stream_cnt <= 0;
	        else
	            fft_stream_cnt <= fft_stream_cnt + 1;
	    end
	end
	
	assign add_fft_stream_cnt = axis_tvalid && axis_tready;
	assign end_fft_stream_cnt = add_fft_stream_cnt && fft_stream_cnt == FFT_STREAM_NUM - 1;
	assign axis_tlast = end_fft_stream_cnt;
	//assign axis_tlast = 0;

	reg [ANGLE_DATA_STREAM_WIDTH-1:0] angle_data_stream_cnt;
	wire add_angle_data_stream_cnt;
	wire end_angle_data_stream_cnt;
	always @(posedge clk) begin
	    if(~arstn) begin
	        angle_data_stream_cnt <= 0;
	    end
	    else if(add_angle_data_stream_cnt)begin
	        if(end_angle_data_stream_cnt)
	            angle_data_stream_cnt <= 0;
	        else
	            angle_data_stream_cnt <= angle_data_stream_cnt + 1;
	    end
	end
	assign add_angle_data_stream_cnt = rd_fifo_rd_en_axis;       
	assign end_angle_data_stream_cnt = add_angle_data_stream_cnt && angle_data_stream_cnt == ANGLE_DATA_STREAM_NUM -1;


	//一次传输完成标志
 	reg axi_txn_rd_busy_ff;
 	reg axi_txn_rd_busy_ff2;
 	wire done_flag;
 	assign done_flag = axi_txn_rd_busy_ff2 && (!axi_txn_rd_busy_ff);
 	always @(posedge clk) begin										      
	  begin                                                                        
	    if (arstn == 0 )                                                   
	      begin                                                                    
	        axi_txn_rd_busy_ff  <= 1'b0;                                                   
	        axi_txn_rd_busy_ff2 <= 1'b0;                                                   
	      end                                                                               
	    else                                                                       
	      begin  
	        axi_txn_rd_busy_ff  <= axi_txn_rd_busy;
	        axi_txn_rd_busy_ff2 <= axi_txn_rd_busy_ff;                                                                 
	      end                                                                      
	  end
	end
	//打一拍
	reg done_flag_r;
	always @(posedge clk)begin
		if(arstn == 0) begin
			done_flag_r <= 1'b0;
		end
		else begin
			done_flag_r <= done_flag;
		end
	end
	//传输次数计数器
	//计满时表示已经传输完成一帧图像
	reg [BURST_COUNT_WIDTH-1:0] burst_count;
	wire add_burst_count;
	wire end_burst_count;
	always @(posedge clk)begin
	    if(!arstn || start_one_new_txn==1'b1)begin
	        burst_count <= 0;
	    end
	    else if(add_burst_count)begin
	        if(end_burst_count)
	            burst_count <= BURST_NUM-1;
	        else
	            burst_count <= burst_count + 1;
	    end
	end
	assign add_burst_count = done_flag;       
	assign end_burst_count = add_burst_count && burst_count== BURST_NUM-1;

	reg end_burst_count_r1;
	reg end_burst_count_r2;
	always @(posedge clk) begin
		if(arstn == 0) begin
			end_burst_count_r1 <= 1'b0;
			end_burst_count_r2 <= 1'b0;
		end
		else begin
			end_burst_count_r1 <= end_burst_count;
			end_burst_count_r2 <= end_burst_count_r1;
		end
	end
	//AXI读控制
    reg txn_en;
    always @(posedge clk)                                                      
	begin
	  if (arstn == 0 || start_one_new_txn == 1)
	  	begin
	  		txn_en <= 1'b0;
	  	end
	  else if (axi_txn_rd_cfg_valid && (~end_burst_count_r2))
	  	begin
	  		txn_en <= 1'b1;
	  	end
	  else if (add_burst_count)
	    begin
	  		txn_en <= 1'b0;
	    end
	  else
	  	begin
	  		txn_en <= txn_en;
	  	end
	end

	always @(posedge clk)                                                      
	begin                                                                             
	  if (arstn == 0 || start_one_new_txn == 1)
	    begin
	      init_axi_txn_rd <= 1'b0;                                                      	
	    end                                                                                                                                                                           
	  else if (txn_en)
	  	begin
	      if (rd_fifo_data_count < 256 && (!axi_txn_rd_busy))
	    	init_axi_txn_rd <= 1'b1;
	      else
	      	init_axi_txn_rd <= 1'b0;
	  	end  
	  else 
	    begin
	      init_axi_txn_rd <= 1'b0;
	    end                                          
	end

	//地址自动配置
	always @(posedge clk)                                                      
	begin
	  if (arstn == 0)
	  	begin
	  	  axi_txn_rd_burst_counter <=  COUNTER_NUM_2KB;
	      axi_txn_base_rd_addr     <=  base_addr;
	      axi_txn_rd_cfg_valid     <= 1'b0;
	  	end
	  else if (start_one_new_txn == 1) 
	    begin
	      axi_txn_rd_burst_counter <=  COUNTER_NUM_2KB;
	      axi_txn_base_rd_addr     <=  base_addr;
	      axi_txn_rd_cfg_valid     <= 1'b1;
	    end
	  else if (done_flag_r)
	  	begin
	  	  axi_txn_rd_burst_counter <= COUNTER_NUM_2KB;
		  axi_txn_base_rd_addr     <= base_addr + (burst_count<<11);
	      axi_txn_rd_cfg_valid     <= 1'b1;
	  	end
	  else
	  	begin
	  	  axi_txn_rd_cfg_valid     <= 1'b0;
	  	end
	end


	assign finsh_txn_to_fft = end_fft_stream_cnt;
	//确保axis传输完成FFT_N个数据
	reg en_axis_txn;
	always @(posedge clk) begin
		if(~arstn) begin
			en_axis_txn     <= 1'b0;
		end 
		else if (start_txn_to_fft == 1'b1) begin
			en_axis_txn     <= 1'b1;
		end
		else if (en_axis_txn == 1'b1) begin
			if (end_fft_stream_cnt) begin
				en_axis_txn <= 1'b0;
			end
			else begin
				en_axis_txn <= 1'b1;
			end
		end
		else begin
			en_axis_txn     <= 1'b0;
		end
	end
	//确保axis传输完成角度数据
	reg en_axis_txn_angle_data;
	always @(posedge clk) begin
		if(~arstn) begin
			en_axis_txn_angle_data     <= 1'b0;
		end 
		else if (start_txn_to_fft == 1'b1) begin
			en_axis_txn_angle_data     <= 1'b1;
		end
		else if (en_axis_txn_angle_data == 1'b1) begin
			if (end_angle_data_stream_cnt) begin
				en_axis_txn_angle_data <= 1'b0;
			end
			else begin
				en_axis_txn_angle_data <= 1'b1;
			end
		end
		else begin
			en_axis_txn_angle_data     <= 1'b0;
		end
	end

	//握手时序
	assign axis_tdata = en_axis_txn_angle_data == 1'b1 ? rd_fifo_dout : 64'd0;
	assign rd_fifo_rd_en_axis = en_axis_txn_angle_data == 1'b1 ? 
								(rd_fifo_empty || (~axis_tready)) ? 1'b0 : 1'b1
								: 1'b0;
	assign axis_tvalid = en_axis_txn == 1'b1 ? 
					     rd_fifo_rd_en_axis == 1'b1 ? rd_fifo_rd_en_axis : 1'b1
						 : 1'b0;


	//状态机描述
	always @(posedge clk) begin
    	if(~arstn) begin
    		start_txn_to_fft    <= 1'b0;
			rd_fifo_rd_en_clean <= 1'b0;
			switch_en           <= 1'b1;
			one_angle_txn_done  <= 1'b1;
			txn_done            <= 1'b1;
			mst_state           <= IDLE;
    	end 
    	else begin
    		case (mst_state)
    			IDLE : begin
    				start_txn_to_fft <= 1'b0;
    				if (start_one_new_txn == 1'b1) begin
                        txn_done           <= 1'b0;
                        one_angle_txn_done <= 1'b0;
                        if(rd_fifo_empty) begin
                        	switch_en      <= 1'b1;
                        	mst_state      <= WAIT_FIFO;
                        end
                        else begin
                        	switch_en      <= 1'b0;
                        	mst_state      <= CLEAN_FIFO_IDLE;          
                        end                  
    				end
    				else begin
    					switch_en          <= 1'b1;
                        txn_done           <= 1'b1;
                        one_angle_txn_done <= 1'b1;
                        mst_state          <= IDLE;    
    				end
    			end
    			CLEAN_FIFO_IDLE : begin //避免跑飞后，重新传输时fifo非空
	            	if (rd_fifo_empty) begin
	                    rd_fifo_rd_en_clean <= 1'b0;
	                    rd_fifo_dout_throw  <= 64'b0;
	                    switch_en           <= 1'b1;
	                    mst_state           <= WAIT_FIFO;
	            	end
	            	else begin
	            		switch_en           <= 1'b0;
	                    rd_fifo_rd_en_clean <= 1'b1;
	                    rd_fifo_dout_throw  <= rd_fifo_dout;
	                    mst_state           <= CLEAN_FIFO_IDLE;
	            	end
    			end
    			WAIT_FIFO : begin
    				if (rd_fifo_data_count >= 255) begin
						mst_state <= READ_DATA;
					end
					else begin
						mst_state <= WAIT_FIFO;
				    end
    			end
    			READ_DATA : begin
    			    start_txn_to_fft <= 1'b1;
    			    mst_state <= WAIT_READ;
    			end
    			WAIT_READ : begin
    				start_txn_to_fft <= 1'b0;
    				if(finsh_txn_to_fft) begin
    					one_angle_txn_done <= 1'b1;
    					mst_state <= WAIT_NEXT_READ;
    				end
    				else begin
    					one_angle_txn_done <= 1'b0;
    					mst_state <= WAIT_READ;
    				end
    			end
    			WAIT_NEXT_READ : begin
    				if (angle_num_cnt == 0) begin
						one_angle_txn_done <= 1'b1;
						mst_state          <= CLEAN_FIFO;
				    end
					else if(get_next_angle) begin
						one_angle_txn_done <= 1'b0;
						mst_state          <= READ_DATA;
					end
					else begin
						one_angle_txn_done <= 1'b1;
						mst_state          <= WAIT_NEXT_READ;
					end
    			end
    			CLEAN_FIFO : begin
    				switch_en               <= 1'b0;
	            	if (rd_fifo_empty) begin
	                    rd_fifo_rd_en_clean <= 1'b0;
	                    rd_fifo_dout_throw  <= 64'b0;
	                    mst_state           <= IDLE;
	            	end
	            	else begin
	                    rd_fifo_rd_en_clean <= 1'b1;
	                    rd_fifo_dout_throw  <= rd_fifo_dout;
	                    mst_state           <= CLEAN_FIFO;
	            	end
    			end
    			default : begin
    				mst_state               <= IDLE;
    			end
    		endcase
    	end
    end

endmodule