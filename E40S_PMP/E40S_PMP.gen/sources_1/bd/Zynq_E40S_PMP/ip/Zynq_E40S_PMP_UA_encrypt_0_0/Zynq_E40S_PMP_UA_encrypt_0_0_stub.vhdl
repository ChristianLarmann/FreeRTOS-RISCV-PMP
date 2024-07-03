-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 16:06:28 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top Zynq_E40S_PMP_UA_encrypt_0_0 -prefix
--               Zynq_E40S_PMP_UA_encrypt_0_0_ Zynq_E40S_PMP_UA_encrypt_1_0_stub.vhdl
-- Design      : Zynq_E40S_PMP_UA_encrypt_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_E40S_PMP_UA_encrypt_0_0 is
  Port ( 
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    decryption_enabled_cpu : in STD_LOGIC;
    write_back_encryption_enabled : in STD_LOGIC;
    cache_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    cache_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    cache_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cache_req : in STD_LOGIC;
    cache_rw_enable : in STD_LOGIC;
    cache_ready : out STD_LOGIC;
    mem_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    mem_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    mem_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_req : out STD_LOGIC;
    mem_rw_enable : out STD_LOGIC;
    mem_valid : in STD_LOGIC;
    debug : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Zynq_E40S_PMP_UA_encrypt_0_0;

architecture stub of Zynq_E40S_PMP_UA_encrypt_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,decryption_enabled_cpu,write_back_encryption_enabled,cache_rdata[127:0],cache_wdata[127:0],cache_address[31:0],cache_req,cache_rw_enable,cache_ready,mem_rdata[127:0],mem_wdata[127:0],mem_address[31:0],mem_req,mem_rw_enable,mem_valid,debug[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UA_encrypt,Vivado 2023.1.1";
begin
end;
