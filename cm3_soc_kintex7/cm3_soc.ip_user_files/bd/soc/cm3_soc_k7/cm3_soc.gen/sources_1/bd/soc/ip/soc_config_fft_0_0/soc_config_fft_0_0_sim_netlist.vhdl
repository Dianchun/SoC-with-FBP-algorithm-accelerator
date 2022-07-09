-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Apr 15 12:20:21 2022
-- Host        : DESKTOP-L1H3OJ0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/soc/cm3_soc_k7/cm3_soc.gen/sources_1/bd/soc/ip/soc_config_fft_0_0/soc_config_fft_0_0_sim_netlist.vhdl
-- Design      : soc_config_fft_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_config_fft_0_0_config_fft is
  port (
    fft_config_tvalid_reg_0 : out STD_LOGIC;
    ifft_config_tvalid_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    arstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_config_fft_0_0_config_fft : entity is "config_fft";
end soc_config_fft_0_0_config_fft;

architecture STRUCTURE of soc_config_fft_0_0_config_fft is
  signal fft_config_tvalid_i_1_n_0 : STD_LOGIC;
  signal fft_config_tvalid_i_2_n_0 : STD_LOGIC;
  signal \^fft_config_tvalid_reg_0\ : STD_LOGIC;
  signal fft_valid_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \fft_valid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \fft_valid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal ifft_config_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^ifft_config_tvalid_reg_0\ : STD_LOGIC;
  signal ifft_valid_cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ifft_valid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \ifft_valid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fft_valid_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fft_valid_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ifft_valid_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ifft_valid_cnt[1]_i_1\ : label is "soft_lutpair1";
begin
  fft_config_tvalid_reg_0 <= \^fft_config_tvalid_reg_0\;
  ifft_config_tvalid_reg_0 <= \^ifft_config_tvalid_reg_0\;
fft_config_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => fft_valid_cnt(1),
      I1 => fft_valid_cnt(0),
      I2 => \^fft_config_tvalid_reg_0\,
      O => fft_config_tvalid_i_1_n_0
    );
fft_config_tvalid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arstn,
      O => fft_config_tvalid_i_2_n_0
    );
fft_config_tvalid_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => fft_config_tvalid_i_1_n_0,
      PRE => fft_config_tvalid_i_2_n_0,
      Q => \^fft_config_tvalid_reg_0\
    );
\fft_valid_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => fft_valid_cnt(1),
      I1 => \^fft_config_tvalid_reg_0\,
      I2 => fft_valid_cnt(0),
      O => \fft_valid_cnt[0]_i_1_n_0\
    );
\fft_valid_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => fft_valid_cnt(0),
      I1 => \^fft_config_tvalid_reg_0\,
      I2 => fft_valid_cnt(1),
      O => \fft_valid_cnt[1]_i_1_n_0\
    );
\fft_valid_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fft_config_tvalid_i_2_n_0,
      D => \fft_valid_cnt[0]_i_1_n_0\,
      Q => fft_valid_cnt(0)
    );
\fft_valid_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fft_config_tvalid_i_2_n_0,
      D => \fft_valid_cnt[1]_i_1_n_0\,
      Q => fft_valid_cnt(1)
    );
ifft_config_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => ifft_valid_cnt(1),
      I1 => ifft_valid_cnt(0),
      I2 => \^ifft_config_tvalid_reg_0\,
      O => ifft_config_tvalid_i_1_n_0
    );
ifft_config_tvalid_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => ifft_config_tvalid_i_1_n_0,
      PRE => fft_config_tvalid_i_2_n_0,
      Q => \^ifft_config_tvalid_reg_0\
    );
\ifft_valid_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => ifft_valid_cnt(1),
      I1 => \^ifft_config_tvalid_reg_0\,
      I2 => ifft_valid_cnt(0),
      O => \ifft_valid_cnt[0]_i_1_n_0\
    );
\ifft_valid_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => ifft_valid_cnt(0),
      I1 => \^ifft_config_tvalid_reg_0\,
      I2 => ifft_valid_cnt(1),
      O => \ifft_valid_cnt[1]_i_1_n_0\
    );
