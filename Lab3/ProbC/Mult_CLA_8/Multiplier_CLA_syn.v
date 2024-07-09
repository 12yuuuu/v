/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Mar 16 17:25:10 2024
/////////////////////////////////////////////////////////////


module FA_0 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  BUFFD1BWP16P90LVT U1 ( .I(B), .Z(n2) );
  CKND1BWP16P90LVT U2 ( .I(Cin), .ZN(n5) );
  NR2D1BWP16P90LVT U3 ( .A1(n6), .A2(n5), .ZN(n4) );
  XOR2D1BWP16P90 U4 ( .A1(n2), .A2(n8), .Z(n6) );
  CKND2BWP16P90LVT U5 ( .I(B), .ZN(n7) );
  NR2D1BWP16P90LVT U6 ( .A1(n8), .A2(n7), .ZN(n3) );
  OR2D2BWP16P90LVT U7 ( .A1(n3), .A2(n4), .Z(Cout) );
  CKND2BWP16P90LVT U8 ( .I(A), .ZN(n8) );
  XOR2D1BWP16P90LVT U9 ( .A1(Cin), .A2(n1), .Z(Sum) );
  CKND1BWP16P90LVT U10 ( .I(n6), .ZN(n1) );
endmodule


module FA_49 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3, n4, n5, n6;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(n6), .Z(Sum) );
  INVD1BWP16P90 U2 ( .I(Cin), .ZN(n4) );
  CKND1BWP16P90LVT U3 ( .I(n5), .ZN(n6) );
  CKND1BWP16P90LVT U4 ( .I(B), .ZN(n2) );
  INVD1BWP16P90 U5 ( .I(A), .ZN(n3) );
  XOR2D1BWP16P90LVT U6 ( .A1(n3), .A2(B), .Z(n5) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(Cout) );
endmodule


module FA_50 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  OA22D2BWP16P90LVT U1 ( .A1(Cin), .A2(n2), .B1(n2), .B2(n3), .Z(Cout) );
  BUFFD1BWP16P90LVT U2 ( .I(Cin), .Z(n1) );
  AN2D1BWP16P90LVT U3 ( .A1(B), .A2(A), .Z(n2) );
  XOR2D1BWP16P90LVT U4 ( .A1(A), .A2(B), .Z(n3) );
  XOR2D1BWP16P90LVT U5 ( .A1(n1), .A2(n3), .Z(Sum) );
endmodule


module FA_51 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(n2), .Z(Sum) );
  AN2D1BWP16P90 U2 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n2) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_52 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(n2), .Z(Sum) );
  AN2D1BWP16P90 U2 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n2) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_53 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  OA22D2BWP16P90LVT U1 ( .A1(Cin), .A2(n2), .B1(n2), .B2(n3), .Z(Cout) );
  BUFFD1BWP16P90LVT U2 ( .I(Cin), .Z(n1) );
  AN2D1BWP16P90 U3 ( .A1(B), .A2(A), .Z(n2) );
  XOR2D1BWP16P90LVT U4 ( .A1(A), .A2(B), .Z(n3) );
  XOR2D1BWP16P90 U5 ( .A1(n1), .A2(n3), .Z(Sum) );
endmodule


module FA_54 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  BUFFD1BWP16P90LVT U1 ( .I(Cin), .Z(n1) );
  AN2D1BWP16P90 U2 ( .A1(B), .A2(A), .Z(n3) );
  XOR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n2) );
  XOR2D1BWP16P90 U4 ( .A1(n1), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n3), .B1(n3), .B2(n2), .Z(Cout) );
endmodule


module FA_55 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(n5), .Z(n1) );
  NR2D4BWP16P90LVT U2 ( .A1(n2), .A2(n3), .ZN(Cout) );
  CKNR2D4BWP16P90LVT U3 ( .A1(n5), .A2(n4), .ZN(n3) );
  AN2D2BWP16P90LVT U4 ( .A1(B), .A2(A), .Z(n4) );
  XOR2D4BWP16P90LVT U5 ( .A1(A), .A2(B), .Z(n5) );
  NR2D2BWP16P90LVT U6 ( .A1(Cin), .A2(n4), .ZN(n2) );
  XOR2D1BWP16P90 U7 ( .A1(Cin), .A2(n1), .Z(Sum) );
endmodule


module CLA8_0 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5;
  wire   [6:0] C;

  FA_0 fa0 ( .A(A[0]), .B(B[0]), .Cin(Cin), .Cout(C[0]) );
  FA_55 fa1 ( .A(A[1]), .B(B[1]), .Cin(C[0]), .Cout(C[1]) );
  FA_54 fa2 ( .A(A[2]), .B(B[2]), .Cin(C[1]), .Cout(C[2]) );
  FA_53 fa3 ( .A(A[3]), .B(B[3]), .Cin(C[2]), .Cout(C[3]) );
  FA_52 fa4 ( .A(A[4]), .B(B[4]), .Cin(C[3]), .Cout(C[4]) );
  FA_51 fa5 ( .A(A[5]), .B(B[5]), .Cin(C[4]), .Cout(C[5]) );
  FA_50 fa6 ( .A(A[6]), .B(B[6]), .Cin(C[5]), .Cout(C[6]) );
  FA_49 fa7 ( .A(A[7]), .B(B[7]), .Cin(n1), .Cout(Cout) );
  BUFFD2BWP16P90 U1 ( .I(C[6]), .Z(n1) );
  XNR2D2BWP16P90LVT U2 ( .A1(C[3]), .A2(n2), .ZN(Sum[4]) );
  BUFFD1BWP16P90LVT U3 ( .I(B[0]), .Z(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(A[4]), .A2(B[4]), .ZN(n2) );
  XOR2D1BWP16P90LVT U5 ( .A1(A[3]), .A2(B[3]), .Z(n3) );
  XOR2D4BWP16P90LVT U6 ( .A1(n3), .A2(C[2]), .Z(Sum[3]) );
  XOR3D1BWP16P90LVT U7 ( .A1(B[1]), .A2(A[1]), .A3(C[0]), .Z(Sum[1]) );
  XOR2D4BWP16P90LVT U8 ( .A1(n5), .A2(C[1]), .Z(Sum[2]) );
  XOR3D4BWP16P90LVT U9 ( .A1(B[7]), .A2(A[7]), .A3(C[6]), .Z(Sum[7]) );
  XOR3D4BWP16P90LVT U10 ( .A1(B[6]), .A2(A[6]), .A3(C[5]), .Z(Sum[6]) );
  XOR3D4BWP16P90LVT U11 ( .A1(B[5]), .A2(A[5]), .A3(C[4]), .Z(Sum[5]) );
  XOR2D1BWP16P90LVT U12 ( .A1(A[2]), .A2(B[2]), .Z(n5) );
  XOR3D1BWP16P90 U13 ( .A1(Cin), .A2(n4), .A3(A[0]), .Z(Sum[0]) );
endmodule


module FA_1 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90LVT U1 ( .I(Cin), .ZN(n3) );
  INVD1BWP16P90 U2 ( .I(A), .ZN(n2) );
  INVD1BWP16P90 U3 ( .I(n4), .ZN(n5) );
  CKND1BWP16P90LVT U4 ( .I(B), .ZN(n1) );
  XOR2D1BWP16P90 U5 ( .A1(Cin), .A2(n5), .Z(Sum) );
  XOR2D1BWP16P90LVT U6 ( .A1(n2), .A2(B), .Z(n4) );
  OAI22D1BWP16P90LVT U7 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(Cout) );
