-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 16:16:57 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBMUX_0_0/Zynq_E40S_PMP_AHBMUX_0_0_sim_netlist.vhdl
-- Design      : Zynq_E40S_PMP_AHBMUX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHBMUX_0_0_AHBMUX is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    HRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    MUX_SEL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    HCLK : in STD_LOGIC;
    HRESETn : in STD_LOGIC;
    HREADYOUT_S2 : in STD_LOGIC;
    HREADYOUT_S0 : in STD_LOGIC;
    HREADYOUT_S7 : in STD_LOGIC;
    HREADYOUT_S5 : in STD_LOGIC;
    HREADYOUT_S4 : in STD_LOGIC;
    HRDATA_NOMAP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S4 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHBMUX_0_0_AHBMUX : entity is "AHBMUX";
end Zynq_E40S_PMP_AHBMUX_0_0_AHBMUX;

architecture STRUCTURE of Zynq_E40S_PMP_AHBMUX_0_0_AHBMUX is
  signal APHASE_MUX_SEL : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \APHASE_MUX_SEL[3]_i_1_n_0\ : STD_LOGIC;
  signal \APHASE_MUX_SEL_reg_n_0_[0]\ : STD_LOGIC;
  signal \APHASE_MUX_SEL_reg_n_0_[1]\ : STD_LOGIC;
  signal \APHASE_MUX_SEL_reg_n_0_[2]\ : STD_LOGIC;
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \HRDATA[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \HRDATA[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal HREADY_INST_0_i_1_n_0 : STD_LOGIC;
  signal HREADY_INST_0_i_2_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\APHASE_MUX_SEL[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HRESETn,
      O => \APHASE_MUX_SEL[3]_i_1_n_0\
    );
\APHASE_MUX_SEL_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \^e\(0),
      CLR => \APHASE_MUX_SEL[3]_i_1_n_0\,
      D => MUX_SEL(0),
      Q => \APHASE_MUX_SEL_reg_n_0_[0]\
    );
\APHASE_MUX_SEL_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \^e\(0),
      CLR => \APHASE_MUX_SEL[3]_i_1_n_0\,
      D => MUX_SEL(1),
      Q => \APHASE_MUX_SEL_reg_n_0_[1]\
    );
\APHASE_MUX_SEL_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \^e\(0),
      CLR => \APHASE_MUX_SEL[3]_i_1_n_0\,
      D => MUX_SEL(2),
      Q => \APHASE_MUX_SEL_reg_n_0_[2]\
    );
\APHASE_MUX_SEL_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \^e\(0),
      CLR => \APHASE_MUX_SEL[3]_i_1_n_0\,
      D => MUX_SEL(3),
      Q => APHASE_MUX_SEL(3)
    );
\HRDATA[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(0),
      I1 => \HRDATA[0]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[0]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(0)
    );
\HRDATA[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(0),
      I1 => HRDATA_NOMAP(0),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(0),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(0),
      O => \HRDATA[0]_INST_0_i_1_n_0\
    );
\HRDATA[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(0),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(0),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(0),
      O => \HRDATA[0]_INST_0_i_2_n_0\
    );
\HRDATA[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(10),
      I1 => \HRDATA[10]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[10]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(10)
    );
\HRDATA[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(10),
      I1 => HRDATA_NOMAP(10),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(10),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(10),
      O => \HRDATA[10]_INST_0_i_1_n_0\
    );
\HRDATA[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(10),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(10),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(10),
      O => \HRDATA[10]_INST_0_i_2_n_0\
    );
\HRDATA[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(11),
      I1 => \HRDATA[11]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[11]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(11)
    );
\HRDATA[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(11),
      I1 => HRDATA_NOMAP(11),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(11),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(11),
      O => \HRDATA[11]_INST_0_i_1_n_0\
    );
\HRDATA[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(11),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(11),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(11),
      O => \HRDATA[11]_INST_0_i_2_n_0\
    );
\HRDATA[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(12),
      I1 => \HRDATA[12]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[12]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(12)
    );
\HRDATA[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(12),
      I1 => HRDATA_NOMAP(12),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(12),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(12),
      O => \HRDATA[12]_INST_0_i_1_n_0\
    );
\HRDATA[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(12),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(12),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(12),
      O => \HRDATA[12]_INST_0_i_2_n_0\
    );
\HRDATA[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(13),
      I1 => \HRDATA[13]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[13]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(13)
    );
\HRDATA[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(13),
      I1 => HRDATA_NOMAP(13),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(13),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(13),
      O => \HRDATA[13]_INST_0_i_1_n_0\
    );
\HRDATA[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(13),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(13),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(13),
      O => \HRDATA[13]_INST_0_i_2_n_0\
    );
\HRDATA[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(14),
      I1 => \HRDATA[14]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[14]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(14)
    );
