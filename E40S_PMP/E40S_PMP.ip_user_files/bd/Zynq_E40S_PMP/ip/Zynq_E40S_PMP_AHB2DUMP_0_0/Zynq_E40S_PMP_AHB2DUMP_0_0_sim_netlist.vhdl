-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 18:39:49 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2DUMP_0_0/Zynq_E40S_PMP_AHB2DUMP_0_0_sim_netlist.vhdl
-- Design      : Zynq_E40S_PMP_AHB2DUMP_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2DUMP_0_0_AHB2DUMP is
  port (
    LEDS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    HREADY : in STD_LOGIC;
    HWRITE : in STD_LOGIC;
    HCLK : in STD_LOGIC;
    HTRANS : in STD_LOGIC_VECTOR ( 0 to 0 );
    HSEL : in STD_LOGIC;
    HWDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    HRESETn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2DUMP_0_0_AHB2DUMP : entity is "AHB2DUMP";
end Zynq_E40S_PMP_AHB2DUMP_0_0_AHB2DUMP;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2DUMP_0_0_AHB2DUMP is
  signal APhase_HSEL : STD_LOGIC;
  signal APhase_HWRITE : STD_LOGIC;
  signal LEDS0_n_0 : STD_LOGIC;
  signal \LEDS[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
APhase_HSEL_reg: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => HREADY,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HSEL,
      Q => APhase_HSEL
    );
\APhase_HTRANS_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => HREADY,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HTRANS(0),
      Q => p_0_in
    );
APhase_HWRITE_reg: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => HREADY,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWRITE,
      Q => APhase_HWRITE
    );
LEDS0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => APhase_HSEL,
      I1 => APhase_HWRITE,
      I2 => p_0_in,
      O => LEDS0_n_0
    );
\LEDS[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HRESETn,
      O => \LEDS[7]_i_1_n_0\
    );
\LEDS_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => LEDS0_n_0,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWDATA(0),
      Q => LEDS(0)
    );
\LEDS_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => LEDS0_n_0,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWDATA(1),
      Q => LEDS(1)
    );
\LEDS_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => LEDS0_n_0,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWDATA(2),
      Q => LEDS(2)
    );
\LEDS_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => LEDS0_n_0,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWDATA(3),
      Q => LEDS(3)
    );
\LEDS_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => LEDS0_n_0,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWDATA(4),
      Q => LEDS(4)
    );
\LEDS_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => LEDS0_n_0,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWDATA(5),
      Q => LEDS(5)
    );
\LEDS_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => LEDS0_n_0,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWDATA(6),
      Q => LEDS(6)
    );
\LEDS_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => LEDS0_n_0,
      CLR => \LEDS[7]_i_1_n_0\,
      D => HWDATA(7),
      Q => LEDS(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2DUMP_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_E40S_PMP_AHB2DUMP_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_E40S_PMP_AHB2DUMP_0_0 : entity is "Zynq_E40S_PMP_AHB2DUMP_0_0,AHB2DUMP,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_E40S_PMP_AHB2DUMP_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Zynq_E40S_PMP_AHB2DUMP_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_E40S_PMP_AHB2DUMP_0_0 : entity is "AHB2DUMP,Vivado 2023.1.1";
end Zynq_E40S_PMP_AHB2DUMP_0_0;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2DUMP_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^leds\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  HRDATA(31) <= \<const0>\;
  HRDATA(30) <= \<const0>\;
  HRDATA(29) <= \<const0>\;
  HRDATA(28) <= \<const0>\;
  HRDATA(27) <= \<const0>\;
  HRDATA(26) <= \<const0>\;
  HRDATA(25) <= \<const0>\;
  HRDATA(24) <= \<const0>\;
  HRDATA(23) <= \<const0>\;
  HRDATA(22) <= \<const0>\;
  HRDATA(21) <= \<const0>\;
  HRDATA(20) <= \<const0>\;
  HRDATA(19) <= \<const0>\;
  HRDATA(18) <= \<const0>\;
  HRDATA(17) <= \<const0>\;
  HRDATA(16) <= \<const0>\;
  HRDATA(15) <= \<const0>\;
  HRDATA(14) <= \<const0>\;
  HRDATA(13) <= \<const0>\;
  HRDATA(12) <= \<const0>\;
  HRDATA(11) <= \<const0>\;
  HRDATA(10) <= \<const0>\;
  HRDATA(9) <= \<const0>\;
  HRDATA(8) <= \<const0>\;
  HRDATA(7 downto 0) <= \^leds\(7 downto 0);
  HREADYOUT <= \<const1>\;
  LEDS(7 downto 0) <= \^leds\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.Zynq_E40S_PMP_AHB2DUMP_0_0_AHB2DUMP
     port map (
      HCLK => HCLK,
      HREADY => HREADY,
      HRESETn => HRESETn,
      HSEL => HSEL,
      HTRANS(0) => HTRANS(1),
      HWDATA(7 downto 0) => HWDATA(7 downto 0),
      HWRITE => HWRITE,
      LEDS(7 downto 0) => \^leds\(7 downto 0)
    );
end STRUCTURE;
