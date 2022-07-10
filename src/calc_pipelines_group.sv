module calc_pipelines_group #(
    parameter PIPELINES_NUM       = 60,
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

parameter integer ADDTREE_DEPTH = clogb2(PIPELINES_NUM);
// 60/2 30 R1
// 30/2 15 R2
// 15/2 8  R3
// 8/2  4  R4
// 4/2  2  R5
// 2/2  1
parameter integer ADDTREE_DEPTH_R1 = 30;
reg [31:0] wr_data_r1 [0:ADDTREE_DEPTH_R1-1];
reg wr_data_valid_r1;
always @(posedge clk) begin
	if(~arstn) begin
		wr_data_valid_r1 <= 0;
	end 
	else if(wr_data_valid_r[0]) begin
		wr_data_valid_r1 <= 1'b1;
	end
	else begin
		wr_data_valid_r1 <= 1'b0;
	end
end
generate
    for(i=0;i<ADDTREE_DEPTH_R1;i=i+1)
    begin:ADD_TREE_R1
    	always @(posedge clk) begin
			if(~arstn) begin
				wr_data_r1[i] <= 0;
			end 
			else if(wr_data_valid_r[0]) begin
				wr_data_r1[i] <= $signed(wr_data_r[2*i]) + $signed(wr_data_r[2*i+1]);
			end
			else begin
				wr_data_r1[i] <= wr_data_r1[i];
			end
		end
    end
endgenerate


parameter integer ADDTREE_DEPTH_R2 = 15;
reg [31:0] wr_data_r2 [0:ADDTREE_DEPTH_R2-1];
reg wr_data_valid_r2;
always @(posedge clk) begin
	if(~arstn) begin
		wr_data_valid_r2 <= 0;
	end 
	else if(wr_data_valid_r1) begin
		wr_data_valid_r2 <= 1'b1;
	end
	else begin
		wr_data_valid_r2 <= 1'b0;
	end
end
generate
    for(i=0;i<ADDTREE_DEPTH_R2;i=i+1)
    begin:ADD_TREE_R2
    	always @(posedge clk) begin
			if(~arstn) begin
				wr_data_r2[i] <= 0;
			end 
			else if(wr_data_valid_r1) begin
				wr_data_r2[i] <= $signed(wr_data_r1[2*i]) + $signed(wr_data_r1[2*i+1]);
			end
			else begin
				wr_data_r2[i] <= wr_data_r2[i];
			end
		end
    end
endgenerate


parameter integer ADDTREE_DEPTH_R3 = 8;
reg [31:0] wr_data_r3 [0:ADDTREE_DEPTH_R3-1];
reg wr_data_valid_r3;
always @(posedge clk) begin
	if(~arstn) begin
		wr_data_valid_r3 <= 0;
		wr_data_r3[ADDTREE_DEPTH_R3-1] <= 0;
	end 
	else if(wr_data_valid_r2) begin
		wr_data_valid_r3 <= 1'b1;
		wr_data_r3[ADDTREE_DEPTH_R3-1] <= wr_data_r2[ADDTREE_DEPTH_R2-1];
	end
	else begin
		wr_data_valid_r3 <= 1'b0;
		wr_data_r3[ADDTREE_DEPTH_R3-1] <= wr_data_r3[ADDTREE_DEPTH_R3-1];
	end
end
generate
    for(i=0;i<ADDTREE_DEPTH_R3 - 1;i=i+1)//-1
    begin:ADD_TREE_R3
    	always @(posedge clk) begin
			if(~arstn) begin
				wr_data_r3[i] <= 0;
			end 
			else if(wr_data_valid_r2) begin
				wr_data_r3[i] <= $signed(wr_data_r2[2*i]) + $signed(wr_data_r2[2*i+1]);
			end
			else begin
				wr_data_r3[i] <= wr_data_r3[i];
			end
		end
    end
endgenerate


parameter integer ADDTREE_DEPTH_R4 = 4;
reg [31:0] wr_data_r4 [0:ADDTREE_DEPTH_R4-1];
reg wr_data_valid_r4;
always @(posedge clk) begin
	if(~arstn) begin
		wr_data_valid_r4 <= 0;
	end 
	else if(wr_data_valid_r3) begin
		wr_data_valid_r4 <= 1'b1;
	end
	else begin
		wr_data_valid_r4 <= 1'b0;
	end
end
generate
    for(i=0;i<ADDTREE_DEPTH_R4;i=i+1)
    begin:ADD_TREE_R4
    	always @(posedge clk) begin
			if(~arstn) begin
				wr_data_r4[i] <= 0;
			end 
			else if(wr_data_valid_r3) begin
				wr_data_r4[i] <= $signed(wr_data_r3[2*i]) + $signed(wr_data_r3[2*i+1]);
			end
			else begin
				wr_data_r4[i] <= wr_data_r4[i];
			end
		end
    end
endgenerate


parameter integer ADDTREE_DEPTH_R5 = 2;
reg [31:0] wr_data_r5 [0:ADDTREE_DEPTH_R5-1];
reg wr_data_valid_r5;
always @(posedge clk) begin
	if(~arstn) begin
		wr_data_valid_r5 <= 0;
	end 
	else if(wr_data_valid_r4) begin
		wr_data_valid_r5 <= 1'b1;
	end
	else begin
		wr_data_valid_r5 <= 1'b0;
	end
end
generate
    for(i=0;i<ADDTREE_DEPTH_R5;i=i+1)
    begin:ADD_TREE_R5
    	always @(posedge clk) begin
			if(~arstn) begin
				wr_data_r5[i] <= 0;
			end 
			else if(wr_data_valid_r4) begin
				wr_data_r5[i] <= $signed(wr_data_r4[2*i]) + $signed(wr_data_r4[2*i+1]);
			end
			else begin
				wr_data_r5[i] <= wr_data_r5[i];
			end
		end
    end
endgenerate


always @(posedge clk) begin
	if(~arstn) begin
		wr_data <= 0;
	end 
	else if(wr_data_valid_r5) begin
		wr_data <= $signed(wr_data_r5[0]) + $signed(wr_data_r5[1]);
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