endmodule


module FA_2 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(n2), .Z(Sum) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  AN2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n1) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n2), .B2(n1), .Z(Cout) );
endmodule


module FA_3 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D2BWP16P90 U1 ( .A1(Cin), .A2(n1), .Z(Sum) );
  XOR2D2BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n1) );
  AN2D1BWP16P90LVT U3 ( .A1(B), .A2(A), .Z(n2) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n2), .B1(n2), .B2(n1), .Z(Cout) );
endmodule


module FA_4 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D8BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n1) );
  AN2D2BWP16P90LVT U2 ( .A1(B), .A2(A), .Z(n2) );
  XOR2D1BWP16P90 U3 ( .A1(n1), .A2(Cin), .Z(Sum) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n2), .B1(n2), .B2(n1), .Z(Cout) );
endmodule


module FA_5 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4;

  NR2D2BWP16P90LVT U1 ( .A1(n1), .A2(n2), .ZN(Cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n4) );
  NR2D1BWP16P90LVT U3 ( .A1(Cin), .A2(n3), .ZN(n1) );
  NR2D1BWP16P90LVT U4 ( .A1(n3), .A2(n4), .ZN(n2) );
  AN2D1BWP16P90LVT U5 ( .A1(B), .A2(A), .Z(n3) );
  XOR2D1BWP16P90LVT U6 ( .A1(Cin), .A2(n4), .Z(Sum) );
endmodule


module FA_6 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  XOR2D1BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n2) );
  OA22D1BWP16P90LVT U2 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(n3), .A2(n2), .Z(Sum) );
  BUFFD1BWP16P90 U4 ( .I(Cin), .Z(n3) );
  AN2D1BWP16P90LVT U5 ( .A1(B), .A2(A), .Z(n1) );
endmodule


module FA_7 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  OA22D1BWP16P90LVT U3 ( .A1(n1), .A2(n2), .B1(Cin), .B2(n1), .Z(Cout) );
  XOR2D1BWP16P90LVT U4 ( .A1(Cin), .A2(n2), .Z(Sum) );
endmodule


module FA_8 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3, n4, n5, n6;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(n6), .Z(Sum) );
  CKND1BWP16P90LVT U2 ( .I(A), .ZN(n3) );
  CKND1BWP16P90LVT U3 ( .I(n5), .ZN(n6) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n4) );
  CKND1BWP16P90LVT U5 ( .I(B), .ZN(n2) );
  XOR2D1BWP16P90LVT U6 ( .A1(n3), .A2(B), .Z(n5) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(Cout) );
endmodule


module CLA8_1 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3;
  wire   [6:0] C;

  FA_8 fa0 ( .A(A[0]), .B(B[0]), .Cin(Cin), .Cout(C[0]) );
  FA_7 fa1 ( .A(A[1]), .B(B[1]), .Cin(C[0]), .Cout(C[1]) );
  FA_6 fa2 ( .A(A[2]), .B(B[2]), .Cin(C[1]), .Cout(C[2]) );
  FA_5 fa3 ( .A(A[3]), .B(B[3]), .Cin(C[2]), .Cout(C[3]) );
  FA_4 fa4 ( .A(A[4]), .B(B[4]), .Cin(C[3]), .Cout(C[4]) );
  FA_3 fa5 ( .A(A[5]), .B(B[5]), .Cin(C[4]), .Cout(C[5]) );
  FA_2 fa6 ( .A(A[6]), .B(B[6]), .Cin(C[5]), .Cout(C[6]) );
  FA_1 fa7 ( .A(A[7]), .B(B[7]), .Cin(C[6]), .Cout(Cout) );
  XOR3D2BWP16P90LVT U1 ( .A1(B[6]), .A2(A[6]), .A3(C[5]), .Z(Sum[6]) );
  XOR2D1BWP16P90LVT U2 ( .A1(B[7]), .A2(A[7]), .Z(n1) );
  XOR2D1BWP16P90LVT U3 ( .A1(C[6]), .A2(n1), .Z(Sum[7]) );
  XNR3D1BWP16P90 U4 ( .A1(B[5]), .A2(n2), .A3(C[4]), .ZN(Sum[5]) );
  XOR3D1BWP16P90 U5 ( .A1(A[4]), .A2(B[4]), .A3(C[3]), .Z(Sum[4]) );
  INVD1BWP16P90 U6 ( .I(A[5]), .ZN(n2) );
  INVD1BWP16P90 U7 ( .I(A[2]), .ZN(n3) );
  XNR3D2BWP16P90 U8 ( .A1(B[2]), .A2(n3), .A3(C[1]), .ZN(Sum[2]) );
  XOR3D1BWP16P90 U9 ( .A1(Cin), .A2(B[0]), .A3(A[0]), .Z(Sum[0]) );
  XOR3D2BWP16P90 U10 ( .A1(B[3]), .A2(A[3]), .A3(C[2]), .Z(Sum[3]) );
  XOR3D1BWP20P90LVT U11 ( .A1(C[0]), .A2(B[1]), .A3(A[1]), .Z(Sum[1]) );
endmodule


module FA_9 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(A), .ZN(n2) );
  INVD1BWP16P90 U2 ( .I(n4), .ZN(n5) );
  CKND1BWP16P90LVT U3 ( .I(B), .ZN(n1) );
  XOR2D1BWP16P90 U4 ( .A1(Cin), .A2(n5), .Z(Sum) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n3) );
  XOR2D1BWP16P90LVT U6 ( .A1(n2), .A2(B), .Z(n4) );
  OAI22D1BWP16P90LVT U7 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(Cout) );
endmodule


module FA_10 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n3) );
  AN2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n2) );
  XOR2D1BWP16P90 U4 ( .A1(n1), .A2(n3), .Z(Sum) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n2), .B1(n3), .B2(n2), .Z(Cout) );
endmodule


module FA_11 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D1BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n2) );
  AN2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n1) );
  XOR2D1BWP16P90LVT U3 ( .A1(Cin), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_12 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  NR2D2BWP16P90LVT U1 ( .A1(n3), .A2(n5), .ZN(n2) );
  XOR2D2BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n5) );
  BUFFD1BWP16P90LVT U3 ( .I(n5), .Z(n4) );
  NR2D4BWP16P90LVT U4 ( .A1(n1), .A2(n2), .ZN(Cout) );
  NR2D2BWP16P90LVT U5 ( .A1(Cin), .A2(n3), .ZN(n1) );
  AN2D1BWP16P90LVT U6 ( .A1(B), .A2(A), .Z(n3) );
  XOR2D1BWP16P90 U7 ( .A1(Cin), .A2(n4), .Z(Sum) );
endmodule


module FA_13 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(n2), .Z(Sum) );
  AN2D1BWP16P90LVT U2 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n2) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_14 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4;

  XOR2D1BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n4) );
  NR2D2BWP16P90LVT U2 ( .A1(Cin), .A2(n3), .ZN(n1) );
  NR2D4BWP16P90LVT U3 ( .A1(n1), .A2(n2), .ZN(Cout) );
  NR2D2BWP16P90LVT U4 ( .A1(n3), .A2(n4), .ZN(n2) );
  AN2D2BWP16P90LVT U5 ( .A1(B), .A2(A), .Z(n3) );
  XOR2D1BWP16P90 U6 ( .A1(Cin), .A2(n4), .Z(Sum) );
endmodule


