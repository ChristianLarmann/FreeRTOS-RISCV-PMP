transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {/home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.cache/compile_simlib/riviera}
vlib riviera/xpm
vlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../RI5CY_UA.gen/sources_1/bd/clock/ipshared/30ef" -l xpm -l xil_defaultlib \
"/home/christian/Apps/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"/home/christian/Apps/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../RI5CY_UA.gen/sources_1/bd/clock/ipshared/30ef" -l xpm -l xil_defaultlib \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0_clk_wiz.v" \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0.v" \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/sim/clock.v" \

vlog -work xil_defaultlib \
"glbl.v"

