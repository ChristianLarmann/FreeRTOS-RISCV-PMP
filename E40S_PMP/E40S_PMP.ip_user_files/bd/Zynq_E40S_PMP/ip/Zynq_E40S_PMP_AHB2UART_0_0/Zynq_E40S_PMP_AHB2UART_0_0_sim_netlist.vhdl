-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 16:08:37 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2UART_0_0/Zynq_E40S_PMP_AHB2UART_0_0_sim_netlist.vhdl
-- Design      : Zynq_E40S_PMP_AHB2UART_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2UART_0_0_BAUDGEN is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    HCLK : in STD_LOGIC;
    \count_reg_reg[0]_0\ : in STD_LOGIC;
    b_rate : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2UART_0_0_BAUDGEN : entity is "BAUDGEN";
end Zynq_E40S_PMP_AHB2UART_0_0_BAUDGEN;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2UART_0_0_BAUDGEN is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \baudtick_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \baudtick_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \baudtick_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \baudtick_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \baudtick_carry__0_n_1\ : STD_LOGIC;
  signal \baudtick_carry__0_n_2\ : STD_LOGIC;
  signal \baudtick_carry__0_n_3\ : STD_LOGIC;
  signal baudtick_carry_i_1_n_0 : STD_LOGIC;
  signal baudtick_carry_i_2_n_0 : STD_LOGIC;
  signal baudtick_carry_i_3_n_0 : STD_LOGIC;
  signal baudtick_carry_i_4_n_0 : STD_LOGIC;
  signal baudtick_carry_n_0 : STD_LOGIC;
  signal baudtick_carry_n_1 : STD_LOGIC;
  signal baudtick_carry_n_2 : STD_LOGIC;
  signal baudtick_carry_n_3 : STD_LOGIC;
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal count_reg_reg : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \count_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal NLW_baudtick_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_baudtick_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_reg_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg_reg[8]_i_1\ : label is 11;
begin
  CO(0) <= \^co\(0);
baudtick_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => baudtick_carry_n_0,
      CO(2) => baudtick_carry_n_1,
      CO(1) => baudtick_carry_n_2,
      CO(0) => baudtick_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_baudtick_carry_O_UNCONNECTED(3 downto 0),
      S(3) => baudtick_carry_i_1_n_0,
      S(2) => baudtick_carry_i_2_n_0,
      S(1) => baudtick_carry_i_3_n_0,
      S(0) => baudtick_carry_i_4_n_0
    );
\baudtick_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => baudtick_carry_n_0,
      CO(3) => \^co\(0),
      CO(2) => \baudtick_carry__0_n_1\,
      CO(1) => \baudtick_carry__0_n_2\,
      CO(0) => \baudtick_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_baudtick_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \baudtick_carry__0_i_1_n_0\,
      S(2) => \baudtick_carry__0_i_2_n_0\,
      S(1) => \baudtick_carry__0_i_3_n_0\,
      S(0) => \baudtick_carry__0_i_4_n_0\
    );
\baudtick_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg_reg(21),
      O => \baudtick_carry__0_i_1_n_0\
    );
\baudtick_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_reg_reg(20),
      I1 => count_reg_reg(19),
      I2 => count_reg_reg(18),
      O => \baudtick_carry__0_i_2_n_0\
    );
\baudtick_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_reg_reg(17),
      I1 => count_reg_reg(16),
      I2 => count_reg_reg(15),
      O => \baudtick_carry__0_i_3_n_0\
    );
\baudtick_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_reg_reg(14),
      I1 => count_reg_reg(13),
      I2 => count_reg_reg(12),
      O => \baudtick_carry__0_i_4_n_0\
    );
baudtick_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_reg_reg(11),
      I1 => count_reg_reg(10),
      I2 => count_reg_reg(9),
      O => baudtick_carry_i_1_n_0
    );
baudtick_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0420"
    )
        port map (
      I0 => b_rate,
      I1 => count_reg_reg(8),
      I2 => count_reg_reg(7),
      I3 => count_reg_reg(6),
      O => baudtick_carry_i_2_n_0
    );
baudtick_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => count_reg_reg(4),
      I1 => count_reg_reg(3),
      I2 => count_reg_reg(5),
      I3 => b_rate,
      O => baudtick_carry_i_3_n_0
    );
baudtick_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4020"
    )
        port map (
      I0 => count_reg_reg(2),
      I1 => b_rate,
      I2 => count_reg_reg(1),
      I3 => count_reg_reg(0),
      O => baudtick_carry_i_4_n_0
    );
\count_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(0),
      I1 => \^co\(0),
      O => \count_reg[0]_i_2_n_0\
    );
\count_reg[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(3),
      I1 => \^co\(0),
      O => \count_reg[0]_i_3_n_0\
    );
\count_reg[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(2),
      I1 => \^co\(0),
      O => \count_reg[0]_i_4_n_0\
    );
\count_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(1),
      I1 => \^co\(0),
      O => \count_reg[0]_i_5_n_0\
    );
\count_reg[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg_reg(0),
      I1 => \^co\(0),
      O => \count_reg[0]_i_6_n_0\
    );
\count_reg[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(15),
      I1 => \^co\(0),
      O => \count_reg[12]_i_2_n_0\
    );
\count_reg[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(14),
      I1 => \^co\(0),
      O => \count_reg[12]_i_3_n_0\
    );
\count_reg[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(13),
      I1 => \^co\(0),
      O => \count_reg[12]_i_4_n_0\
    );
\count_reg[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(12),
      I1 => \^co\(0),
      O => \count_reg[12]_i_5_n_0\
    );
\count_reg[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(19),
      I1 => \^co\(0),
      O => \count_reg[16]_i_2_n_0\
    );
\count_reg[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(18),
      I1 => \^co\(0),
      O => \count_reg[16]_i_3_n_0\
    );
\count_reg[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(17),
      I1 => \^co\(0),
      O => \count_reg[16]_i_4_n_0\
    );
\count_reg[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(16),
      I1 => \^co\(0),
      O => \count_reg[16]_i_5_n_0\
    );
\count_reg[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(21),
      I1 => \^co\(0),
      O => \count_reg[20]_i_2_n_0\
    );
\count_reg[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(20),
      I1 => \^co\(0),
      O => \count_reg[20]_i_3_n_0\
    );
\count_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(7),
      I1 => \^co\(0),
      O => \count_reg[4]_i_2_n_0\
    );
\count_reg[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(6),
      I1 => \^co\(0),
      O => \count_reg[4]_i_3_n_0\
    );
\count_reg[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(5),
      I1 => \^co\(0),
      O => \count_reg[4]_i_4_n_0\
    );
\count_reg[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(4),
      I1 => \^co\(0),
      O => \count_reg[4]_i_5_n_0\
    );
\count_reg[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(11),
      I1 => \^co\(0),
      O => \count_reg[8]_i_2_n_0\
    );
\count_reg[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(10),
      I1 => \^co\(0),
      O => \count_reg[8]_i_3_n_0\
    );
