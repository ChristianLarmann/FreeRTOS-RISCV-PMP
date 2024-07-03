# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDRESS_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_ADDR_TWEAK" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MEM_ADDR_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUMBER_OF_BYTES" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDRESS_SIZE { PARAM_VALUE.ADDRESS_SIZE } {
	# Procedure called to update ADDRESS_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDRESS_SIZE { PARAM_VALUE.ADDRESS_SIZE } {
	# Procedure called to validate ADDRESS_SIZE
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.ENABLE_ADDR_TWEAK { PARAM_VALUE.ENABLE_ADDR_TWEAK } {
	# Procedure called to update ENABLE_ADDR_TWEAK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_ADDR_TWEAK { PARAM_VALUE.ENABLE_ADDR_TWEAK } {
	# Procedure called to validate ENABLE_ADDR_TWEAK
	return true
}

proc update_PARAM_VALUE.MEM_ADDR_BITS { PARAM_VALUE.MEM_ADDR_BITS } {
	# Procedure called to update MEM_ADDR_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MEM_ADDR_BITS { PARAM_VALUE.MEM_ADDR_BITS } {
	# Procedure called to validate MEM_ADDR_BITS
	return true
}

proc update_PARAM_VALUE.NUMBER_OF_BYTES { PARAM_VALUE.NUMBER_OF_BYTES } {
	# Procedure called to update NUMBER_OF_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUMBER_OF_BYTES { PARAM_VALUE.NUMBER_OF_BYTES } {
	# Procedure called to validate NUMBER_OF_BYTES
	return true
}


proc update_MODELPARAM_VALUE.ADDRESS_SIZE { MODELPARAM_VALUE.ADDRESS_SIZE PARAM_VALUE.ADDRESS_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDRESS_SIZE}] ${MODELPARAM_VALUE.ADDRESS_SIZE}
}

proc update_MODELPARAM_VALUE.NUMBER_OF_BYTES { MODELPARAM_VALUE.NUMBER_OF_BYTES PARAM_VALUE.NUMBER_OF_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUMBER_OF_BYTES}] ${MODELPARAM_VALUE.NUMBER_OF_BYTES}
}

proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.MEM_ADDR_BITS { MODELPARAM_VALUE.MEM_ADDR_BITS PARAM_VALUE.MEM_ADDR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MEM_ADDR_BITS}] ${MODELPARAM_VALUE.MEM_ADDR_BITS}
}

proc update_MODELPARAM_VALUE.ENABLE_ADDR_TWEAK { MODELPARAM_VALUE.ENABLE_ADDR_TWEAK PARAM_VALUE.ENABLE_ADDR_TWEAK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_ADDR_TWEAK}] ${MODELPARAM_VALUE.ENABLE_ADDR_TWEAK}
}

