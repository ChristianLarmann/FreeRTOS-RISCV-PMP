-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 16:07:42 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHB2TIMER_0_0/Zynq_E40S_PMP_AHB2TIMER_0_0_sim_netlist.vhdl
-- Design      : Zynq_E40S_PMP_AHB2TIMER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2TIMER_0_0_prescaler is
  port (
    current_state_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    current_state_reg_0 : out STD_LOGIC;
    current_state : in STD_LOGIC;
    timer_irq_reg : in STD_LOGIC;
    timer_irq_reg_0 : in STD_LOGIC;
    timer_irq_reg_1 : in STD_LOGIC;
    timer_irq : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HCLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2TIMER_0_0_prescaler : entity is "prescaler";
end Zynq_E40S_PMP_AHB2TIMER_0_0_prescaler;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2TIMER_0_0_prescaler is
  signal counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal timer_irq_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => counter_reg(2),
      I1 => counter_reg(0),
      I2 => counter_reg(1),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(0),
      I2 => counter_reg(2),
      I3 => counter_reg(3),
      O => p_0_in(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => '1',
      D => p_0_in(0),
      Q => counter_reg(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => '1',
      D => p_0_in(1),
      Q => counter_reg(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => '1',
      D => p_0_in(2),
      Q => counter_reg(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => HCLK,
      CE => '1',
      D => p_0_in(3),
      Q => counter_reg(3),
      R => '0'
    );
current_state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => current_state,
      I1 => timer_irq_i_3_n_0,
      O => current_state_reg_0
    );
timer_irq_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => timer_irq_i_3_n_0,
      I1 => current_state,
      I2 => timer_irq_reg,
      I3 => timer_irq_reg_0,
      I4 => timer_irq_reg_1,
      I5 => timer_irq,
      O => current_state_reg
    );
timer_irq_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF0000FFFFFFFF"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(2),
      I2 => counter_reg(0),
      I3 => counter_reg(1),
      I4 => Q(1),
      I5 => Q(0),
      O => timer_irq_i_3_n_0
    );
\value[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222222222222222"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => counter_reg(1),
      I3 => counter_reg(0),
      I4 => counter_reg(2),
      I5 => counter_reg(3),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2TIMER_0_0_AHB2TIMER is
  port (
    timer_irq : out STD_LOGIC;
    HRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    HREADY : in STD_LOGIC;
    HADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    HCLK : in STD_LOGIC;
    HSEL : in STD_LOGIC;
    HTRANS : in STD_LOGIC_VECTOR ( 0 to 0 );
    HWRITE : in STD_LOGIC;
    HWDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HRESETn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_E40S_PMP_AHB2TIMER_0_0_AHB2TIMER : entity is "AHB2TIMER";
end Zynq_E40S_PMP_AHB2TIMER_0_0_AHB2TIMER;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2TIMER_0_0_AHB2TIMER is
  signal \HRDATA[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \HRDATA[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal control : STD_LOGIC_VECTOR ( 3 to 3 );
  signal control_1 : STD_LOGIC;
  signal \control_reg_n_0_[0]\ : STD_LOGIC;
  signal \control_reg_n_0_[2]\ : STD_LOGIC;
  signal current_state : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal last_HADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal last_HSEL : STD_LOGIC;
  signal last_HWRITE : STD_LOGIC;
  signal load : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal load_0 : STD_LOGIC;
  signal mode : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal \^timer_irq\ : STD_LOGIC;
  signal timer_irq_i_10_n_0 : STD_LOGIC;
  signal timer_irq_i_11_n_0 : STD_LOGIC;
  signal timer_irq_i_12_n_0 : STD_LOGIC;
  signal timer_irq_i_2_n_0 : STD_LOGIC;
  signal timer_irq_i_4_n_0 : STD_LOGIC;
  signal timer_irq_i_5_n_0 : STD_LOGIC;
  signal timer_irq_i_6_n_0 : STD_LOGIC;
  signal timer_irq_i_7_n_0 : STD_LOGIC;
  signal timer_irq_i_8_n_0 : STD_LOGIC;
  signal timer_irq_i_9_n_0 : STD_LOGIC;
  signal timer_irq_next1 : STD_LOGIC;
  signal uprescaler16_n_0 : STD_LOGIC;
  signal uprescaler16_n_2 : STD_LOGIC;
  signal value : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \value[31]_i_3_n_0\ : STD_LOGIC;
  signal \value[31]_i_4_n_0\ : STD_LOGIC;
  signal \value[31]_i_5_n_0\ : STD_LOGIC;
  signal value_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \value_next0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \value_next0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \value_next0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \value_next0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \value_next0_carry__0_n_0\ : STD_LOGIC;
  signal \value_next0_carry__0_n_1\ : STD_LOGIC;
  signal \value_next0_carry__0_n_2\ : STD_LOGIC;
  signal \value_next0_carry__0_n_3\ : STD_LOGIC;
  signal \value_next0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \value_next0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \value_next0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \value_next0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \value_next0_carry__1_n_0\ : STD_LOGIC;
  signal \value_next0_carry__1_n_1\ : STD_LOGIC;
  signal \value_next0_carry__1_n_2\ : STD_LOGIC;
  signal \value_next0_carry__1_n_3\ : STD_LOGIC;
  signal \value_next0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \value_next0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \value_next0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \value_next0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \value_next0_carry__2_n_0\ : STD_LOGIC;
  signal \value_next0_carry__2_n_1\ : STD_LOGIC;
  signal \value_next0_carry__2_n_2\ : STD_LOGIC;
  signal \value_next0_carry__2_n_3\ : STD_LOGIC;
  signal \value_next0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \value_next0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \value_next0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \value_next0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \value_next0_carry__3_n_0\ : STD_LOGIC;
  signal \value_next0_carry__3_n_1\ : STD_LOGIC;
  signal \value_next0_carry__3_n_2\ : STD_LOGIC;
  signal \value_next0_carry__3_n_3\ : STD_LOGIC;
  signal \value_next0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \value_next0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \value_next0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \value_next0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \value_next0_carry__4_n_0\ : STD_LOGIC;
  signal \value_next0_carry__4_n_1\ : STD_LOGIC;
  signal \value_next0_carry__4_n_2\ : STD_LOGIC;
  signal \value_next0_carry__4_n_3\ : STD_LOGIC;
  signal \value_next0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \value_next0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \value_next0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \value_next0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \value_next0_carry__5_n_0\ : STD_LOGIC;
  signal \value_next0_carry__5_n_1\ : STD_LOGIC;
  signal \value_next0_carry__5_n_2\ : STD_LOGIC;
  signal \value_next0_carry__5_n_3\ : STD_LOGIC;
  signal \value_next0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \value_next0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \value_next0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \value_next0_carry__6_n_2\ : STD_LOGIC;
  signal \value_next0_carry__6_n_3\ : STD_LOGIC;
  signal value_next0_carry_i_1_n_0 : STD_LOGIC;
  signal value_next0_carry_i_2_n_0 : STD_LOGIC;
  signal value_next0_carry_i_3_n_0 : STD_LOGIC;
  signal value_next0_carry_i_4_n_0 : STD_LOGIC;
  signal value_next0_carry_n_0 : STD_LOGIC;
  signal value_next0_carry_n_1 : STD_LOGIC;
  signal value_next0_carry_n_2 : STD_LOGIC;
  signal value_next0_carry_n_3 : STD_LOGIC;
  signal \NLW_value_next0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_value_next0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \HRDATA[3]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \HRDATA[3]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of timer_irq_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of timer_irq_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \value[31]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \value[31]_i_5\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of value_next0_carry : label is 35;
  attribute ADDER_THRESHOLD of \value_next0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \value_next0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \value_next0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \value_next0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \value_next0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \value_next0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \value_next0_carry__6\ : label is 35;
begin
  timer_irq <= \^timer_irq\;
\HRDATA[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \HRDATA[3]_INST_0_i_1_n_0\,
      I1 => \control_reg_n_0_[0]\,
      I2 => \HRDATA[3]_INST_0_i_2_n_0\,
      I3 => value(0),
      I4 => last_HADDR(2),
      I5 => load(0),
      O => HRDATA(0)
    );
\HRDATA[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(10),
      I1 => last_HADDR(2),
      I2 => value(10),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(10)
    );
\HRDATA[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(11),
      I1 => last_HADDR(2),
      I2 => value(11),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(11)
    );
\HRDATA[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(12),
      I1 => last_HADDR(2),
      I2 => value(12),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(12)
    );
\HRDATA[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(13),
      I1 => last_HADDR(2),
      I2 => value(13),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(13)
    );
\HRDATA[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(14),
      I1 => last_HADDR(2),
      I2 => value(14),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(14)
    );
\HRDATA[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(15),
      I1 => last_HADDR(2),
      I2 => value(15),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(15)
    );
\HRDATA[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(16),
      I1 => last_HADDR(2),
      I2 => value(16),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(16)
    );
\HRDATA[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(17),
      I1 => last_HADDR(2),
      I2 => value(17),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(17)
    );
\HRDATA[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(18),
      I1 => last_HADDR(2),
      I2 => value(18),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(18)
    );
\HRDATA[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(19),
      I1 => last_HADDR(2),
      I2 => value(19),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(19)
    );
\HRDATA[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \HRDATA[3]_INST_0_i_1_n_0\,
      I1 => mode,
      I2 => \HRDATA[3]_INST_0_i_2_n_0\,
      I3 => value(1),
      I4 => last_HADDR(2),
      I5 => load(1),
      O => HRDATA(1)
    );
\HRDATA[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(20),
      I1 => last_HADDR(2),
      I2 => value(20),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(20)
    );
\HRDATA[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(21),
      I1 => last_HADDR(2),
      I2 => value(21),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(21)
    );
\HRDATA[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(22),
      I1 => last_HADDR(2),
      I2 => value(22),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(22)
    );
\HRDATA[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(23),
      I1 => last_HADDR(2),
      I2 => value(23),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(23)
    );
\HRDATA[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(24),
      I1 => last_HADDR(2),
      I2 => value(24),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(24)
    );
\HRDATA[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(25),
      I1 => last_HADDR(2),
      I2 => value(25),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(25)
    );
\HRDATA[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(26),
      I1 => last_HADDR(2),
      I2 => value(26),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(26)
    );
\HRDATA[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(27),
      I1 => last_HADDR(2),
      I2 => value(27),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(27)
    );
\HRDATA[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(28),
      I1 => last_HADDR(2),
      I2 => value(28),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(28)
    );
\HRDATA[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(29),
      I1 => last_HADDR(2),
      I2 => value(29),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(29)
    );
\HRDATA[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \HRDATA[3]_INST_0_i_1_n_0\,
      I1 => \control_reg_n_0_[2]\,
      I2 => \HRDATA[3]_INST_0_i_2_n_0\,
      I3 => value(2),
      I4 => last_HADDR(2),
      I5 => load(2),
      O => HRDATA(2)
    );
\HRDATA[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(30),
      I1 => last_HADDR(2),
      I2 => value(30),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(30)
    );
\HRDATA[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(31),
      I1 => last_HADDR(2),
      I2 => value(31),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(31)
    );
\HRDATA[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F444F4F4F444444"
    )
        port map (
      I0 => \HRDATA[3]_INST_0_i_1_n_0\,
      I1 => control(3),
      I2 => \HRDATA[3]_INST_0_i_2_n_0\,
      I3 => value(3),
      I4 => last_HADDR(2),
      I5 => load(3),
      O => HRDATA(3)
    );
\HRDATA[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => last_HADDR(2),
      I1 => last_HADDR(3),
      I2 => last_HADDR(0),
      I3 => last_HADDR(1),
      O => \HRDATA[3]_INST_0_i_1_n_0\
    );
\HRDATA[3]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => last_HADDR(3),
      I1 => last_HADDR(1),
      I2 => last_HADDR(0),
      O => \HRDATA[3]_INST_0_i_2_n_0\
    );
\HRDATA[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(4),
      I1 => last_HADDR(2),
      I2 => value(4),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(4)
    );
\HRDATA[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(5),
      I1 => last_HADDR(2),
      I2 => value(5),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(5)
    );
\HRDATA[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(6),
      I1 => last_HADDR(2),
      I2 => value(6),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(6)
    );
\HRDATA[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(7),
      I1 => last_HADDR(2),
      I2 => value(7),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(7)
    );
\HRDATA[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(8),
      I1 => last_HADDR(2),
      I2 => value(8),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(8)
    );
\HRDATA[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => load(9),
      I1 => last_HADDR(2),
      I2 => value(9),
      I3 => last_HADDR(0),
      I4 => last_HADDR(1),
      I5 => last_HADDR(3),
      O => HRDATA(9)
    );
\control[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => last_HSEL,
      I1 => p_0_in6_in,
      I2 => last_HWRITE,
      I3 => \HRDATA[3]_INST_0_i_1_n_0\,
      O => control_1
    );
\control_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => control_1,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(0),
      Q => \control_reg_n_0_[0]\
    );
\control_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => control_1,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(1),
      Q => mode
    );
\control_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => control_1,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(2),
      Q => \control_reg_n_0_[2]\
    );
\control_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => control_1,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(3),
      Q => control(3)
    );