\count_reg[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(9),
      I1 => \^co\(0),
      O => \count_reg[8]_i_4_n_0\
    );
\count_reg[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg_reg(8),
      I1 => \^co\(0),
      O => \count_reg[8]_i_5_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[0]_i_1_n_7\,
      Q => count_reg_reg(0)
    );
\count_reg_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg_reg[0]_i_1_n_0\,
      CO(2) => \count_reg_reg[0]_i_1_n_1\,
      CO(1) => \count_reg_reg[0]_i_1_n_2\,
      CO(0) => \count_reg_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_reg[0]_i_2_n_0\,
      O(3) => \count_reg_reg[0]_i_1_n_4\,
      O(2) => \count_reg_reg[0]_i_1_n_5\,
      O(1) => \count_reg_reg[0]_i_1_n_6\,
      O(0) => \count_reg_reg[0]_i_1_n_7\,
      S(3) => \count_reg[0]_i_3_n_0\,
      S(2) => \count_reg[0]_i_4_n_0\,
      S(1) => \count_reg[0]_i_5_n_0\,
      S(0) => \count_reg[0]_i_6_n_0\
    );
\count_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[8]_i_1_n_5\,
      Q => count_reg_reg(10)
    );
\count_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[8]_i_1_n_4\,
      Q => count_reg_reg(11)
    );
\count_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[12]_i_1_n_7\,
      Q => count_reg_reg(12)
    );
\count_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg_reg[8]_i_1_n_0\,
      CO(3) => \count_reg_reg[12]_i_1_n_0\,
      CO(2) => \count_reg_reg[12]_i_1_n_1\,
      CO(1) => \count_reg_reg[12]_i_1_n_2\,
      CO(0) => \count_reg_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg_reg[12]_i_1_n_4\,
      O(2) => \count_reg_reg[12]_i_1_n_5\,
      O(1) => \count_reg_reg[12]_i_1_n_6\,
      O(0) => \count_reg_reg[12]_i_1_n_7\,
      S(3) => \count_reg[12]_i_2_n_0\,
      S(2) => \count_reg[12]_i_3_n_0\,
      S(1) => \count_reg[12]_i_4_n_0\,
      S(0) => \count_reg[12]_i_5_n_0\
    );
\count_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[12]_i_1_n_6\,
      Q => count_reg_reg(13)
    );
\count_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[12]_i_1_n_5\,
      Q => count_reg_reg(14)
    );
\count_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[12]_i_1_n_4\,
      Q => count_reg_reg(15)
    );
\count_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[16]_i_1_n_7\,
      Q => count_reg_reg(16)
    );
\count_reg_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg_reg[12]_i_1_n_0\,
      CO(3) => \count_reg_reg[16]_i_1_n_0\,
      CO(2) => \count_reg_reg[16]_i_1_n_1\,
      CO(1) => \count_reg_reg[16]_i_1_n_2\,
      CO(0) => \count_reg_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg_reg[16]_i_1_n_4\,
      O(2) => \count_reg_reg[16]_i_1_n_5\,
      O(1) => \count_reg_reg[16]_i_1_n_6\,
      O(0) => \count_reg_reg[16]_i_1_n_7\,
      S(3) => \count_reg[16]_i_2_n_0\,
      S(2) => \count_reg[16]_i_3_n_0\,
      S(1) => \count_reg[16]_i_4_n_0\,
      S(0) => \count_reg[16]_i_5_n_0\
    );
\count_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[16]_i_1_n_6\,
      Q => count_reg_reg(17)
    );
\count_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[16]_i_1_n_5\,
      Q => count_reg_reg(18)
    );
\count_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[16]_i_1_n_4\,
      Q => count_reg_reg(19)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[0]_i_1_n_6\,
      Q => count_reg_reg(1)
    );
\count_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[20]_i_1_n_7\,
      Q => count_reg_reg(20)
    );
\count_reg_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_reg_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_reg_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_reg_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_reg_reg[20]_i_1_n_6\,
      O(0) => \count_reg_reg[20]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \count_reg[20]_i_2_n_0\,
      S(0) => \count_reg[20]_i_3_n_0\
    );
\count_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[20]_i_1_n_6\,
      Q => count_reg_reg(21)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[0]_i_1_n_5\,
      Q => count_reg_reg(2)
    );
\count_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[0]_i_1_n_4\,
      Q => count_reg_reg(3)
    );
\count_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[4]_i_1_n_7\,
      Q => count_reg_reg(4)
    );
\count_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg_reg[0]_i_1_n_0\,
      CO(3) => \count_reg_reg[4]_i_1_n_0\,
      CO(2) => \count_reg_reg[4]_i_1_n_1\,
      CO(1) => \count_reg_reg[4]_i_1_n_2\,
      CO(0) => \count_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg_reg[4]_i_1_n_4\,
      O(2) => \count_reg_reg[4]_i_1_n_5\,
      O(1) => \count_reg_reg[4]_i_1_n_6\,
      O(0) => \count_reg_reg[4]_i_1_n_7\,
      S(3) => \count_reg[4]_i_2_n_0\,
      S(2) => \count_reg[4]_i_3_n_0\,
      S(1) => \count_reg[4]_i_4_n_0\,
      S(0) => \count_reg[4]_i_5_n_0\
    );
\count_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[4]_i_1_n_6\,
      Q => count_reg_reg(5)
    );
\count_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[4]_i_1_n_5\,
      Q => count_reg_reg(6)
    );
\count_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[4]_i_1_n_4\,
      Q => count_reg_reg(7)
    );
\count_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[8]_i_1_n_7\,
      Q => count_reg_reg(8)
    );
\count_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg_reg[4]_i_1_n_0\,
      CO(3) => \count_reg_reg[8]_i_1_n_0\,
      CO(2) => \count_reg_reg[8]_i_1_n_1\,
      CO(1) => \count_reg_reg[8]_i_1_n_2\,
      CO(0) => \count_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg_reg[8]_i_1_n_4\,
      O(2) => \count_reg_reg[8]_i_1_n_5\,
      O(1) => \count_reg_reg[8]_i_1_n_6\,
      O(0) => \count_reg_reg[8]_i_1_n_7\,
      S(3) => \count_reg[8]_i_2_n_0\,
      S(2) => \count_reg[8]_i_3_n_0\,
      S(1) => \count_reg[8]_i_4_n_0\,
      S(0) => \count_reg[8]_i_5_n_0\
    );
