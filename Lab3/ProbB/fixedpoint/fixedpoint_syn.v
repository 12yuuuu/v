/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Mar 16 17:02:43 2024
/////////////////////////////////////////////////////////////


module fixedpoint_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n147, n148, n149, n150,
         n151, n152, n153, n155, n156, n157, n158, n159, n160, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234;

  FA1D1BWP16P90LVT U4 ( .A(n21), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D1BWP16P90LVT U7 ( .A(n36), .B(n45), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D1BWP16P90LVT U8 ( .A(n46), .B(n57), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D1BWP16P90LVT U9 ( .A(n58), .B(n69), .CI(n208), .CO(n8), .S(product[7])
         );
  FA1D1BWP16P90LVT U16 ( .A(n100), .B(n107), .CI(n19), .CO(n15), .S(n16) );
  FA1D1BWP16P90LVT U17 ( .A(n20), .B(n25), .CI(n23), .CO(n17), .S(n18) );
  FA1D1BWP16P90LVT U18 ( .A(n101), .B(n115), .CI(n108), .CO(n19), .S(n20) );
  FA1D1BWP16P90LVT U19 ( .A(n24), .B(n31), .CI(n29), .CO(n21), .S(n22) );
  FA1D1BWP16P90LVT U20 ( .A(n33), .B(n116), .CI(n26), .CO(n23), .S(n24) );
  FA1D1BWP16P90LVT U21 ( .A(n102), .B(n123), .CI(n109), .CO(n25), .S(n26) );
  FA1D1BWP16P90LVT U22 ( .A(n37), .B(n32), .CI(n30), .CO(n27), .S(n28) );
  FA1D1BWP16P90LVT U23 ( .A(n34), .B(n41), .CI(n39), .CO(n29), .S(n30) );
  FA1D1BWP16P90LVT U24 ( .A(n117), .B(n124), .CI(n43), .CO(n31), .S(n32) );
  FA1D1BWP16P90LVT U25 ( .A(n103), .B(n131), .CI(n110), .CO(n33), .S(n34) );
  FA1D1BWP16P90LVT U26 ( .A(n47), .B(n40), .CI(n38), .CO(n35), .S(n36) );
  FA1D1BWP16P90LVT U27 ( .A(n51), .B(n44), .CI(n49), .CO(n37), .S(n38) );
  FA1D1BWP16P90LVT U28 ( .A(n53), .B(n55), .CI(n42), .CO(n39), .S(n40) );
  FA1D1BWP16P90LVT U29 ( .A(n125), .B(n118), .CI(n132), .CO(n41), .S(n42) );
  FA1D1BWP16P90LVT U30 ( .A(n104), .B(n139), .CI(n111), .CO(n43), .S(n44) );
  FA1D1BWP16P90LVT U31 ( .A(n59), .B(n50), .CI(n48), .CO(n45), .S(n46) );
  FA1D1BWP16P90LVT U32 ( .A(n61), .B(n54), .CI(n52), .CO(n47), .S(n48) );
  FA1D1BWP16P90LVT U33 ( .A(n65), .B(n56), .CI(n63), .CO(n49), .S(n50) );
  FA1D1BWP16P90LVT U34 ( .A(n133), .B(n140), .CI(n67), .CO(n51), .S(n52) );
  FA1D1BWP16P90LVT U35 ( .A(n119), .B(n126), .CI(n147), .CO(n53), .S(n54) );
  HA1D2BWP16P90LVT U36 ( .A(n112), .B(n105), .CO(n55), .S(n56) );
  FA1D1BWP16P90LVT U37 ( .A(n62), .B(n71), .CI(n60), .CO(n57), .S(n58) );
  FA1D1BWP16P90LVT U38 ( .A(n66), .B(n64), .CI(n73), .CO(n59), .S(n60) );
  FA1D1BWP16P90LVT U39 ( .A(n68), .B(n77), .CI(n75), .CO(n61), .S(n62) );
  FA1D1BWP16P90LVT U40 ( .A(n127), .B(n141), .CI(n134), .CO(n63), .S(n64) );
  FA1D1BWP16P90LVT U41 ( .A(n120), .B(n155), .CI(n148), .CO(n65), .S(n66) );
  HA1D2BWP16P90LVT U42 ( .A(n113), .B(n106), .CO(n67), .S(n68) );
  FA1D1BWP16P90LVT U43 ( .A(n74), .B(n81), .CI(n72), .CO(n69), .S(n70) );
  FA1D1BWP16P90LVT U44 ( .A(n83), .B(n78), .CI(n76), .CO(n71), .S(n72) );
  FA1D1BWP16P90LVT U45 ( .A(n135), .B(n142), .CI(n85), .CO(n73), .S(n74) );
  FA1D1BWP16P90LVT U46 ( .A(n128), .B(n156), .CI(n149), .CO(n75), .S(n76) );
  HA1D2BWP16P90LVT U47 ( .A(n121), .B(n114), .CO(n77), .S(n78) );
  FA1D1BWP16P90LVT U48 ( .A(n84), .B(n89), .CI(n82), .CO(n79), .S(n80) );
  FA1D1BWP16P90LVT U49 ( .A(n91), .B(n150), .CI(n86), .CO(n81), .S(n82) );
  FA1D1BWP16P90LVT U50 ( .A(n136), .B(n157), .CI(n143), .CO(n83), .S(n84) );
  HA1D2BWP16P90LVT U51 ( .A(n129), .B(n122), .CO(n85), .S(n86) );
  FA1D1BWP16P90LVT U52 ( .A(n92), .B(n95), .CI(n90), .CO(n87), .S(n88) );
  FA1D1BWP16P90LVT U53 ( .A(n144), .B(n158), .CI(n151), .CO(n89), .S(n90) );
  HA1D2BWP16P90LVT U54 ( .A(n137), .B(n130), .CO(n91), .S(n92) );
  FA1D1BWP16P90LVT U55 ( .A(n152), .B(n159), .CI(n97), .CO(n93), .S(n94) );
  HA1D2BWP16P90LVT U56 ( .A(n145), .B(n138), .CO(n95), .S(n96) );
  HA1D2BWP16P90LVT U57 ( .A(n160), .B(n153), .CO(n97), .S(n98) );
  FA1D1BWP16P90LVT U139 ( .A(n22), .B(n27), .CI(n5), .CO(n4), .S(product[11])
         );
  CKND1BWP16P90LVT U140 ( .I(b[1]), .ZN(n226) );
  CKND1BWP16P90LVT U141 ( .I(a[1]), .ZN(n218) );
  INVD1BWP16P90LVT U142 ( .I(n228), .ZN(n208) );
  INVD1BWP16P90LVT U143 ( .I(a[0]), .ZN(n219) );
  OAI222D1BWP16P90LVT U144 ( .A1(n232), .A2(n217), .B1(n217), .B2(n214), .C1(
        n232), .C2(n214), .ZN(n231) );
  FA1D1BWP16P90LVT U145 ( .A(n28), .B(n35), .CI(n6), .CO(n5), .S(product[10])
         );
  CKND1BWP16P90LVT U146 ( .I(n96), .ZN(n214) );
  CKND1BWP16P90LVT U147 ( .I(n94), .ZN(n217) );
  FA1D1BWP16P90LVT U148 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13])
         );
  FA1D1BWP16P90LVT U149 ( .A(n15), .B(n99), .CI(n2), .CO(product[15]), .S(
        product[14]) );
  CKND1BWP16P90LVT U150 ( .I(a[3]), .ZN(n215) );
  CKND1BWP16P90LVT U151 ( .I(a[4]), .ZN(n213) );
  CKND1BWP16P90LVT U152 ( .I(a[5]), .ZN(n211) );
  CKND1BWP16P90LVT U153 ( .I(a[6]), .ZN(n209) );
  CKND1BWP16P90LVT U154 ( .I(b[2]), .ZN(n225) );
  CKND1BWP16P90LVT U155 ( .I(b[3]), .ZN(n224) );
  CKND1BWP16P90LVT U156 ( .I(b[4]), .ZN(n223) );
  CKND1BWP16P90LVT U157 ( .I(b[5]), .ZN(n222) );
  CKND1BWP16P90LVT U158 ( .I(b[6]), .ZN(n221) );
  CKND1BWP16P90LVT U159 ( .I(a[2]), .ZN(n216) );
  CKND1BWP16P90LVT U160 ( .I(b[7]), .ZN(n220) );
  CKND1BWP16P90LVT U161 ( .I(a[7]), .ZN(n207) );
  CKND1BWP16P90LVT U162 ( .I(b[0]), .ZN(n227) );
  AOI222D1BWP16P90LVT U163 ( .A1(n212), .A2(n80), .B1(n212), .B2(n87), .C1(n87), .C2(n80), .ZN(n229) );
  INVD1BWP16P90LVT U164 ( .I(n230), .ZN(n212) );
  AOI222D1BWP16P90LVT U165 ( .A1(n210), .A2(n70), .B1(n210), .B2(n79), .C1(n79), .C2(n70), .ZN(n228) );
  INVD1BWP16P90LVT U166 ( .I(n229), .ZN(n210) );
  NR2D1BWP16P90 U167 ( .A1(n207), .A2(n220), .ZN(n99) );
  AOI222D1BWP16P90 U168 ( .A1(n231), .A2(n88), .B1(n231), .B2(n93), .C1(n93), 
        .C2(n88), .ZN(n230) );
  AOI222D1BWP16P90 U169 ( .A1(n98), .A2(n233), .B1(n234), .B2(n98), .C1(n234), 
        .C2(n233), .ZN(n232) );
  NR2D1BWP16P90 U170 ( .A1(n227), .A2(n216), .ZN(n234) );
  NR4D1BWP16P90 U171 ( .A1(n226), .A2(n218), .A3(n219), .A4(n227), .ZN(n233)
         );
  NR2D1BWP16P90 U172 ( .A1(n219), .A2(n225), .ZN(n160) );
  NR2D1BWP16P90 U173 ( .A1(n219), .A2(n224), .ZN(n159) );
  NR2D1BWP16P90 U174 ( .A1(n219), .A2(n223), .ZN(n158) );
  NR2D1BWP16P90 U175 ( .A1(n219), .A2(n222), .ZN(n157) );
  NR2D1BWP16P90 U176 ( .A1(n219), .A2(n221), .ZN(n156) );
  NR2D1BWP16P90 U177 ( .A1(n220), .A2(n219), .ZN(n155) );
  NR2D1BWP16P90 U178 ( .A1(n218), .A2(n226), .ZN(n153) );
  NR2D1BWP16P90 U179 ( .A1(n218), .A2(n225), .ZN(n152) );
  NR2D1BWP16P90 U180 ( .A1(n218), .A2(n224), .ZN(n151) );
  NR2D1BWP16P90 U181 ( .A1(n218), .A2(n223), .ZN(n150) );
  NR2D1BWP16P90 U182 ( .A1(n218), .A2(n222), .ZN(n149) );
  NR2D1BWP16P90 U183 ( .A1(n218), .A2(n221), .ZN(n148) );
  NR2D1BWP16P90 U184 ( .A1(n220), .A2(n218), .ZN(n147) );
  NR2D1BWP16P90 U185 ( .A1(n216), .A2(n226), .ZN(n145) );
  NR2D1BWP16P90 U186 ( .A1(n216), .A2(n225), .ZN(n144) );
  NR2D1BWP16P90 U187 ( .A1(n216), .A2(n224), .ZN(n143) );
  NR2D1BWP16P90 U188 ( .A1(n216), .A2(n223), .ZN(n142) );
  NR2D1BWP16P90 U189 ( .A1(n216), .A2(n222), .ZN(n141) );
  NR2D1BWP16P90 U190 ( .A1(n216), .A2(n221), .ZN(n140) );
  NR2D1BWP16P90 U191 ( .A1(n220), .A2(n216), .ZN(n139) );
  NR2D1BWP16P90 U192 ( .A1(n227), .A2(n215), .ZN(n138) );
  NR2D1BWP16P90 U193 ( .A1(n226), .A2(n215), .ZN(n137) );
  NR2D1BWP16P90 U194 ( .A1(n225), .A2(n215), .ZN(n136) );
  NR2D1BWP16P90 U195 ( .A1(n224), .A2(n215), .ZN(n135) );
  NR2D1BWP16P90 U196 ( .A1(n223), .A2(n215), .ZN(n134) );
  NR2D1BWP16P90 U197 ( .A1(n222), .A2(n215), .ZN(n133) );
  NR2D1BWP16P90 U198 ( .A1(n221), .A2(n215), .ZN(n132) );
  NR2D1BWP16P90 U199 ( .A1(n220), .A2(n215), .ZN(n131) );
  NR2D1BWP16P90 U200 ( .A1(n227), .A2(n213), .ZN(n130) );
  NR2D1BWP16P90 U201 ( .A1(n226), .A2(n213), .ZN(n129) );
  NR2D1BWP16P90 U202 ( .A1(n225), .A2(n213), .ZN(n128) );
  NR2D1BWP16P90 U203 ( .A1(n224), .A2(n213), .ZN(n127) );
  NR2D1BWP16P90 U204 ( .A1(n223), .A2(n213), .ZN(n126) );
  NR2D1BWP16P90 U205 ( .A1(n222), .A2(n213), .ZN(n125) );
  NR2D1BWP16P90 U206 ( .A1(n221), .A2(n213), .ZN(n124) );
  NR2D1BWP16P90 U207 ( .A1(n220), .A2(n213), .ZN(n123) );
  NR2D1BWP16P90 U208 ( .A1(n227), .A2(n211), .ZN(n122) );
  NR2D1BWP16P90 U209 ( .A1(n226), .A2(n211), .ZN(n121) );
  NR2D1BWP16P90 U210 ( .A1(n225), .A2(n211), .ZN(n120) );
  NR2D1BWP16P90 U211 ( .A1(n224), .A2(n211), .ZN(n119) );
  NR2D1BWP16P90 U212 ( .A1(n223), .A2(n211), .ZN(n118) );
  NR2D1BWP16P90 U213 ( .A1(n222), .A2(n211), .ZN(n117) );
  NR2D1BWP16P90 U214 ( .A1(n221), .A2(n211), .ZN(n116) );
  NR2D1BWP16P90 U215 ( .A1(n220), .A2(n211), .ZN(n115) );
  NR2D1BWP16P90 U216 ( .A1(n227), .A2(n209), .ZN(n114) );
  NR2D1BWP16P90 U217 ( .A1(n226), .A2(n209), .ZN(n113) );
  NR2D1BWP16P90 U218 ( .A1(n225), .A2(n209), .ZN(n112) );
  NR2D1BWP16P90 U219 ( .A1(n224), .A2(n209), .ZN(n111) );
  NR2D1BWP16P90 U220 ( .A1(n223), .A2(n209), .ZN(n110) );
  NR2D1BWP16P90 U221 ( .A1(n222), .A2(n209), .ZN(n109) );
  NR2D1BWP16P90 U222 ( .A1(n221), .A2(n209), .ZN(n108) );
  NR2D1BWP16P90 U223 ( .A1(n220), .A2(n209), .ZN(n107) );
  NR2D1BWP16P90 U224 ( .A1(n207), .A2(n227), .ZN(n106) );
  NR2D1BWP16P90 U225 ( .A1(n207), .A2(n226), .ZN(n105) );
  NR2D1BWP16P90 U226 ( .A1(n207), .A2(n225), .ZN(n104) );
  NR2D1BWP16P90 U227 ( .A1(n207), .A2(n224), .ZN(n103) );
  NR2D1BWP16P90 U228 ( .A1(n207), .A2(n223), .ZN(n102) );
  NR2D1BWP16P90 U229 ( .A1(n207), .A2(n222), .ZN(n101) );
  NR2D1BWP16P90 U230 ( .A1(n207), .A2(n221), .ZN(n100) );
