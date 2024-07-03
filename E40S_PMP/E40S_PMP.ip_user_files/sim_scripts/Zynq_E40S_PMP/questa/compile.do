vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/blk_mem_gen_v8_4_6
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/c_reg_fd_v12_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_addsub_v3_0_6
vlib questa_lib/msim/c_addsub_v12_0_15
vlib questa_lib/msim/xlconstant_v1_1_7

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap blk_mem_gen_v8_4_6 questa_lib/msim/blk_mem_gen_v8_4_6
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap c_reg_fd_v12_0_6 questa_lib/msim/c_reg_fd_v12_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_addsub_v3_0_6 questa_lib/msim/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_15 questa_lib/msim/c_addsub_v12_0_15
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" \
"/home/christian/Apps/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/christian/Apps/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/christian/Apps/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBKEYS_0_0/sim/Zynq_E40S_PMP_AHBKEYS_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2TIMER_0_0/sim/Zynq_E40S_PMP_AHB2TIMER_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2UART_0_0/sim/Zynq_E40S_PMP_AHB2UART_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2DUMP_0_0/sim/Zynq_E40S_PMP_AHB2DUMP_0_0.v" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu  "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconcat_0_0/sim/Zynq_E40S_PMP_xlconcat_0_0.v" \

vlog -work blk_mem_gen_v8_4_6 -64 -incr -mfcu  "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_blk_mem_gen_1_0/sim/Zynq_E40S_PMP_blk_mem_gen_1_0.v" \

vcom -work xbip_utils_v3_0_10 -64 -93  \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/364f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_6 -64 -93  \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93  \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93  \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93  \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/5a54/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -64 -93  \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_15 -64 -93  \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/6b20/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_c_addsub_1_0/sim/Zynq_E40S_PMP_c_addsub_1_0.vhd" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu  "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" \
"../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ipshared/30ef" \
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
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_UA_encrypt_0_0/sim/Zynq_E40S_PMP_UA_encrypt_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_UA_encrypt_1_0/sim/Zynq_E40S_PMP_UA_encrypt_1_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_xlconstant_5_0/sim/Zynq_E40S_PMP_xlconstant_5_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBMUX_0_0/sim/Zynq_E40S_PMP_AHBMUX_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_bram_read_write_late_0_0/sim/Zynq_E40S_PMP_bram_read_write_late_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB_CACHE_0_0/sim/Zynq_E40S_PMP_AHB_CACHE_0_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB_CACHE_1_0/sim/Zynq_E40S_PMP_AHB_CACHE_1_0.v" \
"../../../bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_BRAM_ARBITER_0_0/sim/Zynq_E40S_PMP_BRAM_ARBITER_0_0.v" \
"../../../bd/Zynq_E40S_PMP/sim/Zynq_E40S_PMP.v" \

vlog -work xil_defaultlib \
"glbl.v"

