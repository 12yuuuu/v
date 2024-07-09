`include "RCA4.v"

module RCA16(
    input  [15:0] a,
    input  [15:0] b,
    output [15:0] sum,
    output overflow
);

wire [4:0] carry_wire;

RCA4 fa0(.a(a[3:0]), .b(b[3:0]), .cin(1'b0), .sum(sum[3:0]), .cout(carry_wire[0]));
RCA4 fa1(.a(a[7:4]), .b(b[7:4]), .cin(carry_wire[0]), .sum(sum[7:4]), .cout(carry_wire[1]));
RCA4 fa2(.a(a[11:8]), .b(b[11:8]), .cin(carry_wire[1]), .sum(sum[11:8]), .cout(carry_wire[2]));
RCA4 fa3(.a(a[15:12]), .b(b[15:12]), .cin(carry_wire[2]), .sum(sum[15:12]), .cout(carry_wire[3]));

assign overflow = (~a[15] & ~b[15] & sum[15]) | (a[15] & b[15] & ~sum[15]);

endmodule