current_state_reg: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => timer_irq_i_2_n_0,
      D => uprescaler16_n_2,
      Q => current_state
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
      Q => p_0_in6_in,
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
\load[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => last_HSEL,
      I1 => p_0_in6_in,
      I2 => last_HWRITE,
      I3 => \HRDATA[3]_INST_0_i_2_n_0\,
      I4 => last_HADDR(2),
      O => load_0
    );
\load_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(0),
      Q => load(0)
    );
\load_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(10),
      Q => load(10)
    );
\load_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(11),
      Q => load(11)
    );
\load_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(12),
      Q => load(12)
    );
\load_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(13),
      Q => load(13)
    );
\load_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(14),
      Q => load(14)
    );
\load_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(15),
      Q => load(15)
    );
\load_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(16),
      Q => load(16)
    );
\load_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(17),
      Q => load(17)
    );
\load_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(18),
      Q => load(18)
    );
\load_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(19),
      Q => load(19)
    );
\load_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(1),
      Q => load(1)
    );
\load_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(20),
      Q => load(20)
    );
\load_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(21),
      Q => load(21)
    );
\load_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(22),
      Q => load(22)
    );
\load_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(23),
      Q => load(23)
    );
\load_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(24),
      Q => load(24)
    );
\load_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(25),
      Q => load(25)
    );
