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


module AHBKEYS
(
	//Inputs
  input wire HCLK,
  input wire HRESETn,
  input wire [31:0] HADDR,
  input wire HWRITE,
  input wire HSEL,
  input wire HREADY,
  
	//Output
  output reg [31:0] HRDATA,
  output wire HREADYOUT
);

// KEY0 at 0x1000
localparam [31:0] KEY0_WORD0 = 32'hAAAAAAAA;
localparam [31:0] KEY0_WORD1 = 32'hBBBBBBBB;
localparam [31:0] KEY0_WORD2 = 32'hCCCCCCCC;
localparam [31:0] KEY0_WORD3 = 32'hDDDDDDDD;

// KEY1 at 0x1100
localparam [31:0] KEY1_WORD0 = 32'hEEEEEEEE;
localparam [31:0] KEY1_WORD1 = 32'hFFFFFFFF;
localparam [31:0] KEY1_WORD2 = 32'h11111111;
localparam [31:0] KEY1_WORD3 = 32'h22222222;

assign HREADYOUT = 1;

//Set Registers for AHB Address State
  always@ (posedge HCLK)
  begin
    if(HSEL && !HWRITE)
    begin
      
      if (HADDR[11:8] == 4'h0) 
      begin
        if (HADDR[7:0] == 8'h0)  
        begin
            HRDATA <= KEY0_WORD0;
        end
        else if (HADDR[7:0] == 8'h4) 
        begin
            HRDATA <= KEY0_WORD1;
        end
        else if (HADDR[7:0] == 8'h8) 
        begin
            HRDATA <= KEY0_WORD2;
        end
        else if (HADDR[7:0] == 8'hc) 
        begin
            HRDATA <= KEY0_WORD3;
        end
      end
      
      if (HADDR[11:8] == 4'h1) 
      begin
        if (HADDR[7:0] == 8'h0)  
        begin
            HRDATA <= KEY1_WORD0;
        end
        else if (HADDR[7:0] == 8'h4) 
        begin
            HRDATA <= KEY1_WORD1;
        end
        else if (HADDR[7:0] == 8'h8) 
        begin
            HRDATA <= KEY1_WORD2;
        end
        else if (HADDR[7:0] == 8'hc) 
        begin
            HRDATA <= KEY1_WORD3;
        end
      end
    end
    else
    begin
      HRDATA <= 32'h4;
    end
  end  
endmodule
