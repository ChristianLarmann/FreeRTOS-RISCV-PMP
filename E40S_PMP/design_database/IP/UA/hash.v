/* This file contains the hashing state machine for SIPHASH.
It takes a 128 bit input which is fed to the siphash core 64
bits at a time. When the core is done processing, the hash 
is provided to the output until the next time the start input
is de-asserted.

The states are as follows:
When nothing is happening the state machine resides in the IDLE
state. In this state the previous output is held until run is 
asserted. Once it is asserted the machine moves to the INIT
state. Here the siphash core is initialized for one cycle and 
the ready output it deasserted. Next it moves to the COMP state.
During this state the 128 bit input is fed to the core, 64 bits
at a time. After each block, the core compresses the data until
it asserts its ready output, at which time the next block is
sent to it. Once all blocks have been compressed, the machine
moves to the final state, where the siphash process is finalized.
When it is done the machine moves to end where the outputs are 
set to the right values, and then to idle where it remains until
the next time run is toggled from low to high.
*/

module hash
    #(
        parameter   DATA_WIDTH		=	128,
        parameter   HASH_WIDTH      =   64,
        parameter   N_COMPRESS      =   2,
        parameter   N_FINALIZE      =   4
    )
    (
        input       wire                    clock,
        input       wire                    reset,
        input       wire [127:0]            key,
        input       wire                    run,
        input       wire [DATA_WIDTH-1:0]   din,
        output      wire [HASH_WIDTH-1:0]   dout,
        output      wire                    ready,
        output      wire [3:0]              debug
    
    );
    
    //Signals to change key and input to little endian
    wire    [127:0]             core_key;
    wire    [63:0]              message_0;
    wire    [63:0]              message_1;
    
    //assign  debug[1]        =   rdy;
    //assign  debug[0]        =   run;
    //assign  debug[3]        =   
    //assign  debug[2]        =   
    //assign  debug[1]        =   core_ready;
    //assign  debug[0]        =   core_valid;
    assign  debug[3:2]      =   state;
    assign  debug[1]        =   core_valid;
    assign  debug[0]        =   core_ready;
    

    //Input and output wires of the hash module
    wire                        core_initialize;
    wire                        core_compress;
    wire                        core_finalize;
    wire                        core_long;
    wire    [63:0]              core_mi;
    wire                        core_ready;
    wire    [127:0]             core_hash;
    wire                        core_valid;
    
    //State machine stuff
    reg     [2:0]               state;
    reg     [2:0]               next_state;
    localparam                  IDLE    =   3'b000,
                                INIT    =   3'b001,
                                COMP    =   3'b010,
                                PAD     =   3'b011,
                                FINAL   =   3'b100,
                                END     =   3'b111;


    
    //signifies that the hash output is correct
    reg                                     rdy;
    //Output from hash function
    reg     [HASH_WIDTH-1:0]                hash;
    //Needed to split input data into 64 bit blocks for hash function
    reg                                     c_counter;
    //Need to compress a whole extra 64 bit block for padding
    reg                                     padding;
    //Makes sure that the hash function only runs once per memory access
    reg                                     one_run;
    
    
    //Assign outputs
    assign  dout    =   hash;
    assign  ready   =   rdy;
    
    
    // State machine
    // Reset
    always @(posedge clock, posedge reset)
    begin
        if (reset) begin
            state                       <=  IDLE;
        end
        else begin
            state                       <=  next_state;
        end
    end
    
    
    always @*
    begin
        case (state)		
            IDLE:   begin
                if(run & !one_run) begin
                    next_state  <=  INIT;
                end
                else begin
                    next_state  <=  IDLE;
                end
            end
            
            INIT:   begin
                next_state      <=  COMP;
            end
            
            COMP:   begin
                if(core_ready & c_counter) begin
                    next_state  <=  PAD;                               
                end
                else begin
                    next_state  <=  COMP;
                end
            end
            
            
            PAD:    begin
                if(core_ready) begin
                    next_state  <=  FINAL;
                end
                else begin
                    next_state  <=  PAD;
                end
            end
            
            FINAL:  begin
                if(core_ready) begin
                    next_state  <=  END;
                end
                else begin
                    next_state  <=  FINAL;
                end
            end
            
            END:    begin
                if(core_valid) begin
                    next_state      <=  IDLE;
                end
                else begin
                    next_state      <=  END;
                end
            end
            
            default: begin
                next_state          <=  IDLE;
            end
        endcase
    end
    
    always @ (posedge clock, posedge reset)
    begin
        if(reset) begin
            rdy             <=  0;
            hash            <=  0;
            c_counter       <=  0;
            padding         <=  0;
            one_run         <=  0;
        end 
        else begin
            if(!run) begin
                rdy         <=  0;
                one_run     <=  0;
            end
            else begin
                case (state) 
                    IDLE:   begin
                        c_counter   <=  0;
                        padding     <=  0;
                    end
                    
                    INIT:   begin
                        rdy         <=  0;
                        one_run     <=  1;
                    end
                    
                    COMP:   begin
                        if(core_ready) begin
                            c_counter   <=  1;
                        end
                    end
                    
                    PAD:    begin
                        padding     <=  1;
                    end
                    
                    FINAL:  begin

                    end
                    
                    END:    begin
                        if(core_valid) begin
                            rdy         <=  1;
                            hash        <=  core_hash;
                        end
                    end
                    
                    default:    begin
                    
                    end
                endcase
            end
        end 
    end
    
    
assign	core_initialize    = (state == INIT);
assign	core_compress	   = (state == COMP | state == PAD) & core_ready;
assign	core_finalize	   = (state == FINAL) & core_ready;
assign	core_long		   = {1'b0};		
assign  message_0          = {din[7:0], din[15:8], din[23:16], din[31:24], din[39:32], din[47:40], din[55:48], din[63:56]};
assign  message_1          = {din[71:64], din[79:72], din[87:80], din[95:88], din[103:96], din[111:104], din[119:112], din[127:120]};
assign	core_mi			   = {padding ? 64'h1000000000000000 : (c_counter ? message_0[63:0] : message_1[63:0])};
assign  core_key           = {key[7:0], key[15:8], key[23:16], key[31:24], key[39:32], key[47:40], key[55:48], key[63:56], key[71:64], key[79:72], key[87:80], key[95:88], key[103:96], key[111:104], key[119:112], key[127:120]};

//(* dont_touch = "true" *) 
siphash_core 
	siphash
	(
                    .clk				(clock),
                    .reset_n			(!reset),

                    .initalize			(core_initialize),
                    .compress			(core_compress),
                    .finalize			(core_finalize),
                    .long				(core_long),

                    .compression_rounds	(N_COMPRESS),
                    .final_rounds		(N_FINALIZE),
                    .key				(core_key),
                    .mi					(core_mi),

                    .ready				(core_ready),
                    .siphash_word		(core_hash),
                    .siphash_word_valid	(core_valid)
    );			



endmodule



   