\load_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(26),
      Q => load(26)
    );
\load_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(27),
      Q => load(27)
    );
\load_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(28),
      Q => load(28)
    );
\load_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(29),
      Q => load(29)
    );
\load_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(2),
      Q => load(2)
    );
\load_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(30),
      Q => load(30)
    );
\load_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(31),
      Q => load(31)
    );
\load_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(3),
      Q => load(3)
    );
\load_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(4),
      Q => load(4)
    );
\load_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(5),
      Q => load(5)
    );
\load_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(6),
      Q => load(6)
    );
\load_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(7),
      Q => load(7)
    );
\load_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(8),
      Q => load(8)
    );
\load_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => load_0,
      CLR => timer_irq_i_2_n_0,
      D => HWDATA(9),
      Q => load(9)
    );
timer_irq_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => value(13),
      I1 => value(15),
      I2 => value(12),
      I3 => value(14),
      O => timer_irq_i_10_n_0
    );
timer_irq_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => value(1),
      I1 => value(5),
      I2 => value(4),
      I3 => value(0),
      O => timer_irq_i_11_n_0
    );
timer_irq_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => value(9),
      I1 => value(11),
      I2 => value(28),
      I3 => value(30),
      O => timer_irq_i_12_n_0
    );
timer_irq_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => HRESETn,
      O => timer_irq_i_2_n_0
    );
