module mux_4to1 (
    input  logic [3:0] in0, in1, in2, in3, // Data inputs
    input  logic [1:0] sel,                 // Select input
    output logic [3:0] out                  // Output
);

    always_comb begin : mux_logic
        case (sel)
            2'b00 : out = in0;
            2'b01 : out = in1;
            2'b10 : out = in2;
            //2'b11 : out = in3;
           // default : out = '0;  
                       // Safe default assignment
        endcase
    end

endmodule
