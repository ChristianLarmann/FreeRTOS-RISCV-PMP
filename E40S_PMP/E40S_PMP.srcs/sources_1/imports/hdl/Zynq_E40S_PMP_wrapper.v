//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
//Date        : Tue Jul  2 19:39:52 2024
//Host        : TP-T480s running 64-bit unknown
//Command     : generate_target Zynq_E40S_PMP_wrapper.bd
//Design      : Zynq_E40S_PMP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Zynq_E40S_PMP_wrapper
   (BT_RX,
    clk_125,
    system_reset);
  input BT_RX;
  input clk_125;
  input system_reset;

  wire BT_RX;
  wire clk_125;
  wire system_reset;

  Zynq_E40S_PMP Zynq_E40S_PMP_i
       (.BT_RX(BT_RX),
        .clk_125(clk_125),
        .system_reset(system_reset));
endmodule
