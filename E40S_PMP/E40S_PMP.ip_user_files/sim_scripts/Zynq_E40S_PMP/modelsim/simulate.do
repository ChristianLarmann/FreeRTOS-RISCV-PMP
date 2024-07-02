onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xpm -L xil_defaultlib -L xlconcat_v2_1_4 -L blk_mem_gen_v8_4_6 -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_15 -L xlconstant_v1_1_7 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.Zynq_E40S_PMP xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Zynq_E40S_PMP.udo}

run 1000ns

quit -force
