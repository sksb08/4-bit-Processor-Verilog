module processor (
    input clk,
    input reset,
    input [3:0] A,
    input [3:0] B,
    input [1:0] opcode,
    output reg [3:0] result
);

always @(posedge clk) begin

    if (reset) begin
        result <= 4'b0000;
    end

    else begin
        case (opcode)

            2'b00: result <= A + B;  
            2'b01: result <= A - B;  
            2'b10: result <= A & B;  
            2'b11: result <= A | B; 

            default: result <= 4'b0000;

        endcase
    end

end

endmodule