\HRDATA[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(14),
      I1 => HRDATA_NOMAP(14),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(14),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(14),
      O => \HRDATA[14]_INST_0_i_1_n_0\
    );
\HRDATA[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(14),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(14),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(14),
      O => \HRDATA[14]_INST_0_i_2_n_0\
    );
\HRDATA[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(15),
      I1 => \HRDATA[15]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[15]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(15)
    );
\HRDATA[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(15),
      I1 => HRDATA_NOMAP(15),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(15),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(15),
      O => \HRDATA[15]_INST_0_i_1_n_0\
    );
\HRDATA[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(15),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(15),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(15),
      O => \HRDATA[15]_INST_0_i_2_n_0\
    );
\HRDATA[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(16),
      I1 => \HRDATA[16]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[16]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(16)
    );
\HRDATA[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(16),
      I1 => HRDATA_NOMAP(16),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(16),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(16),
      O => \HRDATA[16]_INST_0_i_1_n_0\
    );
\HRDATA[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(16),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(16),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(16),
      O => \HRDATA[16]_INST_0_i_2_n_0\
    );
\HRDATA[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(17),
      I1 => \HRDATA[17]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[17]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(17)
    );
\HRDATA[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(17),
      I1 => HRDATA_NOMAP(17),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(17),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(17),
      O => \HRDATA[17]_INST_0_i_1_n_0\
    );
\HRDATA[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(17),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(17),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(17),
      O => \HRDATA[17]_INST_0_i_2_n_0\
    );
\HRDATA[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(18),
      I1 => \HRDATA[18]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[18]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(18)
    );
\HRDATA[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(18),
      I1 => HRDATA_NOMAP(18),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(18),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(18),
      O => \HRDATA[18]_INST_0_i_1_n_0\
    );
\HRDATA[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(18),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(18),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(18),
      O => \HRDATA[18]_INST_0_i_2_n_0\
    );
\HRDATA[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(19),
      I1 => \HRDATA[19]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[19]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(19)
    );
\HRDATA[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(19),
      I1 => HRDATA_NOMAP(19),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(19),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(19),
      O => \HRDATA[19]_INST_0_i_1_n_0\
    );
\HRDATA[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(19),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(19),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(19),
      O => \HRDATA[19]_INST_0_i_2_n_0\
    );
\HRDATA[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(1),
      I1 => \HRDATA[1]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[1]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(1)
    );
\HRDATA[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(1),
      I1 => HRDATA_NOMAP(1),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(1),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(1),
      O => \HRDATA[1]_INST_0_i_1_n_0\
    );
\HRDATA[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(1),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(1),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(1),
      O => \HRDATA[1]_INST_0_i_2_n_0\
    );
\HRDATA[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(20),
      I1 => \HRDATA[20]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[20]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(20)
    );
\HRDATA[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(20),
      I1 => HRDATA_NOMAP(20),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(20),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(20),
      O => \HRDATA[20]_INST_0_i_1_n_0\
    );
\HRDATA[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(20),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(20),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(20),
      O => \HRDATA[20]_INST_0_i_2_n_0\
    );
\HRDATA[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(21),
      I1 => \HRDATA[21]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[21]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(21)
    );
\HRDATA[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(21),
      I1 => HRDATA_NOMAP(21),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(21),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(21),
      O => \HRDATA[21]_INST_0_i_1_n_0\
    );
\HRDATA[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(21),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(21),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(21),
      O => \HRDATA[21]_INST_0_i_2_n_0\
    );
\HRDATA[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(22),
      I1 => \HRDATA[22]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[22]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(22)
    );
\HRDATA[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(22),
      I1 => HRDATA_NOMAP(22),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(22),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(22),
      O => \HRDATA[22]_INST_0_i_1_n_0\
    );
\HRDATA[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(22),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(22),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(22),
      O => \HRDATA[22]_INST_0_i_2_n_0\
    );
\HRDATA[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(23),
      I1 => \HRDATA[23]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[23]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(23)
    );
\HRDATA[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(23),
      I1 => HRDATA_NOMAP(23),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(23),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(23),
      O => \HRDATA[23]_INST_0_i_1_n_0\
    );
\HRDATA[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(23),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(23),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(23),
      O => \HRDATA[23]_INST_0_i_2_n_0\
    );
\HRDATA[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(24),
      I1 => \HRDATA[24]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[24]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(24)
    );
\HRDATA[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(24),
      I1 => HRDATA_NOMAP(24),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(24),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(24),
      O => \HRDATA[24]_INST_0_i_1_n_0\
    );
\HRDATA[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(24),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(24),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(24),
      O => \HRDATA[24]_INST_0_i_2_n_0\
    );
\HRDATA[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(25),
      I1 => \HRDATA[25]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[25]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(25)
    );