module FA_15 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  OA22D2BWP16P90LVT U3 ( .A1(n1), .A2(n2), .B1(Cin), .B2(n1), .Z(Cout) );
  XOR2D1BWP16P90LVT U4 ( .A1(Cin), .A2(n2), .Z(Sum) );
endmodule


module FA_16 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3, n4, n5, n6;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(n6), .Z(Sum) );
  INVD1BWP16P90LVT U2 ( .I(A), .ZN(n3) );
  CKND1BWP16P90LVT U3 ( .I(n5), .ZN(n6) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n4) );
  CKND1BWP16P90LVT U5 ( .I(B), .ZN(n2) );
  XOR2D1BWP16P90LVT U6 ( .A1(n3), .A2(B), .Z(n5) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(Cout) );
endmodule


module CLA8_2 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4;
  wire   [6:0] C;

  FA_16 fa0 ( .A(A[0]), .B(B[0]), .Cin(Cin), .Cout(C[0]) );
  FA_15 fa1 ( .A(A[1]), .B(B[1]), .Cin(C[0]), .Cout(C[1]) );
  FA_14 fa2 ( .A(A[2]), .B(B[2]), .Cin(C[1]), .Cout(C[2]) );
  FA_13 fa3 ( .A(A[3]), .B(B[3]), .Cin(C[2]), .Cout(C[3]) );
  FA_12 fa4 ( .A(A[4]), .B(B[4]), .Cin(C[3]), .Cout(C[4]) );
  FA_11 fa5 ( .A(A[5]), .B(B[5]), .Cin(C[4]), .Cout(C[5]) );
  FA_10 fa6 ( .A(A[6]), .B(B[6]), .Cin(C[5]), .Cout(C[6]) );
  FA_9 fa7 ( .A(A[7]), .B(B[7]), .Cin(n1), .Cout(Cout) );
  INVD2BWP16P90LVT U1 ( .I(A[5]), .ZN(n4) );
  XNR3D4BWP16P90LVT U2 ( .A1(B[2]), .A2(n2), .A3(C[1]), .ZN(Sum[2]) );
  XOR3D4BWP16P90LVT U3 ( .A1(A[4]), .A2(B[4]), .A3(C[3]), .Z(Sum[4]) );
  CKND1BWP16P90LVT U4 ( .I(A[2]), .ZN(n2) );
  BUFFD1BWP16P90LVT U5 ( .I(C[6]), .Z(n1) );
  XOR3D4BWP16P90LVT U6 ( .A1(B[3]), .A2(A[3]), .A3(C[2]), .Z(Sum[3]) );
  XNR3D4BWP16P90LVT U7 ( .A1(B[5]), .A2(n4), .A3(C[4]), .ZN(Sum[5]) );
  XOR3D4BWP16P90LVT U8 ( .A1(B[6]), .A2(A[6]), .A3(C[5]), .Z(Sum[6]) );
  XNR3D1BWP16P90LVT U9 ( .A1(B[1]), .A2(n3), .A3(C[0]), .ZN(Sum[1]) );
  XOR3D1BWP16P90 U10 ( .A1(Cin), .A2(B[0]), .A3(A[0]), .Z(Sum[0]) );
  INVD1BWP16P90LVT U11 ( .I(A[1]), .ZN(n3) );
  XOR3D4BWP16P90LVT U12 ( .A1(B[7]), .A2(A[7]), .A3(C[6]), .Z(Sum[7]) );
endmodule


module FA_17 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(A), .ZN(n2) );
  INVD1BWP16P90 U2 ( .I(n4), .ZN(n5) );
  CKND1BWP16P90LVT U3 ( .I(B), .ZN(n1) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n3) );
  XOR2D1BWP16P90 U5 ( .A1(Cin), .A2(n5), .Z(Sum) );
  XOR2D1BWP16P90LVT U6 ( .A1(n2), .A2(B), .Z(n4) );
  OAI22D1BWP16P90LVT U7 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(Cout) );
endmodule


module FA_18 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n2), .B2(n1), .Z(Cout) );
endmodule


module FA_19 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4;

  XOR2D2BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n4) );
  AN2D2BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n3) );
  NR2D2BWP16P90LVT U3 ( .A1(n3), .A2(n4), .ZN(n2) );
  NR2D2BWP16P90LVT U4 ( .A1(Cin), .A2(n3), .ZN(n1) );
  NR2D4BWP16P90LVT U5 ( .A1(n2), .A2(n1), .ZN(Cout) );
  XOR2D1BWP16P90 U6 ( .A1(Cin), .A2(n4), .Z(Sum) );
endmodule


module FA_20 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n3) );
  AN2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n2) );
  XOR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n3), .Z(Sum) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n2), .B1(n3), .B2(n2), .Z(Cout) );
endmodule


module FA_21 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D2BWP16P90 U1 ( .A1(Cin), .A2(n2), .Z(Sum) );
  XOR2D2BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  AN2D1BWP16P90LVT U3 ( .A1(B), .A2(A), .Z(n1) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_22 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D1BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n2) );
  XOR2D1BWP16P90LVT U2 ( .A1(Cin), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U3 ( .A1(Cin), .A2(n1), .B1(n2), .B2(n1), .Z(Cout) );
  AN2D1BWP16P90LVT U4 ( .A1(B), .A2(A), .Z(n1) );
endmodule


module FA_23 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  OA22D2BWP16P90LVT U3 ( .A1(n1), .A2(n2), .B1(Cin), .B2(n1), .Z(Cout) );
  XOR2D1BWP16P90LVT U4 ( .A1(Cin), .A2(n2), .Z(Sum) );
endmodule


module FA_24 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3, n4, n5, n6;

  INVD1BWP16P90LVT U1 ( .I(A), .ZN(n3) );
  XOR2D1BWP16P90LVT U2 ( .A1(Cin), .A2(n6), .Z(Sum) );
  CKND1BWP16P90LVT U3 ( .I(n5), .ZN(n6) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n4) );
  CKND1BWP16P90LVT U5 ( .I(B), .ZN(n2) );
  XOR2D1BWP16P90LVT U6 ( .A1(n3), .A2(B), .Z(n5) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(Cout) );
endmodule


