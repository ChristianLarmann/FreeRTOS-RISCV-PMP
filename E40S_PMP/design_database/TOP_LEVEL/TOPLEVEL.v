`timescale 1ns / 1ps


module TOPLEVEL
(
    input clk_125,
    input reset,
    output [3:0] output_LEDS
    //output [5:0] output_LEDS,
    //input BT_RX,
    //output BT_TX,
    //output BT_RTS,
    //output BT_CTS
);
    
    wire    system_clock;
    wire    system_reset;
    wire    clk_out;
    wire    locked;
    wire    I_interrupt;
    wire    D_interrupt;
    
    
    assign  system_clock    =   clk_out;
//    assign  output_LEDS[5]  =   I_interrupt;
//    assign  output_LEDS[4]  =   D_interrupt;
    assign  system_reset    =   ~reset;
    
//    debounce
//    reset_debounce
//    (
//        .pb_1(reset),
//        .clk(clk_125),
//        .pb_out(system_reset)
//    );
    
   clock 
   sys_clock 
   (
        .clk_in1(clk_125), 
        .reset(system_reset), 
        .clk_out1(clk_out), 
        .locked(locked)
    );
   
    
    SECURE_PLATFORM_RI5CY 
    RI5CY_with_Caches 
    (   
        .clock(system_clock), 
        .reset(system_reset), 
        .output_LEDS(output_LEDS[3:0]), 
        .BT_RX(0), 
        
//        .BT_RX(BT_RX), 
//        .BT_TX(BT_TX), 
//        .BT_RTS(BT_RTS), 
//        .BT_CTS(BT_CTS),
        .I_interrupt(I_interrupt),
        .D_interrupt(D_interrupt)
    );
            
endmodule



//RESET DEBOUNCER, TAKEN FROM INTERNET
//============================================================================

//fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog code for button debouncing on FPGA
// debouncing module without creating another clock domain
// by using clock enable signal 
module debounce(input pb_1,clk,output pb_out);
    wire slow_clk_en;
    wire Q1,Q2,Q2_bar;
    clock_enable u1(clk,pb_1,slow_clk_en);
    my_dff_en d1(clk,slow_clk_en,pb_1,Q1);
    my_dff_en d2(clk,slow_clk_en,Q1,Q2);
    assign Q2_bar = ~Q2;
    assign pb_out = Q1 & Q2_bar;
endmodule


// Slow clock enable for debouncing button 
module clock_enable(input Clk_100M,pb_1, output slow_clk_en);
    reg [26:0]counter=0;
    always @(posedge Clk_100M, negedge pb_1)
    begin
     if(pb_1==0)
              counter <= 0;
            else
       counter <= (counter>=249999)?0:counter+1;
    end

    assign slow_clk_en = (counter == 249999)?1'b1:1'b0;
endmodule
// D-flip-flop with clock enable signal for debouncing module 
module my_dff_en(input DFF_CLOCK, clock_enable,D, output reg Q=0);
    always @ (posedge DFF_CLOCK) begin
  if(clock_enable==1) 
           Q <= D;
    end
endmodule 

//================================================================================

