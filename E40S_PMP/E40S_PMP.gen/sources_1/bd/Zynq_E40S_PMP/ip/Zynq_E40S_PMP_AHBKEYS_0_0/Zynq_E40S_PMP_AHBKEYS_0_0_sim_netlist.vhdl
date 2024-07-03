-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 18:39:49 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBKEYS_0_0/Zynq_E40S_PMP_AHBKEYS_0_0_sim_netlist.vhdl
-- Design      : Zynq_E40S_PMP_AHBKEYS_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHBKEYS_0_0_AHBKEYS is
  port (
    HRDATA : out STD_LOGIC_VECTOR ( 4 downto 0 );
    HCLK : in STD_LOGIC;
    HADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    HSEL : in STD_LOGIC;
    HWRITE : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHBKEYS_0_0_AHBKEYS : entity is "AHBKEYS";
end Zynq_E40S_PMP_AHBKEYS_0_0_AHBKEYS;

architecture STRUCTURE of Zynq_E40S_PMP_AHBKEYS_0_0_AHBKEYS is
  signal \HRDATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[31]_i_3_n_0\ : STD_LOGIC;
  signal \HRDATA[31]_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \HRDATA[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \HRDATA[30]_i_1\ : label is "soft_lutpair0";
begin
\HRDATA[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000A60000"
    )
        port map (
      I0 => HADDR(2),
      I1 => HADDR(3),
      I2 => \HRDATA[31]_i_4_n_0\,
      I3 => HWRITE,
      I4 => HSEL,
      I5 => \HRDATA[31]_i_3_n_0\,
      O => p_1_in(28)
    );
\HRDATA[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000404040004"
    )
        port map (
      I0 => HWRITE,
      I1 => HSEL,
      I2 => \HRDATA[31]_i_3_n_0\,
      I3 => HADDR(3),
      I4 => HADDR(2),
      I5 => \HRDATA[31]_i_4_n_0\,
      O => p_1_in(29)
    );
\HRDATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF9FF"
    )
        port map (
      I0 => HADDR(3),
      I1 => \HRDATA[31]_i_4_n_0\,
      I2 => \HRDATA[31]_i_3_n_0\,
      I3 => HSEL,
      I4 => HWRITE,
      O => p_1_in(2)
    );
\HRDATA[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F900"
    )
        port map (
      I0 => HADDR(3),
      I1 => \HRDATA[31]_i_4_n_0\,
      I2 => \HRDATA[31]_i_3_n_0\,
      I3 => HSEL,
      I4 => HWRITE,
      O => p_1_in(30)
    );
\HRDATA[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0001FFFF"
    )
        port map (
      I0 => HADDR(11),
      I1 => HADDR(10),
      I2 => HADDR(9),
      I3 => \HRDATA[31]_i_3_n_0\,
      I4 => HSEL,
      I5 => HWRITE,
      O => \HRDATA[31]_i_1_n_0\
    );
\HRDATA[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30203030"
    )
        port map (
      I0 => \HRDATA[31]_i_3_n_0\,
      I1 => HWRITE,
      I2 => HSEL,
      I3 => \HRDATA[31]_i_4_n_0\,
      I4 => HADDR(3),
      O => p_1_in(31)
    );
\HRDATA[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => HADDR(6),
      I1 => HADDR(7),
      I2 => HADDR(4),
      I3 => HADDR(5),
      I4 => HADDR(1),
      I5 => HADDR(0),
      O => \HRDATA[31]_i_3_n_0\
    );
\HRDATA[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => HADDR(9),
      I1 => HADDR(10),
      I2 => HADDR(11),
      I3 => HADDR(8),
      O => \HRDATA[31]_i_4_n_0\
    );
\HRDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => \HRDATA[31]_i_1_n_0\,
      D => p_1_in(28),
      Q => HRDATA(1),
      R => '0'
    );
\HRDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => \HRDATA[31]_i_1_n_0\,
      D => p_1_in(29),
      Q => HRDATA(2),
      R => '0'
    );
\HRDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => \HRDATA[31]_i_1_n_0\,
      D => p_1_in(2),
      Q => HRDATA(0),
      R => '0'
    );
\HRDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => \HRDATA[31]_i_1_n_0\,
      D => p_1_in(30),
      Q => HRDATA(3),
      R => '0'
    );
\HRDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => \HRDATA[31]_i_1_n_0\,
      D => p_1_in(31),
      Q => HRDATA(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHBKEYS_0_0 is
  port (
    HCLK : in STD_LOGIC;
    HRESETn : in STD_LOGIC;
    HADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HWRITE : in STD_LOGIC;
    HSEL : in STD_LOGIC;
    HREADY : in STD_LOGIC;
    HRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    HREADYOUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_E40S_PMP_AHBKEYS_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_E40S_PMP_AHBKEYS_0_0 : entity is "Zynq_E40S_PMP_AHBKEYS_0_0,AHBKEYS,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_E40S_PMP_AHBKEYS_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Zynq_E40S_PMP_AHBKEYS_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_E40S_PMP_AHBKEYS_0_0 : entity is "AHBKEYS,Vivado 2023.1.1";
end Zynq_E40S_PMP_AHBKEYS_0_0;

architecture STRUCTURE of Zynq_E40S_PMP_AHBKEYS_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^hrdata\ : STD_LOGIC_VECTOR ( 27 downto 2 );
begin
  HRDATA(31 downto 28) <= \^hrdata\(27 downto 24);
  HRDATA(27 downto 24) <= \^hrdata\(27 downto 24);
  HRDATA(23 downto 20) <= \^hrdata\(27 downto 24);
  HRDATA(19 downto 16) <= \^hrdata\(27 downto 24);
  HRDATA(15 downto 12) <= \^hrdata\(27 downto 24);
  HRDATA(11 downto 8) <= \^hrdata\(27 downto 24);
  HRDATA(7 downto 4) <= \^hrdata\(27 downto 24);
  HRDATA(3) <= \^hrdata\(27);
  HRDATA(2) <= \^hrdata\(2);
  HRDATA(1 downto 0) <= \^hrdata\(25 downto 24);
  HREADYOUT <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.Zynq_E40S_PMP_AHBKEYS_0_0_AHBKEYS
     port map (
      HADDR(11 downto 0) => HADDR(11 downto 0),
      HCLK => HCLK,
      HRDATA(4 downto 1) => \^hrdata\(27 downto 24),
      HRDATA(0) => \^hrdata\(2),
      HSEL => HSEL,
      HWRITE => HWRITE
    );
end STRUCTURE;