timer_irq_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => value(24),
      I1 => value(31),
      I2 => value(26),
      I3 => value(25),
      I4 => timer_irq_i_7_n_0,
      O => timer_irq_i_4_n_0
    );
timer_irq_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => value(16),
      I1 => value(7),
      I2 => value(29),
      I3 => value(27),
      I4 => timer_irq_i_8_n_0,
      O => timer_irq_i_5_n_0
    );
timer_irq_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_irq_i_9_n_0,
      I1 => timer_irq_i_10_n_0,
      I2 => timer_irq_i_11_n_0,
      I3 => timer_irq_i_12_n_0,
      O => timer_irq_i_6_n_0
    );
timer_irq_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => value(21),
      I1 => value(23),
      I2 => value(6),
      I3 => value(17),
      O => timer_irq_i_7_n_0
    );
timer_irq_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => value(2),
      I1 => value(3),
      I2 => value(10),
      I3 => value(8),
      O => timer_irq_i_8_n_0
    );
timer_irq_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => value(19),
      I1 => value(20),
      I2 => value(22),
      I3 => value(18),
      O => timer_irq_i_9_n_0
    );
timer_irq_reg: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => '1',
      CLR => timer_irq_i_2_n_0,
      D => uprescaler16_n_0,
      Q => \^timer_irq\
    );
