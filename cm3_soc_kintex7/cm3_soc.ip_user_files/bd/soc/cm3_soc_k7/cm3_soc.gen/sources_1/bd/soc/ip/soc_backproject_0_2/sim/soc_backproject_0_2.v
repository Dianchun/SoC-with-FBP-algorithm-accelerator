// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:backproject:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module soc_backproject_0_2 (
  clk,
  arstn,
  img_base_addr_valid,
  img_base_addr,
  start_fbp,
  finsh_fbp,
  start_one_new_txn_angle_data,
  get_next_angle,
  one_angle_txn_done,
  angle_data_txn_done,
  angle_data_tdata,
  angle_data_tvalid,
  angle_data_tready,
  m00_axi_mem_error,
  m00_axi_mem_awid,
  m00_axi_mem_awaddr,
  m00_axi_mem_awlen,
  m00_axi_mem_awsize,
  m00_axi_mem_awburst,
  m00_axi_mem_awlock,
  m00_axi_mem_awcache,
  m00_axi_mem_awprot,
  m00_axi_mem_awqos,
  m00_axi_mem_awuser,
  m00_axi_mem_awvalid,
  m00_axi_mem_awready,
  m00_axi_mem_wdata,
  m00_axi_mem_wstrb,
  m00_axi_mem_wlast,
  m00_axi_mem_wuser,
  m00_axi_mem_wvalid,
  m00_axi_mem_wready,
  m00_axi_mem_bid,
  m00_axi_mem_bresp,
  m00_axi_mem_buser,
  m00_axi_mem_bvalid,
  m00_axi_mem_bready,
  m00_axi_mem_arid,
  m00_axi_mem_araddr,
  m00_axi_mem_arlen,
  m00_axi_mem_arsize,
  m00_axi_mem_arburst,
  m00_axi_mem_arlock,
  m00_axi_mem_arcache,
  m00_axi_mem_arprot,
  m00_axi_mem_arqos,
  m00_axi_mem_aruser,
  m00_axi_mem_arvalid,
  m00_axi_mem_arready,
  m00_axi_mem_rid,
  m00_axi_mem_rdata,
  m00_axi_mem_rresp,
  m00_axi_mem_rlast,
  m00_axi_mem_ruser,
  m00_axi_mem_rvalid,
  m00_axi_mem_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF angle_data:m00_axi_mem, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire arstn;
input wire img_base_addr_valid;
input wire [31 : 0] img_base_addr;
input wire start_fbp;
output wire finsh_fbp;
output wire start_one_new_txn_angle_data;
output wire get_next_angle;
input wire one_angle_txn_done;
input wire angle_data_txn_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 angle_data TDATA" *)
input wire [63 : 0] angle_data_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 angle_data TVALID" *)
input wire angle_data_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME angle_data, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65536} bitoffset {attr\
ibs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} max\
imum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65536} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xn_re {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_re} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dep\
endency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 65504} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {re\
solve_type generated dependency frame_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long\
 minimum {} maximum {}} value 31} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}} field_xn_im {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xn_im} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type a\
