`timescale 1ns/10ps
`define RGB_DataSize 24
`define D_DataSize   10
// ---------------------- define ---------------------- //

module Manhattan(clk,
                 rst,
                 clear,
                 c_en,
                 if_en,
                 c_in0,
                 c_in1,
                 c_in2,
                 c_in3,
                 c_in4,
                 c_in5,
                 c_in6,
                 c_in7,
                 if_in,
                 d_0,
                 d_1,
                 d_2,
                 d_3,
                 d_4,
                 d_5,
                 d_6,
                 d_7);

  // ---------------------- input  ---------------------- //
  input  clk;
  input  rst;
  input  clear;
  input  c_en;
  input  if_en;
  input  [`RGB_DataSize-1:0] c_in0, c_in1, c_in2, c_in3, c_in4, c_in5, c_in6, c_in7;
  input  [`RGB_DataSize-1:0] if_in;

  // ---------------------- output ---------------------- //
  output [`D_DataSize-1:0]  d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7;

  // ---------------------- Write down Your design below  ---------------------- //
  // Declare variables for RGB values
  reg [7:0] c_in0_R, c_in0_G, c_in0_B;
  reg [7:0] c_in1_R, c_in1_G, c_in1_B;
  reg [7:0] c_in2_R, c_in2_G, c_in2_B;
  reg [7:0] c_in3_R, c_in3_G, c_in3_B;
  reg [7:0] c_in4_R, c_in4_G, c_in4_B;
  reg [7:0] c_in5_R, c_in5_G, c_in5_B;
  reg [7:0] c_in6_R, c_in6_G, c_in6_B;
  reg [7:0] c_in7_R, c_in7_G, c_in7_B;
  reg [7:0] if_in_R, if_in_G, if_in_B;
  reg [7:0] in_d_R [7:0];
  reg [7:0] in_d_G [7:0];
  reg [7:0] in_d_B [7:0];
  reg [9:0] d_0_reg, d_1_reg, d_2_reg, d_3_reg, d_4_reg, d_5_reg, d_6_reg, d_7_reg;
  integer i;
  always@(posedge clk)
  begin
    if (clear)
    begin
      c_in0_R <= 8'b0;
      c_in0_G <= 8'b0;
      c_in0_B <= 8'b0;
      c_in1_R <= 8'b0;
      c_in1_G <= 8'b0;
      c_in1_B <= 8'b0;
      c_in2_R <= 8'b0;
      c_in2_G <= 8'b0;
      c_in2_B <= 8'b0;
      c_in3_R <= 8'b0;
      c_in3_G <= 8'b0;
      c_in3_B <= 8'b0;
      c_in4_R <= 8'b0;
      c_in4_G <= 8'b0;
      c_in4_B <= 8'b0;
      c_in5_R <= 8'b0;
      c_in5_G <= 8'b0;
      c_in5_B <= 8'b0;
      c_in6_R <= 8'b0;
      c_in6_G <= 8'b0;
      c_in6_B <= 8'b0;
      c_in7_R <= 8'b0;
      c_in7_G <= 8'b0;
      c_in7_B <= 8'b0;
      if_in_R <= 8'b0;
      if_in_G <= 8'b0;
      if_in_B <= 8'b0;
    end else begin
      if (c_en)
      begin
        c_in0_R <= c_in0[`RGB_DataSize-1:16];
        c_in0_G <= c_in0[`RGB_DataSize-9:8];
        c_in0_B <= c_in0[`RGB_DataSize-17:0];
        c_in1_R <= c_in1[`RGB_DataSize-1:16];
        c_in1_G <= c_in1[`RGB_DataSize-9:8];
        c_in1_B <= c_in1[`RGB_DataSize-17:0];
        c_in2_R <= c_in2[`RGB_DataSize-1:16];
        c_in2_G <= c_in2[`RGB_DataSize-9:8];
        c_in2_B <= c_in2[`RGB_DataSize-17:0];
        c_in3_R <= c_in3[`RGB_DataSize-1:16];
        c_in3_G <= c_in3[`RGB_DataSize-9:8];
        c_in3_B <= c_in3[`RGB_DataSize-17:0];
        c_in4_R <= c_in4[`RGB_DataSize-1:16];
        c_in4_G <= c_in4[`RGB_DataSize-9:8];
        c_in4_B <= c_in4[`RGB_DataSize-17:0];
        c_in5_R <= c_in5[`RGB_DataSize-1:16];
        c_in5_G <= c_in5[`RGB_DataSize-9:8];
        c_in5_B <= c_in5[`RGB_DataSize-17:0];
        c_in6_R <= c_in6[`RGB_DataSize-1:16];
        c_in6_G <= c_in6[`RGB_DataSize-9:8];
        c_in6_B <= c_in6[`RGB_DataSize-17:0];
        c_in7_R <= c_in7[`RGB_DataSize-1:16];
        c_in7_G <= c_in7[`RGB_DataSize-9:8];
        c_in7_B <= c_in7[`RGB_DataSize-17:0];
      end
      if (if_en) 
      begin
        if_in_R <= if_in[`RGB_DataSize-1:16];
        if_in_G <= if_in[`RGB_DataSize-9:8];
        if_in_B <= if_in[`RGB_DataSize-17:0];
      end
    end
  end
  always@(*)
  begin
    if (rst) 
    begin
      d_0_reg = 10'b0;
      d_1_reg = 10'b0;
      d_2_reg = 10'b0;
      d_3_reg = 10'b0;
      d_4_reg = 10'b0;
      d_5_reg = 10'b0;
      d_6_reg = 10'b0;
      d_7_reg = 10'b0;
    end else begin
      if (clear)
      begin
        for (i=0; i<8; i=i+1)
        begin
          in_d_R[i] = 8'b0;
          in_d_G[i] = 8'b0;
          in_d_B[i] = 8'b0;
        end
      end else begin
        in_d_R[0] = (c_in0_R > if_in_R) ? (c_in0_R - if_in_R) : (if_in_R - c_in0_R);
        in_d_G[0] = (c_in0_G > if_in_G) ? (c_in0_G - if_in_G) : (if_in_G - c_in0_G);
        in_d_B[0] = (c_in0_B > if_in_B) ? (c_in0_B - if_in_B) : (if_in_B - c_in0_B);
        in_d_R[1] = (c_in1_R > if_in_R) ? (c_in1_R - if_in_R) : (if_in_R - c_in1_R);
        in_d_G[1] = (c_in1_G > if_in_G) ? (c_in1_G - if_in_G) : (if_in_G - c_in1_G);
        in_d_B[1] = (c_in1_B > if_in_B) ? (c_in1_B - if_in_B) : (if_in_B - c_in1_B);
        in_d_R[2] = (c_in2_R > if_in_R) ? (c_in2_R - if_in_R) : (if_in_R - c_in2_R);
        in_d_G[2] = (c_in2_G > if_in_G) ? (c_in2_G - if_in_G) : (if_in_G - c_in2_G);
        in_d_B[2] = (c_in2_B > if_in_B) ? (c_in2_B - if_in_B) : (if_in_B - c_in2_B);
        in_d_R[3] = (c_in3_R > if_in_R) ? (c_in3_R - if_in_R) : (if_in_R - c_in3_R);
        in_d_G[3] = (c_in3_G > if_in_G) ? (c_in3_G - if_in_G) : (if_in_G - c_in3_G);
        in_d_B[3] = (c_in3_B > if_in_B) ? (c_in3_B - if_in_B) : (if_in_B - c_in3_B);
        in_d_R[4] = (c_in4_R > if_in_R) ? (c_in4_R - if_in_R) : (if_in_R - c_in4_R);
        in_d_G[4] = (c_in4_G > if_in_G) ? (c_in4_G - if_in_G) : (if_in_G - c_in4_G);
        in_d_B[4] = (c_in4_B > if_in_B) ? (c_in4_B - if_in_B) : (if_in_B - c_in4_B);
        in_d_R[5] = (c_in5_R > if_in_R) ? (c_in5_R - if_in_R) : (if_in_R - c_in5_R);
        in_d_G[5] = (c_in5_G > if_in_G) ? (c_in5_G - if_in_G) : (if_in_G - c_in5_G);
        in_d_B[5] = (c_in5_B > if_in_B) ? (c_in5_B - if_in_B) : (if_in_B - c_in5_B);
        in_d_R[6] = (c_in6_R > if_in_R) ? (c_in6_R - if_in_R) : (if_in_R - c_in6_R);
        in_d_G[6] = (c_in6_G > if_in_G) ? (c_in6_G - if_in_G) : (if_in_G - c_in6_G);
        in_d_B[6] = (c_in6_B > if_in_B) ? (c_in6_B - if_in_B) : (if_in_B - c_in6_B);
        in_d_R[7] = (c_in7_R > if_in_R) ? (c_in7_R - if_in_R) : (if_in_R - c_in7_R);
        in_d_G[7] = (c_in7_G > if_in_G) ? (c_in7_G - if_in_G) : (if_in_G - c_in7_G);
        in_d_B[7] = (c_in7_B > if_in_B) ? (c_in7_B - if_in_B) : (if_in_B - c_in7_B);
        d_0_reg = in_d_R[0] + in_d_G[0] + in_d_B[0];
        d_1_reg = in_d_R[1] + in_d_G[1] + in_d_B[1];
        d_2_reg = in_d_R[2] + in_d_G[2] + in_d_B[2];
        d_3_reg = in_d_R[3] + in_d_G[3] + in_d_B[3];
        d_4_reg = in_d_R[4] + in_d_G[4] + in_d_B[4];
        d_5_reg = in_d_R[5] + in_d_G[5] + in_d_B[5];
        d_6_reg = in_d_R[6] + in_d_G[6] + in_d_B[6];
        d_7_reg = in_d_R[7] + in_d_G[7] + in_d_B[7];
      end
    end
  end
  assign d_0 = d_0_reg;
  assign d_1 = d_1_reg;
  assign d_2 = d_2_reg;
  assign d_3 = d_3_reg;
  assign d_4 = d_4_reg;
  assign d_5 = d_5_reg;
  assign d_6 = d_6_reg;
  assign d_7 = d_7_reg;
endmodule