uprescaler16: entity work.Zynq_E40S_PMP_AHB2TIMER_0_0_prescaler
     port map (
      E(0) => timer_irq_next1,
      HCLK => HCLK,
      Q(1) => \control_reg_n_0_[2]\,
      Q(0) => \control_reg_n_0_[0]\,
      current_state => current_state,
      current_state_reg => uprescaler16_n_0,
      current_state_reg_0 => uprescaler16_n_2,
      timer_irq => \^timer_irq\,
      timer_irq_reg => timer_irq_i_4_n_0,
      timer_irq_reg_0 => timer_irq_i_5_n_0,
      timer_irq_reg_1 => timer_irq_i_6_n_0
    );
\value[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5757FFFF54570000"
    )
        port map (
      I0 => value(0),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(0),
      O => value_next(0)
    );
\value[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(10),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(10),
      O => value_next(10)
    );
\value[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(11),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(11),
      O => value_next(11)
    );
\value[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(12),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(12),
      O => value_next(12)
    );
\value[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(13),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(13),
      O => value_next(13)
    );
\value[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(14),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(14),
      O => value_next(14)
    );
\value[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(15),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(15),
      O => value_next(15)
    );
\value[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(16),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(16),
      O => value_next(16)
    );
\value[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(17),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(17),
      O => value_next(17)
    );
\value[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(18),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(18),
      O => value_next(18)
    );
\value[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(19),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(19),
      O => value_next(19)
    );
\value[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(1),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(1),
      O => value_next(1)
    );
\value[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(20),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(20),
      O => value_next(20)
    );
\value[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(21),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(21),
      O => value_next(21)
    );
\value[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(22),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(22),
      O => value_next(22)
    );
\value[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(23),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(23),
      O => value_next(23)
    );
\value[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(24),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(24),
      O => value_next(24)
    );
\value[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(25),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(25),
      O => value_next(25)
    );
\value[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(26),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(26),
      O => value_next(26)
    );
\value[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(27),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(27),
      O => value_next(27)
    );
\value[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(28),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(28),
      O => value_next(28)
    );
\value[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(29),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(29),
      O => value_next(29)
    );
\value[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(2),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(2),
      O => value_next(2)
    );
\value[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(30),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(30),
      O => value_next(30)
    );
\value[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(31),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(31),
      O => value_next(31)
    );
\value[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_irq_i_8_n_0,
      I1 => \value[31]_i_4_n_0\,
      I2 => timer_irq_i_7_n_0,
      I3 => \value[31]_i_5_n_0\,
      O => \value[31]_i_3_n_0\
    );
