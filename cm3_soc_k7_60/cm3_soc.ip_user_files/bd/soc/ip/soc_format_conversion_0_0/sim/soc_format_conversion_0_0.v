// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:format_conversion:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module soc_format_conversion_0_0 (
  clk,
  arstn,
  filter_dout_tdata,
  filter_dout_tvalid,
  filter_dout_tready,
  ifft_input_tdata,
  ifft_input_tvalid,
  ifft_input_tready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF filter_dout:ifft_input, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire arstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 filter_dout TDATA" *)
input wire [63 : 0] filter_dout_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 filter_dout TVALID" *)
input wire filter_dout_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME filter_dout, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 filter_dout TREADY" *)
output wire filter_dout_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_input TDATA" *)
output wire [63 : 0] ifft_input_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_input TVALID" *)
output wire ifft_input_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ifft_input, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_input TREADY" *)
input wire ifft_input_tready;

  format_conversion inst (
    .clk(clk),
    .arstn(arstn),
    .filter_dout_tdata(filter_dout_tdata),
    .filter_dout_tvalid(filter_dout_tvalid),
    .filter_dout_tready(filter_dout_tready),
    .ifft_input_tdata(ifft_input_tdata),
    .ifft_input_tvalid(ifft_input_tvalid),
    .ifft_input_tready(ifft_input_tready)
  );
endmodule
