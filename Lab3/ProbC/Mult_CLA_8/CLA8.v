`include "FA.v"

module CLA8(A, B, Cin, Sum, Cout);

	input  [7:0] A;
	input  [7:0] B;
	input 	     Cin;
	output [7:0] Sum;
	output       Cout;

	wire [7:0] P;
	wire [7:0] C;

	xor (P[0], A[0], B[0]);
	xor (P[1], A[1], B[1]);
	xor (P[2], A[2], B[2]);
	xor (P[3], A[3], B[3]);
	xor (P[4], A[4], B[4]);
	xor (P[5], A[5], B[5]);
	xor (P[6], A[6], B[6]);
	xor (P[7], A[7], B[7]);

	FA fa0(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(), .Cout(C[0]));
	FA fa1(.A(A[1]), .B(B[1]), .Cin(C[0]), .Sum(), .Cout(C[1]));
	FA fa2(.A(A[2]), .B(B[2]), .Cin(C[1]), .Sum(), .Cout(C[2]));
	FA fa3(.A(A[3]), .B(B[3]), .Cin(C[2]), .Sum(), .Cout(C[3]));
	FA fa4(.A(A[4]), .B(B[4]), .Cin(C[3]), .Sum(), .Cout(C[4]));
	FA fa5(.A(A[5]), .B(B[5]), .Cin(C[4]), .Sum(), .Cout(C[5]));
	FA fa6(.A(A[6]), .B(B[6]), .Cin(C[5]), .Sum(), .Cout(C[6]));
	FA fa7(.A(A[7]), .B(B[7]), .Cin(C[6]), .Sum(), .Cout(C[7]));

	xor (Sum[0], Cin, P[0]);
	xor (Sum[1], C[0], P[1]);
	xor (Sum[2], C[1], P[2]);
	xor (Sum[3], C[2], P[3]);
	xor (Sum[4], C[3], P[4]);
	xor (Sum[5], C[4], P[5]);
	xor (Sum[6], C[5], P[6]);
	xor (Sum[7], C[6], P[7]);

	assign Cout = C[7];
endmodule