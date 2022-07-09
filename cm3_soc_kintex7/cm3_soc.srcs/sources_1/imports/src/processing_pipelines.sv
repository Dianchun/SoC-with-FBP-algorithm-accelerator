module processing_pipelines #(
	parameter FFT_N               = 512, // 1024/2
	parameter ANGEL_DATA_LEN      = 367,
	parameter ANGEL_DATA_LEN_HALF = 184,  // (367+1)/2
    parameter ANGLE_NUM           = 180,
    parameter IMG_N               = 258,
    parameter PIPELINES_NUM       = 10

)
(
	input  wire clk,    // Clock
	input  wire arstn,  // Asynchronous reset active low

	input  wire  [63:0]  angle_data_input,
    input  wire          angle_data_valid,
    output wire          angle_data_ready,

    output wire complete_wr,
    input wire odd_ram_wea,
    input wire even_ram_wea,

    input wire start_calc,
    output wire finsh_calc,

    input wire [7:0] angle_num,
    input wire angle_num_valid,


    input  [31:0] rd_data,
    input wire rd_data_valid,
    output wire rd_data_ready,
    output wire [31:0] wr_data,
    output wire wr_data_valid,
    input wire wr_data_ready

);

    wire  [63:0]  angle_data_input_switch [0:PIPELINES_NUM-1];
    wire          angle_data_valid_switch [0:PIPELINES_NUM-1];
    stream_switch #(
        .FFT_N(FFT_N),
        .PIPELINES_NUM(PIPELINES_NUM)
    ) inst_stream_switch (
        .clk                     (clk),
        .arstn                   (arstn),
        .angle_data_input        (angle_data_input),
        .angle_data_valid        (angle_data_valid),
        .angle_data_ready        (angle_data_ready),
        .angle_data_input_switch (angle_data_input_switch),
        .angle_data_valid_switch (angle_data_valid_switch)
    );

    wire odd_ram_enb [0:PIPELINES_NUM-1];
    wire [8 : 0] odd_ram_addrb [0:PIPELINES_NUM-1];
    wire [31: 0] odd_ram_doutb [0:PIPELINES_NUM-1];
    wire even_ram_enb [0:PIPELINES_NUM-1];
    wire [8 : 0] even_ram_addrb [0:PIPELINES_NUM-1];
    wire [31: 0] even_ram_doutb [0:PIPELINES_NUM-1];

    angle_data_sync #(
        .FFT_N(FFT_N),
        .ANGEL_DATA_LEN_HALF(ANGEL_DATA_LEN_HALF),
        .PIPELINES_NUM(PIPELINES_NUM)
    ) inst_angle_data_sync (
        .clk              (clk),
        .arstn            (arstn),
        .angle_data_input (angle_data_input_switch),
        .angle_data_valid (angle_data_valid_switch),
        .complete_wr      (complete_wr),
        .odd_ram_wea      (odd_ram_wea),
        .even_ram_wea     (even_ram_wea),
        .odd_ram_enb      (odd_ram_enb),
        .odd_ram_addrb    (odd_ram_addrb),
        .odd_ram_doutb    (odd_ram_doutb),
        .even_ram_enb     (even_ram_enb),
        .even_ram_addrb   (even_ram_addrb),
        .even_ram_doutb   (even_ram_doutb)
    );

    

    calc_pipelines_group #(
        .PIPELINES_NUM(PIPELINES_NUM),
        .ANGEL_DATA_LEN(ANGEL_DATA_LEN),
        .ANGEL_DATA_LEN_HALF(ANGEL_DATA_LEN_HALF),
        .IMG_N(IMG_N)
    ) inst_calc_pipelines_group (
        .clk             (clk),
        .arstn           (arstn),
        .start_calc      (start_calc),
        .finsh_calc      (finsh_calc),

        .angle_num       (angle_num),
        .angle_num_valid (angle_num_valid),

        .odd_ram_enb     (odd_ram_enb),
        .odd_ram_addrb   (odd_ram_addrb),
        .odd_ram_doutb   (odd_ram_doutb),
        .even_ram_enb    (even_ram_enb),
        .even_ram_addrb  (even_ram_addrb),
        .even_ram_doutb  (even_ram_doutb),
        .rd_data         (rd_data),
        .rd_data_valid   (rd_data_valid),
        .rd_data_ready   (rd_data_ready),
        .wr_data         (wr_data),
        .wr_data_valid   (wr_data_valid),
        .wr_data_ready   (wr_data_ready)
    );


endmodule : processing_pipelines