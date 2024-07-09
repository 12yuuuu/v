module fixedpoint(
    input [7:0] in1, // integer[7:5], decimal[4:0]
    input [7:0] in2, // integer[7:5], decimal[4:0]
    output reg [7:0] out // integer[7:2], decimal[1:0]
);
    reg [15:0] result; // 8-bit signed integer + 8-bit fractional part

    always @(*) begin
        result = in1 * in2; // Perform fixed-point multiplication
        if (result[7] == 1'b1) begin
            out = result[15:8] + {7'b0,1'b1}; 
        end else begin 
            out = result[15:8];
        end
    end

endmodule
