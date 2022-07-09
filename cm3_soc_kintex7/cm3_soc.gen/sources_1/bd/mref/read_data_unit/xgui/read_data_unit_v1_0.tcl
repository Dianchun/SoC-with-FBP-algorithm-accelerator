# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ANGEL_DATA_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ANGEL_DATA_LEN_HALF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ANGLE_NUM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_BURST_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXI_MEM_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FFT_N" -parent ${Page_0}


}

proc update_PARAM_VALUE.ANGEL_DATA_LEN { PARAM_VALUE.ANGEL_DATA_LEN } {
	# Procedure called to update ANGEL_DATA_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ANGEL_DATA_LEN { PARAM_VALUE.ANGEL_DATA_LEN } {
	# Procedure called to validate ANGEL_DATA_LEN
	return true
}

proc update_PARAM_VALUE.ANGEL_DATA_LEN_HALF { PARAM_VALUE.ANGEL_DATA_LEN_HALF } {
	# Procedure called to update ANGEL_DATA_LEN_HALF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ANGEL_DATA_LEN_HALF { PARAM_VALUE.ANGEL_DATA_LEN_HALF } {
	# Procedure called to validate ANGEL_DATA_LEN_HALF
	return true
}

proc update_PARAM_VALUE.ANGLE_NUM { PARAM_VALUE.ANGLE_NUM } {
	# Procedure called to update ANGLE_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ANGLE_NUM { PARAM_VALUE.ANGLE_NUM } {
	# Procedure called to validate ANGLE_NUM
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_MEM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_MEM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_MEM_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_MEM_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_MEM_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_MEM_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_BURST_LEN { PARAM_VALUE.C_M00_AXI_MEM_BURST_LEN } {
	# Procedure called to update C_M00_AXI_MEM_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_BURST_LEN { PARAM_VALUE.C_M00_AXI_MEM_BURST_LEN } {
	# Procedure called to validate C_M00_AXI_MEM_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_MEM_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_MEM_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH } {
	# Procedure called to update C_M00_AXI_MEM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH } {
	# Procedure called to validate C_M00_AXI_MEM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH } {
	# Procedure called to update C_M00_AXI_MEM_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH } {
	# Procedure called to validate C_M00_AXI_MEM_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_MEM_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_MEM_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_MEM_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_MEM_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.FFT_N { PARAM_VALUE.FFT_N } {
	# Procedure called to update FFT_N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FFT_N { PARAM_VALUE.FFT_N } {
	# Procedure called to validate FFT_N
	return true
}


proc update_MODELPARAM_VALUE.FFT_N { MODELPARAM_VALUE.FFT_N PARAM_VALUE.FFT_N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FFT_N}] ${MODELPARAM_VALUE.FFT_N}
}

proc update_MODELPARAM_VALUE.ANGLE_NUM { MODELPARAM_VALUE.ANGLE_NUM PARAM_VALUE.ANGLE_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ANGLE_NUM}] ${MODELPARAM_VALUE.ANGLE_NUM}
}

proc update_MODELPARAM_VALUE.ANGEL_DATA_LEN { MODELPARAM_VALUE.ANGEL_DATA_LEN PARAM_VALUE.ANGEL_DATA_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ANGEL_DATA_LEN}] ${MODELPARAM_VALUE.ANGEL_DATA_LEN}
}

proc update_MODELPARAM_VALUE.ANGEL_DATA_LEN_HALF { MODELPARAM_VALUE.ANGEL_DATA_LEN_HALF PARAM_VALUE.ANGEL_DATA_LEN_HALF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ANGEL_DATA_LEN_HALF}] ${MODELPARAM_VALUE.ANGEL_DATA_LEN_HALF}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_BURST_LEN { MODELPARAM_VALUE.C_M00_AXI_MEM_BURST_LEN PARAM_VALUE.C_M00_AXI_MEM_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_BURST_LEN}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH PARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH PARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH PARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH PARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH PARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH PARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH PARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MEM_BUSER_WIDTH}
}

