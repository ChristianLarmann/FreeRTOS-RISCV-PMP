# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CACHE_LINES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_ADDR_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CPU_DATA_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INSTRUCTION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAIN_MEM_DELAY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_ADDR_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_DATA_BITS" -parent ${Page_0}


}

proc update_PARAM_VALUE.CACHE_LINES { PARAM_VALUE.CACHE_LINES } {
	# Procedure called to update CACHE_LINES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CACHE_LINES { PARAM_VALUE.CACHE_LINES } {
	# Procedure called to validate CACHE_LINES
	return true
}

proc update_PARAM_VALUE.CPU_ADDR_BITS { PARAM_VALUE.CPU_ADDR_BITS } {
	# Procedure called to update CPU_ADDR_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_ADDR_BITS { PARAM_VALUE.CPU_ADDR_BITS } {
	# Procedure called to validate CPU_ADDR_BITS
	return true
}

proc update_PARAM_VALUE.CPU_DATA_BITS { PARAM_VALUE.CPU_DATA_BITS } {
	# Procedure called to update CPU_DATA_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CPU_DATA_BITS { PARAM_VALUE.CPU_DATA_BITS } {
	# Procedure called to validate CPU_DATA_BITS
	return true
}

proc update_PARAM_VALUE.INSTRUCTION { PARAM_VALUE.INSTRUCTION } {
	# Procedure called to update INSTRUCTION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INSTRUCTION { PARAM_VALUE.INSTRUCTION } {
	# Procedure called to validate INSTRUCTION
	return true
}

proc update_PARAM_VALUE.MAIN_MEM_DELAY { PARAM_VALUE.MAIN_MEM_DELAY } {
	# Procedure called to update MAIN_MEM_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAIN_MEM_DELAY { PARAM_VALUE.MAIN_MEM_DELAY } {
	# Procedure called to validate MAIN_MEM_DELAY
	return true
}

proc update_PARAM_VALUE.MEM_ADDR_BITS { PARAM_VALUE.MEM_ADDR_BITS } {
	# Procedure called to update MEM_ADDR_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_ADDR_BITS { PARAM_VALUE.MEM_ADDR_BITS } {
	# Procedure called to validate MEM_ADDR_BITS
	return true
}

proc update_PARAM_VALUE.MEM_DATA_BITS { PARAM_VALUE.MEM_DATA_BITS } {
	# Procedure called to update MEM_DATA_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_DATA_BITS { PARAM_VALUE.MEM_DATA_BITS } {
	# Procedure called to validate MEM_DATA_BITS
	return true
}


proc update_MODELPARAM_VALUE.CACHE_LINES { MODELPARAM_VALUE.CACHE_LINES PARAM_VALUE.CACHE_LINES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CACHE_LINES}] ${MODELPARAM_VALUE.CACHE_LINES}
}

proc update_MODELPARAM_VALUE.CPU_ADDR_BITS { MODELPARAM_VALUE.CPU_ADDR_BITS PARAM_VALUE.CPU_ADDR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_ADDR_BITS}] ${MODELPARAM_VALUE.CPU_ADDR_BITS}
}

proc update_MODELPARAM_VALUE.CPU_DATA_BITS { MODELPARAM_VALUE.CPU_DATA_BITS PARAM_VALUE.CPU_DATA_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CPU_DATA_BITS}] ${MODELPARAM_VALUE.CPU_DATA_BITS}
}

proc update_MODELPARAM_VALUE.MEM_ADDR_BITS { MODELPARAM_VALUE.MEM_ADDR_BITS PARAM_VALUE.MEM_ADDR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_ADDR_BITS}] ${MODELPARAM_VALUE.MEM_ADDR_BITS}
}

proc update_MODELPARAM_VALUE.MEM_DATA_BITS { MODELPARAM_VALUE.MEM_DATA_BITS PARAM_VALUE.MEM_DATA_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_DATA_BITS}] ${MODELPARAM_VALUE.MEM_DATA_BITS}
}

proc update_MODELPARAM_VALUE.INSTRUCTION { MODELPARAM_VALUE.INSTRUCTION PARAM_VALUE.INSTRUCTION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INSTRUCTION}] ${MODELPARAM_VALUE.INSTRUCTION}
}

proc update_MODELPARAM_VALUE.MAIN_MEM_DELAY { MODELPARAM_VALUE.MAIN_MEM_DELAY PARAM_VALUE.MAIN_MEM_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAIN_MEM_DELAY}] ${MODELPARAM_VALUE.MAIN_MEM_DELAY}
}

