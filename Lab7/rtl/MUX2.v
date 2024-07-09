module MUX2(
    input sel,
    input reg [7:0] data0_0,
    input reg [13:0] data0_1,
    input reg data0_2,
    input reg [7:0] data1_0,
    input reg [13:0] data1_1,
    input reg data1_2,
    output reg [7:0] out0,
    output reg [13:0] out1,
    output reg out2
);

    always @(*) begin
        if (sel) begin
            out0 = data1_0;
            out1 = data1_1;
            out2 = data1_2;
        end else begin
            out0 = data0_0;
            out1 = data0_1;
            out2 = data0_2;
        end
    end

endmodule