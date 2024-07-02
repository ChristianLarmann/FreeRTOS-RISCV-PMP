transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Zynq_E40S_PMP  -L xpm -L xil_defaultlib -L xlconcat_v2_1_4 -L blk_mem_gen_v8_4_6 -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_6 -L xbip_dsp48_addsub_v3_0_6 -L xbip_addsub_v3_0_6 -L c_addsub_v12_0_15 -L xlconstant_v1_1_7 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Zynq_E40S_PMP xil_defaultlib.glbl

do {Zynq_E40S_PMP.udo}

run 1000ns

endsim

quit -force
