//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
//Date        : Wed Jul  3 14:08:12 2024
//Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target Zynq_E40S_PMP_wrapper.bd
//Design      : Zynq_E40S_PMP_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Zynq_E40S_PMP_wrapper
   (BT_RX,
    clk_125,
    fetch_enable_cpu,
    system_reset);
  input BT_RX;
  input clk_125;
  input fetch_enable_cpu;
  input system_reset;

  wire BT_RX;
  wire clk_125;
  wire fetch_enable_cpu;
  wire system_reset;

  Zynq_E40S_PMP Zynq_E40S_PMP_i
       (.BT_RX(BT_RX),
        .clk_125(clk_125),
        .fetch_enable_cpu(fetch_enable_cpu),
        .system_reset(system_reset));
endmodule
