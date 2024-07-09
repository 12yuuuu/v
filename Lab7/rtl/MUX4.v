module MUX4(
    input sel,
    input reg [7:0] data0_0,
    input reg [7:0] data1_0,
    output reg [7:0] out0
);

    always @(*) begin
        if (sel) begin
            out0 = data1_0;
        end else begin
            out0 = data0_0;
        end
    end

endmodule