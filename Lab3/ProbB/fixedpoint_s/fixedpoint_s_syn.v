/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06
// Date      : Sat Mar 16 17:13:36 2024
/////////////////////////////////////////////////////////////


module fixedpoint_s_DW_mult_tc_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n17, n19,
         n20, n21, n22, n23, n25, n27, n28, n29, n30, n31, n33, n35, n36, n37,
         n38, n39, n41, n43, n44, n45, n46, n49, n50, n51, n53, n55, n61, n62,
         n63, n64, n67, n69, n71, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n212, n213, n214, n215, n216, n217, n218,
         n219, n227, n257, n258, n259, n260, n261, n262, n263, n264, n265;
  assign n199 = b[0];
  assign n216 = a[7];
  assign n217 = a[5];
  assign n218 = a[3];
  assign n219 = a[1];

  FA1D1BWP16P90LVT U3 ( .A(n80), .B(n79), .CI(n257), .CO(n14), .S(product[13])
         );
  ND2D1BWP16P90LVT U9 ( .A1(n260), .A2(n19), .ZN(n1) );
  ND2D1BWP16P90LVT U12 ( .A1(n82), .A2(n81), .ZN(n19) );
  OAI21D1BWP16P90LVT U14 ( .A1(n23), .A2(n21), .B(n22), .ZN(n20) );
  ND2D1BWP16P90LVT U15 ( .A1(n67), .A2(n22), .ZN(n2) );
  ND2D1BWP16P90LVT U18 ( .A1(n83), .A2(n86), .ZN(n22) );
  ND2D1BWP16P90LVT U23 ( .A1(n262), .A2(n27), .ZN(n3) );
  ND2D1BWP16P90LVT U26 ( .A1(n87), .A2(n90), .ZN(n27) );
  ND2D1BWP16P90LVT U29 ( .A1(n69), .A2(n30), .ZN(n4) );
  ND2D1BWP16P90LVT U32 ( .A1(n91), .A2(n96), .ZN(n30) );
  ND2D1BWP16P90LVT U37 ( .A1(n261), .A2(n35), .ZN(n5) );
  ND2D1BWP16P90LVT U40 ( .A1(n97), .A2(n102), .ZN(n35) );
  ND2D1BWP16P90LVT U43 ( .A1(n71), .A2(n38), .ZN(n6) );
  ND2D1BWP16P90LVT U46 ( .A1(n103), .A2(n108), .ZN(n38) );
  ND2D1BWP16P90LVT U51 ( .A1(n263), .A2(n43), .ZN(n7) );
  ND2D1BWP16P90LVT U54 ( .A1(n109), .A2(n112), .ZN(n43) );
  ND2D1BWP16P90LVT U60 ( .A1(n113), .A2(n116), .ZN(n46) );
  ND2D1BWP16P90LVT U67 ( .A1(n117), .A2(n118), .ZN(n50) );
  ND2D1BWP16P90LVT U72 ( .A1(n264), .A2(n55), .ZN(n10) );
  ND2D1BWP16P90LVT U75 ( .A1(n119), .A2(n122), .ZN(n55) );
  ND2D1BWP16P90LVT U81 ( .A1(n265), .A2(n61), .ZN(n11) );
  ND2D1BWP16P90LVT U84 ( .A1(n154), .A2(n147), .ZN(n61) );
  ND2D1BWP16P90LVT U90 ( .A1(n155), .A2(n123), .ZN(n64) );
  FA1D1BWP16P90LVT U92 ( .A(n125), .B(n84), .CI(n132), .CO(n80), .S(n81) );
  FA1D1BWP16P90LVT U93 ( .A(n85), .B(n126), .CI(n88), .CO(n82), .S(n83) );
  FA1D1BWP16P90LVT U95 ( .A(n92), .B(n140), .CI(n89), .CO(n86), .S(n87) );
  FA1D1BWP16P90LVT U96 ( .A(n133), .B(n94), .CI(n127), .CO(n88), .S(n89) );
  FA1D1BWP16P90LVT U97 ( .A(n98), .B(n100), .CI(n93), .CO(n90), .S(n91) );
  FA1D1BWP16P90LVT U98 ( .A(n128), .B(n134), .CI(n95), .CO(n92), .S(n93) );
  FA1D1BWP16P90LVT U100 ( .A(n104), .B(n101), .CI(n99), .CO(n96), .S(n97) );
  FA1D1BWP16P90LVT U101 ( .A(n148), .B(n135), .CI(n106), .CO(n98), .S(n99) );
  OR2D1BWP16P90LVT U103 ( .A1(n141), .A2(n129), .Z(n100) );
  FA1D1BWP16P90LVT U104 ( .A(n110), .B(n107), .CI(n105), .CO(n102), .S(n103)
         );
  FA1D1BWP16P90LVT U105 ( .A(n130), .B(n142), .CI(n136), .CO(n104), .S(n105)
         );
  HA1D2BWP16P90LVT U106 ( .A(n149), .B(n120), .CO(n106), .S(n107) );
  FA1D1BWP16P90LVT U107 ( .A(n114), .B(n137), .CI(n111), .CO(n108), .S(n109)
         );
  FA1D1BWP16P90LVT U108 ( .A(n150), .B(n131), .CI(n143), .CO(n110), .S(n111)
         );
  FA1D1BWP16P90LVT U109 ( .A(n138), .B(n144), .CI(n115), .CO(n112), .S(n113)
         );
  HA1D2BWP16P90LVT U110 ( .A(n151), .B(n121), .CO(n114), .S(n115) );
  FA1D1BWP16P90LVT U111 ( .A(n152), .B(n139), .CI(n145), .CO(n116), .S(n117)
         );
  HA1D2BWP16P90LVT U112 ( .A(n153), .B(n146), .CO(n118), .S(n119) );
  OAI22D1BWP16P90LVT U113 ( .A1(n204), .A2(n212), .B1(n208), .B2(n164), .ZN(
        n120) );
  AO21D1BWP16P90LVT U114 ( .A1(n204), .A2(n208), .B(n156), .Z(n124) );
  OAI22D1BWP16P90LVT U115 ( .A1(n204), .A2(n157), .B1(n208), .B2(n156), .ZN(
        n78) );
  OAI22D1BWP16P90LVT U116 ( .A1(n204), .A2(n158), .B1(n208), .B2(n157), .ZN(
        n125) );
  OAI22D1BWP16P90LVT U117 ( .A1(n204), .A2(n159), .B1(n208), .B2(n158), .ZN(
        n126) );
  OAI22D1BWP16P90LVT U118 ( .A1(n204), .A2(n160), .B1(n208), .B2(n159), .ZN(
        n127) );
  OAI22D1BWP16P90LVT U119 ( .A1(n204), .A2(n161), .B1(n208), .B2(n160), .ZN(
        n128) );
  OAI22D1BWP16P90LVT U120 ( .A1(n204), .A2(n162), .B1(n208), .B2(n161), .ZN(
        n129) );
  OAI22D1BWP16P90LVT U121 ( .A1(n204), .A2(n163), .B1(n208), .B2(n162), .ZN(
        n130) );
  INR2D1BWP16P90LVT U122 ( .A1(n199), .B1(n208), .ZN(n131) );
  IND2D1BWP16P90LVT U131 ( .A1(n199), .B1(n216), .ZN(n164) );
  OAI22D1BWP16P90LVT U132 ( .A1(n205), .A2(n213), .B1(n209), .B2(n173), .ZN(
        n121) );
  AO21D1BWP16P90LVT U133 ( .A1(n205), .A2(n209), .B(n165), .Z(n132) );
  OAI22D1BWP16P90LVT U134 ( .A1(n205), .A2(n166), .B1(n209), .B2(n165), .ZN(
        n84) );
  OAI22D1BWP16P90LVT U135 ( .A1(n205), .A2(n167), .B1(n209), .B2(n166), .ZN(
        n133) );
  OAI22D1BWP16P90LVT U136 ( .A1(n205), .A2(n168), .B1(n209), .B2(n167), .ZN(
        n134) );
  OAI22D1BWP16P90LVT U137 ( .A1(n205), .A2(n169), .B1(n209), .B2(n168), .ZN(
        n135) );
  OAI22D1BWP16P90LVT U138 ( .A1(n205), .A2(n170), .B1(n209), .B2(n169), .ZN(
        n136) );
  OAI22D1BWP16P90LVT U139 ( .A1(n205), .A2(n171), .B1(n209), .B2(n170), .ZN(
        n137) );
  INR2D1BWP16P90LVT U141 ( .A1(n199), .B1(n209), .ZN(n139) );
  IND2D1BWP16P90LVT U150 ( .A1(n199), .B1(n217), .ZN(n173) );
  OAI22D1BWP16P90LVT U151 ( .A1(n206), .A2(n214), .B1(n210), .B2(n182), .ZN(
        n122) );
  AO21D1BWP16P90LVT U152 ( .A1(n206), .A2(n210), .B(n174), .Z(n140) );
  OAI22D1BWP16P90LVT U154 ( .A1(n206), .A2(n176), .B1(n210), .B2(n175), .ZN(
        n141) );
  OAI22D1BWP16P90LVT U157 ( .A1(n206), .A2(n179), .B1(n210), .B2(n178), .ZN(
        n144) );
  INR2D1BWP16P90LVT U160 ( .A1(n199), .B1(n210), .ZN(n147) );
  IND2D1BWP16P90LVT U169 ( .A1(n199), .B1(n218), .ZN(n182) );
  OAI22D1BWP16P90LVT U170 ( .A1(n207), .A2(n215), .B1(n191), .B2(n227), .ZN(
        n123) );
  AO21D1BWP16P90LVT U171 ( .A1(n207), .A2(n227), .B(n183), .Z(n148) );
  OAI22D1BWP16P90LVT U172 ( .A1(n207), .A2(n184), .B1(n183), .B2(n227), .ZN(
        n149) );
  OAI22D1BWP16P90LVT U173 ( .A1(n207), .A2(n185), .B1(n184), .B2(n227), .ZN(
        n150) );
  OAI22D1BWP16P90LVT U174 ( .A1(n207), .A2(n186), .B1(n185), .B2(n227), .ZN(
        n151) );
  OAI22D1BWP16P90LVT U176 ( .A1(n207), .A2(n188), .B1(n187), .B2(n227), .ZN(
        n153) );
  OAI22D1BWP16P90LVT U177 ( .A1(n207), .A2(n189), .B1(n188), .B2(n227), .ZN(
        n154) );
  OAI22D1BWP16P90LVT U178 ( .A1(n207), .A2(n190), .B1(n189), .B2(n227), .ZN(
        n155) );
  INR2D1BWP16P90LVT U179 ( .A1(n199), .B1(n227), .ZN(product[0]) );
  IND2D1BWP16P90LVT U188 ( .A1(n199), .B1(n219), .ZN(n191) );
  XNR2D1BWP16P90LVT U220 ( .A1(a[6]), .A2(n217), .ZN(n208) );
  XNR2D1BWP16P90LVT U221 ( .A1(a[4]), .A2(n218), .ZN(n209) );
  ND2D1BWP16P90LVT U222 ( .A1(n200), .A2(n208), .ZN(n204) );
  INVD2BWP16P90LVT U223 ( .I(n13), .ZN(product[15]) );
  FA1D1BWP16P90LVT U224 ( .A(n124), .B(n78), .CI(n14), .CO(n13), .S(
        product[14]) );
  INVD1BWP16P90LVT U225 ( .I(a[0]), .ZN(n227) );
  XNR2D1BWP16P90LVT U226 ( .A1(a[2]), .A2(n219), .ZN(n210) );
  ND2D2BWP16P90LVT U227 ( .A1(n202), .A2(n210), .ZN(n206) );
  OAI22D1BWP16P90LVT U228 ( .A1(n206), .A2(n178), .B1(n210), .B2(n177), .ZN(
        n143) );
  INVD1BWP16P90 U229 ( .I(n29), .ZN(n69) );
  XOR2D1BWP16P90 U230 ( .A1(n31), .A2(n4), .Z(product[9]) );
  XNR2D1BWP16P90 U231 ( .A1(n5), .A2(n36), .ZN(product[8]) );
  XNR2D1BWP16P90 U232 ( .A1(n28), .A2(n3), .ZN(product[10]) );
  XNR2D1BWP16P90 U233 ( .A1(n20), .A2(n1), .ZN(product[12]) );
  XOR2D1BWP16P90 U234 ( .A1(n23), .A2(n2), .Z(product[11]) );
  XOR2D1BWP16P90 U235 ( .A1(n8), .A2(n258), .Z(product[5]) );
  XOR2D1BWP16P90 U236 ( .A1(n9), .A2(n51), .Z(product[4]) );
  INVD1BWP16P90 U237 ( .I(n37), .ZN(n71) );
  XOR2D1BWP16P90 U238 ( .A1(n39), .A2(n6), .Z(product[7]) );
  CKND1BWP16P90LVT U239 ( .I(n78), .ZN(n79) );
  IND2D1BWP16P90 U240 ( .A1(n45), .B1(n46), .ZN(n8) );
  IND2D1BWP16P90 U241 ( .A1(n49), .B1(n50), .ZN(n9) );
  XNR2D1BWP16P90 U242 ( .A1(n7), .A2(n44), .ZN(product[6]) );
  OAI22D1BWP16P90 U243 ( .A1(n205), .A2(n172), .B1(n209), .B2(n171), .ZN(n138)
         );
  OAI22D1BWP16P90 U244 ( .A1(n207), .A2(n187), .B1(n186), .B2(n227), .ZN(n152)
         );
  OAI22D1BWP16P90 U245 ( .A1(n206), .A2(n177), .B1(n210), .B2(n176), .ZN(n142)
         );
  OAI22D1BWP16P90 U246 ( .A1(n206), .A2(n180), .B1(n210), .B2(n179), .ZN(n145)
         );
  OAI22D1BWP16P90 U247 ( .A1(n206), .A2(n181), .B1(n210), .B2(n180), .ZN(n146)
         );
  OAI22D1BWP16P90 U248 ( .A1(n206), .A2(n175), .B1(n210), .B2(n174), .ZN(n94)
         );
  OAI21D1BWP16P90LVT U249 ( .A1(n31), .A2(n29), .B(n30), .ZN(n28) );
  AOI21D1BWP16P90LVT U250 ( .A1(n36), .A2(n261), .B(n33), .ZN(n31) );
  CKND1BWP16P90LVT U251 ( .I(n35), .ZN(n33) );
  AOI21D1BWP16P90LVT U252 ( .A1(n28), .A2(n262), .B(n25), .ZN(n23) );
  CKND1BWP16P90LVT U253 ( .I(n27), .ZN(n25) );
  NR2D1BWP16P90LVT U254 ( .A1(n91), .A2(n96), .ZN(n29) );
  OAI21D1BWP16P90LVT U255 ( .A1(n39), .A2(n37), .B(n38), .ZN(n36) );
  XNR2D1BWP16P90LVT U256 ( .A1(n10), .A2(n259), .ZN(product[3]) );
  CKND1BWP16P90LVT U257 ( .I(n21), .ZN(n67) );
  CKND1BWP16P90LVT U258 ( .I(n19), .ZN(n17) );
  AOI21D1BWP16P90LVT U259 ( .A1(n263), .A2(n44), .B(n41), .ZN(n39) );
  CKND1BWP16P90LVT U260 ( .I(n43), .ZN(n41) );
  AOI21D1BWP16P90LVT U261 ( .A1(n264), .A2(n259), .B(n53), .ZN(n51) );
  CKND1BWP16P90LVT U262 ( .I(n55), .ZN(n53) );
  NR2D1BWP16P90LVT U263 ( .A1(n103), .A2(n108), .ZN(n37) );
  AO21D1BWP16P90LVT U264 ( .A1(n20), .A2(n260), .B(n17), .Z(n257) );
  XNR2D1BWP16P90LVT U265 ( .A1(n141), .A2(n129), .ZN(n101) );
  OAI21D1BWP16P90LVT U266 ( .A1(n45), .A2(n258), .B(n46), .ZN(n44) );
  OA21D1BWP16P90LVT U267 ( .A1(n49), .A2(n51), .B(n50), .Z(n258) );
  NR2D1BWP16P90LVT U268 ( .A1(n83), .A2(n86), .ZN(n21) );
  CKND1BWP16P90LVT U269 ( .I(n64), .ZN(n62) );
  IOA21D1BWP16P90LVT U270 ( .A1(n265), .A2(n62), .B(n61), .ZN(n259) );
  OR2D1BWP16P90LVT U271 ( .A1(n82), .A2(n81), .Z(n260) );
  OR2D1BWP16P90LVT U272 ( .A1(n97), .A2(n102), .Z(n261) );
  OR2D1BWP16P90LVT U273 ( .A1(n87), .A2(n90), .Z(n262) );
  NR2D1BWP16P90LVT U274 ( .A1(n113), .A2(n116), .ZN(n45) );
  CKND1BWP16P90LVT U275 ( .I(n84), .ZN(n85) );
  NR2D1BWP16P90LVT U276 ( .A1(n117), .A2(n118), .ZN(n49) );
  IND2D1BWP16P90LVT U277 ( .A1(n63), .B1(n64), .ZN(n12) );
  NR2D1BWP16P90LVT U278 ( .A1(n155), .A2(n123), .ZN(n63) );
  CKND1BWP16P90LVT U279 ( .I(n94), .ZN(n95) );
  OR2D1BWP16P90LVT U280 ( .A1(n109), .A2(n112), .Z(n263) );
  OR2D1BWP16P90LVT U281 ( .A1(n119), .A2(n122), .Z(n264) );
  OR2D1BWP16P90LVT U282 ( .A1(n154), .A2(n147), .Z(n265) );
  CKND1BWP16P90LVT U283 ( .I(n218), .ZN(n214) );
  CKND1BWP16P90LVT U284 ( .I(n219), .ZN(n215) );
  XNR2D1BWP16P90LVT U285 ( .A1(n218), .A2(n199), .ZN(n181) );
  XNR2D1BWP16P90LVT U286 ( .A1(n219), .A2(n199), .ZN(n190) );
  CKND1BWP16P90LVT U287 ( .I(n12), .ZN(product[1]) );
  XNR2D1BWP16P90LVT U288 ( .A1(n11), .A2(n62), .ZN(product[2]) );
  XNR2D1BWP16P90LVT U289 ( .A1(n217), .A2(n199), .ZN(n172) );
  CKND1BWP16P90LVT U290 ( .I(n217), .ZN(n213) );
  XOR2D1BWP16P90LVT U291 ( .A1(a[6]), .A2(n216), .Z(n200) );
  XOR2D1BWP16P90LVT U292 ( .A1(a[2]), .A2(n218), .Z(n202) );
  ND2D1BWP16P90LVT U293 ( .A1(n201), .A2(n209), .ZN(n205) );
  XOR2D1BWP16P90LVT U294 ( .A1(a[4]), .A2(n217), .Z(n201) );
  CKND1BWP16P90LVT U295 ( .I(n216), .ZN(n212) );
  ND2D1BWP16P90LVT U296 ( .A1(n203), .A2(n227), .ZN(n207) );
  XOR2D1BWP16P90LVT U297 ( .A1(a[0]), .A2(n219), .Z(n203) );
  XNR2D1BWP16P90LVT U298 ( .A1(n218), .A2(b[7]), .ZN(n174) );
  XNR2D1BWP16P90LVT U299 ( .A1(n217), .A2(b[7]), .ZN(n165) );
  XNR2D1BWP16P90LVT U300 ( .A1(n216), .A2(b[7]), .ZN(n156) );
  XNR2D1BWP16P90LVT U301 ( .A1(n219), .A2(b[7]), .ZN(n183) );
  XNR2D1BWP16P90LVT U302 ( .A1(n216), .A2(b[6]), .ZN(n157) );
  XNR2D1BWP16P90LVT U303 ( .A1(n217), .A2(b[1]), .ZN(n171) );
  XNR2D1BWP16P90LVT U304 ( .A1(n218), .A2(b[2]), .ZN(n179) );
  XNR2D1BWP16P90LVT U305 ( .A1(n218), .A2(b[1]), .ZN(n180) );
  XNR2D1BWP16P90LVT U306 ( .A1(n216), .A2(b[1]), .ZN(n162) );
  XNR2D1BWP16P90LVT U307 ( .A1(n218), .A2(b[5]), .ZN(n176) );
  XNR2D1BWP16P90LVT U308 ( .A1(n217), .A2(b[3]), .ZN(n169) );
  XNR2D1BWP16P90LVT U309 ( .A1(n217), .A2(b[2]), .ZN(n170) );
  XNR2D1BWP16P90LVT U310 ( .A1(n218), .A2(b[4]), .ZN(n177) );
  XNR2D1BWP16P90LVT U311 ( .A1(n218), .A2(b[3]), .ZN(n178) );
  XNR2D1BWP16P90LVT U312 ( .A1(n218), .A2(b[6]), .ZN(n175) );
  XNR2D1BWP16P90LVT U313 ( .A1(n217), .A2(b[6]), .ZN(n166) );
  XNR2D1BWP16P90LVT U314 ( .A1(n216), .A2(b[4]), .ZN(n159) );
  XNR2D1BWP16P90LVT U315 ( .A1(n216), .A2(b[3]), .ZN(n160) );
  XNR2D1BWP16P90LVT U316 ( .A1(n216), .A2(b[2]), .ZN(n161) );
  XNR2D1BWP16P90LVT U317 ( .A1(n217), .A2(b[4]), .ZN(n168) );
  XNR2D1BWP16P90LVT U318 ( .A1(n217), .A2(b[5]), .ZN(n167) );
  XNR2D1BWP16P90LVT U319 ( .A1(n216), .A2(b[5]), .ZN(n158) );
  XNR2D1BWP16P90LVT U320 ( .A1(n219), .A2(b[1]), .ZN(n189) );
  XNR2D1BWP16P90LVT U321 ( .A1(n219), .A2(b[2]), .ZN(n188) );
  XNR2D1BWP16P90LVT U322 ( .A1(n219), .A2(b[4]), .ZN(n186) );
  XNR2D1BWP16P90LVT U323 ( .A1(n219), .A2(b[3]), .ZN(n187) );
  XNR2D1BWP16P90LVT U324 ( .A1(n219), .A2(b[6]), .ZN(n184) );
  XNR2D1BWP16P90LVT U325 ( .A1(n219), .A2(b[5]), .ZN(n185) );
  XNR2D1BWP16P90LVT U326 ( .A1(n216), .A2(n199), .ZN(n163) );
