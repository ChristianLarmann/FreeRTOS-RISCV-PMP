/*This module performs the PRINCE encryption/decryption function. 
It takes a 128 bit input which is split into blocks of 64 bits to
be encrypted or decrypted dequentially. Both take a single cycle 
to complete, leading to two cycles for the full input. The output
is the concatenated result of the two blocks.*/

module crypto
    #(
        parameter   DATA_WIDTH		=	128
    )
    (
        input       wire                    clock,
        input       wire                    reset,
        input       wire [127:0]            key,
        input       wire                    run,
        input       wire [DATA_WIDTH-1:0]   din,
        input       wire                    enc_dec,
        output      wire [DATA_WIDTH-1:0]   dout,
        output      wire                    ready
    
    );
    
    
        //State machine stuff                          
    reg     [2:0]               state;             
    reg     [2:0]               next_state;        
    localparam                  IDLE    =   2'b00,
                                HALF    =   2'b01,
                                END     =   2'b11;
                                
    wire    [63:0]                          data_in_0;
    wire    [63:0]                          data_in_1;
    wire    [63:0]                          core_din;
    wire    [63:0]                          core_dout;
    reg     [63:0]                          data_out_0;
    reg     [63:0]                          data_out_1;

    


///////////////
    reg                                     rdy;
    reg                                     one_run;
    reg                                     enc_dec_reg;

    
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
                    next_state  <=  HALF;
                end
                else begin
                    next_state  <=  IDLE;
                end
            end
            
            HALF:   begin
                next_state      <=  END;
            end
            
            END:   begin
                next_state      <=  IDLE;
            end
            
            default: begin
                next_state      <=  IDLE;
            end
        endcase
    end
            
            
    always @ (posedge clock, posedge reset)
    begin
        if(reset) begin
            rdy             <=  0;
            one_run         <=  0;
            enc_dec_reg     <=  0;
            data_out_0      <=  0;
            data_out_1      <=  0;
        end 
        else begin
            if(!run) begin
                rdy         <=  0;
                one_run     <=  0;
            end
            else begin
                case (state) 
                    IDLE:   begin
                        enc_dec_reg                                 <=  enc_dec;
                    end
                    
                    HALF:   begin
                        one_run   <=    1;
                        data_out_0                <=  core_dout;
                    end
                    
                    END:   begin
                        rdy <=  1;
                        data_out_1      <=  core_dout;
                    end
                    default:    begin
                    
                    end
                endcase
            end
        end
    end        

   
    assign  data_in_0   =   din[63:0];
    assign  data_in_1   =   din[127:64];
    assign  core_din    =   (state == HALF    ?   data_in_0 : data_in_1);  
    assign  dout        =   {data_out_1, data_out_0};
    assign  ready       =   rdy;
    
    
    prince_top
    prince
        (
            .din(core_din),
            .key(key),
            .dout(core_dout),
            .enc(enc_dec_reg)       
        );

endmodule