\count_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[0]_0\,
      D => \count_reg_reg[8]_i_1_n_6\,
      Q => count_reg_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2UART_0_0_UART_RX is
  port (
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    RsRx : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    empty_reg_reg : in STD_LOGIC;
    HCLK : in STD_LOGIC;
    \count_reg_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2UART_0_0_UART_RX : entity is "UART_RX";
end Zynq_E40S_PMP_AHB2UART_0_0_UART_RX;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2UART_0_0_UART_RX is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_7_n_0\ : STD_LOGIC;
  signal b_next : STD_LOGIC;
  signal b_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \b_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_7\ : label is "soft_lutpair12";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "start_st:01,stop_st:11,idle_st:00,data_st:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "start_st:01,stop_st:11,idle_st:00,data_st:10";
  attribute SOFT_HLUTNM of \b_reg[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair11";
begin
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004555FFFFAAAA"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_4_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I2 => current_state(1),
      I3 => CO(0),
      I4 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I5 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CF00CF058F018F0"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => CO(0),
      I2 => current_state(1),
      I3 => current_state(0),
      I4 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I5 => \FSM_sequential_current_state[1]_i_4_n_0\,
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => b_reg(2),
      I1 => CO(0),
      I2 => b_reg(3),
      I3 => \FSM_sequential_current_state[1]_i_5_n_0\,
      I4 => \b_reg[3]_i_3_n_0\,
      I5 => \FSM_sequential_current_state[1]_i_6_n_0\,
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => b_reg(2),
      I1 => b_reg(1),
      I2 => b_reg(0),
      I3 => b_reg(3),
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000404000000FF"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_7_n_0\,
      I1 => CO(0),
      I2 => b_reg(3),
      I3 => RsRx,
      I4 => current_state(1),
      I5 => current_state(0),
      O => \FSM_sequential_current_state[1]_i_4_n_0\
    );
\FSM_sequential_current_state[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => \FSM_sequential_current_state[1]_i_5_n_0\
    );
\FSM_sequential_current_state[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \FSM_sequential_current_state[1]_i_6_n_0\
    );
\FSM_sequential_current_state[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => b_reg(0),
      I1 => b_reg(1),
      I2 => b_reg(2),
      O => \FSM_sequential_current_state[1]_i_7_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[2]_0\,
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[2]_0\,
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => current_state(1)
    );
\b_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"444444F4"
    )
        port map (
      I0 => b_reg(0),
      I1 => \b_reg[1]_i_2_n_0\,
      I2 => RsRx,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \b_reg[0]_i_1_n_0\
    );
\b_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010FF10FF101010"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => RsRx,
      I3 => \b_reg[1]_i_2_n_0\,
      I4 => b_reg(1),
      I5 => b_reg(0),
      O => \b_reg[1]_i_1_n_0\
    );
\b_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFAAAA2AAA"
    )
        port map (
      I0 => current_state(0),
      I1 => b_reg(1),
      I2 => b_reg(0),
      I3 => b_reg(2),
      I4 => b_reg(3),
      I5 => current_state(1),
      O => \b_reg[1]_i_2_n_0\
    );
\b_reg[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00FE22E"
    )
        port map (
      I0 => RsRx,
      I1 => current_state(0),
      I2 => \b_reg[3]_i_3_n_0\,
      I3 => b_reg(2),
      I4 => current_state(1),
      O => \b_reg[2]_i_1__0_n_0\
    );
\b_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC00BF03"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => CO(0),
      I4 => RsRx,
      O => b_next
    );
\b_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D2D2D0D0D2D2FF00"
    )
        port map (
      I0 => b_reg(2),
      I1 => \b_reg[3]_i_3_n_0\,
      I2 => b_reg(3),
      I3 => RsRx,
      I4 => current_state(1),
      I5 => current_state(0),
      O => \b_reg[3]_i_2_n_0\
    );
\b_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => b_reg(1),
      I1 => b_reg(0),
      O => \b_reg[3]_i_3_n_0\
    );
\b_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => b_next,
      CLR => \count_reg_reg[2]_0\,
      D => \b_reg[0]_i_1_n_0\,
      Q => b_reg(0)
    );
\b_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => b_next,
      CLR => \count_reg_reg[2]_0\,
      D => \b_reg[1]_i_1_n_0\,
      Q => b_reg(1)
    );
\b_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => b_next,
      CLR => \count_reg_reg[2]_0\,
      D => \b_reg[2]_i_1__0_n_0\,
      Q => b_reg(2)
    );
\b_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => b_next,
      CLR => \count_reg_reg[2]_0\,
      D => \b_reg[3]_i_2_n_0\,
      Q => b_reg(3)
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => current_state(1),
      I1 => count_next,
      I2 => count_reg(0),
      O => \count_reg[0]_i_1_n_0\
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => count_reg(0),
      I1 => current_state(1),
      I2 => count_next,
      I3 => count_reg(1),
      O => \count_reg[1]_i_1_n_0\
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF8000"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => current_state(1),
      I3 => count_next,
      I4 => count_reg(2),
      O => \count_reg[2]_i_1_n_0\
    );
\count_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000003000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_current_state[1]_i_7_n_0\,
      I2 => CO(0),
      I3 => current_state(0),
      I4 => current_state(1),
      I5 => b_reg(3),
      O => count_next
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[2]_0\,
      D => \count_reg[0]_i_1_n_0\,
      Q => count_reg(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[2]_0\,
      D => \count_reg[1]_i_1_n_0\,
      Q => count_reg(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \count_reg_reg[2]_0\,
      D => \count_reg[2]_i_1_n_0\,
      Q => count_reg(2)
    );
\r_ptr_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => CO(0),
      I3 => empty_reg_reg,
      I4 => \FSM_sequential_current_state[1]_i_3_n_0\,
      O => p_1_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2UART_0_0_UART_TX is
  port (
    RsTx : out STD_LOGIC;
    HRESETn_0 : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_done : out STD_LOGIC;
    HCLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_empty : in STD_LOGIC;
    HRESETn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2UART_0_0_UART_TX : entity is "UART_TX";
end Zynq_E40S_PMP_AHB2UART_0_0_UART_TX;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2UART_0_0_UART_TX is
  signal \FSM_sequential_current_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_current_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^hresetn_0\ : STD_LOGIC;
  signal b_next : STD_LOGIC;
  signal b_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \b_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \b_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \b_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \b_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal count_next : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data_next : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data_next_0 : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal tx_next : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_1__0\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "start_st:01,stop_st:11,idle_st:00,data_st:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "start_st:01,stop_st:11,idle_st:00,data_st:10";
  attribute SOFT_HLUTNM of \b_reg[1]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \b_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_reg[2]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data_reg[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_reg[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_reg[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_reg[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_reg[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_reg[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \w_ptr_reg[3]_i_3\ : label is "soft_lutpair16";
begin
  \FSM_sequential_current_state_reg[1]_0\(0) <= \^fsm_sequential_current_state_reg[1]_0\(0);
  HRESETn_0 <= \^hresetn_0\;
\FSM_sequential_current_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777777080800FF"
    )
        port map (
      I0 => CO(0),
      I1 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      I2 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I3 => tx_empty,
      I4 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I5 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_1__0_n_0\
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I1 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      I2 => current_state(0),
      I3 => CO(0),
      O => \FSM_sequential_current_state[1]_i_1__0_n_0\
    );
\FSM_sequential_current_state[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => b_reg(3),
      I1 => b_reg(2),
      I2 => b_reg(1),
      I3 => b_reg(0),
      O => \FSM_sequential_current_state[1]_i_2__0_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \^hresetn_0\,
      D => \FSM_sequential_current_state[0]_i_1__0_n_0\,
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \^hresetn_0\,
      D => \FSM_sequential_current_state[1]_i_1__0_n_0\,
      Q => \^fsm_sequential_current_state_reg[1]_0\(0)
    );
\b_reg[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => current_state(0),
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => b_reg(0),
      O => \b_reg[0]_i_1__0_n_0\
    );
\b_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE0"
    )
        port map (
      I0 => current_state(0),
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => b_reg(0),
      I3 => b_reg(1),
      O => \b_reg[1]_i_1__0_n_0\
    );
\b_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EE0E0E0"
    )
        port map (
      I0 => current_state(0),
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => b_reg(2),
      I3 => b_reg(1),
      I4 => b_reg(0),
      O => \b_reg[2]_i_1_n_0\
    );
\b_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FF50005"
    )
        port map (
      I0 => tx_empty,
      I1 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      I2 => current_state(0),
      I3 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I4 => CO(0),
      O => b_next
    );
\b_reg[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EE0E0E0E0E0E0E0"
    )
        port map (
      I0 => current_state(0),
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => b_reg(3),
      I3 => b_reg(0),
      I4 => b_reg(1),
      I5 => b_reg(2),
      O => \b_reg[3]_i_2__0_n_0\
    );
\b_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => b_next,
      CLR => \^hresetn_0\,
      D => \b_reg[0]_i_1__0_n_0\,
      Q => b_reg(0)
    );
\b_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => b_next,
      CLR => \^hresetn_0\,
      D => \b_reg[1]_i_1__0_n_0\,
      Q => b_reg(1)
    );
\b_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => b_next,
      CLR => \^hresetn_0\,
      D => \b_reg[2]_i_1_n_0\,
      Q => b_reg(2)
    );
\b_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => b_next,
      CLR => \^hresetn_0\,
      D => \b_reg[3]_i_2__0_n_0\,
      Q => b_reg(3)
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I1 => count_next,
      I2 => count_reg(0),
      O => \count_reg[0]_i_1_n_0\
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I1 => count_reg(0),
      I2 => count_next,
      I3 => count_reg(1),
      O => \count_reg[1]_i_1_n_0\
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF8000"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I3 => count_next,
      I4 => count_reg(2),
      O => \count_reg[2]_i_1_n_0\
    );
