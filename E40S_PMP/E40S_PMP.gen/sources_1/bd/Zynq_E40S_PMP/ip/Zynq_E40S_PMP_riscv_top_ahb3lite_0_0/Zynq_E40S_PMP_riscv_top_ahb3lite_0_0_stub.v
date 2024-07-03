// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 16:09:51 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_riscv_top_ahb3lite_0_0/Zynq_E40S_PMP_riscv_top_ahb3lite_0_0_stub.v
// Design      : Zynq_E40S_PMP_riscv_top_ahb3lite_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "riscv_top_ahb3lite,Vivado 2023.1.1" *)
module Zynq_E40S_PMP_riscv_top_ahb3lite_0_0(HCLK, HRESETn, ins_HADDR, ins_HMASTLOCK, 
  ins_HPROT, ins_HSIZE, ins_HTRANS, ins_HWDATA, ins_HWRITE, ins_HRDATA, ins_HREADY, ins_HENCRYPT, 
  dat_HADDR, dat_HMASTLOCK, dat_HPROT, dat_HSIZE, dat_HTRANS, dat_HWDATA, dat_HWRITE, dat_HRDATA, 
  dat_HREADY, dat_HENCRYPT, irqs, debug_req_i, debug_gnt_o, debug_rvalid_o, debug_addr_i, 
  debug_we_i, debug_wdata_i, debug_rdata_o, debug_halted_o, debug_halt_i, debug_resume_i, 
  fetch_enable_i, core_busy_o, dmem_access_req_debug_o)
/* synthesis syn_black_box black_box_pad_pin="HRESETn,ins_HADDR[31:0],ins_HMASTLOCK,ins_HPROT[3:0],ins_HSIZE[2:0],ins_HTRANS[1:0],ins_HWDATA[31:0],ins_HWRITE,ins_HRDATA[31:0],ins_HREADY,ins_HENCRYPT,dat_HADDR[31:0],dat_HMASTLOCK,dat_HPROT[3:0],dat_HSIZE[2:0],dat_HTRANS[1:0],dat_HWDATA[31:0],dat_HWRITE,dat_HRDATA[31:0],dat_HREADY,dat_HENCRYPT,irqs[31:0],debug_req_i,debug_gnt_o,debug_rvalid_o,debug_addr_i[14:0],debug_we_i,debug_wdata_i[31:0],debug_rdata_o[31:0],debug_halted_o,debug_halt_i,debug_resume_i,fetch_enable_i,core_busy_o" */
/* synthesis syn_force_seq_prim="HCLK" */
/* synthesis syn_force_seq_prim="dmem_access_req_debug_o" */;
  input HCLK /* synthesis syn_isclock = 1 */;
  input HRESETn;
  output [31:0]ins_HADDR;
  output ins_HMASTLOCK;
  output [3:0]ins_HPROT;
  output [2:0]ins_HSIZE;
  output [1:0]ins_HTRANS;
  output [31:0]ins_HWDATA;
  output ins_HWRITE;
  input [31:0]ins_HRDATA;
  input ins_HREADY;
  output ins_HENCRYPT;
  output [31:0]dat_HADDR;
  output dat_HMASTLOCK;
  output [3:0]dat_HPROT;
  output [2:0]dat_HSIZE;
  output [1:0]dat_HTRANS;
  output [31:0]dat_HWDATA;
  output dat_HWRITE;
  input [31:0]dat_HRDATA;
  input dat_HREADY;
  output dat_HENCRYPT;
  input [31:0]irqs;
  input debug_req_i;
  output debug_gnt_o;
  output debug_rvalid_o;
  input [14:0]debug_addr_i;
  input debug_we_i;
  input [31:0]debug_wdata_i;
  output [31:0]debug_rdata_o;
  output debug_halted_o;
  input debug_halt_i;
  input debug_resume_i;
  input fetch_enable_i;
  output core_busy_o;
  output dmem_access_req_debug_o /* synthesis syn_isclock = 1 */;
endmodule
