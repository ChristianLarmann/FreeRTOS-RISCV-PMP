-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 18:38:32 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_AHBDCD_0_0/Zynq_E40S_PMP_AHBDCD_0_0_sim_netlist.vhdl
-- Design      : Zynq_E40S_PMP_AHBDCD_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_E40S_PMP_AHBDCD_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_E40S_PMP_AHBDCD_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_E40S_PMP_AHBDCD_0_0 : entity is "Zynq_E40S_PMP_AHBDCD_0_0,AHBDCD,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Zynq_E40S_PMP_AHBDCD_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Zynq_E40S_PMP_AHBDCD_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Zynq_E40S_PMP_AHBDCD_0_0 : entity is "AHBDCD,Vivado 2023.1.1";
end Zynq_E40S_PMP_AHBDCD_0_0;

architecture STRUCTURE of Zynq_E40S_PMP_AHBDCD_0_0 is
  signal \^hsel_nomap\ : STD_LOGIC;
  signal HSEL_S0_INST_0_i_1_n_0 : STD_LOGIC;
  signal HSEL_S0_INST_0_i_2_n_0 : STD_LOGIC;
  signal HSEL_S2_INST_0_i_1_n_0 : STD_LOGIC;
  signal HSEL_S2_INST_0_i_2_n_0 : STD_LOGIC;
  signal HSEL_S2_INST_0_i_3_n_0 : STD_LOGIC;
  signal HSEL_S4_INST_0_i_1_n_0 : STD_LOGIC;
  signal HSEL_S5_INST_0_i_1_n_0 : STD_LOGIC;
  signal HSEL_S7_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^mux_sel\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \MUX_SEL[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \MUX_SEL[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \MUX_SEL[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \MUX_SEL[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \MUX_SEL[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \MUX_SEL[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of HSEL_S7_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MUX_SEL[0]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \MUX_SEL[2]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \MUX_SEL[3]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  HSEL_NOMAP <= \^hsel_nomap\;
  MUX_SEL(3) <= \^hsel_nomap\;
  MUX_SEL(2 downto 0) <= \^mux_sel\(2 downto 0);
HSEL_S0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => HSEL_S0_INST_0_i_1_n_0,
      I1 => HADDR(26),
      I2 => HADDR(29),
      I3 => HADDR(27),
      I4 => HADDR(28),
      I5 => HSEL_S0_INST_0_i_2_n_0,
      O => HSEL_S0
    );
HSEL_S0_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001010000010001"
    )
        port map (
      I0 => HADDR(20),
      I1 => HADDR(24),
      I2 => HADDR(25),
      I3 => HADDR(17),
      I4 => HADDR(16),
      I5 => HADDR(18),
      O => HSEL_S0_INST_0_i_1_n_0
    );
HSEL_S0_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => HADDR(30),
      I1 => HADDR(31),
      I2 => HADDR(22),
      I3 => HADDR(23),
      I4 => HADDR(21),
      I5 => HADDR(19),
      O => HSEL_S0_INST_0_i_2_n_0
    );
HSEL_S2_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => HSEL_S2_INST_0_i_1_n_0,
      I1 => HADDR(20),
      I2 => HSEL_S2_INST_0_i_2_n_0,
      I3 => HSEL_S0_INST_0_i_2_n_0,
      I4 => HSEL_S2_INST_0_i_3_n_0,
      I5 => HADDR(29),
      O => HSEL_S2
    );
HSEL_S2_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => HADDR(17),
      I1 => HADDR(16),
      I2 => HADDR(18),
      O => HSEL_S2_INST_0_i_1_n_0
    );
HSEL_S2_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => HADDR(25),
      I1 => HADDR(24),
      I2 => HADDR(26),
      O => HSEL_S2_INST_0_i_2_n_0
    );
HSEL_S2_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => HADDR(27),
      I1 => HADDR(28),
      O => HSEL_S2_INST_0_i_3_n_0
    );
HSEL_S4_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => HSEL_S4_INST_0_i_1_n_0,
      I1 => HADDR(26),
      I2 => HADDR(29),
      I3 => HADDR(27),
      I4 => HADDR(28),
      I5 => HSEL_S0_INST_0_i_2_n_0,
      O => HSEL_S4
    );
HSEL_S4_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => HADDR(20),
      I1 => HADDR(24),
      I2 => HADDR(25),
      I3 => HADDR(18),
      I4 => HADDR(16),
      I5 => HADDR(17),
      O => HSEL_S4_INST_0_i_1_n_0
    );
