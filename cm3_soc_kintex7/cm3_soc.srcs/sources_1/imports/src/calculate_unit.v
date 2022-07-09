module calculate_unit #(
    parameter ANGEL_DATA_LEN      = 367,
    parameter ANGEL_DATA_LEN_HALF = 184,  // (367+1)/2
    parameter IMG_N               = 258
)
(
	input				clk,    // Clock
	input				arstn,  // Asynchronous reset active low
	
	//控制信号
	input wire			start_calc,
	output reg			finsh_calc,

	input wire  [7:0]   angle_num,
	input wire          angle_num_valid,

	input wire	[31:0]	rd_data, //1+19+12小数点在左移12位的位置
    input wire			rd_data_valid,
    output wire			rd_data_ready,  
    output reg	[31:0]	wr_data,
    output reg			wr_data_valid,
    input wire			wr_data_ready,
	//读角度数据通道，用于累加计算
    output reg			odd_ram_enb,
    output wire	[8 : 0]	odd_ram_addrb,
    input wire	[31: 0]	odd_ram_doutb,
    output reg			even_ram_enb,
    output wire	[8 : 0]	even_ram_addrb,
    input wire	[31: 0]	even_ram_doutb
/*
    //debug
    output wire [31:0] debug_add,
    output wire [31:0] debug_sub,
    output wire [31:0] debug_mul
*/
);	
	function integer clogb2 (input integer bit_depth);              
		begin                                                           
		  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
		    bit_depth = bit_depth >> 1;                                 
		end                                                           
	endfunction

	parameter integer TOTAL_NUM = IMG_N*IMG_N; 		 //258*258; //图像像素总数
	parameter integer TOTAL_NUM_W = clogb2(TOTAL_NUM-1);
	parameter integer ANGEL_DATA_LEN_W = clogb2(ANGEL_DATA_LEN);
	parameter integer IMG_N_W = clogb2(IMG_N);

	parameter signed CTR       = $floor((IMG_N-1) / 2.0);
	parameter signed XLEFT     = -CTR;
	parameter signed YTOP      = CTR;
	parameter signed CTR_IDX   = $floor(ANGEL_DATA_LEN / 2.0);
	parameter signed CTR_IDX_1 = $floor(ANGEL_DATA_LEN / 2.0) + 1;
	parameter integer CTR_IDX_W = clogb2(CTR_IDX_1);
	wire [31 : 0] xleft;
	wire [31 : 0] ytop;
	wire [CTR_IDX_W : 0] ctr_idx;
	wire [CTR_IDX_W : 0] ctr_idx_1;
	assign xleft     = XLEFT;
	assign ytop      = YTOP;
	assign ctr_idx   = CTR_IDX;
	assign ctr_idx_1 = CTR_IDX_1;

	// theta rom
	reg					sintheta_ena;
	wire	[7 : 0]		sintheta_addra;
	wire	[23 : 0]	sintheta_douta;
	reg					costheta_ena;
	wire	[7 : 0]		costheta_addra;
	wire	[23 : 0]	costheta_douta;

	//捕获计算开始和结束标志
	reg calc_flag;
	always @(posedge clk) begin
		if(~arstn) begin
			calc_flag <= 1'b0;
		end 
		else if(start_calc) begin
			calc_flag <= 1'b1;
		end
		else if(finsh_calc) begin
			calc_flag <= 1'b0;
		end
		else begin
			calc_flag <= calc_flag;
		end
	end

	//fifo特性 空或者满拉高时，已经不能再读或者写数据了
	assign rd_data_ready = wr_data_ready;

	/////////////////////////直角坐标生成/////////////////////////
	//列坐标
	reg [IMG_N_W:0] y_idx;
	wire add_y_idx;
	wire end_y_idx;
	always @(posedge clk)begin
	    if(arstn == 1'b0 || angle_num_valid == 1'b1)begin
	        y_idx <= 0; //清零
	    end
	    else if(add_y_idx) begin
	        if(end_y_idx)
	            y_idx <= 0;
	        else
	            y_idx <= y_idx + 1;
	    end
	end
	assign add_y_idx = rd_data_valid;       
	assign end_y_idx = add_y_idx && y_idx == IMG_N - 1;
	//行坐标
	reg [IMG_N_W:0] x_idx;
	wire add_x_idx;
	wire end_x_idx;
	always @(posedge clk)begin
	    if(arstn == 1'b0 || angle_num_valid == 1'b1)begin
	        x_idx <= 0; //清零
	    end
	    else if(add_x_idx)begin
	        if(end_x_idx)
	            x_idx <= 0;
	        else
	            x_idx <= x_idx + 1;
	    end
	end
	assign add_x_idx = end_y_idx;
	assign end_x_idx = add_x_idx && x_idx == IMG_N - 1;

	//////////////////////////计算流水线////////////////////////
	//初始化
	reg [7:0] theta_idx;
	always @(posedge clk) begin
		if(~arstn) begin
			theta_idx <= 0;
		end 
		else if(angle_num_valid) begin
			theta_idx <= angle_num;
		end
		else begin
			theta_idx <= theta_idx;
		end
	end
	reg angle_num_valid_r1;
	reg angle_num_valid_r2;
	reg angle_num_valid_r3;
	reg angle_num_valid_r4;
	always @(posedge clk) begin
		if(~arstn) begin
			angle_num_valid_r1 <= 0;
			angle_num_valid_r2 <= 0;
			angle_num_valid_r3 <= 0;
			angle_num_valid_r4 <= 0;
		end 
		else begin
			angle_num_valid_r1 <= angle_num_valid;
			angle_num_valid_r2 <= angle_num_valid_r1;
			angle_num_valid_r3 <= angle_num_valid_r2;
			angle_num_valid_r4 <= angle_num_valid_r3;
		end
	end
	always @(posedge clk) begin
		if(~arstn) begin
			sintheta_ena <= 1'b0;
			costheta_ena <= 1'b0;
		end 
		else if(angle_num_valid) begin
			sintheta_ena <= 1'b1;
			costheta_ena <= 1'b1;
		end
		else if(angle_num_valid_r3) begin
			sintheta_ena <= 1'b0;
			costheta_ena <= 1'b0;
		end
	end
	//assign sintheta_ena = angle_num_valid_r1;
	//assign costheta_ena = angle_num_valid_r1;
	assign sintheta_addra = theta_idx;
	assign costheta_addra = theta_idx;

	reg [24-1:0] cos_theta;
	reg [24-1:0] sin_theta;
	always @(posedge clk) begin
		if(~arstn) begin
			cos_theta   <= 0;
			sin_theta   <= 0;
		end 
		else if(angle_num_valid_r4) begin
			cos_theta <= costheta_douta;
			sin_theta <= sintheta_douta;
		end
		else begin
			sin_theta <= sin_theta;
			cos_theta <= cos_theta;
		end
	end

	reg theta_valid;
	always @(posedge clk) begin
		if(~arstn) begin
			theta_valid <= 1'b0;
		end 
		else if(angle_num_valid_r4) begin
			theta_valid <= 1'b1;
		end
		else if(finsh_calc) begin
			theta_valid <= 1'b0;
		end
		else begin
			theta_valid <= theta_valid;
		end
	end

	//x=0 更新参数
	reg angle_num_valid_r5;
	always @(posedge clk) begin
		if(~arstn) begin
			angle_num_valid_r5 <= 0;
		end 
		else begin
			angle_num_valid_r5 <= angle_num_valid_r4;
		end
	end


	reg [IMG_N_W-1:0] x;//位宽只需要IMG_N一半 (IMG_N_W-1 : 0)
	reg  x_valid;
	wire [IMG_N_W:0] x_idx_1;
	assign x_idx_1 = x_idx + 1;
	always @(posedge clk) begin
		if(~arstn) begin
			x <= 0;
			x_valid <= 1'b0;
		end 
		else if(angle_num_valid_r5) begin
			x <= $signed(xleft) + $signed(x_idx);
			x_valid <= 1'b1;
		end
		else if (end_y_idx) begin
			x <= $signed(xleft) + $signed(x_idx_1);
			x_valid <= 1'b1;
		end
		else begin
			x <= x;
			x_valid <= 1'b0;
		end
	end

	//小数点在左移23位的位置
	reg [24+IMG_N_W-2:0] x_cos_theta;// 1+23 * 1+8 = 1+31
	reg x_cos_theta_valid;
	always @(posedge clk) begin
		if(~arstn) begin
			x_cos_theta <= 0;
			x_cos_theta_valid <= 1'b0;
		end 
		else if(x_valid) begin
			x_cos_theta <= $signed(x) * $signed(cos_theta);
			x_cos_theta_valid <= 1'b1;
		end
		else begin
			x_cos_theta <= x_cos_theta;
			x_cos_theta_valid <= 1'b0;
		end
	end

	//小数点在左移23位的位置
	reg [24+IMG_N_W-1:0] t; // 1+31 + 1+31 = 1+32
	reg t_valid;
	wire [24+IMG_N_W-2:0] y_sin_theta;// 1+23 * 1+8 = 1+31
	assign y_sin_theta = $signed(ytop) * $signed(sin_theta);
	always @(posedge clk) begin
		if(~arstn) begin
			t <= 0;
			t_valid <= 1'b0;
		end 
		else if(x_cos_theta_valid) begin
			t <= $signed(x_cos_theta) + $signed(y_sin_theta);
			t_valid <= 1'b1;
		end
		else begin
			t <= t;
			t_valid <= 1'b0;
		end
	end

	wire y_idx_first;
	assign y_idx_first = add_y_idx && y_idx == 0;
	reg y_idx_first_r1;
	reg y_idx_first_r2;
	always @(posedge clk) begin
		if(~arstn) begin
			y_idx_first_r1 <= 0;
			y_idx_first_r2 <= 0;
		end else begin
			y_idx_first_r1 <= y_idx_first;
			y_idx_first_r2 <= y_idx_first_r1;
		end
	end

	reg valid_r1;
	reg valid_r2;
	reg valid_r3;
	reg valid_r4;
	reg valid_r5;
	reg valid_r6;
	reg valid_r7;
	reg valid_r8;
	reg valid_r9;
	reg valid_r10;
	always @(posedge clk) begin 
		if(~arstn) begin
			valid_r1 <= 1'b0;
			valid_r2 <= 1'b0;
			valid_r3 <= 1'b0;
			valid_r4 <= 1'b0;
			valid_r5 <= 1'b0;
			valid_r6 <= 1'b0;
			valid_r7 <= 1'b0;
			valid_r8 <= 1'b0;
			valid_r9 <= 1'b0;
			valid_r10 <= 1'b0;
		end 
		else begin
			valid_r1 <= rd_data_valid;
			valid_r2 <= valid_r1;
			valid_r3 <= valid_r2;
			valid_r4 <= valid_r3;
			valid_r5 <= valid_r4;
			valid_r6 <= valid_r5;
			valid_r7 <= valid_r6;
			valid_r8 <= valid_r7;
			valid_r9 <= valid_r8;
			valid_r10 <= valid_r9;
		end
	end

	//仿真时注意查看优先级 t_valid > y_idx_first_r2 > valid_r2
	reg [24+IMG_N_W-1:0] y_loop_t;
	always @(posedge clk) begin 
		if(arstn == 1'b0) begin
			y_loop_t <= 0;
		end 
		else if(t_valid) begin 
			y_loop_t <= t;
		end
		else if(y_idx_first_r2) begin
			y_loop_t <= y_loop_t;
		end
		else if(valid_r2) begin
			y_loop_t <= $signed(y_loop_t) - $signed(sin_theta);//小数点位置一致
		end
		else begin
			y_loop_t <= y_loop_t;
		end
	end

	wire [24+IMG_N_W-1 - 23:0] y_loop_a; //没有小数部分只剩10位
	assign y_loop_a = y_loop_t[24+IMG_N_W-1:23];//floot,直接取整数部分
	wire [24+IMG_N_W-1 : 0] y_loop_a_decimal;//保留小数部分
	assign y_loop_a_decimal = {y_loop_t[24+IMG_N_W-1:23],23'b0};//floot,直接取整数部分

	reg [24+IMG_N_W-1 : 0] t_a;//y_loop_t已经是最大的数，相减不会溢出
	always @(posedge clk) begin 
		if(arstn == 1'b0) begin
			t_a <= 0;
		end 
		else if(valid_r3) begin 
			t_a <= $signed(y_loop_t) - $signed(y_loop_a_decimal);//小数点位置相同
		end
		else begin
			t_a <= t_a;
		end
	end

	//CTR_IDX_W
	//ANGEL_DATA_LEN_W
	reg [ANGEL_DATA_LEN_W:0] a_ctr_idx_1; // 1+9 + 1+8
	reg [ANGEL_DATA_LEN_W:0] a_ctr_idx;
	always @(posedge clk) begin 
		if(arstn == 1'b0) begin
			a_ctr_idx_1 <= 0;
			a_ctr_idx   <= 0;
		end 
		else if(valid_r3) begin 
			a_ctr_idx_1 <= $signed(y_loop_a) + $signed(ctr_idx_1);//184
			a_ctr_idx   <= $signed(y_loop_a) + $signed(ctr_idx);//183
		end
		else begin
			a_ctr_idx_1 <= a_ctr_idx_1;
			a_ctr_idx   <= a_ctr_idx;
		end
	end


	wire [ANGEL_DATA_LEN_W-1-1:0] a_ctr_idx_r; //地址转换，减去符号位，右移一位
	wire [ANGEL_DATA_LEN_W-1-1:0] a_ctr_idx_1_r;
	assign a_ctr_idx_r    = a_ctr_idx[ANGEL_DATA_LEN_W-1:1];
	assign a_ctr_idx_1_r = a_ctr_idx_1[ANGEL_DATA_LEN_W-1:1];

	wire a_ctr_idx_odd_flag;
	assign a_ctr_idx_odd_flag = a_ctr_idx[0]==1'b1;
	assign odd_ram_addrb  = a_ctr_idx_odd_flag ? a_ctr_idx_r   : a_ctr_idx_1_r;
	assign even_ram_addrb = a_ctr_idx_odd_flag ? a_ctr_idx_1_r : a_ctr_idx_r;

	always @(posedge clk) begin
		if(~arstn) begin
			odd_ram_enb <= 1'b0;
			even_ram_enb <= 1'b0;
		end 
		else if(valid_r3) begin
			odd_ram_enb <= 1'b1;
			even_ram_enb <= 1'b1;
		end
		else if(valid_r6) begin
			odd_ram_enb <= 1'b0;
			even_ram_enb <= 1'b0;
		end
	end
	//assign odd_ram_enb    = valid_r4||valid_r5||valid_r6;
	//assign even_ram_enb   = valid_r4||valid_r5||valid_r6;

	reg odd_flag_r1;
	reg odd_flag_r2;
	always @(posedge clk) begin
		if(~arstn) begin
			odd_flag_r1 <= 0;
			odd_flag_r2 <= 0;
		end 
		else begin
			odd_flag_r1 <= a_ctr_idx_odd_flag;
			odd_flag_r2 <= odd_flag_r1;
		end
	end

	reg [32:0] proj_sub;//1+19+12 32-32=33
	reg [31:0] proj;
	always @(posedge clk) begin
		if(~arstn) begin
			proj_sub <= 0;
			proj     <= 0;
		end 
		else if(valid_r6) begin
			if(odd_flag_r2) begin
				proj_sub <= $signed(even_ram_doutb) -  $signed(odd_ram_doutb);
				proj     <= odd_ram_doutb;
			end
			else begin
				proj_sub <= $signed(odd_ram_doutb)  - $signed(even_ram_doutb);
				proj     <= even_ram_doutb;
			end
		end
		else begin
			proj_sub <= 0;
			proj     <= 0;
		end
	end

	//reg [24+IMG_N_W-1 : 0] t_a;
	reg [24+IMG_N_W-1 : 0] t_a_r1;
	reg [24+IMG_N_W-1 : 0] t_a_r2;
	reg [24+IMG_N_W-1 : 0] t_a_r3;
	always @(posedge clk) begin
		if(~arstn) begin
			t_a_r1 <= 0;
			t_a_r2 <= 0;
			t_a_r3 <= 0;
		end 
		else begin
			t_a_r1 <= t_a;
			t_a_r2 <= t_a_r1;
			t_a_r3 <= t_a_r2;
		end
	end

	//小数点在左移23+12=35位的位置
	reg [32 + 24+IMG_N_W-1 : 0] t_a_proj_sub; //1+32 * 1 + 24+IMG_N_W-1 = 1+32+ 24+IMG_N_W-1
	reg [31:0] proj_r;
	always @(posedge clk) begin
		if(~arstn) begin
			t_a_proj_sub <= 0;
			proj_r <= 0;
		end 
		else if(valid_r7) begin
			t_a_proj_sub <= $signed(t_a_r3) * $signed(proj_sub);
			proj_r <= proj;
		end
		else begin
			t_a_proj_sub <= t_a_proj_sub;
			proj_r <= proj_r;
		end
	end
	//reg [24+IMG_N_W-1 : 0] t_a; //小数点左移23
	//reg [32:0] proj_sub;//1+19+12 32-32=33 小数点左移12位
	wire [32 + 24+IMG_N_W-1 -23 : 0] t_a_proj_sub_cut;
	assign t_a_proj_sub_cut = t_a_proj_sub[32 + 24+IMG_N_W-1 : 23];//只剩下12位小数
	wire [23-1 : 0] t_a_proj_sub_retain;
	assign t_a_proj_sub_retain = t_a_proj_sub[23-1 : 0];//保留超出的23位小数
//******************************************************//
	reg [23-1 : 0] t_a_proj_sub_retain_r;
	//位宽如何考虑？ 不会溢出？
	reg [32 + 24+IMG_N_W-1 -23 : 0] img_add;
//******************************************************//
	always @(posedge clk) begin
		if(~arstn) begin
			img_add <= 0;
			t_a_proj_sub_retain_r <= 0;
		end 
		else if(valid_r8) begin
			//img_add <= $signed(t_a) * $signed(proj_sub) + $signed(proj);
			img_add <= $signed(t_a_proj_sub_cut) + $signed(proj_r);//小数点位置相同
			t_a_proj_sub_retain_r <= t_a_proj_sub_retain;
		end
		else begin
			img_add <= 0;
			t_a_proj_sub_retain_r <= 0;
		end
	end

	reg [31:0] img_data_r1;
	reg [31:0] img_data_r2;
	reg [31:0] img_data_r3;
	reg [31:0] img_data_r4;
	reg [31:0] img_data_r5;
	reg [31:0] img_data_r6;
	reg [31:0] img_data_r7;
	reg [31:0] img_data_r8;
	reg [31:0] img_data_r9;
	always @(posedge clk) begin
		if(~arstn) begin
			img_data_r1 <= 0;
			img_data_r2 <= 0;
			img_data_r3 <= 0;
			img_data_r4 <= 0;
			img_data_r5 <= 0;
			img_data_r6 <= 0;
			img_data_r7 <= 0;
			img_data_r8 <= 0;
			img_data_r9 <= 0;
		end 
		else begin
			img_data_r1 <= rd_data;
			img_data_r2 <= img_data_r1;
			img_data_r3 <= img_data_r2;
			img_data_r4 <= img_data_r3;
			img_data_r5 <= img_data_r4;
			img_data_r6 <= img_data_r5;
			img_data_r7 <= img_data_r6;
			img_data_r8 <= img_data_r7;
			img_data_r9 <= img_data_r8;
		end
	end

	//img_add 12位小数
	//完整的数据是 {img_add,t_a_proj_sub_retain_r}
	reg [31:0] img_data_update;
	wire [31:0] img_add_cut;
	//仿真验证下 max 7.176
	assign img_add_cut = {img_add[1+ 10 + 12-1:0], t_a_proj_sub_retain_r[23-1:23-9]};
	//没有滤波
	//assign img_add_cut = {img_add[1+ 9 + 12-1:0], t_a_proj_sub_retain_r[23-1:23-10]};
	//assign img_add_cut = img_add[31:0];
	always @(posedge clk) begin
		if(~arstn) begin
			img_data_update <= 0;
		end
		else if(valid_r9) begin
			img_data_update <= $signed(img_data_r9) + $signed(img_add_cut);
		end
		else begin
			img_data_update <= 0;
		end
	end

	always @(posedge clk) begin
		if(~arstn) begin
			wr_data <= 0;
			wr_data_valid <= 0;
		end 
		else if(valid_r10) begin
			wr_data <= img_data_update;
			wr_data_valid <= 1;
		end
		else begin
			wr_data <= 0;
			wr_data_valid <= 0;
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

	blk_mem_24bit_sintheta inst_blk_mem_24bit_sintheta (.clka(clk), .ena(sintheta_ena), .addra(sintheta_addra), .douta(sintheta_douta));
	blk_mem_24bit_costheta inst_blk_mem_24bit_costheta (.clka(clk), .ena(costheta_ena), .addra(costheta_addra), .douta(costheta_douta));


endmodule
