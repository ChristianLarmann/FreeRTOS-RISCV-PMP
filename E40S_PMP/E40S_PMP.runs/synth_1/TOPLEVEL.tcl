# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "/home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.runs/synth_1/TOPLEVEL.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param checkpoint.writeSynthRtdsInDcp 1
set_param synth.incrementalSynthesisCache ./.Xil/Vivado-5249-christian-ThinkPad-X270-W10DG/incrSyn
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.cache/wt [current_project]
set_property parent.project_path /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog -library xil_defaultlib -sv {
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_RISCV/rtl/components/core2ahb3lite_bram.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/include/cv32e40s_pkg.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_alert.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_alignment_buffer.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_alu.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_alu_b_cpop.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_b_decoder.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_clic_int_controller.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_compressed_decoder.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_controller.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_controller_bypass.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_controller_fsm.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_core.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_cs_registers.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_csr.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_data_obi_interface.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_debug_triggers.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_decoder.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_div.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_dummy_instr.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_ex_stage.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_ff_one.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_i_decoder.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_id_stage.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_if_c_obi.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_if_stage.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_instr_obi_interface.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_int_controller.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_lfsr.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_load_store_unit.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_lsu_response_filter.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_m_decoder.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_mpu.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_mult.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_obi_integrity_fifo.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_pc_check.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_pc_target.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_pma.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_pmp.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_prefetch_unit.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_prefetcher.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_rchk_check.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_register_file.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_register_file_ecc.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_register_file_wrapper.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_sequencer.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/bhv/cv32e40s_sim_clock_gate.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/bhv/cv32e40s_sim_sffr.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/bhv/cv32e40s_sim_sffs.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_sleep_unit.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_wb_stage.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_wpt.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/cv32e40s_core/rtl/cv32e40s_write_buffer.sv
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_RISCV/rtl/riscv_top_ahb3lite.sv
}
read_verilog -library xil_defaultlib {
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_DUMP/rtl/AHB2DUMP.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_TIMER/rtl/AHB2TIMER.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_UART/rtl/AHB2UART.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_BUS/rtl/AHBDCD.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_BUS/rtl/AHBMUX.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_CACHE/rtl/AHB_CACHE.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/TOP_LEVEL/SECURE_PLATFORM_RI5CY/rtl/SECURE_PLATFORM_RI5CY_with_Caches.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_UART/rtl/baudgen.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_CACHE/rtl/bram_memory.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_CACHE/rtl/cache_16_way.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_TIMER/rtl/prescaler.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_CACHE/rtl/set.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_UART/rtl/uart_rx.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_UART/rtl/uart_tx.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/IP/AHB_UART/rtl/ufifo.v
  /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/design_database/TOP_LEVEL/TOPLEVEL.v
}
add_files /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.srcs/sources_1/bd/clock/clock.bd
set_property used_in_implementation false [get_files -all /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0_late.xdc]
set_property used_in_implementation false [get_files -all /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/RI5CY_UA.gen/sources_1/bd/clock/ip/clock_clk_wiz_0_0/clock_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/RI5CY_UA.gen/sources_1/bd/clock/clock_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top TOPLEVEL -part xc7z020clg400-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef TOPLEVEL.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file TOPLEVEL_utilization_synth.rpt -pb TOPLEVEL_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
