`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: cqupt
// Engineer: hdc
// 
// Create Date: 2022/03/07 21:48:28
// Design Name: iradon fbp
// Module Name: fbp
// Description: 
// 
// Dependencies: 
// 
//////////////////////////////////////////////////////////////////////////////////

module backproject #(
    //去零所需参数，第一个点是尾部数据，应当去掉。
    //parameter FFT_N                               = 512,  // 1024/2
    //parameter ANGEL_DATA_LEN                      = 367,
    //parameter ANGEL_DATA_LEN_HALF                 = 184,  // (367+1)/2 向上取整
    parameter FFT_N                                 = 1024,
    parameter ANGEL_DATA_LEN                        = 729,
    parameter ANGEL_DATA_LEN_HALF                   = 365,
    //反投影图像大小
    parameter IMG_N                                 = 512,  // 图像大小 N*N 默认值为 2*floor(size(ANGEL_DATA_LEN,1)/(2*sqrt(2)))
    //角度值
    parameter ANGLE_NUM                             = 180,
    //流水线数量
    parameter PIPELINES_NUM                         = 60,
    //AXI接口参数
    parameter  C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR = 32'h80000000,
    parameter integer C_M00_AXI_MEM_BURST_LEN       = 256,
    parameter integer C_M00_AXI_MEM_ID_WIDTH        = 1,
    parameter integer C_M00_AXI_MEM_ADDR_WIDTH      = 32,
    parameter integer C_M00_AXI_MEM_DATA_WIDTH      = 64,
    parameter integer C_M00_AXI_MEM_AWUSER_WIDTH    = 0,
    parameter integer C_M00_AXI_MEM_ARUSER_WIDTH    = 0,
    parameter integer C_M00_AXI_MEM_WUSER_WIDTH     = 0,
    parameter integer C_M00_AXI_MEM_RUSER_WIDTH     = 0,
    parameter integer C_M00_AXI_MEM_BUSER_WIDTH     = 0
    )
    (
    input  wire clk,
    input  wire arstn,

    input wire img_base_addr_valid,
    input wire [31:0] img_base_addr,
    
    input  wire start_fbp,
    output wire finsh_fbp,

    output wire start_one_new_txn_angle_data,
    output wire get_next_angle,
    input  wire one_angle_txn_done,
    input  wire angle_data_txn_done,

    input  wire  [63:0]  angle_data_tdata,
    input  wire          angle_data_tvalid,
    output wire          angle_data_tready,

    //AXI4主机接口
    // Axi Master Bus Interface 总线传输发生错误标志
    output wire  m00_axi_mem_error,

    output wire [C_M00_AXI_MEM_ID_WIDTH-1 : 0] m00_axi_mem_awid,
    output wire [C_M00_AXI_MEM_ADDR_WIDTH-1 : 0] m00_axi_mem_awaddr,
    output wire [7 : 0] m00_axi_mem_awlen,
    output wire [2 : 0] m00_axi_mem_awsize,
    output wire [1 : 0] m00_axi_mem_awburst,
    output wire  m00_axi_mem_awlock,
    output wire [3 : 0] m00_axi_mem_awcache,
    output wire [2 : 0] m00_axi_mem_awprot,
    output wire [3 : 0] m00_axi_mem_awqos,
    output wire [C_M00_AXI_MEM_AWUSER_WIDTH-1 : 0] m00_axi_mem_awuser,
    output wire  m00_axi_mem_awvalid,
    input wire  m00_axi_mem_awready,
    output wire [C_M00_AXI_MEM_DATA_WIDTH-1 : 0] m00_axi_mem_wdata,
    output wire [C_M00_AXI_MEM_DATA_WIDTH/8-1 : 0] m00_axi_mem_wstrb,
    output wire  m00_axi_mem_wlast,
    output wire [C_M00_AXI_MEM_WUSER_WIDTH-1 : 0] m00_axi_mem_wuser,
    output wire  m00_axi_mem_wvalid,
    input wire  m00_axi_mem_wready,
    input wire [C_M00_AXI_MEM_ID_WIDTH-1 : 0] m00_axi_mem_bid,
    input wire [1 : 0] m00_axi_mem_bresp,
    input wire [C_M00_AXI_MEM_BUSER_WIDTH-1 : 0] m00_axi_mem_buser,
    input wire  m00_axi_mem_bvalid,
    output wire  m00_axi_mem_bready,
    output wire [C_M00_AXI_MEM_ID_WIDTH-1 : 0] m00_axi_mem_arid,
    output wire [C_M00_AXI_MEM_ADDR_WIDTH-1 : 0] m00_axi_mem_araddr,
    output wire [7 : 0] m00_axi_mem_arlen,
    output wire [2 : 0] m00_axi_mem_arsize,
    output wire [1 : 0] m00_axi_mem_arburst,
    output wire  m00_axi_mem_arlock,
    output wire [3 : 0] m00_axi_mem_arcache,
    output wire [2 : 0] m00_axi_mem_arprot,
    output wire [3 : 0] m00_axi_mem_arqos,
    output wire [C_M00_AXI_MEM_ARUSER_WIDTH-1 : 0] m00_axi_mem_aruser,
    output wire  m00_axi_mem_arvalid,
    input wire  m00_axi_mem_arready,
    input wire [C_M00_AXI_MEM_ID_WIDTH-1 : 0] m00_axi_mem_rid,
    input wire [C_M00_AXI_MEM_DATA_WIDTH-1 : 0] m00_axi_mem_rdata,
    input wire [1 : 0] m00_axi_mem_rresp,
    input wire  m00_axi_mem_rlast,
    input wire [C_M00_AXI_MEM_RUSER_WIDTH-1 : 0] m00_axi_mem_ruser,
    input wire  m00_axi_mem_rvalid,
    output wire  m00_axi_mem_rready

);
    function integer clogb2 (input integer bit_depth);              
    begin                                                           
        for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
          bit_depth = bit_depth >> 1;                                 
        end                                                           
    endfunction
    // Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
    // Non-2^n lengths will eventually cause bursts across 4K address boundaries.
    localparam integer C_MASTER_LENGTH  = 12;
    localparam integer C_NO_BURSTS_REQ = C_MASTER_LENGTH-clogb2((C_M00_AXI_MEM_BURST_LEN*C_M00_AXI_MEM_DATA_WIDTH/8)-1);
    
    wire  [63:0]  angle_data_input;
    wire          angle_data_valid;
    wire          angle_data_ready;

    assign angle_data_tready = angle_data_ready;
    assign angle_data_valid = angle_data_tvalid;
    assign angle_data_input = angle_data_tdata;

    //握手信号 读事务
    wire    [C_M00_AXI_MEM_ADDR_WIDTH-1 : 0]    axi_txn_base_rd_addr;
    wire    [C_NO_BURSTS_REQ : 0]               axi_txn_rd_burst_counter; //传输数量 最大4KB
    wire                                        axi_txn_rd_cfg_valid;
    wire                                        axi_txn_rd_busy;
    wire                                        init_axi_txn_rd;

    wire    [C_M00_AXI_MEM_DATA_WIDTH-1:0]      rd_fifo_din;
    wire                                        rd_fifo_wr_en;
    //握手信号 写事务
    wire    [C_M00_AXI_MEM_ADDR_WIDTH-1 : 0]    axi_txn_base_wr_addr;
    wire    [C_NO_BURSTS_REQ : 0]               axi_txn_wr_burst_counter; //传输数量 最大4KB
    wire                                        axi_txn_wr_cfg_valid;
    wire                                        axi_txn_wr_busy;
    wire                                        init_axi_txn_wr;

    wire                                        wr_fifo_rd_en;
    wire    [C_M00_AXI_MEM_DATA_WIDTH-1:0]      wr_fifo_dout;
// Instantiation of Axi Bus Interface M00_AXI_MEM
    backproject_AXI_MEM # (
        .C_NO_BURSTS_REQ(C_NO_BURSTS_REQ),

        .C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR),
        .C_M_AXI_BURST_LEN(C_M00_AXI_MEM_BURST_LEN),
        .C_M_AXI_ID_WIDTH(C_M00_AXI_MEM_ID_WIDTH),
        .C_M_AXI_ADDR_WIDTH(C_M00_AXI_MEM_ADDR_WIDTH),
        .C_M_AXI_DATA_WIDTH(C_M00_AXI_MEM_DATA_WIDTH),
        .C_M_AXI_AWUSER_WIDTH(C_M00_AXI_MEM_AWUSER_WIDTH),
        .C_M_AXI_ARUSER_WIDTH(C_M00_AXI_MEM_ARUSER_WIDTH),
        .C_M_AXI_WUSER_WIDTH(C_M00_AXI_MEM_WUSER_WIDTH),
        .C_M_AXI_RUSER_WIDTH(C_M00_AXI_MEM_RUSER_WIDTH),
        .C_M_AXI_BUSER_WIDTH(C_M00_AXI_MEM_BUSER_WIDTH)
    ) backproject_AXI_MEM_inst (
        .axi_txn_base_rd_addr     (axi_txn_base_rd_addr),
        .axi_txn_rd_burst_counter (axi_txn_rd_burst_counter),
        .axi_txn_rd_cfg_valid     (axi_txn_rd_cfg_valid),
        .axi_txn_rd_busy          (axi_txn_rd_busy),
        .init_axi_txn_rd          (init_axi_txn_rd),
        .rd_fifo_din              (rd_fifo_din),
        .rd_fifo_wr_en            (rd_fifo_wr_en),
        .axi_txn_base_wr_addr     (axi_txn_base_wr_addr),
        .axi_txn_wr_burst_counter (axi_txn_wr_burst_counter),
        .axi_txn_wr_cfg_valid     (axi_txn_wr_cfg_valid),
        .axi_txn_wr_busy          (axi_txn_wr_busy),
        .init_axi_txn_wr          (init_axi_txn_wr),
        .wr_fifo_rd_en            (wr_fifo_rd_en),
        .wr_fifo_dout             (wr_fifo_dout),
        .ERROR(m00_axi_mem_error),

        .M_AXI_ACLK(clk),
        .M_AXI_ARESETN(arstn),
        .M_AXI_AWID(m00_axi_mem_awid),
        .M_AXI_AWADDR(m00_axi_mem_awaddr),
        .M_AXI_AWLEN(m00_axi_mem_awlen),
        .M_AXI_AWSIZE(m00_axi_mem_awsize),
        .M_AXI_AWBURST(m00_axi_mem_awburst),
        .M_AXI_AWLOCK(m00_axi_mem_awlock),
        .M_AXI_AWCACHE(m00_axi_mem_awcache),
        .M_AXI_AWPROT(m00_axi_mem_awprot),
        .M_AXI_AWQOS(m00_axi_mem_awqos),
        .M_AXI_AWUSER(m00_axi_mem_awuser),
        .M_AXI_AWVALID(m00_axi_mem_awvalid),
        .M_AXI_AWREADY(m00_axi_mem_awready),
        .M_AXI_WDATA(m00_axi_mem_wdata),
        .M_AXI_WSTRB(m00_axi_mem_wstrb),
        .M_AXI_WLAST(m00_axi_mem_wlast),
        .M_AXI_WUSER(m00_axi_mem_wuser),
        .M_AXI_WVALID(m00_axi_mem_wvalid),
        .M_AXI_WREADY(m00_axi_mem_wready),
        .M_AXI_BID(m00_axi_mem_bid),
        .M_AXI_BRESP(m00_axi_mem_bresp),
        .M_AXI_BUSER(m00_axi_mem_buser),
        .M_AXI_BVALID(m00_axi_mem_bvalid),
        .M_AXI_BREADY(m00_axi_mem_bready),
        .M_AXI_ARID(m00_axi_mem_arid),
        .M_AXI_ARADDR(m00_axi_mem_araddr),
        .M_AXI_ARLEN(m00_axi_mem_arlen),
        .M_AXI_ARSIZE(m00_axi_mem_arsize),
        .M_AXI_ARBURST(m00_axi_mem_arburst),
        .M_AXI_ARLOCK(m00_axi_mem_arlock),
        .M_AXI_ARCACHE(m00_axi_mem_arcache),
        .M_AXI_ARPROT(m00_axi_mem_arprot),
        .M_AXI_ARQOS(m00_axi_mem_arqos),
        .M_AXI_ARUSER(m00_axi_mem_aruser),
        .M_AXI_ARVALID(m00_axi_mem_arvalid),
        .M_AXI_ARREADY(m00_axi_mem_arready),
        .M_AXI_RID(m00_axi_mem_rid),
        .M_AXI_RDATA(m00_axi_mem_rdata),
        .M_AXI_RRESP(m00_axi_mem_rresp),
        .M_AXI_RLAST(m00_axi_mem_rlast),
        .M_AXI_RUSER(m00_axi_mem_ruser),
        .M_AXI_RVALID(m00_axi_mem_rvalid),
        .M_AXI_RREADY(m00_axi_mem_rready)
    );

    //例化fifo
    wire            rd_fifo_rd_en;
    wire    [31:0]  rd_fifo_dout;
    wire            rd_fifo_full;
    wire            rd_fifo_empty;
    wire    [10:0]  rd_fifo_rd_data_count;
    wire    [9:0]   rd_fifo_wr_data_count;
    fifo_64x512_32x1024 rd_fifo_inst (
      .clk           (clk),                     // input wire clk
      .srst          (~arstn),                  // input wire srst
      .din           (rd_fifo_din),             // input wire [63 : 0] din
      .wr_en         (rd_fifo_wr_en),           // input wire wr_en

      .rd_en         (rd_fifo_rd_en),           // input wire rd_en
      .dout          (rd_fifo_dout),            // output wire [31 : 0] dout
      .full          (rd_fifo_full),            // output wire full
      .empty         (rd_fifo_empty),           // output wire empty
      .rd_data_count (rd_fifo_rd_data_count),   // output wire [10 : 0] rd_data_count
      .wr_data_count (rd_fifo_wr_data_count)    // output wire [9 : 0] wr_data_count
    );

    wire            wr_fifo_wr_en;
    wire    [31:0]  wr_fifo_din;
    wire            wr_fifo_full;
    wire            wr_fifo_empty;
    wire    [9:0]   wr_fifo_rd_data_count;
    wire    [10:0]  wr_fifo_wr_data_count;
    fifo_32x1024_64x512 wr_fifo_inst (
      .clk           (clk),                     // input wire clk
      .srst          (~arstn),                  // input wire srst
      .rd_en         (wr_fifo_rd_en),           // input wire rd_en
      .dout          (wr_fifo_dout),            // output wire [63 : 0] dout

      .din           (wr_fifo_din),             // input wire [31 : 0] din
      .wr_en         (wr_fifo_wr_en),           // input wire wr_en
      .full          (wr_fifo_full),            // output wire full
      .empty         (wr_fifo_empty),           // output wire empty
      .rd_data_count (wr_fifo_rd_data_count),   // output wire [9 : 0] rd_data_count
      .wr_data_count (wr_fifo_wr_data_count)    // output wire [10 : 0] wr_data_count
    );

    wire start_one_new_txn_arbiter;
    wire clear;
    wire clear_valid;
    wire finsh_wr;
    wire arbiter_txn_done;
    read_write_arbiter #(
        .C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR),
        .C_NO_BURSTS_REQ(C_NO_BURSTS_REQ),
        .C_M_AXI_ADDR_WIDTH(C_M00_AXI_MEM_ADDR_WIDTH),
        .C_M_AXI_BURST_LEN(C_M00_AXI_MEM_BURST_LEN),
        .IMG_N(IMG_N)
    ) inst_read_write_arbiter (
        .clk                      (clk),
        .arstn                    (arstn),

        .img_base_addr_valid      (img_base_addr_valid),
        .img_base_addr            (img_base_addr),

        .start_one_new_txn        (start_one_new_txn_arbiter),
        .clear                    (clear),
        .clear_valid              (clear_valid),
        .finsh_wr                 (finsh_wr),
        .txn_done                 (arbiter_txn_done),

        .rd_fifo_full             (rd_fifo_full),
        .rd_fifo_empty            (rd_fifo_empty),
        .rd_fifo_rd_data_count    (rd_fifo_rd_data_count),
        .rd_fifo_wr_data_count    (rd_fifo_wr_data_count),
        .axi_txn_base_rd_addr     (axi_txn_base_rd_addr),
        .axi_txn_rd_burst_counter (axi_txn_rd_burst_counter),
        .axi_txn_rd_cfg_valid     (axi_txn_rd_cfg_valid),
        .axi_txn_rd_busy          (axi_txn_rd_busy),
        .init_axi_txn_rd          (init_axi_txn_rd),

        .wr_fifo_full             (wr_fifo_full),
        .wr_fifo_empty            (wr_fifo_empty),
        .wr_fifo_rd_data_count    (wr_fifo_rd_data_count),
        .wr_fifo_wr_data_count    (wr_fifo_wr_data_count),
        .axi_txn_base_wr_addr     (axi_txn_base_wr_addr),
        .axi_txn_wr_burst_counter (axi_txn_wr_burst_counter),
        .axi_txn_wr_cfg_valid     (axi_txn_wr_cfg_valid),
        .axi_txn_wr_busy          (axi_txn_wr_busy),
        .init_axi_txn_wr          (init_axi_txn_wr)
    );

    wire complete_wr;
    wire odd_ram_wea;
    wire even_ram_wea;

    wire start_calc;
    wire finsh_calc;

    wire [7:0] angle_num;
    wire angle_num_valid;

    wire [31:0] rd_data;
    wire rd_data_valid;
    wire rd_data_ready;
    wire [31:0] wr_data;
    wire wr_data_valid;
    wire wr_data_ready;

    processing_pipelines #(
        .FFT_N(FFT_N),
        .ANGEL_DATA_LEN(ANGEL_DATA_LEN),
        .ANGEL_DATA_LEN_HALF(ANGEL_DATA_LEN_HALF),
        .ANGLE_NUM(ANGLE_NUM),
        .IMG_N(IMG_N),
        .PIPELINES_NUM(PIPELINES_NUM)
    ) inst_processing_pipelines (
        .clk               (clk),
        .arstn             (arstn),
        .angle_data_input  (angle_data_input),
        .angle_data_valid  (angle_data_valid),
        .angle_data_ready  (angle_data_ready),
        .complete_wr       (complete_wr),
        .odd_ram_wea       (odd_ram_wea),
        .even_ram_wea      (even_ram_wea),
        .start_calc        (start_calc),
        .finsh_calc        (finsh_calc),
        .angle_num         (angle_num),
        .angle_num_valid   (angle_num_valid),
        .rd_data           (rd_data),
        .rd_data_valid     (rd_data_valid),
        .rd_data_ready     (rd_data_ready),
        .wr_data           (wr_data),
        .wr_data_valid     (wr_data_valid),
        .wr_data_ready     (wr_data_ready)
    );

    wire    control_unit_start_one_new_txn_angle_data;
    wire    control_unit_get_next_angle;
    wire    control_unit_one_angle_txn_done;
    wire    control_unit_angle_data_txn_done;
    control_angle_txn #(
        .ANGLE_NUM(ANGLE_NUM),
        .PIPELINES_NUM(PIPELINES_NUM)
    ) inst_control_angle_txn (
        .clk                                       (clk),
        .arstn                                     (arstn),
        .control_unit_start_one_new_txn_angle_data (control_unit_start_one_new_txn_angle_data),
        .control_unit_get_next_angle               (control_unit_get_next_angle),
        .control_unit_one_angle_txn_done           (control_unit_one_angle_txn_done),
        .control_unit_angle_data_txn_done          (control_unit_angle_data_txn_done),
        .angle_num                                 (angle_num),
        .angle_num_valid                           (angle_num_valid),
        .start_one_new_txn_angle_data              (start_one_new_txn_angle_data),
        .get_next_angle                            (get_next_angle),
        .one_angle_txn_done                        (one_angle_txn_done),
        .angle_data_txn_done                       (angle_data_txn_done)
    );

    control_unit #(
        .ANGLE_NUM_DIV_10(ANGLE_NUM/60),
        .IMG_N(IMG_N)
    ) inst_control_unit (
        .clk                          (clk),
        .arstn                        (arstn),

        .start_fbp                    (start_fbp),
        .finsh_fbp                    (finsh_fbp),

        .start_one_new_txn_angle_data (control_unit_start_one_new_txn_angle_data),
        .get_next_angle               (control_unit_get_next_angle),
        .one_angle_txn_done           (control_unit_one_angle_txn_done),
        .angle_data_txn_done          (control_unit_angle_data_txn_done),

        .start_one_new_txn_arbiter    (start_one_new_txn_arbiter),
        .clear                        (clear),
        .clear_valid                  (clear_valid),
        .finsh_wr                     (finsh_wr),
        .arbiter_txn_done             (arbiter_txn_done),

        .complete_wr                  (complete_wr),
        .odd_ram_wea                  (odd_ram_wea),
        .even_ram_wea                 (even_ram_wea),

        .start_calc                   (start_calc),
        .finsh_calc                   (finsh_calc),
        .rd_data                      (rd_data),
        .rd_data_valid                (rd_data_valid),
        .rd_data_ready                (rd_data_ready),
        .wr_data                      (wr_data),
        .wr_data_valid                (wr_data_valid),
        .wr_data_ready                (wr_data_ready),

        .rd_fifo_full                 (rd_fifo_full),
        .rd_fifo_empty                (rd_fifo_empty),
        .rd_fifo_rd_en                (rd_fifo_rd_en),
        .rd_fifo_dout                 (rd_fifo_dout),
        .wr_fifo_full                 (wr_fifo_full),
        .wr_fifo_empty                (wr_fifo_empty),
        .wr_fifo_wr_en                (wr_fifo_wr_en),
        .wr_fifo_din                  (wr_fifo_din)
    );


endmodule
