module angle_data_sync  #(
    parameter FFT_N               = 512, // 1024/2
    parameter ANGEL_DATA_LEN_HALF = 184,  // (367+1)/2
    parameter PIPELINES_NUM       = 10
)
(
	input wire			clk,    // Clock
	input wire			arstn,  // Asynchronous reset active low
	input wire	[63:0]	angle_data_input [0:PIPELINES_NUM-1],
	input wire			angle_data_valid [0:PIPELINES_NUM-1],

	output wire complete_wr,

	input wire odd_ram_wea,
	input wire even_ram_wea,

	input wire odd_ram_enb [0:PIPELINES_NUM-1],
	input wire [8 : 0] odd_ram_addrb [0:PIPELINES_NUM-1],
	output wire [31: 0] odd_ram_doutb [0:PIPELINES_NUM-1],
	input wire even_ram_enb [0:PIPELINES_NUM-1],
	input wire [8 : 0] even_ram_addrb [0:PIPELINES_NUM-1],
	output wire [31: 0] even_ram_doutb [0:PIPELINES_NUM-1]
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

genvar i; 

wire complete_wr_r [0:PIPELINES_NUM-1];
wire complete_wr_or [0:PIPELINES_NUM-1];

assign complete_wr_or[0] = complete_wr_r[0];
generate
    for(i=1;i<PIPELINES_NUM;i=i+1)
    begin:complete_wr_all_PIPELINES_NUM
	    assign complete_wr_or[i] = complete_wr_or[i-1] | complete_wr_r[i];
    end
endgenerate


reg [PIPELINES_NUM_W-1:0] complete_cnt;
wire add_complete_cnt;
wire end_complete_cnt;
always @(posedge clk)begin
    if(!arstn)begin
        complete_cnt <= 0;
    end
    else if(add_complete_cnt)begin
        if(end_complete_cnt)
            complete_cnt <= 0;
        else
            complete_cnt <= complete_cnt + 1;
    end
end

assign add_complete_cnt = complete_wr_or[PIPELINES_NUM-1];    
assign end_complete_cnt = add_complete_cnt && complete_cnt== PIPELINES_NUM - 1;

assign complete_wr = end_complete_cnt;

generate
    for(i=0;i<PIPELINES_NUM;i=i+1)
    begin:angle_data_ram_PIPELINES
	       angle_data_ram #(
		    .FFT_N(FFT_N),
		    .ANGEL_DATA_LEN_HALF(ANGEL_DATA_LEN_HALF)
		) inst_angle_data_ram (
		    .clk              (clk),
		    .arstn            (arstn),
		    .angle_data_input (angle_data_input[i]),
		    .angle_data_valid (angle_data_valid[i]),
		    .angle_data_ready (),
		    .complete_wr      (complete_wr_r[i]),
		    .odd_ram_wea      (odd_ram_wea),
		    .even_ram_wea     (even_ram_wea),
		    .odd_ram_enb      (odd_ram_enb[i]),
		    .odd_ram_addrb    (odd_ram_addrb[i]),
		    .odd_ram_doutb    (odd_ram_doutb[i]),
		    .even_ram_enb     (even_ram_enb[i]),
		    .even_ram_addrb   (even_ram_addrb[i]),
		    .even_ram_doutb   (even_ram_doutb[i])
		);
    end
endgenerate

endmodule
