module UA_encrypt
    #(
        parameter	ADDRESS_SIZE	=	32,
        parameter	NUMBER_OF_BYTES	=	16,
        parameter	DATA_WIDTH		=	NUMBER_OF_BYTES * 8
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
        
        //Debug output
        output  wire    [7:0]           debug
    );
    
    //Hashing/encryption key
    localparam                  KEY     =   128'h000102030405060708090a0b0c0d0e0f;
    

    
    // Registers and states for state machine
    reg		[3:0]                   state, next_state;
    localparam                      IDLE    =   4'b0000,
                                    READ    =   4'b0001,
                                    DECRYPT =   4'b0010,
                                    WRITE   =   4'b0100,
                                    ENCRYPT =   4'b0101,
                                    END     =   4'b1000;
                
    // Wires and registers for internal signals
    // Data address
    reg     [ADDRESS_SIZE-1:0]      address;
    // Data coming from memory
    reg     [DATA_WIDTH-1:0]        data_in;
    // Data going to memory
    reg     [DATA_WIDTH-1:0]        data_out;


    // Holds request signal to memory
    reg                             mem_request;
    // Holds whether data is read or written to memory. 1 is write.
    reg                             mem_rw;

    
    //  Encryption block signals
    reg                             cry_enc_dec;
    reg     [DATA_WIDTH-1:0]        cry_din;
    wire    [DATA_WIDTH-1:0]        cry_dout;
    wire                            cry_rdy;
    reg                             cry_run;
    

    // Assign output wires    
    assign  cache_rdata     =   ((state == END) ? cry_dout : 0);
    assign  mem_wdata       =   data_out;
    assign  mem_address     =   address;
    assign  mem_req         =   mem_request;
    assign  mem_rw_enable   =   mem_rw;
    assign  cache_ready     =   ((state == END) ? 1 : 0);

    
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
    always @*
    begin
        case (state)		
        //  IDLE STATE================================================================================
            IDLE: begin 
                // When cache wants something, start state machine
                if(cache_req) begin
                    // If write operation, go encrypt first
                    if(cache_rw_enable) begin
                        next_state  =  ENCRYPT;
                    end
                    // If read operation, go read data from memory
                    else begin
                        next_state      =  READ;
                    end              
                end
                // Else remain in idle
                else begin
                    next_state          =   IDLE;
                end
            end
            
            
        //  READ STATE================================================================================
            READ: begin
                // When data has been received, go decrypt
                if(mem_ready) begin 
                    next_state          =  DECRYPT;
                end
            end
            
        //  DECRYPT STATE===========================================================================
            DECRYPT: begin
                // Go straight to end once decryption is complete
                if(cry_rdy) begin
                    next_state      =   END;
                end
            end
            

        //  WRITE STATE============================================================================
            WRITE: begin
                // Go straight to end when done writing data to memory
                if(mem_ready) begin
                    next_state      =   END;
                end
            end 
            
            
        //  ENCRYPT STATE==========================================================================
            ENCRYPT: begin
                // When encryption is done, go to write data to memory
                if(cry_rdy) begin
                    next_state          =   WRITE;
                end
            end
            

        //  END STATE============================================================================
            END: begin
                next_state              =   IDLE;
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
            
            cry_run                     <=  0;
            
            cry_din                     <=  0;
            cry_enc_dec                 <=  0;

            data_out                    <=  0;
            
            data_in                     <=  0;
        end 
        else begin
            case (state)
            //  READ STATE-------------------------------------
                READ: begin
                    // Read encrypted data
                    if(!mem_ready) begin
                        mem_request         <=  1;
                        mem_rw              <=  0;
                        data_in             <=  mem_rdata;  
                        address             <=  cache_address;
                    end
                    // Once the memory is done, set request back to zero
                    else begin
                        mem_request         <=  0;
                    end
                end
                
            //  WRITE STATE-------------------------------------------
                WRITE: begin
                    // Write encrypted data
                    if(!mem_ready) begin
                        mem_request         <=  1;
                        mem_rw              <=  1;
                        address             <=  cache_address;
                        data_out            <=  cry_dout;
                    end
                    // Once the memory is done, set request back to zero
                    else begin
                        mem_request         <=  0;
                    end
                end
                
            //  ENCRYPT STATE--------------------------------------------
                ENCRYPT: begin
                    // Let crypto block read data and start encrypting
                    cry_din             <=  cache_wdata;
                    cry_enc_dec         <=  1;
                    cry_run             <=  1;
                end
                            
            //  DECRYPT STATE-------------------------------------
                DECRYPT: begin 
                    // Let crypto block read data and start decrypting 
                    cry_din             <=  data_in;
                    cry_enc_dec         <=  0;          
                    cry_run             <=  1;
                end

                
            //  END STATE-----------------------------------------------
                END: begin
                    // Resets internal flags back to idle values
                    cry_run             <=  0;
                end

            endcase
        end
    end
        
    
    // Encryption/decryption block
    crypto
    crypto_prince
        (
            .clock(clock),
            .reset(reset),
            .key(KEY),
            .run(cry_run),
            .din(cry_din),
            .enc_dec(cry_enc_dec),
            .dout(cry_dout),
            .ready(cry_rdy)
        );
        
    
endmodule
