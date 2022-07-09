module read_data_unit #
(
	// Users to add parameters here
	parameter FFT_N                                 = 1024,
	parameter ANGLE_NUM                             = 180,
	parameter ANGEL_DATA_LEN                        = 730,
	parameter ANGEL_DATA_LEN_HALF                   = 365,
	// User parameters ends
	// Do not modify the parameters beyond this line
	// Parameters of Axi Master Bus Interface M00_AXI_MEM
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


	input wire	[32-1:0]	angle_base_addr,
	input wire				angle_base_addr_valid,
	//Control
	//单周期脉冲信号
	// txn_done为 1 时 start_one_new_txn 可以产生一个脉冲,开始一帧图像的传输
	// 
	// 接着等待one_angle_txn_done为 1 ，当one_angle_txn_done == 1 时 表示已经传输完一个角度的数据
	// 这个时候get_next_angle 可以产生一个脉冲 开始传输下一个角度的数据
	// 
	input wire			start_one_new_txn_rd,
	input wire			get_next_angle,
	output wire			one_angle_txn_done,
	output wire			txn_rd_done,

	output wire	[64-1:0]	m_axis_tdata,
	output wire				m_axis_tlast,
	output wire				m_axis_tvalid,
	input wire				m_axis_tready,

	// Users to add ports here
	// User ports ends
	// Do not modify the ports beyond this line
	// Ports of Axi Master Bus Interface M00_AXI_MEM
	output wire										m00_axi_mem_error,
	input wire										aclk,
	input wire										aresetn,
	output wire	[C_M00_AXI_MEM_ID_WIDTH-1 : 0]		m00_axi_mem_awid,
	output wire	[C_M00_AXI_MEM_ADDR_WIDTH-1 : 0]	m00_axi_mem_awaddr,
	output wire	[7 : 0]								m00_axi_mem_awlen,
	output wire	[2 : 0]								m00_axi_mem_awsize,
	output wire	[1 : 0]								m00_axi_mem_awburst,
	output wire										m00_axi_mem_awlock,
	output wire	[3 : 0]								m00_axi_mem_awcache,
	output wire	[2 : 0]								m00_axi_mem_awprot,
	output wire	[3 : 0]								m00_axi_mem_awqos,
	output wire	[C_M00_AXI_MEM_AWUSER_WIDTH-1 : 0]	m00_axi_mem_awuser,
	output wire										m00_axi_mem_awvalid,
	input wire										m00_axi_mem_awready,
	output wire	[C_M00_AXI_MEM_DATA_WIDTH-1 : 0]	m00_axi_mem_wdata,
	output wire	[C_M00_AXI_MEM_DATA_WIDTH/8-1 : 0]	m00_axi_mem_wstrb,
	output wire										m00_axi_mem_wlast,
	output wire	[C_M00_AXI_MEM_WUSER_WIDTH-1 : 0]	m00_axi_mem_wuser,
	output wire										m00_axi_mem_wvalid,
	input wire										m00_axi_mem_wready,
	input wire	[C_M00_AXI_MEM_ID_WIDTH-1 : 0]		m00_axi_mem_bid,
	input wire	[1 : 0]								m00_axi_mem_bresp,
	input wire	[C_M00_AXI_MEM_BUSER_WIDTH-1 : 0]	m00_axi_mem_buser,
	input wire										m00_axi_mem_bvalid,
	output wire										m00_axi_mem_bready,
	output wire	[C_M00_AXI_MEM_ID_WIDTH-1 : 0]		m00_axi_mem_arid,
	output wire	[C_M00_AXI_MEM_ADDR_WIDTH-1 : 0]	m00_axi_mem_araddr,
	output wire	[7 : 0]								m00_axi_mem_arlen,
	output wire	[2 : 0]								m00_axi_mem_arsize,
	output wire	[1 : 0]								m00_axi_mem_arburst,
	output wire										m00_axi_mem_arlock,
	output wire	[3 : 0]								m00_axi_mem_arcache,
	output wire	[2 : 0]								m00_axi_mem_arprot,
	output wire	[3 : 0]								m00_axi_mem_arqos,
	output wire	[C_M00_AXI_MEM_ARUSER_WIDTH-1 : 0]	m00_axi_mem_aruser,
	output wire										m00_axi_mem_arvalid,
	input wire										m00_axi_mem_arready,
	input wire	[C_M00_AXI_MEM_ID_WIDTH-1 : 0]		m00_axi_mem_rid,
	input wire	[C_M00_AXI_MEM_DATA_WIDTH-1 : 0]	m00_axi_mem_rdata,
	input wire	[1 : 0]								m00_axi_mem_rresp,
	input wire										m00_axi_mem_rlast,
	input wire	[C_M00_AXI_MEM_RUSER_WIDTH-1 : 0]	m00_axi_mem_ruser,
	input wire										m00_axi_mem_rvalid,
	output wire										m00_axi_mem_rready
);

