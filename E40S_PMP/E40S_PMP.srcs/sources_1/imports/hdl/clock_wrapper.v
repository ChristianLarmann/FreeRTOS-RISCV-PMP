//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
//Date        : Tue Jul  2 14:00:27 2024
//Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target clock_wrapper.bd
//Design      : clock_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clock_wrapper
   (reset_rtl,
    sys_clock);
  input reset_rtl;
  input sys_clock;

  wire reset_rtl;
  wire sys_clock;

  clock clock_i
       (.reset_rtl(reset_rtl),
        .sys_clock(sys_clock));
endmodule
