# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "APU_NARGS_CPU" -parent ${Page_0}
  ipgui::add_param $IPINST -name "APU_NDSFLAGS_CPU" -parent ${Page_0}
  ipgui::add_param $IPINST -name "APU_NUSFLAGS_CPU" -parent ${Page_0}
  ipgui::add_param $IPINST -name "APU_WOP_CPU" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BOOT_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FPU" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INSTR_RDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_EXT_PERF_COUNTERS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PMP_ENCRYPTION_ENABLED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PULP_SECURE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SHARED_DSP_MULT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SHARED_FP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SHARED_FP_DIVSQRT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SHARED_INT_DIV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WAPUTYPE" -parent ${Page_0}


}

proc update_PARAM_VALUE.APU_NARGS_CPU { PARAM_VALUE.APU_NARGS_CPU } {
	# Procedure called to update APU_NARGS_CPU when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.APU_NARGS_CPU { PARAM_VALUE.APU_NARGS_CPU } {
	# Procedure called to validate APU_NARGS_CPU
	return true
}

proc update_PARAM_VALUE.APU_NDSFLAGS_CPU { PARAM_VALUE.APU_NDSFLAGS_CPU } {
	# Procedure called to update APU_NDSFLAGS_CPU when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.APU_NDSFLAGS_CPU { PARAM_VALUE.APU_NDSFLAGS_CPU } {
	# Procedure called to validate APU_NDSFLAGS_CPU
	return true
}

proc update_PARAM_VALUE.APU_NUSFLAGS_CPU { PARAM_VALUE.APU_NUSFLAGS_CPU } {
	# Procedure called to update APU_NUSFLAGS_CPU when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.APU_NUSFLAGS_CPU { PARAM_VALUE.APU_NUSFLAGS_CPU } {
	# Procedure called to validate APU_NUSFLAGS_CPU
	return true
}

proc update_PARAM_VALUE.APU_WOP_CPU { PARAM_VALUE.APU_WOP_CPU } {
	# Procedure called to update APU_WOP_CPU when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.APU_WOP_CPU { PARAM_VALUE.APU_WOP_CPU } {
	# Procedure called to validate APU_WOP_CPU
	return true
}

proc update_PARAM_VALUE.BOOT_ADDR { PARAM_VALUE.BOOT_ADDR } {
	# Procedure called to update BOOT_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BOOT_ADDR { PARAM_VALUE.BOOT_ADDR } {
	# Procedure called to validate BOOT_ADDR
	return true
}

proc update_PARAM_VALUE.FPU { PARAM_VALUE.FPU } {
	# Procedure called to update FPU when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FPU { PARAM_VALUE.FPU } {
	# Procedure called to validate FPU
	return true
}

proc update_PARAM_VALUE.INSTR_RDATA_WIDTH { PARAM_VALUE.INSTR_RDATA_WIDTH } {
	# Procedure called to update INSTR_RDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INSTR_RDATA_WIDTH { PARAM_VALUE.INSTR_RDATA_WIDTH } {
	# Procedure called to validate INSTR_RDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.N_EXT_PERF_COUNTERS { PARAM_VALUE.N_EXT_PERF_COUNTERS } {
	# Procedure called to update N_EXT_PERF_COUNTERS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_EXT_PERF_COUNTERS { PARAM_VALUE.N_EXT_PERF_COUNTERS } {
	# Procedure called to validate N_EXT_PERF_COUNTERS
	return true
}

proc update_PARAM_VALUE.PMP_ENCRYPTION_ENABLED { PARAM_VALUE.PMP_ENCRYPTION_ENABLED } {
	# Procedure called to update PMP_ENCRYPTION_ENABLED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PMP_ENCRYPTION_ENABLED { PARAM_VALUE.PMP_ENCRYPTION_ENABLED } {
	# Procedure called to validate PMP_ENCRYPTION_ENABLED
	return true
}

proc update_PARAM_VALUE.PULP_SECURE { PARAM_VALUE.PULP_SECURE } {
	# Procedure called to update PULP_SECURE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PULP_SECURE { PARAM_VALUE.PULP_SECURE } {
	# Procedure called to validate PULP_SECURE
	return true
}

proc update_PARAM_VALUE.SHARED_DSP_MULT { PARAM_VALUE.SHARED_DSP_MULT } {
	# Procedure called to update SHARED_DSP_MULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHARED_DSP_MULT { PARAM_VALUE.SHARED_DSP_MULT } {
	# Procedure called to validate SHARED_DSP_MULT
	return true
}

proc update_PARAM_VALUE.SHARED_FP { PARAM_VALUE.SHARED_FP } {
	# Procedure called to update SHARED_FP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHARED_FP { PARAM_VALUE.SHARED_FP } {
	# Procedure called to validate SHARED_FP
	return true
}

proc update_PARAM_VALUE.SHARED_FP_DIVSQRT { PARAM_VALUE.SHARED_FP_DIVSQRT } {
	# Procedure called to update SHARED_FP_DIVSQRT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHARED_FP_DIVSQRT { PARAM_VALUE.SHARED_FP_DIVSQRT } {
	# Procedure called to validate SHARED_FP_DIVSQRT
	return true
}

