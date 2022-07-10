module angle_data_ram #(
    parameter FFT_N               = 512, // 1024/2
    parameter ANGEL_DATA_LEN_HALF = 184  // (367+1)/2
)
(
	input wire			clk,    // Clock
	input wire			arstn,  // Asynchronous reset active low
	
	input wire	[63:0]	angle_data_input,
    input wire			angle_data_valid,
    output wire			angle_data_ready,


    //完成一行数据写入信号,高电平脉冲信号
    output reg complete_wr, 


    //读写数据控制，由状态机控制
    input wire			odd_ram_wea,
    input wire			even_ram_wea,

    //读数据通道，用于读取计算
    input wire			odd_ram_enb,
    input wire	[8 : 0]	odd_ram_addrb,
    output wire	[31: 0]	odd_ram_doutb,
    input wire			even_ram_enb,
    input wire	[8 : 0]	even_ram_addrb,
    output wire	[31: 0]	even_ram_doutb

);
//内部参数定义
function integer clogb2 (input integer bit_depth);              
	begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	end                                                           
endfunction
parameter integer FFT_N_WIDTH = clogb2(FFT_N - 1);

reg			odd_ram_ena;
reg	[8 : 0]	odd_ram_addra;
reg	[31: 0]	odd_ram_dina;

reg			even_ram_ena;
reg	[8 : 0]	even_ram_addra;
reg	[31: 0]	even_ram_dina;


assign angle_data_ready = 1'b1; //一直有效，由外部状态机控制数据量


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



//写控制
always @(posedge clk) begin
	if(~arstn) begin
		odd_ram_ena    <= 1'b0;
		odd_ram_addra  <= 0;
		odd_ram_dina   <= 32'b0;
		even_ram_ena   <= 1'b0;
		even_ram_addra <= 0;
		even_ram_dina  <= 32'b0;
	end 
	else if(add_data_num_cnt && odd_ram_wea == 1'b1 && even_ram_wea == 1'b1) begin
		if(data_num_cnt >= 0 && data_num_cnt <= ANGEL_DATA_LEN_HALF-1) begin
			even_ram_ena   <= 1'b1;
			even_ram_addra <= data_num_cnt[8:0];
			even_ram_dina  <= angle_data_input[63:32];
			odd_ram_ena    <= 1'b1;
			odd_ram_addra  <= data_num_cnt[8:0];
			odd_ram_dina   <= angle_data_input[31:0];
		end
		else begin
			odd_ram_ena    <= 1'b0;
			odd_ram_addra  <= 0;
			odd_ram_dina   <= 32'b0;
			even_ram_ena   <= 1'b0;
			even_ram_addra <= 0;
			even_ram_dina  <= 32'b0;
		end
	end
	else begin
		odd_ram_ena    <= 1'b0;
		odd_ram_addra  <= 0;
		odd_ram_dina   <= 32'b0;
		even_ram_ena   <= 1'b0;
		even_ram_addra <= 0;
		even_ram_dina  <= 32'b0;
	end
end

//产生完成写数据的脉冲
always @(posedge clk) begin
	if(~arstn) begin
		complete_wr <= 1'b0;
	end 
	else if(data_num_cnt == ANGEL_DATA_LEN_HALF && (complete_wr==1'b0)) begin
		complete_wr <= 1'b1;
	end
	else begin
		complete_wr <= 1'b0;
	end
end


blk_mem_32bit inst_odd_ram
(
	.clka  (clk),
	.ena   (odd_ram_ena),
	.wea   (odd_ram_wea),
	.addra (odd_ram_addra),
	.dina  (odd_ram_dina),
	.clkb  (clk),
	.enb   (odd_ram_enb),
	.addrb (odd_ram_addrb),
	.doutb (odd_ram_doutb)
);

blk_mem_32bit inst_even_ram
(
	.clka  (clk),
	.ena   (even_ram_ena),
	.wea   (even_ram_wea),
	.addra (even_ram_addra),
	.dina  (even_ram_dina),
	.clkb  (clk),
	.enb   (even_ram_enb),
	.addrb (even_ram_addrb),
	.doutb (even_ram_doutb)
);


endmodule