// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
// Date        : Wed Jul  3 14:34:25 2024
// Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top Zynq_E40S_PMP_c_addsub_1_0 -prefix
//               Zynq_E40S_PMP_c_addsub_1_0_ Zynq_E40S_PMP_c_addsub_1_0_stub.v
// Design      : Zynq_E40S_PMP_c_addsub_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_15,Vivado 2023.1.1" *)
module Zynq_E40S_PMP_c_addsub_1_0(A, B, S)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],S[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  output [31:0]S;
endmodule