function integer clogb2 (input integer bit_depth);              
begin                                                           
    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
      bit_depth = bit_depth >> 1;                                 
    end                                                           
endfunction
// Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
// Non-2^n lengths will eventually cause bursts across 4K address boundaries.
localparam integer C_MASTER_LENGTH	= 12;
localparam integer C_NO_BURSTS_REQ = C_MASTER_LENGTH-clogb2((C_M00_AXI_MEM_BURST_LEN*C_M00_AXI_MEM_DATA_WIDTH/8)-1);

//握手信号 读事务
wire	[C_M00_AXI_MEM_ADDR_WIDTH-1 : 0]	axi_txn_base_rd_addr;
wire	[C_NO_BURSTS_REQ : 0]				axi_txn_rd_burst_counter; //传输数量 最大4KB
wire										axi_txn_rd_cfg_valid;
wire										axi_txn_rd_busy;
wire										init_axi_txn_rd;
wire	[C_M00_AXI_MEM_DATA_WIDTH-1:0]		rd_fifo_din;
wire										rd_fifo_wr_en;
//握手信号 写事务
wire	[C_M00_AXI_MEM_ADDR_WIDTH-1 : 0]	axi_txn_base_wr_addr;
wire	[C_NO_BURSTS_REQ : 0]				axi_txn_wr_burst_counter; //传输数量 最大4KB
wire										axi_txn_wr_cfg_valid;
wire										axi_txn_wr_busy;
wire										init_axi_txn_wr;
wire										wr_fifo_rd_en;
wire	[C_M00_AXI_MEM_DATA_WIDTH-1:0]		wr_fifo_dout;

assign axi_txn_base_wr_addr = C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR;
assign axi_txn_wr_burst_counter = 0;
assign axi_txn_wr_cfg_valid = 1'b0;
assign init_axi_txn_wr = 1'b0;

read_angle_AXI_MEM # (
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
) read_angle_AXI_MEM_inst (
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
	.M_AXI_ACLK(aclk),
	.M_AXI_ARESETN(aresetn),
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

wire			rd_fifo_rd_en;
wire	[63:0]	rd_fifo_dout;
wire			rd_fifo_full;
wire			rd_fifo_empty;
wire	[9:0]	rd_fifo_data_count;
fifo_64x512 rd_fifo_inst
(
	.clk        (aclk),
	.srst       (~aresetn),
	.din        (rd_fifo_din),
	.wr_en      (rd_fifo_wr_en),
	.rd_en      (rd_fifo_rd_en), 
	.dout       (rd_fifo_dout),  
	.full       (rd_fifo_full),  
	.empty      (rd_fifo_empty), 
	.data_count (rd_fifo_data_count) // output wire [9 : 0] wr_data_count
);

//高低位数据顺序不一致
wire [64-1:0] m_axis_tdata_r;
assign m_axis_tdata = {m_axis_tdata_r[31:0],m_axis_tdata_r[63:32]};

read_angle_data #(
	.FFT_N(FFT_N),
	.ANGLE_NUM(ANGLE_NUM),
	.ANGEL_DATA_LEN(ANGEL_DATA_LEN),
	.ANGEL_DATA_LEN_HALF(ANGEL_DATA_LEN_HALF),
	.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR),
	.C_NO_BURSTS_REQ(C_NO_BURSTS_REQ),
	.C_M_AXI_ADDR_WIDTH(C_M00_AXI_MEM_ADDR_WIDTH),
	.C_M_AXI_BURST_LEN(C_M00_AXI_MEM_BURST_LEN)
) inst_read_angle_data (
	.clk                      (aclk),
	.arstn                    (aresetn),
	.angle_base_addr          (angle_base_addr),
	.angle_base_addr_valid    (angle_base_addr_valid),
	.start_one_new_txn        (start_one_new_txn_rd),
	.get_next_angle           (get_next_angle),
	.one_angle_txn_done       (one_angle_txn_done),
	.txn_done                 (txn_rd_done),
	.M_AXIS_TDATA             (m_axis_tdata_r),
	.M_AXIS_TLAST             (m_axis_tlast),
	.M_AXIS_TVALID            (m_axis_tvalid),
	.M_AXIS_TREADY            (m_axis_tready),
	.rd_fifo_rd_en            (rd_fifo_rd_en),
	.rd_fifo_dout             (rd_fifo_dout),
	.rd_fifo_full             (rd_fifo_full),
	.rd_fifo_empty            (rd_fifo_empty),
	.rd_fifo_data_count       (rd_fifo_data_count),
	.axi_txn_base_rd_addr     (axi_txn_base_rd_addr),
	.axi_txn_rd_burst_counter (axi_txn_rd_burst_counter),
	.axi_txn_rd_cfg_valid     (axi_txn_rd_cfg_valid),
	.axi_txn_rd_busy          (axi_txn_rd_busy),
	.init_axi_txn_rd          (init_axi_txn_rd)
);


endmodule