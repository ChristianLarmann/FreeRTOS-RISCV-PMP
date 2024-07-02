`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 04:53:51 PM
// Design Name: 
// Module Name: bram_read_write_latency
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


module bram_read_write_latency
#(
        parameter	LATENCY_IN_CYCLES	=	3
)(
    input clk,
    input reset,
    input req,
    output reg valid
    );
    
    reg [15:0] counter;
    
    reg delay_active;
    
    always @(posedge clk)
	begin
	    if (!reset) begin
	        valid <= 0;
		    delay_active <= 0;
		    counter <= 0;
	   end
	   
       if(req && !delay_active)
       begin
           delay_active <= 1;
       end
       
       // Check wheter latency has been waited
       if(counter >= LATENCY_IN_CYCLES)
	   begin
	       valid <= 1;
	       delay_active <= 0;
	       counter <= 0;
	   end
        
       // Either count up or reset counter 
       if(delay_active) 
       begin
           counter = counter + 1;
       end else 
       begin
           valid <= 0;
       end 
       
	end
  
endmodule