\count_reg[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D00000F0000000"
    )
        port map (
      I0 => count_reg(2),
      I1 => \count_reg[2]_i_3_n_0\,
      I2 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      I3 => current_state(0),
      I4 => CO(0),
      I5 => \^fsm_sequential_current_state_reg[1]_0\(0),
      O => count_next
    );
\count_reg[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \count_reg[2]_i_3_n_0\
    );
\count_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \^hresetn_0\,
      D => \count_reg[0]_i_1_n_0\,
      Q => count_reg(0)
    );
\count_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \^hresetn_0\,
      D => \count_reg[1]_i_1_n_0\,
      Q => count_reg(1)
    );
\count_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => \^hresetn_0\,
      D => \count_reg[2]_i_1_n_0\,
      Q => count_reg(2)
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg_n_0_[1]\,
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => \data_reg_reg[6]_0\(0),
      O => data_next(0)
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg_n_0_[2]\,
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => \data_reg_reg[6]_0\(1),
      O => data_next(1)
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg_n_0_[3]\,
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => \data_reg_reg[6]_0\(2),
      O => data_next(2)
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg_n_0_[4]\,
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => \data_reg_reg[6]_0\(3),
      O => data_next(3)
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg_n_0_[5]\,
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => \data_reg_reg[6]_0\(4),
      O => data_next(4)
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg_n_0_[6]\,
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => \data_reg_reg[6]_0\(5),
      O => data_next(5)
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_reg_reg_n_0_[7]\,
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => \data_reg_reg[6]_0\(6),
      O => data_next(6)
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0088000F"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      I1 => CO(0),
      I2 => tx_empty,
      I3 => current_state(0),
      I4 => \^fsm_sequential_current_state_reg[1]_0\(0),
      O => data_next_0
    );
\data_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => data_next_0,
      CLR => \^hresetn_0\,
      D => data_next(0),
      Q => data_reg(0)
    );
\data_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => data_next_0,
      CLR => \^hresetn_0\,
      D => data_next(1),
      Q => \data_reg_reg_n_0_[1]\
    );
\data_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => data_next_0,
      CLR => \^hresetn_0\,
      D => data_next(2),
      Q => \data_reg_reg_n_0_[2]\
    );
\data_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => data_next_0,
      CLR => \^hresetn_0\,
      D => data_next(3),
      Q => \data_reg_reg_n_0_[3]\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => data_next_0,
      CLR => \^hresetn_0\,
      D => data_next(4),
      Q => \data_reg_reg_n_0_[4]\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => data_next_0,
      CLR => \^hresetn_0\,
      D => data_next(5),
      Q => \data_reg_reg_n_0_[5]\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => data_next_0,
      CLR => \^hresetn_0\,
      D => data_next(6),
      Q => \data_reg_reg_n_0_[6]\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => data_next_0,
      CLR => \^hresetn_0\,
      D => D(0),
      Q => \data_reg_reg_n_0_[7]\
    );
tx_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CB"
    )
        port map (
      I0 => data_reg(0),
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => current_state(0),
      O => tx_next
    );
tx_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HRESETn,
      O => \^hresetn_0\
    );
tx_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => HCLK,
      CE => '1',
      D => tx_next,
      PRE => \^hresetn_0\,
      Q => RsTx
    );