proc update_PARAM_VALUE.SHARED_INT_DIV { PARAM_VALUE.SHARED_INT_DIV } {
	# Procedure called to update SHARED_INT_DIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHARED_INT_DIV { PARAM_VALUE.SHARED_INT_DIV } {
	# Procedure called to validate SHARED_INT_DIV
	return true
}

proc update_PARAM_VALUE.WAPUTYPE { PARAM_VALUE.WAPUTYPE } {
	# Procedure called to update WAPUTYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WAPUTYPE { PARAM_VALUE.WAPUTYPE } {
	# Procedure called to validate WAPUTYPE
	return true
}


proc update_MODELPARAM_VALUE.BOOT_ADDR { MODELPARAM_VALUE.BOOT_ADDR PARAM_VALUE.BOOT_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BOOT_ADDR}] ${MODELPARAM_VALUE.BOOT_ADDR}
}

proc update_MODELPARAM_VALUE.N_EXT_PERF_COUNTERS { MODELPARAM_VALUE.N_EXT_PERF_COUNTERS PARAM_VALUE.N_EXT_PERF_COUNTERS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_EXT_PERF_COUNTERS}] ${MODELPARAM_VALUE.N_EXT_PERF_COUNTERS}
}

proc update_MODELPARAM_VALUE.INSTR_RDATA_WIDTH { MODELPARAM_VALUE.INSTR_RDATA_WIDTH PARAM_VALUE.INSTR_RDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INSTR_RDATA_WIDTH}] ${MODELPARAM_VALUE.INSTR_RDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.PULP_SECURE { MODELPARAM_VALUE.PULP_SECURE PARAM_VALUE.PULP_SECURE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PULP_SECURE}] ${MODELPARAM_VALUE.PULP_SECURE}
}

proc update_MODELPARAM_VALUE.FPU { MODELPARAM_VALUE.FPU PARAM_VALUE.FPU } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FPU}] ${MODELPARAM_VALUE.FPU}
}

proc update_MODELPARAM_VALUE.SHARED_FP { MODELPARAM_VALUE.SHARED_FP PARAM_VALUE.SHARED_FP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHARED_FP}] ${MODELPARAM_VALUE.SHARED_FP}
}

proc update_MODELPARAM_VALUE.SHARED_DSP_MULT { MODELPARAM_VALUE.SHARED_DSP_MULT PARAM_VALUE.SHARED_DSP_MULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHARED_DSP_MULT}] ${MODELPARAM_VALUE.SHARED_DSP_MULT}
}

proc update_MODELPARAM_VALUE.SHARED_INT_DIV { MODELPARAM_VALUE.SHARED_INT_DIV PARAM_VALUE.SHARED_INT_DIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHARED_INT_DIV}] ${MODELPARAM_VALUE.SHARED_INT_DIV}
}

proc update_MODELPARAM_VALUE.SHARED_FP_DIVSQRT { MODELPARAM_VALUE.SHARED_FP_DIVSQRT PARAM_VALUE.SHARED_FP_DIVSQRT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHARED_FP_DIVSQRT}] ${MODELPARAM_VALUE.SHARED_FP_DIVSQRT}
}

proc update_MODELPARAM_VALUE.WAPUTYPE { MODELPARAM_VALUE.WAPUTYPE PARAM_VALUE.WAPUTYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WAPUTYPE}] ${MODELPARAM_VALUE.WAPUTYPE}
}

proc update_MODELPARAM_VALUE.APU_NARGS_CPU { MODELPARAM_VALUE.APU_NARGS_CPU PARAM_VALUE.APU_NARGS_CPU } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.APU_NARGS_CPU}] ${MODELPARAM_VALUE.APU_NARGS_CPU}
}

proc update_MODELPARAM_VALUE.APU_WOP_CPU { MODELPARAM_VALUE.APU_WOP_CPU PARAM_VALUE.APU_WOP_CPU } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.APU_WOP_CPU}] ${MODELPARAM_VALUE.APU_WOP_CPU}
}

proc update_MODELPARAM_VALUE.APU_NDSFLAGS_CPU { MODELPARAM_VALUE.APU_NDSFLAGS_CPU PARAM_VALUE.APU_NDSFLAGS_CPU } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.APU_NDSFLAGS_CPU}] ${MODELPARAM_VALUE.APU_NDSFLAGS_CPU}
}

proc update_MODELPARAM_VALUE.APU_NUSFLAGS_CPU { MODELPARAM_VALUE.APU_NUSFLAGS_CPU PARAM_VALUE.APU_NUSFLAGS_CPU } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.APU_NUSFLAGS_CPU}] ${MODELPARAM_VALUE.APU_NUSFLAGS_CPU}
}

proc update_MODELPARAM_VALUE.PMP_ENCRYPTION_ENABLED { MODELPARAM_VALUE.PMP_ENCRYPTION_ENABLED PARAM_VALUE.PMP_ENCRYPTION_ENABLED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PMP_ENCRYPTION_ENABLED}] ${MODELPARAM_VALUE.PMP_ENCRYPTION_ENABLED}
}

