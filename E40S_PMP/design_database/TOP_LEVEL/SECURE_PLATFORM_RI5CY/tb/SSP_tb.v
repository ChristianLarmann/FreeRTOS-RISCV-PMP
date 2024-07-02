module ssp_tb();

///////////////////////////////////////////////////
////////////// INTERNAL SIGNALS ///////////////////
///////////////////////////////////////////////////
wire	[7:0]	leds;
reg   [1:0] switches;

wire w_TX_Serial;
reg  r_RX_Serial;

reg clock;
reg reset;
///////////////////////////////////////////////////

  // Takes in input byte and serializes it 
  task UART_WRITE_BYTE;
    input [7:0] i_Data;
    integer     ii;
    begin
      $display("Sending data %h",i_Data);
      // Send Start Bit
      r_RX_Serial <= 1'b0;
      #(8680);
      
      // Send Data Byte
      for (ii=0; ii<8; ii=ii+1)
        begin
          r_RX_Serial <= i_Data[ii];
          $display("Sending bit %h",i_Data[ii]);
          #(8680);
        end
		
      // Send Parity Bit
	  //r_RX_Serial <= ^i_Data;
	  //#(8680);
      
      // Send Stop Bit
      r_RX_Serial <= 1'b1;
      #(8680);
     end
  endtask // UART_WRITE_BYTE
 

always #5 clock = ~clock;

initial begin
  clock = 0;
  r_RX_Serial = 1;
  switches = 0;
  
  reset = 0;
  #20
  reset = 1;
  #20
  reset = 0;
 


	// Tell UART to send a command (exercise TX)
   /*   @(posedge clock);
      @(posedge clock);
      #(8680);
	  UART_WRITE_BYTE(8'h03); //HEADER (1 BYTE) - 0:LOOPBACK_RX - 1:BOOT_RX - 3:SCANF_RX
      
	  UART_WRITE_BYTE(8'h08); //NOC ADDR IP (1 BYTE)
      
	  UART_WRITE_BYTE(8'h08); //SIZE (2 BYTES)
	  UART_WRITE_BYTE(8'h00); //SIZE (2 BYTES)
	  
	  UART_WRITE_BYTE(8'h04); //PAYLOAD	(n BYTES)
	  UART_WRITE_BYTE(8'h03); //PAYLOAD	(n BYTES)
	  UART_WRITE_BYTE(8'h02); //PAYLOAD	(n BYTES)
	  UART_WRITE_BYTE(8'h01); //PAYLOAD	(n BYTES)	  
	  
  	  UART_WRITE_BYTE(8'h08); //PAYLOAD	(n BYTES)
	  UART_WRITE_BYTE(8'h07); //PAYLOAD	(n BYTES)
	  UART_WRITE_BYTE(8'h06); //PAYLOAD	(n BYTES)
	  UART_WRITE_BYTE(8'h05); //PAYLOAD	(n BYTES)
      @(posedge clock);*/
 
  
end


Zynq_E40S_PMP_wrapper SECURE_PLATFORM_RI5CY
		(
				.clk_125(clock),
				.system_reset(reset),
				.BT_RX(0)
		);

endmodule
