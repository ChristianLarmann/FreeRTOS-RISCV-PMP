transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {}
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../RI5CY_UA.gen/sources_1/bd/clock/ipshared/30ef" -l xpm -l xil_defaultlib \
"/home/christian/Apps/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"/home/christian/Apps/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RI5CY_UA.gen/sources_1/bd/clock/ipshared/30ef" -l xpm -l xil_defaultlib \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0_clk_wiz.v" \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0.v" \
"../../../../RI5CY_UA.gen/sources_1/bd/clock/sim/clock.v" \

vlog -work xil_defaultlib \
"glbl.v"

