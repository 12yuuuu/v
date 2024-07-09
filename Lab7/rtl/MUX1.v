module MUX1(
    input sel,
    input reg [11:0] data0,
    input reg [11:0] data1,
    output reg [11:0] out
);

    always @(*) begin
        if (sel) begin
            out = data1;
        end else begin
            out = data0;
        end
    end

endmodule