\value[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => value(27),
      I1 => value(29),
      I2 => value(7),
      I3 => value(16),
      O => \value[31]_i_4_n_0\
    );
\value[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => value(25),
      I1 => value(26),
      I2 => value(31),
      I3 => value(24),
      O => \value[31]_i_5_n_0\
    );
\value[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(3),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(3),
      O => value_next(3)
    );
\value[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(4),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(4),
      O => value_next(4)
    );
\value[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(5),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(5),
      O => value_next(5)
    );
\value[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(6),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(6),
      O => value_next(6)
    );
\value[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(7),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(7),
      O => value_next(7)
    );
\value[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(8),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(8),
      O => value_next(8)
    );
\value[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABFFFFA8AB0000"
    )
        port map (
      I0 => data1(9),
      I1 => \value[31]_i_3_n_0\,
      I2 => timer_irq_i_6_n_0,
      I3 => mode,
      I4 => current_state,
      I5 => load(9),
      O => value_next(9)
    );
value_next0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => value_next0_carry_n_0,
      CO(2) => value_next0_carry_n_1,
      CO(1) => value_next0_carry_n_2,
      CO(0) => value_next0_carry_n_3,
      CYINIT => value(0),
      DI(3 downto 0) => value(4 downto 1),
      O(3 downto 0) => data1(4 downto 1),
      S(3) => value_next0_carry_i_1_n_0,
      S(2) => value_next0_carry_i_2_n_0,
      S(1) => value_next0_carry_i_3_n_0,
      S(0) => value_next0_carry_i_4_n_0
    );
\value_next0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => value_next0_carry_n_0,
      CO(3) => \value_next0_carry__0_n_0\,
      CO(2) => \value_next0_carry__0_n_1\,
      CO(1) => \value_next0_carry__0_n_2\,
      CO(0) => \value_next0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => value(8 downto 5),
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \value_next0_carry__0_i_1_n_0\,
      S(2) => \value_next0_carry__0_i_2_n_0\,
      S(1) => \value_next0_carry__0_i_3_n_0\,
      S(0) => \value_next0_carry__0_i_4_n_0\
    );
\value_next0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(8),
      O => \value_next0_carry__0_i_1_n_0\
    );
\value_next0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(7),
      O => \value_next0_carry__0_i_2_n_0\
    );
\value_next0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(6),
      O => \value_next0_carry__0_i_3_n_0\
    );
\value_next0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(5),
      O => \value_next0_carry__0_i_4_n_0\
    );
\value_next0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_next0_carry__0_n_0\,
      CO(3) => \value_next0_carry__1_n_0\,
      CO(2) => \value_next0_carry__1_n_1\,
      CO(1) => \value_next0_carry__1_n_2\,
      CO(0) => \value_next0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => value(12 downto 9),
      O(3 downto 0) => data1(12 downto 9),
      S(3) => \value_next0_carry__1_i_1_n_0\,
      S(2) => \value_next0_carry__1_i_2_n_0\,
      S(1) => \value_next0_carry__1_i_3_n_0\,
      S(0) => \value_next0_carry__1_i_4_n_0\
    );
\value_next0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(12),
      O => \value_next0_carry__1_i_1_n_0\
    );
\value_next0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(11),
      O => \value_next0_carry__1_i_2_n_0\
    );
\value_next0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(10),
      O => \value_next0_carry__1_i_3_n_0\
    );
\value_next0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(9),
      O => \value_next0_carry__1_i_4_n_0\
    );
\value_next0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_next0_carry__1_n_0\,
      CO(3) => \value_next0_carry__2_n_0\,
      CO(2) => \value_next0_carry__2_n_1\,
      CO(1) => \value_next0_carry__2_n_2\,
      CO(0) => \value_next0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => value(16 downto 13),
      O(3 downto 0) => data1(16 downto 13),
      S(3) => \value_next0_carry__2_i_1_n_0\,
      S(2) => \value_next0_carry__2_i_2_n_0\,
      S(1) => \value_next0_carry__2_i_3_n_0\,
      S(0) => \value_next0_carry__2_i_4_n_0\
    );