HSEL_S5_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => HSEL_S5_INST_0_i_1_n_0,
      I1 => HADDR(26),
      I2 => HADDR(29),
      I3 => HADDR(27),
      I4 => HADDR(28),
      I5 => HSEL_S0_INST_0_i_2_n_0,
      O => HSEL_S5
    );
HSEL_S5_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => HADDR(20),
      I1 => HADDR(25),
      I2 => HADDR(24),
      I3 => HADDR(18),
      I4 => HADDR(16),
      I5 => HADDR(17),
      O => HSEL_S5_INST_0_i_1_n_0
    );
HSEL_S7_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => HSEL_S0_INST_0_i_2_n_0,
      I1 => HADDR(26),
      I2 => HADDR(29),
      I3 => HSEL_S2_INST_0_i_1_n_0,
      I4 => HSEL_S7_INST_0_i_1_n_0,
      O => HSEL_S7
    );
HSEL_S7_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => HADDR(28),
      I1 => HADDR(27),
      I2 => HADDR(20),
      I3 => HADDR(24),
      I4 => HADDR(25),
      O => HSEL_S7_INST_0_i_1_n_0
    );
\MUX_SEL[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \MUX_SEL[0]_INST_0_i_1_n_0\,
      I1 => HADDR(29),
      I2 => HADDR(27),
      I3 => HADDR(28),
      I4 => HSEL_S0_INST_0_i_2_n_0,
      I5 => \MUX_SEL[3]_INST_0_i_1_n_0\,
      O => \^mux_sel\(0)
    );
\MUX_SEL[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F44F"
    )
        port map (
      I0 => HADDR(24),
      I1 => HADDR(20),
      I2 => HADDR(26),
      I3 => HADDR(25),
      O => \MUX_SEL[0]_INST_0_i_1_n_0\
    );
\MUX_SEL[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFF"
    )
        port map (
      I0 => \MUX_SEL[1]_INST_0_i_1_n_0\,
      I1 => \MUX_SEL[3]_INST_0_i_3_n_0\,
      I2 => HSEL_S0_INST_0_i_2_n_0,
      I3 => HSEL_S2_INST_0_i_3_n_0,
      I4 => HADDR(29),
      I5 => HADDR(26),
      O => \^mux_sel\(1)
    );
\MUX_SEL[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFEFFFED2"
    )
        port map (
      I0 => HADDR(18),
      I1 => HADDR(16),
      I2 => HADDR(17),
      I3 => HADDR(20),
      I4 => HADDR(25),
      I5 => HADDR(24),
      O => \MUX_SEL[1]_INST_0_i_1_n_0\
    );
\MUX_SEL[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \MUX_SEL[2]_INST_0_i_1_n_0\,
      I1 => HADDR(29),
      I2 => HADDR(27),
      I3 => HADDR(28),
      I4 => HSEL_S0_INST_0_i_2_n_0,
      I5 => \MUX_SEL[3]_INST_0_i_1_n_0\,
      O => \^mux_sel\(2)
    );
\MUX_SEL[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F70F"
    )
        port map (
      I0 => HADDR(25),
      I1 => HADDR(24),
      I2 => HADDR(26),
      I3 => HADDR(20),
      O => \MUX_SEL[2]_INST_0_i_1_n_0\
    );
\MUX_SEL[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFFFEFFFF"
    )
        port map (
      I0 => HSEL_S0_INST_0_i_2_n_0,
      I1 => \MUX_SEL[3]_INST_0_i_1_n_0\,
      I2 => \MUX_SEL[3]_INST_0_i_2_n_0\,
      I3 => HSEL_S7_INST_0_i_1_n_0,
      I4 => HADDR(29),
      I5 => \MUX_SEL[3]_INST_0_i_3_n_0\,
      O => \^hsel_nomap\
    );
\MUX_SEL[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFFFFFEFF0E"
    )
        port map (
      I0 => HADDR(25),
      I1 => HADDR(24),
      I2 => HADDR(20),
      I3 => HADDR(17),
      I4 => HADDR(16),
      I5 => HADDR(18),
      O => \MUX_SEL[3]_INST_0_i_1_n_0\
    );
\MUX_SEL[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA95AAFFAAFFAAFF"
    )
        port map (
      I0 => HADDR(26),
      I1 => HADDR(25),
      I2 => HADDR(24),
      I3 => HADDR(29),
      I4 => HADDR(27),
      I5 => HADDR(28),
      O => \MUX_SEL[3]_INST_0_i_2_n_0\
    );
\MUX_SEL[3]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => HADDR(25),
      I1 => HADDR(24),
      I2 => HADDR(20),
      O => \MUX_SEL[3]_INST_0_i_3_n_0\
    );
end STRUCTURE;