module CLA8_3 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4;
  wire   [6:0] C;

  FA_24 fa0 ( .A(A[0]), .B(B[0]), .Cin(Cin), .Cout(C[0]) );
  FA_23 fa1 ( .A(A[1]), .B(B[1]), .Cin(C[0]), .Cout(C[1]) );
  FA_22 fa2 ( .A(A[2]), .B(B[2]), .Cin(C[1]), .Cout(C[2]) );
  FA_21 fa3 ( .A(A[3]), .B(B[3]), .Cin(C[2]), .Cout(C[3]) );
  FA_20 fa4 ( .A(A[4]), .B(B[4]), .Cin(C[3]), .Cout(C[4]) );
  FA_19 fa5 ( .A(A[5]), .B(B[5]), .Cin(C[4]), .Cout(C[5]) );
  FA_18 fa6 ( .A(A[6]), .B(B[6]), .Cin(C[5]), .Cout(C[6]) );
  FA_17 fa7 ( .A(A[7]), .B(B[7]), .Cin(n1), .Cout(Cout) );
  XOR2D2BWP16P90LVT U1 ( .A1(n4), .A2(C[1]), .Z(Sum[2]) );
  XNR2D2BWP16P90LVT U2 ( .A1(n2), .A2(C[2]), .ZN(Sum[3]) );
  XOR2D1BWP16P90LVT U3 ( .A1(n3), .A2(A[3]), .Z(n2) );
  CKND1BWP16P90LVT U4 ( .I(B[3]), .ZN(n3) );
  BUFFD1BWP16P90LVT U5 ( .I(C[6]), .Z(n1) );
  XOR3D1BWP16P90LVT U6 ( .A1(A[1]), .A2(B[1]), .A3(C[0]), .Z(Sum[1]) );
  XOR3D4BWP16P90LVT U7 ( .A1(B[6]), .A2(A[6]), .A3(C[5]), .Z(Sum[6]) );
  XOR2D1BWP16P90LVT U8 ( .A1(B[2]), .A2(A[2]), .Z(n4) );
  XOR3D4BWP16P90LVT U9 ( .A1(B[4]), .A2(A[4]), .A3(C[3]), .Z(Sum[4]) );
  XOR3D2BWP16P90 U10 ( .A1(Cin), .A2(B[0]), .A3(A[0]), .Z(Sum[0]) );
  XOR3D4BWP16P90LVT U11 ( .A1(B[5]), .A2(A[5]), .A3(C[4]), .Z(Sum[5]) );
  XOR3D4BWP16P90LVT U12 ( .A1(B[7]), .A2(A[7]), .A3(C[6]), .Z(Sum[7]) );
endmodule


module FA_25 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(A), .ZN(n2) );
  INVD1BWP16P90 U2 ( .I(n4), .ZN(n5) );
  CKND1BWP16P90LVT U3 ( .I(B), .ZN(n1) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n3) );
  XOR2D1BWP16P90 U5 ( .A1(Cin), .A2(n5), .Z(Sum) );
  XOR2D1BWP16P90LVT U6 ( .A1(n2), .A2(B), .Z(n4) );
  OAI22D1BWP16P90LVT U7 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(Cout) );
endmodule


module FA_26 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  XOR2D1BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n2) );
  BUFFD1BWP16P90LVT U2 ( .I(Cin), .Z(n3) );
  XOR2D1BWP16P90LVT U3 ( .A1(n3), .A2(n2), .Z(Sum) );
  AN2D1BWP16P90LVT U4 ( .A1(A), .A2(B), .Z(n1) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_27 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D1BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n2) );
  AN2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n1) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_28 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n3) );
  XOR2D2BWP16P90 U2 ( .A1(n3), .A2(n5), .Z(Sum) );
  XOR2D4BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n5) );
  NR2D2BWP16P90LVT U4 ( .A1(n5), .A2(n4), .ZN(n2) );
  CKNR2D2BWP16P90LVT U5 ( .A1(Cin), .A2(n4), .ZN(n1) );
  CKNR2D4BWP16P90LVT U6 ( .A1(n1), .A2(n2), .ZN(Cout) );
  AN2D1BWP16P90LVT U7 ( .A1(A), .A2(B), .Z(n4) );
endmodule


module FA_29 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n3) );
  XOR2D2BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  AN2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n1) );
  XOR2D1BWP16P90LVT U4 ( .A1(n3), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_30 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D2BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n2) );
  AN2D1BWP16P90LVT U2 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90 U3 ( .A1(Cin), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_31 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  OA22D2BWP16P90LVT U1 ( .A1(n1), .A2(n2), .B1(Cin), .B2(n1), .Z(Cout) );
  XOR2D1BWP16P90 U2 ( .A1(Cin), .A2(n2), .Z(Sum) );
  AN2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n1) );
  XOR2D1BWP16P90LVT U4 ( .A1(A), .A2(B), .Z(n2) );
endmodule


module FA_32 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3, n4, n5, n6;

  CKND2BWP16P90LVT U1 ( .I(A), .ZN(n3) );
  XOR2D1BWP16P90LVT U2 ( .A1(Cin), .A2(n6), .Z(Sum) );
  CKND1BWP16P90LVT U3 ( .I(n5), .ZN(n6) );
  INVD1BWP16P90 U4 ( .I(Cin), .ZN(n4) );
  CKND1BWP16P90LVT U5 ( .I(B), .ZN(n2) );
  XOR2D1BWP16P90LVT U6 ( .A1(n3), .A2(B), .Z(n5) );
  OAI22D1BWP16P90LVT U7 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(Cout) );
endmodule


module CLA8_4 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [6:0] C;

  FA_32 fa0 ( .A(A[0]), .B(B[0]), .Cin(Cin), .Cout(C[0]) );
  FA_31 fa1 ( .A(A[1]), .B(B[1]), .Cin(C[0]), .Cout(C[1]) );
  FA_30 fa2 ( .A(A[2]), .B(B[2]), .Cin(C[1]), .Cout(C[2]) );
  FA_29 fa3 ( .A(A[3]), .B(B[3]), .Cin(C[2]), .Cout(C[3]) );
  FA_28 fa4 ( .A(A[4]), .B(B[4]), .Cin(C[3]), .Cout(C[4]) );
  FA_27 fa5 ( .A(A[5]), .B(B[5]), .Cin(C[4]), .Cout(C[5]) );
  FA_26 fa6 ( .A(A[6]), .B(B[6]), .Cin(C[5]), .Cout(C[6]) );
  FA_25 fa7 ( .A(A[7]), .B(B[7]), .Cin(n1), .Cout(Cout) );
  XOR2D4BWP16P90LVT U1 ( .A1(B[6]), .A2(A[6]), .Z(n10) );
  ND2D2BWP16P90LVT U2 ( .A1(n2), .A2(C[5]), .ZN(n5) );
  ND2D2BWP16P90LVT U3 ( .A1(n5), .A2(n4), .ZN(Sum[6]) );
  INVD1BWP16P90LVT U4 ( .I(n11), .ZN(n6) );
  ND2D1BWP16P90LVT U5 ( .A1(n11), .A2(n7), .ZN(n8) );
  INVD1BWP16P90LVT U6 ( .I(C[1]), .ZN(n7) );
  XNR2D1BWP16P90LVT U7 ( .A1(n12), .A2(B[2]), .ZN(n11) );
  CKND1BWP16P90LVT U8 ( .I(C[5]), .ZN(n3) );
  ND2D1BWP16P90LVT U9 ( .A1(n10), .A2(n3), .ZN(n4) );
  CKND1BWP16P90LVT U10 ( .I(n10), .ZN(n2) );
  BUFFD1BWP16P90LVT U11 ( .I(C[6]), .Z(n1) );
  INVD1BWP16P90LVT U12 ( .I(A[1]), .ZN(n13) );
  ND2D1BWP16P90LVT U13 ( .A1(n6), .A2(C[1]), .ZN(n9) );
  XOR3D2BWP16P90 U14 ( .A1(Cin), .A2(B[0]), .A3(A[0]), .Z(Sum[0]) );
  CKND2BWP16P90LVT U15 ( .I(A[2]), .ZN(n12) );
  XOR3D4BWP16P90LVT U16 ( .A1(B[3]), .A2(A[3]), .A3(C[2]), .Z(Sum[3]) );
  ND2D2BWP16P90LVT U17 ( .A1(n8), .A2(n9), .ZN(Sum[2]) );
  XOR3D4BWP16P90LVT U18 ( .A1(B[5]), .A2(A[5]), .A3(C[4]), .Z(Sum[5]) );
  XNR3D2BWP16P90LVT U19 ( .A1(B[1]), .A2(n13), .A3(C[0]), .ZN(Sum[1]) );
  XOR3D4BWP16P90LVT U20 ( .A1(B[4]), .A2(A[4]), .A3(C[3]), .Z(Sum[4]) );
  XOR3D4BWP16P90LVT U21 ( .A1(B[7]), .A2(A[7]), .A3(C[6]), .Z(Sum[7]) );