\w_ptr_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => CO(0),
      I1 => \^fsm_sequential_current_state_reg[1]_0\(0),
      I2 => current_state(0),
      I3 => \FSM_sequential_current_state[1]_i_2__0_n_0\,
      O => tx_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2UART_0_0_UFIFO is
  port (
    full_reg_reg_0 : out STD_LOGIC;
    \last_HADDR_reg[7]\ : out STD_LOGIC;
    HRDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    \last_HADDR_reg[0]\ : out STD_LOGIC;
    uart_irq : out STD_LOGIC;
    HCLK : in STD_LOGIC;
    full_reg_reg_1 : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    last_HWRITE : in STD_LOGIC;
    last_HSEL : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2UART_0_0_UFIFO : entity is "UFIFO";
end Zynq_E40S_PMP_AHB2UART_0_0_UFIFO;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2UART_0_0_UFIFO is
  signal \empty_next0__6\ : STD_LOGIC;
  signal \empty_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \empty_reg_i_3__0_n_0\ : STD_LOGIC;
  signal \full_next0__6\ : STD_LOGIC;
  signal \full_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \full_reg_i_3__0_n_0\ : STD_LOGIC;
  signal \^full_reg_reg_0\ : STD_LOGIC;
  signal \^last_haddr_reg[0]\ : STD_LOGIC;
  signal \^last_haddr_reg[7]\ : STD_LOGIC;
  signal r_ptr_reg0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_ptr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal r_ptr_reg_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_empty : STD_LOGIC;
  signal \uart_rd__2\ : STD_LOGIC;
  signal \w_ptr_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal w_ptr_reg_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \HRDATA[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \empty_reg_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_ptr_reg[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_ptr_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_ptr_reg[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_ptr_reg[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_ptr_reg[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of uart_irq_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w_ptr_reg[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w_ptr_reg[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w_ptr_reg[2]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w_ptr_reg[3]_i_2__0\ : label is "soft_lutpair2";
begin
  full_reg_reg_0 <= \^full_reg_reg_0\;
  \last_HADDR_reg[0]\ <= \^last_haddr_reg[0]\;
  \last_HADDR_reg[7]\ <= \^last_haddr_reg[7]\;
\HRDATA[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rx_empty,
      I1 => \^last_haddr_reg[7]\,
      O => HRDATA(0)
    );
\HRDATA[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(3),
      I3 => \^last_haddr_reg[0]\,
      I4 => Q(2),
      O => \^last_haddr_reg[7]\
    );
\HRDATA[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(5),
      I3 => Q(4),
      O => \^last_haddr_reg[0]\
    );
\empty_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0A0FCF0"
    )
        port map (
      I0 => \^full_reg_reg_0\,
      I1 => \empty_next0__6\,
      I2 => rx_empty,
      I3 => \uart_rd__2\,
      I4 => p_1_in(0),
      O => \empty_reg_i_1__0_n_0\
    );
\empty_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA800080002AAA"
    )
        port map (
      I0 => \empty_reg_i_3__0_n_0\,
      I1 => r_ptr_reg_reg(2),
      I2 => r_ptr_reg_reg(0),
      I3 => r_ptr_reg_reg(1),
      I4 => r_ptr_reg_reg(3),
      I5 => w_ptr_reg_reg(3),
      O => \empty_next0__6\
    );
\empty_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140802010040802"
    )
        port map (
      I0 => w_ptr_reg_reg(0),
      I1 => w_ptr_reg_reg(1),
      I2 => w_ptr_reg_reg(2),
      I3 => r_ptr_reg_reg(1),
      I4 => r_ptr_reg_reg(0),
      I5 => r_ptr_reg_reg(2),
      O => \empty_reg_i_3__0_n_0\
    );
empty_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => HCLK,
      CE => '1',
      D => \empty_reg_i_1__0_n_0\,
      PRE => full_reg_reg_1,
      Q => rx_empty
    );
\full_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CECCCE0C"
    )
        port map (
      I0 => \full_next0__6\,
      I1 => \^full_reg_reg_0\,
      I2 => \uart_rd__2\,
      I3 => p_1_in(0),
      I4 => rx_empty,
      O => \full_reg_i_1__0_n_0\
    );
\full_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA800080002AAA"
    )
        port map (
      I0 => \full_reg_i_3__0_n_0\,
      I1 => w_ptr_reg_reg(2),
      I2 => w_ptr_reg_reg(1),
      I3 => w_ptr_reg_reg(0),
      I4 => w_ptr_reg_reg(3),
      I5 => r_ptr_reg_reg(3),
      O => \full_next0__6\
    );
\full_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0842100010000842"
    )
        port map (
      I0 => r_ptr_reg_reg(0),
      I1 => r_ptr_reg_reg(1),
      I2 => w_ptr_reg_reg(0),
      I3 => w_ptr_reg_reg(1),
      I4 => w_ptr_reg_reg(2),
      I5 => r_ptr_reg_reg(2),
      O => \full_reg_i_3__0_n_0\
    );
full_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => full_reg_reg_1,
      D => \full_reg_i_1__0_n_0\,
      Q => \^full_reg_reg_0\
    );
\r_ptr_reg[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ptr_reg_reg(0),
      O => r_ptr_reg0(0)
    );
\r_ptr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr_reg_reg(0),
      I1 => r_ptr_reg_reg(1),
      O => r_ptr_reg0(1)
    );
\r_ptr_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_ptr_reg_reg(1),
      I1 => r_ptr_reg_reg(0),
      I2 => r_ptr_reg_reg(2),
      O => r_ptr_reg0(2)
    );
\r_ptr_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => rx_empty,
      I1 => p_1_in(0),
      I2 => \uart_rd__2\,
      O => \r_ptr_reg[3]_i_1_n_0\
    );
\r_ptr_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r_ptr_reg_reg(2),
      I1 => r_ptr_reg_reg(0),
      I2 => r_ptr_reg_reg(1),
      I3 => r_ptr_reg_reg(3),
      O => r_ptr_reg0(3)
    );
\r_ptr_reg[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => last_HWRITE,
      I1 => last_HSEL,
      I2 => p_0_in1_in,
      I3 => \^last_haddr_reg[7]\,
      O => \uart_rd__2\
    );
\r_ptr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \r_ptr_reg[3]_i_1_n_0\,
      CLR => full_reg_reg_1,
      D => r_ptr_reg0(0),
      Q => r_ptr_reg_reg(0)
    );
\r_ptr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \r_ptr_reg[3]_i_1_n_0\,
      CLR => full_reg_reg_1,
      D => r_ptr_reg0(1),
      Q => r_ptr_reg_reg(1)
    );
\r_ptr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \r_ptr_reg[3]_i_1_n_0\,
      CLR => full_reg_reg_1,
      D => r_ptr_reg0(2),
      Q => r_ptr_reg_reg(2)
    );
\r_ptr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \r_ptr_reg[3]_i_1_n_0\,
      CLR => full_reg_reg_1,
      D => r_ptr_reg0(3),
      Q => r_ptr_reg_reg(3)
    );
uart_irq_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_empty,
      O => uart_irq
    );
\w_ptr_reg[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_ptr_reg_reg(0),
      O => \w_ptr_reg[0]_i_1__0_n_0\
    );
\w_ptr_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_ptr_reg_reg(0),
      I1 => w_ptr_reg_reg(1),
      O => \w_ptr_reg[1]_i_1__0_n_0\
    );
\w_ptr_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => w_ptr_reg_reg(0),
      I1 => w_ptr_reg_reg(1),
      I2 => w_ptr_reg_reg(2),
      O => \w_ptr_reg[2]_i_1__0_n_0\
    );
\w_ptr_reg[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \uart_rd__2\,
      I1 => \^full_reg_reg_0\,
      I2 => p_1_in(0),
      O => \w_ptr_reg[3]_i_1__0_n_0\
    );
\w_ptr_reg[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => w_ptr_reg_reg(2),
      I1 => w_ptr_reg_reg(1),
      I2 => w_ptr_reg_reg(0),
      I3 => w_ptr_reg_reg(3),
      O => \w_ptr_reg[3]_i_2__0_n_0\
    );
\w_ptr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \w_ptr_reg[3]_i_1__0_n_0\,
      CLR => full_reg_reg_1,
      D => \w_ptr_reg[0]_i_1__0_n_0\,
      Q => w_ptr_reg_reg(0)
    );
