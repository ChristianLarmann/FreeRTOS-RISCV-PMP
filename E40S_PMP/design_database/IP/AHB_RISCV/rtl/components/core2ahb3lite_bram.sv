module core2ahb3lite
#(
    parameter AHB_ADDR_WIDTH   = 32,
    parameter AHB_DATA_WIDTH   = 32
)
(
    input wire                       clk_i,
    input wire                       rst_ni,

    input  wire                      req_i,
    output wire                      gnt_o,
    output wire                      rvalid_o,
    input  wire [AHB_ADDR_WIDTH-1:0] addr_i,
    input  wire                      we_i,
    input  wire [3:0]                be_i,
    output wire [31:0]               rdata_o,
    input  wire [31:0]               wdata_i,

	output reg  [AHB_ADDR_WIDTH-1:0] HADDR_o,
	output reg  [AHB_DATA_WIDTH-1:0] HWDATA_o,
	input  wire [AHB_DATA_WIDTH-1:0] HRDATA_i,
	output reg 						 HWRITE_o,
	output reg  [2:0]				 HSIZE_o,
	output reg  [2:0]				 HBURST_o,
	output reg  [3:0]				 HPROT_o,
	output reg  [1:0]				 HTRANS_o,
	output reg 						 HMASTLOCK_o,
	input  wire						 HREADY_i,
	input  wire						 HRESP_i
	
);

  localparam IDLE=0, READ_WAIT=1, END=2, WRITE_WAIT=3;
  reg 	[1:0]  	state, next_state;

  reg			last_was_op;
  
  reg 	[31:0]	addr_q, wdata_q;
  
  wire			rvalid_int;
  wire	[31:0]	rdata_int;
  
  wire  [2:0]	size;
  //ASSIGNS
  
  //assign gnt_o 		= req_i & ( (state != IDLE) ) ? 1'b1 : 1'b0;
  assign gnt_o 		= req_i;
  assign rvalid_o	= ((state != IDLE) | last_was_op) & HREADY_i;
  assign rdata_o	= we_i ? 0 : HRDATA_i;
  
  //SIZE ENCODER
  wire cond_1 = (be_i[3] & be_i[2]);
  wire cond_2 = (be_i[1] & be_i[0]);
  assign size =  (cond_1 & cond_2) ? 3'b010 : ( (cond_1 | cond_2) ? 3'b001 : 3'b000);  
  
  // STATE
  always @(posedge clk_i, negedge rst_ni)
  begin
	if (!rst_ni)
		state <= IDLE;
	else
		state <= next_state;
  end
  // NS of FSM
  always @(*)
  begin
	case (state)
		IDLE: 		next_state = req_i 		? (we_i  ? WRITE_WAIT : READ_WAIT) 	: IDLE;
		READ_WAIT:	next_state = HREADY_i	? (req_i ? END 		  : IDLE)		: READ_WAIT;
		END:		next_state = HREADY_i	? (req_i 		? (we_i ? WRITE_WAIT : READ_WAIT) 	: IDLE) : END;
		WRITE_WAIT: next_state = HREADY_i	? (req_i ? END 		  : IDLE)		: WRITE_WAIT;
		default:	next_state = IDLE;
	endcase  
  end
	// out of FSM
  always @(*)
  begin
	HADDR_o			= addr_q;
	HWDATA_o		= 0;
	HWRITE_o		= 1'b0;
	HSIZE_o			= size;
	HBURST_o		= 3'd0;
	HPROT_o			= 4'd0;
	HTRANS_o		= 2'd0;
	HMASTLOCK_o		= 1'b0;
	
    case (state)
      IDLE: begin
        if (req_i)
        begin
		  HADDR_o 	= addr_i;
		  HTRANS_o	= 2'd2;
		  
          if (we_i)
            HWRITE_o = 1'b1;
		  else
		    HWRITE_o = 1'b0;
		end
	  end
	  READ_WAIT: begin     
			HADDR_o 	= addr_q;
			HTRANS_o	= 2'd0;
			
			if (req_i) begin
				HADDR_o 	= addr_i;
				HTRANS_o	= 2'd2;
				if (we_i)
          			  HWRITE_o = 1'b1;
		  		else
		  		  HWRITE_o = 1'b0;
			end
      end
	  END:
	  begin
			HADDR_o 	= addr_q;
			HTRANS_o	= 2'd0;			
			HWDATA_o	= wdata_q;

			if (req_i)
			begin				
				HADDR_o 	= addr_i;
				HTRANS_o	= 2'd2;
				
				if (we_i)
					HWRITE_o = 1'b1;
				else
					HWRITE_o = 1'b0;
			end
	  end
      WRITE_WAIT:
      begin
			HADDR_o 	= addr_q;
			HTRANS_o	= 2'd0;

			if (req_i) begin
				HADDR_o 	= addr_i;
				HTRANS_o	= 2'd2;
				if (we_i)
          			  HWRITE_o = 1'b1;
		  		else
		  		  HWRITE_o = 1'b0;				
			end
			
			HWDATA_o	= wdata_q;

      end
      endcase
  end

  always @(posedge clk_i, negedge rst_ni)
  begin
	if (!rst_ni) begin
		addr_q		<= 0;	
		wdata_q	<= 0;
		last_was_op	<= 0;
	end
	else begin
		addr_q		<= addr_i;
		wdata_q	<= wdata_i;
		last_was_op	<= req_i & (state == END);
	end
  end
  
 endmodule
 