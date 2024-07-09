`include "black_cell.v"
`include "blue_cell.v"
//`include "FA.v"

module PPA8(A, B, Cin, Sum, Cout);
input  [7:0] A, B;
input        Cin;
output [7:0] Sum;
output Cout;

    wire [9:0] p_black, g_black;
    wire [6:0] g_blue;
    wire [7:0] P, G;
    wire [7:0] C;

    xor (P[0], A[0], B[0]);
    and (G[0], A[0], B[0]);
    xor (P[1], A[1], B[1]);
    and (G[1], A[1], B[1]);
    xor (P[2], A[2], B[2]);
    and (G[2], A[2], B[2]);
    xor (P[3], A[3], B[3]);
    and (G[3], A[3], B[3]);
    xor (P[4], A[4], B[4]);
    and (G[4], A[4], B[4]);
    xor (P[5], A[5], B[5]);
    and (G[5], A[5], B[5]);
    xor (P[6], A[6], B[6]);
    and (G[6], A[6], B[6]);
    xor (P[7], A[7], B[7]);
    and (G[7], A[7], B[7]);

    black_cell black0 (.p1(P[1]), .p2(P[2]), .g1(G[1]), .g2(G[2]), .G(g_black[0]), .P(p_black[0]));
    black_cell black1 (.p1(P[2]), .p2(P[3]), .g1(G[2]), .g2(G[3]), .G(g_black[1]), .P(p_black[1]));
    black_cell black2 (.p1(P[3]), .p2(P[4]), .g1(G[3]), .g2(G[4]), .G(g_black[2]), .P(p_black[2]));
    black_cell black3 (.p1(P[4]), .p2(P[5]), .g1(G[4]), .g2(G[5]), .G(g_black[3]), .P(p_black[3]));
    black_cell black4 (.p1(P[5]), .p2(P[6]), .g1(G[5]), .g2(G[6]), .G(g_black[4]), .P(p_black[4]));
    black_cell black5 (.p1(P[6]), .p2(P[7]), .g1(G[6]), .g2(G[7]), .G(g_black[5]), .P(p_black[5]));

    black_cell black6 (.p1(p_black[0]), .p2(p_black[2]), .g1(g_black[0]), .g2(g_black[2]), .G(g_black[6]), .P(p_black[6]));
    black_cell black7 (.p1(p_black[1]), .p2(p_black[3]), .g1(g_black[1]), .g2(g_black[3]), .G(g_black[7]), .P(p_black[7]));
    black_cell black8 (.p1(p_black[2]), .p2(p_black[4]), .g1(g_black[2]), .g2(g_black[4]), .G(g_black[8]), .P(p_black[8]));
    black_cell black9 (.p1(p_black[3]), .p2(p_black[5]), .g1(g_black[3]), .g2(g_black[5]), .G(g_black[9]), .P(p_black[9]));

    blue_cell blue0 (.p2(P[1]), .g1(G[0]), .g2(G[1]), .G(g_blue[0]));
    blue_cell blue1 (.p2(p_black[0]), .g1(G[0]), .g2(g_black[0]), .G(g_blue[1]));
    blue_cell blue2 (.p2(p_black[1]), .g1(g_blue[0]), .g2(g_black[1]), .G(g_blue[2]));
    blue_cell blue3 (.p2(p_black[6]), .g1(G[0]), .g2(g_black[6]), .G(g_blue[3]));
    blue_cell blue4 (.p2(p_black[7]), .g1(g_blue[0]), .g2(g_black[7]), .G(g_blue[4]));
    blue_cell blue5 (.p2(p_black[8]), .g1(g_blue[1]), .g2(g_black[8]), .G(g_blue[5]));
    blue_cell blue6 (.p2(p_black[9]), .g1(g_blue[2]), .g2(g_black[9]), .G(g_blue[6]));

    and (C[0], G[0], 1'b1);
    and (C[1], g_blue[0], 1'b1);
    and (C[2], g_blue[1], 1'b1);
    and (C[3], g_blue[2], 1'b1);
    and (C[4], g_blue[3], 1'b1);
    and (C[5], g_blue[4], 1'b1);
    and (C[6], g_blue[5], 1'b1);
    and (C[7], g_blue[6], 1'b1);

    xor (Sum[0], Cin, P[0]);
	xor (Sum[1], C[0], P[1]);
	xor (Sum[2], C[1], P[2]);
	xor (Sum[3], C[2], P[3]);
	xor (Sum[4], C[3], P[4]);
	xor (Sum[5], C[4], P[5]);
	xor (Sum[6], C[5], P[6]);
	xor (Sum[7], C[6], P[7]);

    and (Cout, C[7], 1'b1);
endmodule