\w_ptr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \w_ptr_reg[3]_i_1__0_n_0\,
      CLR => full_reg_reg_1,
      D => \w_ptr_reg[1]_i_1__0_n_0\,
      Q => w_ptr_reg_reg(1)
    );
\w_ptr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \w_ptr_reg[3]_i_1__0_n_0\,
      CLR => full_reg_reg_1,
      D => \w_ptr_reg[2]_i_1__0_n_0\,
      Q => w_ptr_reg_reg(2)
    );
\w_ptr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \w_ptr_reg[3]_i_1__0_n_0\,
      CLR => full_reg_reg_1,
      D => \w_ptr_reg[3]_i_2__0_n_0\,
      Q => w_ptr_reg_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2UART_0_0_UFIFO_0 is
  port (
    HCLK_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    tx_empty : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    HRDATA : out STD_LOGIC_VECTOR ( 0 to 0 );
    HCLK : in STD_LOGIC;
    HWDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    empty_reg_reg_0 : in STD_LOGIC;
    current_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_done : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC;
    last_HWRITE : in STD_LOGIC;
    last_HSEL : in STD_LOGIC;
    \HRDATA[1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2UART_0_0_UFIFO_0 : entity is "UFIFO";
end Zynq_E40S_PMP_AHB2UART_0_0_UFIFO_0;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2UART_0_0_UFIFO_0 is
  signal \empty_next0__6\ : STD_LOGIC;
  signal empty_reg_i_1_n_0 : STD_LOGIC;
  signal empty_reg_i_3_n_0 : STD_LOGIC;
  signal \full_next0__6\ : STD_LOGIC;
  signal full_reg_i_1_n_0 : STD_LOGIC;
  signal full_reg_i_3_n_0 : STD_LOGIC;
  signal r_data : STD_LOGIC_VECTOR ( 7 to 7 );
  signal r_ptr_reg0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_ptr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal r_ptr_reg_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^tx_empty\ : STD_LOGIC;
  signal tx_full : STD_LOGIC;
  signal w_en : STD_LOGIC;
  signal w_ptr_reg0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \w_ptr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal w_ptr_reg_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_array_reg_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_array_reg_reg_0_15_6_7_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_array_reg_reg_0_15_6_7__0_SPO_UNCONNECTED\ : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of array_reg_reg_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of array_reg_reg_0_15_0_5 : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of array_reg_reg_0_15_0_5 : label is "inst/uFIFO_TX/array_reg_reg_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of array_reg_reg_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of array_reg_reg_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of array_reg_reg_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of array_reg_reg_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of array_reg_reg_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of array_reg_reg_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of array_reg_reg_0_15_6_7 : label is "";
  attribute RTL_RAM_BITS of array_reg_reg_0_15_6_7 : label is 128;
  attribute RTL_RAM_NAME of array_reg_reg_0_15_6_7 : label is "inst/uFIFO_TX/array_reg_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of array_reg_reg_0_15_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of array_reg_reg_0_15_6_7 : label is 0;
  attribute ram_addr_end of array_reg_reg_0_15_6_7 : label is 15;
  attribute ram_offset of array_reg_reg_0_15_6_7 : label is 0;
  attribute ram_slice_begin of array_reg_reg_0_15_6_7 : label is 6;
  attribute ram_slice_end of array_reg_reg_0_15_6_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of \array_reg_reg_0_15_6_7__0\ : label is "";
  attribute RTL_RAM_BITS of \array_reg_reg_0_15_6_7__0\ : label is 128;
  attribute RTL_RAM_NAME of \array_reg_reg_0_15_6_7__0\ : label is "inst/uFIFO_TX/array_reg_reg_0_15_6_7";
  attribute RTL_RAM_TYPE of \array_reg_reg_0_15_6_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \array_reg_reg_0_15_6_7__0\ : label is 0;
  attribute ram_addr_end of \array_reg_reg_0_15_6_7__0\ : label is 15;
  attribute ram_offset of \array_reg_reg_0_15_6_7__0\ : label is 0;
  attribute ram_slice_begin of \array_reg_reg_0_15_6_7__0\ : label is 6;
  attribute ram_slice_end of \array_reg_reg_0_15_6_7__0\ : label is 7;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_ptr_reg[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_ptr_reg[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_ptr_reg[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_ptr_reg[3]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w_ptr_reg[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w_ptr_reg[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \w_ptr_reg[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w_ptr_reg[3]_i_2\ : label is "soft_lutpair6";
begin
  tx_empty <= \^tx_empty\;
\HRDATA[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_full,
      I1 => \HRDATA[1]\,
      O => HRDATA(0)
    );
array_reg_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => r_ptr_reg_reg(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => r_ptr_reg_reg(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => r_ptr_reg_reg(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => w_ptr_reg_reg(3 downto 0),
      DIA(1 downto 0) => HWDATA(1 downto 0),
      DIB(1 downto 0) => HWDATA(3 downto 2),
      DIC(1 downto 0) => HWDATA(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => HCLK_0(1 downto 0),
      DOB(1 downto 0) => HCLK_0(3 downto 2),
      DOC(1 downto 0) => HCLK_0(5 downto 4),
      DOD(1 downto 0) => NLW_array_reg_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => HCLK,
      WE => w_en
    );
array_reg_reg_0_15_0_5_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => tx_full,
      I2 => last_HWRITE,
      I3 => last_HSEL,
      I4 => \HRDATA[1]\,
      O => w_en
    );
array_reg_reg_0_15_6_7: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr_reg_reg(0),
      A1 => w_ptr_reg_reg(1),
      A2 => w_ptr_reg_reg(2),
      A3 => w_ptr_reg_reg(3),
      A4 => '0',
      D => HWDATA(6),
      DPO => HCLK_0(6),
      DPRA0 => r_ptr_reg_reg(0),
      DPRA1 => r_ptr_reg_reg(1),
      DPRA2 => r_ptr_reg_reg(2),
      DPRA3 => r_ptr_reg_reg(3),
      DPRA4 => '0',
      SPO => NLW_array_reg_reg_0_15_6_7_SPO_UNCONNECTED,
      WCLK => HCLK,
      WE => w_en
    );
\array_reg_reg_0_15_6_7__0\: unisim.vcomponents.RAM32X1D
     port map (
      A0 => w_ptr_reg_reg(0),
      A1 => w_ptr_reg_reg(1),
      A2 => w_ptr_reg_reg(2),
      A3 => w_ptr_reg_reg(3),
      A4 => '0',
      D => HWDATA(7),
      DPO => r_data(7),
      DPRA0 => r_ptr_reg_reg(0),
      DPRA1 => r_ptr_reg_reg(1),
      DPRA2 => r_ptr_reg_reg(2),
      DPRA3 => r_ptr_reg_reg(3),
      DPRA4 => '0',
      SPO => \NLW_array_reg_reg_0_15_6_7__0_SPO_UNCONNECTED\,
      WCLK => HCLK,
      WE => w_en
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => r_data(7),
      I1 => current_state(0),
      O => D(0)
    );
empty_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0FCF0"
    )
        port map (
      I0 => tx_full,
      I1 => tx_done,
      I2 => \^tx_empty\,
      I3 => \empty_next0__6\,
      I4 => w_en,
      O => empty_reg_i_1_n_0
    );
empty_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA800080002AAA"
    )
        port map (
      I0 => empty_reg_i_3_n_0,
      I1 => r_ptr_reg_reg(2),
      I2 => r_ptr_reg_reg(0),
      I3 => r_ptr_reg_reg(1),
      I4 => r_ptr_reg_reg(3),
      I5 => w_ptr_reg_reg(3),
      O => \empty_next0__6\
    );
empty_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140802010040802"
    )
        port map (
      I0 => w_ptr_reg_reg(0),
      I1 => w_ptr_reg_reg(1),
      I2 => w_ptr_reg_reg(2),
      I3 => r_ptr_reg_reg(1),
      I4 => r_ptr_reg_reg(0),
      I5 => r_ptr_reg_reg(2),
      O => empty_reg_i_3_n_0
    );
empty_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => HCLK,
      CE => '1',
      D => empty_reg_i_1_n_0,
      PRE => empty_reg_reg_0,
      Q => \^tx_empty\
    );
full_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAE0A"
    )
        port map (
      I0 => tx_full,
      I1 => \full_next0__6\,
      I2 => tx_done,
      I3 => w_en,
      I4 => \^tx_empty\,
      O => full_reg_i_1_n_0
    );
full_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA800080002AAA"
    )
        port map (
      I0 => full_reg_i_3_n_0,
      I1 => w_ptr_reg_reg(2),
      I2 => w_ptr_reg_reg(1),
      I3 => w_ptr_reg_reg(0),
      I4 => w_ptr_reg_reg(3),
      I5 => r_ptr_reg_reg(3),
      O => \full_next0__6\
    );
full_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0842100010000842"
    )
        port map (
      I0 => r_ptr_reg_reg(0),
      I1 => r_ptr_reg_reg(1),
      I2 => w_ptr_reg_reg(0),
      I3 => w_ptr_reg_reg(1),
      I4 => w_ptr_reg_reg(2),
      I5 => r_ptr_reg_reg(2),
      O => full_reg_i_3_n_0
    );
full_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => empty_reg_reg_0,
      D => full_reg_i_1_n_0,
      Q => tx_full
    );
\r_ptr_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^tx_empty\,
      I1 => w_en,
      I2 => tx_done,
      O => \r_ptr_reg[0]_i_1_n_0\
    );
