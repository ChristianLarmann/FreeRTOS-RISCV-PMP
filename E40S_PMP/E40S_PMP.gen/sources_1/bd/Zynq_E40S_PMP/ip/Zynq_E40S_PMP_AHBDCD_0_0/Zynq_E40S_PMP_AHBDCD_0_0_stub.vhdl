-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Tue Jul  2 23:01:42 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBDCD_0_0/Zynq_E40S_PMP_AHBDCD_0_0_stub.vhdl
-- Design      : Zynq_E40S_PMP_AHBDCD_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_E40S_PMP_AHBDCD_0_0 is
  Port ( 
    HADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RESET : in STD_LOGIC;
    HSEL_S0 : out STD_LOGIC;
    HSEL_S2 : out STD_LOGIC;
    HSEL_S4 : out STD_LOGIC;
    HSEL_S5 : out STD_LOGIC;
    HSEL_S7 : out STD_LOGIC;
    HSEL_NOMAP : out STD_LOGIC;
    MUX_SEL : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end Zynq_E40S_PMP_AHBDCD_0_0;

architecture stub of Zynq_E40S_PMP_AHBDCD_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "HADDR[31:0],RESET,HSEL_S0,HSEL_S2,HSEL_S4,HSEL_S5,HSEL_S7,HSEL_NOMAP,MUX_SEL[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AHBDCD,Vivado 2023.1.1";
begin
end;