\value_next0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(16),
      O => \value_next0_carry__2_i_1_n_0\
    );
\value_next0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(15),
      O => \value_next0_carry__2_i_2_n_0\
    );
\value_next0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(14),
      O => \value_next0_carry__2_i_3_n_0\
    );
\value_next0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(13),
      O => \value_next0_carry__2_i_4_n_0\
    );
\value_next0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_next0_carry__2_n_0\,
      CO(3) => \value_next0_carry__3_n_0\,
      CO(2) => \value_next0_carry__3_n_1\,
      CO(1) => \value_next0_carry__3_n_2\,
      CO(0) => \value_next0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => value(20 downto 17),
      O(3 downto 0) => data1(20 downto 17),
      S(3) => \value_next0_carry__3_i_1_n_0\,
      S(2) => \value_next0_carry__3_i_2_n_0\,
      S(1) => \value_next0_carry__3_i_3_n_0\,
      S(0) => \value_next0_carry__3_i_4_n_0\
    );
\value_next0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(20),
      O => \value_next0_carry__3_i_1_n_0\
    );
\value_next0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(19),
      O => \value_next0_carry__3_i_2_n_0\
    );
\value_next0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(18),
      O => \value_next0_carry__3_i_3_n_0\
    );
\value_next0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(17),
      O => \value_next0_carry__3_i_4_n_0\
    );
\value_next0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_next0_carry__3_n_0\,
      CO(3) => \value_next0_carry__4_n_0\,
      CO(2) => \value_next0_carry__4_n_1\,
      CO(1) => \value_next0_carry__4_n_2\,
      CO(0) => \value_next0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => value(24 downto 21),
      O(3 downto 0) => data1(24 downto 21),
      S(3) => \value_next0_carry__4_i_1_n_0\,
      S(2) => \value_next0_carry__4_i_2_n_0\,
      S(1) => \value_next0_carry__4_i_3_n_0\,
      S(0) => \value_next0_carry__4_i_4_n_0\
    );
\value_next0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(24),
      O => \value_next0_carry__4_i_1_n_0\
    );
\value_next0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(23),
      O => \value_next0_carry__4_i_2_n_0\
    );
\value_next0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(22),
      O => \value_next0_carry__4_i_3_n_0\
    );
\value_next0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(21),
      O => \value_next0_carry__4_i_4_n_0\
    );
\value_next0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_next0_carry__4_n_0\,
      CO(3) => \value_next0_carry__5_n_0\,
      CO(2) => \value_next0_carry__5_n_1\,
      CO(1) => \value_next0_carry__5_n_2\,
      CO(0) => \value_next0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => value(28 downto 25),
      O(3 downto 0) => data1(28 downto 25),
      S(3) => \value_next0_carry__5_i_1_n_0\,
      S(2) => \value_next0_carry__5_i_2_n_0\,
      S(1) => \value_next0_carry__5_i_3_n_0\,
      S(0) => \value_next0_carry__5_i_4_n_0\
    );
\value_next0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(28),
      O => \value_next0_carry__5_i_1_n_0\
    );
\value_next0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(27),
      O => \value_next0_carry__5_i_2_n_0\
    );
\value_next0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(26),
      O => \value_next0_carry__5_i_3_n_0\
    );
\value_next0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(25),
      O => \value_next0_carry__5_i_4_n_0\
    );
\value_next0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \value_next0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_value_next0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \value_next0_carry__6_n_2\,
      CO(0) => \value_next0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => value(30 downto 29),
      O(3) => \NLW_value_next0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(31 downto 29),
      S(3) => '0',
      S(2) => \value_next0_carry__6_i_1_n_0\,
      S(1) => \value_next0_carry__6_i_2_n_0\,
      S(0) => \value_next0_carry__6_i_3_n_0\
    );
\value_next0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(31),
      O => \value_next0_carry__6_i_1_n_0\
    );
