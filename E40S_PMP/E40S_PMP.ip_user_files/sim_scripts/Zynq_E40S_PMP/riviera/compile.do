transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_4
vlib riviera/blk_mem_gen_v8_4_6
vlib riviera/xbip_utils_v3_0_10
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_15
vlib riviera/xlconstant_v1_1_7

vlog -work xpm  -incr "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" -l xpm -l xil_defaultlib -l xlconcat_v2_1_4 -l blk_mem_gen_v8_4_6 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l xlconstant_v1_1_7 \
"/home/christian/Apps/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/christian/Apps/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/home/christian/Apps/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" -l xpm -l xil_defaultlib -l xlconcat_v2_1_4 -l blk_mem_gen_v8_4_6 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l xlconstant_v1_1_7 \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBKEYS_0_0/sim/Zynq_E40S_PMP_AHBKEYS_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2TIMER_0_0/sim/Zynq_E40S_PMP_AHB2TIMER_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2UART_0_0/sim/Zynq_E40S_PMP_AHB2UART_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2DUMP_0_0/sim/Zynq_E40S_PMP_AHB2DUMP_0_0.v" \

vlog -work xlconcat_v2_1_4  -incr -v2k5 "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" -l xpm -l xil_defaultlib -l xlconcat_v2_1_4 -l blk_mem_gen_v8_4_6 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l xlconstant_v1_1_7 \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" -l xpm -l xil_defaultlib -l xlconcat_v2_1_4 -l blk_mem_gen_v8_4_6 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l xlconstant_v1_1_7 \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconcat_0_0/sim/Zynq_E40S_PMP_xlconcat_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_bram_read_write_late_0_0/sim/Zynq_E40S_PMP_bram_read_write_late_0_0.v" \

vlog -work blk_mem_gen_v8_4_6  -incr -v2k5 "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" -l xpm -l xil_defaultlib -l xlconcat_v2_1_4 -l blk_mem_gen_v8_4_6 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l xlconstant_v1_1_7 \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" -l xpm -l xil_defaultlib -l xlconcat_v2_1_4 -l blk_mem_gen_v8_4_6 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l xlconstant_v1_1_7 \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_blk_mem_gen_1_0/sim/Zynq_E40S_PMP_blk_mem_gen_1_0.v" \

vcom -work xbip_utils_v3_0_10 -93  -incr \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -93  -incr \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93  -incr \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93  -incr \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93  -incr \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/5a54/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93  -incr \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_15 -93  -incr \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/6b20/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_c_addsub_1_0/sim/Zynq_E40S_PMP_c_addsub_1_0.vhd" \

vlog -work xlconstant_v1_1_7  -incr -v2k5 "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" -l xpm -l xil_defaultlib -l xlconcat_v2_1_4 -l blk_mem_gen_v8_4_6 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l xlconstant_v1_1_7 \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" -l xpm -l xil_defaultlib -l xlconcat_v2_1_4 -l blk_mem_gen_v8_4_6 -l xbip_utils_v3_0_10 -l c_reg_fd_v12_0_6 -l xbip_dsp48_wrapper_v3_0_4 -l xbip_pipe_v3_0_6 -l xbip_dsp48_addsub_v3_0_6 -l xbip_addsub_v3_0_6 -l c_addsub_v12_0_15 -l xlconstant_v1_1_7 \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_0_0/sim/Zynq_E40S_PMP_xlconstant_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_1_0/sim/Zynq_E40S_PMP_xlconstant_1_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_2_0/sim/Zynq_E40S_PMP_xlconstant_2_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_3_0/sim/Zynq_E40S_PMP_xlconstant_3_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_4_0/sim/Zynq_E40S_PMP_xlconstant_4_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_4_2/sim/Zynq_E40S_PMP_xlconstant_4_2.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_4_3/sim/Zynq_E40S_PMP_xlconstant_4_3.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_4_4/sim/Zynq_E40S_PMP_xlconstant_4_4.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_clk_wiz_0_0/Zynq_E40S_PMP_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_clk_wiz_0_0/Zynq_E40S_PMP_clk_wiz_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_riscv_top_ahb3lite_0_0/sim/Zynq_E40S_PMP_riscv_top_ahb3lite_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBDCD_0_0/sim/Zynq_E40S_PMP_AHBDCD_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBMUX_0_0/sim/Zynq_E40S_PMP_AHBMUX_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB_CACHE_0_0/sim/Zynq_E40S_PMP_AHB_CACHE_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB_CACHE_1_0/sim/Zynq_E40S_PMP_AHB_CACHE_1_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_UA_encrypt_0_0/sim/Zynq_E40S_PMP_UA_encrypt_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_UA_encrypt_1_0/sim/Zynq_E40S_PMP_UA_encrypt_1_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_BRAM_ARBITER_0_0/sim/Zynq_E40S_PMP_BRAM_ARBITER_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_5_0/sim/Zynq_E40S_PMP_xlconstant_5_0.v" \
"../../../bd/Zynq_E40S_PMP/sim/Zynq_E40S_PMP.v" \

vlog -work xil_defaultlib \
"glbl.v"

