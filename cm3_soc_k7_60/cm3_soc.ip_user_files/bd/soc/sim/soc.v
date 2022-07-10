//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed May 18 01:02:55 2022
//Host        : YF105-SERVER running 64-bit major release  (build 9200)
//Command     : generate_target soc.bd
//Design      : soc
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module acc_imp_1UOSCG7
   (acc_clk,
    angle_axi_mem_araddr,
    angle_axi_mem_arburst,
    angle_axi_mem_arcache,
    angle_axi_mem_arid,
    angle_axi_mem_arlen,
    angle_axi_mem_arlock,
    angle_axi_mem_arprot,
    angle_axi_mem_arqos,
    angle_axi_mem_arready,
    angle_axi_mem_arsize,
    angle_axi_mem_arvalid,
    angle_axi_mem_awaddr,
    angle_axi_mem_awburst,
    angle_axi_mem_awcache,
    angle_axi_mem_awid,
    angle_axi_mem_awlen,
    angle_axi_mem_awlock,
    angle_axi_mem_awprot,
    angle_axi_mem_awqos,
    angle_axi_mem_awready,
    angle_axi_mem_awsize,
    angle_axi_mem_awvalid,
    angle_axi_mem_bid,
    angle_axi_mem_bready,
    angle_axi_mem_bresp,
    angle_axi_mem_bvalid,
    angle_axi_mem_rdata,
    angle_axi_mem_rid,
    angle_axi_mem_rlast,
    angle_axi_mem_rready,
    angle_axi_mem_rresp,
    angle_axi_mem_rvalid,
    angle_axi_mem_wdata,
    angle_axi_mem_wlast,
    angle_axi_mem_wready,
    angle_axi_mem_wstrb,
    angle_axi_mem_wvalid,
    angle_base_addr,
    angle_base_addr_valid,
    axi_mem_error,
    finsh_fbp,
    img_axi_mem_araddr,
    img_axi_mem_arburst,
    img_axi_mem_arcache,
    img_axi_mem_arid,
    img_axi_mem_arlen,
    img_axi_mem_arlock,
    img_axi_mem_arprot,
    img_axi_mem_arqos,
    img_axi_mem_arready,
    img_axi_mem_arsize,
    img_axi_mem_arvalid,
    img_axi_mem_awaddr,
    img_axi_mem_awburst,
    img_axi_mem_awcache,
    img_axi_mem_awid,
    img_axi_mem_awlen,
    img_axi_mem_awlock,
    img_axi_mem_awprot,
    img_axi_mem_awqos,
    img_axi_mem_awready,
    img_axi_mem_awsize,
    img_axi_mem_awvalid,
    img_axi_mem_bid,
    img_axi_mem_bready,
    img_axi_mem_bresp,
    img_axi_mem_bvalid,
    img_axi_mem_rdata,
    img_axi_mem_rid,
    img_axi_mem_rlast,
    img_axi_mem_rready,
    img_axi_mem_rresp,
    img_axi_mem_rvalid,
    img_axi_mem_wdata,
    img_axi_mem_wlast,
    img_axi_mem_wready,
    img_axi_mem_wstrb,
    img_axi_mem_wvalid,
    img_base_addr,
    img_base_addr_valid,
    rstn,
    start_fbp);
  input acc_clk;
  output [31:0]angle_axi_mem_araddr;
  output [1:0]angle_axi_mem_arburst;
  output [3:0]angle_axi_mem_arcache;
  output [0:0]angle_axi_mem_arid;
  output [7:0]angle_axi_mem_arlen;
  output [0:0]angle_axi_mem_arlock;
  output [2:0]angle_axi_mem_arprot;
  output [3:0]angle_axi_mem_arqos;
  input angle_axi_mem_arready;
  output [2:0]angle_axi_mem_arsize;
  output angle_axi_mem_arvalid;
  output [31:0]angle_axi_mem_awaddr;
  output [1:0]angle_axi_mem_awburst;
  output [3:0]angle_axi_mem_awcache;
  output [0:0]angle_axi_mem_awid;
  output [7:0]angle_axi_mem_awlen;
  output [0:0]angle_axi_mem_awlock;
  output [2:0]angle_axi_mem_awprot;
  output [3:0]angle_axi_mem_awqos;
  input angle_axi_mem_awready;
  output [2:0]angle_axi_mem_awsize;
  output angle_axi_mem_awvalid;
  input [0:0]angle_axi_mem_bid;
  output angle_axi_mem_bready;
  input [1:0]angle_axi_mem_bresp;
  input angle_axi_mem_bvalid;
  input [63:0]angle_axi_mem_rdata;
  input [0:0]angle_axi_mem_rid;
  input angle_axi_mem_rlast;
  output angle_axi_mem_rready;
  input [1:0]angle_axi_mem_rresp;
  input angle_axi_mem_rvalid;
  output [63:0]angle_axi_mem_wdata;
  output angle_axi_mem_wlast;
  input angle_axi_mem_wready;
  output [7:0]angle_axi_mem_wstrb;
  output angle_axi_mem_wvalid;
  input [31:0]angle_base_addr;
  input angle_base_addr_valid;
  output [0:0]axi_mem_error;
  output finsh_fbp;
  output [31:0]img_axi_mem_araddr;
  output [1:0]img_axi_mem_arburst;
  output [3:0]img_axi_mem_arcache;
  output [0:0]img_axi_mem_arid;
  output [7:0]img_axi_mem_arlen;
  output [0:0]img_axi_mem_arlock;
  output [2:0]img_axi_mem_arprot;
  output [3:0]img_axi_mem_arqos;
  input img_axi_mem_arready;
  output [2:0]img_axi_mem_arsize;
  output img_axi_mem_arvalid;
  output [31:0]img_axi_mem_awaddr;
  output [1:0]img_axi_mem_awburst;
  output [3:0]img_axi_mem_awcache;
  output [0:0]img_axi_mem_awid;
  output [7:0]img_axi_mem_awlen;
  output [0:0]img_axi_mem_awlock;
  output [2:0]img_axi_mem_awprot;
  output [3:0]img_axi_mem_awqos;
  input img_axi_mem_awready;
  output [2:0]img_axi_mem_awsize;
  output img_axi_mem_awvalid;
  input [0:0]img_axi_mem_bid;
  output img_axi_mem_bready;
  input [1:0]img_axi_mem_bresp;
  input img_axi_mem_bvalid;
  input [63:0]img_axi_mem_rdata;
  input [0:0]img_axi_mem_rid;
  input img_axi_mem_rlast;
  output img_axi_mem_rready;
  input [1:0]img_axi_mem_rresp;
  input img_axi_mem_rvalid;
  output [63:0]img_axi_mem_wdata;
  output img_axi_mem_wlast;
  input img_axi_mem_wready;
  output [7:0]img_axi_mem_wstrb;
  output img_axi_mem_wvalid;
  input [31:0]img_base_addr;
  input img_base_addr_valid;
  input rstn;
  input start_fbp;

  wire aclk_0_1;
  wire [31:0]angle_base_addr_0_1;
  wire angle_base_addr_valid_0_1;
  wire backproject_0_finsh_fbp;
  wire backproject_0_get_next_angle;
  wire [31:0]backproject_0_m00_axi_mem_ARADDR;
  wire [1:0]backproject_0_m00_axi_mem_ARBURST;
  wire [3:0]backproject_0_m00_axi_mem_ARCACHE;
  wire [0:0]backproject_0_m00_axi_mem_ARID;
  wire [7:0]backproject_0_m00_axi_mem_ARLEN;
  wire backproject_0_m00_axi_mem_ARLOCK;
  wire [2:0]backproject_0_m00_axi_mem_ARPROT;
  wire [3:0]backproject_0_m00_axi_mem_ARQOS;
  wire backproject_0_m00_axi_mem_ARREADY;
  wire [2:0]backproject_0_m00_axi_mem_ARSIZE;
  wire backproject_0_m00_axi_mem_ARVALID;
  wire [31:0]backproject_0_m00_axi_mem_AWADDR;
  wire [1:0]backproject_0_m00_axi_mem_AWBURST;
  wire [3:0]backproject_0_m00_axi_mem_AWCACHE;
  wire [0:0]backproject_0_m00_axi_mem_AWID;
  wire [7:0]backproject_0_m00_axi_mem_AWLEN;
  wire backproject_0_m00_axi_mem_AWLOCK;
  wire [2:0]backproject_0_m00_axi_mem_AWPROT;
  wire [3:0]backproject_0_m00_axi_mem_AWQOS;
  wire backproject_0_m00_axi_mem_AWREADY;
  wire [2:0]backproject_0_m00_axi_mem_AWSIZE;
  wire backproject_0_m00_axi_mem_AWVALID;
  wire [0:0]backproject_0_m00_axi_mem_BID;
  wire backproject_0_m00_axi_mem_BREADY;
  wire [1:0]backproject_0_m00_axi_mem_BRESP;
  wire backproject_0_m00_axi_mem_BVALID;
  wire [63:0]backproject_0_m00_axi_mem_RDATA;
  wire [0:0]backproject_0_m00_axi_mem_RID;
  wire backproject_0_m00_axi_mem_RLAST;
  wire backproject_0_m00_axi_mem_RREADY;
  wire [1:0]backproject_0_m00_axi_mem_RRESP;
  wire backproject_0_m00_axi_mem_RVALID;
  wire [63:0]backproject_0_m00_axi_mem_WDATA;
  wire backproject_0_m00_axi_mem_WLAST;
  wire backproject_0_m00_axi_mem_WREADY;
  wire [7:0]backproject_0_m00_axi_mem_WSTRB;
  wire backproject_0_m00_axi_mem_WVALID;
  wire backproject_0_m00_axi_mem_error;
  wire backproject_0_start_one_new_txn_angle_data;
  wire ext_reset_in_0_1;
  wire [31:0]img_base_addr_0_1;
  wire img_base_addr_valid_0_1;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [31:0]read_data_unit_0_m00_axi_mem_ARADDR;
  wire [1:0]read_data_unit_0_m00_axi_mem_ARBURST;
  wire [3:0]read_data_unit_0_m00_axi_mem_ARCACHE;
  wire [0:0]read_data_unit_0_m00_axi_mem_ARID;
  wire [7:0]read_data_unit_0_m00_axi_mem_ARLEN;
  wire read_data_unit_0_m00_axi_mem_ARLOCK;
  wire [2:0]read_data_unit_0_m00_axi_mem_ARPROT;
  wire [3:0]read_data_unit_0_m00_axi_mem_ARQOS;
  wire read_data_unit_0_m00_axi_mem_ARREADY;
  wire [2:0]read_data_unit_0_m00_axi_mem_ARSIZE;
  wire read_data_unit_0_m00_axi_mem_ARVALID;
  wire [31:0]read_data_unit_0_m00_axi_mem_AWADDR;
  wire [1:0]read_data_unit_0_m00_axi_mem_AWBURST;
  wire [3:0]read_data_unit_0_m00_axi_mem_AWCACHE;
  wire [0:0]read_data_unit_0_m00_axi_mem_AWID;
  wire [7:0]read_data_unit_0_m00_axi_mem_AWLEN;
  wire read_data_unit_0_m00_axi_mem_AWLOCK;
  wire [2:0]read_data_unit_0_m00_axi_mem_AWPROT;
  wire [3:0]read_data_unit_0_m00_axi_mem_AWQOS;
  wire read_data_unit_0_m00_axi_mem_AWREADY;
  wire [2:0]read_data_unit_0_m00_axi_mem_AWSIZE;
  wire read_data_unit_0_m00_axi_mem_AWVALID;
  wire [0:0]read_data_unit_0_m00_axi_mem_BID;
  wire read_data_unit_0_m00_axi_mem_BREADY;
  wire [1:0]read_data_unit_0_m00_axi_mem_BRESP;
  wire read_data_unit_0_m00_axi_mem_BVALID;
  wire [63:0]read_data_unit_0_m00_axi_mem_RDATA;
  wire [0:0]read_data_unit_0_m00_axi_mem_RID;
  wire read_data_unit_0_m00_axi_mem_RLAST;
  wire read_data_unit_0_m00_axi_mem_RREADY;
  wire [1:0]read_data_unit_0_m00_axi_mem_RRESP;
  wire read_data_unit_0_m00_axi_mem_RVALID;
  wire [63:0]read_data_unit_0_m00_axi_mem_WDATA;
  wire read_data_unit_0_m00_axi_mem_WLAST;
  wire read_data_unit_0_m00_axi_mem_WREADY;
  wire [7:0]read_data_unit_0_m00_axi_mem_WSTRB;
  wire read_data_unit_0_m00_axi_mem_WVALID;
  wire read_data_unit_0_m00_axi_mem_error;
  wire [63:0]read_data_unit_0_m_axis_TDATA;
  wire read_data_unit_0_m_axis_TLAST;
  wire read_data_unit_0_m_axis_TREADY;
  wire read_data_unit_0_m_axis_TVALID;
  wire read_data_unit_0_one_angle_txn_done;
  wire read_data_unit_0_txn_rd_done;
  wire start_fbp_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [63:0]xfft_inv_512_M_AXIS_DATA_TDATA;
  wire xfft_inv_512_M_AXIS_DATA_TREADY;
  wire xfft_inv_512_M_AXIS_DATA_TVALID;

  assign aclk_0_1 = acc_clk;
  assign angle_axi_mem_araddr[31:0] = read_data_unit_0_m00_axi_mem_ARADDR;
  assign angle_axi_mem_arburst[1:0] = read_data_unit_0_m00_axi_mem_ARBURST;
  assign angle_axi_mem_arcache[3:0] = read_data_unit_0_m00_axi_mem_ARCACHE;
  assign angle_axi_mem_arid[0] = read_data_unit_0_m00_axi_mem_ARID;
  assign angle_axi_mem_arlen[7:0] = read_data_unit_0_m00_axi_mem_ARLEN;
  assign angle_axi_mem_arlock[0] = read_data_unit_0_m00_axi_mem_ARLOCK;
  assign angle_axi_mem_arprot[2:0] = read_data_unit_0_m00_axi_mem_ARPROT;
  assign angle_axi_mem_arqos[3:0] = read_data_unit_0_m00_axi_mem_ARQOS;
  assign angle_axi_mem_arsize[2:0] = read_data_unit_0_m00_axi_mem_ARSIZE;
  assign angle_axi_mem_arvalid = read_data_unit_0_m00_axi_mem_ARVALID;
  assign angle_axi_mem_awaddr[31:0] = read_data_unit_0_m00_axi_mem_AWADDR;
  assign angle_axi_mem_awburst[1:0] = read_data_unit_0_m00_axi_mem_AWBURST;
  assign angle_axi_mem_awcache[3:0] = read_data_unit_0_m00_axi_mem_AWCACHE;
  assign angle_axi_mem_awid[0] = read_data_unit_0_m00_axi_mem_AWID;
  assign angle_axi_mem_awlen[7:0] = read_data_unit_0_m00_axi_mem_AWLEN;
  assign angle_axi_mem_awlock[0] = read_data_unit_0_m00_axi_mem_AWLOCK;
  assign angle_axi_mem_awprot[2:0] = read_data_unit_0_m00_axi_mem_AWPROT;
  assign angle_axi_mem_awqos[3:0] = read_data_unit_0_m00_axi_mem_AWQOS;
  assign angle_axi_mem_awsize[2:0] = read_data_unit_0_m00_axi_mem_AWSIZE;
  assign angle_axi_mem_awvalid = read_data_unit_0_m00_axi_mem_AWVALID;
  assign angle_axi_mem_bready = read_data_unit_0_m00_axi_mem_BREADY;
  assign angle_axi_mem_rready = read_data_unit_0_m00_axi_mem_RREADY;
  assign angle_axi_mem_wdata[63:0] = read_data_unit_0_m00_axi_mem_WDATA;
  assign angle_axi_mem_wlast = read_data_unit_0_m00_axi_mem_WLAST;
  assign angle_axi_mem_wstrb[7:0] = read_data_unit_0_m00_axi_mem_WSTRB;
  assign angle_axi_mem_wvalid = read_data_unit_0_m00_axi_mem_WVALID;
  assign angle_base_addr_0_1 = angle_base_addr[31:0];
  assign angle_base_addr_valid_0_1 = angle_base_addr_valid;
  assign axi_mem_error[0] = util_vector_logic_0_Res;
  assign backproject_0_m00_axi_mem_ARREADY = img_axi_mem_arready;
  assign backproject_0_m00_axi_mem_AWREADY = img_axi_mem_awready;
  assign backproject_0_m00_axi_mem_BID = img_axi_mem_bid[0];
  assign backproject_0_m00_axi_mem_BRESP = img_axi_mem_bresp[1:0];
  assign backproject_0_m00_axi_mem_BVALID = img_axi_mem_bvalid;
  assign backproject_0_m00_axi_mem_RDATA = img_axi_mem_rdata[63:0];
  assign backproject_0_m00_axi_mem_RID = img_axi_mem_rid[0];
  assign backproject_0_m00_axi_mem_RLAST = img_axi_mem_rlast;
  assign backproject_0_m00_axi_mem_RRESP = img_axi_mem_rresp[1:0];
  assign backproject_0_m00_axi_mem_RVALID = img_axi_mem_rvalid;
  assign backproject_0_m00_axi_mem_WREADY = img_axi_mem_wready;
  assign ext_reset_in_0_1 = rstn;
  assign finsh_fbp = backproject_0_finsh_fbp;
  assign img_axi_mem_araddr[31:0] = backproject_0_m00_axi_mem_ARADDR;
  assign img_axi_mem_arburst[1:0] = backproject_0_m00_axi_mem_ARBURST;
  assign img_axi_mem_arcache[3:0] = backproject_0_m00_axi_mem_ARCACHE;
  assign img_axi_mem_arid[0] = backproject_0_m00_axi_mem_ARID;
  assign img_axi_mem_arlen[7:0] = backproject_0_m00_axi_mem_ARLEN;
  assign img_axi_mem_arlock[0] = backproject_0_m00_axi_mem_ARLOCK;
  assign img_axi_mem_arprot[2:0] = backproject_0_m00_axi_mem_ARPROT;
  assign img_axi_mem_arqos[3:0] = backproject_0_m00_axi_mem_ARQOS;
  assign img_axi_mem_arsize[2:0] = backproject_0_m00_axi_mem_ARSIZE;
  assign img_axi_mem_arvalid = backproject_0_m00_axi_mem_ARVALID;
  assign img_axi_mem_awaddr[31:0] = backproject_0_m00_axi_mem_AWADDR;
  assign img_axi_mem_awburst[1:0] = backproject_0_m00_axi_mem_AWBURST;
  assign img_axi_mem_awcache[3:0] = backproject_0_m00_axi_mem_AWCACHE;
  assign img_axi_mem_awid[0] = backproject_0_m00_axi_mem_AWID;
  assign img_axi_mem_awlen[7:0] = backproject_0_m00_axi_mem_AWLEN;
  assign img_axi_mem_awlock[0] = backproject_0_m00_axi_mem_AWLOCK;
  assign img_axi_mem_awprot[2:0] = backproject_0_m00_axi_mem_AWPROT;
  assign img_axi_mem_awqos[3:0] = backproject_0_m00_axi_mem_AWQOS;
  assign img_axi_mem_awsize[2:0] = backproject_0_m00_axi_mem_AWSIZE;
  assign img_axi_mem_awvalid = backproject_0_m00_axi_mem_AWVALID;
  assign img_axi_mem_bready = backproject_0_m00_axi_mem_BREADY;
  assign img_axi_mem_rready = backproject_0_m00_axi_mem_RREADY;
  assign img_axi_mem_wdata[63:0] = backproject_0_m00_axi_mem_WDATA;
  assign img_axi_mem_wlast = backproject_0_m00_axi_mem_WLAST;
  assign img_axi_mem_wstrb[7:0] = backproject_0_m00_axi_mem_WSTRB;
  assign img_axi_mem_wvalid = backproject_0_m00_axi_mem_WVALID;
  assign img_base_addr_0_1 = img_base_addr[31:0];
  assign img_base_addr_valid_0_1 = img_base_addr_valid;
  assign read_data_unit_0_m00_axi_mem_ARREADY = angle_axi_mem_arready;
  assign read_data_unit_0_m00_axi_mem_AWREADY = angle_axi_mem_awready;
  assign read_data_unit_0_m00_axi_mem_BID = angle_axi_mem_bid[0];
  assign read_data_unit_0_m00_axi_mem_BRESP = angle_axi_mem_bresp[1:0];
  assign read_data_unit_0_m00_axi_mem_BVALID = angle_axi_mem_bvalid;
  assign read_data_unit_0_m00_axi_mem_RDATA = angle_axi_mem_rdata[63:0];
  assign read_data_unit_0_m00_axi_mem_RID = angle_axi_mem_rid[0];
  assign read_data_unit_0_m00_axi_mem_RLAST = angle_axi_mem_rlast;
  assign read_data_unit_0_m00_axi_mem_RRESP = angle_axi_mem_rresp[1:0];
  assign read_data_unit_0_m00_axi_mem_RVALID = angle_axi_mem_rvalid;
  assign read_data_unit_0_m00_axi_mem_WREADY = angle_axi_mem_wready;
  assign start_fbp_0_1 = start_fbp;
  soc_proc_sys_reset_0_0 acc_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(aclk_0_1));
  soc_util_vector_logic_0_0 and_logic
       (.Op1(read_data_unit_0_m00_axi_mem_error),
        .Op2(backproject_0_m00_axi_mem_error),
        .Res(util_vector_logic_0_Res));
  soc_backproject_0_2 backproject_0
       (.angle_data_tdata(xfft_inv_512_M_AXIS_DATA_TDATA),
        .angle_data_tready(xfft_inv_512_M_AXIS_DATA_TREADY),
        .angle_data_tvalid(xfft_inv_512_M_AXIS_DATA_TVALID),
        .angle_data_txn_done(read_data_unit_0_txn_rd_done),
        .arstn(proc_sys_reset_0_peripheral_aresetn),
        .clk(aclk_0_1),
        .finsh_fbp(backproject_0_finsh_fbp),
        .get_next_angle(backproject_0_get_next_angle),
        .img_base_addr(img_base_addr_0_1),
        .img_base_addr_valid(img_base_addr_valid_0_1),
        .m00_axi_mem_araddr(backproject_0_m00_axi_mem_ARADDR),
        .m00_axi_mem_arburst(backproject_0_m00_axi_mem_ARBURST),
        .m00_axi_mem_arcache(backproject_0_m00_axi_mem_ARCACHE),
        .m00_axi_mem_arid(backproject_0_m00_axi_mem_ARID),
        .m00_axi_mem_arlen(backproject_0_m00_axi_mem_ARLEN),
        .m00_axi_mem_arlock(backproject_0_m00_axi_mem_ARLOCK),
        .m00_axi_mem_arprot(backproject_0_m00_axi_mem_ARPROT),
        .m00_axi_mem_arqos(backproject_0_m00_axi_mem_ARQOS),
        .m00_axi_mem_arready(backproject_0_m00_axi_mem_ARREADY),
        .m00_axi_mem_arsize(backproject_0_m00_axi_mem_ARSIZE),
        .m00_axi_mem_arvalid(backproject_0_m00_axi_mem_ARVALID),
        .m00_axi_mem_awaddr(backproject_0_m00_axi_mem_AWADDR),
        .m00_axi_mem_awburst(backproject_0_m00_axi_mem_AWBURST),
        .m00_axi_mem_awcache(backproject_0_m00_axi_mem_AWCACHE),
        .m00_axi_mem_awid(backproject_0_m00_axi_mem_AWID),
        .m00_axi_mem_awlen(backproject_0_m00_axi_mem_AWLEN),
        .m00_axi_mem_awlock(backproject_0_m00_axi_mem_AWLOCK),
        .m00_axi_mem_awprot(backproject_0_m00_axi_mem_AWPROT),
        .m00_axi_mem_awqos(backproject_0_m00_axi_mem_AWQOS),
        .m00_axi_mem_awready(backproject_0_m00_axi_mem_AWREADY),
        .m00_axi_mem_awsize(backproject_0_m00_axi_mem_AWSIZE),
        .m00_axi_mem_awvalid(backproject_0_m00_axi_mem_AWVALID),
        .m00_axi_mem_bid(backproject_0_m00_axi_mem_BID),
        .m00_axi_mem_bready(backproject_0_m00_axi_mem_BREADY),
        .m00_axi_mem_bresp(backproject_0_m00_axi_mem_BRESP),
        .m00_axi_mem_buser(1'b0),
        .m00_axi_mem_bvalid(backproject_0_m00_axi_mem_BVALID),
        .m00_axi_mem_error(backproject_0_m00_axi_mem_error),
        .m00_axi_mem_rdata(backproject_0_m00_axi_mem_RDATA),
        .m00_axi_mem_rid(backproject_0_m00_axi_mem_RID),
        .m00_axi_mem_rlast(backproject_0_m00_axi_mem_RLAST),
        .m00_axi_mem_rready(backproject_0_m00_axi_mem_RREADY),
        .m00_axi_mem_rresp(backproject_0_m00_axi_mem_RRESP),
        .m00_axi_mem_ruser(1'b0),
        .m00_axi_mem_rvalid(backproject_0_m00_axi_mem_RVALID),
        .m00_axi_mem_wdata(backproject_0_m00_axi_mem_WDATA),
        .m00_axi_mem_wlast(backproject_0_m00_axi_mem_WLAST),
        .m00_axi_mem_wready(backproject_0_m00_axi_mem_WREADY),
        .m00_axi_mem_wstrb(backproject_0_m00_axi_mem_WSTRB),
        .m00_axi_mem_wvalid(backproject_0_m00_axi_mem_WVALID),
        .one_angle_txn_done(read_data_unit_0_one_angle_txn_done),
        .start_fbp(start_fbp_0_1),
        .start_one_new_txn_angle_data(backproject_0_start_one_new_txn_angle_data));
  filter_unit_imp_GVDLH2 filter_unit
       (.fft_axis_data_tdata(read_data_unit_0_m_axis_TDATA),
        .fft_axis_data_tlast(read_data_unit_0_m_axis_TLAST),
        .fft_axis_data_tready(read_data_unit_0_m_axis_TREADY),
        .fft_axis_data_tvalid(read_data_unit_0_m_axis_TVALID),
        .filter_arstn(proc_sys_reset_0_peripheral_aresetn),
        .filter_clk(aclk_0_1),
        .filter_data_output_tdata(xfft_inv_512_M_AXIS_DATA_TDATA),
        .filter_data_output_tready(xfft_inv_512_M_AXIS_DATA_TREADY),
        .filter_data_output_tvalid(xfft_inv_512_M_AXIS_DATA_TVALID));
  soc_read_data_unit_0_1 read_data_unit_0
       (.aclk(aclk_0_1),
        .angle_base_addr(angle_base_addr_0_1),
        .angle_base_addr_valid(angle_base_addr_valid_0_1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .get_next_angle(backproject_0_get_next_angle),
        .m00_axi_mem_araddr(read_data_unit_0_m00_axi_mem_ARADDR),
        .m00_axi_mem_arburst(read_data_unit_0_m00_axi_mem_ARBURST),
        .m00_axi_mem_arcache(read_data_unit_0_m00_axi_mem_ARCACHE),
        .m00_axi_mem_arid(read_data_unit_0_m00_axi_mem_ARID),
        .m00_axi_mem_arlen(read_data_unit_0_m00_axi_mem_ARLEN),
        .m00_axi_mem_arlock(read_data_unit_0_m00_axi_mem_ARLOCK),
        .m00_axi_mem_arprot(read_data_unit_0_m00_axi_mem_ARPROT),
        .m00_axi_mem_arqos(read_data_unit_0_m00_axi_mem_ARQOS),
        .m00_axi_mem_arready(read_data_unit_0_m00_axi_mem_ARREADY),
        .m00_axi_mem_arsize(read_data_unit_0_m00_axi_mem_ARSIZE),
        .m00_axi_mem_arvalid(read_data_unit_0_m00_axi_mem_ARVALID),
        .m00_axi_mem_awaddr(read_data_unit_0_m00_axi_mem_AWADDR),
        .m00_axi_mem_awburst(read_data_unit_0_m00_axi_mem_AWBURST),
        .m00_axi_mem_awcache(read_data_unit_0_m00_axi_mem_AWCACHE),
        .m00_axi_mem_awid(read_data_unit_0_m00_axi_mem_AWID),
        .m00_axi_mem_awlen(read_data_unit_0_m00_axi_mem_AWLEN),
        .m00_axi_mem_awlock(read_data_unit_0_m00_axi_mem_AWLOCK),
        .m00_axi_mem_awprot(read_data_unit_0_m00_axi_mem_AWPROT),
        .m00_axi_mem_awqos(read_data_unit_0_m00_axi_mem_AWQOS),
        .m00_axi_mem_awready(read_data_unit_0_m00_axi_mem_AWREADY),
        .m00_axi_mem_awsize(read_data_unit_0_m00_axi_mem_AWSIZE),
        .m00_axi_mem_awvalid(read_data_unit_0_m00_axi_mem_AWVALID),
        .m00_axi_mem_bid(read_data_unit_0_m00_axi_mem_BID),
        .m00_axi_mem_bready(read_data_unit_0_m00_axi_mem_BREADY),
        .m00_axi_mem_bresp(read_data_unit_0_m00_axi_mem_BRESP),
        .m00_axi_mem_buser(1'b0),
        .m00_axi_mem_bvalid(read_data_unit_0_m00_axi_mem_BVALID),
        .m00_axi_mem_error(read_data_unit_0_m00_axi_mem_error),
        .m00_axi_mem_rdata(read_data_unit_0_m00_axi_mem_RDATA),
        .m00_axi_mem_rid(read_data_unit_0_m00_axi_mem_RID),
        .m00_axi_mem_rlast(read_data_unit_0_m00_axi_mem_RLAST),
        .m00_axi_mem_rready(read_data_unit_0_m00_axi_mem_RREADY),
        .m00_axi_mem_rresp(read_data_unit_0_m00_axi_mem_RRESP),
        .m00_axi_mem_ruser(1'b0),
        .m00_axi_mem_rvalid(read_data_unit_0_m00_axi_mem_RVALID),
        .m00_axi_mem_wdata(read_data_unit_0_m00_axi_mem_WDATA),
        .m00_axi_mem_wlast(read_data_unit_0_m00_axi_mem_WLAST),
        .m00_axi_mem_wready(read_data_unit_0_m00_axi_mem_WREADY),
        .m00_axi_mem_wstrb(read_data_unit_0_m00_axi_mem_WSTRB),
        .m00_axi_mem_wvalid(read_data_unit_0_m00_axi_mem_WVALID),
        .m_axis_tdata(read_data_unit_0_m_axis_TDATA),
        .m_axis_tlast(read_data_unit_0_m_axis_TLAST),
        .m_axis_tready(read_data_unit_0_m_axis_TREADY),
        .m_axis_tvalid(read_data_unit_0_m_axis_TVALID),
        .one_angle_txn_done(read_data_unit_0_one_angle_txn_done),
        .start_one_new_txn_rd(backproject_0_start_one_new_txn_angle_data),
        .txn_rd_done(read_data_unit_0_txn_rd_done));
endmodule

module filter_unit_imp_GVDLH2
   (fft_axis_data_tdata,
    fft_axis_data_tlast,
    fft_axis_data_tready,
    fft_axis_data_tvalid,
    filter_arstn,
    filter_clk,
    filter_data_output_tdata,
    filter_data_output_tready,
    filter_data_output_tvalid);
  input [63:0]fft_axis_data_tdata;
  input fft_axis_data_tlast;
  output fft_axis_data_tready;
  input fft_axis_data_tvalid;
  input filter_arstn;
  input filter_clk;
  output [63:0]filter_data_output_tdata;
  input filter_data_output_tready;
  output filter_data_output_tvalid;

  wire [63:0]Conn1_TDATA;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire aclk_0_1;
  wire [15:0]config_fft_0_fft_config_TDATA;
  wire config_fft_0_fft_config_TREADY;
  wire config_fft_0_fft_config_TVALID;
  wire [15:0]config_fft_0_ifft_config_TDATA;
  wire config_fft_0_ifft_config_TREADY;
  wire config_fft_0_ifft_config_TVALID;
  wire [63:0]format_conversion_0_ifft_input_TDATA;
  wire format_conversion_0_ifft_input_TREADY;
  wire format_conversion_0_ifft_input_TVALID;
  wire [63:0]hls_filter2ifft_0_dout_V_TDATA;
  wire hls_filter2ifft_0_dout_V_TREADY;
  wire hls_filter2ifft_0_dout_V_TVALID;
  wire proc_sys_reset_0_peripheral_aresetn;
  wire [63:0]xfft_512_M_AXIS_DATA_TDATA;
  wire xfft_512_M_AXIS_DATA_TREADY;
  wire xfft_512_M_AXIS_DATA_TVALID;
  wire [63:0]xfft_inv_512_M_AXIS_DATA_TDATA;
  wire xfft_inv_512_M_AXIS_DATA_TREADY;
  wire xfft_inv_512_M_AXIS_DATA_TVALID;
  wire [0:0]xlconstant_0_dout;

  assign Conn1_TDATA = fft_axis_data_tdata[63:0];
  assign Conn1_TLAST = fft_axis_data_tlast;
  assign Conn1_TVALID = fft_axis_data_tvalid;
  assign aclk_0_1 = filter_clk;
  assign fft_axis_data_tready = Conn1_TREADY;
  assign filter_data_output_tdata[63:0] = xfft_inv_512_M_AXIS_DATA_TDATA;
  assign filter_data_output_tvalid = xfft_inv_512_M_AXIS_DATA_TVALID;
  assign proc_sys_reset_0_peripheral_aresetn = filter_arstn;
  assign xfft_inv_512_M_AXIS_DATA_TREADY = filter_data_output_tready;
  soc_config_fft_0_0 config_fft_0
       (.arstn(proc_sys_reset_0_peripheral_aresetn),
        .clk(aclk_0_1),
        .fft_config_tdata(config_fft_0_fft_config_TDATA),
        .fft_config_tready(config_fft_0_fft_config_TREADY),
        .fft_config_tvalid(config_fft_0_fft_config_TVALID),
        .ifft_config_tdata(config_fft_0_ifft_config_TDATA),
        .ifft_config_tready(config_fft_0_ifft_config_TREADY),
        .ifft_config_tvalid(config_fft_0_ifft_config_TVALID));
  soc_format_conversion_0_0 format_conversion_0
       (.arstn(proc_sys_reset_0_peripheral_aresetn),
        .clk(aclk_0_1),
        .filter_dout_tdata(hls_filter2ifft_0_dout_V_TDATA),
        .filter_dout_tready(hls_filter2ifft_0_dout_V_TREADY),
        .filter_dout_tvalid(hls_filter2ifft_0_dout_V_TVALID),
        .ifft_input_tdata(format_conversion_0_ifft_input_TDATA),
        .ifft_input_tready(format_conversion_0_ifft_input_TREADY),
        .ifft_input_tvalid(format_conversion_0_ifft_input_TVALID));
  soc_hls_xfft2real_1_0 hls_xfft2real_1
       (.ap_clk(aclk_0_1),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .ap_start(xlconstant_0_dout),
        .din_V_TDATA(xfft_512_M_AXIS_DATA_TDATA),
        .din_V_TREADY(xfft_512_M_AXIS_DATA_TREADY),
        .din_V_TVALID(xfft_512_M_AXIS_DATA_TVALID),
        .dout_V_TDATA(hls_filter2ifft_0_dout_V_TDATA),
        .dout_V_TREADY(hls_filter2ifft_0_dout_V_TREADY),
        .dout_V_TVALID(hls_filter2ifft_0_dout_V_TVALID));
  soc_xfft_0_0 xfft_1024
       (.aclk(aclk_0_1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axis_data_tdata(xfft_512_M_AXIS_DATA_TDATA),
        .m_axis_data_tready(xfft_512_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(xfft_512_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(config_fft_0_fft_config_TDATA),
        .s_axis_config_tready(config_fft_0_fft_config_TREADY),
        .s_axis_config_tvalid(config_fft_0_fft_config_TVALID),
        .s_axis_data_tdata(Conn1_TDATA),
        .s_axis_data_tlast(Conn1_TLAST),
        .s_axis_data_tready(Conn1_TREADY),
        .s_axis_data_tvalid(Conn1_TVALID));
  soc_xfft_0_1 xfft_inv_1024
       (.aclk(aclk_0_1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axis_data_tdata(xfft_inv_512_M_AXIS_DATA_TDATA),
        .m_axis_data_tready(xfft_inv_512_M_AXIS_DATA_TREADY),
        .m_axis_data_tvalid(xfft_inv_512_M_AXIS_DATA_TVALID),
        .s_axis_config_tdata(config_fft_0_ifft_config_TDATA),
        .s_axis_config_tready(config_fft_0_ifft_config_TREADY),
        .s_axis_config_tvalid(config_fft_0_ifft_config_TVALID),
        .s_axis_data_tdata(format_conversion_0_ifft_input_TDATA),
        .s_axis_data_tlast(1'b0),
        .s_axis_data_tready(format_conversion_0_ifft_input_TREADY),
        .s_axis_data_tvalid(format_conversion_0_ifft_input_TVALID));
  soc_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module m00_couplers_imp_10IPXCK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [29:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [29:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [1:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [1:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [29:0]auto_ds_to_m00_couplers_ARADDR;
  wire [1:0]auto_ds_to_m00_couplers_ARBURST;
  wire [3:0]auto_ds_to_m00_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m00_couplers_ARLEN;
  wire [0:0]auto_ds_to_m00_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m00_couplers_ARPROT;
  wire [3:0]auto_ds_to_m00_couplers_ARQOS;
  wire auto_ds_to_m00_couplers_ARREADY;
  wire [2:0]auto_ds_to_m00_couplers_ARSIZE;
  wire auto_ds_to_m00_couplers_ARVALID;
  wire [29:0]auto_ds_to_m00_couplers_AWADDR;
  wire [1:0]auto_ds_to_m00_couplers_AWBURST;
  wire [3:0]auto_ds_to_m00_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m00_couplers_AWLEN;
  wire [0:0]auto_ds_to_m00_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m00_couplers_AWPROT;
  wire [3:0]auto_ds_to_m00_couplers_AWQOS;
  wire auto_ds_to_m00_couplers_AWREADY;
  wire [2:0]auto_ds_to_m00_couplers_AWSIZE;
  wire auto_ds_to_m00_couplers_AWVALID;
  wire auto_ds_to_m00_couplers_BREADY;
  wire [1:0]auto_ds_to_m00_couplers_BRESP;
  wire auto_ds_to_m00_couplers_BVALID;
  wire [127:0]auto_ds_to_m00_couplers_RDATA;
  wire auto_ds_to_m00_couplers_RLAST;
  wire auto_ds_to_m00_couplers_RREADY;
  wire [1:0]auto_ds_to_m00_couplers_RRESP;
  wire auto_ds_to_m00_couplers_RVALID;
  wire [127:0]auto_ds_to_m00_couplers_WDATA;
  wire auto_ds_to_m00_couplers_WLAST;
  wire auto_ds_to_m00_couplers_WREADY;
  wire [15:0]auto_ds_to_m00_couplers_WSTRB;
  wire auto_ds_to_m00_couplers_WVALID;
  wire [63:0]m00_couplers_to_auto_ds_ARADDR;
  wire [1:0]m00_couplers_to_auto_ds_ARBURST;
  wire [3:0]m00_couplers_to_auto_ds_ARCACHE;
  wire [1:0]m00_couplers_to_auto_ds_ARID;
  wire [7:0]m00_couplers_to_auto_ds_ARLEN;
  wire [0:0]m00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m00_couplers_to_auto_ds_ARPROT;
  wire [3:0]m00_couplers_to_auto_ds_ARQOS;
  wire m00_couplers_to_auto_ds_ARREADY;
  wire [3:0]m00_couplers_to_auto_ds_ARREGION;
  wire [2:0]m00_couplers_to_auto_ds_ARSIZE;
  wire m00_couplers_to_auto_ds_ARVALID;
  wire [63:0]m00_couplers_to_auto_ds_AWADDR;
  wire [1:0]m00_couplers_to_auto_ds_AWBURST;
  wire [3:0]m00_couplers_to_auto_ds_AWCACHE;
  wire [1:0]m00_couplers_to_auto_ds_AWID;
  wire [7:0]m00_couplers_to_auto_ds_AWLEN;
  wire [0:0]m00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m00_couplers_to_auto_ds_AWPROT;
  wire [3:0]m00_couplers_to_auto_ds_AWQOS;
  wire m00_couplers_to_auto_ds_AWREADY;
  wire [3:0]m00_couplers_to_auto_ds_AWREGION;
  wire [2:0]m00_couplers_to_auto_ds_AWSIZE;
  wire m00_couplers_to_auto_ds_AWVALID;
  wire [1:0]m00_couplers_to_auto_ds_BID;
  wire m00_couplers_to_auto_ds_BREADY;
  wire [1:0]m00_couplers_to_auto_ds_BRESP;
  wire m00_couplers_to_auto_ds_BVALID;
  wire [255:0]m00_couplers_to_auto_ds_RDATA;
  wire [1:0]m00_couplers_to_auto_ds_RID;
  wire m00_couplers_to_auto_ds_RLAST;
  wire m00_couplers_to_auto_ds_RREADY;
  wire [1:0]m00_couplers_to_auto_ds_RRESP;
  wire m00_couplers_to_auto_ds_RVALID;
  wire [255:0]m00_couplers_to_auto_ds_WDATA;
  wire m00_couplers_to_auto_ds_WLAST;
  wire m00_couplers_to_auto_ds_WREADY;
  wire [31:0]m00_couplers_to_auto_ds_WSTRB;
  wire m00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[29:0] = auto_ds_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_ds_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_ds_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[29:0] = auto_ds_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_ds_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_ds_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = auto_ds_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_ds_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[1:0] = m00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[255:0] = m00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[1:0] = m00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_ds_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_ds_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_ds_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_ds_WDATA = S_AXI_wdata[255:0];
  assign m00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[31:0];
  assign m00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  soc_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m00_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_ds_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_ds_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_ds_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m00_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_ds_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_ds_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_ds_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m00_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m00_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m00_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_ds_ARADDR[29:0]),
        .s_axi_arburst(m00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_ds_AWADDR[29:0]),
        .s_axi_awburst(m00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_ds_BID),
        .s_axi_bready(m00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m00_couplers_to_auto_ds_RID),
        .s_axi_rlast(m00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_ds_WVALID));
endmodule

module m00_couplers_imp_154WB3C
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m00_couplers_ARADDR;
  wire [1:0]auto_cc_to_m00_couplers_ARBURST;
  wire [3:0]auto_cc_to_m00_couplers_ARCACHE;
  wire [7:0]auto_cc_to_m00_couplers_ARLEN;
  wire [0:0]auto_cc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire [3:0]auto_cc_to_m00_couplers_ARQOS;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire [3:0]auto_cc_to_m00_couplers_ARREGION;
  wire [2:0]auto_cc_to_m00_couplers_ARSIZE;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [31:0]auto_cc_to_m00_couplers_AWADDR;
  wire [1:0]auto_cc_to_m00_couplers_AWBURST;
  wire [3:0]auto_cc_to_m00_couplers_AWCACHE;
  wire [7:0]auto_cc_to_m00_couplers_AWLEN;
  wire [0:0]auto_cc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire [3:0]auto_cc_to_m00_couplers_AWQOS;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire [3:0]auto_cc_to_m00_couplers_AWREGION;
  wire [2:0]auto_cc_to_m00_couplers_AWSIZE;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [255:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RLAST;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [255:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WLAST;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [31:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_cc_ARADDR;
  wire [1:0]m00_couplers_to_auto_cc_ARBURST;
  wire [3:0]m00_couplers_to_auto_cc_ARCACHE;
  wire [7:0]m00_couplers_to_auto_cc_ARLEN;
  wire [0:0]m00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire [3:0]m00_couplers_to_auto_cc_ARQOS;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire [3:0]m00_couplers_to_auto_cc_ARREGION;
  wire [2:0]m00_couplers_to_auto_cc_ARSIZE;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [31:0]m00_couplers_to_auto_cc_AWADDR;
  wire [1:0]m00_couplers_to_auto_cc_AWBURST;
  wire [3:0]m00_couplers_to_auto_cc_AWCACHE;
  wire [7:0]m00_couplers_to_auto_cc_AWLEN;
  wire [0:0]m00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire [3:0]m00_couplers_to_auto_cc_AWQOS;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire [3:0]m00_couplers_to_auto_cc_AWREGION;
  wire [2:0]m00_couplers_to_auto_cc_AWSIZE;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [255:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RLAST;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [255:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WLAST;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [31:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_cc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_cc_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_cc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_cc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_cc_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_cc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[255:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rlast = m00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_cc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[255:0];
  assign m00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[31:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  soc_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arregion(auto_cc_to_m00_couplers_ARREGION),
        .m_axi_arsize(auto_cc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m00_couplers_AWCACHE),
        .m_axi_awlen(auto_cc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awregion(auto_cc_to_m00_couplers_AWREGION),
        .m_axi_awsize(auto_cc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rlast(auto_cc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(m00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awlen(m00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rlast(m00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_KU7RUS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_15RUGQP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_KHKGJ1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [31:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [255:0]auto_cc_to_auto_ds_RDATA;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [255:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [31:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_m01_couplers_ARADDR;
  wire [2:0]auto_pc_to_m01_couplers_ARPROT;
  wire [0:0]auto_pc_to_m01_couplers_ARREADY;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [31:0]auto_pc_to_m01_couplers_AWADDR;
  wire [2:0]auto_pc_to_m01_couplers_AWPROT;
  wire [0:0]auto_pc_to_m01_couplers_AWREADY;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire [0:0]auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire [0:0]auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire [0:0]auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_cc_ARADDR;
  wire [1:0]m01_couplers_to_auto_cc_ARBURST;
  wire [3:0]m01_couplers_to_auto_cc_ARCACHE;
  wire [7:0]m01_couplers_to_auto_cc_ARLEN;
  wire [0:0]m01_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire [3:0]m01_couplers_to_auto_cc_ARQOS;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire [3:0]m01_couplers_to_auto_cc_ARREGION;
  wire [2:0]m01_couplers_to_auto_cc_ARSIZE;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [31:0]m01_couplers_to_auto_cc_AWADDR;
  wire [1:0]m01_couplers_to_auto_cc_AWBURST;
  wire [3:0]m01_couplers_to_auto_cc_AWCACHE;
  wire [7:0]m01_couplers_to_auto_cc_AWLEN;
  wire [0:0]m01_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire [3:0]m01_couplers_to_auto_cc_AWQOS;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire [3:0]m01_couplers_to_auto_cc_AWREGION;
  wire [2:0]m01_couplers_to_auto_cc_AWSIZE;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [255:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RLAST;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [255:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WLAST;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [31:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[255:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rlast = m01_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[255:0];
  assign m01_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[31:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  soc_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(m01_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(m01_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(m01_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_cc_AWCACHE),
        .s_axi_awlen(m01_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rlast(m01_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  soc_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
  soc_auto_pc_0 auto_pc
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m02_couplers_imp_C0AZRJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1WHE6MI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_12QRMFM
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1QPV9BY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_BT494E
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]s00_couplers_to_s00_data_fifo_ARADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_ARBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARCACHE;
  wire [7:0]s00_couplers_to_s00_data_fifo_ARLEN;
  wire [0:0]s00_couplers_to_s00_data_fifo_ARLOCK;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARPROT;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARQOS;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARREGION;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARSIZE;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_AWADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_AWBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWCACHE;
  wire [7:0]s00_couplers_to_s00_data_fifo_AWLEN;
  wire [0:0]s00_couplers_to_s00_data_fifo_AWLOCK;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWPROT;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWQOS;
  wire s00_couplers_to_s00_data_fifo_AWREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWREGION;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWSIZE;
  wire s00_couplers_to_s00_data_fifo_AWVALID;
  wire s00_couplers_to_s00_data_fifo_BREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_BRESP;
  wire s00_couplers_to_s00_data_fifo_BVALID;
  wire [255:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire s00_couplers_to_s00_data_fifo_RLAST;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire [255:0]s00_couplers_to_s00_data_fifo_WDATA;
  wire s00_couplers_to_s00_data_fifo_WLAST;
  wire s00_couplers_to_s00_data_fifo_WREADY;
  wire [31:0]s00_couplers_to_s00_data_fifo_WSTRB;
  wire s00_couplers_to_s00_data_fifo_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [255:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [255:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [31:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[255:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_data_fifo_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_data_fifo_BVALID;
  assign S_AXI_rdata[255:0] = s00_couplers_to_s00_data_fifo_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_data_fifo_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_data_fifo_WREADY;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_data_fifo_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_data_fifo_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_data_fifo_WDATA = S_AXI_wdata[255:0];
  assign s00_couplers_to_s00_data_fifo_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_data_fifo_WSTRB = S_AXI_wstrb[31:0];
  assign s00_couplers_to_s00_data_fifo_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[255:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  soc_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_data_fifo_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_data_fifo_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_data_fifo_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_data_fifo_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_data_fifo_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_data_fifo_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_data_fifo_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_data_fifo_RLAST),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_data_fifo_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_data_fifo_WLAST),
        .s_axi_wready(s00_couplers_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_H0G1EA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awuser;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_auto_us_ARADDR;
  wire [1:0]auto_pc_to_auto_us_ARBURST;
  wire [3:0]auto_pc_to_auto_us_ARCACHE;
  wire [7:0]auto_pc_to_auto_us_ARLEN;
  wire [0:0]auto_pc_to_auto_us_ARLOCK;
  wire [2:0]auto_pc_to_auto_us_ARPROT;
  wire [3:0]auto_pc_to_auto_us_ARQOS;
  wire auto_pc_to_auto_us_ARREADY;
  wire [3:0]auto_pc_to_auto_us_ARREGION;
  wire [2:0]auto_pc_to_auto_us_ARSIZE;
  wire auto_pc_to_auto_us_ARVALID;
  wire [31:0]auto_pc_to_auto_us_AWADDR;
  wire [1:0]auto_pc_to_auto_us_AWBURST;
  wire [3:0]auto_pc_to_auto_us_AWCACHE;
  wire [7:0]auto_pc_to_auto_us_AWLEN;
  wire [0:0]auto_pc_to_auto_us_AWLOCK;
  wire [2:0]auto_pc_to_auto_us_AWPROT;
  wire [3:0]auto_pc_to_auto_us_AWQOS;
  wire auto_pc_to_auto_us_AWREADY;
  wire [3:0]auto_pc_to_auto_us_AWREGION;
  wire [2:0]auto_pc_to_auto_us_AWSIZE;
  wire auto_pc_to_auto_us_AWVALID;
  wire auto_pc_to_auto_us_BREADY;
  wire [1:0]auto_pc_to_auto_us_BRESP;
  wire auto_pc_to_auto_us_BVALID;
  wire [31:0]auto_pc_to_auto_us_RDATA;
  wire auto_pc_to_auto_us_RLAST;
  wire auto_pc_to_auto_us_RREADY;
  wire [1:0]auto_pc_to_auto_us_RRESP;
  wire auto_pc_to_auto_us_RVALID;
  wire [31:0]auto_pc_to_auto_us_WDATA;
  wire auto_pc_to_auto_us_WLAST;
  wire auto_pc_to_auto_us_WREADY;
  wire [3:0]auto_pc_to_auto_us_WSTRB;
  wire auto_pc_to_auto_us_WVALID;
  wire [31:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [255:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [255:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [31:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire [0:0]s00_couplers_to_auto_pc_ARUSER;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire [0:0]s00_couplers_to_auto_pc_AWUSER;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARUSER = S_AXI_aruser[0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWUSER = S_AXI_awuser[0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  soc_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_auto_us_ARADDR),
        .m_axi_arburst(auto_pc_to_auto_us_ARBURST),
        .m_axi_arcache(auto_pc_to_auto_us_ARCACHE),
        .m_axi_arlen(auto_pc_to_auto_us_ARLEN),
        .m_axi_arlock(auto_pc_to_auto_us_ARLOCK),
        .m_axi_arprot(auto_pc_to_auto_us_ARPROT),
        .m_axi_arqos(auto_pc_to_auto_us_ARQOS),
        .m_axi_arready(auto_pc_to_auto_us_ARREADY),
        .m_axi_arregion(auto_pc_to_auto_us_ARREGION),
        .m_axi_arsize(auto_pc_to_auto_us_ARSIZE),
        .m_axi_arvalid(auto_pc_to_auto_us_ARVALID),
        .m_axi_awaddr(auto_pc_to_auto_us_AWADDR),
        .m_axi_awburst(auto_pc_to_auto_us_AWBURST),
        .m_axi_awcache(auto_pc_to_auto_us_AWCACHE),
        .m_axi_awlen(auto_pc_to_auto_us_AWLEN),
        .m_axi_awlock(auto_pc_to_auto_us_AWLOCK),
        .m_axi_awprot(auto_pc_to_auto_us_AWPROT),
        .m_axi_awqos(auto_pc_to_auto_us_AWQOS),
        .m_axi_awready(auto_pc_to_auto_us_AWREADY),
        .m_axi_awregion(auto_pc_to_auto_us_AWREGION),
        .m_axi_awsize(auto_pc_to_auto_us_AWSIZE),
        .m_axi_awvalid(auto_pc_to_auto_us_AWVALID),
        .m_axi_bready(auto_pc_to_auto_us_BREADY),
        .m_axi_bresp(auto_pc_to_auto_us_BRESP),
        .m_axi_bvalid(auto_pc_to_auto_us_BVALID),
        .m_axi_rdata(auto_pc_to_auto_us_RDATA),
        .m_axi_rlast(auto_pc_to_auto_us_RLAST),
        .m_axi_rready(auto_pc_to_auto_us_RREADY),
        .m_axi_rresp(auto_pc_to_auto_us_RRESP),
        .m_axi_rvalid(auto_pc_to_auto_us_RVALID),
        .m_axi_wdata(auto_pc_to_auto_us_WDATA),
        .m_axi_wlast(auto_pc_to_auto_us_WLAST),
        .m_axi_wready(auto_pc_to_auto_us_WREADY),
        .m_axi_wstrb(auto_pc_to_auto_us_WSTRB),
        .m_axi_wvalid(auto_pc_to_auto_us_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_pc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_pc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
  soc_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_pc_to_auto_us_ARADDR),
        .s_axi_arburst(auto_pc_to_auto_us_ARBURST),
        .s_axi_arcache(auto_pc_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_pc_to_auto_us_ARLEN),
        .s_axi_arlock(auto_pc_to_auto_us_ARLOCK),
        .s_axi_arprot(auto_pc_to_auto_us_ARPROT),
        .s_axi_arqos(auto_pc_to_auto_us_ARQOS),
        .s_axi_arready(auto_pc_to_auto_us_ARREADY),
        .s_axi_arregion(auto_pc_to_auto_us_ARREGION),
        .s_axi_arsize(auto_pc_to_auto_us_ARSIZE),
        .s_axi_arvalid(auto_pc_to_auto_us_ARVALID),
        .s_axi_awaddr(auto_pc_to_auto_us_AWADDR),
        .s_axi_awburst(auto_pc_to_auto_us_AWBURST),
        .s_axi_awcache(auto_pc_to_auto_us_AWCACHE),
        .s_axi_awlen(auto_pc_to_auto_us_AWLEN),
        .s_axi_awlock(auto_pc_to_auto_us_AWLOCK),
        .s_axi_awprot(auto_pc_to_auto_us_AWPROT),
        .s_axi_awqos(auto_pc_to_auto_us_AWQOS),
        .s_axi_awready(auto_pc_to_auto_us_AWREADY),
        .s_axi_awregion(auto_pc_to_auto_us_AWREGION),
        .s_axi_awsize(auto_pc_to_auto_us_AWSIZE),
        .s_axi_awvalid(auto_pc_to_auto_us_AWVALID),
        .s_axi_bready(auto_pc_to_auto_us_BREADY),
        .s_axi_bresp(auto_pc_to_auto_us_BRESP),
        .s_axi_bvalid(auto_pc_to_auto_us_BVALID),
        .s_axi_rdata(auto_pc_to_auto_us_RDATA),
        .s_axi_rlast(auto_pc_to_auto_us_RLAST),
        .s_axi_rready(auto_pc_to_auto_us_RREADY),
        .s_axi_rresp(auto_pc_to_auto_us_RRESP),
        .s_axi_rvalid(auto_pc_to_auto_us_RVALID),
        .s_axi_wdata(auto_pc_to_auto_us_WDATA),
        .s_axi_wlast(auto_pc_to_auto_us_WLAST),
        .s_axi_wready(auto_pc_to_auto_us_WREADY),
        .s_axi_wstrb(auto_pc_to_auto_us_WSTRB),
        .s_axi_wvalid(auto_pc_to_auto_us_WVALID));
endmodule

module s01_couplers_imp_1WK7KX7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s01_couplers_ARQOS;
  wire auto_us_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s01_couplers_ARSIZE;
  wire auto_us_df_to_s01_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s01_couplers_AWQOS;
  wire auto_us_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s01_couplers_AWSIZE;
  wire auto_us_df_to_s01_couplers_AWVALID;
  wire auto_us_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_df_to_s01_couplers_BRESP;
  wire auto_us_df_to_s01_couplers_BVALID;
  wire [255:0]auto_us_df_to_s01_couplers_RDATA;
  wire auto_us_df_to_s01_couplers_RLAST;
  wire auto_us_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_df_to_s01_couplers_RRESP;
  wire auto_us_df_to_s01_couplers_RVALID;
  wire [255:0]auto_us_df_to_s01_couplers_WDATA;
  wire auto_us_df_to_s01_couplers_WLAST;
  wire auto_us_df_to_s01_couplers_WREADY;
  wire [31:0]auto_us_df_to_s01_couplers_WSTRB;
  wire auto_us_df_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_df_ARCACHE;
  wire [0:0]s01_couplers_to_auto_us_df_ARID;
  wire [7:0]s01_couplers_to_auto_us_df_ARLEN;
  wire [0:0]s01_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s01_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s01_couplers_to_auto_us_df_ARQOS;
  wire s01_couplers_to_auto_us_df_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_df_ARSIZE;
  wire s01_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_df_AWADDR;
  wire [1:0]s01_couplers_to_auto_us_df_AWBURST;
  wire [3:0]s01_couplers_to_auto_us_df_AWCACHE;
  wire [0:0]s01_couplers_to_auto_us_df_AWID;
  wire [7:0]s01_couplers_to_auto_us_df_AWLEN;
  wire [0:0]s01_couplers_to_auto_us_df_AWLOCK;
  wire [2:0]s01_couplers_to_auto_us_df_AWPROT;
  wire [3:0]s01_couplers_to_auto_us_df_AWQOS;
  wire s01_couplers_to_auto_us_df_AWREADY;
  wire [2:0]s01_couplers_to_auto_us_df_AWSIZE;
  wire s01_couplers_to_auto_us_df_AWVALID;
  wire [0:0]s01_couplers_to_auto_us_df_BID;
  wire s01_couplers_to_auto_us_df_BREADY;
  wire [1:0]s01_couplers_to_auto_us_df_BRESP;
  wire s01_couplers_to_auto_us_df_BVALID;
  wire [63:0]s01_couplers_to_auto_us_df_RDATA;
  wire [0:0]s01_couplers_to_auto_us_df_RID;
  wire s01_couplers_to_auto_us_df_RLAST;
  wire s01_couplers_to_auto_us_df_RREADY;
  wire [1:0]s01_couplers_to_auto_us_df_RRESP;
  wire s01_couplers_to_auto_us_df_RVALID;
  wire [63:0]s01_couplers_to_auto_us_df_WDATA;
  wire s01_couplers_to_auto_us_df_WLAST;
  wire s01_couplers_to_auto_us_df_WREADY;
  wire [7:0]s01_couplers_to_auto_us_df_WSTRB;
  wire s01_couplers_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s01_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_us_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_us_df_AWREADY;
  assign S_AXI_bid[0] = s01_couplers_to_auto_us_df_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_us_df_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_us_df_BVALID;
  assign S_AXI_rdata[63:0] = s01_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rid[0] = s01_couplers_to_auto_us_df_RID;
  assign S_AXI_rlast = s01_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_df_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_us_df_WREADY;
  assign auto_us_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s01_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_df_ARID = S_AXI_arid[0];
  assign s01_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_df_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_us_df_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_us_df_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_us_df_AWID = S_AXI_awid[0];
  assign s01_couplers_to_auto_us_df_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_us_df_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_auto_us_df_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_us_df_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_us_df_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_us_df_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_us_df_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_us_df_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_auto_us_df_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_us_df_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_auto_us_df_WVALID = S_AXI_wvalid;
  soc_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s01_couplers_to_auto_us_df_ARID),
        .s_axi_arlen(s01_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_us_df_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_us_df_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_us_df_AWCACHE),
        .s_axi_awid(s01_couplers_to_auto_us_df_AWID),
        .s_axi_awlen(s01_couplers_to_auto_us_df_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_us_df_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_us_df_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_us_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_us_df_AWVALID),
        .s_axi_bid(s01_couplers_to_auto_us_df_BID),
        .s_axi_bready(s01_couplers_to_auto_us_df_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_us_df_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_us_df_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_df_RDATA),
        .s_axi_rid(s01_couplers_to_auto_us_df_RID),
        .s_axi_rlast(s01_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_df_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_us_df_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_us_df_WLAST),
        .s_axi_wready(s01_couplers_to_auto_us_df_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_us_df_WVALID));
endmodule

module s02_couplers_imp_KRFLGL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s02_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s02_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s02_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s02_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s02_couplers_ARQOS;
  wire auto_us_df_to_s02_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s02_couplers_ARSIZE;
  wire auto_us_df_to_s02_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s02_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s02_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s02_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s02_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s02_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s02_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s02_couplers_AWQOS;
  wire auto_us_df_to_s02_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s02_couplers_AWSIZE;
  wire auto_us_df_to_s02_couplers_AWVALID;
  wire auto_us_df_to_s02_couplers_BREADY;
  wire [1:0]auto_us_df_to_s02_couplers_BRESP;
  wire auto_us_df_to_s02_couplers_BVALID;
  wire [255:0]auto_us_df_to_s02_couplers_RDATA;
  wire auto_us_df_to_s02_couplers_RLAST;
  wire auto_us_df_to_s02_couplers_RREADY;
  wire [1:0]auto_us_df_to_s02_couplers_RRESP;
  wire auto_us_df_to_s02_couplers_RVALID;
  wire [255:0]auto_us_df_to_s02_couplers_WDATA;
  wire auto_us_df_to_s02_couplers_WLAST;
  wire auto_us_df_to_s02_couplers_WREADY;
  wire [31:0]auto_us_df_to_s02_couplers_WSTRB;
  wire auto_us_df_to_s02_couplers_WVALID;
  wire [31:0]s02_couplers_to_auto_us_df_ARADDR;
  wire [1:0]s02_couplers_to_auto_us_df_ARBURST;
  wire [3:0]s02_couplers_to_auto_us_df_ARCACHE;
  wire [0:0]s02_couplers_to_auto_us_df_ARID;
  wire [7:0]s02_couplers_to_auto_us_df_ARLEN;
  wire [0:0]s02_couplers_to_auto_us_df_ARLOCK;
  wire [2:0]s02_couplers_to_auto_us_df_ARPROT;
  wire [3:0]s02_couplers_to_auto_us_df_ARQOS;
  wire s02_couplers_to_auto_us_df_ARREADY;
  wire [2:0]s02_couplers_to_auto_us_df_ARSIZE;
  wire s02_couplers_to_auto_us_df_ARVALID;
  wire [31:0]s02_couplers_to_auto_us_df_AWADDR;
  wire [1:0]s02_couplers_to_auto_us_df_AWBURST;
  wire [3:0]s02_couplers_to_auto_us_df_AWCACHE;
  wire [0:0]s02_couplers_to_auto_us_df_AWID;
  wire [7:0]s02_couplers_to_auto_us_df_AWLEN;
  wire [0:0]s02_couplers_to_auto_us_df_AWLOCK;
  wire [2:0]s02_couplers_to_auto_us_df_AWPROT;
  wire [3:0]s02_couplers_to_auto_us_df_AWQOS;
  wire s02_couplers_to_auto_us_df_AWREADY;
  wire [2:0]s02_couplers_to_auto_us_df_AWSIZE;
  wire s02_couplers_to_auto_us_df_AWVALID;
  wire [0:0]s02_couplers_to_auto_us_df_BID;
  wire s02_couplers_to_auto_us_df_BREADY;
  wire [1:0]s02_couplers_to_auto_us_df_BRESP;
  wire s02_couplers_to_auto_us_df_BVALID;
  wire [63:0]s02_couplers_to_auto_us_df_RDATA;
  wire [0:0]s02_couplers_to_auto_us_df_RID;
  wire s02_couplers_to_auto_us_df_RLAST;
  wire s02_couplers_to_auto_us_df_RREADY;
  wire [1:0]s02_couplers_to_auto_us_df_RRESP;
  wire s02_couplers_to_auto_us_df_RVALID;
  wire [63:0]s02_couplers_to_auto_us_df_WDATA;
  wire s02_couplers_to_auto_us_df_WLAST;
  wire s02_couplers_to_auto_us_df_WREADY;
  wire [7:0]s02_couplers_to_auto_us_df_WSTRB;
  wire s02_couplers_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s02_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s02_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_us_df_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_df_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_auto_us_df_ARREADY;
  assign S_AXI_awready = s02_couplers_to_auto_us_df_AWREADY;
  assign S_AXI_bid[0] = s02_couplers_to_auto_us_df_BID;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_us_df_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_us_df_BVALID;
  assign S_AXI_rdata[63:0] = s02_couplers_to_auto_us_df_RDATA;
  assign S_AXI_rid[0] = s02_couplers_to_auto_us_df_RID;
  assign S_AXI_rlast = s02_couplers_to_auto_us_df_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_auto_us_df_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_auto_us_df_RVALID;
  assign S_AXI_wready = s02_couplers_to_auto_us_df_WREADY;
  assign auto_us_df_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s02_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_df_to_s02_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_us_df_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_auto_us_df_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_auto_us_df_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_auto_us_df_ARID = S_AXI_arid[0];
  assign s02_couplers_to_auto_us_df_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_auto_us_df_ARLOCK = S_AXI_arlock[0];
  assign s02_couplers_to_auto_us_df_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_auto_us_df_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_auto_us_df_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_auto_us_df_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_auto_us_df_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_auto_us_df_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_us_df_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_us_df_AWID = S_AXI_awid[0];
  assign s02_couplers_to_auto_us_df_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_us_df_AWLOCK = S_AXI_awlock[0];
  assign s02_couplers_to_auto_us_df_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_us_df_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_auto_us_df_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_us_df_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_us_df_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_us_df_RREADY = S_AXI_rready;
  assign s02_couplers_to_auto_us_df_WDATA = S_AXI_wdata[63:0];
  assign s02_couplers_to_auto_us_df_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_us_df_WSTRB = S_AXI_wstrb[7:0];
  assign s02_couplers_to_auto_us_df_WVALID = S_AXI_wvalid;
  soc_auto_us_df_1 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s02_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s02_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s02_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s02_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s02_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s02_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s02_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s02_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s02_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s02_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s02_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s02_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s02_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s02_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_couplers_to_auto_us_df_ARADDR),
        .s_axi_arburst(s02_couplers_to_auto_us_df_ARBURST),
        .s_axi_arcache(s02_couplers_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s02_couplers_to_auto_us_df_ARID),
        .s_axi_arlen(s02_couplers_to_auto_us_df_ARLEN),
        .s_axi_arlock(s02_couplers_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s02_couplers_to_auto_us_df_ARPROT),
        .s_axi_arqos(s02_couplers_to_auto_us_df_ARQOS),
        .s_axi_arready(s02_couplers_to_auto_us_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s02_couplers_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s02_couplers_to_auto_us_df_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_us_df_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_us_df_AWCACHE),
        .s_axi_awid(s02_couplers_to_auto_us_df_AWID),
        .s_axi_awlen(s02_couplers_to_auto_us_df_AWLEN),
        .s_axi_awlock(s02_couplers_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s02_couplers_to_auto_us_df_AWPROT),
        .s_axi_awqos(s02_couplers_to_auto_us_df_AWQOS),
        .s_axi_awready(s02_couplers_to_auto_us_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_us_df_AWVALID),
        .s_axi_bid(s02_couplers_to_auto_us_df_BID),
        .s_axi_bready(s02_couplers_to_auto_us_df_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_us_df_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_us_df_BVALID),
        .s_axi_rdata(s02_couplers_to_auto_us_df_RDATA),
        .s_axi_rid(s02_couplers_to_auto_us_df_RID),
        .s_axi_rlast(s02_couplers_to_auto_us_df_RLAST),
        .s_axi_rready(s02_couplers_to_auto_us_df_RREADY),
        .s_axi_rresp(s02_couplers_to_auto_us_df_RRESP),
        .s_axi_rvalid(s02_couplers_to_auto_us_df_RVALID),
        .s_axi_wdata(s02_couplers_to_auto_us_df_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_us_df_WLAST),
        .s_axi_wready(s02_couplers_to_auto_us_df_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_us_df_WVALID));
endmodule

module s03_couplers_imp_15YZY00
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_cc_df_to_s03_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s03_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s03_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s03_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s03_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s03_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s03_couplers_ARQOS;
  wire auto_us_cc_df_to_s03_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s03_couplers_ARSIZE;
  wire auto_us_cc_df_to_s03_couplers_ARVALID;
  wire [63:0]auto_us_cc_df_to_s03_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s03_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s03_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s03_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s03_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s03_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s03_couplers_AWQOS;
  wire auto_us_cc_df_to_s03_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s03_couplers_AWSIZE;
  wire auto_us_cc_df_to_s03_couplers_AWVALID;
  wire auto_us_cc_df_to_s03_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s03_couplers_BRESP;
  wire auto_us_cc_df_to_s03_couplers_BVALID;
  wire [255:0]auto_us_cc_df_to_s03_couplers_RDATA;
  wire auto_us_cc_df_to_s03_couplers_RLAST;
  wire auto_us_cc_df_to_s03_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s03_couplers_RRESP;
  wire auto_us_cc_df_to_s03_couplers_RVALID;
  wire [255:0]auto_us_cc_df_to_s03_couplers_WDATA;
  wire auto_us_cc_df_to_s03_couplers_WLAST;
  wire auto_us_cc_df_to_s03_couplers_WREADY;
  wire [31:0]auto_us_cc_df_to_s03_couplers_WSTRB;
  wire auto_us_cc_df_to_s03_couplers_WVALID;
  wire [63:0]s03_couplers_to_auto_us_cc_df_ARADDR;
  wire [1:0]s03_couplers_to_auto_us_cc_df_ARBURST;
  wire [3:0]s03_couplers_to_auto_us_cc_df_ARCACHE;
  wire [3:0]s03_couplers_to_auto_us_cc_df_ARID;
  wire [7:0]s03_couplers_to_auto_us_cc_df_ARLEN;
  wire [0:0]s03_couplers_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s03_couplers_to_auto_us_cc_df_ARPROT;
  wire s03_couplers_to_auto_us_cc_df_ARREADY;
  wire [2:0]s03_couplers_to_auto_us_cc_df_ARSIZE;
  wire s03_couplers_to_auto_us_cc_df_ARVALID;
  wire [63:0]s03_couplers_to_auto_us_cc_df_AWADDR;
  wire [1:0]s03_couplers_to_auto_us_cc_df_AWBURST;
  wire [3:0]s03_couplers_to_auto_us_cc_df_AWCACHE;
  wire [3:0]s03_couplers_to_auto_us_cc_df_AWID;
  wire [7:0]s03_couplers_to_auto_us_cc_df_AWLEN;
  wire [0:0]s03_couplers_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s03_couplers_to_auto_us_cc_df_AWPROT;
  wire s03_couplers_to_auto_us_cc_df_AWREADY;
  wire [2:0]s03_couplers_to_auto_us_cc_df_AWSIZE;
  wire s03_couplers_to_auto_us_cc_df_AWVALID;
  wire [3:0]s03_couplers_to_auto_us_cc_df_BID;
  wire s03_couplers_to_auto_us_cc_df_BREADY;
  wire [1:0]s03_couplers_to_auto_us_cc_df_BRESP;
  wire s03_couplers_to_auto_us_cc_df_BVALID;
  wire [63:0]s03_couplers_to_auto_us_cc_df_RDATA;
  wire [3:0]s03_couplers_to_auto_us_cc_df_RID;
  wire s03_couplers_to_auto_us_cc_df_RLAST;
  wire s03_couplers_to_auto_us_cc_df_RREADY;
  wire [1:0]s03_couplers_to_auto_us_cc_df_RRESP;
  wire s03_couplers_to_auto_us_cc_df_RVALID;
  wire [63:0]s03_couplers_to_auto_us_cc_df_WDATA;
  wire s03_couplers_to_auto_us_cc_df_WLAST;
  wire s03_couplers_to_auto_us_cc_df_WREADY;
  wire [7:0]s03_couplers_to_auto_us_cc_df_WSTRB;
  wire s03_couplers_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_cc_df_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s03_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_us_cc_df_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s03_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s03_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s03_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s03_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_us_cc_df_to_s03_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_us_cc_df_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s03_couplers_to_auto_us_cc_df_ARREADY;
  assign S_AXI_awready = s03_couplers_to_auto_us_cc_df_AWREADY;
  assign S_AXI_bid[3:0] = s03_couplers_to_auto_us_cc_df_BID;
  assign S_AXI_bresp[1:0] = s03_couplers_to_auto_us_cc_df_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_auto_us_cc_df_BVALID;
  assign S_AXI_rdata[63:0] = s03_couplers_to_auto_us_cc_df_RDATA;
  assign S_AXI_rid[3:0] = s03_couplers_to_auto_us_cc_df_RID;
  assign S_AXI_rlast = s03_couplers_to_auto_us_cc_df_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_auto_us_cc_df_RRESP;
  assign S_AXI_rvalid = s03_couplers_to_auto_us_cc_df_RVALID;
  assign S_AXI_wready = s03_couplers_to_auto_us_cc_df_WREADY;
  assign auto_us_cc_df_to_s03_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s03_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s03_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_us_cc_df_to_s03_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_auto_us_cc_df_ARADDR = S_AXI_araddr[63:0];
  assign s03_couplers_to_auto_us_cc_df_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_auto_us_cc_df_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_auto_us_cc_df_ARID = S_AXI_arid[3:0];
  assign s03_couplers_to_auto_us_cc_df_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_auto_us_cc_df_ARLOCK = S_AXI_arlock[0];
  assign s03_couplers_to_auto_us_cc_df_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_auto_us_cc_df_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_auto_us_cc_df_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_auto_us_cc_df_AWADDR = S_AXI_awaddr[63:0];
  assign s03_couplers_to_auto_us_cc_df_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_auto_us_cc_df_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_auto_us_cc_df_AWID = S_AXI_awid[3:0];
  assign s03_couplers_to_auto_us_cc_df_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_auto_us_cc_df_AWLOCK = S_AXI_awlock[0];
  assign s03_couplers_to_auto_us_cc_df_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_auto_us_cc_df_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_auto_us_cc_df_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_auto_us_cc_df_BREADY = S_AXI_bready;
  assign s03_couplers_to_auto_us_cc_df_RREADY = S_AXI_rready;
  assign s03_couplers_to_auto_us_cc_df_WDATA = S_AXI_wdata[63:0];
  assign s03_couplers_to_auto_us_cc_df_WLAST = S_AXI_wlast;
  assign s03_couplers_to_auto_us_cc_df_WSTRB = S_AXI_wstrb[7:0];
  assign s03_couplers_to_auto_us_cc_df_WVALID = S_AXI_wvalid;
  soc_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s03_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s03_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s03_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s03_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s03_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s03_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s03_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s03_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s03_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s03_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s03_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s03_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s03_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s03_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s03_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s03_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s03_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s03_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s03_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s03_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s03_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s03_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s03_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s03_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s03_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s03_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s03_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s03_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s03_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s03_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s03_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s03_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s03_couplers_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s03_couplers_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s03_couplers_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s03_couplers_to_auto_us_cc_df_ARID),
        .s_axi_arlen(s03_couplers_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(s03_couplers_to_auto_us_cc_df_ARLOCK),
        .s_axi_arprot(s03_couplers_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s03_couplers_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s03_couplers_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s03_couplers_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s03_couplers_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s03_couplers_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s03_couplers_to_auto_us_cc_df_AWCACHE),
        .s_axi_awid(s03_couplers_to_auto_us_cc_df_AWID),
        .s_axi_awlen(s03_couplers_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s03_couplers_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s03_couplers_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s03_couplers_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s03_couplers_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s03_couplers_to_auto_us_cc_df_AWVALID),
        .s_axi_bid(s03_couplers_to_auto_us_cc_df_BID),
        .s_axi_bready(s03_couplers_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s03_couplers_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s03_couplers_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s03_couplers_to_auto_us_cc_df_RDATA),
        .s_axi_rid(s03_couplers_to_auto_us_cc_df_RID),
        .s_axi_rlast(s03_couplers_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s03_couplers_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s03_couplers_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s03_couplers_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s03_couplers_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s03_couplers_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s03_couplers_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s03_couplers_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s03_couplers_to_auto_us_cc_df_WVALID));
endmodule

(* CORE_GENERATION_INFO = "soc,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=soc,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=62,numReposBlks=43,numNonXlnxBlks=1,numHierBlks=19,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_board_cnt=6,da_xdma_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "soc.hwdef" *) 
module soc
   (clk_in,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_cs_n,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n,
    key_tri_i,
    led_tri_o,
    lnk_up_led,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    pcie_rst_n,
    resetn_in,
    swclk,
    swdio,
    uart_rxd,
    uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, ASSOCIATED_RESET pcie_rst_n, CLK_DOMAIN soc_clk_in, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]ddr3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 BA" *) output [2:0]ddr3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CAS_N" *) output ddr3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_N" *) output [0:0]ddr3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_P" *) output [0:0]ddr3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CKE" *) output [0:0]ddr3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CS_N" *) output [0:0]ddr3_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DM" *) output [3:0]ddr3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQ" *) inout [31:0]ddr3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_N" *) inout [3:0]ddr3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_P" *) inout [3:0]ddr3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ODT" *) output [0:0]ddr3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RAS_N" *) output ddr3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RESET_N" *) output ddr3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 WE_N" *) output ddr3_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 key TRI_I" *) input [3:0]key_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led TRI_O" *) output [6:0]led_tri_o;
  output lnk_up_led;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [3:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [3:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [3:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [3:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_ref CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_ref, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_ref_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_ref CLK_P" *) input [0:0]pcie_ref_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN_IN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN_IN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SWCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SWCLK, CLK_DOMAIN soc_swclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input swclk;
  inout swdio;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart RxD" *) input uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart TxD" *) output uart_txd;

  wire [0:0]ARESETN_1;
  wire [0:0]ARESETN_2;
  wire [31:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_ARADDR;
  wire [1:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_ARBURST;
  wire [3:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_ARCACHE;
  wire [3:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_ARLEN;
  wire [1:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_ARLOCK;
  wire [2:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_ARPROT;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_ARREADY;
  wire [2:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_ARSIZE;
  wire [0:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_ARUSER;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_ARVALID;
  wire [31:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_AWADDR;
  wire [1:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_AWBURST;
  wire [3:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_AWCACHE;
  wire [3:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_AWLEN;
  wire [1:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_AWLOCK;
  wire [2:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_AWPROT;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_AWREADY;
  wire [2:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_AWSIZE;
  wire [0:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_AWUSER;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_AWVALID;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_BREADY;
  wire [1:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_BRESP;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_BVALID;
  wire [31:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_RDATA;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_RLAST;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_RREADY;
  wire [1:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_RRESP;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_RVALID;
  wire [31:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_WDATA;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_WLAST;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_WREADY;
  wire [3:0]CORTEXM3_AXI_0_CM3_SYS_AXI3_WSTRB;
  wire CORTEXM3_AXI_0_CM3_SYS_AXI3_WVALID;
  wire CORTEXM3_AXI_0_SWDO;
  wire CORTEXM3_AXI_0_SWDOEN;
  wire CORTEXM3_AXI_0_SYSRESETREQ;
  wire [0:0]M00_ARESETN_1;
  wire Net;
  wire [0:0]S00_ARESETN_1;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [3:0]S00_AXI_1_ARREGION;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [3:0]S00_AXI_1_AWREGION;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [255:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [255:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [31:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire SWCLKTCK_0_1;
  wire [31:0]acc_angle_axi_mem_ARADDR;
  wire [1:0]acc_angle_axi_mem_ARBURST;
  wire [3:0]acc_angle_axi_mem_ARCACHE;
  wire [0:0]acc_angle_axi_mem_ARID;
  wire [7:0]acc_angle_axi_mem_ARLEN;
  wire [0:0]acc_angle_axi_mem_ARLOCK;
  wire [2:0]acc_angle_axi_mem_ARPROT;
  wire [3:0]acc_angle_axi_mem_ARQOS;
  wire acc_angle_axi_mem_ARREADY;
  wire [2:0]acc_angle_axi_mem_ARSIZE;
  wire acc_angle_axi_mem_ARVALID;
  wire [31:0]acc_angle_axi_mem_AWADDR;
  wire [1:0]acc_angle_axi_mem_AWBURST;
  wire [3:0]acc_angle_axi_mem_AWCACHE;
  wire [0:0]acc_angle_axi_mem_AWID;
  wire [7:0]acc_angle_axi_mem_AWLEN;
  wire [0:0]acc_angle_axi_mem_AWLOCK;
  wire [2:0]acc_angle_axi_mem_AWPROT;
  wire [3:0]acc_angle_axi_mem_AWQOS;
  wire acc_angle_axi_mem_AWREADY;
  wire [2:0]acc_angle_axi_mem_AWSIZE;
  wire acc_angle_axi_mem_AWVALID;
  wire [0:0]acc_angle_axi_mem_BID;
  wire acc_angle_axi_mem_BREADY;
  wire [1:0]acc_angle_axi_mem_BRESP;
  wire acc_angle_axi_mem_BVALID;
  wire [63:0]acc_angle_axi_mem_RDATA;
  wire [0:0]acc_angle_axi_mem_RID;
  wire acc_angle_axi_mem_RLAST;
  wire acc_angle_axi_mem_RREADY;
  wire [1:0]acc_angle_axi_mem_RRESP;
  wire acc_angle_axi_mem_RVALID;
  wire [63:0]acc_angle_axi_mem_WDATA;
  wire acc_angle_axi_mem_WLAST;
  wire acc_angle_axi_mem_WREADY;
  wire [7:0]acc_angle_axi_mem_WSTRB;
  wire acc_angle_axi_mem_WVALID;
  wire acc_configurator_v1_0_0_soft_rstn;
  wire acc_configurator_v1_0_0_start_fbp;
  wire acc_finsh_fbp;
  wire [31:0]acc_img_axi_mem_ARADDR;
  wire [1:0]acc_img_axi_mem_ARBURST;
  wire [3:0]acc_img_axi_mem_ARCACHE;
  wire [0:0]acc_img_axi_mem_ARID;
  wire [7:0]acc_img_axi_mem_ARLEN;
  wire [0:0]acc_img_axi_mem_ARLOCK;
  wire [2:0]acc_img_axi_mem_ARPROT;
  wire [3:0]acc_img_axi_mem_ARQOS;
  wire acc_img_axi_mem_ARREADY;
  wire [2:0]acc_img_axi_mem_ARSIZE;
  wire acc_img_axi_mem_ARVALID;
  wire [31:0]acc_img_axi_mem_AWADDR;
  wire [1:0]acc_img_axi_mem_AWBURST;
  wire [3:0]acc_img_axi_mem_AWCACHE;
  wire [0:0]acc_img_axi_mem_AWID;
  wire [7:0]acc_img_axi_mem_AWLEN;
  wire [0:0]acc_img_axi_mem_AWLOCK;
  wire [2:0]acc_img_axi_mem_AWPROT;
  wire [3:0]acc_img_axi_mem_AWQOS;
  wire acc_img_axi_mem_AWREADY;
  wire [2:0]acc_img_axi_mem_AWSIZE;
  wire acc_img_axi_mem_AWVALID;
  wire [0:0]acc_img_axi_mem_BID;
  wire acc_img_axi_mem_BREADY;
  wire [1:0]acc_img_axi_mem_BRESP;
  wire acc_img_axi_mem_BVALID;
  wire [63:0]acc_img_axi_mem_RDATA;
  wire [0:0]acc_img_axi_mem_RID;
  wire acc_img_axi_mem_RLAST;
  wire acc_img_axi_mem_RREADY;
  wire [1:0]acc_img_axi_mem_RRESP;
  wire acc_img_axi_mem_RVALID;
  wire [63:0]acc_img_axi_mem_WDATA;
  wire acc_img_axi_mem_WLAST;
  wire acc_img_axi_mem_WREADY;
  wire [7:0]acc_img_axi_mem_WSTRB;
  wire acc_img_axi_mem_WVALID;
  wire [31:0]angle_base_addr_1;
  wire angle_base_addr_valid_1;
  wire [3:0]axi_gpio_0_GPIO2_TRI_I;
  wire [6:0]axi_gpio_0_GPIO_TRI_O;
  wire axi_gpio_0_ip2intc_irpt;
  wire [31:0]axi_interconnect_L1_M01_AXI_ARADDR;
  wire [2:0]axi_interconnect_L1_M01_AXI_ARPROT;
  wire [0:0]axi_interconnect_L1_M01_AXI_ARREADY;
  wire [0:0]axi_interconnect_L1_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_L1_M01_AXI_AWADDR;
  wire [2:0]axi_interconnect_L1_M01_AXI_AWPROT;
  wire [0:0]axi_interconnect_L1_M01_AXI_AWREADY;
  wire [0:0]axi_interconnect_L1_M01_AXI_AWVALID;
  wire [0:0]axi_interconnect_L1_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_L1_M01_AXI_BRESP;
  wire [0:0]axi_interconnect_L1_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_L1_M01_AXI_RDATA;
  wire [0:0]axi_interconnect_L1_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_L1_M01_AXI_RRESP;
  wire [0:0]axi_interconnect_L1_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_L1_M01_AXI_WDATA;
  wire [0:0]axi_interconnect_L1_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_L1_M01_AXI_WSTRB;
  wire [0:0]axi_interconnect_L1_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_LowSpeed_M00_AXI_ARADDR;
  wire axi_interconnect_LowSpeed_M00_AXI_ARREADY;
  wire axi_interconnect_LowSpeed_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_LowSpeed_M00_AXI_AWADDR;
  wire axi_interconnect_LowSpeed_M00_AXI_AWREADY;
  wire axi_interconnect_LowSpeed_M00_AXI_AWVALID;
  wire axi_interconnect_LowSpeed_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_LowSpeed_M00_AXI_BRESP;
  wire axi_interconnect_LowSpeed_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_LowSpeed_M00_AXI_RDATA;
  wire axi_interconnect_LowSpeed_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_LowSpeed_M00_AXI_RRESP;
  wire axi_interconnect_LowSpeed_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_LowSpeed_M00_AXI_WDATA;
  wire axi_interconnect_LowSpeed_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_LowSpeed_M00_AXI_WSTRB;
  wire axi_interconnect_LowSpeed_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_LowSpeed_M01_AXI_ARADDR;
  wire axi_interconnect_LowSpeed_M01_AXI_ARREADY;
  wire [0:0]axi_interconnect_LowSpeed_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_LowSpeed_M01_AXI_AWADDR;
  wire axi_interconnect_LowSpeed_M01_AXI_AWREADY;
  wire [0:0]axi_interconnect_LowSpeed_M01_AXI_AWVALID;
  wire [0:0]axi_interconnect_LowSpeed_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_LowSpeed_M01_AXI_BRESP;
  wire axi_interconnect_LowSpeed_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_LowSpeed_M01_AXI_RDATA;
  wire [0:0]axi_interconnect_LowSpeed_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_LowSpeed_M01_AXI_RRESP;
  wire axi_interconnect_LowSpeed_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_LowSpeed_M01_AXI_WDATA;
  wire axi_interconnect_LowSpeed_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_LowSpeed_M01_AXI_WSTRB;
  wire [0:0]axi_interconnect_LowSpeed_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_LowSpeed_M02_AXI_ARADDR;
  wire axi_interconnect_LowSpeed_M02_AXI_ARREADY;
  wire axi_interconnect_LowSpeed_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_LowSpeed_M02_AXI_AWADDR;
  wire axi_interconnect_LowSpeed_M02_AXI_AWREADY;
  wire axi_interconnect_LowSpeed_M02_AXI_AWVALID;
  wire axi_interconnect_LowSpeed_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_LowSpeed_M02_AXI_BRESP;
  wire axi_interconnect_LowSpeed_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_LowSpeed_M02_AXI_RDATA;
  wire axi_interconnect_LowSpeed_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_LowSpeed_M02_AXI_RRESP;
  wire axi_interconnect_LowSpeed_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_LowSpeed_M02_AXI_WDATA;
  wire axi_interconnect_LowSpeed_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_LowSpeed_M02_AXI_WSTRB;
  wire axi_interconnect_LowSpeed_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_LowSpeed_M03_AXI_ARADDR;
  wire [2:0]axi_interconnect_LowSpeed_M03_AXI_ARPROT;
  wire axi_interconnect_LowSpeed_M03_AXI_ARREADY;
  wire [0:0]axi_interconnect_LowSpeed_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_LowSpeed_M03_AXI_AWADDR;
  wire [2:0]axi_interconnect_LowSpeed_M03_AXI_AWPROT;
  wire axi_interconnect_LowSpeed_M03_AXI_AWREADY;
  wire [0:0]axi_interconnect_LowSpeed_M03_AXI_AWVALID;
  wire [0:0]axi_interconnect_LowSpeed_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_LowSpeed_M03_AXI_BRESP;
  wire axi_interconnect_LowSpeed_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_LowSpeed_M03_AXI_RDATA;
  wire [0:0]axi_interconnect_LowSpeed_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_LowSpeed_M03_AXI_RRESP;
  wire axi_interconnect_LowSpeed_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_LowSpeed_M03_AXI_WDATA;
  wire axi_interconnect_LowSpeed_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_LowSpeed_M03_AXI_WSTRB;
  wire [0:0]axi_interconnect_LowSpeed_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_LowSpeed_M04_AXI_ARADDR;
  wire axi_interconnect_LowSpeed_M04_AXI_ARREADY;
  wire [0:0]axi_interconnect_LowSpeed_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_LowSpeed_M04_AXI_AWADDR;
  wire axi_interconnect_LowSpeed_M04_AXI_AWREADY;
  wire [0:0]axi_interconnect_LowSpeed_M04_AXI_AWVALID;
  wire [0:0]axi_interconnect_LowSpeed_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_LowSpeed_M04_AXI_BRESP;
  wire axi_interconnect_LowSpeed_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_LowSpeed_M04_AXI_RDATA;
  wire [0:0]axi_interconnect_LowSpeed_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_LowSpeed_M04_AXI_RRESP;
  wire axi_interconnect_LowSpeed_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_LowSpeed_M04_AXI_WDATA;
  wire axi_interconnect_LowSpeed_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_LowSpeed_M04_AXI_WSTRB;
  wire [0:0]axi_interconnect_LowSpeed_M04_AXI_WVALID;
  wire [29:0]axi_interconnect_ddr_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_ddr_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_ddr_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_ddr_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_ddr_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_ddr_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_ddr_M00_AXI_ARQOS;
  wire axi_interconnect_ddr_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_ddr_M00_AXI_ARSIZE;
  wire axi_interconnect_ddr_M00_AXI_ARVALID;
  wire [29:0]axi_interconnect_ddr_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_ddr_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_ddr_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_ddr_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_ddr_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_ddr_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_ddr_M00_AXI_AWQOS;
  wire axi_interconnect_ddr_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_ddr_M00_AXI_AWSIZE;
  wire axi_interconnect_ddr_M00_AXI_AWVALID;
  wire axi_interconnect_ddr_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_ddr_M00_AXI_BRESP;
  wire axi_interconnect_ddr_M00_AXI_BVALID;
  wire [127:0]axi_interconnect_ddr_M00_AXI_RDATA;
  wire axi_interconnect_ddr_M00_AXI_RLAST;
  wire axi_interconnect_ddr_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_ddr_M00_AXI_RRESP;
  wire axi_interconnect_ddr_M00_AXI_RVALID;
  wire [127:0]axi_interconnect_ddr_M00_AXI_WDATA;
  wire axi_interconnect_ddr_M00_AXI_WLAST;
  wire axi_interconnect_ddr_M00_AXI_WREADY;
  wire [15:0]axi_interconnect_ddr_M00_AXI_WSTRB;
  wire axi_interconnect_ddr_M00_AXI_WVALID;
  wire axi_timer_0_interrupt;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire [1:0]cfg_itcm_const_dout;
  wire clk_in1_0_1;
  wire [1:0]cm3_irq_gpio_io_o;
  wire [0:0]core_rst_inv_Res;
  wire [0:0]diff_clock_rtl_0_1_CLK_N;
  wire [0:0]diff_clock_rtl_0_1_CLK_P;
  wire [31:0]img_base_addr_1;
  wire img_base_addr_valid_1;
  wire [14:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [0:0]mig_7series_0_DDR3_CS_N;
  wire [3:0]mig_7series_0_DDR3_DM;
  wire [31:0]mig_7series_0_DDR3_DQ;
  wire [3:0]mig_7series_0_DDR3_DQS_N;
  wire [3:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [0:0]pcie_irq_gpio2_io_o;
  wire [0:0]pcie_irq_gpio_io_o;
  wire proc_sys_reset_0_mb_reset;
  wire resetn_0_1;
  wire swdio_tri_buffer_0_swd_i;
  wire sys_mmcm_clk_out1;
  wire sys_mmcm_clk_out2;
  wire sys_mmcm_locked;
  wire sys_rst_n_0_1;
  wire [0:0]util_ds_buf_1_IBUF_OUT;
  wire [0:0]util_vector_logic_0_Res;
  wire [63:0]xdma_0_M_AXI_ARADDR;
  wire [1:0]xdma_0_M_AXI_ARBURST;
  wire [3:0]xdma_0_M_AXI_ARCACHE;
  wire [3:0]xdma_0_M_AXI_ARID;
  wire [7:0]xdma_0_M_AXI_ARLEN;
  wire xdma_0_M_AXI_ARLOCK;
  wire [2:0]xdma_0_M_AXI_ARPROT;
  wire xdma_0_M_AXI_ARREADY;
  wire [2:0]xdma_0_M_AXI_ARSIZE;
  wire xdma_0_M_AXI_ARVALID;
  wire [63:0]xdma_0_M_AXI_AWADDR;
  wire [1:0]xdma_0_M_AXI_AWBURST;
  wire [3:0]xdma_0_M_AXI_AWCACHE;
  wire [3:0]xdma_0_M_AXI_AWID;
  wire [7:0]xdma_0_M_AXI_AWLEN;
  wire xdma_0_M_AXI_AWLOCK;
  wire [2:0]xdma_0_M_AXI_AWPROT;
  wire xdma_0_M_AXI_AWREADY;
  wire [2:0]xdma_0_M_AXI_AWSIZE;
  wire xdma_0_M_AXI_AWVALID;
  wire [3:0]xdma_0_M_AXI_BID;
  wire xdma_0_M_AXI_BREADY;
  wire [1:0]xdma_0_M_AXI_BRESP;
  wire xdma_0_M_AXI_BVALID;
  wire [31:0]xdma_0_M_AXI_LITE_ARADDR;
  wire xdma_0_M_AXI_LITE_ARREADY;
  wire xdma_0_M_AXI_LITE_ARVALID;
  wire [31:0]xdma_0_M_AXI_LITE_AWADDR;
  wire xdma_0_M_AXI_LITE_AWREADY;
  wire xdma_0_M_AXI_LITE_AWVALID;
  wire xdma_0_M_AXI_LITE_BREADY;
  wire [1:0]xdma_0_M_AXI_LITE_BRESP;
  wire xdma_0_M_AXI_LITE_BVALID;
  wire [31:0]xdma_0_M_AXI_LITE_RDATA;
  wire xdma_0_M_AXI_LITE_RREADY;
  wire [1:0]xdma_0_M_AXI_LITE_RRESP;
  wire xdma_0_M_AXI_LITE_RVALID;
  wire [31:0]xdma_0_M_AXI_LITE_WDATA;
  wire xdma_0_M_AXI_LITE_WREADY;
  wire [3:0]xdma_0_M_AXI_LITE_WSTRB;
  wire xdma_0_M_AXI_LITE_WVALID;
  wire [63:0]xdma_0_M_AXI_RDATA;
  wire [3:0]xdma_0_M_AXI_RID;
  wire xdma_0_M_AXI_RLAST;
  wire xdma_0_M_AXI_RREADY;
  wire [1:0]xdma_0_M_AXI_RRESP;
  wire xdma_0_M_AXI_RVALID;
  wire [63:0]xdma_0_M_AXI_WDATA;
  wire xdma_0_M_AXI_WLAST;
  wire xdma_0_M_AXI_WREADY;
  wire [7:0]xdma_0_M_AXI_WSTRB;
  wire xdma_0_M_AXI_WVALID;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;
  wire [3:0]xdma_0_pcie_mgt_rxn;
  wire [3:0]xdma_0_pcie_mgt_rxp;
  wire [3:0]xdma_0_pcie_mgt_txn;
  wire [3:0]xdma_0_pcie_mgt_txp;
  wire xdma_0_user_lnk_up;
  wire [4:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;

  assign SWCLKTCK_0_1 = swclk;
  assign axi_gpio_0_GPIO2_TRI_I = key_tri_i[3:0];
  assign axi_uartlite_0_UART_RxD = uart_rxd;
  assign clk_in1_0_1 = clk_in;
  assign ddr3_addr[14:0] = mig_7series_0_DDR3_ADDR;
  assign ddr3_ba[2:0] = mig_7series_0_DDR3_BA;
  assign ddr3_cas_n = mig_7series_0_DDR3_CAS_N;
  assign ddr3_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign ddr3_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign ddr3_cke[0] = mig_7series_0_DDR3_CKE;
  assign ddr3_cs_n[0] = mig_7series_0_DDR3_CS_N;
  assign ddr3_dm[3:0] = mig_7series_0_DDR3_DM;
  assign ddr3_odt[0] = mig_7series_0_DDR3_ODT;
  assign ddr3_ras_n = mig_7series_0_DDR3_RAS_N;
  assign ddr3_reset_n = mig_7series_0_DDR3_RESET_N;
  assign ddr3_we_n = mig_7series_0_DDR3_WE_N;
  assign diff_clock_rtl_0_1_CLK_N = pcie_ref_clk_n[0];
  assign diff_clock_rtl_0_1_CLK_P = pcie_ref_clk_p[0];
  assign led_tri_o[6:0] = axi_gpio_0_GPIO_TRI_O;
  assign lnk_up_led = xdma_0_user_lnk_up;
  assign pcie_mgt_txn[3:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[3:0] = xdma_0_pcie_mgt_txp;
  assign resetn_0_1 = resetn_in;
  assign sys_rst_n_0_1 = pcie_rst_n;
  assign uart_txd = axi_uartlite_0_UART_TxD;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[3:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[3:0];
  soc_CORTEXM3_AXI_0_0 CORTEXM3_AXI_0
       (.ARADDRS(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARADDR),
        .ARBURSTS(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARBURST),
        .ARCACHES(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARCACHE),
        .ARLENS(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARLEN),
        .ARLOCKS(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARLOCK),
        .ARPROTS(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARPROT),
        .ARREADYC(1'b0),
        .ARREADYS(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARREADY),
        .ARSIZES(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARSIZE),
        .ARUSERS(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARUSER),
        .ARVALIDS(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARVALID),
        .AWADDRS(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWADDR),
        .AWBURSTS(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWBURST),
        .AWCACHES(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWCACHE),
        .AWLENS(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWLEN),
        .AWLOCKS(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWLOCK),
        .AWPROTS(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWPROT),
        .AWREADYC(1'b0),
        .AWREADYS(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWREADY),
        .AWSIZES(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWSIZE),
        .AWUSERS(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWUSER),
        .AWVALIDS(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWVALID),
        .BREADYS(CORTEXM3_AXI_0_CM3_SYS_AXI3_BREADY),
        .BRESPC({1'b0,1'b0}),
        .BRESPS(CORTEXM3_AXI_0_CM3_SYS_AXI3_BRESP),
        .BVALIDC(1'b0),
        .BVALIDS(CORTEXM3_AXI_0_CM3_SYS_AXI3_BVALID),
        .CFGITCMEN(cfg_itcm_const_dout),
        .DBGRESETn(core_rst_inv_Res),
        .DBGRESTART(1'b0),
        .EDBGRQ(1'b0),
        .HCLK(sys_mmcm_clk_out2),
        .HRDATAC({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HRDATAS(CORTEXM3_AXI_0_CM3_SYS_AXI3_RDATA),
        .HWDATAS(CORTEXM3_AXI_0_CM3_SYS_AXI3_WDATA),
        .IRQ(xlconcat_0_dout),
        .NMI(xlconstant_0_dout),
        .RLASTC(1'b0),
        .RLASTS(CORTEXM3_AXI_0_CM3_SYS_AXI3_RLAST),
        .RREADYS(CORTEXM3_AXI_0_CM3_SYS_AXI3_RREADY),
        .RRESPC({1'b0,1'b0}),
        .RRESPS(CORTEXM3_AXI_0_CM3_SYS_AXI3_RRESP),
        .RVALIDC(1'b0),
        .RVALIDS(CORTEXM3_AXI_0_CM3_SYS_AXI3_RVALID),
        .STCLK(1'b0),
        .SWCLKTCK(SWCLKTCK_0_1),
        .SWDITMS(swdio_tri_buffer_0_swd_i),
        .SWDO(CORTEXM3_AXI_0_SWDO),
        .SWDOEN(CORTEXM3_AXI_0_SWDOEN),
        .SYSRESETREQ(CORTEXM3_AXI_0_SYSRESETREQ),
        .SYSRESETn(core_rst_inv_Res),
        .WLASTS(CORTEXM3_AXI_0_CM3_SYS_AXI3_WLAST),
        .WREADYC(1'b0),
        .WREADYS(CORTEXM3_AXI_0_CM3_SYS_AXI3_WREADY),
        .WSTRBS(CORTEXM3_AXI_0_CM3_SYS_AXI3_WSTRB),
        .WVALIDS(CORTEXM3_AXI_0_CM3_SYS_AXI3_WVALID));
  acc_imp_1UOSCG7 acc
       (.acc_clk(mig_7series_0_ui_clk),
        .angle_axi_mem_araddr(acc_angle_axi_mem_ARADDR),
        .angle_axi_mem_arburst(acc_angle_axi_mem_ARBURST),
        .angle_axi_mem_arcache(acc_angle_axi_mem_ARCACHE),
        .angle_axi_mem_arid(acc_angle_axi_mem_ARID),
        .angle_axi_mem_arlen(acc_angle_axi_mem_ARLEN),
        .angle_axi_mem_arlock(acc_angle_axi_mem_ARLOCK),
        .angle_axi_mem_arprot(acc_angle_axi_mem_ARPROT),
        .angle_axi_mem_arqos(acc_angle_axi_mem_ARQOS),
        .angle_axi_mem_arready(acc_angle_axi_mem_ARREADY),
        .angle_axi_mem_arsize(acc_angle_axi_mem_ARSIZE),
        .angle_axi_mem_arvalid(acc_angle_axi_mem_ARVALID),
        .angle_axi_mem_awaddr(acc_angle_axi_mem_AWADDR),
        .angle_axi_mem_awburst(acc_angle_axi_mem_AWBURST),
        .angle_axi_mem_awcache(acc_angle_axi_mem_AWCACHE),
        .angle_axi_mem_awid(acc_angle_axi_mem_AWID),
        .angle_axi_mem_awlen(acc_angle_axi_mem_AWLEN),
        .angle_axi_mem_awlock(acc_angle_axi_mem_AWLOCK),
        .angle_axi_mem_awprot(acc_angle_axi_mem_AWPROT),
        .angle_axi_mem_awqos(acc_angle_axi_mem_AWQOS),
        .angle_axi_mem_awready(acc_angle_axi_mem_AWREADY),
        .angle_axi_mem_awsize(acc_angle_axi_mem_AWSIZE),
        .angle_axi_mem_awvalid(acc_angle_axi_mem_AWVALID),
        .angle_axi_mem_bid(acc_angle_axi_mem_BID),
        .angle_axi_mem_bready(acc_angle_axi_mem_BREADY),
        .angle_axi_mem_bresp(acc_angle_axi_mem_BRESP),
        .angle_axi_mem_bvalid(acc_angle_axi_mem_BVALID),
        .angle_axi_mem_rdata(acc_angle_axi_mem_RDATA),
        .angle_axi_mem_rid(acc_angle_axi_mem_RID),
        .angle_axi_mem_rlast(acc_angle_axi_mem_RLAST),
        .angle_axi_mem_rready(acc_angle_axi_mem_RREADY),
        .angle_axi_mem_rresp(acc_angle_axi_mem_RRESP),
        .angle_axi_mem_rvalid(acc_angle_axi_mem_RVALID),
        .angle_axi_mem_wdata(acc_angle_axi_mem_WDATA),
        .angle_axi_mem_wlast(acc_angle_axi_mem_WLAST),
        .angle_axi_mem_wready(acc_angle_axi_mem_WREADY),
        .angle_axi_mem_wstrb(acc_angle_axi_mem_WSTRB),
        .angle_axi_mem_wvalid(acc_angle_axi_mem_WVALID),
        .angle_base_addr(angle_base_addr_1),
        .angle_base_addr_valid(angle_base_addr_valid_1),
        .finsh_fbp(acc_finsh_fbp),
        .img_axi_mem_araddr(acc_img_axi_mem_ARADDR),
        .img_axi_mem_arburst(acc_img_axi_mem_ARBURST),
        .img_axi_mem_arcache(acc_img_axi_mem_ARCACHE),
        .img_axi_mem_arid(acc_img_axi_mem_ARID),
        .img_axi_mem_arlen(acc_img_axi_mem_ARLEN),
        .img_axi_mem_arlock(acc_img_axi_mem_ARLOCK),
        .img_axi_mem_arprot(acc_img_axi_mem_ARPROT),
        .img_axi_mem_arqos(acc_img_axi_mem_ARQOS),
        .img_axi_mem_arready(acc_img_axi_mem_ARREADY),
        .img_axi_mem_arsize(acc_img_axi_mem_ARSIZE),
        .img_axi_mem_arvalid(acc_img_axi_mem_ARVALID),
        .img_axi_mem_awaddr(acc_img_axi_mem_AWADDR),
        .img_axi_mem_awburst(acc_img_axi_mem_AWBURST),
        .img_axi_mem_awcache(acc_img_axi_mem_AWCACHE),
        .img_axi_mem_awid(acc_img_axi_mem_AWID),
        .img_axi_mem_awlen(acc_img_axi_mem_AWLEN),
        .img_axi_mem_awlock(acc_img_axi_mem_AWLOCK),
        .img_axi_mem_awprot(acc_img_axi_mem_AWPROT),
        .img_axi_mem_awqos(acc_img_axi_mem_AWQOS),
        .img_axi_mem_awready(acc_img_axi_mem_AWREADY),
        .img_axi_mem_awsize(acc_img_axi_mem_AWSIZE),
        .img_axi_mem_awvalid(acc_img_axi_mem_AWVALID),
        .img_axi_mem_bid(acc_img_axi_mem_BID),
        .img_axi_mem_bready(acc_img_axi_mem_BREADY),
        .img_axi_mem_bresp(acc_img_axi_mem_BRESP),
        .img_axi_mem_bvalid(acc_img_axi_mem_BVALID),
        .img_axi_mem_rdata(acc_img_axi_mem_RDATA),
        .img_axi_mem_rid(acc_img_axi_mem_RID),
        .img_axi_mem_rlast(acc_img_axi_mem_RLAST),
        .img_axi_mem_rready(acc_img_axi_mem_RREADY),
        .img_axi_mem_rresp(acc_img_axi_mem_RRESP),
        .img_axi_mem_rvalid(acc_img_axi_mem_RVALID),
        .img_axi_mem_wdata(acc_img_axi_mem_WDATA),
        .img_axi_mem_wlast(acc_img_axi_mem_WLAST),
        .img_axi_mem_wready(acc_img_axi_mem_WREADY),
        .img_axi_mem_wstrb(acc_img_axi_mem_WSTRB),
        .img_axi_mem_wvalid(acc_img_axi_mem_WVALID),
        .img_base_addr(img_base_addr_1),
        .img_base_addr_valid(img_base_addr_valid_1),
        .rstn(util_vector_logic_0_Res),
        .start_fbp(acc_configurator_v1_0_0_start_fbp));
  soc_acc_configurator_v1_0_0_0 acc_configurator_v1_0_0
       (.angle_data_base_addr(angle_base_addr_1),
        .angle_data_base_addr_valid(angle_base_addr_valid_1),
        .finsh_fbp(acc_finsh_fbp),
        .img_base_addr(img_base_addr_1),
        .img_base_addr_valid(img_base_addr_valid_1),
        .s00_axi_aclk(mig_7series_0_ui_clk),
        .s00_axi_araddr(axi_interconnect_LowSpeed_M03_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(M00_ARESETN_1),
        .s00_axi_arprot(axi_interconnect_LowSpeed_M03_AXI_ARPROT),
        .s00_axi_arready(axi_interconnect_LowSpeed_M03_AXI_ARREADY),
        .s00_axi_arvalid(axi_interconnect_LowSpeed_M03_AXI_ARVALID),
        .s00_axi_awaddr(axi_interconnect_LowSpeed_M03_AXI_AWADDR[3:0]),
        .s00_axi_awprot(axi_interconnect_LowSpeed_M03_AXI_AWPROT),
        .s00_axi_awready(axi_interconnect_LowSpeed_M03_AXI_AWREADY),
        .s00_axi_awvalid(axi_interconnect_LowSpeed_M03_AXI_AWVALID),
        .s00_axi_bready(axi_interconnect_LowSpeed_M03_AXI_BREADY),
        .s00_axi_bresp(axi_interconnect_LowSpeed_M03_AXI_BRESP),
        .s00_axi_bvalid(axi_interconnect_LowSpeed_M03_AXI_BVALID),
        .s00_axi_rdata(axi_interconnect_LowSpeed_M03_AXI_RDATA),
        .s00_axi_rready(axi_interconnect_LowSpeed_M03_AXI_RREADY),
        .s00_axi_rresp(axi_interconnect_LowSpeed_M03_AXI_RRESP),
        .s00_axi_rvalid(axi_interconnect_LowSpeed_M03_AXI_RVALID),
        .s00_axi_wdata(axi_interconnect_LowSpeed_M03_AXI_WDATA),
        .s00_axi_wready(axi_interconnect_LowSpeed_M03_AXI_WREADY),
        .s00_axi_wstrb(axi_interconnect_LowSpeed_M03_AXI_WSTRB),
        .s00_axi_wvalid(axi_interconnect_LowSpeed_M03_AXI_WVALID),
        .soft_rstn(acc_configurator_v1_0_0_soft_rstn),
        .start_fbp(acc_configurator_v1_0_0_start_fbp));
  soc_axi_gpio_0_2 axi_gpio_0
       (.gpio2_io_i(axi_gpio_0_GPIO2_TRI_I),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .ip2intc_irpt(axi_gpio_0_ip2intc_irpt),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_interconnect_LowSpeed_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(M00_ARESETN_1),
        .s_axi_arready(axi_interconnect_LowSpeed_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_LowSpeed_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_LowSpeed_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_LowSpeed_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_LowSpeed_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_LowSpeed_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_LowSpeed_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_LowSpeed_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_LowSpeed_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_LowSpeed_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_LowSpeed_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_LowSpeed_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_LowSpeed_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_LowSpeed_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_LowSpeed_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_LowSpeed_M01_AXI_WVALID));
  soc_axi_interconnect_0_0 axi_interconnect_L1
       (.ACLK(sys_mmcm_clk_out2),
        .ARESETN(ARESETN_1),
        .M00_ACLK(mig_7series_0_ui_clk),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(S00_AXI_1_ARADDR),
        .M00_AXI_arburst(S00_AXI_1_ARBURST),
        .M00_AXI_arcache(S00_AXI_1_ARCACHE),
        .M00_AXI_arlen(S00_AXI_1_ARLEN),
        .M00_AXI_arlock(S00_AXI_1_ARLOCK),
        .M00_AXI_arprot(S00_AXI_1_ARPROT),
        .M00_AXI_arqos(S00_AXI_1_ARQOS),
        .M00_AXI_arready(S00_AXI_1_ARREADY),
        .M00_AXI_arregion(S00_AXI_1_ARREGION),
        .M00_AXI_arsize(S00_AXI_1_ARSIZE),
        .M00_AXI_arvalid(S00_AXI_1_ARVALID),
        .M00_AXI_awaddr(S00_AXI_1_AWADDR),
        .M00_AXI_awburst(S00_AXI_1_AWBURST),
        .M00_AXI_awcache(S00_AXI_1_AWCACHE),
        .M00_AXI_awlen(S00_AXI_1_AWLEN),
        .M00_AXI_awlock(S00_AXI_1_AWLOCK),
        .M00_AXI_awprot(S00_AXI_1_AWPROT),
        .M00_AXI_awqos(S00_AXI_1_AWQOS),
        .M00_AXI_awready(S00_AXI_1_AWREADY),
        .M00_AXI_awregion(S00_AXI_1_AWREGION),
        .M00_AXI_awsize(S00_AXI_1_AWSIZE),
        .M00_AXI_awvalid(S00_AXI_1_AWVALID),
        .M00_AXI_bready(S00_AXI_1_BREADY),
        .M00_AXI_bresp(S00_AXI_1_BRESP),
        .M00_AXI_bvalid(S00_AXI_1_BVALID),
        .M00_AXI_rdata(S00_AXI_1_RDATA),
        .M00_AXI_rlast(S00_AXI_1_RLAST),
        .M00_AXI_rready(S00_AXI_1_RREADY),
        .M00_AXI_rresp(S00_AXI_1_RRESP),
        .M00_AXI_rvalid(S00_AXI_1_RVALID),
        .M00_AXI_wdata(S00_AXI_1_WDATA),
        .M00_AXI_wlast(S00_AXI_1_WLAST),
        .M00_AXI_wready(S00_AXI_1_WREADY),
        .M00_AXI_wstrb(S00_AXI_1_WSTRB),
        .M00_AXI_wvalid(S00_AXI_1_WVALID),
        .M01_ACLK(mig_7series_0_ui_clk),
        .M01_ARESETN(M00_ARESETN_1),
        .M01_AXI_araddr(axi_interconnect_L1_M01_AXI_ARADDR),
        .M01_AXI_arprot(axi_interconnect_L1_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_interconnect_L1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_L1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_L1_M01_AXI_AWADDR),
        .M01_AXI_awprot(axi_interconnect_L1_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_interconnect_L1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_L1_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_L1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_L1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_L1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_L1_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_L1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_L1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_L1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_L1_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_L1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_L1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_L1_M01_AXI_WVALID),
        .S00_ACLK(sys_mmcm_clk_out2),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARADDR),
        .S00_AXI_arburst(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARBURST),
        .S00_AXI_arcache(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARCACHE),
        .S00_AXI_arlen(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARLEN),
        .S00_AXI_arlock(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARLOCK),
        .S00_AXI_arprot(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARPROT),
        .S00_AXI_arready(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARREADY),
        .S00_AXI_arsize(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARSIZE),
        .S00_AXI_aruser(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARUSER),
        .S00_AXI_arvalid(CORTEXM3_AXI_0_CM3_SYS_AXI3_ARVALID),
        .S00_AXI_awaddr(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWADDR),
        .S00_AXI_awburst(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWBURST),
        .S00_AXI_awcache(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWCACHE),
        .S00_AXI_awlen(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWLEN),
        .S00_AXI_awlock(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWLOCK),
        .S00_AXI_awprot(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWPROT),
        .S00_AXI_awready(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWREADY),
        .S00_AXI_awsize(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWSIZE),
        .S00_AXI_awuser(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWUSER),
        .S00_AXI_awvalid(CORTEXM3_AXI_0_CM3_SYS_AXI3_AWVALID),
        .S00_AXI_bready(CORTEXM3_AXI_0_CM3_SYS_AXI3_BREADY),
        .S00_AXI_bresp(CORTEXM3_AXI_0_CM3_SYS_AXI3_BRESP),
        .S00_AXI_bvalid(CORTEXM3_AXI_0_CM3_SYS_AXI3_BVALID),
        .S00_AXI_rdata(CORTEXM3_AXI_0_CM3_SYS_AXI3_RDATA),
        .S00_AXI_rlast(CORTEXM3_AXI_0_CM3_SYS_AXI3_RLAST),
        .S00_AXI_rready(CORTEXM3_AXI_0_CM3_SYS_AXI3_RREADY),
        .S00_AXI_rresp(CORTEXM3_AXI_0_CM3_SYS_AXI3_RRESP),
        .S00_AXI_rvalid(CORTEXM3_AXI_0_CM3_SYS_AXI3_RVALID),
        .S00_AXI_wdata(CORTEXM3_AXI_0_CM3_SYS_AXI3_WDATA),
        .S00_AXI_wlast(CORTEXM3_AXI_0_CM3_SYS_AXI3_WLAST),
        .S00_AXI_wready(CORTEXM3_AXI_0_CM3_SYS_AXI3_WREADY),
        .S00_AXI_wstrb(CORTEXM3_AXI_0_CM3_SYS_AXI3_WSTRB),
        .S00_AXI_wvalid(CORTEXM3_AXI_0_CM3_SYS_AXI3_WVALID));
  soc_axi_interconnect_0_1 axi_interconnect_LowSpeed
       (.ACLK(mig_7series_0_ui_clk),
        .ARESETN(ARESETN_2),
        .M00_ACLK(mig_7series_0_ui_clk),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_LowSpeed_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_LowSpeed_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_LowSpeed_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_LowSpeed_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_LowSpeed_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_LowSpeed_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_LowSpeed_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_LowSpeed_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_LowSpeed_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_LowSpeed_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_LowSpeed_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_LowSpeed_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_LowSpeed_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_LowSpeed_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_LowSpeed_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_LowSpeed_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_LowSpeed_M00_AXI_WVALID),
        .M01_ACLK(mig_7series_0_ui_clk),
        .M01_ARESETN(M00_ARESETN_1),
        .M01_AXI_araddr(axi_interconnect_LowSpeed_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_LowSpeed_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_LowSpeed_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_LowSpeed_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_LowSpeed_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_LowSpeed_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_LowSpeed_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_LowSpeed_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_LowSpeed_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_LowSpeed_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_LowSpeed_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_LowSpeed_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_LowSpeed_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_LowSpeed_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_LowSpeed_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_LowSpeed_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_LowSpeed_M01_AXI_WVALID),
        .M02_ACLK(mig_7series_0_ui_clk),
        .M02_ARESETN(M00_ARESETN_1),
        .M02_AXI_araddr(axi_interconnect_LowSpeed_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_LowSpeed_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_LowSpeed_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_LowSpeed_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_LowSpeed_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_LowSpeed_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_LowSpeed_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_LowSpeed_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_LowSpeed_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_LowSpeed_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_LowSpeed_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_LowSpeed_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_LowSpeed_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_LowSpeed_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_LowSpeed_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_LowSpeed_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_LowSpeed_M02_AXI_WVALID),
        .M03_ACLK(mig_7series_0_ui_clk),
        .M03_ARESETN(M00_ARESETN_1),
        .M03_AXI_araddr(axi_interconnect_LowSpeed_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_interconnect_LowSpeed_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_interconnect_LowSpeed_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_LowSpeed_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_LowSpeed_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_interconnect_LowSpeed_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_interconnect_LowSpeed_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_LowSpeed_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_LowSpeed_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_LowSpeed_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_LowSpeed_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_LowSpeed_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_LowSpeed_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_LowSpeed_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_LowSpeed_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_LowSpeed_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_LowSpeed_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_LowSpeed_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_LowSpeed_M03_AXI_WVALID),
        .M04_ACLK(mig_7series_0_ui_clk),
        .M04_ARESETN(M00_ARESETN_1),
        .M04_AXI_araddr(axi_interconnect_LowSpeed_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_interconnect_LowSpeed_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_LowSpeed_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_LowSpeed_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_interconnect_LowSpeed_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_LowSpeed_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_LowSpeed_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_LowSpeed_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_LowSpeed_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_LowSpeed_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_LowSpeed_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_LowSpeed_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_LowSpeed_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_LowSpeed_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_LowSpeed_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_LowSpeed_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_LowSpeed_M04_AXI_WVALID),
        .S00_ACLK(mig_7series_0_ui_clk),
        .S00_ARESETN(M00_ARESETN_1),
        .S00_AXI_araddr(axi_interconnect_L1_M01_AXI_ARADDR),
        .S00_AXI_arprot(axi_interconnect_L1_M01_AXI_ARPROT),
        .S00_AXI_arready(axi_interconnect_L1_M01_AXI_ARREADY),
        .S00_AXI_arvalid(axi_interconnect_L1_M01_AXI_ARVALID),
        .S00_AXI_awaddr(axi_interconnect_L1_M01_AXI_AWADDR),
        .S00_AXI_awprot(axi_interconnect_L1_M01_AXI_AWPROT),
        .S00_AXI_awready(axi_interconnect_L1_M01_AXI_AWREADY),
        .S00_AXI_awvalid(axi_interconnect_L1_M01_AXI_AWVALID),
        .S00_AXI_bready(axi_interconnect_L1_M01_AXI_BREADY),
        .S00_AXI_bresp(axi_interconnect_L1_M01_AXI_BRESP),
        .S00_AXI_bvalid(axi_interconnect_L1_M01_AXI_BVALID),
        .S00_AXI_rdata(axi_interconnect_L1_M01_AXI_RDATA),
        .S00_AXI_rready(axi_interconnect_L1_M01_AXI_RREADY),
        .S00_AXI_rresp(axi_interconnect_L1_M01_AXI_RRESP),
        .S00_AXI_rvalid(axi_interconnect_L1_M01_AXI_RVALID),
        .S00_AXI_wdata(axi_interconnect_L1_M01_AXI_WDATA),
        .S00_AXI_wready(axi_interconnect_L1_M01_AXI_WREADY),
        .S00_AXI_wstrb(axi_interconnect_L1_M01_AXI_WSTRB),
        .S00_AXI_wvalid(axi_interconnect_L1_M01_AXI_WVALID));
  soc_axi_interconnect_0_2 axi_interconnect_ddr
       (.ACLK(mig_7series_0_ui_clk),
        .ARESETN(ARESETN_2),
        .M00_ACLK(mig_7series_0_ui_clk),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_ddr_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_ddr_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_ddr_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_ddr_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_ddr_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_ddr_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_ddr_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_ddr_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_ddr_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_ddr_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_ddr_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_ddr_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_ddr_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_ddr_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_ddr_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_ddr_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_ddr_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_ddr_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_ddr_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_ddr_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_ddr_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_ddr_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_ddr_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_ddr_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_ddr_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_ddr_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_ddr_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_ddr_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_ddr_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_ddr_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_ddr_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_ddr_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_ddr_M00_AXI_WVALID),
        .S00_ACLK(mig_7series_0_ui_clk),
        .S00_ARESETN(M00_ARESETN_1),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arregion(S00_AXI_1_ARREGION),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awregion(S00_AXI_1_AWREGION),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .S01_ACLK(mig_7series_0_ui_clk),
        .S01_ARESETN(M00_ARESETN_1),
        .S01_AXI_araddr(acc_img_axi_mem_ARADDR),
        .S01_AXI_arburst(acc_img_axi_mem_ARBURST),
        .S01_AXI_arcache(acc_img_axi_mem_ARCACHE),
        .S01_AXI_arid(acc_img_axi_mem_ARID),
        .S01_AXI_arlen(acc_img_axi_mem_ARLEN),
        .S01_AXI_arlock(acc_img_axi_mem_ARLOCK),
        .S01_AXI_arprot(acc_img_axi_mem_ARPROT),
        .S01_AXI_arqos(acc_img_axi_mem_ARQOS),
        .S01_AXI_arready(acc_img_axi_mem_ARREADY),
        .S01_AXI_arsize(acc_img_axi_mem_ARSIZE),
        .S01_AXI_arvalid(acc_img_axi_mem_ARVALID),
        .S01_AXI_awaddr(acc_img_axi_mem_AWADDR),
        .S01_AXI_awburst(acc_img_axi_mem_AWBURST),
        .S01_AXI_awcache(acc_img_axi_mem_AWCACHE),
        .S01_AXI_awid(acc_img_axi_mem_AWID),
        .S01_AXI_awlen(acc_img_axi_mem_AWLEN),
        .S01_AXI_awlock(acc_img_axi_mem_AWLOCK),
        .S01_AXI_awprot(acc_img_axi_mem_AWPROT),
        .S01_AXI_awqos(acc_img_axi_mem_AWQOS),
        .S01_AXI_awready(acc_img_axi_mem_AWREADY),
        .S01_AXI_awsize(acc_img_axi_mem_AWSIZE),
        .S01_AXI_awvalid(acc_img_axi_mem_AWVALID),
        .S01_AXI_bid(acc_img_axi_mem_BID),
        .S01_AXI_bready(acc_img_axi_mem_BREADY),
        .S01_AXI_bresp(acc_img_axi_mem_BRESP),
        .S01_AXI_bvalid(acc_img_axi_mem_BVALID),
        .S01_AXI_rdata(acc_img_axi_mem_RDATA),
        .S01_AXI_rid(acc_img_axi_mem_RID),
        .S01_AXI_rlast(acc_img_axi_mem_RLAST),
        .S01_AXI_rready(acc_img_axi_mem_RREADY),
        .S01_AXI_rresp(acc_img_axi_mem_RRESP),
        .S01_AXI_rvalid(acc_img_axi_mem_RVALID),
        .S01_AXI_wdata(acc_img_axi_mem_WDATA),
        .S01_AXI_wlast(acc_img_axi_mem_WLAST),
        .S01_AXI_wready(acc_img_axi_mem_WREADY),
        .S01_AXI_wstrb(acc_img_axi_mem_WSTRB),
        .S01_AXI_wvalid(acc_img_axi_mem_WVALID),
        .S02_ACLK(mig_7series_0_ui_clk),
        .S02_ARESETN(M00_ARESETN_1),
        .S02_AXI_araddr(acc_angle_axi_mem_ARADDR),
        .S02_AXI_arburst(acc_angle_axi_mem_ARBURST),
        .S02_AXI_arcache(acc_angle_axi_mem_ARCACHE),
        .S02_AXI_arid(acc_angle_axi_mem_ARID),
        .S02_AXI_arlen(acc_angle_axi_mem_ARLEN),
        .S02_AXI_arlock(acc_angle_axi_mem_ARLOCK),
        .S02_AXI_arprot(acc_angle_axi_mem_ARPROT),
        .S02_AXI_arqos(acc_angle_axi_mem_ARQOS),
        .S02_AXI_arready(acc_angle_axi_mem_ARREADY),
        .S02_AXI_arsize(acc_angle_axi_mem_ARSIZE),
        .S02_AXI_arvalid(acc_angle_axi_mem_ARVALID),
        .S02_AXI_awaddr(acc_angle_axi_mem_AWADDR),
        .S02_AXI_awburst(acc_angle_axi_mem_AWBURST),
        .S02_AXI_awcache(acc_angle_axi_mem_AWCACHE),
        .S02_AXI_awid(acc_angle_axi_mem_AWID),
        .S02_AXI_awlen(acc_angle_axi_mem_AWLEN),
        .S02_AXI_awlock(acc_angle_axi_mem_AWLOCK),
        .S02_AXI_awprot(acc_angle_axi_mem_AWPROT),
        .S02_AXI_awqos(acc_angle_axi_mem_AWQOS),
        .S02_AXI_awready(acc_angle_axi_mem_AWREADY),
        .S02_AXI_awsize(acc_angle_axi_mem_AWSIZE),
        .S02_AXI_awvalid(acc_angle_axi_mem_AWVALID),
        .S02_AXI_bid(acc_angle_axi_mem_BID),
        .S02_AXI_bready(acc_angle_axi_mem_BREADY),
        .S02_AXI_bresp(acc_angle_axi_mem_BRESP),
        .S02_AXI_bvalid(acc_angle_axi_mem_BVALID),
        .S02_AXI_rdata(acc_angle_axi_mem_RDATA),
        .S02_AXI_rid(acc_angle_axi_mem_RID),
        .S02_AXI_rlast(acc_angle_axi_mem_RLAST),
        .S02_AXI_rready(acc_angle_axi_mem_RREADY),
        .S02_AXI_rresp(acc_angle_axi_mem_RRESP),
        .S02_AXI_rvalid(acc_angle_axi_mem_RVALID),
        .S02_AXI_wdata(acc_angle_axi_mem_WDATA),
        .S02_AXI_wlast(acc_angle_axi_mem_WLAST),
        .S02_AXI_wready(acc_angle_axi_mem_WREADY),
        .S02_AXI_wstrb(acc_angle_axi_mem_WSTRB),
        .S02_AXI_wvalid(acc_angle_axi_mem_WVALID),
        .S03_ACLK(xdma_0_axi_aclk),
        .S03_ARESETN(xdma_0_axi_aresetn),
        .S03_AXI_araddr(xdma_0_M_AXI_ARADDR),
        .S03_AXI_arburst(xdma_0_M_AXI_ARBURST),
        .S03_AXI_arcache(xdma_0_M_AXI_ARCACHE),
        .S03_AXI_arid(xdma_0_M_AXI_ARID),
        .S03_AXI_arlen(xdma_0_M_AXI_ARLEN),
        .S03_AXI_arlock(xdma_0_M_AXI_ARLOCK),
        .S03_AXI_arprot(xdma_0_M_AXI_ARPROT),
        .S03_AXI_arready(xdma_0_M_AXI_ARREADY),
        .S03_AXI_arsize(xdma_0_M_AXI_ARSIZE),
        .S03_AXI_arvalid(xdma_0_M_AXI_ARVALID),
        .S03_AXI_awaddr(xdma_0_M_AXI_AWADDR),
        .S03_AXI_awburst(xdma_0_M_AXI_AWBURST),
        .S03_AXI_awcache(xdma_0_M_AXI_AWCACHE),
        .S03_AXI_awid(xdma_0_M_AXI_AWID),
        .S03_AXI_awlen(xdma_0_M_AXI_AWLEN),
        .S03_AXI_awlock(xdma_0_M_AXI_AWLOCK),
        .S03_AXI_awprot(xdma_0_M_AXI_AWPROT),
        .S03_AXI_awready(xdma_0_M_AXI_AWREADY),
        .S03_AXI_awsize(xdma_0_M_AXI_AWSIZE),
        .S03_AXI_awvalid(xdma_0_M_AXI_AWVALID),
        .S03_AXI_bid(xdma_0_M_AXI_BID),
        .S03_AXI_bready(xdma_0_M_AXI_BREADY),
        .S03_AXI_bresp(xdma_0_M_AXI_BRESP),
        .S03_AXI_bvalid(xdma_0_M_AXI_BVALID),
        .S03_AXI_rdata(xdma_0_M_AXI_RDATA),
        .S03_AXI_rid(xdma_0_M_AXI_RID),
        .S03_AXI_rlast(xdma_0_M_AXI_RLAST),
        .S03_AXI_rready(xdma_0_M_AXI_RREADY),
        .S03_AXI_rresp(xdma_0_M_AXI_RRESP),
        .S03_AXI_rvalid(xdma_0_M_AXI_RVALID),
        .S03_AXI_wdata(xdma_0_M_AXI_WDATA),
        .S03_AXI_wlast(xdma_0_M_AXI_WLAST),
        .S03_AXI_wready(xdma_0_M_AXI_WREADY),
        .S03_AXI_wstrb(xdma_0_M_AXI_WSTRB),
        .S03_AXI_wvalid(xdma_0_M_AXI_WVALID));
  soc_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_interconnect_LowSpeed_M02_AXI_ARADDR[4:0]),
        .s_axi_aresetn(M00_ARESETN_1),
        .s_axi_arready(axi_interconnect_LowSpeed_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_LowSpeed_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_LowSpeed_M02_AXI_AWADDR[4:0]),
        .s_axi_awready(axi_interconnect_LowSpeed_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_LowSpeed_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_LowSpeed_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_LowSpeed_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_LowSpeed_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_LowSpeed_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_LowSpeed_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_LowSpeed_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_LowSpeed_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_LowSpeed_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_LowSpeed_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_LowSpeed_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_LowSpeed_M02_AXI_WVALID));
  soc_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_interconnect_LowSpeed_M00_AXI_ARADDR[3:0]),
        .s_axi_aresetn(M00_ARESETN_1),
        .s_axi_arready(axi_interconnect_LowSpeed_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_LowSpeed_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_LowSpeed_M00_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_interconnect_LowSpeed_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_LowSpeed_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_LowSpeed_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_LowSpeed_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_LowSpeed_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_LowSpeed_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_LowSpeed_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_LowSpeed_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_LowSpeed_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_LowSpeed_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_LowSpeed_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_LowSpeed_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_LowSpeed_M00_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  soc_xlconstant_1_0 cfg_itcm_const
       (.dout(cfg_itcm_const_dout));
  soc_axi_gpio_0_1 cm3_irq
       (.gpio_io_o(cm3_irq_gpio_io_o),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_interconnect_LowSpeed_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(M00_ARESETN_1),
        .s_axi_arready(axi_interconnect_LowSpeed_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_LowSpeed_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_LowSpeed_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_LowSpeed_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_LowSpeed_M04_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_LowSpeed_M04_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_LowSpeed_M04_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_LowSpeed_M04_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_LowSpeed_M04_AXI_RDATA),
        .s_axi_rready(axi_interconnect_LowSpeed_M04_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_LowSpeed_M04_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_LowSpeed_M04_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_LowSpeed_M04_AXI_WDATA),
        .s_axi_wready(axi_interconnect_LowSpeed_M04_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_LowSpeed_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_LowSpeed_M04_AXI_WVALID));
  soc_util_vector_logic_0_1 core_rst_inv
       (.Op1(proc_sys_reset_0_mb_reset),
        .Res(core_rst_inv_Res));
  soc_mig_7series_0_1 mig_7series_0
       (.aresetn(M00_ARESETN_1),
        .clk_ref_i(sys_mmcm_clk_out1),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_cs_n(mig_7series_0_DDR3_CS_N),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(ddr3_dq[31:0]),
        .ddr3_dqs_n(ddr3_dqs_n[3:0]),
        .ddr3_dqs_p(ddr3_dqs_p[3:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_interconnect_ddr_M00_AXI_ARADDR),
        .s_axi_arburst(axi_interconnect_ddr_M00_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_ddr_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_interconnect_ddr_M00_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_ddr_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_ddr_M00_AXI_ARPROT),
        .s_axi_arqos(axi_interconnect_ddr_M00_AXI_ARQOS),
        .s_axi_arready(axi_interconnect_ddr_M00_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_ddr_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_ddr_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_ddr_M00_AXI_AWADDR),
        .s_axi_awburst(axi_interconnect_ddr_M00_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_ddr_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_interconnect_ddr_M00_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_ddr_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_ddr_M00_AXI_AWPROT),
        .s_axi_awqos(axi_interconnect_ddr_M00_AXI_AWQOS),
        .s_axi_awready(axi_interconnect_ddr_M00_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_ddr_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_ddr_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_ddr_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_ddr_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_ddr_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_ddr_M00_AXI_RDATA),
        .s_axi_rlast(axi_interconnect_ddr_M00_AXI_RLAST),
        .s_axi_rready(axi_interconnect_ddr_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_ddr_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_ddr_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_ddr_M00_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_ddr_M00_AXI_WLAST),
        .s_axi_wready(axi_interconnect_ddr_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_ddr_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_ddr_M00_AXI_WVALID),
        .sys_clk_i(sys_mmcm_clk_out1),
        .sys_rst(sys_mmcm_locked),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  soc_xlconstant_0_1 no_nmi
       (.dout(xlconstant_0_dout));
  soc_axi_gpio_0_0 pcie_irq
       (.gpio2_io_o(pcie_irq_gpio2_io_o),
        .gpio_io_o(pcie_irq_gpio_io_o),
        .s_axi_aclk(xdma_0_axi_aclk),
        .s_axi_araddr(xdma_0_M_AXI_LITE_ARADDR[8:0]),
        .s_axi_aresetn(xdma_0_axi_aresetn),
        .s_axi_arready(xdma_0_M_AXI_LITE_ARREADY),
        .s_axi_arvalid(xdma_0_M_AXI_LITE_ARVALID),
        .s_axi_awaddr(xdma_0_M_AXI_LITE_AWADDR[8:0]),
        .s_axi_awready(xdma_0_M_AXI_LITE_AWREADY),
        .s_axi_awvalid(xdma_0_M_AXI_LITE_AWVALID),
        .s_axi_bready(xdma_0_M_AXI_LITE_BREADY),
        .s_axi_bresp(xdma_0_M_AXI_LITE_BRESP),
        .s_axi_bvalid(xdma_0_M_AXI_LITE_BVALID),
        .s_axi_rdata(xdma_0_M_AXI_LITE_RDATA),
        .s_axi_rready(xdma_0_M_AXI_LITE_RREADY),
        .s_axi_rresp(xdma_0_M_AXI_LITE_RRESP),
        .s_axi_rvalid(xdma_0_M_AXI_LITE_RVALID),
        .s_axi_wdata(xdma_0_M_AXI_LITE_WDATA),
        .s_axi_wready(xdma_0_M_AXI_LITE_WREADY),
        .s_axi_wstrb(xdma_0_M_AXI_LITE_WSTRB),
        .s_axi_wvalid(xdma_0_M_AXI_LITE_WVALID));
  soc_proc_sys_reset_0_1 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(sys_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(CORTEXM3_AXI_0_SYSRESETREQ),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .peripheral_aresetn(S00_ARESETN_1),
        .slowest_sync_clk(sys_mmcm_clk_out2));
  soc_proc_sys_reset_1_0 rst_mig_200M
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .interconnect_aresetn(ARESETN_2),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(M00_ARESETN_1),
        .slowest_sync_clk(mig_7series_0_ui_clk));
  soc_swdio_tri_buffer_0_0 swdio_tri_buffer_0
       (.swd_i(swdio_tri_buffer_0_swd_i),
        .swd_io(swdio),
        .swd_o(CORTEXM3_AXI_0_SWDO),
        .swd_oe(CORTEXM3_AXI_0_SWDOEN));
  soc_clk_wiz_0_0 sys_mmcm
       (.clk_in1(clk_in1_0_1),
        .clk_out1(sys_mmcm_clk_out1),
        .clk_out2(sys_mmcm_clk_out2),
        .locked(sys_mmcm_locked),
        .resetn(resetn_0_1));
  soc_util_ds_buf_1_0 util_ds_buf_0
       (.IBUF_DS_N(diff_clock_rtl_0_1_CLK_N),
        .IBUF_DS_P(diff_clock_rtl_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_1_IBUF_OUT));
  soc_util_vector_logic_0_2 util_vector_logic_0
       (.Op1(M00_ARESETN_1),
        .Op2(acc_configurator_v1_0_0_soft_rstn),
        .Res(util_vector_logic_0_Res));
  soc_xdma_0_1 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(xdma_0_M_AXI_ARADDR),
        .m_axi_arburst(xdma_0_M_AXI_ARBURST),
        .m_axi_arcache(xdma_0_M_AXI_ARCACHE),
        .m_axi_arid(xdma_0_M_AXI_ARID),
        .m_axi_arlen(xdma_0_M_AXI_ARLEN),
        .m_axi_arlock(xdma_0_M_AXI_ARLOCK),
        .m_axi_arprot(xdma_0_M_AXI_ARPROT),
        .m_axi_arready(xdma_0_M_AXI_ARREADY),
        .m_axi_arsize(xdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(xdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(xdma_0_M_AXI_AWADDR),
        .m_axi_awburst(xdma_0_M_AXI_AWBURST),
        .m_axi_awcache(xdma_0_M_AXI_AWCACHE),
        .m_axi_awid(xdma_0_M_AXI_AWID),
        .m_axi_awlen(xdma_0_M_AXI_AWLEN),
        .m_axi_awlock(xdma_0_M_AXI_AWLOCK),
        .m_axi_awprot(xdma_0_M_AXI_AWPROT),
        .m_axi_awready(xdma_0_M_AXI_AWREADY),
        .m_axi_awsize(xdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(xdma_0_M_AXI_AWVALID),
        .m_axi_bid(xdma_0_M_AXI_BID),
        .m_axi_bready(xdma_0_M_AXI_BREADY),
        .m_axi_bresp(xdma_0_M_AXI_BRESP),
        .m_axi_bvalid(xdma_0_M_AXI_BVALID),
        .m_axi_rdata(xdma_0_M_AXI_RDATA),
        .m_axi_rid(xdma_0_M_AXI_RID),
        .m_axi_rlast(xdma_0_M_AXI_RLAST),
        .m_axi_rready(xdma_0_M_AXI_RREADY),
        .m_axi_rresp(xdma_0_M_AXI_RRESP),
        .m_axi_rvalid(xdma_0_M_AXI_RVALID),
        .m_axi_wdata(xdma_0_M_AXI_WDATA),
        .m_axi_wlast(xdma_0_M_AXI_WLAST),
        .m_axi_wready(xdma_0_M_AXI_WREADY),
        .m_axi_wstrb(xdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(xdma_0_M_AXI_WVALID),
        .m_axil_araddr(xdma_0_M_AXI_LITE_ARADDR),
        .m_axil_arready(xdma_0_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(xdma_0_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(xdma_0_M_AXI_LITE_AWADDR),
        .m_axil_awready(xdma_0_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(xdma_0_M_AXI_LITE_AWVALID),
        .m_axil_bready(xdma_0_M_AXI_LITE_BREADY),
        .m_axil_bresp(xdma_0_M_AXI_LITE_BRESP),
        .m_axil_bvalid(xdma_0_M_AXI_LITE_BVALID),
        .m_axil_rdata(xdma_0_M_AXI_LITE_RDATA),
        .m_axil_rready(xdma_0_M_AXI_LITE_RREADY),
        .m_axil_rresp(xdma_0_M_AXI_LITE_RRESP),
        .m_axil_rvalid(xdma_0_M_AXI_LITE_RVALID),
        .m_axil_wdata(xdma_0_M_AXI_LITE_WDATA),
        .m_axil_wready(xdma_0_M_AXI_LITE_WREADY),
        .m_axil_wstrb(xdma_0_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(xdma_0_M_AXI_LITE_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(util_ds_buf_1_IBUF_OUT),
        .sys_rst_n(sys_rst_n_0_1),
        .user_lnk_up(xdma_0_user_lnk_up),
        .usr_irq_req(cm3_irq_gpio_io_o));
  soc_xlconcat_0_0 xlconcat_IRQ
       (.In0(axi_uartlite_0_interrupt),
        .In1(axi_timer_0_interrupt),
        .In2(axi_gpio_0_ip2intc_irpt),
        .In3(pcie_irq_gpio_io_o),
        .In4(pcie_irq_gpio2_io_o),
        .dout(xlconcat_0_dout));
endmodule

module soc_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [255:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [255:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_L1_ACLK_net;
  wire axi_interconnect_L1_ARESETN_net;
  wire [31:0]axi_interconnect_L1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_L1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_L1_to_s00_couplers_ARCACHE;
  wire [3:0]axi_interconnect_L1_to_s00_couplers_ARLEN;
  wire [1:0]axi_interconnect_L1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_L1_to_s00_couplers_ARPROT;
  wire axi_interconnect_L1_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_L1_to_s00_couplers_ARSIZE;
  wire [0:0]axi_interconnect_L1_to_s00_couplers_ARUSER;
  wire axi_interconnect_L1_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_L1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_L1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_L1_to_s00_couplers_AWCACHE;
  wire [3:0]axi_interconnect_L1_to_s00_couplers_AWLEN;
  wire [1:0]axi_interconnect_L1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_L1_to_s00_couplers_AWPROT;
  wire axi_interconnect_L1_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_L1_to_s00_couplers_AWSIZE;
  wire [0:0]axi_interconnect_L1_to_s00_couplers_AWUSER;
  wire axi_interconnect_L1_to_s00_couplers_AWVALID;
  wire axi_interconnect_L1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_L1_to_s00_couplers_BRESP;
  wire axi_interconnect_L1_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_L1_to_s00_couplers_RDATA;
  wire axi_interconnect_L1_to_s00_couplers_RLAST;
  wire axi_interconnect_L1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_L1_to_s00_couplers_RRESP;
  wire axi_interconnect_L1_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_L1_to_s00_couplers_WDATA;
  wire axi_interconnect_L1_to_s00_couplers_WLAST;
  wire axi_interconnect_L1_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_L1_to_s00_couplers_WSTRB;
  wire axi_interconnect_L1_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_L1_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_L1_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_L1_ARCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_L1_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_L1_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_L1_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_L1_ARQOS;
  wire m00_couplers_to_axi_interconnect_L1_ARREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_L1_ARREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_L1_ARSIZE;
  wire m00_couplers_to_axi_interconnect_L1_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_L1_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_L1_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_L1_AWCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_L1_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_L1_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_L1_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_L1_AWQOS;
  wire m00_couplers_to_axi_interconnect_L1_AWREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_L1_AWREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_L1_AWSIZE;
  wire m00_couplers_to_axi_interconnect_L1_AWVALID;
  wire m00_couplers_to_axi_interconnect_L1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_L1_BRESP;
  wire m00_couplers_to_axi_interconnect_L1_BVALID;
  wire [255:0]m00_couplers_to_axi_interconnect_L1_RDATA;
  wire m00_couplers_to_axi_interconnect_L1_RLAST;
  wire m00_couplers_to_axi_interconnect_L1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_L1_RRESP;
  wire m00_couplers_to_axi_interconnect_L1_RVALID;
  wire [255:0]m00_couplers_to_axi_interconnect_L1_WDATA;
  wire m00_couplers_to_axi_interconnect_L1_WLAST;
  wire m00_couplers_to_axi_interconnect_L1_WREADY;
  wire [31:0]m00_couplers_to_axi_interconnect_L1_WSTRB;
  wire m00_couplers_to_axi_interconnect_L1_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_L1_ARADDR;
  wire [2:0]m01_couplers_to_axi_interconnect_L1_ARPROT;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_ARREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_L1_AWADDR;
  wire [2:0]m01_couplers_to_axi_interconnect_L1_AWPROT;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_AWREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_AWVALID;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_L1_BRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_L1_RDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_L1_RRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_L1_WDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_L1_WSTRB;
  wire [0:0]m01_couplers_to_axi_interconnect_L1_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [255:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [255:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [31:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [255:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [255:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [31:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [255:0]xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [511:256]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [63:32]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_L1_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_L1_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_L1_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_L1_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_L1_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_L1_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_L1_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_interconnect_L1_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_L1_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_L1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_L1_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_L1_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_L1_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_L1_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_L1_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_L1_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_L1_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_interconnect_L1_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_L1_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_L1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_L1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_L1_RREADY;
  assign M00_AXI_wdata[255:0] = m00_couplers_to_axi_interconnect_L1_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_L1_WLAST;
  assign M00_AXI_wstrb[31:0] = m00_couplers_to_axi_interconnect_L1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_L1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_L1_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_interconnect_L1_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_interconnect_L1_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_L1_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_interconnect_L1_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_interconnect_L1_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_interconnect_L1_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_interconnect_L1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_L1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_L1_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_interconnect_L1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_L1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_L1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_L1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_L1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_L1_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_L1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_L1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_L1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_L1_to_s00_couplers_WREADY;
  assign axi_interconnect_L1_ACLK_net = ACLK;
  assign axi_interconnect_L1_ARESETN_net = ARESETN;
  assign axi_interconnect_L1_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_L1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_L1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_L1_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign axi_interconnect_L1_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign axi_interconnect_L1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_L1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_L1_to_s00_couplers_ARUSER = S00_AXI_aruser[0];
  assign axi_interconnect_L1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_L1_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_L1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_L1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_L1_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign axi_interconnect_L1_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign axi_interconnect_L1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_L1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_L1_to_s00_couplers_AWUSER = S00_AXI_awuser[0];
  assign axi_interconnect_L1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_L1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_L1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_L1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_L1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_L1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_L1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_L1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_L1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_L1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_L1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_L1_RDATA = M00_AXI_rdata[255:0];
  assign m00_couplers_to_axi_interconnect_L1_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_L1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_L1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_L1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_L1_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_interconnect_L1_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_interconnect_L1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_L1_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_interconnect_L1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_L1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_L1_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_interconnect_L1_WREADY = M01_AXI_wready[0];
  m00_couplers_imp_154WB3C m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_L1_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_L1_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_L1_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_L1_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_L1_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_L1_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_L1_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_L1_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_L1_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_L1_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_L1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_L1_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_L1_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_L1_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_L1_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_L1_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_L1_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_L1_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_L1_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_L1_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_L1_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_L1_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_L1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_L1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_L1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_L1_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_L1_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_L1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_L1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_L1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_L1_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_L1_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_L1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_L1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_L1_WVALID),
        .S_ACLK(axi_interconnect_L1_ACLK_net),
        .S_ARESETN(axi_interconnect_L1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_KHKGJ1 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_L1_ARADDR),
        .M_AXI_arprot(m01_couplers_to_axi_interconnect_L1_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_L1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_L1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_L1_AWADDR),
        .M_AXI_awprot(m01_couplers_to_axi_interconnect_L1_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_L1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_L1_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_L1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_L1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_L1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_L1_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_L1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_L1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_L1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_L1_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_L1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_L1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_L1_WVALID),
        .S_ACLK(axi_interconnect_L1_ACLK_net),
        .S_ARESETN(axi_interconnect_L1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_H0G1EA s00_couplers
       (.M_ACLK(axi_interconnect_L1_ACLK_net),
        .M_ARESETN(axi_interconnect_L1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_L1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_L1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_L1_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_L1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_L1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_L1_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_L1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_L1_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(axi_interconnect_L1_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(axi_interconnect_L1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_L1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_L1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_L1_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_L1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_L1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_L1_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_L1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_L1_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(axi_interconnect_L1_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(axi_interconnect_L1_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_L1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_L1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_L1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_L1_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_L1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_L1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_L1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_L1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_L1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_L1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_L1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_L1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_L1_to_s00_couplers_WVALID));
  soc_xbar_3 xbar
       (.aclk(axi_interconnect_L1_ACLK_net),
        .aresetn(axi_interconnect_L1_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module soc_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_LowSpeed_ACLK_net;
  wire axi_interconnect_LowSpeed_ARESETN_net;
  wire [31:0]axi_interconnect_LowSpeed_to_s00_couplers_ARADDR;
  wire [2:0]axi_interconnect_LowSpeed_to_s00_couplers_ARPROT;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_ARREADY;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_LowSpeed_to_s00_couplers_AWADDR;
  wire [2:0]axi_interconnect_LowSpeed_to_s00_couplers_AWPROT;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_AWREADY;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_LowSpeed_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_LowSpeed_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_LowSpeed_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_LowSpeed_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_LowSpeed_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_LowSpeed_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  wire m00_couplers_to_axi_interconnect_LowSpeed_ARREADY;
  wire m00_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  wire m00_couplers_to_axi_interconnect_LowSpeed_AWREADY;
  wire m00_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  wire m00_couplers_to_axi_interconnect_LowSpeed_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_LowSpeed_BRESP;
  wire m00_couplers_to_axi_interconnect_LowSpeed_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_LowSpeed_RDATA;
  wire m00_couplers_to_axi_interconnect_LowSpeed_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_LowSpeed_RRESP;
  wire m00_couplers_to_axi_interconnect_LowSpeed_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_LowSpeed_WDATA;
  wire m00_couplers_to_axi_interconnect_LowSpeed_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  wire m00_couplers_to_axi_interconnect_LowSpeed_WVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_ARREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_AWREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_LowSpeed_BRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_LowSpeed_RDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_LowSpeed_RRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_LowSpeed_WDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  wire [0:0]m01_couplers_to_axi_interconnect_LowSpeed_WVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  wire m02_couplers_to_axi_interconnect_LowSpeed_ARREADY;
  wire m02_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  wire m02_couplers_to_axi_interconnect_LowSpeed_AWREADY;
  wire m02_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  wire m02_couplers_to_axi_interconnect_LowSpeed_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_LowSpeed_BRESP;
  wire m02_couplers_to_axi_interconnect_LowSpeed_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_LowSpeed_RDATA;
  wire m02_couplers_to_axi_interconnect_LowSpeed_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_LowSpeed_RRESP;
  wire m02_couplers_to_axi_interconnect_LowSpeed_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_LowSpeed_WDATA;
  wire m02_couplers_to_axi_interconnect_LowSpeed_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  wire m02_couplers_to_axi_interconnect_LowSpeed_WVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_LowSpeed_ARPROT;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_ARREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  wire [2:0]m03_couplers_to_axi_interconnect_LowSpeed_AWPROT;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_AWREADY;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_LowSpeed_BRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_BVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_LowSpeed_RDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_LowSpeed_RRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_RVALID;
  wire [31:0]m03_couplers_to_axi_interconnect_LowSpeed_WDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_WREADY;
  wire [3:0]m03_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  wire [0:0]m03_couplers_to_axi_interconnect_LowSpeed_WVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_ARREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_AWREADY;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_LowSpeed_BRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_BVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_LowSpeed_RDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_LowSpeed_RRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_RVALID;
  wire [31:0]m04_couplers_to_axi_interconnect_LowSpeed_WDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_WREADY;
  wire [3:0]m04_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  wire [0:0]m04_couplers_to_axi_interconnect_LowSpeed_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [14:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [14:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_LowSpeed_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_LowSpeed_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_LowSpeed_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_LowSpeed_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_interconnect_LowSpeed_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_interconnect_LowSpeed_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_LowSpeed_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_interconnect_LowSpeed_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_LowSpeed_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_LowSpeed_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_LowSpeed_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_LowSpeed_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_LowSpeed_ARPROT;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_LowSpeed_AWPROT;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_interconnect_LowSpeed_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_interconnect_LowSpeed_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi_interconnect_LowSpeed_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_interconnect_LowSpeed_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi_interconnect_LowSpeed_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_interconnect_LowSpeed_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi_interconnect_LowSpeed_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_interconnect_LowSpeed_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_interconnect_LowSpeed_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_interconnect_LowSpeed_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi_interconnect_LowSpeed_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi_interconnect_LowSpeed_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_interconnect_LowSpeed_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_interconnect_LowSpeed_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_LowSpeed_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_LowSpeed_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_LowSpeed_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_LowSpeed_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_interconnect_LowSpeed_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_LowSpeed_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_LowSpeed_to_s00_couplers_WREADY;
  assign axi_interconnect_LowSpeed_ACLK_net = ACLK;
  assign axi_interconnect_LowSpeed_ARESETN_net = ARESETN;
  assign axi_interconnect_LowSpeed_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_LowSpeed_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_LowSpeed_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_LowSpeed_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_LowSpeed_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_LowSpeed_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_LowSpeed_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_LowSpeed_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_LowSpeed_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_LowSpeed_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_LowSpeed_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_interconnect_LowSpeed_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_interconnect_LowSpeed_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_LowSpeed_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_interconnect_LowSpeed_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_LowSpeed_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_LowSpeed_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_interconnect_LowSpeed_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi_interconnect_LowSpeed_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_LowSpeed_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_LowSpeed_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_LowSpeed_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_LowSpeed_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_LowSpeed_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_LowSpeed_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_LowSpeed_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_LowSpeed_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_interconnect_LowSpeed_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_interconnect_LowSpeed_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_LowSpeed_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_interconnect_LowSpeed_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi_interconnect_LowSpeed_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_LowSpeed_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_interconnect_LowSpeed_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_interconnect_LowSpeed_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_interconnect_LowSpeed_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_interconnect_LowSpeed_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_LowSpeed_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_interconnect_LowSpeed_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi_interconnect_LowSpeed_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_LowSpeed_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_interconnect_LowSpeed_WREADY = M04_AXI_wready[0];
  m00_couplers_imp_KU7RUS m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_LowSpeed_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_LowSpeed_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_LowSpeed_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_LowSpeed_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_LowSpeed_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_LowSpeed_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_LowSpeed_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_LowSpeed_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_LowSpeed_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_LowSpeed_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_LowSpeed_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_LowSpeed_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_LowSpeed_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_LowSpeed_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_LowSpeed_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_LowSpeed_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_LowSpeed_WVALID),
        .S_ACLK(axi_interconnect_LowSpeed_ACLK_net),
        .S_ARESETN(axi_interconnect_LowSpeed_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_15RUGQP m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_LowSpeed_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_LowSpeed_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_LowSpeed_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_LowSpeed_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_LowSpeed_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_LowSpeed_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_LowSpeed_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_LowSpeed_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_LowSpeed_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_LowSpeed_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_LowSpeed_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_LowSpeed_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_LowSpeed_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_LowSpeed_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_LowSpeed_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_LowSpeed_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_LowSpeed_WVALID),
        .S_ACLK(axi_interconnect_LowSpeed_ACLK_net),
        .S_ARESETN(axi_interconnect_LowSpeed_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_C0AZRJ m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_LowSpeed_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_LowSpeed_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_LowSpeed_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_LowSpeed_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_LowSpeed_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_LowSpeed_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_LowSpeed_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_LowSpeed_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_LowSpeed_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_LowSpeed_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_LowSpeed_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_LowSpeed_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_LowSpeed_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_LowSpeed_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_LowSpeed_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_LowSpeed_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_LowSpeed_WVALID),
        .S_ACLK(axi_interconnect_LowSpeed_ACLK_net),
        .S_ARESETN(axi_interconnect_LowSpeed_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1WHE6MI m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_LowSpeed_ARADDR),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_LowSpeed_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_LowSpeed_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_LowSpeed_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_LowSpeed_AWADDR),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_LowSpeed_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_LowSpeed_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_LowSpeed_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_LowSpeed_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_LowSpeed_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_LowSpeed_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_LowSpeed_RDATA),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_LowSpeed_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_LowSpeed_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_LowSpeed_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_LowSpeed_WDATA),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_LowSpeed_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_LowSpeed_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_LowSpeed_WVALID),
        .S_ACLK(axi_interconnect_LowSpeed_ACLK_net),
        .S_ARESETN(axi_interconnect_LowSpeed_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_12QRMFM m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_LowSpeed_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_LowSpeed_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_LowSpeed_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_LowSpeed_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_LowSpeed_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_LowSpeed_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_LowSpeed_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_LowSpeed_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_LowSpeed_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_LowSpeed_RDATA),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_LowSpeed_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_LowSpeed_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_LowSpeed_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_LowSpeed_WDATA),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_LowSpeed_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_LowSpeed_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_LowSpeed_WVALID),
        .S_ACLK(axi_interconnect_LowSpeed_ACLK_net),
        .S_ARESETN(axi_interconnect_LowSpeed_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  s00_couplers_imp_1QPV9BY s00_couplers
       (.M_ACLK(axi_interconnect_LowSpeed_ACLK_net),
        .M_ARESETN(axi_interconnect_LowSpeed_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_LowSpeed_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_LowSpeed_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_LowSpeed_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_LowSpeed_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_LowSpeed_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_LowSpeed_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_LowSpeed_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_LowSpeed_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_LowSpeed_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_LowSpeed_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_LowSpeed_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_LowSpeed_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_LowSpeed_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_LowSpeed_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_LowSpeed_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_LowSpeed_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_LowSpeed_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_LowSpeed_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_LowSpeed_to_s00_couplers_WVALID));
  soc_xbar_4 xbar
       (.aclk(axi_interconnect_LowSpeed_ACLK_net),
        .aresetn(axi_interconnect_LowSpeed_ARESETN_net),
        .m_axi_araddr({xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[8:0]}),
        .m_axi_arready({xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[8:0]}),
        .m_axi_awready({xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module soc_axi_interconnect_0_2
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [29:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [29:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [255:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [255:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [31:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [63:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [63:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [0:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [0:0]S02_AXI_awid;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  output [0:0]S02_AXI_bid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [63:0]S02_AXI_rdata;
  output [0:0]S02_AXI_rid;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [63:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [7:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [63:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [3:0]S03_AXI_arid;
  input [7:0]S03_AXI_arlen;
  input [0:0]S03_AXI_arlock;
  input [2:0]S03_AXI_arprot;
  output S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input S03_AXI_arvalid;
  input [63:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [3:0]S03_AXI_awid;
  input [7:0]S03_AXI_awlen;
  input [0:0]S03_AXI_awlock;
  input [2:0]S03_AXI_awprot;
  output S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input S03_AXI_awvalid;
  output [3:0]S03_AXI_bid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  output [63:0]S03_AXI_rdata;
  output [3:0]S03_AXI_rid;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input [63:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [7:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire S03_ACLK_1;
  wire S03_ARESETN_1;
  wire axi_interconnect_ddr_ACLK_net;
  wire axi_interconnect_ddr_ARESETN_net;
  wire [31:0]axi_interconnect_ddr_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_ddr_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_ddr_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_ddr_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_ddr_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_ddr_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_ddr_to_s00_couplers_ARQOS;
  wire axi_interconnect_ddr_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_ddr_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_ddr_to_s00_couplers_ARSIZE;
  wire axi_interconnect_ddr_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_ddr_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_ddr_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_ddr_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_ddr_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_ddr_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_ddr_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_ddr_to_s00_couplers_AWQOS;
  wire axi_interconnect_ddr_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_ddr_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_ddr_to_s00_couplers_AWSIZE;
  wire axi_interconnect_ddr_to_s00_couplers_AWVALID;
  wire axi_interconnect_ddr_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_ddr_to_s00_couplers_BRESP;
  wire axi_interconnect_ddr_to_s00_couplers_BVALID;
  wire [255:0]axi_interconnect_ddr_to_s00_couplers_RDATA;
  wire axi_interconnect_ddr_to_s00_couplers_RLAST;
  wire axi_interconnect_ddr_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_ddr_to_s00_couplers_RRESP;
  wire axi_interconnect_ddr_to_s00_couplers_RVALID;
  wire [255:0]axi_interconnect_ddr_to_s00_couplers_WDATA;
  wire axi_interconnect_ddr_to_s00_couplers_WLAST;
  wire axi_interconnect_ddr_to_s00_couplers_WREADY;
  wire [31:0]axi_interconnect_ddr_to_s00_couplers_WSTRB;
  wire axi_interconnect_ddr_to_s00_couplers_WVALID;
  wire [31:0]axi_interconnect_ddr_to_s01_couplers_ARADDR;
  wire [1:0]axi_interconnect_ddr_to_s01_couplers_ARBURST;
  wire [3:0]axi_interconnect_ddr_to_s01_couplers_ARCACHE;
  wire [0:0]axi_interconnect_ddr_to_s01_couplers_ARID;
  wire [7:0]axi_interconnect_ddr_to_s01_couplers_ARLEN;
  wire [0:0]axi_interconnect_ddr_to_s01_couplers_ARLOCK;
  wire [2:0]axi_interconnect_ddr_to_s01_couplers_ARPROT;
  wire [3:0]axi_interconnect_ddr_to_s01_couplers_ARQOS;
  wire axi_interconnect_ddr_to_s01_couplers_ARREADY;
  wire [2:0]axi_interconnect_ddr_to_s01_couplers_ARSIZE;
  wire axi_interconnect_ddr_to_s01_couplers_ARVALID;
  wire [31:0]axi_interconnect_ddr_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_ddr_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_ddr_to_s01_couplers_AWCACHE;
  wire [0:0]axi_interconnect_ddr_to_s01_couplers_AWID;
  wire [7:0]axi_interconnect_ddr_to_s01_couplers_AWLEN;
  wire [0:0]axi_interconnect_ddr_to_s01_couplers_AWLOCK;
  wire [2:0]axi_interconnect_ddr_to_s01_couplers_AWPROT;
  wire [3:0]axi_interconnect_ddr_to_s01_couplers_AWQOS;
  wire axi_interconnect_ddr_to_s01_couplers_AWREADY;
  wire [2:0]axi_interconnect_ddr_to_s01_couplers_AWSIZE;
  wire axi_interconnect_ddr_to_s01_couplers_AWVALID;
  wire [0:0]axi_interconnect_ddr_to_s01_couplers_BID;
  wire axi_interconnect_ddr_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_ddr_to_s01_couplers_BRESP;
  wire axi_interconnect_ddr_to_s01_couplers_BVALID;
  wire [63:0]axi_interconnect_ddr_to_s01_couplers_RDATA;
  wire [0:0]axi_interconnect_ddr_to_s01_couplers_RID;
  wire axi_interconnect_ddr_to_s01_couplers_RLAST;
  wire axi_interconnect_ddr_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_ddr_to_s01_couplers_RRESP;
  wire axi_interconnect_ddr_to_s01_couplers_RVALID;
  wire [63:0]axi_interconnect_ddr_to_s01_couplers_WDATA;
  wire axi_interconnect_ddr_to_s01_couplers_WLAST;
  wire axi_interconnect_ddr_to_s01_couplers_WREADY;
  wire [7:0]axi_interconnect_ddr_to_s01_couplers_WSTRB;
  wire axi_interconnect_ddr_to_s01_couplers_WVALID;
  wire [31:0]axi_interconnect_ddr_to_s02_couplers_ARADDR;
  wire [1:0]axi_interconnect_ddr_to_s02_couplers_ARBURST;
  wire [3:0]axi_interconnect_ddr_to_s02_couplers_ARCACHE;
  wire [0:0]axi_interconnect_ddr_to_s02_couplers_ARID;
  wire [7:0]axi_interconnect_ddr_to_s02_couplers_ARLEN;
  wire [0:0]axi_interconnect_ddr_to_s02_couplers_ARLOCK;
  wire [2:0]axi_interconnect_ddr_to_s02_couplers_ARPROT;
  wire [3:0]axi_interconnect_ddr_to_s02_couplers_ARQOS;
  wire axi_interconnect_ddr_to_s02_couplers_ARREADY;
  wire [2:0]axi_interconnect_ddr_to_s02_couplers_ARSIZE;
  wire axi_interconnect_ddr_to_s02_couplers_ARVALID;
  wire [31:0]axi_interconnect_ddr_to_s02_couplers_AWADDR;
  wire [1:0]axi_interconnect_ddr_to_s02_couplers_AWBURST;
  wire [3:0]axi_interconnect_ddr_to_s02_couplers_AWCACHE;
  wire [0:0]axi_interconnect_ddr_to_s02_couplers_AWID;
  wire [7:0]axi_interconnect_ddr_to_s02_couplers_AWLEN;
  wire [0:0]axi_interconnect_ddr_to_s02_couplers_AWLOCK;
  wire [2:0]axi_interconnect_ddr_to_s02_couplers_AWPROT;
  wire [3:0]axi_interconnect_ddr_to_s02_couplers_AWQOS;
  wire axi_interconnect_ddr_to_s02_couplers_AWREADY;
  wire [2:0]axi_interconnect_ddr_to_s02_couplers_AWSIZE;
  wire axi_interconnect_ddr_to_s02_couplers_AWVALID;
  wire [0:0]axi_interconnect_ddr_to_s02_couplers_BID;
  wire axi_interconnect_ddr_to_s02_couplers_BREADY;
  wire [1:0]axi_interconnect_ddr_to_s02_couplers_BRESP;
  wire axi_interconnect_ddr_to_s02_couplers_BVALID;
  wire [63:0]axi_interconnect_ddr_to_s02_couplers_RDATA;
  wire [0:0]axi_interconnect_ddr_to_s02_couplers_RID;
  wire axi_interconnect_ddr_to_s02_couplers_RLAST;
  wire axi_interconnect_ddr_to_s02_couplers_RREADY;
  wire [1:0]axi_interconnect_ddr_to_s02_couplers_RRESP;
  wire axi_interconnect_ddr_to_s02_couplers_RVALID;
  wire [63:0]axi_interconnect_ddr_to_s02_couplers_WDATA;
  wire axi_interconnect_ddr_to_s02_couplers_WLAST;
  wire axi_interconnect_ddr_to_s02_couplers_WREADY;
  wire [7:0]axi_interconnect_ddr_to_s02_couplers_WSTRB;
  wire axi_interconnect_ddr_to_s02_couplers_WVALID;
  wire [63:0]axi_interconnect_ddr_to_s03_couplers_ARADDR;
  wire [1:0]axi_interconnect_ddr_to_s03_couplers_ARBURST;
  wire [3:0]axi_interconnect_ddr_to_s03_couplers_ARCACHE;
  wire [3:0]axi_interconnect_ddr_to_s03_couplers_ARID;
  wire [7:0]axi_interconnect_ddr_to_s03_couplers_ARLEN;
  wire [0:0]axi_interconnect_ddr_to_s03_couplers_ARLOCK;
  wire [2:0]axi_interconnect_ddr_to_s03_couplers_ARPROT;
  wire axi_interconnect_ddr_to_s03_couplers_ARREADY;
  wire [2:0]axi_interconnect_ddr_to_s03_couplers_ARSIZE;
  wire axi_interconnect_ddr_to_s03_couplers_ARVALID;
  wire [63:0]axi_interconnect_ddr_to_s03_couplers_AWADDR;
  wire [1:0]axi_interconnect_ddr_to_s03_couplers_AWBURST;
  wire [3:0]axi_interconnect_ddr_to_s03_couplers_AWCACHE;
  wire [3:0]axi_interconnect_ddr_to_s03_couplers_AWID;
  wire [7:0]axi_interconnect_ddr_to_s03_couplers_AWLEN;
  wire [0:0]axi_interconnect_ddr_to_s03_couplers_AWLOCK;
  wire [2:0]axi_interconnect_ddr_to_s03_couplers_AWPROT;
  wire axi_interconnect_ddr_to_s03_couplers_AWREADY;
  wire [2:0]axi_interconnect_ddr_to_s03_couplers_AWSIZE;
  wire axi_interconnect_ddr_to_s03_couplers_AWVALID;
  wire [3:0]axi_interconnect_ddr_to_s03_couplers_BID;
  wire axi_interconnect_ddr_to_s03_couplers_BREADY;
  wire [1:0]axi_interconnect_ddr_to_s03_couplers_BRESP;
  wire axi_interconnect_ddr_to_s03_couplers_BVALID;
  wire [63:0]axi_interconnect_ddr_to_s03_couplers_RDATA;
  wire [3:0]axi_interconnect_ddr_to_s03_couplers_RID;
  wire axi_interconnect_ddr_to_s03_couplers_RLAST;
  wire axi_interconnect_ddr_to_s03_couplers_RREADY;
  wire [1:0]axi_interconnect_ddr_to_s03_couplers_RRESP;
  wire axi_interconnect_ddr_to_s03_couplers_RVALID;
  wire [63:0]axi_interconnect_ddr_to_s03_couplers_WDATA;
  wire axi_interconnect_ddr_to_s03_couplers_WLAST;
  wire axi_interconnect_ddr_to_s03_couplers_WREADY;
  wire [7:0]axi_interconnect_ddr_to_s03_couplers_WSTRB;
  wire axi_interconnect_ddr_to_s03_couplers_WVALID;
  wire [29:0]m00_couplers_to_axi_interconnect_ddr_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_ddr_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_ddr_ARCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_ddr_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_ddr_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_ddr_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_ddr_ARQOS;
  wire m00_couplers_to_axi_interconnect_ddr_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_ddr_ARSIZE;
  wire m00_couplers_to_axi_interconnect_ddr_ARVALID;
  wire [29:0]m00_couplers_to_axi_interconnect_ddr_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_ddr_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_ddr_AWCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_ddr_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_ddr_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_ddr_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_ddr_AWQOS;
  wire m00_couplers_to_axi_interconnect_ddr_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_ddr_AWSIZE;
  wire m00_couplers_to_axi_interconnect_ddr_AWVALID;
  wire m00_couplers_to_axi_interconnect_ddr_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_ddr_BRESP;
  wire m00_couplers_to_axi_interconnect_ddr_BVALID;
  wire [127:0]m00_couplers_to_axi_interconnect_ddr_RDATA;
  wire m00_couplers_to_axi_interconnect_ddr_RLAST;
  wire m00_couplers_to_axi_interconnect_ddr_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_ddr_RRESP;
  wire m00_couplers_to_axi_interconnect_ddr_RVALID;
  wire [127:0]m00_couplers_to_axi_interconnect_ddr_WDATA;
  wire m00_couplers_to_axi_interconnect_ddr_WLAST;
  wire m00_couplers_to_axi_interconnect_ddr_WREADY;
  wire [15:0]m00_couplers_to_axi_interconnect_ddr_WSTRB;
  wire m00_couplers_to_axi_interconnect_ddr_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [255:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [255:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [31:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [511:256]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [255:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [31:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [767:512]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [255:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [31:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [63:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire s03_couplers_to_xbar_ARVALID;
  wire [63:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [1023:768]s03_couplers_to_xbar_RDATA;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [255:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [31:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [1:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [255:0]xbar_to_m00_couplers_RDATA;
  wire [1:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [255:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [31:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[29:0] = m00_couplers_to_axi_interconnect_ddr_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_ddr_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_ddr_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_ddr_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_ddr_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_ddr_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_ddr_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_ddr_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_ddr_ARVALID;
  assign M00_AXI_awaddr[29:0] = m00_couplers_to_axi_interconnect_ddr_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_ddr_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_ddr_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_ddr_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_ddr_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_ddr_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_ddr_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_ddr_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_ddr_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_ddr_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_ddr_RREADY;
  assign M00_AXI_wdata[127:0] = m00_couplers_to_axi_interconnect_ddr_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_ddr_WLAST;
  assign M00_AXI_wstrb[15:0] = m00_couplers_to_axi_interconnect_ddr_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_ddr_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_ddr_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_ddr_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_ddr_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_ddr_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[255:0] = axi_interconnect_ddr_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_ddr_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_ddr_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_ddr_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_ddr_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_interconnect_ddr_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_interconnect_ddr_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[0] = axi_interconnect_ddr_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = axi_interconnect_ddr_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_ddr_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[63:0] = axi_interconnect_ddr_to_s01_couplers_RDATA;
  assign S01_AXI_rid[0] = axi_interconnect_ddr_to_s01_couplers_RID;
  assign S01_AXI_rlast = axi_interconnect_ddr_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_interconnect_ddr_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_ddr_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_interconnect_ddr_to_s01_couplers_WREADY;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = axi_interconnect_ddr_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = axi_interconnect_ddr_to_s02_couplers_AWREADY;
  assign S02_AXI_bid[0] = axi_interconnect_ddr_to_s02_couplers_BID;
  assign S02_AXI_bresp[1:0] = axi_interconnect_ddr_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_interconnect_ddr_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[63:0] = axi_interconnect_ddr_to_s02_couplers_RDATA;
  assign S02_AXI_rid[0] = axi_interconnect_ddr_to_s02_couplers_RID;
  assign S02_AXI_rlast = axi_interconnect_ddr_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_interconnect_ddr_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_interconnect_ddr_to_s02_couplers_RVALID;
  assign S02_AXI_wready = axi_interconnect_ddr_to_s02_couplers_WREADY;
  assign S03_ACLK_1 = S03_ACLK;
  assign S03_ARESETN_1 = S03_ARESETN;
  assign S03_AXI_arready = axi_interconnect_ddr_to_s03_couplers_ARREADY;
  assign S03_AXI_awready = axi_interconnect_ddr_to_s03_couplers_AWREADY;
  assign S03_AXI_bid[3:0] = axi_interconnect_ddr_to_s03_couplers_BID;
  assign S03_AXI_bresp[1:0] = axi_interconnect_ddr_to_s03_couplers_BRESP;
  assign S03_AXI_bvalid = axi_interconnect_ddr_to_s03_couplers_BVALID;
  assign S03_AXI_rdata[63:0] = axi_interconnect_ddr_to_s03_couplers_RDATA;
  assign S03_AXI_rid[3:0] = axi_interconnect_ddr_to_s03_couplers_RID;
  assign S03_AXI_rlast = axi_interconnect_ddr_to_s03_couplers_RLAST;
  assign S03_AXI_rresp[1:0] = axi_interconnect_ddr_to_s03_couplers_RRESP;
  assign S03_AXI_rvalid = axi_interconnect_ddr_to_s03_couplers_RVALID;
  assign S03_AXI_wready = axi_interconnect_ddr_to_s03_couplers_WREADY;
  assign axi_interconnect_ddr_ACLK_net = ACLK;
  assign axi_interconnect_ddr_ARESETN_net = ARESETN;
  assign axi_interconnect_ddr_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_ddr_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_ddr_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_ddr_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_ddr_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_ddr_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_ddr_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_ddr_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_ddr_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_ddr_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_ddr_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_ddr_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_ddr_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_ddr_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_ddr_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_ddr_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_ddr_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_ddr_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_ddr_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_ddr_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_ddr_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_ddr_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_ddr_to_s00_couplers_WDATA = S00_AXI_wdata[255:0];
  assign axi_interconnect_ddr_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_ddr_to_s00_couplers_WSTRB = S00_AXI_wstrb[31:0];
  assign axi_interconnect_ddr_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_ddr_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_interconnect_ddr_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_interconnect_ddr_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_interconnect_ddr_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign axi_interconnect_ddr_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_interconnect_ddr_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign axi_interconnect_ddr_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_ddr_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_interconnect_ddr_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_interconnect_ddr_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_ddr_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_interconnect_ddr_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_ddr_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_ddr_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign axi_interconnect_ddr_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_ddr_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign axi_interconnect_ddr_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_ddr_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_interconnect_ddr_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_ddr_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_ddr_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_ddr_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_ddr_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign axi_interconnect_ddr_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_ddr_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign axi_interconnect_ddr_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign axi_interconnect_ddr_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign axi_interconnect_ddr_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_interconnect_ddr_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_interconnect_ddr_to_s02_couplers_ARID = S02_AXI_arid[0];
  assign axi_interconnect_ddr_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_interconnect_ddr_to_s02_couplers_ARLOCK = S02_AXI_arlock[0];
  assign axi_interconnect_ddr_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_interconnect_ddr_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign axi_interconnect_ddr_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_interconnect_ddr_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_interconnect_ddr_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign axi_interconnect_ddr_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_interconnect_ddr_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_interconnect_ddr_to_s02_couplers_AWID = S02_AXI_awid[0];
  assign axi_interconnect_ddr_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_interconnect_ddr_to_s02_couplers_AWLOCK = S02_AXI_awlock[0];
  assign axi_interconnect_ddr_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_interconnect_ddr_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign axi_interconnect_ddr_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_interconnect_ddr_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_interconnect_ddr_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_interconnect_ddr_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_interconnect_ddr_to_s02_couplers_WDATA = S02_AXI_wdata[63:0];
  assign axi_interconnect_ddr_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_interconnect_ddr_to_s02_couplers_WSTRB = S02_AXI_wstrb[7:0];
  assign axi_interconnect_ddr_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign axi_interconnect_ddr_to_s03_couplers_ARADDR = S03_AXI_araddr[63:0];
  assign axi_interconnect_ddr_to_s03_couplers_ARBURST = S03_AXI_arburst[1:0];
  assign axi_interconnect_ddr_to_s03_couplers_ARCACHE = S03_AXI_arcache[3:0];
  assign axi_interconnect_ddr_to_s03_couplers_ARID = S03_AXI_arid[3:0];
  assign axi_interconnect_ddr_to_s03_couplers_ARLEN = S03_AXI_arlen[7:0];
  assign axi_interconnect_ddr_to_s03_couplers_ARLOCK = S03_AXI_arlock[0];
  assign axi_interconnect_ddr_to_s03_couplers_ARPROT = S03_AXI_arprot[2:0];
  assign axi_interconnect_ddr_to_s03_couplers_ARSIZE = S03_AXI_arsize[2:0];
  assign axi_interconnect_ddr_to_s03_couplers_ARVALID = S03_AXI_arvalid;
  assign axi_interconnect_ddr_to_s03_couplers_AWADDR = S03_AXI_awaddr[63:0];
  assign axi_interconnect_ddr_to_s03_couplers_AWBURST = S03_AXI_awburst[1:0];
  assign axi_interconnect_ddr_to_s03_couplers_AWCACHE = S03_AXI_awcache[3:0];
  assign axi_interconnect_ddr_to_s03_couplers_AWID = S03_AXI_awid[3:0];
  assign axi_interconnect_ddr_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign axi_interconnect_ddr_to_s03_couplers_AWLOCK = S03_AXI_awlock[0];
  assign axi_interconnect_ddr_to_s03_couplers_AWPROT = S03_AXI_awprot[2:0];
  assign axi_interconnect_ddr_to_s03_couplers_AWSIZE = S03_AXI_awsize[2:0];
  assign axi_interconnect_ddr_to_s03_couplers_AWVALID = S03_AXI_awvalid;
  assign axi_interconnect_ddr_to_s03_couplers_BREADY = S03_AXI_bready;
  assign axi_interconnect_ddr_to_s03_couplers_RREADY = S03_AXI_rready;
  assign axi_interconnect_ddr_to_s03_couplers_WDATA = S03_AXI_wdata[63:0];
  assign axi_interconnect_ddr_to_s03_couplers_WLAST = S03_AXI_wlast;
  assign axi_interconnect_ddr_to_s03_couplers_WSTRB = S03_AXI_wstrb[7:0];
  assign axi_interconnect_ddr_to_s03_couplers_WVALID = S03_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_ddr_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_ddr_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_ddr_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_ddr_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_ddr_RDATA = M00_AXI_rdata[127:0];
  assign m00_couplers_to_axi_interconnect_ddr_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_ddr_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_ddr_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_ddr_WREADY = M00_AXI_wready;
  m00_couplers_imp_10IPXCK m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_ddr_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_ddr_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_ddr_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_ddr_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_ddr_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_ddr_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_ddr_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_ddr_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_ddr_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_ddr_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_ddr_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_ddr_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_ddr_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_ddr_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_ddr_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_ddr_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_ddr_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_ddr_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_ddr_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_ddr_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_ddr_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_ddr_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_ddr_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_ddr_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_ddr_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_ddr_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_ddr_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_ddr_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_ddr_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_ddr_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_ddr_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_ddr_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_ddr_WVALID),
        .S_ACLK(axi_interconnect_ddr_ACLK_net),
        .S_ARESETN(axi_interconnect_ddr_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_BT494E s00_couplers
       (.M_ACLK(axi_interconnect_ddr_ACLK_net),
        .M_ARESETN(axi_interconnect_ddr_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_ddr_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_ddr_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_ddr_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_ddr_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_ddr_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_ddr_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_ddr_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_ddr_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_ddr_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_ddr_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_ddr_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_ddr_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_ddr_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_ddr_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_ddr_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_ddr_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_ddr_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_ddr_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_ddr_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_ddr_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_ddr_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_ddr_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_ddr_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_ddr_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_ddr_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_ddr_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_ddr_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_ddr_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_ddr_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_ddr_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_ddr_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_ddr_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_ddr_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_ddr_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_ddr_to_s00_couplers_WVALID));
  s01_couplers_imp_1WK7KX7 s01_couplers
       (.M_ACLK(axi_interconnect_ddr_ACLK_net),
        .M_ARESETN(axi_interconnect_ddr_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_ddr_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_ddr_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_ddr_to_s01_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_ddr_to_s01_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_ddr_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_ddr_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_ddr_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_ddr_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_ddr_to_s01_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_ddr_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_ddr_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_ddr_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_ddr_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_ddr_to_s01_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_ddr_to_s01_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_ddr_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_ddr_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_ddr_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_ddr_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_ddr_to_s01_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_ddr_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_ddr_to_s01_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_ddr_to_s01_couplers_BID),
        .S_AXI_bready(axi_interconnect_ddr_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_ddr_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_ddr_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_ddr_to_s01_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_ddr_to_s01_couplers_RID),
        .S_AXI_rlast(axi_interconnect_ddr_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_ddr_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_ddr_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_ddr_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_ddr_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_ddr_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_ddr_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_ddr_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_ddr_to_s01_couplers_WVALID));
  s02_couplers_imp_KRFLGL s02_couplers
       (.M_ACLK(axi_interconnect_ddr_ACLK_net),
        .M_ARESETN(axi_interconnect_ddr_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_ddr_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_ddr_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_ddr_to_s02_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_ddr_to_s02_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_ddr_to_s02_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_ddr_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_ddr_to_s02_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_ddr_to_s02_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_ddr_to_s02_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_ddr_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_ddr_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_ddr_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_ddr_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_ddr_to_s02_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_ddr_to_s02_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_ddr_to_s02_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_ddr_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_ddr_to_s02_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_ddr_to_s02_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_ddr_to_s02_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_ddr_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_ddr_to_s02_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_ddr_to_s02_couplers_BID),
        .S_AXI_bready(axi_interconnect_ddr_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_ddr_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_ddr_to_s02_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_ddr_to_s02_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_ddr_to_s02_couplers_RID),
        .S_AXI_rlast(axi_interconnect_ddr_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_ddr_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_ddr_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_ddr_to_s02_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_ddr_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_ddr_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_ddr_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_ddr_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_ddr_to_s02_couplers_WVALID));
  s03_couplers_imp_15YZY00 s03_couplers
       (.M_ACLK(axi_interconnect_ddr_ACLK_net),
        .M_ARESETN(axi_interconnect_ddr_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(S03_ACLK_1),
        .S_ARESETN(S03_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_ddr_to_s03_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_ddr_to_s03_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_ddr_to_s03_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_ddr_to_s03_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_ddr_to_s03_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_ddr_to_s03_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_ddr_to_s03_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_ddr_to_s03_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_ddr_to_s03_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_ddr_to_s03_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_ddr_to_s03_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_ddr_to_s03_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_ddr_to_s03_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_ddr_to_s03_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_ddr_to_s03_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_ddr_to_s03_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_ddr_to_s03_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_ddr_to_s03_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_ddr_to_s03_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_ddr_to_s03_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_ddr_to_s03_couplers_BID),
        .S_AXI_bready(axi_interconnect_ddr_to_s03_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_ddr_to_s03_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_ddr_to_s03_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_ddr_to_s03_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_ddr_to_s03_couplers_RID),
        .S_AXI_rlast(axi_interconnect_ddr_to_s03_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_ddr_to_s03_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_ddr_to_s03_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_ddr_to_s03_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_ddr_to_s03_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_ddr_to_s03_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_ddr_to_s03_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_ddr_to_s03_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_ddr_to_s03_couplers_WVALID));
  soc_xbar_5 xbar
       (.aclk(axi_interconnect_ddr_ACLK_net),
        .aresetn(axi_interconnect_ddr_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s03_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s03_couplers_to_xbar_ARBURST,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s03_couplers_to_xbar_ARCACHE,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s03_couplers_to_xbar_ARLOCK,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s03_couplers_to_xbar_ARQOS,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s03_couplers_to_xbar_ARSIZE,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s03_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule
