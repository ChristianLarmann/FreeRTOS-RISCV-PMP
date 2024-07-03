// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 16:06:29 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_UA_encrypt_1_0/Zynq_E40S_PMP_UA_encrypt_1_0_stub.v
// Design      : Zynq_E40S_PMP_UA_encrypt_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UA_encrypt,Vivado 2023.1.1" *)
module Zynq_E40S_PMP_UA_encrypt_1_0(clock, reset, decryption_enabled_cpu, 
  write_back_encryption_enabled, cache_rdata, cache_wdata, cache_address, cache_req, 
  cache_rw_enable, cache_ready, mem_rdata, mem_wdata, mem_address, mem_req, mem_rw_enable, 
  mem_valid, debug)
/* synthesis syn_black_box black_box_pad_pin="reset,decryption_enabled_cpu,write_back_encryption_enabled,cache_rdata[127:0],cache_wdata[127:0],cache_address[31:0],cache_req,cache_rw_enable,cache_ready,mem_rdata[127:0],mem_wdata[127:0],mem_address[31:0],mem_req,mem_rw_enable,mem_valid,debug[7:0]" */
/* synthesis syn_force_seq_prim="clock" */;
  input clock /* synthesis syn_isclock = 1 */;
  input reset;
  input decryption_enabled_cpu;
  input write_back_encryption_enabled;
  output [127:0]cache_rdata;
  input [127:0]cache_wdata;
  input [31:0]cache_address;
  input cache_req;
  input cache_rw_enable;
  output cache_ready;
  input [127:0]mem_rdata;
  output [127:0]mem_wdata;
  output [31:0]mem_address;
  output mem_req;
  output mem_rw_enable;
  input mem_valid;
  output [7:0]debug;
endmodule