\r_ptr_reg[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_ptr_reg_reg(0),
      O => r_ptr_reg0(0)
    );
\r_ptr_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_ptr_reg_reg(0),
      I1 => r_ptr_reg_reg(1),
      O => r_ptr_reg0(1)
    );
\r_ptr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => r_ptr_reg_reg(1),
      I1 => r_ptr_reg_reg(0),
      I2 => r_ptr_reg_reg(2),
      O => r_ptr_reg0(2)
    );
\r_ptr_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => r_ptr_reg_reg(2),
      I1 => r_ptr_reg_reg(0),
      I2 => r_ptr_reg_reg(1),
      I3 => r_ptr_reg_reg(3),
      O => r_ptr_reg0(3)
    );
\r_ptr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \r_ptr_reg[0]_i_1_n_0\,
      CLR => empty_reg_reg_0,
      D => r_ptr_reg0(0),
      Q => r_ptr_reg_reg(0)
    );
\r_ptr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \r_ptr_reg[0]_i_1_n_0\,
      CLR => empty_reg_reg_0,
      D => r_ptr_reg0(1),
      Q => r_ptr_reg_reg(1)
    );
\r_ptr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \r_ptr_reg[0]_i_1_n_0\,
      CLR => empty_reg_reg_0,
      D => r_ptr_reg0(2),
      Q => r_ptr_reg_reg(2)
    );
\r_ptr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \r_ptr_reg[0]_i_1_n_0\,
      CLR => empty_reg_reg_0,
      D => r_ptr_reg0(3),
      Q => r_ptr_reg_reg(3)
    );
\w_ptr_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_ptr_reg_reg(0),
      O => w_ptr_reg0(0)
    );
\w_ptr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_ptr_reg_reg(0),
      I1 => w_ptr_reg_reg(1),
      O => w_ptr_reg0(1)
    );
\w_ptr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => w_ptr_reg_reg(0),
      I1 => w_ptr_reg_reg(1),
      I2 => w_ptr_reg_reg(2),
      O => w_ptr_reg0(2)
    );
\w_ptr_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => tx_done,
      I1 => tx_full,
      I2 => w_en,
      O => \w_ptr_reg[3]_i_1_n_0\
    );
\w_ptr_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => w_ptr_reg_reg(2),
      I1 => w_ptr_reg_reg(1),
      I2 => w_ptr_reg_reg(0),
      I3 => w_ptr_reg_reg(3),
      O => w_ptr_reg0(3)
    );
\w_ptr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \w_ptr_reg[3]_i_1_n_0\,
      CLR => empty_reg_reg_0,
      D => w_ptr_reg0(0),
      Q => w_ptr_reg_reg(0)
    );
\w_ptr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \w_ptr_reg[3]_i_1_n_0\,
      CLR => empty_reg_reg_0,
      D => w_ptr_reg0(1),
      Q => w_ptr_reg_reg(1)
    );
\w_ptr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \w_ptr_reg[3]_i_1_n_0\,
      CLR => empty_reg_reg_0,
      D => w_ptr_reg0(2),
      Q => w_ptr_reg_reg(2)
    );
\w_ptr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => \w_ptr_reg[3]_i_1_n_0\,
      CLR => empty_reg_reg_0,
      D => w_ptr_reg0(3),
      Q => w_ptr_reg_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2UART_0_0_AHB2UART is
  port (
    RsTx : out STD_LOGIC;
    HRDATA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    uart_irq : out STD_LOGIC;
    HCLK : in STD_LOGIC;
    HWDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    HRESETn : in STD_LOGIC;
    HREADY : in STD_LOGIC;
    HADDR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    HWRITE : in STD_LOGIC;
    HSEL : in STD_LOGIC;
    HTRANS : in STD_LOGIC_VECTOR ( 0 to 0 );
    RsRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2UART_0_0_AHB2UART : entity is "AHB2UART";
end Zynq_E40S_PMP_AHB2UART_0_0_AHB2UART;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2UART_0_0_AHB2UART is
  signal b_rate : STD_LOGIC;
  signal b_rate_i_1_n_0 : STD_LOGIC;
  signal b_rate_i_2_n_0 : STD_LOGIC;
  signal b_rate_i_3_n_0 : STD_LOGIC;
  signal b_tick : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal data_next : STD_LOGIC_VECTOR ( 7 to 7 );
  signal last_HADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal last_HSEL : STD_LOGIC;
  signal last_HWRITE : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal r_data : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal tx_done : STD_LOGIC;
  signal tx_empty : STD_LOGIC;
  signal uFIFO_RX_n_0 : STD_LOGIC;
  signal uFIFO_RX_n_1 : STD_LOGIC;
  signal uFIFO_RX_n_3 : STD_LOGIC;
  signal uUART_TX_n_1 : STD_LOGIC;
begin
b_rate_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => HWDATA(0),
      I1 => p_0_in1_in,
      I2 => last_HADDR(2),
      I3 => b_rate_i_2_n_0,
      I4 => b_rate_i_3_n_0,
      I5 => b_rate,
      O => b_rate_i_1_n_0
    );
