/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Mar 16 17:52:45 2024
/////////////////////////////////////////////////////////////


module MULT_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237;

  FA1D1BWP16P90LVT U2 ( .A(n15), .B(n99), .CI(n2), .CO(product[15]), .S(
        product[14]) );
  FA1D1BWP16P90LVT U6 ( .A(n28), .B(n35), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D1BWP16P90LVT U7 ( .A(n36), .B(n45), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D1BWP16P90LVT U9 ( .A(n58), .B(n69), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D1BWP16P90LVT U11 ( .A(n80), .B(n87), .CI(n11), .CO(n10), .S(product[5])
         );
  FA1D1BWP16P90LVT U12 ( .A(n88), .B(n93), .CI(n12), .CO(n11), .S(product[4])
         );
  FA1D1BWP16P90LVT U14 ( .A(n14), .B(n146), .CI(n98), .CO(n13), .S(product[2])
         );
  HA1D2BWP16P90LVT U15 ( .A(n154), .B(n161), .CO(n14), .S(product[1]) );
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
  FA1D1BWP16P90LVT U49 ( .A(n91), .B(n150), .CI(n86), .CO(n81), .S(n82) );
  FA1D1BWP16P90LVT U50 ( .A(n136), .B(n157), .CI(n143), .CO(n83), .S(n84) );
  HA1D2BWP16P90LVT U51 ( .A(n129), .B(n122), .CO(n85), .S(n86) );
  FA1D1BWP16P90LVT U52 ( .A(n92), .B(n95), .CI(n90), .CO(n87), .S(n88) );
  HA1D2BWP16P90LVT U54 ( .A(n137), .B(n130), .CO(n91), .S(n92) );
  FA1D1BWP16P90LVT U55 ( .A(n152), .B(n159), .CI(n97), .CO(n93), .S(n94) );
  HA1D2BWP16P90LVT U56 ( .A(n145), .B(n138), .CO(n95), .S(n96) );
  FA1D2BWP16P90LVT U140 ( .A(n144), .B(n158), .CI(n151), .CO(n89), .S(n90) );
  NR2D1BWP16P90LVT U141 ( .A1(n229), .A2(n233), .ZN(n158) );
  ND3D4BWP16P90LVT U142 ( .A1(n219), .A2(n220), .A3(n221), .ZN(n3) );
  FA1D1BWP16P90LVT U143 ( .A(n70), .B(n79), .CI(n10), .CO(n9), .S(product[6])
         );
  FA1D1BWP16P90LVT U144 ( .A(n17), .B(n16), .CI(n3), .CO(n2), .S(product[13])
         );
  XOR2D1BWP16P90LVT U145 ( .A1(n89), .A2(n84), .Z(n214) );
  XOR2D1BWP16P90LVT U146 ( .A1(n214), .A2(n82), .Z(n80) );
  ND2D1BWP16P90LVT U147 ( .A1(n82), .A2(n84), .ZN(n215) );
  ND2D1BWP16P90LVT U148 ( .A1(n82), .A2(n89), .ZN(n216) );
  ND2D1BWP16P90LVT U149 ( .A1(n84), .A2(n89), .ZN(n217) );
  ND3D1BWP16P90LVT U150 ( .A1(n215), .A2(n216), .A3(n217), .ZN(n79) );
  NR2D1BWP16P90LVT U151 ( .A1(n236), .A2(n225), .ZN(n129) );
  NR2D1BWP16P90LVT U152 ( .A1(n235), .A2(n227), .ZN(n144) );
  INVD1BWP16P90LVT U153 ( .I(a[1]), .ZN(n228) );
  INVD1BWP16P90LVT U154 ( .I(a[2]), .ZN(n227) );
  INVD1BWP16P90LVT U155 ( .I(a[4]), .ZN(n225) );
  INVD1BWP16P90LVT U156 ( .I(b[4]), .ZN(n233) );
  AN2D1BWP16P90LVT U157 ( .A1(a[0]), .A2(b[2]), .Z(n160) );
  CKND1BWP16P90LVT U158 ( .I(b[1]), .ZN(n236) );
  CKND1BWP16P90LVT U159 ( .I(b[3]), .ZN(n234) );
  INVD1BWP16P90LVT U160 ( .I(b[2]), .ZN(n235) );
  INVD1BWP16P90LVT U161 ( .I(a[0]), .ZN(n229) );
  FA1D1BWP16P90LVT U162 ( .A(n22), .B(n27), .CI(n5), .CO(n4), .S(product[11])
         );
  ND2D1BWP16P90LVT U163 ( .A1(n4), .A2(n18), .ZN(n220) );
  INVD1BWP16P90LVT U164 ( .I(a[5]), .ZN(n224) );
  INVD1BWP16P90LVT U165 ( .I(b[0]), .ZN(n237) );
  XOR2D1BWP16P90LVT U166 ( .A1(n18), .A2(n21), .Z(n218) );
  XOR2D1BWP16P90LVT U167 ( .A1(n218), .A2(n4), .Z(product[12]) );
  ND2D1BWP16P90LVT U168 ( .A1(n4), .A2(n21), .ZN(n219) );
  ND2D1BWP16P90LVT U169 ( .A1(n21), .A2(n18), .ZN(n221) );
  NR2D1BWP16P90LVT U170 ( .A1(n236), .A2(n228), .ZN(n153) );
  FA1D1BWP16P90LVT U171 ( .A(n46), .B(n57), .CI(n8), .CO(n7), .S(product[8])
         );
  FA1D1BWP16P90LVT U172 ( .A(n13), .B(n96), .CI(n94), .CO(n12), .S(product[3])
         );
  CKND1BWP16P90LVT U173 ( .I(a[3]), .ZN(n226) );
  CKND1BWP16P90LVT U174 ( .I(a[6]), .ZN(n223) );
  CKND1BWP16P90LVT U175 ( .I(b[5]), .ZN(n232) );
  CKND1BWP16P90LVT U176 ( .I(b[6]), .ZN(n231) );
  CKND1BWP16P90LVT U177 ( .I(b[7]), .ZN(n230) );
  CKND1BWP16P90LVT U178 ( .I(a[7]), .ZN(n222) );
  HA1D1BWP16P90LVT U179 ( .A(n160), .B(n153), .CO(n97), .S(n98) );
  NR2D1BWP16P90 U180 ( .A1(n229), .A2(n237), .ZN(product[0]) );
  NR2D1BWP16P90 U181 ( .A1(n222), .A2(n230), .ZN(n99) );
  NR2D1BWP16P90 U182 ( .A1(n229), .A2(n236), .ZN(n161) );
  NR2D1BWP16P90 U183 ( .A1(n229), .A2(n234), .ZN(n159) );
  NR2D1BWP16P90 U184 ( .A1(n229), .A2(n232), .ZN(n157) );
  NR2D1BWP16P90 U185 ( .A1(n229), .A2(n231), .ZN(n156) );
  NR2D1BWP16P90 U186 ( .A1(n229), .A2(n230), .ZN(n155) );
  NR2D1BWP16P90 U187 ( .A1(n237), .A2(n228), .ZN(n154) );
  NR2D1BWP16P90 U188 ( .A1(n235), .A2(n228), .ZN(n152) );
  NR2D1BWP16P90 U189 ( .A1(n234), .A2(n228), .ZN(n151) );
  NR2D1BWP16P90 U190 ( .A1(n233), .A2(n228), .ZN(n150) );
  NR2D1BWP16P90 U191 ( .A1(n232), .A2(n228), .ZN(n149) );
  NR2D1BWP16P90 U192 ( .A1(n231), .A2(n228), .ZN(n148) );
  NR2D1BWP16P90 U193 ( .A1(n230), .A2(n228), .ZN(n147) );
  NR2D1BWP16P90 U194 ( .A1(n237), .A2(n227), .ZN(n146) );
  NR2D1BWP16P90 U195 ( .A1(n236), .A2(n227), .ZN(n145) );
  NR2D1BWP16P90 U196 ( .A1(n234), .A2(n227), .ZN(n143) );
  NR2D1BWP16P90 U197 ( .A1(n233), .A2(n227), .ZN(n142) );
  NR2D1BWP16P90 U198 ( .A1(n232), .A2(n227), .ZN(n141) );
  NR2D1BWP16P90 U199 ( .A1(n231), .A2(n227), .ZN(n140) );
  NR2D1BWP16P90 U200 ( .A1(n230), .A2(n227), .ZN(n139) );
  NR2D1BWP16P90 U201 ( .A1(n237), .A2(n226), .ZN(n138) );
  NR2D1BWP16P90 U202 ( .A1(n236), .A2(n226), .ZN(n137) );
  NR2D1BWP16P90 U203 ( .A1(n235), .A2(n226), .ZN(n136) );
  NR2D1BWP16P90 U204 ( .A1(n234), .A2(n226), .ZN(n135) );
  NR2D1BWP16P90 U205 ( .A1(n233), .A2(n226), .ZN(n134) );
  NR2D1BWP16P90 U206 ( .A1(n232), .A2(n226), .ZN(n133) );
  NR2D1BWP16P90 U207 ( .A1(n231), .A2(n226), .ZN(n132) );
  NR2D1BWP16P90 U208 ( .A1(n230), .A2(n226), .ZN(n131) );
  NR2D1BWP16P90 U209 ( .A1(n237), .A2(n225), .ZN(n130) );
  NR2D1BWP16P90 U210 ( .A1(n235), .A2(n225), .ZN(n128) );
  NR2D1BWP16P90 U211 ( .A1(n234), .A2(n225), .ZN(n127) );
  NR2D1BWP16P90 U212 ( .A1(n233), .A2(n225), .ZN(n126) );
  NR2D1BWP16P90 U213 ( .A1(n232), .A2(n225), .ZN(n125) );
  NR2D1BWP16P90 U214 ( .A1(n231), .A2(n225), .ZN(n124) );
  NR2D1BWP16P90 U215 ( .A1(n230), .A2(n225), .ZN(n123) );
  NR2D1BWP16P90 U216 ( .A1(n237), .A2(n224), .ZN(n122) );
  NR2D1BWP16P90 U217 ( .A1(n236), .A2(n224), .ZN(n121) );
  NR2D1BWP16P90 U218 ( .A1(n235), .A2(n224), .ZN(n120) );
  NR2D1BWP16P90 U219 ( .A1(n234), .A2(n224), .ZN(n119) );
  NR2D1BWP16P90 U220 ( .A1(n233), .A2(n224), .ZN(n118) );
  NR2D1BWP16P90 U221 ( .A1(n232), .A2(n224), .ZN(n117) );
  NR2D1BWP16P90 U222 ( .A1(n231), .A2(n224), .ZN(n116) );
  NR2D1BWP16P90 U223 ( .A1(n230), .A2(n224), .ZN(n115) );
  NR2D1BWP16P90 U224 ( .A1(n237), .A2(n223), .ZN(n114) );
  NR2D1BWP16P90 U225 ( .A1(n236), .A2(n223), .ZN(n113) );
  NR2D1BWP16P90 U226 ( .A1(n235), .A2(n223), .ZN(n112) );
  NR2D1BWP16P90 U227 ( .A1(n234), .A2(n223), .ZN(n111) );
  NR2D1BWP16P90 U228 ( .A1(n233), .A2(n223), .ZN(n110) );
  NR2D1BWP16P90 U229 ( .A1(n232), .A2(n223), .ZN(n109) );
  NR2D1BWP16P90 U230 ( .A1(n231), .A2(n223), .ZN(n108) );
  NR2D1BWP16P90 U231 ( .A1(n230), .A2(n223), .ZN(n107) );
  NR2D1BWP16P90 U232 ( .A1(n237), .A2(n222), .ZN(n106) );
  NR2D1BWP16P90 U233 ( .A1(n222), .A2(n236), .ZN(n105) );
  NR2D1BWP16P90 U234 ( .A1(n222), .A2(n235), .ZN(n104) );
  NR2D1BWP16P90 U235 ( .A1(n222), .A2(n234), .ZN(n103) );
  NR2D1BWP16P90 U236 ( .A1(n222), .A2(n233), .ZN(n102) );
  NR2D1BWP16P90 U237 ( .A1(n222), .A2(n232), .ZN(n101) );
  NR2D1BWP16P90 U238 ( .A1(n222), .A2(n231), .ZN(n100) );
endmodule


module MULT ( A, B, product );
  input [7:0] A;
  input [7:0] B;
  output [15:0] product;


  MULT_DW_mult_uns_0 mult_6 ( .a(A), .b(B), .product(product) );
endmodule

