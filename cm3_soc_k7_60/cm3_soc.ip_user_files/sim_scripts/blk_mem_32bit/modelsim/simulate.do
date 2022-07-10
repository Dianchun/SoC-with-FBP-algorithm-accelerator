onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.blk_mem_32bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {blk_mem_32bit.udo}

run -all

quit -force
