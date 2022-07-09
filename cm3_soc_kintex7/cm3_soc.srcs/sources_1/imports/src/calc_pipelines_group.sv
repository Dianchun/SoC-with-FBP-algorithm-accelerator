module calc_pipelines_group #(
    parameter PIPELINES_NUM       = 10,
    parameter ANGEL_DATA_LEN      = 367,
    parameter ANGEL_DATA_LEN_HALF = 184,  // (367+1)/2
    parameter IMG_N               = 258
)
(
	input clk,    // Clock
	input arstn,  // Asynchronous reset active low
	//控制信号
	input wire			start_calc,
	output reg			finsh_calc,

	input wire  [7:0]   angle_num,
	input wire          angle_num_valid,

	output wire			odd_ram_enb [0:PIPELINES_NUM-1],
	output wire	[8 : 0]	odd_ram_addrb [0:PIPELINES_NUM-1],
	input wire	[31: 0]	odd_ram_doutb [0:PIPELINES_NUM-1],
	output wire			even_ram_enb [0:PIPELINES_NUM-1],
	output wire	[8 : 0]	even_ram_addrb [0:PIPELINES_NUM-1],
	input wire	[31: 0]	even_ram_doutb [0:PIPELINES_NUM-1],

	input wire	[31:0]	rd_data, //1+19+12小数点在左移12位的位置
    input wire			rd_data_valid,
    output wire			rd_data_ready,  
    output reg	[31:0]	wr_data,
    output reg			wr_data_valid,
    input wire			wr_data_ready
);
function integer clogb2 (input integer bit_depth);              
	begin                                                           
	  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	    bit_depth = bit_depth >> 1;                                 
	end                                                           
endfunction
parameter integer TOTAL_NUM = IMG_N*IMG_N; 		 //258*258; //图像像素总数
parameter integer TOTAL_NUM_W = clogb2(TOTAL_NUM-1);

genvar i;
wire [7:0] angle_num_r [0:PIPELINES_NUM-1];
wire angle_num_valid_r [0:PIPELINES_NUM-1];
assign angle_num_r[0] = angle_num;
assign angle_num_valid_r[0] = angle_num_valid;
generate
    for(i=1;i<PIPELINES_NUM;i=i+1)
    begin:angle_num_PIPELINES
	    assign angle_num_r[i] = angle_num + i;
		assign angle_num_valid_r[i] = angle_num_valid;
    end
endgenerate

wire [31:0] wr_data_r [0:PIPELINES_NUM-1];
wire wr_data_valid_r [0:PIPELINES_NUM-1];

reg [31:0] wr_data_r1_1;
reg [31:0] wr_data_r1_2;
reg [31:0] wr_data_r1_3;
reg [31:0] wr_data_r1_4;
reg [31:0] wr_data_r1_5;
reg wr_data_valid_r1;
always @(posedge clk) begin
	if(~arstn) begin
		wr_data_r1_1 <= 0;
		wr_data_r1_2 <= 0;
		wr_data_r1_3 <= 0;
		wr_data_r1_4 <= 0;
		wr_data_r1_5 <= 0;
		wr_data_valid_r1 <= 0;
	end 
	else if(wr_data_valid_r[0]) begin
		wr_data_r1_1 <= $signed(wr_data_r[0]) + $signed(wr_data_r[1]);
		wr_data_r1_2 <= $signed(wr_data_r[2]) + $signed(wr_data_r[3]);
		wr_data_r1_3 <= $signed(wr_data_r[4]) + $signed(wr_data_r[5]);
		wr_data_r1_4 <= $signed(wr_data_r[6]) + $signed(wr_data_r[7]);
		wr_data_r1_5 <= $signed(wr_data_r[8]) + $signed(wr_data_r[9]);
		wr_data_valid_r1 <= 1'b1;
	end
	else begin
		wr_data_r1_1 <= wr_data_r1_1;
		wr_data_r1_2 <= wr_data_r1_2;
		wr_data_r1_3 <= wr_data_r1_3;
		wr_data_r1_4 <= wr_data_r1_4;
		wr_data_r1_5 <= wr_data_r1_5;
		wr_data_valid_r1 <= 1'b0;
	end
end

reg [31:0] wr_data_r2_1;
reg [31:0] wr_data_r2_2;
reg [31:0] wr_data_r2_3;
reg wr_data_valid_r2;
always @(posedge clk) begin
	if(~arstn) begin
		wr_data_r2_1 <= 0;
		wr_data_r2_2 <= 0;
		wr_data_r2_3 <= 0;
		wr_data_valid_r2 <= 1'b0;
	end 
	else if(wr_data_valid_r1) begin
		wr_data_r2_1 <= $signed(wr_data_r1_1);
		wr_data_r2_2 <= $signed(wr_data_r1_2) + $signed(wr_data_r1_3);
		wr_data_r2_3 <= $signed(wr_data_r1_4) + $signed(wr_data_r1_5);
		wr_data_valid_r2 <= 1'b1;
	end
	else begin
		wr_data_r2_1 <= wr_data_r2_1;
		wr_data_r2_2 <= wr_data_r2_2;
		wr_data_r2_3 <= wr_data_r2_3;
		wr_data_valid_r2 <= 1'b0;
	end
