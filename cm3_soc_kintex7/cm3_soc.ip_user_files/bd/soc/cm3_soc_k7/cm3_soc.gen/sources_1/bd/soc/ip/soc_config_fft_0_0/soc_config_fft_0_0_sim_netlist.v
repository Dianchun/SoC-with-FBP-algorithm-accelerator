// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Apr 15 12:20:21 2022
// Host        : DESKTOP-L1H3OJ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/soc/cm3_soc_k7/cm3_soc.gen/sources_1/bd/soc/ip/soc_config_fft_0_0/soc_config_fft_0_0_sim_netlist.v
// Design      : soc_config_fft_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_config_fft_0_0,config_fft,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "config_fft,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module soc_config_fft_0_0
   (clk,
    arstn,
    fft_config_tdata,
    fft_config_tready,
    fft_config_tvalid,
    ifft_config_tdata,
    ifft_config_tready,
    ifft_config_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF fft_config:ifft_config, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, INSERT_VIP 0" *) input clk;
  input arstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_config TDATA" *) output [15:0]fft_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_config TREADY" *) input fft_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_config TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fft_config, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output fft_config_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_config TDATA" *) output [15:0]ifft_config_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_config TREADY" *) input ifft_config_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 ifft_config TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ifft_config, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output ifft_config_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire arstn;
  wire clk;
  wire fft_config_tvalid;
  wire ifft_config_tvalid;

  assign fft_config_tdata[15] = \<const0> ;
  assign fft_config_tdata[14] = \<const0> ;
  assign fft_config_tdata[13] = \<const0> ;
  assign fft_config_tdata[12] = \<const0> ;
  assign fft_config_tdata[11] = \<const0> ;
  assign fft_config_tdata[10] = \<const0> ;
  assign fft_config_tdata[9] = \<const0> ;
  assign fft_config_tdata[8] = \<const0> ;
  assign fft_config_tdata[7] = \<const0> ;
  assign fft_config_tdata[6] = \<const0> ;
  assign fft_config_tdata[5] = \<const0> ;
  assign fft_config_tdata[4] = \<const0> ;
  assign fft_config_tdata[3] = \<const0> ;
  assign fft_config_tdata[2] = \<const0> ;
  assign fft_config_tdata[1] = \<const0> ;
  assign fft_config_tdata[0] = \<const1> ;
  assign ifft_config_tdata[15] = \<const0> ;
  assign ifft_config_tdata[14] = \<const0> ;
  assign ifft_config_tdata[13] = \<const0> ;
  assign ifft_config_tdata[12] = \<const0> ;
  assign ifft_config_tdata[11] = \<const0> ;
  assign ifft_config_tdata[10] = \<const0> ;
  assign ifft_config_tdata[9] = \<const0> ;
  assign ifft_config_tdata[8] = \<const0> ;
  assign ifft_config_tdata[7] = \<const0> ;
  assign ifft_config_tdata[6] = \<const0> ;
  assign ifft_config_tdata[5] = \<const0> ;
  assign ifft_config_tdata[4] = \<const0> ;
  assign ifft_config_tdata[3] = \<const0> ;
  assign ifft_config_tdata[2] = \<const0> ;
  assign ifft_config_tdata[1] = \<const0> ;
  assign ifft_config_tdata[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  soc_config_fft_0_0_config_fft inst
       (.arstn(arstn),
        .clk(clk),
        .fft_config_tvalid_reg_0(fft_config_tvalid),
        .ifft_config_tvalid_reg_0(ifft_config_tvalid));
endmodule

(* ORIG_REF_NAME = "config_fft" *) 
module soc_config_fft_0_0_config_fft
   (fft_config_tvalid_reg_0,
    ifft_config_tvalid_reg_0,
    clk,
    arstn);
  output fft_config_tvalid_reg_0;
  output ifft_config_tvalid_reg_0;
  input clk;
  input arstn;

  wire arstn;
  wire clk;
  wire fft_config_tvalid_i_1_n_0;
  wire fft_config_tvalid_i_2_n_0;
  wire fft_config_tvalid_reg_0;
  wire [1:0]fft_valid_cnt;
  wire \fft_valid_cnt[0]_i_1_n_0 ;
  wire \fft_valid_cnt[1]_i_1_n_0 ;
  wire ifft_config_tvalid_i_1_n_0;
  wire ifft_config_tvalid_reg_0;
  wire [1:0]ifft_valid_cnt;
  wire \ifft_valid_cnt[0]_i_1_n_0 ;
  wire \ifft_valid_cnt[1]_i_1_n_0 ;

  LUT3 #(
    .INIT(8'hD0)) 
    fft_config_tvalid_i_1
       (.I0(fft_valid_cnt[1]),
        .I1(fft_valid_cnt[0]),
        .I2(fft_config_tvalid_reg_0),
        .O(fft_config_tvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fft_config_tvalid_i_2
       (.I0(arstn),
        .O(fft_config_tvalid_i_2_n_0));
  FDPE fft_config_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(fft_config_tvalid_i_1_n_0),
        .PRE(fft_config_tvalid_i_2_n_0),
        .Q(fft_config_tvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \fft_valid_cnt[0]_i_1 
       (.I0(fft_valid_cnt[1]),
        .I1(fft_config_tvalid_reg_0),
        .I2(fft_valid_cnt[0]),
        .O(\fft_valid_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \fft_valid_cnt[1]_i_1 
       (.I0(fft_valid_cnt[0]),
        .I1(fft_config_tvalid_reg_0),
        .I2(fft_valid_cnt[1]),
        .O(\fft_valid_cnt[1]_i_1_n_0 ));
  FDCE \fft_valid_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(fft_config_tvalid_i_2_n_0),
        .D(\fft_valid_cnt[0]_i_1_n_0 ),
        .Q(fft_valid_cnt[0]));
  FDCE \fft_valid_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(fft_config_tvalid_i_2_n_0),
        .D(\fft_valid_cnt[1]_i_1_n_0 ),
        .Q(fft_valid_cnt[1]));
  LUT3 #(
    .INIT(8'hD0)) 
    ifft_config_tvalid_i_1
       (.I0(ifft_valid_cnt[1]),
        .I1(ifft_valid_cnt[0]),
        .I2(ifft_config_tvalid_reg_0),
        .O(ifft_config_tvalid_i_1_n_0));
  FDPE ifft_config_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(ifft_config_tvalid_i_1_n_0),
        .PRE(fft_config_tvalid_i_2_n_0),
        .Q(ifft_config_tvalid_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \ifft_valid_cnt[0]_i_1 
       (.I0(ifft_valid_cnt[1]),
        .I1(ifft_config_tvalid_reg_0),
        .I2(ifft_valid_cnt[0]),
        .O(\ifft_valid_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \ifft_valid_cnt[1]_i_1 
       (.I0(ifft_valid_cnt[0]),
        .I1(ifft_config_tvalid_reg_0),
        .I2(ifft_valid_cnt[1]),
        .O(\ifft_valid_cnt[1]_i_1_n_0 ));
  FDCE \ifft_valid_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(fft_config_tvalid_i_2_n_0),
        .D(\ifft_valid_cnt[0]_i_1_n_0 ),
        .Q(ifft_valid_cnt[0]));
  FDCE \ifft_valid_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(fft_config_tvalid_i_2_n_0),
        .D(\ifft_valid_cnt[1]_i_1_n_0 ),
        .Q(ifft_valid_cnt[1]));
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