endmodule


module FA_33 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(A), .ZN(n2) );
  INVD1BWP16P90 U2 ( .I(n4), .ZN(n5) );
  CKND1BWP16P90LVT U3 ( .I(B), .ZN(n1) );
  XOR2D1BWP16P90 U4 ( .A1(Cin), .A2(n5), .Z(Sum) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n3) );
  XOR2D1BWP16P90LVT U6 ( .A1(n2), .A2(B), .Z(n4) );
  OAI22D1BWP16P90LVT U7 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(Cout) );
endmodule


module FA_34 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D2BWP16P90 U1 ( .A1(Cin), .A2(n2), .Z(Sum) );
  XOR2D2BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  AN2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n1) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n2), .Z(Cout) );
endmodule


module FA_35 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n3) );
  AN2D1BWP16P90LVT U3 ( .A1(B), .A2(A), .Z(n2) );
  XOR2D1BWP16P90 U4 ( .A1(n1), .A2(n3), .Z(Sum) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n2), .B1(n3), .B2(n2), .Z(Cout) );
endmodule


module FA_36 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  MAOI22D2BWP16P90LVT U2 ( .A1(n2), .A2(n3), .B1(Cin), .B2(n4), .ZN(Cout) );
  ND2D1BWP16P90LVT U3 ( .A1(B), .A2(A), .ZN(n2) );
  INVD1BWP16P90 U4 ( .I(n3), .ZN(n5) );
  INVD1BWP16P90LVT U5 ( .I(n2), .ZN(n4) );
  XNR2D1BWP16P90LVT U6 ( .A1(A), .A2(B), .ZN(n3) );
  XOR2D1BWP16P90 U7 ( .A1(n1), .A2(n5), .Z(Sum) );
endmodule


module FA_37 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(Cin), .Z(n2) );
  INR2D2BWP16P90LVT U2 ( .A1(B), .B1(n5), .ZN(n1) );
  INVD1BWP16P90LVT U3 ( .I(A), .ZN(n5) );
  XOR2D1BWP16P90LVT U4 ( .A1(A), .A2(B), .Z(n3) );
  XOR2D1BWP16P90 U5 ( .A1(n2), .A2(n4), .Z(Sum) );
  OA22D2BWP16P90LVT U6 ( .A1(Cin), .A2(n1), .B1(n3), .B2(n1), .Z(Cout) );
  XNR2D1BWP16P90 U7 ( .A1(n5), .A2(B), .ZN(n4) );
endmodule


module FA_38 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  XOR2D2BWP16P90 U1 ( .A1(n2), .A2(n3), .Z(Sum) );
  XOR2D2BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n3) );
  BUFFD1BWP16P90LVT U3 ( .I(Cin), .Z(n2) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n1), .B2(n3), .Z(Cout) );
  AN2D1BWP16P90LVT U5 ( .A1(A), .A2(B), .Z(n1) );
endmodule


module FA_39 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  XOR2D1BWP16P90 U1 ( .A1(Cin), .A2(n2), .Z(Sum) );
  AN2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n1) );
  XOR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n2) );
  OA22D2BWP16P90LVT U4 ( .A1(n1), .A2(n2), .B1(Cin), .B2(n1), .Z(Cout) );
endmodule


module FA_40 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3, n4, n5, n6;

  OAI22D4BWP16P90LVT U1 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(Cout) );
  XOR2D4BWP16P90LVT U2 ( .A1(n3), .A2(B), .Z(n5) );
  CKND2BWP16P90LVT U3 ( .I(A), .ZN(n3) );
  XOR2D1BWP16P90LVT U4 ( .A1(Cin), .A2(n6), .Z(Sum) );
  CKND1BWP16P90LVT U5 ( .I(n5), .ZN(n6) );
  INVD1BWP16P90 U6 ( .I(Cin), .ZN(n4) );
  CKND1BWP16P90LVT U7 ( .I(B), .ZN(n2) );
endmodule


module CLA8_5 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5;
  wire   [6:0] C;

  FA_40 fa0 ( .A(A[0]), .B(B[0]), .Cin(Cin), .Cout(C[0]) );
  FA_39 fa1 ( .A(A[1]), .B(B[1]), .Cin(C[0]), .Cout(C[1]) );
  FA_38 fa2 ( .A(A[2]), .B(B[2]), .Cin(C[1]), .Cout(C[2]) );
  FA_37 fa3 ( .A(A[3]), .B(B[3]), .Cin(C[2]), .Cout(C[3]) );
  FA_36 fa4 ( .A(A[4]), .B(B[4]), .Cin(C[3]), .Cout(C[4]) );
  FA_35 fa5 ( .A(A[5]), .B(B[5]), .Cin(C[4]), .Cout(C[5]) );
  FA_34 fa6 ( .A(A[6]), .B(B[6]), .Cin(C[5]), .Cout(C[6]) );
  FA_33 fa7 ( .A(A[7]), .B(B[7]), .Cin(C[6]), .Cout(Cout) );
  XNR2D2BWP16P90LVT U1 ( .A1(B[5]), .A2(A[5]), .ZN(n1) );
  XNR2D4BWP16P90LVT U2 ( .A1(n1), .A2(C[4]), .ZN(Sum[5]) );
  XNR3D4BWP16P90LVT U3 ( .A1(B[1]), .A2(n3), .A3(C[0]), .ZN(Sum[1]) );
  INVD2BWP16P90LVT U4 ( .I(A[2]), .ZN(n4) );
  CKND2BWP16P90LVT U5 ( .I(A[6]), .ZN(n5) );
  XOR2D4BWP16P90LVT U6 ( .A1(B[3]), .A2(A[3]), .Z(n2) );
  XOR2D4BWP16P90LVT U7 ( .A1(n2), .A2(C[2]), .Z(Sum[3]) );
  XOR3D4BWP16P90LVT U8 ( .A1(B[4]), .A2(A[4]), .A3(C[3]), .Z(Sum[4]) );
  XNR3D4BWP16P90LVT U9 ( .A1(B[6]), .A2(n5), .A3(C[5]), .ZN(Sum[6]) );
  XNR3D4BWP16P90LVT U10 ( .A1(B[2]), .A2(n4), .A3(C[1]), .ZN(Sum[2]) );
  XOR3D4BWP16P90LVT U11 ( .A1(B[7]), .A2(A[7]), .A3(C[6]), .Z(Sum[7]) );
  INVD1BWP16P90 U12 ( .I(A[1]), .ZN(n3) );
  XOR3D1BWP16P90 U13 ( .A1(Cin), .A2(B[0]), .A3(A[0]), .Z(Sum[0]) );
endmodule


module FA_41 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(A), .ZN(n2) );
  INVD1BWP16P90 U2 ( .I(n4), .ZN(n5) );
  CKND1BWP16P90LVT U3 ( .I(B), .ZN(n1) );
  XOR2D1BWP16P90 U4 ( .A1(Cin), .A2(n5), .Z(Sum) );
  INVD1BWP16P90 U5 ( .I(Cin), .ZN(n3) );
  XOR2D1BWP16P90LVT U6 ( .A1(n2), .A2(B), .Z(n4) );
  OAI22D1BWP16P90LVT U7 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(Cout) );
