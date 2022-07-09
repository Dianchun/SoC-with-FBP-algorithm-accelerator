// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 15 12:20:10 2022
// Host        : DESKTOP-L1H3OJ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/soc/cm3_soc_k7/cm3_soc.gen/sources_1/bd/soc/ip/soc_swdio_tri_buffer_0_0/soc_swdio_tri_buffer_0_0_sim_netlist.v
// Design      : soc_swdio_tri_buffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_swdio_tri_buffer_0_0,swdio_tri_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "swdio_tri_buffer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module soc_swdio_tri_buffer_0_0
   (swd_o,
    swd_i,
    swd_oe,
    swd_io);
  input swd_o;
  output swd_i;
  input swd_oe;
  inout swd_io;

  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire swd_i;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire swd_io;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire swd_o;
  wire swd_oe;

  soc_swdio_tri_buffer_0_0_swdio_tri_buffer inst
       (.swd_i(swd_i),
        .swd_io(swd_io),
        .swd_o(swd_o),
        .swd_oe(swd_oe));
endmodule

(* ORIG_REF_NAME = "swdio_tri_buffer" *) 
module soc_swdio_tri_buffer_0_0_swdio_tri_buffer
   (swd_i,
    swd_io,
    swd_o,
    swd_oe);
  output swd_i;
  inout swd_io;
  input swd_o;
  input swd_oe;

  wire T0;
  wire swd_i;
  wire swd_io;
  wire swd_o;
  wire swd_oe;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    swd_iobuf_inst
       (.I(swd_o),
        .IO(swd_io),
        .O(swd_i),
        .T(T0));
  LUT1 #(
    .INIT(2'h1)) 
    swd_iobuf_inst_i_1
       (.I0(swd_oe),
        .O(T0));
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