utomatic dependency {} format long minimum {} maximum {}} value 65504} bitoffset {attribs {resolve_type generated dependency xn_im_offset format long minimum {} maximum {}} value 32} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency frame_size format long minimum {} maximum {}} value 1024} stride {attribs {resolve_type generated dependency frame_stride format long minimum {} maximum {}} \
value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xn_width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency xn_fractwidth format long minimum {} maximum {}} value 31} signed {attribs {resolve_type immediate depend\
ency {} format bool minimum {} maximum {}} value true}}}}}}}}}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_xk_index {name {attribs {resolve_type immediate dependency {} format string minimum {} m\
aximum {}} value xk_index} enabled {attribs {resolve_type generated dependency xk_index_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency xk_index_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_\
type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_blk_exp {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value blk_exp} enabled {attribs {resolve_type generated dependency blk_exp_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum \
{} maximum {}} value 5} bitoffset {attribs {resolve_type generated dependency blk_exp_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dep\
endency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} field_ovflo {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value ovflo} enabled {a\
ttribs {resolve_type generated dependency ovflo_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type generated dependency ovflo_offset format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format strin\
g minimum {} maximum {}} value {}} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {\
} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 angle_data TREADY" *)
output wire angle_data_tready;
output wire m00_axi_mem_error;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWID" *)
output wire [0 : 0] m00_axi_mem_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWADDR" *)
output wire [31 : 0] m00_axi_mem_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWLEN" *)
output wire [7 : 0] m00_axi_mem_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWSIZE" *)
output wire [2 : 0] m00_axi_mem_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWBURST" *)
output wire [1 : 0] m00_axi_mem_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWLOCK" *)
output wire m00_axi_mem_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWCACHE" *)
output wire [3 : 0] m00_axi_mem_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWPROT" *)
output wire [2 : 0] m00_axi_mem_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWQOS" *)
output wire [3 : 0] m00_axi_mem_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWUSER" *)
output wire [0 : 0] m00_axi_mem_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWVALID" *)
output wire m00_axi_mem_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem AWREADY" *)
input wire m00_axi_mem_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem WDATA" *)
output wire [63 : 0] m00_axi_mem_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem WSTRB" *)
output wire [7 : 0] m00_axi_mem_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem WLAST" *)
output wire m00_axi_mem_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem WUSER" *)
output wire [0 : 0] m00_axi_mem_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem WVALID" *)
output wire m00_axi_mem_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem WREADY" *)
input wire m00_axi_mem_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem BID" *)
input wire [0 : 0] m00_axi_mem_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem BRESP" *)
input wire [1 : 0] m00_axi_mem_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem BUSER" *)
input wire [0 : 0] m00_axi_mem_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem BVALID" *)
input wire m00_axi_mem_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem BREADY" *)
output wire m00_axi_mem_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARID" *)
output wire [0 : 0] m00_axi_mem_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARADDR" *)
output wire [31 : 0] m00_axi_mem_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARLEN" *)
output wire [7 : 0] m00_axi_mem_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARSIZE" *)
output wire [2 : 0] m00_axi_mem_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARBURST" *)
output wire [1 : 0] m00_axi_mem_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARLOCK" *)
output wire m00_axi_mem_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARCACHE" *)
output wire [3 : 0] m00_axi_mem_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARPROT" *)
output wire [2 : 0] m00_axi_mem_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARQOS" *)
output wire [3 : 0] m00_axi_mem_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARUSER" *)
output wire [0 : 0] m00_axi_mem_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARVALID" *)
output wire m00_axi_mem_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem ARREADY" *)
input wire m00_axi_mem_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem RID" *)
input wire [0 : 0] m00_axi_mem_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem RDATA" *)
input wire [63 : 0] m00_axi_mem_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem RRESP" *)
input wire [1 : 0] m00_axi_mem_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem RLAST" *)
input wire m00_axi_mem_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem RUSER" *)
input wire [0 : 0] m00_axi_mem_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem RVALID" *)
input wire m00_axi_mem_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axi_mem, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 200000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_\
THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m00_axi_mem RREADY" *)
output wire m00_axi_mem_rready;

  backproject #(
    .FFT_N(1024),
    .ANGEL_DATA_LEN(729),
    .ANGEL_DATA_LEN_HALF(365),
    .IMG_N(512),
    .ANGLE_NUM(180),
    .PIPELINES_NUM(10),
    .C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR(32'H80000000),
    .C_M00_AXI_MEM_BURST_LEN(256),
    .C_M00_AXI_MEM_ID_WIDTH(1),
    .C_M00_AXI_MEM_ADDR_WIDTH(32),
    .C_M00_AXI_MEM_DATA_WIDTH(64),
    .C_M00_AXI_MEM_AWUSER_WIDTH(0),
    .C_M00_AXI_MEM_ARUSER_WIDTH(0),
    .C_M00_AXI_MEM_WUSER_WIDTH(0),
    .C_M00_AXI_MEM_RUSER_WIDTH(0),
    .C_M00_AXI_MEM_BUSER_WIDTH(0)
  ) inst (
    .clk(clk),
    .arstn(arstn),
    .img_base_addr_valid(img_base_addr_valid),
    .img_base_addr(img_base_addr),
    .start_fbp(start_fbp),
    .finsh_fbp(finsh_fbp),
    .start_one_new_txn_angle_data(start_one_new_txn_angle_data),
    .get_next_angle(get_next_angle),
    .one_angle_txn_done(one_angle_txn_done),
    .angle_data_txn_done(angle_data_txn_done),
    .angle_data_tdata(angle_data_tdata),
    .angle_data_tvalid(angle_data_tvalid),
    .angle_data_tready(angle_data_tready),
    .m00_axi_mem_error(m00_axi_mem_error),
    .m00_axi_mem_awid(m00_axi_mem_awid),
    .m00_axi_mem_awaddr(m00_axi_mem_awaddr),
    .m00_axi_mem_awlen(m00_axi_mem_awlen),
    .m00_axi_mem_awsize(m00_axi_mem_awsize),
    .m00_axi_mem_awburst(m00_axi_mem_awburst),
    .m00_axi_mem_awlock(m00_axi_mem_awlock),
    .m00_axi_mem_awcache(m00_axi_mem_awcache),
    .m00_axi_mem_awprot(m00_axi_mem_awprot),
    .m00_axi_mem_awqos(m00_axi_mem_awqos),
    .m00_axi_mem_awuser(m00_axi_mem_awuser),
    .m00_axi_mem_awvalid(m00_axi_mem_awvalid),
    .m00_axi_mem_awready(m00_axi_mem_awready),
    .m00_axi_mem_wdata(m00_axi_mem_wdata),
    .m00_axi_mem_wstrb(m00_axi_mem_wstrb),
    .m00_axi_mem_wlast(m00_axi_mem_wlast),
    .m00_axi_mem_wuser(m00_axi_mem_wuser),
    .m00_axi_mem_wvalid(m00_axi_mem_wvalid),
    .m00_axi_mem_wready(m00_axi_mem_wready),
    .m00_axi_mem_bid(m00_axi_mem_bid),
    .m00_axi_mem_bresp(m00_axi_mem_bresp),
    .m00_axi_mem_buser(m00_axi_mem_buser),
    .m00_axi_mem_bvalid(m00_axi_mem_bvalid),
    .m00_axi_mem_bready(m00_axi_mem_bready),
    .m00_axi_mem_arid(m00_axi_mem_arid),
    .m00_axi_mem_araddr(m00_axi_mem_araddr),
    .m00_axi_mem_arlen(m00_axi_mem_arlen),
    .m00_axi_mem_arsize(m00_axi_mem_arsize),
    .m00_axi_mem_arburst(m00_axi_mem_arburst),
    .m00_axi_mem_arlock(m00_axi_mem_arlock),
    .m00_axi_mem_arcache(m00_axi_mem_arcache),
    .m00_axi_mem_arprot(m00_axi_mem_arprot),
    .m00_axi_mem_arqos(m00_axi_mem_arqos),
    .m00_axi_mem_aruser(m00_axi_mem_aruser),
    .m00_axi_mem_arvalid(m00_axi_mem_arvalid),
    .m00_axi_mem_arready(m00_axi_mem_arready),
    .m00_axi_mem_rid(m00_axi_mem_rid),
    .m00_axi_mem_rdata(m00_axi_mem_rdata),
    .m00_axi_mem_rresp(m00_axi_mem_rresp),
    .m00_axi_mem_rlast(m00_axi_mem_rlast),
    .m00_axi_mem_ruser(m00_axi_mem_ruser),
    .m00_axi_mem_rvalid(m00_axi_mem_rvalid),
    .m00_axi_mem_rready(m00_axi_mem_rready)
  );
endmodule
