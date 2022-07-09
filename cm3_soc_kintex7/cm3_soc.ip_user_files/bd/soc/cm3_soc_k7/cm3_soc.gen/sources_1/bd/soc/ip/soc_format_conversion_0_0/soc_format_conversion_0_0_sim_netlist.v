// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 15 12:20:10 2022
// Host        : DESKTOP-L1H3OJ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/soc/cm3_soc_k7/cm3_soc.gen/sources_1/bd/soc/ip/soc_format_conversion_0_0/soc_format_conversion_0_0_sim_netlist.v
// Design      : soc_format_conversion_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_format_conversion_0_0,format_conversion,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "format_conversion,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module soc_format_conversion_0_0
   (clk,
    arstn,
    filter_dout_tdata,
    filter_dout_tvalid,
    filter_dout_tready,
    ifft_input_tdata,
    ifft_input_tvalid,
    ifft_input_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF filter_dout:ifft_input, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input clk;
  input arstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 filter_dout TDATA" *) input [63:0]filter_dout_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 filter_dout TVALID" *) input filter_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 filter_dout TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME filter_dout, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output filter_dout_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_input TDATA" *) output [63:0]ifft_input_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_input TVALID" *) output ifft_input_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_input TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ifft_input, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input ifft_input_tready;

  wire [63:0]filter_dout_tdata;
  wire filter_dout_tvalid;
  wire ifft_input_tready;

  assign filter_dout_tready = ifft_input_tready;
  assign ifft_input_tdata[63:32] = filter_dout_tdata[31:0];
  assign ifft_input_tdata[31:0] = filter_dout_tdata[63:32];
  assign ifft_input_tvalid = filter_dout_tvalid;
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
