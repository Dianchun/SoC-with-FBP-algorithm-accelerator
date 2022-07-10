module stream_switch  #(
    parameter FFT_N               = 512, // 1024/2
    parameter PIPELINES_NUM       = 60
)
(
	input clk,    // Clock
	input arstn,  // Asynchronous reset active low
	
	input wire	[63:0]	angle_data_input,
    input wire			angle_data_valid,
    output wire			angle_data_ready,

	output reg	[63:0]	angle_data_input_switch [0:PIPELINES_NUM-1],
	output reg			angle_data_valid_switch [0:PIPELINES_NUM-1]
    //output reg	[63:0]	angle0_data_input,
    //output reg			angle0_data_valid,
    //output reg	[63:0]	angle1_data_input,
    //output reg			angle1_data_valid,
    //output reg	[63:0]	angle2_data_input,
    //output reg			angle2_data_valid,
    //output reg	[63:0]	angle3_data_input,
    //output reg			angle3_data_valid,
    //output reg	[63:0]	angle4_data_input,
    //output reg			angle4_data_valid,
    //output reg	[63:0]	angle5_data_input,
    //output reg			angle5_data_valid,
    //output reg	[63:0]	angle6_data_input,
    //output reg			angle6_data_valid,
    //output reg	[63:0]	angle7_data_input,
    //output reg			angle7_data_valid,
    //output reg	[63:0]	angle8_data_input,
    //output reg			angle8_data_valid,
    //output reg	[63:0]	angle9_data_input,
    //output reg			angle9_data_valid
);
//内部参数定义
function integer clogb2 (input integer bit_depth);              
	begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	end                                                           
endfunction
parameter integer FFT_N_WIDTH = clogb2(FFT_N - 1);
parameter integer PIPELINES_NUM_W = clogb2(PIPELINES_NUM - 1);
//输入数据量统计 计数器
reg [FFT_N_WIDTH-1:0] data_num_cnt;
wire add_data_num_cnt;
wire end_data_num_cnt;
always @(posedge clk)begin
    if(~arstn)begin
        data_num_cnt <= 0;
    end
    else if(add_data_num_cnt)begin
        if(end_data_num_cnt)
            data_num_cnt <= 0;
        else
            data_num_cnt <= data_num_cnt + 1;
    end
end
assign add_data_num_cnt = angle_data_valid &&  angle_data_ready;   
assign end_data_num_cnt = add_data_num_cnt && data_num_cnt == FFT_N - 1;

reg [PIPELINES_NUM_W-1:0] switch;
wire add_switch;
wire end_switch;
always @(posedge clk)begin
    if(!arstn)begin
        switch <= 0;
    end
    else if(add_switch)begin
        if(end_switch)
            switch <= 0;
        else
            switch <= switch + 1;
    end
end

assign add_switch = end_data_num_cnt;       
assign end_switch = add_switch && switch== PIPELINES_NUM-1;

assign angle_data_ready = 1'b1;

genvar i; //genvar i;也可以定义到generate语句里面
generate
    for(i=0;i<PIPELINES_NUM;i=i+1)
    begin:angle_data
	    always @(posedge clk) begin
			if(~arstn) begin
				angle_data_input_switch[i] = 0;
				angle_data_valid_switch[i] = 0;
			end 
			else if(switch == i) begin
				angle_data_input_switch[i] = angle_data_input;
				angle_data_valid_switch[i] = angle_data_valid;
			end
			else begin
				angle_data_input_switch[i] = 0;
				angle_data_valid_switch[i] = 0;
			end
		end
    end
endgenerate

/*
always @(posedge clk) begin
	if(~arstn) begin
		angle0_data_input = 0;
		angle0_data_valid = 0;
	end 
	else if(switch == 0) begin
		angle0_data_input = angle_data_input;
		angle0_data_valid = angle_data_valid;
	end
	else begin
		angle0_data_input = 0;
		angle0_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle1_data_input = 0;
		angle1_data_valid = 0;
	end 
	else if(switch == 1) begin
		angle1_data_input = angle_data_input;
		angle1_data_valid = angle_data_valid;
	end
	else begin
		angle1_data_input = 0;
		angle1_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle2_data_input = 0;
		angle2_data_valid = 0;
	end 
	else if(switch == 2) begin
		angle2_data_input = angle_data_input;
		angle2_data_valid = angle_data_valid;
	end
	else begin
		angle2_data_input = 0;
		angle2_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle3_data_input = 0;
		angle3_data_valid = 0;
	end 
	else if(switch == 3) begin
		angle3_data_input = angle_data_input;
		angle3_data_valid = angle_data_valid;
	end
	else begin
		angle3_data_input = 0;
		angle3_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle4_data_input = 0;
		angle4_data_valid = 0;
	end 
	else if(switch == 4) begin
		angle4_data_input = angle_data_input;
		angle4_data_valid = angle_data_valid;
	end
	else begin
		angle4_data_input = 0;
		angle4_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle5_data_input = 0;
		angle5_data_valid = 0;
	end 
	else if(switch == 5) begin
		angle5_data_input = angle_data_input;
		angle5_data_valid = angle_data_valid;
	end
	else begin
		angle5_data_input = 0;
		angle5_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle6_data_input = 0;
		angle6_data_valid = 0;
	end 
	else if(switch == 6) begin
		angle6_data_input = angle_data_input;
		angle6_data_valid = angle_data_valid;
	end
	else begin
		angle6_data_input = 0;
		angle6_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle7_data_input = 0;
		angle7_data_valid = 0;
	end 
	else if(switch == 7) begin
		angle7_data_input = angle_data_input;
		angle7_data_valid = angle_data_valid;
	end
	else begin
		angle7_data_input = 0;
		angle7_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle8_data_input = 0;
		angle8_data_valid = 0;
	end 
	else if(switch == 8) begin
		angle8_data_input = angle_data_input;
		angle8_data_valid = angle_data_valid;
	end
	else begin
		angle8_data_input = 0;
		angle8_data_valid = 0;
	end
end
always @(posedge clk) begin
	if(~arstn) begin
		angle9_data_input = 0;
		angle9_data_valid = 0;
	end 
	else if(switch == 9) begin
		angle9_data_input = angle_data_input;
		angle9_data_valid = angle_data_valid;
	end
	else begin
		angle9_data_input = 0;
		angle9_data_valid = 0;
	end
end
*/
endmodule