end

reg [31:0] wr_data_r3_1;
reg [31:0] wr_data_r3_2;
reg wr_data_valid_r3;
always @(posedge clk) begin
	if(~arstn) begin
		wr_data_r3_1 <= 0;
		wr_data_r3_2 <= 0;
		wr_data_valid_r3 <= 1'b0;
	end 
	else if(wr_data_valid_r2) begin
		wr_data_r3_1 <= $signed(wr_data_r2_1);
		wr_data_r3_2 <= $signed(wr_data_r2_2) + $signed(wr_data_r2_3);
		wr_data_valid_r3 <= 1'b1;
	end
	else begin
		wr_data_r3_1 <= wr_data_r3_1;
		wr_data_r3_2 <= wr_data_r3_2;
		wr_data_valid_r3 <= 1'b0;
	end
end

always @(posedge clk) begin
	if(~arstn) begin
		wr_data <= 0;
	end 
	else if(wr_data_valid_r3) begin
		wr_data <= $signed(wr_data_r3_1) + $signed(wr_data_r3_2);
		wr_data_valid <= 1'b1;
	end
	else begin
		wr_data <= wr_data;
		wr_data_valid <= 1'b0;
	end
end

//统计写的数据 
reg [TOTAL_NUM_W-1:0] wr_data_num_cnt;
wire add_wr_data_num_cnt;
wire end_wr_data_num_cnt;
always @(posedge clk)begin
    if( (~arstn) || start_calc == 1'b1 )begin
        wr_data_num_cnt <= 0;
    end
    else if(add_wr_data_num_cnt)begin
        if(end_wr_data_num_cnt)
            wr_data_num_cnt <= 0;
        else
            wr_data_num_cnt <= wr_data_num_cnt + 1;
    end
end
assign add_wr_data_num_cnt = wr_data_valid;       
assign end_wr_data_num_cnt = add_wr_data_num_cnt && wr_data_num_cnt== TOTAL_NUM - 1;

always @(posedge clk) begin
	if(~arstn) begin
		finsh_calc <= 1'b0;
	end 
	else if(end_wr_data_num_cnt) begin
		finsh_calc <= 1'b1;
	end
	else begin
		finsh_calc <= 1'b0;
	end
end

calculate_unit #(
    .ANGEL_DATA_LEN(ANGEL_DATA_LEN),
    .ANGEL_DATA_LEN_HALF(ANGEL_DATA_LEN_HALF),
    .IMG_N(IMG_N)
) inst_main_calculate_unit (
    .clk             (clk),
    .arstn           (arstn),
    .start_calc      (start_calc),
    .finsh_calc      (),
    .angle_num       (angle_num_r[0]),
    .angle_num_valid (angle_num_valid_r[0]),

    .rd_data         (rd_data),
    .rd_data_valid   (rd_data_valid),
    .rd_data_ready   (rd_data_ready),
    .wr_data         (wr_data_r[0]),
    .wr_data_valid   (wr_data_valid_r[0]),
    .wr_data_ready   (wr_data_ready),

    .odd_ram_enb     (odd_ram_enb[0]),
    .odd_ram_addrb   (odd_ram_addrb[0]),
    .odd_ram_doutb   (odd_ram_doutb[0]),
    .even_ram_enb    (even_ram_enb[0]),
    .even_ram_addrb  (even_ram_addrb[0]),
    .even_ram_doutb  (even_ram_doutb[0])
);

generate
    for(i=1;i<PIPELINES_NUM;i=i+1)
    begin:calculate_unit_PIPELINES
	    calculate_unit #(
	        .ANGEL_DATA_LEN(ANGEL_DATA_LEN),
	        .ANGEL_DATA_LEN_HALF(ANGEL_DATA_LEN_HALF),
	        .IMG_N(IMG_N)
	    ) inst_calculate_unit (
	        .clk            (clk),
	        .arstn          (arstn),
	        .start_calc     (start_calc),
	        .finsh_calc     (),
	        .angle_num       (angle_num_r[i]),
	        .angle_num_valid (angle_num_valid_r[i]),

	        .rd_data        (32'h0000_0000),
	        .rd_data_valid  (rd_data_valid),
	        .rd_data_ready  (),
	        .wr_data        (wr_data_r[i]),
	        .wr_data_valid  (wr_data_valid_r[i]),
	        .wr_data_ready  (wr_data_ready),

	        .odd_ram_enb    (odd_ram_enb[i]),
	        .odd_ram_addrb  (odd_ram_addrb[i]),
	        .odd_ram_doutb  (odd_ram_doutb[i]),
	        .even_ram_enb   (even_ram_enb[i]),
	        .even_ram_addrb (even_ram_addrb[i]),
	        .even_ram_doutb (even_ram_doutb[i])
	    );
    end
endgenerate
 
endmodule