endmodule


module FA_42 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2;

  AN2D1BWP16P90LVT U1 ( .A1(B), .A2(A), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(A), .A2(B), .Z(n2) );
  XOR2D1BWP16P90LVT U3 ( .A1(Cin), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U4 ( .A1(Cin), .A2(n1), .B1(n2), .B2(n1), .Z(Cout) );
endmodule


module FA_43 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  XOR2D1BWP16P90LVT U1 ( .A1(A), .A2(B), .Z(n3) );
  BUFFD1BWP16P90LVT U2 ( .I(Cin), .Z(n1) );
  AN2D1BWP16P90LVT U3 ( .A1(B), .A2(A), .Z(n2) );
  XOR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n3), .Z(Sum) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n2), .B1(n2), .B2(n3), .Z(Cout) );
endmodule


module FA_44 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  AN2D1BWP16P90LVT U2 ( .A1(B), .A2(A), .Z(n3) );
  XOR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n2) );
  XOR2D1BWP16P90 U4 ( .A1(n1), .A2(n2), .Z(Sum) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n3), .B1(n3), .B2(n2), .Z(Cout) );
endmodule


module FA_45 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  NR2D2BWP16P90LVT U1 ( .A1(n1), .A2(n2), .ZN(Cout) );
  NR2D1BWP16P90LVT U2 ( .A1(n3), .A2(n4), .ZN(n2) );
  BUFFD1BWP16P90LVT U3 ( .I(Cin), .Z(n5) );
  AN2D1BWP16P90LVT U4 ( .A1(B), .A2(A), .Z(n3) );
  XOR2D1BWP16P90LVT U5 ( .A1(A), .A2(B), .Z(n4) );
  NR2D1BWP16P90LVT U6 ( .A1(Cin), .A2(n3), .ZN(n1) );
  XOR2D1BWP16P90 U7 ( .A1(n5), .A2(n4), .Z(Sum) );
endmodule


module FA_46 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3;

  DEL025D1BWP16P90 U1 ( .I(Cin), .Z(n1) );
  AN2D1BWP16P90LVT U2 ( .A1(B), .A2(A), .Z(n2) );
  XOR2D1BWP16P90LVT U3 ( .A1(A), .A2(B), .Z(n3) );
  XOR2D1BWP16P90 U4 ( .A1(n1), .A2(n3), .Z(Sum) );
  OA22D2BWP16P90LVT U5 ( .A1(Cin), .A2(n2), .B1(n3), .B2(n2), .Z(Cout) );
endmodule


module FA_47 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(Cin), .Z(n1) );
  MAOI22D2BWP16P90LVT U2 ( .A1(n2), .A2(n3), .B1(Cin), .B2(n4), .ZN(Cout) );
  XOR2D1BWP16P90 U3 ( .A1(n1), .A2(n5), .Z(Sum) );
  ND2D1BWP16P90LVT U4 ( .A1(B), .A2(A), .ZN(n2) );
  INVD1BWP16P90 U5 ( .I(n3), .ZN(n5) );
  INVD1BWP16P90LVT U6 ( .I(n2), .ZN(n4) );
  XNR2D1BWP16P90LVT U7 ( .A1(A), .A2(B), .ZN(n3) );
endmodule


module FA_48 ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2, n3, n4, n5, n6, n7, n8, n9;

  NR2D1BWP16P90LVT U1 ( .A1(n8), .A2(n7), .ZN(n3) );
  NR2D1BWP16P90LVT U2 ( .A1(n6), .A2(n5), .ZN(n4) );
  CKND1BWP16P90LVT U3 ( .I(Cin), .ZN(n7) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(B), .Z(n8) );
  BUFFD1BWP16P90LVT U5 ( .I(n6), .Z(n2) );
  OR2D2BWP16P90LVT U6 ( .A1(n3), .A2(n4), .Z(Cout) );
  CKND2BWP16P90LVT U7 ( .I(A), .ZN(n6) );
  CKND1BWP16P90 U8 ( .I(B), .ZN(n5) );
  XOR2D1BWP16P90LVT U9 ( .A1(Cin), .A2(n9), .Z(Sum) );
  CKND1BWP16P90LVT U10 ( .I(n8), .ZN(n9) );
endmodule


module CLA8_6 ( A, B, Cin, Sum, Cout );
  input [7:0] A;
  input [7:0] B;
  output [7:0] Sum;
  input Cin;
  output Cout;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [6:0] C;

  FA_48 fa0 ( .A(A[0]), .B(B[0]), .Cin(Cin), .Cout(C[0]) );
  FA_47 fa1 ( .A(A[1]), .B(B[1]), .Cin(C[0]), .Cout(C[1]) );
  FA_46 fa2 ( .A(A[2]), .B(B[2]), .Cin(C[1]), .Cout(C[2]) );
  FA_45 fa3 ( .A(A[3]), .B(B[3]), .Cin(C[2]), .Cout(C[3]) );
  FA_44 fa4 ( .A(A[4]), .B(B[4]), .Cin(C[3]), .Cout(C[4]) );
  FA_43 fa5 ( .A(A[5]), .B(B[5]), .Cin(C[4]), .Cout(C[5]) );
  FA_42 fa6 ( .A(A[6]), .B(B[6]), .Cin(C[5]), .Cout(C[6]) );
  FA_41 fa7 ( .A(A[7]), .B(B[7]), .Cin(n1), .Cout(Cout) );
  CKND2BWP16P90LVT U1 ( .I(A[3]), .ZN(n4) );
  CKND1BWP16P90LVT U2 ( .I(A[2]), .ZN(n5) );
  INVD1BWP16P90LVT U3 ( .I(A[5]), .ZN(n6) );
  CKBD1BWP16P90 U4 ( .I(C[6]), .Z(n1) );
  DEL025D1BWP16P90 U5 ( .I(A[0]), .Z(n2) );
  XOR3D4BWP16P90LVT U6 ( .A1(B[7]), .A2(A[7]), .A3(C[6]), .Z(Sum[7]) );
  XOR3D4BWP16P90LVT U7 ( .A1(B[6]), .A2(A[6]), .A3(C[5]), .Z(Sum[6]) );
  XNR3D4BWP16P90LVT U8 ( .A1(B[5]), .A2(n6), .A3(C[4]), .ZN(Sum[5]) );
  XNR3D4BWP16P90LVT U9 ( .A1(B[2]), .A2(n5), .A3(C[1]), .ZN(Sum[2]) );
  XNR3D4BWP16P90LVT U10 ( .A1(B[3]), .A2(n4), .A3(C[2]), .ZN(Sum[3]) );
  XOR3D4BWP16P90LVT U11 ( .A1(B[4]), .A2(A[4]), .A3(C[3]), .Z(Sum[4]) );
  XNR3D2BWP16P90LVT U12 ( .A1(B[1]), .A2(n3), .A3(C[0]), .ZN(Sum[1]) );
  INVD1BWP16P90LVT U13 ( .I(A[1]), .ZN(n3) );
  XOR3D1BWP16P90 U14 ( .A1(Cin), .A2(B[0]), .A3(n2), .Z(Sum[0]) );
endmodule


