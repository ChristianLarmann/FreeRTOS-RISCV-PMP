`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2024 04:44:34 PM
// Design Name: 
// Module Name: mem_interface
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BRAM_ARBITER #(
	parameter SIZE_MEMORY = 60000,
	parameter NUMBER_BRAM_ENTRIES = SIZE_MEMORY / 10,  // 16 byte per bram line
	parameter BRAM_ADDR_BITS = 15 //$clog2(NUMBER_BRAM_ENTRIES + 1)
)
(

	input sys_clock,
	input reset,
	///////////////////////////////////////////
	// AHBLite Peripherals
	///////////////////////////////////////////



	// SIGNALS BETWEEN BRAM AND BRAM-FSM

	output reg [128-1:0]                   ua_mem_wdata,
	output reg							   ua_mem_req,
	output reg							   ua_mem_write,
	output reg	[BRAM_ADDR_BITS-1:0]	   ua_mem_addr,
	input  wire                            ua_mem_valid,
	output reg                             data_ua_bram_valid,
	input  wire [128-1:0]                  ua_mem_rdata_i,
	output wire [128-1:0]                  ua_mem_rdata_o,



	// SIGNALS BETWEEN CACHES AND BRAM-FSM
	//input  wire	[31:0]		               inst_cache_mem_rdata,
	input  wire	[128-1:0]		           inst_cache_mem_wdata,
	input  wire	[BRAM_ADDR_BITS-1:0]       inst_cache_mem_addr,
	input  wire                            inst_cache_mem_req,
	input  wire						       inst_cache_mem_write,
	output reg                             inst_cache_mem_valid,

	//input  wire	[31:0]		               data_cache_mem_rdata,
	input  wire	[128-1:0]		           data_cache_mem_wdata,
	input  wire	[BRAM_ADDR_BITS-1:0]       data_cache_mem_addr,
	input  wire                            data_cache_mem_req,
	input  wire						       data_cache_mem_write,
	output reg						       data_cache_mem_rdy
	

		);
		
		// This is only for readability, all signals between bram and enc-units go through this module
		assign ua_mem_rdata_o = ua_mem_rdata_i;
		
		
		reg inst_mem_req_ongoing;

	// BRAM-FSM: Arbiter for two caches wanting to access one memory
	always @(posedge sys_clock)
	begin
		if (!reset) begin
		    inst_mem_req_ongoing <= 0;
		    
		    ua_mem_wdata <= 0;
		    ua_mem_req <= 0;
		    ua_mem_write <= 0;
		    data_ua_bram_valid <= 0;
		    inst_cache_mem_valid <= 0;
		    data_cache_mem_rdy <= 0;
		end
		
        // Make sure that req is reset if inst_req is high during data_req
		else if(data_cache_mem_req && data_ua_bram_valid)
		begin
		   ua_mem_req <= 0;
		   data_ua_bram_valid <= ua_mem_valid;
		end
		
		// Data accesses are being prioritized because it definitely will
		// lead to a stall. However, if an instruction fetch is active at 
		// the arrival of a data request, the data request has to wait.
		else if (data_cache_mem_req && !inst_mem_req_ongoing)
		begin
		   ua_mem_req <= 1;
		   ua_mem_write <= data_cache_mem_write;
		   ua_mem_addr <= data_cache_mem_addr;
		   ua_mem_wdata <= data_cache_mem_wdata;
		   data_ua_bram_valid <= ua_mem_valid;
		end
		
		else if(inst_cache_mem_req)
		begin
		   ua_mem_req <= 1;
		   ua_mem_write <= inst_cache_mem_write;
		   ua_mem_addr <= inst_cache_mem_addr;
		   ua_mem_wdata <= inst_cache_mem_wdata;
		   inst_cache_mem_valid <= ua_mem_valid;
		   
		   inst_mem_req_ongoing <= 1;
		end
		
		else
		begin
		   ua_mem_req <= 0;
		   inst_cache_mem_valid <= ua_mem_valid;
		   data_ua_bram_valid <= ua_mem_valid;
		   
		   inst_mem_req_ongoing <= 0;
		end
	end
endmodule

