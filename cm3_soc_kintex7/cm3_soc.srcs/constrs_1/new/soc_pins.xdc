#clk_in and resetn_in
create_clock -period 20.000 -name clk_in [get_ports clk_in]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports clk_in]
set_property -dict {PACKAGE_PIN H26 IOSTANDARD LVCMOS33} [get_ports resetn_in]

create_clock -period 10.000 -name {pcie_ref_clk_p[0]} -waveform {0.000 5.000} [get_ports {pcie_ref_clk_p[0]}]
create_clock -period 200.000 -name swclk -waveform {0.000 100.000} [get_ports swclk]

set_clock_groups -name async_userclk2_clk_out2_soc_clk_wiz_0_0 -asynchronous -group {userclk2} -group {clk_out2_soc_clk_wiz_0_0}

set_clock_groups -name async_swclk_clk_out2_soc_clk_wiz_0_0 -asynchronous -group {swclk} -group {clk_out2_soc_clk_wiz_0_0}

#jtag
set_property IOSTANDARD LVCMOS33 [get_ports swclk]
set_property IOSTANDARD LVCMOS33 [get_ports swdio]
set_property PACKAGE_PIN H14 [get_ports swclk]
set_property PACKAGE_PIN H11 [get_ports swdio]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets swclk_IBUF]

#uart
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports uart_rxd]
set_property -dict {PACKAGE_PIN A17 IOSTANDARD LVCMOS33} [get_ports uart_txd]


#PCIe reference clock 100MHz
set_property PACKAGE_PIN K6 [get_ports {pcie_ref_clk_p[0]}]

# PCIe MGT interface

set_property LOC GTXE2_CHANNEL_X0Y0 [get_cells {soc_i/xdma_0/inst/soc_xdma_0_1_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN R4 [get_ports {pcie_mgt_rxp[3]}]
set_property PACKAGE_PIN P2 [get_ports {pcie_mgt_txp[3]}]
set_property LOC GTXE2_CHANNEL_X0Y1 [get_cells {soc_i/xdma_0/inst/soc_xdma_0_1_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN N4 [get_ports {pcie_mgt_rxp[2]}]
set_property PACKAGE_PIN M2 [get_ports {pcie_mgt_txp[2]}]
set_property LOC GTXE2_CHANNEL_X0Y2 [get_cells {soc_i/xdma_0/inst/soc_xdma_0_1_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN L4 [get_ports {pcie_mgt_rxp[1]}]
set_property PACKAGE_PIN K2 [get_ports {pcie_mgt_txp[1]}]
set_property LOC GTXE2_CHANNEL_X0Y3 [get_cells {soc_i/xdma_0/inst/soc_xdma_0_1_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN J4 [get_ports {pcie_mgt_rxp[0]}]
set_property PACKAGE_PIN H2 [get_ports {pcie_mgt_txp[0]}]

# PCIe rst signal
set_property -dict {PACKAGE_PIN A12 IOSTANDARD LVCMOS33} [get_ports pcie_rst_n]

# led interface
set_property -dict {PACKAGE_PIN A23 IOSTANDARD LVCMOS33} [get_ports lnk_up_led]
set_property -dict {PACKAGE_PIN A24 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[0]}]
set_property -dict {PACKAGE_PIN D23 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[1]}]
set_property -dict {PACKAGE_PIN C24 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[2]}]
set_property -dict {PACKAGE_PIN C26 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[3]}]
set_property -dict {PACKAGE_PIN D24 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[4]}]
set_property -dict {PACKAGE_PIN D25 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[5]}]
set_property -dict {PACKAGE_PIN E25 IOSTANDARD LVCMOS33} [get_ports {led_tri_o[6]}]

# key interface
set_property -dict {PACKAGE_PIN D26 IOSTANDARD LVCMOS33} [get_ports {key_tri_i[0]}]
set_property -dict {PACKAGE_PIN G25 IOSTANDARD LVCMOS33} [get_ports {key_tri_i[1]}]
set_property -dict {PACKAGE_PIN E26 IOSTANDARD LVCMOS33} [get_ports {key_tri_i[2]}]
set_property -dict {PACKAGE_PIN G26 IOSTANDARD LVCMOS33} [get_ports {key_tri_i[3]}]


#SPI 相关设置用于程序固化
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLUP [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]



