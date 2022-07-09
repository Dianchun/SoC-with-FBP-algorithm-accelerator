-makelib xcelium_lib/xilinx_vip -sv \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "G:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "G:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "G:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "G:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_config_fft_0_0/sim/soc_config_fft_0_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_format_conversion_0_0/sim/soc_format_conversion_0_0.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_6 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_6 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_14 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ebb8/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_mux_bit_v12_0_6 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ecb4/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_shift_ram_v12_0_14 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2598/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_16 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/cmpy_v6_0_19 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/0e0f/hdl/cmpy_v6_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_0_18 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/f1e3/hdl/floating_point_v7_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xfft_v9_1_5 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/58b9/hdl/xfft_v9_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xfft_0_0/sim/soc_xfft_0_0.vhd" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xfft_0_1/sim/soc_xfft_0_1.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xlconstant_0_0/sim/soc_xlconstant_0_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_mul_32s_31ns_63_3_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_mul_32s_32s_63_3_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_regslice_both.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_dg8j.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_fdEe.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_tbkb.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_tcud.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real_xfft2real_complex_ap_fixed_32_1_5_3_0_complex_ap_fixed_32_1_5_3_0_11_true_s_tfYi.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2810/hdl/verilog/hls_xfft2real.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_hls_xfft2real_1_0/sim/soc_hls_xfft2real_1_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_proc_sys_reset_0_0/sim/soc_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_util_vector_logic_0_0/sim/soc_util_vector_logic_0_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_read_data_unit_0_1/sim/soc_read_data_unit_0_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_backproject_0_2/sim/soc_backproject_0_2.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/soc_mig_7series_0_1_mig_sim.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_mig_7series_0_1/soc_mig_7series_0_1/user_design/rtl/soc_mig_7series_0_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pipe_clock.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pipe_eq.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pipe_drp.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pipe_rate.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pipe_reset.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pipe_sync.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gtp_pipe_rate.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gtp_pipe_drp.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gtp_pipe_reset.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pipe_user.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pipe_wrapper.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_qpll_drp.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_qpll_reset.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_qpll_wrapper.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_rxeq_scan.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_core_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_axi_basic_rx_null_gen.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_axi_basic_rx_pipeline.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_axi_basic_rx.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_axi_basic_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_axi_basic_tx_pipeline.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_axi_basic_tx_thrtl_ctl.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_axi_basic_tx.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie_7x.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie_bram_7x.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie_bram_top_7x.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie_brams_7x.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie_pipe_lane.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie_pipe_misc.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie_pipe_pipeline.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gt_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gt_common.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gtp_cpllpd_ovrd.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gtx_cpllpd_ovrd.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gt_rx_valid_filter_7x.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_gt_wrapper.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/source/soc_xdma_0_1_pcie2_ip_pcie2_top.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_0/sim/soc_xdma_0_1_pcie2_ip.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_1/sim/xdma_v4_1_8_blk_mem_64_reg_be.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_2/sim/xdma_v4_1_8_blk_mem_64_noreg_be.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_1_4 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/e6d5/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_1_4 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/e6d5/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_1_4 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/e6d5/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_3/sim/pcie2_fifo_generator_dma_cpl.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/ip_4/sim/pcie2_fifo_generator_tgt_brdg.v" \
-endlib
-makelib xcelium_lib/xdma_v4_1_8 -sv \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/cc3e/hdl/xdma_v4_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_dma_cpl.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_dma_req.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_rx_destraddler.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_rx_demux.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_tgt_cpl.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_tgt_req.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_tx_mux.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_axi_stream_intf.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_cfg_sideband.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_pcie2_to_pcie3_wrapper.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_dma_bram_wrap.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_dma_bram_wrap_1024.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_dma_bram_wrap_2048.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/xdma_v4_1/hdl/verilog/soc_xdma_0_1_core_top.sv" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xdma_0_1/sim/soc_xdma_0_1.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_util_ds_buf_1_0/util_ds_buf.vhd" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_util_ds_buf_1_0/sim/soc_util_ds_buf_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_dap_ahb_ap.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_wic.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_nvic.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_dwt.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/AhbToAxi.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_mpu.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_bus_matrix.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/models.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cmsdk.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_tpiu.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/dapswjdp.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_fpb.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_dpu.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_itm.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cm3_etm.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cortexm3.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ea75/rtl/cortexm3_integration.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_CORTEXM3_AXI_0_0/sim/soc_CORTEXM3_AXI_0_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_acc_configurator_v1_0_0_0/sim/soc_acc_configurator_v1_0_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_24 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_axi_gpio_0_0/sim/soc_axi_gpio_0_0.vhd" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_axi_gpio_0_1/sim/soc_axi_gpio_0_1.vhd" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_axi_gpio_0_2/sim/soc_axi_gpio_0_2.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_22 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_21 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_23 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xbar_3/sim/soc_xbar_3.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xbar_4/sim/soc_xbar_4.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xbar_5/sim/soc_xbar_5.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_timer_v2_0_24 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/70d6/hdl/axi_timer_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_axi_timer_0_0/sim/soc_axi_timer_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_26 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/5edb/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_axi_uartlite_0_0/sim/soc_axi_uartlite_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_clk_wiz_0_0/soc_clk_wiz_0_0_clk_wiz.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_clk_wiz_0_0/soc_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_proc_sys_reset_0_1/sim/soc_proc_sys_reset_0_1.vhd" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_proc_sys_reset_1_0/sim/soc_proc_sys_reset_1_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_swdio_tri_buffer_0_0/sim/soc_swdio_tri_buffer_0_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_util_vector_logic_0_1/sim/soc_util_vector_logic_0_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_util_vector_logic_0_2/sim/soc_util_vector_logic_0_2.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xlconcat_0_0/sim/soc_xlconcat_0_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xlconstant_0_1/sim/soc_xlconstant_0_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_xlconstant_1_0/sim/soc_xlconstant_1_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_22 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_pc_1/sim/soc_auto_pc_1.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_21 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_22 \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_us_0/sim/soc_auto_us_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_cc_0/sim/soc_auto_cc_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_cc_1/sim/soc_auto_cc_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_ds_0/sim/soc_auto_ds_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_pc_0/sim/soc_auto_pc_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_s00_data_fifo_0/sim/soc_s00_data_fifo_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_us_df_0/sim/soc_auto_us_df_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_us_df_1/sim/soc_auto_us_df_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_us_cc_df_0/sim/soc_auto_us_cc_df_0.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/ip/soc_auto_ds_1/sim/soc_auto_ds_1.v" \
  "../../../../cm3_soc.gen/sources_1/bd/soc/sim/soc.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

