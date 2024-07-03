set_property IOSTANDARD LVCMOS33 [get_ports BT_RX]
set_property IOSTANDARD LVCMOS33 [get_ports clk_125]
set_property IOSTANDARD LVCMOS33 [get_ports fetch_enable_cpu]
set_property IOSTANDARD LVCMOS33 [get_ports system_reset]

set_property PACKAGE_PIN Y9 [get_ports BT_RX] 
set_property PACKAGE_PIN H16 [get_ports clk_125]         
set_property PACKAGE_PIN P5 [get_ports fetch_enable_cpu]
set_property PACKAGE_PIN T2 [get_ports system_reset]  

# Set the clock properties for clk_125
#create_clock -name sys_clk -period 8.000 [get_ports clk_125] Is already defined in clock_wizard