\value_next0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(30),
      O => \value_next0_carry__6_i_2_n_0\
    );
\value_next0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(29),
      O => \value_next0_carry__6_i_3_n_0\
    );
value_next0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(4),
      O => value_next0_carry_i_1_n_0
    );
value_next0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(3),
      O => value_next0_carry_i_2_n_0
    );
value_next0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(2),
      O => value_next0_carry_i_3_n_0
    );
value_next0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => value(1),
      O => value_next0_carry_i_4_n_0
    );
\value_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(0),
      Q => value(0)
    );
\value_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(10),
      Q => value(10)
    );
\value_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(11),
      Q => value(11)
    );
\value_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(12),
      Q => value(12)
    );
\value_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(13),
      Q => value(13)
    );
\value_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(14),
      Q => value(14)
    );
\value_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(15),
      Q => value(15)
    );
\value_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(16),
      Q => value(16)
    );
\value_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(17),
      Q => value(17)
    );
\value_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(18),
      Q => value(18)
    );
\value_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(19),
      Q => value(19)
    );
\value_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(1),
      Q => value(1)
    );
\value_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(20),
      Q => value(20)
    );
\value_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(21),
      Q => value(21)
    );
\value_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(22),
      Q => value(22)
    );
\value_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(23),
      Q => value(23)
    );
\value_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(24),
      Q => value(24)
    );
\value_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(25),
      Q => value(25)
    );
\value_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(26),
      Q => value(26)
    );
\value_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(27),
      Q => value(27)
    );
\value_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(28),
      Q => value(28)
    );
\value_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(29),
      Q => value(29)
    );
\value_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(2),
      Q => value(2)
    );
\value_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(30),
      Q => value(30)
    );
\value_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(31),
      Q => value(31)
    );
\value_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(3),
      Q => value(3)
    );
\value_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(4),
      Q => value(4)
    );
\value_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(5),
      Q => value(5)
    );
\value_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(6),
      Q => value(6)
    );
\value_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(7),
      Q => value(7)
    );
\value_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(8),
      Q => value(8)
    );
\value_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => HCLK,
      CE => timer_irq_next1,
      CLR => timer_irq_i_2_n_0,
      D => value_next(9),
      Q => value(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHB2TIMER_0_0 is
  port (
    HCLK : in STD_LOGIC;
    HRESETn : in STD_LOGIC;
    HADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HWDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    HTRANS : in STD_LOGIC_VECTOR ( 1 downto 0 );
    HWRITE : in STD_LOGIC;
    HSEL : in STD_LOGIC;
    HREADY : in STD_LOGIC;
    HRDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    HREADYOUT : out STD_LOGIC;
    timer_irq : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_E40S_PMP_AHB2TIMER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_E40S_PMP_AHB2TIMER_0_0 : entity is "Zynq_E40S_PMP_AHB2TIMER_0_0,AHB2TIMER,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_E40S_PMP_AHB2TIMER_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Zynq_E40S_PMP_AHB2TIMER_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_E40S_PMP_AHB2TIMER_0_0 : entity is "AHB2TIMER,Vivado 2023.1.1";
end Zynq_E40S_PMP_AHB2TIMER_0_0;

architecture STRUCTURE of Zynq_E40S_PMP_AHB2TIMER_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of timer_irq : signal is "xilinx.com:signal:interrupt:1.0 timer_irq INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of timer_irq : signal is "XIL_INTERFACENAME timer_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
begin
  HREADYOUT <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.Zynq_E40S_PMP_AHB2TIMER_0_0_AHB2TIMER
     port map (
      HADDR(3 downto 0) => HADDR(3 downto 0),
      HCLK => HCLK,
      HRDATA(31 downto 0) => HRDATA(31 downto 0),
      HREADY => HREADY,
      HRESETn => HRESETn,
      HSEL => HSEL,
      HTRANS(0) => HTRANS(1),
      HWDATA(31 downto 0) => HWDATA(31 downto 0),
      HWRITE => HWRITE,
      timer_irq => timer_irq
    );
end STRUCTURE;