endmodule


module fixedpoint_s_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n8, n10, n11, n13, n14, n15, n17, n18, n20,
         n21, n22, n24;
  assign n8 = A[5];
  assign n11 = A[4];
  assign n15 = A[3];
  assign n18 = A[2];
  assign n22 = A[1];
  assign n24 = A[0];

  ND2D1BWP16P90LVT U4 ( .A1(n3), .A2(n13), .ZN(n2) );
  ND2D1BWP16P90LVT U8 ( .A1(n13), .A2(n6), .ZN(n5) );
  ND2D1BWP16P90LVT U10 ( .A1(n11), .A2(n8), .ZN(n7) );
  ND2D1BWP16P90LVT U14 ( .A1(n13), .A2(n11), .ZN(n10) );
  ND2D1BWP16P90LVT U19 ( .A1(n18), .A2(n15), .ZN(n14) );
  ND2D1BWP16P90LVT U35 ( .A1(n22), .A2(n24), .ZN(n21) );
  ND2D1BWP16P90 U36 ( .A1(n20), .A2(n18), .ZN(n17) );
  INVD1BWP16P90 U37 ( .I(n24), .ZN(SUM[0]) );
  NR2D1BWP16P90LVT U38 ( .A1(n14), .A2(n21), .ZN(n13) );
  CKND1BWP16P90LVT U39 ( .I(n21), .ZN(n20) );
  NR2D1BWP16P90LVT U40 ( .A1(n7), .A2(n4), .ZN(n3) );
  XNR2D1BWP16P90LVT U41 ( .A1(n17), .A2(n15), .ZN(SUM[3]) );
  XOR2D1BWP16P90LVT U42 ( .A1(n13), .A2(n11), .Z(SUM[4]) );
  CKND1BWP16P90LVT U43 ( .I(A[6]), .ZN(n4) );
  XOR2D1BWP16P90LVT U44 ( .A1(n20), .A2(n18), .Z(SUM[2]) );
  XNR2D1BWP16P90LVT U45 ( .A1(n2), .A2(A[7]), .ZN(SUM[7]) );
  XNR2D1BWP16P90LVT U46 ( .A1(n10), .A2(n8), .ZN(SUM[5]) );
  XOR2D1BWP16P90LVT U47 ( .A1(n5), .A2(n4), .Z(SUM[6]) );
  CKND1BWP16P90LVT U48 ( .I(n7), .ZN(n6) );
  XOR2D1BWP16P90LVT U49 ( .A1(n22), .A2(n24), .Z(SUM[1]) );
