//Import 8-bit CLA module
`include "CLA8.v"

//Define 32-bit CLA module
module CLA32(
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] sum,
    output overflow);

// Input: two 32-bit binary numbers
// Output: 32-bit result and overflow flag

// Declare the 4-bit register to store the carry signal
wire [3:0] carry_wire;

// Initialize the lowest carry bit to 0
and (carry_wire[0], 1'b0, 1'b0);

// Four 8-bit CLA modules implement 32-bit addition
CLA8 fa0(.A(a[7:0]), .B(b[7:0]), .Cin(carry_wire[0]), .Sum(sum[7:0]), .Cout(carry_wire[1]));
CLA8 fa1(.A(a[15:8]), .B(b[15:8]), .Cin(carry_wire[1]), .Sum(sum[15:8]), .Cout(carry_wire[2]));
CLA8 fa2(.A(a[23:16]), .B(b[23:16]), .Cin(carry_wire[2]), .Sum(sum[23:16]), .Cout(carry_wire[3]));
CLA8 fa3(.A(a[31:24]), .B(b[31:24]), .Cin(carry_wire[3]), .Sum(sum[31:24]), .Cout());

// Determine overflow
// If a and b are both positive numbers and the result is a negative number
// or a and b are both negative numbers and the result is a positive number, overflow occurs
assign overflow = (~a[31] & ~b[31] & sum[31]) | (a[31] & b[31] & ~sum[31]);

endmodule