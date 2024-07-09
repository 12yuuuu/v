module fixedpoint_s(
    input  [7:0] in1, 
    input  [7:0] in2, 
    output reg  [7:0] out 
);
    // signed integer[7:4], decimal[3:0]
    // signed integer[7:4], decimal[3:0]
    // 8 bit signed integer[7:0]

    reg signed [15:0] result, abs_result;
    reg [7:0] temp;     
    // 8-bit signed integer + 8-bit fractional part
    
    always @(*) begin
        result = $signed(in1) * $signed(in2);
        if (result[15] == 1'b1) begin
            abs_result = -$signed(result);
        end else begin
            abs_result = $signed(result);
        end
        if (abs_result[7] == 1'b1) begin
            temp = abs_result[15:8] + {7'b0,1'b1}; 
        end else begin 
            temp = abs_result[15:8];
        end  
        if (result[15] == 1'b1) begin
            out = -$signed(temp);
        end else begin
            out = $signed(temp);
        end 
    end
endmodule