endmodule


module fixedpoint_s ( in1, in2, out );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] out;
  wire   N13, N14, N15, N16, N17, N18, N19, N20, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101;
  wire   [15:0] result;

  fixedpoint_s_DW_mult_tc_1 mult_15 ( .a(in1), .b(in2), .product(result) );
  fixedpoint_s_DW01_inc_1 add_22 ( .A({n101, n42, n39, n38, n40, n37, n36, n41}), .SUM({N20, N19, N18, N17, N16, N15, N14, N13}) );
  CKND1BWP16P90LVT U45 ( .I(result[8]), .ZN(n45) );
  CKND1BWP16P90LVT U46 ( .I(result[9]), .ZN(n46) );
  CKND1BWP16P90LVT U47 ( .I(result[12]), .ZN(n49) );
  CKND1BWP16P90LVT U48 ( .I(result[10]), .ZN(n47) );
  CKND1BWP16P90LVT U49 ( .I(result[13]), .ZN(n50) );
  CKND1BWP16P90LVT U50 ( .I(result[11]), .ZN(n48) );
  CKND1BWP16P90LVT U51 ( .I(result[7]), .ZN(n44) );
  CKND1BWP16P90LVT U52 ( .I(result[14]), .ZN(n51) );
  CKMUX2D1BWP16P90LVT U53 ( .I0(result[15]), .I1(n65), .S(result[9]), .Z(n67)
         );
  CKND1BWP16P90LVT U54 ( .I(n94), .ZN(n91) );
  INVD1BWP16P90 U55 ( .I(n76), .ZN(out[0]) );
  MUX2D1BWP16P90 U56 ( .I0(result[15]), .I1(n56), .S(result[12]), .Z(n58) );
  MUX2D1BWP16P90 U57 ( .I0(result[15]), .I1(n62), .S(result[10]), .Z(n64) );
  CKND1BWP16P90LVT U58 ( .I(n92), .ZN(n101) );
  MUX2D1BWP16P90 U59 ( .I0(result[15]), .I1(n53), .S(result[13]), .Z(n55) );
  MUX2D1BWP16P90 U60 ( .I0(result[15]), .I1(n59), .S(result[11]), .Z(n61) );
  MUX2D1BWP16P90LVT U61 ( .I0(result[15]), .I1(n72), .S(result[7]), .Z(n74) );
  ND2D1BWP16P90 U62 ( .A1(result[15]), .A2(n95), .ZN(n90) );
  ND2D1BWP16P90 U63 ( .A1(result[15]), .A2(n88), .ZN(n87) );
  ND2D1BWP16P90 U64 ( .A1(result[15]), .A2(n85), .ZN(n84) );
  ND2D1BWP16P90 U65 ( .A1(result[15]), .A2(n82), .ZN(n81) );
  ND2D1BWP16P90 U66 ( .A1(result[15]), .A2(n79), .ZN(n78) );
  ND2D1BWP16P90 U67 ( .A1(out[0]), .A2(result[15]), .ZN(n75) );
  ND2D1BWP16P90 U68 ( .A1(result[15]), .A2(n66), .ZN(n62) );
  ND2D1BWP16P90 U69 ( .A1(result[15]), .A2(n63), .ZN(n59) );
  ND2D1BWP16P90 U70 ( .A1(result[15]), .A2(n60), .ZN(n56) );
  ND2D1BWP16P90 U71 ( .A1(result[15]), .A2(n57), .ZN(n53) );
  ND2D1BWP16P90 U72 ( .A1(result[15]), .A2(n54), .ZN(n52) );
  IND3D1BWP16P90 U73 ( .A1(n54), .B1(result[15]), .B2(n51), .ZN(n92) );
  IND2D1BWP16P90LVT U74 ( .A1(n66), .B1(n47), .ZN(n63) );
  IND2D1BWP16P90LVT U75 ( .A1(n63), .B1(n48), .ZN(n60) );
  IND2D1BWP16P90LVT U76 ( .A1(n60), .B1(n49), .ZN(n57) );
  IND2D1BWP16P90LVT U77 ( .A1(n88), .B1(n89), .ZN(n95) );
  IND2D1BWP16P90LVT U78 ( .A1(n79), .B1(n80), .ZN(n82) );
  IND2D1BWP16P90LVT U79 ( .A1(n82), .B1(n83), .ZN(n85) );
  IND2D1BWP16P90LVT U80 ( .A1(n85), .B1(n86), .ZN(n88) );
  IND2D1BWP16P90LVT U81 ( .A1(n95), .B1(n96), .ZN(n97) );
  CKND1BWP16P90LVT U82 ( .I(N20), .ZN(n93) );
  IND2D1BWP16P90LVT U83 ( .A1(n69), .B1(n46), .ZN(n66) );
  IND2D1BWP16P90LVT U84 ( .A1(n57), .B1(n50), .ZN(n54) );
  AN2D1BWP16P90LVT U85 ( .A1(n67), .A2(n66), .Z(n36) );
  AN2D1BWP16P90LVT U86 ( .A1(n64), .A2(n63), .Z(n37) );
  AN2D1BWP16P90LVT U87 ( .A1(n58), .A2(n57), .Z(n38) );
  AN2D1BWP16P90LVT U88 ( .A1(n55), .A2(n54), .Z(n39) );
  AN2D1BWP16P90LVT U89 ( .A1(n61), .A2(n60), .Z(n40) );
  AN2D1BWP16P90LVT U90 ( .A1(n70), .A2(n69), .Z(n41) );
  XNR2D1BWP16P90LVT U91 ( .A1(n52), .A2(result[14]), .ZN(n42) );
  IND2D1BWP16P90LVT U92 ( .A1(n73), .B1(n45), .ZN(n69) );
  IND2D1BWP16P90LVT U93 ( .A1(n71), .B1(n44), .ZN(n73) );
  OR4D1BWP16P90LVT U94 ( .A1(result[5]), .A2(result[6]), .A3(result[3]), .A4(
        result[4]), .Z(n43) );
  OR4D1BWP16P90LVT U95 ( .A1(result[1]), .A2(result[2]), .A3(result[0]), .A4(
        n43), .Z(n71) );
  ND2D1BWP16P90LVT U96 ( .A1(result[15]), .A2(n69), .ZN(n65) );
  ND2D1BWP16P90LVT U97 ( .A1(result[15]), .A2(n73), .ZN(n68) );
  MUX2D1BWP16P90LVT U98 ( .I0(result[15]), .I1(n68), .S(result[8]), .Z(n70) );
  ND2D1BWP16P90LVT U99 ( .A1(result[15]), .A2(n71), .ZN(n72) );
  ND2D1BWP16P90LVT U100 ( .A1(n74), .A2(n73), .ZN(n94) );
  MUX2ND2BWP16P90LVT U101 ( .I0(n41), .I1(N13), .S(n91), .ZN(n76) );
  MUX2ND2BWP16P90LVT U102 ( .I0(n36), .I1(N14), .S(n91), .ZN(n77) );
  XOR2D1BWP16P90LVT U103 ( .A1(n77), .A2(n75), .Z(out[1]) );
  MUX2ND2BWP16P90LVT U104 ( .I0(n37), .I1(N15), .S(n91), .ZN(n80) );
  ND2D1BWP16P90LVT U105 ( .A1(n77), .A2(n76), .ZN(n79) );
  XOR2D1BWP16P90LVT U106 ( .A1(n80), .A2(n78), .Z(out[2]) );
  MUX2ND2BWP16P90LVT U107 ( .I0(n40), .I1(N16), .S(n91), .ZN(n83) );
  XOR2D1BWP16P90LVT U108 ( .A1(n83), .A2(n81), .Z(out[3]) );
  MUX2ND2BWP16P90LVT U109 ( .I0(n38), .I1(N17), .S(n91), .ZN(n86) );
  XOR2D1BWP16P90LVT U110 ( .A1(n86), .A2(n84), .Z(out[4]) );
  MUX2ND2BWP16P90LVT U111 ( .I0(n39), .I1(N18), .S(n91), .ZN(n89) );
  XOR2D1BWP16P90LVT U112 ( .A1(n89), .A2(n87), .Z(out[5]) );
  MUX2ND2BWP16P90LVT U113 ( .I0(n42), .I1(N19), .S(n91), .ZN(n96) );
  XOR2D1BWP16P90LVT U114 ( .A1(n96), .A2(n90), .Z(out[6]) );
  AN2D1BWP16P90LVT U115 ( .A1(N20), .A2(n91), .Z(n100) );
  OAI21D1BWP16P90LVT U116 ( .A1(n94), .A2(n93), .B(n92), .ZN(n98) );
  XOR2D1BWP16P90LVT U117 ( .A1(n98), .A2(n97), .Z(n99) );
  MUX2D1BWP16P90LVT U118 ( .I0(n100), .I1(n99), .S(result[15]), .Z(out[7]) );
endmodule