\HRDATA[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(25),
      I1 => HRDATA_NOMAP(25),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(25),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(25),
      O => \HRDATA[25]_INST_0_i_1_n_0\
    );
\HRDATA[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(25),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(25),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(25),
      O => \HRDATA[25]_INST_0_i_2_n_0\
    );
\HRDATA[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(26),
      I1 => \HRDATA[26]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[26]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(26)
    );
\HRDATA[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(26),
      I1 => HRDATA_NOMAP(26),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(26),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(26),
      O => \HRDATA[26]_INST_0_i_1_n_0\
    );
\HRDATA[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(26),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(26),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(26),
      O => \HRDATA[26]_INST_0_i_2_n_0\
    );
\HRDATA[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(27),
      I1 => \HRDATA[27]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[27]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(27)
    );
\HRDATA[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(27),
      I1 => HRDATA_NOMAP(27),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(27),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(27),
      O => \HRDATA[27]_INST_0_i_1_n_0\
    );
\HRDATA[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(27),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(27),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(27),
      O => \HRDATA[27]_INST_0_i_2_n_0\
    );
\HRDATA[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(28),
      I1 => \HRDATA[28]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[28]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(28)
    );
\HRDATA[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(28),
      I1 => HRDATA_NOMAP(28),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(28),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(28),
      O => \HRDATA[28]_INST_0_i_1_n_0\
    );
\HRDATA[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(28),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(28),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(28),
      O => \HRDATA[28]_INST_0_i_2_n_0\
    );
\HRDATA[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(29),
      I1 => \HRDATA[29]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[29]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(29)
    );
\HRDATA[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(29),
      I1 => HRDATA_NOMAP(29),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(29),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(29),
      O => \HRDATA[29]_INST_0_i_1_n_0\
    );
\HRDATA[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(29),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(29),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(29),
      O => \HRDATA[29]_INST_0_i_2_n_0\
    );
\HRDATA[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(2),
      I1 => \HRDATA[2]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[2]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(2)
    );
\HRDATA[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(2),
      I1 => HRDATA_NOMAP(2),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(2),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(2),
      O => \HRDATA[2]_INST_0_i_1_n_0\
    );
\HRDATA[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(2),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(2),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(2),
      O => \HRDATA[2]_INST_0_i_2_n_0\
    );
\HRDATA[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(30),
      I1 => \HRDATA[30]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[30]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(30)
    );
\HRDATA[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(30),
      I1 => HRDATA_NOMAP(30),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(30),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(30),
      O => \HRDATA[30]_INST_0_i_1_n_0\
    );
\HRDATA[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(30),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(30),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(30),
      O => \HRDATA[30]_INST_0_i_2_n_0\
    );
\HRDATA[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(31),
      I1 => \HRDATA[31]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[31]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(31)
    );
\HRDATA[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(31),
      I1 => HRDATA_NOMAP(31),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(31),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(31),
      O => \HRDATA[31]_INST_0_i_1_n_0\
    );
\HRDATA[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(31),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(31),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(31),
      O => \HRDATA[31]_INST_0_i_2_n_0\
    );
\HRDATA[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(3),
      I1 => \HRDATA[3]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[3]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(3)
    );
\HRDATA[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(3),
      I1 => HRDATA_NOMAP(3),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(3),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(3),
      O => \HRDATA[3]_INST_0_i_1_n_0\
    );
\HRDATA[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(3),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(3),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(3),
      O => \HRDATA[3]_INST_0_i_2_n_0\
    );
\HRDATA[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(4),
      I1 => \HRDATA[4]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[4]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(4)
    );
\HRDATA[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(4),
      I1 => HRDATA_NOMAP(4),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(4),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(4),
      O => \HRDATA[4]_INST_0_i_1_n_0\
    );
\HRDATA[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(4),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(4),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(4),
      O => \HRDATA[4]_INST_0_i_2_n_0\
    );
\HRDATA[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(5),
      I1 => \HRDATA[5]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[5]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(5)
    );
\HRDATA[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(5),
      I1 => HRDATA_NOMAP(5),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(5),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(5),
      O => \HRDATA[5]_INST_0_i_1_n_0\
    );
\HRDATA[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(5),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(5),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(5),
      O => \HRDATA[5]_INST_0_i_2_n_0\
    );
\HRDATA[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(6),
      I1 => \HRDATA[6]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[6]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(6)
    );
\HRDATA[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(6),
      I1 => HRDATA_NOMAP(6),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(6),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(6),
      O => \HRDATA[6]_INST_0_i_1_n_0\
    );
\HRDATA[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(6),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(6),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(6),
      O => \HRDATA[6]_INST_0_i_2_n_0\
    );
\HRDATA[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(7),
      I1 => \HRDATA[7]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[7]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(7)
    );
