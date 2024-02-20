vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../RI5CY_UA.gen/sources_1/bd/clock/ipshared/30ef" \
"/home/christian/Apps/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/home/christian/Apps/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../RI5CY_UA.gen/sources_1/bd/clock/ipshared/30ef" \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0_clk_wiz.v" \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0.v" \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/sim/clock.v" \

vlog -work xil_defaultlib \
"glbl.v"