b_rate_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => last_HWRITE,
      I1 => last_HSEL,
      O => b_rate_i_2_n_0
    );
b_rate_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => uFIFO_RX_n_3,
      I1 => last_HADDR(3),
      I2 => last_HADDR(6),
      I3 => last_HADDR(7),
      O => b_rate_i_3_n_0
    );
b_rate_reg: unisim.vcomponents.FDPE
     port map (
      C => HCLK,
      CE => '1',
      D => b_rate_i_1_n_0,
      PRE => uUART_TX_n_1,
      Q => b_rate
    );
\last_HADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HADDR(0),
      Q => last_HADDR(0),
      R => '0'
    );
\last_HADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HADDR(1),
      Q => last_HADDR(1),
      R => '0'
    );
\last_HADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HADDR(2),
      Q => last_HADDR(2),
      R => '0'
    );
\last_HADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HADDR(3),
      Q => last_HADDR(3),
      R => '0'
    );
\last_HADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HADDR(4),
      Q => last_HADDR(4),
      R => '0'
    );
\last_HADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HADDR(5),
      Q => last_HADDR(5),
      R => '0'
    );
\last_HADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HADDR(6),
      Q => last_HADDR(6),
      R => '0'
    );
\last_HADDR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HADDR(7),
      Q => last_HADDR(7),
      R => '0'
    );
last_HSEL_reg: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HSEL,
      Q => last_HSEL,
      R => '0'
    );
\last_HTRANS_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HTRANS(0),
      Q => p_0_in1_in,
      R => '0'
    );
last_HWRITE_reg: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => HREADY,
      D => HWRITE,
      Q => last_HWRITE,
      R => '0'
    );
uBAUDGEN: entity work.Zynq_E40S_PMP_AHB2UART_0_0_BAUDGEN
     port map (
      CO(0) => b_tick,
      HCLK => HCLK,
      b_rate => b_rate,
      \count_reg_reg[0]_0\ => uUART_TX_n_1
    );
uFIFO_RX: entity work.Zynq_E40S_PMP_AHB2UART_0_0_UFIFO
     port map (
      HCLK => HCLK,
      HRDATA(0) => HRDATA(0),
      Q(7 downto 0) => last_HADDR(7 downto 0),
      full_reg_reg_0 => uFIFO_RX_n_0,
      full_reg_reg_1 => uUART_TX_n_1,
      \last_HADDR_reg[0]\ => uFIFO_RX_n_3,
      \last_HADDR_reg[7]\ => uFIFO_RX_n_1,
      last_HSEL => last_HSEL,
      last_HWRITE => last_HWRITE,
      p_0_in1_in => p_0_in1_in,
      p_1_in(0) => p_1_in(1),
      uart_irq => uart_irq
    );
uFIFO_TX: entity work.Zynq_E40S_PMP_AHB2UART_0_0_UFIFO_0
     port map (
      D(0) => data_next(7),
      HCLK => HCLK,
      HCLK_0(6 downto 0) => r_data(6 downto 0),
      HRDATA(0) => HRDATA(1),
      \HRDATA[1]\ => uFIFO_RX_n_1,
      HWDATA(7 downto 0) => HWDATA(7 downto 0),
      current_state(0) => current_state(1),
      empty_reg_reg_0 => uUART_TX_n_1,
      last_HSEL => last_HSEL,
      last_HWRITE => last_HWRITE,
      p_0_in1_in => p_0_in1_in,
      tx_done => tx_done,
      tx_empty => tx_empty
    );
uUART_RX: entity work.Zynq_E40S_PMP_AHB2UART_0_0_UART_RX
     port map (
      CO(0) => b_tick,
      HCLK => HCLK,
      RsRx => RsRx,
      \count_reg_reg[2]_0\ => uUART_TX_n_1,
      empty_reg_reg => uFIFO_RX_n_0,
      p_1_in(0) => p_1_in(1)
    );
uUART_TX: entity work.Zynq_E40S_PMP_AHB2UART_0_0_UART_TX
     port map (
      CO(0) => b_tick,
      D(0) => data_next(7),
      \FSM_sequential_current_state_reg[1]_0\(0) => current_state(1),
      HCLK => HCLK,
      HRESETn => HRESETn,
      HRESETn_0 => uUART_TX_n_1,
      RsTx => RsTx,
      \data_reg_reg[6]_0\(6 downto 0) => r_data(6 downto 0),
      tx_done => tx_done,
      tx_empty => tx_empty
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2UART_0_0 is
  port (
    HCLK : in STD_LOGIC;
    HRESETn : in STD_LOGIC;
    HADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HTRANS : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HWDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HWRITE : in STD_LOGIC;
    HREADY : in STD_LOGIC;
    HREADYOUT : out STD_LOGIC;
    HRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    HSEL : in STD_LOGIC;
    RsRx : in STD_LOGIC;
    RsTx : out STD_LOGIC;
    uart_irq : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_E40S_PMP_AHB2UART_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_E40S_PMP_AHB2UART_0_0 : entity is "Zynq_E40S_PMP_AHB2UART_0_0,AHB2UART,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_E40S_PMP_AHB2UART_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Zynq_E40S_PMP_AHB2UART_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_E40S_PMP_AHB2UART_0_0 : entity is "AHB2UART,Vivado 2023.1.1";
end Zynq_E40S_PMP_AHB2UART_0_0;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2UART_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^hrdata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of uart_irq : signal is "xilinx.com:signal:interrupt:1.0 uart_irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of uart_irq : signal is "XIL_INTERFACENAME uart_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
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
  HRDATA(7) <= \<const0>\;
  HRDATA(6) <= \<const0>\;
  HRDATA(5) <= \<const0>\;
  HRDATA(4) <= \<const0>\;
  HRDATA(3) <= \<const0>\;
  HRDATA(2) <= \<const0>\;
  HRDATA(1 downto 0) <= \^hrdata\(1 downto 0);
  HREADYOUT <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.Zynq_E40S_PMP_AHB2UART_0_0_AHB2UART
     port map (
      HADDR(7 downto 0) => HADDR(7 downto 0),
      HCLK => HCLK,
      HRDATA(1 downto 0) => \^hrdata\(1 downto 0),
      HREADY => HREADY,
      HRESETn => HRESETn,
      HSEL => HSEL,
      HTRANS(0) => HTRANS(1),
      HWDATA(7 downto 0) => HWDATA(7 downto 0),
      HWRITE => HWRITE,
      RsRx => RsRx,
      RsTx => RsTx,
      uart_irq => uart_irq
    );
end STRUCTURE;
