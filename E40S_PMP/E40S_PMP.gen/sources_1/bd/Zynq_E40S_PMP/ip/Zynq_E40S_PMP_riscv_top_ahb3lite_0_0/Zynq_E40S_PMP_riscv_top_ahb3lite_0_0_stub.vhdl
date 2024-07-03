-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1.1 (lin64) Build 3900603 Fri Jun 16 19:30:25 MDT 2023
-- Date        : Wed Jul  3 16:09:51 2024
-- Host        : TP-T480s running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/christian/Documents/CESE/Thesis/FreeRTOS-RISCV-PMP/E40S_PMP/E40S_PMP.gen/sources_1/bd/Zynq_E40S_PMP/ip/Zynq_E40S_PMP_riscv_top_ahb3lite_0_0/Zynq_E40S_PMP_riscv_top_ahb3lite_0_0_stub.vhdl
-- Design      : Zynq_E40S_PMP_riscv_top_ahb3lite_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_E40S_PMP_riscv_top_ahb3lite_0_0 is
  Port ( 
    HCLK : in STD_LOGIC;
    HRESETn : in STD_LOGIC;
    ins_HADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ins_HMASTLOCK : out STD_LOGIC;
    ins_HPROT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ins_HSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ins_HTRANS : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ins_HWDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ins_HWRITE : out STD_LOGIC;
    ins_HRDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ins_HREADY : in STD_LOGIC;
    ins_HENCRYPT : out STD_LOGIC;
    dat_HADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dat_HMASTLOCK : out STD_LOGIC;
    dat_HPROT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dat_HSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dat_HTRANS : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dat_HWDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dat_HWRITE : out STD_LOGIC;
    dat_HRDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dat_HREADY : in STD_LOGIC;
    dat_HENCRYPT : out STD_LOGIC;
    irqs : in STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_req_i : in STD_LOGIC;
    debug_gnt_o : out STD_LOGIC;
    debug_rvalid_o : out STD_LOGIC;
    debug_addr_i : in STD_LOGIC_VECTOR ( 14 downto 0 );
    debug_we_i : in STD_LOGIC;
    debug_wdata_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_rdata_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_halted_o : out STD_LOGIC;
    debug_halt_i : in STD_LOGIC;
    debug_resume_i : in STD_LOGIC;
    fetch_enable_i : in STD_LOGIC;
    core_busy_o : out STD_LOGIC;
    dmem_access_req_debug_o : out STD_LOGIC
  );

end Zynq_E40S_PMP_riscv_top_ahb3lite_0_0;

architecture stub of Zynq_E40S_PMP_riscv_top_ahb3lite_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "HCLK,HRESETn,ins_HADDR[31:0],ins_HMASTLOCK,ins_HPROT[3:0],ins_HSIZE[2:0],ins_HTRANS[1:0],ins_HWDATA[31:0],ins_HWRITE,ins_HRDATA[31:0],ins_HREADY,ins_HENCRYPT,dat_HADDR[31:0],dat_HMASTLOCK,dat_HPROT[3:0],dat_HSIZE[2:0],dat_HTRANS[1:0],dat_HWDATA[31:0],dat_HWRITE,dat_HRDATA[31:0],dat_HREADY,dat_HENCRYPT,irqs[31:0],debug_req_i,debug_gnt_o,debug_rvalid_o,debug_addr_i[14:0],debug_we_i,debug_wdata_i[31:0],debug_rdata_o[31:0],debug_halted_o,debug_halt_i,debug_resume_i,fetch_enable_i,core_busy_o,dmem_access_req_debug_o";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "riscv_top_ahb3lite,Vivado 2023.1.1";
begin
end;
