//////////////////////////////////////////////////////////////////////////////////
//END USER LICENCE AGREEMENT                                                    //
//                                                                              //
//Copyright (c) 2012, ARM All rights reserved.                                  //
//                                                                              //
//THIS END USER LICENCE AGREEMENT (�LICENCE�) IS A LEGAL AGREEMENT BETWEEN      //
//YOU AND ARM LIMITED ("ARM") FOR THE USE OF THE SOFTWARE EXAMPLE ACCOMPANYING  //
//THIS LICENCE. ARM IS ONLY WILLING TO LICENSE THE SOFTWARE EXAMPLE TO YOU ON   //
//CONDITION THAT YOU ACCEPT ALL OF THE TERMS IN THIS LICENCE. BY INSTALLING OR  //
//OTHERWISE USING OR COPYING THE SOFTWARE EXAMPLE YOU INDICATE THAT YOU AGREE   //
//TO BE BOUND BY ALL OF THE TERMS OF THIS LICENCE. IF YOU DO NOT AGREE TO THE   //
//TERMS OF THIS LICENCE, ARM IS UNWILLING TO LICENSE THE SOFTWARE EXAMPLE TO    //
//YOU AND YOU MAY NOT INSTALL, USE OR COPY THE SOFTWARE EXAMPLE.                //
//                                                                              //
//ARM hereby grants to you, subject to the terms and conditions of this Licence,//
//a non-exclusive, worldwide, non-transferable, copyright licence only to       //
//redistribute and use in source and binary forms, with or without modification,//
//for academic purposes provided the following conditions are met:              //
//a) Redistributions of source code must retain the above copyright notice, this//
//list of conditions and the following disclaimer.                              //
//b) Redistributions in binary form must reproduce the above copyright notice,  //
//this list of conditions and the following disclaimer in the documentation     //
//and/or other materials provided with the distribution.                        //
//                                                                              //
//THIS SOFTWARE EXAMPLE IS PROVIDED BY THE COPYRIGHT HOLDER "AS IS" AND ARM     //
//EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING     //
//WITHOUT LIMITATION WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR //
//PURPOSE, WITH RESPECT TO THIS SOFTWARE EXAMPLE. IN NO EVENT SHALL ARM BE LIABLE/
//FOR ANY DIRECT, INDIRECT, INCIDENTAL, PUNITIVE, OR CONSEQUENTIAL DAMAGES OF ANY/
//KIND WHATSOEVER WITH RESPECT TO THE SOFTWARE EXAMPLE. ARM SHALL NOT BE LIABLE //
//FOR ANY CLAIMS, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, //
//TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE    //
//EXAMPLE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE EXAMPLE. FOR THE AVOIDANCE/
// OF DOUBT, NO PATENT LICENSES ARE BEING LICENSED UNDER THIS LICENSE AGREEMENT.//
//////////////////////////////////////////////////////////////////////////////////
 

module AHBDCD(
  input wire [31:0] HADDR,
  input wire RESET,
  
  output wire HSEL_S0,
  output wire HSEL_S1,
  output wire HSEL_S2,
  output wire HSEL_S3,
  output wire HSEL_S4,
  output wire HSEL_S5,
  output wire HSEL_S6,
  output wire HSEL_S7,
  output wire HSEL_S8,
  output wire HSEL_S9,
  output wire HSEL_NOMAP,
  
  output reg [3:0] MUX_SEL
    );

reg [15:0] dec;

reg instr_mem_access_locked;

//REFER CM0-DS REFERENC MANUAL FOR RAM & PERIPHERAL MEMORY MAP
//									//MEMORY MAP --> START ADDR 		END ADDR 	SIZE 
assign HSEL_S0 = dec[0];   //MEMORY MAP --> 0x1C05_0000 to 0x1C05_FFFF  64kb
assign HSEL_S1 = dec[1];   //MEMORY MAP --> 0x1A10_0000 to 0x1A10_FFFF  64kb	
assign HSEL_S2 = dec[2];   //MEMORY MAP --> 0x1B10_0000 to 0x1B10_FFFF  64kb
assign HSEL_S3 = dec[3];   //MEMORY MAP --> 0x1C10_0000 to 0x1C10_FFFF  64kb
assign HSEL_S4 = dec[4];   //MEMORY MAP --> 0x1D10_0000 to 0x1D10_FFFF  64kb
assign HSEL_S5 = dec[5];   //MEMORY MAP --> 0x1E10_0000 to 0x1E10_FFFF  64kb
assign HSEL_S6 = dec[6];   //MEMORY MAP --> 0x1F10_0000 to 0x1F10_FFFF  64kb
assign HSEL_S7 = dec[7];   //MEMORY MAP --> 0x2010_0000 to 0x2010_FFFF  64kb
assign HSEL_S8 = dec[8];   //MEMORY MAP --> undef
assign HSEL_S9 = dec[9];   //MEMORY MAP --> undef
assign HSEL_NOMAP = dec[15]; //REST OF REGION NOT COVERED ABOVE
    
    
always@ (negedge RESET)
begin
  if(!RESET)
    instr_mem_access_locked <= 1'h0;
end
  

always@*
begin

  case(HADDR[31:16])
    16'h1C05: // MEMORY MAP --> 0x0050_0000 to 0x0050_FFFF  64kB
      begin
        dec = 16'b0000_0000_00000001;
        MUX_SEL = 4'b0000;
      end
    
    16'h1C00, 16'h1C01: // Secure boot accessing PRGM-RAM instructions
      begin
        if (!instr_mem_access_locked) begin
            dec = 16'b0000_0000_00000001;
            MUX_SEL = 4'b0000;
        end else begin
            // Same as NOMAP, default case
            dec = 16'b1000_0000_00000000;
            MUX_SEL = 4'b1111;
        end
      end
    16'h1A10: //MEMORY MAP --> 0x1A10_0000 to 0x1A10_FFFF  64kB 
      begin		
			dec = 16'b0000_0000_0000_0010;
			MUX_SEL = 4'b0001;
			instr_mem_access_locked = 'h1;
      end
	16'h1B10:  
		begin
			dec = 16'b0000_0000_0000_0100;
			MUX_SEL = 4'b0010;
		end
	16'h1C10:  
		begin
			dec = 16'b0000_0000_0000_1000;
			MUX_SEL = 4'b0011;
		end
	16'h1D10:  
		begin
			dec = 16'b0000_0000_0001_0000;
			MUX_SEL = 4'b0100;
		end	
	16'h1E10:  
		begin
			dec = 16'b0000_0000_0010_0000;
			MUX_SEL = 4'b0101;
		end	
	16'h1C01:  
		begin
			dec = 16'b0000_0000_0100_0000;
			MUX_SEL = 4'b0110;
		end		
	16'h2010:  
		begin
			dec = 16'b0000_0000_1000_0000;
			MUX_SEL = 4'b0111;
		end
    default: //NOMAP
      begin
        dec = 16'b1000_0000_00000000;
        MUX_SEL = 4'b1111;
      end
  endcase
end

endmodule
