module UA_hash_S
    #(
        parameter	ADDRESS_SIZE	=	32,
        parameter	NUMBER_OF_BYTES	=	16,
        parameter	DATA_WIDTH		=	NUMBER_OF_BYTES * 8,
        parameter   HASH_WIDTH      =   64
    )
    (
        //Clock and reset
        input   wire                    clock,
        input   wire                    reset,
        
        //Cache side connections
        output  wire [DATA_WIDTH-1:0]   cache_rdata,
        input   wire [DATA_WIDTH-1:0]   cache_wdata,
        input   wire [ADDRESS_SIZE-1:0] cache_address,
        input   wire                    cache_req,
        input   wire                    cache_rw_enable,
        output  wire                    cache_ready,
        
        //Memory side connections
        input   wire [DATA_WIDTH-1:0]   mem_rdata,
        output  wire [DATA_WIDTH-1:0]   mem_wdata,
        output  wire [ADDRESS_SIZE-1:0] mem_address,
        output  wire                    mem_req,
        output  wire                    mem_rw_enable,
        input   wire                    mem_ready,
        
        //Hash error interrrupt
        output  wire                    interrupt,
        
        //Debug output
        output  wire    [7:0]           debug
    );
    

    assign  debug[7]        =       mem_ready;
    assign  debug[6]        =       mem_request;
    assign  debug[5]        =       ready;
    assign  debug[4]        =       cache_req;
    assign  debug[3:0]      =       hash_debug;
    
    wire    [3:0]                   hash_debug;
    
    
    //Hashing/encryption key
    localparam                  KEY     =   128'h000102030405060708090a0b0c0d0e0f;
    

    
    // Registers and states for state machine
    reg		[3:0]                   state; 
    reg     [3:0]                   next_state;
    localparam                      IDLE    =   4'b0000,
                                    RDATA   =   4'b0001,
                                    WDATA   =   4'b0010,
                                    RHASH   =   4'b0011,
                                    WHASH   =   4'b0100,
                                    CHASH   =   4'b0101,
                                    VHASH   =   4'b0111,
                                    END     =   4'b1000,
                                    ERROR   =   4'b1111;
                
    // Wires and registers for internal signals
    // ========================================
    // Addresses===============================
    // Address to memory
    reg     [ADDRESS_SIZE-1:0]      address;
    // Data address
    reg     [ADDRESS_SIZE-1:0]      daddress;
    // Hash address 
    reg     [ADDRESS_SIZE-1:0]      haddress;
    // Reading from memory====================
    // Data coming from memory
    reg     [DATA_WIDTH-1:0]        rdata;
    // Hash coming from memory
    reg     [DATA_WIDTH-1:0]        rhash;
    // Writing to memory======================
    // Data or hash going to memory
    reg     [DATA_WIDTH-1:0]        mem_wout;
    // Data to be written
    reg     [DATA_WIDTH-1:0]        wdata;
    // Other memory signals==================
    // Holds request signal to memory
    reg                             mem_request;
    // Holds whether data is read or written to memory. 1 is write.
    reg                             mem_rw;
    // Hashing stuff===========================
    // Hashing block signals
    wire                            hash_rdy;
    reg                             hash_run;
    reg     [DATA_WIDTH-1:0]        hash_din;
    wire    [HASH_WIDTH-1:0]        hash_dout;
    // Used to verify if calculated hash is same as stored
    wire                            hash_correct;
    // Output for when calculated hash differs from hash in memory
    reg                             interrupt_reg;
    // Output when done
    reg                             ready;

    // Assign output wires    
    assign  cache_rdata     =   interrupt_reg ? 0 : rdata; 
    assign  mem_wdata       =   mem_wout;
    assign  mem_address     =   address;
    assign  mem_req         =   mem_request;
    assign  mem_rw_enable   =   mem_rw;
    assign  cache_ready     =   ready;
    assign  interrupt       =   interrupt_reg;
    
    // Assign internal wires
    assign hash_correct     =   {hash_dout == rhash[DATA_WIDTH-1:HASH_WIDTH]};

    
    // NEW STUFF====================================================================


    reg                             rw;


    
    // Reset and state switches
    always @(posedge clock, posedge reset)
    begin
        if (reset) begin
            state                       <=  IDLE;
        end
        else begin
            state                       <=  next_state;
        end
    end
    
    
    // State machine
    // Events per state to switch to next state
    always @*  //(cache_req, cache_rw_enable, mem_ready, hash_rdy, hash_correct, state)
    begin        
        case (state)		
        //  IDLE STATE================================================================================
            IDLE: begin 
                // When cache wants something, start state machine
                if(cache_req && !ready) begin
                    // If write operation, go write data
                    if(cache_rw_enable) begin
                        next_state      <=  WDATA;
                    end
                    // If read operation, go read data
                    else begin
                        next_state      <=  RDATA;
                    end              
                end
                else begin
                    next_state          <=   IDLE;
                end
            end
            
            
        //  DATA READ STATE================================================================================
            RDATA: begin
                // When data has been read, go calculate hash
                if(mem_ready) begin
                    next_state      <=  CHASH;
                end
                else begin
                    next_state      <=  RDATA;
                end                   
            end
            
        //  DATA WRITE STATE============================================================================
            WDATA: begin
                // Go calculate hash after writing data to memory
                if(mem_ready) begin
                    next_state      <=   CHASH;
                end
                else begin
                    next_state      <=   WDATA;
                end
            end 
            
        //  HASH READ STATE=============================================================================
            RHASH: begin
                // Once done reading hash, go check for correctness
                if(mem_ready) begin
                    next_state  <=  VHASH;
                end
                else begin
                    next_state  <=  RHASH;
                end                
            end
            
        //  HASH WRITE STATE============================================================================
            WHASH: begin
                // Return to END once hash has been written
                if(mem_ready) begin
                    next_state  <=   END;
                end
                else begin
                    next_state  <=   WHASH;
                end
            end
                        
            
        //  CALCULATE HASH STATE========================================================================
            CHASH: begin
                // If writing:
                // When done calculating hash, write to memory
                if(rw) begin
                    if(hash_rdy) begin
                        next_state          <=  WHASH;
                    end
                    else begin
                        next_state          <=  CHASH;
                    end
                end
                // If reading:
                // When done calculating hash, read hash from memory
                else begin
                    if(hash_rdy) begin
                        next_state          <=  RHASH;
                    end
                    else begin
                        next_state          <=  CHASH;
                    end
                end
            end

            
        //  HASH VERIFICATION STATE==================================================================
            VHASH: begin
                // When calculated hash is identical to stored hash, go to end
                if(hash_correct) begin
                    next_state  <=   END;
                end
                //When calculated hash differs from stored hash, go to error
                else begin
                    next_state  <=   ERROR;
                end
            end
            
        //  ERROR STATE==========================================================================
            ERROR: begin
                // Just raise interrupt and continue
                next_state              <=  END;
            end
            
        //  END STATE============================================================================
            END: begin
                // Return to IDLE when done
                next_state              <=  IDLE;
            end
            
            default: begin
                // In case something goes very wrong
                next_state              <=  IDLE;
            end
        endcase
    end
    
    
    
    // State descriptions
    // Activities performed per state
    always @ (posedge clock, posedge reset)
    begin
        if(reset) begin
            mem_request                 <=  0;
            mem_rw                      <=  0;
            
            address                     <=  0;
            daddress                    <=  0;
            haddress                    <=  0;

            hash_run                    <=  0;
            hash_din                    <=  0;

            mem_wout                    <=  0;
            wdata                       <=  0;
            rdata                       <=  0;
            rhash                       <=  0;

            
            interrupt_reg               <=  0;
            ready                       <=  0;

            rw                          <=  0;

        end 
        else begin
            case (state)
            // IDLE STATE-------------------------------------------
                IDLE: begin
                    // Sample inputs from cache
                    wdata               <=  cache_wdata;
                    rw                  <=  cache_rw_enable;
                    daddress            <=  cache_address;
                    haddress            <=  {21'b0,1'b1,cache_address[10:0]};
                    
                    // Keep signals in known state
                    mem_request         <=  0;
                    hash_run            <=  0;
                    ready               <=  0;
                end
            
            
            //  DATA READ STATE-------------------------------------
                RDATA: begin
                    // Request data from memory
                    if(!mem_ready) begin
                        mem_request         <=  1;
                        mem_rw              <=  0;
                        address             <=  daddress;
                        rdata               <=  mem_rdata;  
                    end
                    else begin
                        mem_request         <=  0;
                        mem_rw              <=  0;
                        address             <=  daddress;
                        rdata               <=  mem_rdata;  
                    end
                end
                
            //  DATA WRITE STATE-------------------------------------------
                WDATA: begin
                    // Write data to memory
                    if(!mem_ready) begin
                        mem_request         <=  1;
                        mem_rw              <=  1;
                        address             <=  daddress;
                        mem_wout            <=  wdata;
                    end
                    else begin
                        mem_request         <=  0;
                        mem_rw              <=  1;
                        address             <=  daddress;
                        mem_wout            <=  wdata;
                    end
                end
                
            //  HASH READ STATE-------------------------------------
                RHASH: begin
                    // Request hash from memory
                    if(!mem_ready) begin
                        mem_request         <=  1;
                        mem_rw              <=  0;
                        address             <=  haddress;
                        rhash               <=  mem_rdata;  
                    end
                    else begin
                        mem_request         <=  0;
                        mem_rw              <=  0;
                        address             <=  haddress;
                        rhash               <=  mem_rdata;  
                    end
                end

            //  HASH WRITE STATE-------------------------------------------
                WHASH: begin
                    // Write hash to memory
                    if(!mem_ready) begin
                        mem_request         <=  1;
                        mem_rw              <=  1;
                        address             <=  haddress;
                        mem_wout            <=  {hash_dout, 64'h0000000000000000};
                    end
                    else begin
                        mem_request         <=  0;
                        mem_rw              <=  1;
                        address             <=  haddress;
                        mem_wout            <=  {hash_dout, 64'h0000000000000000};
                    end
                end
                
            //  CALCULATE HASH STATE-----------------------------------------------
                CHASH: begin
                    // If writing, hash data from CPU
                    hash_run        <=  1;
                    mem_request     <=  0;
                    if(cache_rw_enable) begin
                        hash_din            <=  wdata;
                        hash_run            <=  1;
                    end
                    // If reading, hash data from memory
                    else begin
                        hash_din            <=  rdata;
                        hash_run            <=  1;
                    end
                end
                                
                
            // VERIFY HASH STATE--------------------------------------------
                VHASH: begin
                
                end
                
            //  ERROR STATE---------------------------------------------
                ERROR: begin
                    //Raises an interrupt when there is a hashing error
                    interrupt_reg       <=  1;
                end

                
            //  END STATE-----------------------------------------------
                END: begin
                    // Resets signals back to idle values
                    hash_run            <=  0;
                    mem_request         <=  0;
                    mem_rw              <=  0;
                    ready               <=  1;
                end
                
                default: begin
                
                end
            endcase
        end
    end
        
        
    // Hashing block
    hash
    hash_sip
        (
            .clock(clock),
            .reset(reset),
            .key(KEY),
            .run(hash_run),
            .din(hash_din),
            .dout(hash_dout),
            .ready(hash_rdy),
            .debug(hash_debug)
        );
    
endmodule
