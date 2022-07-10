vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+G:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../cm3_soc.gen/sources_1/ip/blk_mem_32bit/sim/blk_mem_32bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