endmodule


module fixedpoint_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA1D1BWP16P90LVT U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  HA1D1BWP16P90LVT U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  HA1D1BWP16P90LVT U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  HA1D1BWP16P90LVT U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  HA1D1BWP16P90LVT U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  HA1D1BWP16P90LVT U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CKND1BWP16P90LVT U1 ( .I(A[0]), .ZN(SUM[0]) );
  XOR2D1BWP16P90 U2 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
endmodule


module fixedpoint ( in1, in2, out );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] out;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, n2;
  wire   [15:7] result;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6;

  AO22D1BWP16P90LVT U2 ( .A1(result[15]), .A2(n2), .B1(result[7]), .B2(N9), 
        .Z(out[7]) );
  AO22D1BWP16P90LVT U3 ( .A1(result[14]), .A2(n2), .B1(N8), .B2(result[7]), 
        .Z(out[6]) );
  AO22D1BWP16P90LVT U4 ( .A1(result[13]), .A2(n2), .B1(N7), .B2(result[7]), 
        .Z(out[5]) );
  AO22D1BWP16P90LVT U5 ( .A1(result[12]), .A2(n2), .B1(N6), .B2(result[7]), 
        .Z(out[4]) );
  AO22D1BWP16P90LVT U6 ( .A1(result[11]), .A2(n2), .B1(N5), .B2(result[7]), 
        .Z(out[3]) );
  AO22D1BWP16P90LVT U7 ( .A1(result[10]), .A2(n2), .B1(N4), .B2(result[7]), 
        .Z(out[2]) );
  AO22D1BWP16P90LVT U8 ( .A1(result[9]), .A2(n2), .B1(N3), .B2(result[7]), .Z(
        out[1]) );
  AO22D1BWP16P90LVT U9 ( .A1(result[8]), .A2(n2), .B1(N2), .B2(result[7]), .Z(
        out[0]) );
  fixedpoint_DW_mult_uns_0 mult_9 ( .a(in1), .b(in2), .product({result, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  fixedpoint_DW01_inc_0 add_11 ( .A(result[15:8]), .SUM({N9, N8, N7, N6, N5, 
        N4, N3, N2}) );
  CKND1BWP16P90LVT U11 ( .I(result[7]), .ZN(n2) );
endmodule

