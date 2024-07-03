-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 18:39:49 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2DUMP_0_0/Zynq_E40S_PMP_AHB2DUMP_0_0_stub.vhdl
-- Design      : Zynq_E40S_PMP_AHB2DUMP_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_E40S_PMP_AHB2DUMP_0_0 is
  Port ( 
    HSEL : in STD_LOGIC;
    HCLK : in STD_LOGIC;
    HRESETn : in STD_LOGIC;
    HREADY : in STD_LOGIC;
    HADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HTRANS : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HWRITE : in STD_LOGIC;
    HSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    HWDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HREADYOUT : out STD_LOGIC;
    HRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    LEDS : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Zynq_E40S_PMP_AHB2DUMP_0_0;

architecture stub of Zynq_E40S_PMP_AHB2DUMP_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "HSEL,HCLK,HRESETn,HREADY,HADDR[31:0],HTRANS[1:0],HWRITE,HSIZE[2:0],HWDATA[31:0],HREADYOUT,HRDATA[31:0],LEDS[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AHB2DUMP,Vivado 2023.1.1";
begin
end;