\HRDATA[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(7),
      I1 => HRDATA_NOMAP(7),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(7),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(7),
      O => \HRDATA[7]_INST_0_i_1_n_0\
    );
\HRDATA[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(7),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(7),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(7),
      O => \HRDATA[7]_INST_0_i_2_n_0\
    );
\HRDATA[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(8),
      I1 => \HRDATA[8]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[8]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(8)
    );
\HRDATA[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(8),
      I1 => HRDATA_NOMAP(8),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(8),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(8),
      O => \HRDATA[8]_INST_0_i_1_n_0\
    );
\HRDATA[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(8),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(8),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(8),
      O => \HRDATA[8]_INST_0_i_2_n_0\
    );
\HRDATA[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => HRDATA_NOMAP(9),
      I1 => \HRDATA[9]_INST_0_i_1_n_0\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => \HRDATA[9]_INST_0_i_2_n_0\,
      I4 => APHASE_MUX_SEL(3),
      O => HRDATA(9)
    );
\HRDATA[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => HRDATA_S7(9),
      I1 => HRDATA_NOMAP(9),
      I2 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I3 => HRDATA_S5(9),
      I4 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I5 => HRDATA_S4(9),
      O => \HRDATA[9]_INST_0_i_1_n_0\
    );
\HRDATA[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => HRDATA_S2(9),
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HRDATA_NOMAP(9),
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HRDATA_S0(9),
      O => \HRDATA[9]_INST_0_i_2_n_0\
    );
HREADY_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => APHASE_MUX_SEL(3),
      I1 => HREADY_INST_0_i_1_n_0,
      I2 => \APHASE_MUX_SEL_reg_n_0_[2]\,
      I3 => HREADY_INST_0_i_2_n_0,
      O => \^e\(0)
    );
HREADY_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => HREADYOUT_S2,
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I3 => HREADYOUT_S0,
      O => HREADY_INST_0_i_1_n_0
    );
HREADY_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB8CC"
    )
        port map (
      I0 => HREADYOUT_S7,
      I1 => \APHASE_MUX_SEL_reg_n_0_[1]\,
      I2 => HREADYOUT_S5,
      I3 => \APHASE_MUX_SEL_reg_n_0_[0]\,
      I4 => HREADYOUT_S4,
      O => HREADY_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHBMUX_0_0 is
  port (
    HCLK : in STD_LOGIC;
    HRESETn : in STD_LOGIC;
    MUX_SEL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    HRDATA_S0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_S7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRDATA_NOMAP : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HREADYOUT_S0 : in STD_LOGIC;
    HREADYOUT_S2 : in STD_LOGIC;
    HREADYOUT_S4 : in STD_LOGIC;
    HREADYOUT_S5 : in STD_LOGIC;
    HREADYOUT_S7 : in STD_LOGIC;
    HREADYOUT_NOMAP : in STD_LOGIC;
    HREADY : out STD_LOGIC;
    HRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_E40S_PMP_AHBMUX_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_E40S_PMP_AHBMUX_0_0 : entity is "Zynq_E40S_PMP_AHBMUX_0_0,AHBMUX,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_E40S_PMP_AHBMUX_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Zynq_E40S_PMP_AHBMUX_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_E40S_PMP_AHBMUX_0_0 : entity is "AHBMUX,Vivado 2023.1.1";
end Zynq_E40S_PMP_AHBMUX_0_0;

architecture STRUCTURE of Zynq_E40S_PMP_AHBMUX_0_0 is
begin
inst: entity work.Zynq_E40S_PMP_AHBMUX_0_0_AHBMUX
     port map (
      E(0) => HREADY,
      HCLK => HCLK,
      HRDATA(31 downto 0) => HRDATA(31 downto 0),
      HRDATA_NOMAP(31 downto 0) => HRDATA_NOMAP(31 downto 0),
      HRDATA_S0(31 downto 0) => HRDATA_S0(31 downto 0),
      HRDATA_S2(31 downto 0) => HRDATA_S2(31 downto 0),
      HRDATA_S4(31 downto 0) => HRDATA_S4(31 downto 0),
      HRDATA_S5(31 downto 0) => HRDATA_S5(31 downto 0),
      HRDATA_S7(31 downto 0) => HRDATA_S7(31 downto 0),
      HREADYOUT_S0 => HREADYOUT_S0,
      HREADYOUT_S2 => HREADYOUT_S2,
      HREADYOUT_S4 => HREADYOUT_S4,
      HREADYOUT_S5 => HREADYOUT_S5,
      HREADYOUT_S7 => HREADYOUT_S7,
      HRESETn => HRESETn,
      MUX_SEL(3 downto 0) => MUX_SEL(3 downto 0)
    );
end STRUCTURE;