module Multiplier_CLA ( A, B, Product );
  input [7:0] A;
  input [7:0] B;
  output [15:0] Product;
  wire   \*Logic0* , \Sum[6][7] , \Sum[6][6] , \Sum[6][5] , \Sum[6][4] ,
         \Sum[6][3] , \Sum[6][2] , \Sum[6][1] , \Sum[6][0] , \Sum[5][7] ,
         \Sum[5][6] , \Sum[5][5] , \Sum[5][4] , \Sum[5][3] , \Sum[5][2] ,
         \Sum[5][1] , \Sum[5][0] , \Sum[4][7] , \Sum[4][6] , \Sum[4][5] ,
         \Sum[4][4] , \Sum[4][3] , \Sum[4][2] , \Sum[4][1] , \Sum[4][0] ,
         \Sum[3][7] , \Sum[3][6] , \Sum[3][5] , \Sum[3][4] , \Sum[3][3] ,
         \Sum[3][2] , \Sum[3][1] , \Sum[3][0] , \Sum[2][7] , \Sum[2][6] ,
         \Sum[2][5] , \Sum[2][4] , \Sum[2][3] , \Sum[2][2] , \Sum[2][1] ,
         \Sum[2][0] , \Sum[1][7] , \Sum[1][6] , \Sum[1][5] , \Sum[1][4] ,
         \Sum[1][3] , \Sum[1][2] , \Sum[1][1] , \Sum[1][0] , \Sum[0][7] ,
         \Sum[0][6] , \Sum[0][5] , \Sum[0][4] , \Sum[0][3] , \Sum[0][2] ,
         \Sum[0][1] , \Sum[0][0] , n17, n18, n19, n20, n21;
  wire   [62:0] and_out;
  wire   [6:0] carry_wire;
  assign Product[14] = \Sum[6][7] ;
  assign Product[13] = \Sum[6][6] ;
  assign Product[12] = \Sum[6][5] ;
  assign Product[11] = \Sum[6][4] ;
  assign Product[10] = \Sum[6][3] ;
  assign Product[9] = \Sum[6][2] ;
  assign Product[8] = \Sum[6][1] ;
  assign Product[7] = \Sum[6][0] ;
  assign Product[6] = \Sum[5][0] ;
  assign Product[5] = \Sum[4][0] ;
  assign Product[4] = \Sum[3][0] ;
  assign Product[3] = \Sum[2][0] ;
  assign Product[2] = \Sum[1][0] ;
  assign Product[1] = \Sum[0][0] ;
  assign Product[15] = carry_wire[6];

  CLA8_0 cl8 ( .A({\*Logic0* , and_out[6:0]}), .B(and_out[14:7]), .Cin(
        \*Logic0* ), .Sum({\Sum[0][7] , \Sum[0][6] , \Sum[0][5] , \Sum[0][4] , 
        \Sum[0][3] , \Sum[0][2] , \Sum[0][1] , \Sum[0][0] }), .Cout(
        carry_wire[0]) );
  CLA8_6 cl7 ( .A({carry_wire[0], \Sum[0][7] , \Sum[0][6] , \Sum[0][5] , 
        \Sum[0][4] , \Sum[0][3] , \Sum[0][2] , \Sum[0][1] }), .B(
        and_out[22:15]), .Cin(\*Logic0* ), .Sum({\Sum[1][7] , \Sum[1][6] , 
        \Sum[1][5] , \Sum[1][4] , \Sum[1][3] , \Sum[1][2] , \Sum[1][1] , 
        \Sum[1][0] }), .Cout(carry_wire[1]) );
  CLA8_5 cl6 ( .A({carry_wire[1], \Sum[1][7] , \Sum[1][6] , \Sum[1][5] , 
        \Sum[1][4] , \Sum[1][3] , \Sum[1][2] , \Sum[1][1] }), .B(
        and_out[30:23]), .Cin(\*Logic0* ), .Sum({\Sum[2][7] , \Sum[2][6] , 
        \Sum[2][5] , \Sum[2][4] , \Sum[2][3] , \Sum[2][2] , \Sum[2][1] , 
        \Sum[2][0] }), .Cout(carry_wire[2]) );
  CLA8_4 cl5 ( .A({carry_wire[2], \Sum[2][7] , \Sum[2][6] , \Sum[2][5] , 
        \Sum[2][4] , \Sum[2][3] , \Sum[2][2] , \Sum[2][1] }), .B(
        and_out[38:31]), .Cin(\*Logic0* ), .Sum({\Sum[3][7] , \Sum[3][6] , 
        \Sum[3][5] , \Sum[3][4] , \Sum[3][3] , \Sum[3][2] , \Sum[3][1] , 
        \Sum[3][0] }), .Cout(carry_wire[3]) );
  CLA8_3 cl4 ( .A({carry_wire[3], \Sum[3][7] , \Sum[3][6] , \Sum[3][5] , 
        \Sum[3][4] , \Sum[3][3] , \Sum[3][2] , \Sum[3][1] }), .B(
        and_out[46:39]), .Cin(\*Logic0* ), .Sum({\Sum[4][7] , \Sum[4][6] , 
        \Sum[4][5] , \Sum[4][4] , \Sum[4][3] , \Sum[4][2] , \Sum[4][1] , 
        \Sum[4][0] }), .Cout(carry_wire[4]) );
  CLA8_2 cl3 ( .A({carry_wire[4], \Sum[4][7] , \Sum[4][6] , \Sum[4][5] , 
        \Sum[4][4] , \Sum[4][3] , \Sum[4][2] , \Sum[4][1] }), .B(
        and_out[54:47]), .Cin(\*Logic0* ), .Sum({\Sum[5][7] , \Sum[5][6] , 
        \Sum[5][5] , \Sum[5][4] , \Sum[5][3] , \Sum[5][2] , \Sum[5][1] , 
        \Sum[5][0] }), .Cout(carry_wire[5]) );
  CLA8_1 cl2 ( .A({carry_wire[5], \Sum[5][7] , \Sum[5][6] , \Sum[5][5] , 
        \Sum[5][4] , \Sum[5][3] , \Sum[5][2] , \Sum[5][1] }), .B(
        and_out[62:55]), .Cin(\*Logic0* ), .Sum({\Sum[6][7] , \Sum[6][6] , 
        \Sum[6][5] , \Sum[6][4] , \Sum[6][3] , \Sum[6][2] , \Sum[6][1] , 
        \Sum[6][0] }), .Cout(carry_wire[6]) );
  TIELBWP20P90LVT U82 ( .ZN(\*Logic0* ) );
  AN2D1BWP16P90LVT U83 ( .A1(B[1]), .A2(A[2]), .Z(and_out[9]) );
  CKND8BWP16P90LVT U84 ( .I(A[1]), .ZN(n18) );
  CKNR2D4BWP16P90LVT U85 ( .A1(n17), .A2(n19), .ZN(and_out[1]) );
  CKND16BWP16P90LVT U86 ( .I(A[2]), .ZN(n17) );
  NR2D4BWP16P90LVT U87 ( .A1(n18), .A2(n19), .ZN(and_out[0]) );
  CKND16BWP16P90LVT U88 ( .I(B[0]), .ZN(n19) );
  NR2D8BWP16P90LVT U89 ( .A1(n20), .A2(n21), .ZN(and_out[7]) );
  CKND16BWP16P90LVT U90 ( .I(B[1]), .ZN(n20) );
  CKND16BWP16P90LVT U91 ( .I(A[0]), .ZN(n21) );
  INR2D4BWP16P90LVT U92 ( .A1(B[1]), .B1(n18), .ZN(and_out[8]) );
  AN2D1BWP16P90LVT U93 ( .A1(A[5]), .A2(B[0]), .Z(and_out[4]) );
  AN2D1BWP16P90LVT U94 ( .A1(A[3]), .A2(B[0]), .Z(and_out[2]) );
  AN2D1BWP16P90LVT U95 ( .A1(A[4]), .A2(B[0]), .Z(and_out[3]) );
  AN2D1BWP16P90LVT U96 ( .A1(A[0]), .A2(B[7]), .Z(and_out[55]) );
  AN2D1BWP16P90LVT U97 ( .A1(A[1]), .A2(B[7]), .Z(and_out[56]) );
  AN2D1BWP16P90LVT U98 ( .A1(A[2]), .A2(B[7]), .Z(and_out[57]) );
  AN2D1BWP16P90LVT U99 ( .A1(A[3]), .A2(B[7]), .Z(and_out[58]) );
  AN2D1BWP16P90LVT U100 ( .A1(A[4]), .A2(B[7]), .Z(and_out[59]) );
  AN2D1BWP16P90LVT U101 ( .A1(A[5]), .A2(B[7]), .Z(and_out[60]) );
  AN2D1BWP16P90LVT U102 ( .A1(A[6]), .A2(B[7]), .Z(and_out[61]) );
  AN2D1BWP16P90LVT U103 ( .A1(A[7]), .A2(B[7]), .Z(and_out[62]) );
  AN2D1BWP16P90LVT U104 ( .A1(A[0]), .A2(B[6]), .Z(and_out[47]) );
  AN2D1BWP16P90LVT U105 ( .A1(A[1]), .A2(B[6]), .Z(and_out[48]) );
  AN2D1BWP16P90LVT U106 ( .A1(A[2]), .A2(B[6]), .Z(and_out[49]) );
  AN2D1BWP16P90LVT U107 ( .A1(A[3]), .A2(B[6]), .Z(and_out[50]) );
  AN2D1BWP16P90LVT U108 ( .A1(A[4]), .A2(B[6]), .Z(and_out[51]) );
  AN2D1BWP16P90LVT U109 ( .A1(A[5]), .A2(B[6]), .Z(and_out[52]) );
  AN2D1BWP16P90LVT U110 ( .A1(A[6]), .A2(B[6]), .Z(and_out[53]) );
  AN2D1BWP16P90LVT U111 ( .A1(A[7]), .A2(B[6]), .Z(and_out[54]) );
  AN2D1BWP16P90LVT U112 ( .A1(A[0]), .A2(B[5]), .Z(and_out[39]) );
  AN2D1BWP16P90LVT U113 ( .A1(A[1]), .A2(B[5]), .Z(and_out[40]) );
  AN2D1BWP16P90LVT U114 ( .A1(A[2]), .A2(B[5]), .Z(and_out[41]) );
  AN2D1BWP16P90LVT U115 ( .A1(A[3]), .A2(B[5]), .Z(and_out[42]) );
  AN2D1BWP16P90LVT U116 ( .A1(A[4]), .A2(B[5]), .Z(and_out[43]) );
  AN2D1BWP16P90LVT U117 ( .A1(A[5]), .A2(B[5]), .Z(and_out[44]) );
  AN2D1BWP16P90LVT U118 ( .A1(A[6]), .A2(B[5]), .Z(and_out[45]) );
  AN2D1BWP16P90LVT U119 ( .A1(A[7]), .A2(B[5]), .Z(and_out[46]) );
  AN2D1BWP16P90LVT U120 ( .A1(A[0]), .A2(B[4]), .Z(and_out[31]) );
  AN2D1BWP16P90LVT U121 ( .A1(A[1]), .A2(B[4]), .Z(and_out[32]) );
  AN2D1BWP16P90LVT U122 ( .A1(A[2]), .A2(B[4]), .Z(and_out[33]) );
  AN2D1BWP16P90LVT U123 ( .A1(A[3]), .A2(B[4]), .Z(and_out[34]) );
  AN2D1BWP16P90LVT U124 ( .A1(A[4]), .A2(B[4]), .Z(and_out[35]) );
  AN2D1BWP16P90LVT U125 ( .A1(A[5]), .A2(B[4]), .Z(and_out[36]) );
  AN2D1BWP16P90LVT U126 ( .A1(A[6]), .A2(B[4]), .Z(and_out[37]) );
  AN2D1BWP16P90LVT U127 ( .A1(A[7]), .A2(B[4]), .Z(and_out[38]) );
  AN2D1BWP16P90LVT U128 ( .A1(A[0]), .A2(B[3]), .Z(and_out[23]) );
  AN2D1BWP16P90LVT U129 ( .A1(A[1]), .A2(B[3]), .Z(and_out[24]) );
  AN2D1BWP16P90LVT U130 ( .A1(A[2]), .A2(B[3]), .Z(and_out[25]) );
  AN2D1BWP16P90LVT U131 ( .A1(A[3]), .A2(B[3]), .Z(and_out[26]) );
  AN2D1BWP16P90LVT U132 ( .A1(A[4]), .A2(B[3]), .Z(and_out[27]) );
  AN2D1BWP16P90LVT U133 ( .A1(A[5]), .A2(B[3]), .Z(and_out[28]) );
  AN2D1BWP16P90LVT U134 ( .A1(A[6]), .A2(B[3]), .Z(and_out[29]) );
  AN2D1BWP16P90LVT U135 ( .A1(A[7]), .A2(B[3]), .Z(and_out[30]) );
  AN2D1BWP16P90LVT U136 ( .A1(B[2]), .A2(A[0]), .Z(and_out[15]) );
  AN2D1BWP16P90LVT U137 ( .A1(B[2]), .A2(A[1]), .Z(and_out[16]) );
  AN2D1BWP16P90LVT U138 ( .A1(B[2]), .A2(A[2]), .Z(and_out[17]) );
  AN2D1BWP16P90LVT U139 ( .A1(B[2]), .A2(A[3]), .Z(and_out[18]) );
  AN2D1BWP16P90LVT U140 ( .A1(B[2]), .A2(A[4]), .Z(and_out[19]) );
  AN2D1BWP16P90LVT U141 ( .A1(B[2]), .A2(A[5]), .Z(and_out[20]) );
  AN2D1BWP16P90LVT U142 ( .A1(B[2]), .A2(A[6]), .Z(and_out[21]) );
  AN2D1BWP16P90LVT U143 ( .A1(B[2]), .A2(A[7]), .Z(and_out[22]) );
  AN2D1BWP16P90LVT U144 ( .A1(B[1]), .A2(A[3]), .Z(and_out[10]) );
  AN2D1BWP16P90LVT U145 ( .A1(B[1]), .A2(A[4]), .Z(and_out[11]) );
  AN2D1BWP16P90LVT U146 ( .A1(B[1]), .A2(A[5]), .Z(and_out[12]) );
  AN2D1BWP16P90LVT U147 ( .A1(B[1]), .A2(A[6]), .Z(and_out[13]) );
  AN2D1BWP16P90LVT U148 ( .A1(B[1]), .A2(A[7]), .Z(and_out[14]) );
  AN2D1BWP16P90LVT U149 ( .A1(A[6]), .A2(B[0]), .Z(and_out[5]) );
  AN2D1BWP16P90LVT U150 ( .A1(A[7]), .A2(B[0]), .Z(and_out[6]) );
  AN2D1BWP16P90LVT U151 ( .A1(B[0]), .A2(A[0]), .Z(Product[0]) );
endmodule

