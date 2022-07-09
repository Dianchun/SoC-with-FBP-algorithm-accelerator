-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Apr 15 12:20:10 2022
-- Host        : DESKTOP-L1H3OJ0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/soc/cm3_soc_k7/cm3_soc.gen/sources_1/bd/soc/ip/soc_format_conversion_0_0/soc_format_conversion_0_0_sim_netlist.vhdl
-- Design      : soc_format_conversion_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_format_conversion_0_0 is
  port (
    clk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    filter_dout_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    filter_dout_tvalid : in STD_LOGIC;
    filter_dout_tready : out STD_LOGIC;
    ifft_input_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ifft_input_tvalid : out STD_LOGIC;
    ifft_input_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_format_conversion_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_format_conversion_0_0 : entity is "soc_format_conversion_0_0,format_conversion,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_format_conversion_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of soc_format_conversion_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of soc_format_conversion_0_0 : entity is "format_conversion,Vivado 2020.2";
end soc_format_conversion_0_0;

architecture STRUCTURE of soc_format_conversion_0_0 is
  signal \^filter_dout_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^filter_dout_tvalid\ : STD_LOGIC;
  signal \^ifft_input_tready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF filter_dout:ifft_input, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of filter_dout_tready : signal is "xilinx.com:interface:axis:1.0 filter_dout TREADY";
  attribute X_INTERFACE_PARAMETER of filter_dout_tready : signal is "XIL_INTERFACENAME filter_dout, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of filter_dout_tvalid : signal is "xilinx.com:interface:axis:1.0 filter_dout TVALID";
  attribute X_INTERFACE_INFO of ifft_input_tready : signal is "xilinx.com:interface:axis:1.0 ifft_input TREADY";
  attribute X_INTERFACE_PARAMETER of ifft_input_tready : signal is "XIL_INTERFACENAME ifft_input, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ifft_input_tvalid : signal is "xilinx.com:interface:axis:1.0 ifft_input TVALID";
  attribute X_INTERFACE_INFO of filter_dout_tdata : signal is "xilinx.com:interface:axis:1.0 filter_dout TDATA";
  attribute X_INTERFACE_INFO of ifft_input_tdata : signal is "xilinx.com:interface:axis:1.0 ifft_input TDATA";
begin
  \^filter_dout_tdata\(63 downto 0) <= filter_dout_tdata(63 downto 0);
  \^filter_dout_tvalid\ <= filter_dout_tvalid;
  \^ifft_input_tready\ <= ifft_input_tready;
  filter_dout_tready <= \^ifft_input_tready\;
  ifft_input_tdata(63 downto 32) <= \^filter_dout_tdata\(31 downto 0);
  ifft_input_tdata(31 downto 0) <= \^filter_dout_tdata\(63 downto 32);
  ifft_input_tvalid <= \^filter_dout_tvalid\;
end STRUCTURE;
