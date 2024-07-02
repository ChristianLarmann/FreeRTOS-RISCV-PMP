//  --========================================================================--
//  Version and Release Control Information:
//
//  File Name           : AHB2MEM.v
//  File Revision       : 1.00
//
//  ----------------------------------------------------------------------------
//  Purpose             : Basic AHBLITE Internal Memory Default Size = 32KB
//                        
//  --========================================================================--
module AHB2DUMP
(
	//AHBLITE INTERFACE
		//Slave Select Signals
			input wire HSEL,
		//Global Signal
			input wire HCLK,
			input wire HRESETn,
		//Address, Control & Write Data
			input wire HREADY,
			input wire [31:0] HADDR,
			input wire [1:0] HTRANS,
			input wire HWRITE,
			input wire [2:0] HSIZE,
			
			input wire [31:0] HWDATA,
		// Transfer Response & Read Data
			output wire HREADYOUT,
			output wire [31:0] HRDATA,
			
			output reg	[7:0]	LEDS
);


  assign HREADYOUT = 1'b1; // Always ready

// Registers to store Adress Phase Signals
 
  reg APhase_HSEL;
  reg APhase_HWRITE;
  reg [1:0] APhase_HTRANS;
  reg [31:0] APhase_HADDR;
  reg [2:0] APhase_HSIZE;

// Sample the Address Phase   
  always @(posedge HCLK or negedge HRESETn)
  begin
	 if(!HRESETn)
	 begin
		APhase_HSEL <= 1'b0;
      APhase_HWRITE <= 1'b0;
      APhase_HTRANS <= 2'b00;
		APhase_HADDR <= 32'h0;
		APhase_HSIZE <= 3'b000;
	 end
    else if(HREADY)
    begin
      APhase_HSEL <= HSEL;
      APhase_HWRITE <= HWRITE;
      APhase_HTRANS <= HTRANS;
		APhase_HADDR <= HADDR;
		APhase_HSIZE <= HSIZE;
    end
  end

// Writing to the memory
	integer proc_dump;
// Student Assignment: Write a testbench & simulate to spot bugs in this Memory module
  always @(posedge HCLK, negedge HRESETn)
  begin	
	if (!HRESETn)
	begin
		LEDS		<= 0;
		//proc_dump = $fopen("proc_dump.vec","w");
	end
	else
	begin
		if(APhase_HSEL & APhase_HWRITE & APhase_HTRANS[1])
		begin
			LEDS	<= HWDATA[7:0];
			//$fdisplay(proc_dump, "%d - %d",HWDATA, $time);	 
		end
	end
  end

// Reading from memory 
  assign HRDATA = {24'd0,LEDS};
  	
endmodule