\ifft_valid_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fft_config_tvalid_i_2_n_0,
      D => \ifft_valid_cnt[0]_i_1_n_0\,
      Q => ifft_valid_cnt(0)
    );
\ifft_valid_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fft_config_tvalid_i_2_n_0,
      D => \ifft_valid_cnt[1]_i_1_n_0\,
      Q => ifft_valid_cnt(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_config_fft_0_0 is
  port (
    clk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    fft_config_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_config_tready : in STD_LOGIC;
    fft_config_tvalid : out STD_LOGIC;
    ifft_config_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ifft_config_tready : in STD_LOGIC;
    ifft_config_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_config_fft_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_config_fft_0_0 : entity is "soc_config_fft_0_0,config_fft,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_config_fft_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of soc_config_fft_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of soc_config_fft_0_0 : entity is "config_fft,Vivado 2020.2";
end soc_config_fft_0_0;

architecture STRUCTURE of soc_config_fft_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF fft_config:ifft_config, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fft_config_tready : signal is "xilinx.com:interface:axis:1.0 fft_config TREADY";
  attribute X_INTERFACE_INFO of fft_config_tvalid : signal is "xilinx.com:interface:axis:1.0 fft_config TVALID";
  attribute X_INTERFACE_PARAMETER of fft_config_tvalid : signal is "XIL_INTERFACENAME fft_config, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ifft_config_tready : signal is "xilinx.com:interface:axis:1.0 ifft_config TREADY";
  attribute X_INTERFACE_INFO of ifft_config_tvalid : signal is "xilinx.com:interface:axis:1.0 ifft_config TVALID";
  attribute X_INTERFACE_PARAMETER of ifft_config_tvalid : signal is "XIL_INTERFACENAME ifft_config, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN soc_mig_7series_0_1_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of fft_config_tdata : signal is "xilinx.com:interface:axis:1.0 fft_config TDATA";
  attribute X_INTERFACE_INFO of ifft_config_tdata : signal is "xilinx.com:interface:axis:1.0 ifft_config TDATA";
begin
  fft_config_tdata(15) <= \<const0>\;
  fft_config_tdata(14) <= \<const0>\;
  fft_config_tdata(13) <= \<const0>\;
  fft_config_tdata(12) <= \<const0>\;
  fft_config_tdata(11) <= \<const0>\;
  fft_config_tdata(10) <= \<const0>\;
  fft_config_tdata(9) <= \<const0>\;
  fft_config_tdata(8) <= \<const0>\;
  fft_config_tdata(7) <= \<const0>\;
  fft_config_tdata(6) <= \<const0>\;
  fft_config_tdata(5) <= \<const0>\;
  fft_config_tdata(4) <= \<const0>\;
  fft_config_tdata(3) <= \<const0>\;
  fft_config_tdata(2) <= \<const0>\;
  fft_config_tdata(1) <= \<const0>\;
  fft_config_tdata(0) <= \<const1>\;
  ifft_config_tdata(15) <= \<const0>\;
  ifft_config_tdata(14) <= \<const0>\;
  ifft_config_tdata(13) <= \<const0>\;
  ifft_config_tdata(12) <= \<const0>\;
  ifft_config_tdata(11) <= \<const0>\;
  ifft_config_tdata(10) <= \<const0>\;
  ifft_config_tdata(9) <= \<const0>\;
  ifft_config_tdata(8) <= \<const0>\;
  ifft_config_tdata(7) <= \<const0>\;
  ifft_config_tdata(6) <= \<const0>\;
  ifft_config_tdata(5) <= \<const0>\;
  ifft_config_tdata(4) <= \<const0>\;
  ifft_config_tdata(3) <= \<const0>\;
  ifft_config_tdata(2) <= \<const0>\;
  ifft_config_tdata(1) <= \<const0>\;
  ifft_config_tdata(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.soc_config_fft_0_0_config_fft
     port map (
      arstn => arstn,
      clk => clk,
      fft_config_tvalid_reg_0 => fft_config_tvalid,
      ifft_config_tvalid_reg_0 => ifft_config_tvalid
    );
end STRUCTURE;
