# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BRAM_ADDR_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUMBER_BRAM_ENTRIES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SIZE_MEMORY" -parent ${Page_0}


}

proc update_PARAM_VALUE.BRAM_ADDR_BITS { PARAM_VALUE.BRAM_ADDR_BITS } {
	# Procedure called to update BRAM_ADDR_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_ADDR_BITS { PARAM_VALUE.BRAM_ADDR_BITS } {
	# Procedure called to validate BRAM_ADDR_BITS
	return true
}

proc update_PARAM_VALUE.NUMBER_BRAM_ENTRIES { PARAM_VALUE.NUMBER_BRAM_ENTRIES } {
	# Procedure called to update NUMBER_BRAM_ENTRIES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUMBER_BRAM_ENTRIES { PARAM_VALUE.NUMBER_BRAM_ENTRIES } {
	# Procedure called to validate NUMBER_BRAM_ENTRIES
	return true
}

proc update_PARAM_VALUE.SIZE_MEMORY { PARAM_VALUE.SIZE_MEMORY } {
	# Procedure called to update SIZE_MEMORY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIZE_MEMORY { PARAM_VALUE.SIZE_MEMORY } {
	# Procedure called to validate SIZE_MEMORY
	return true
}


proc update_MODELPARAM_VALUE.SIZE_MEMORY { MODELPARAM_VALUE.SIZE_MEMORY PARAM_VALUE.SIZE_MEMORY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIZE_MEMORY}] ${MODELPARAM_VALUE.SIZE_MEMORY}
}

proc update_MODELPARAM_VALUE.NUMBER_BRAM_ENTRIES { MODELPARAM_VALUE.NUMBER_BRAM_ENTRIES PARAM_VALUE.NUMBER_BRAM_ENTRIES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUMBER_BRAM_ENTRIES}] ${MODELPARAM_VALUE.NUMBER_BRAM_ENTRIES}
}

proc update_MODELPARAM_VALUE.BRAM_ADDR_BITS { MODELPARAM_VALUE.BRAM_ADDR_BITS PARAM_VALUE.BRAM_ADDR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_ADDR_BITS}] ${MODELPARAM_VALUE.BRAM_ADDR_BITS}
}

