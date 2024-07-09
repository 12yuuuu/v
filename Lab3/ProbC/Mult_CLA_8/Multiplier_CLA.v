`include "CLA8.v"

module Multiplier_CLA(
    input   [7:0]   A,
    input   [7:0]   B,
    output  [15:0]  Product
);

    wire [62:0] and_out;
    wire [6:0] carry_wire;
    wire [7:0] Sum[6:0];
    wire zero;
   

    and (and_out[0], A[1], B[0]);
    and (and_out[1], A[2], B[0]);
    and (and_out[2], A[3], B[0]);
    and (and_out[3], A[4], B[0]);
    and (and_out[4], A[5], B[0]);
    and (and_out[5], A[6], B[0]);
    and (and_out[6], A[7], B[0]);
    and (and_out[7], A[0], B[1]);
    and (and_out[8], A[1], B[1]);
    and (and_out[9], A[2], B[1]);
    and (and_out[10], A[3], B[1]);
    and (and_out[11], A[4], B[1]);
    and (and_out[12], A[5], B[1]);
    and (and_out[13], A[6], B[1]);
    and (and_out[14], A[7], B[1]);
    and (and_out[15], A[0], B[2]);
    and (and_out[16], A[1], B[2]);
    and (and_out[17], A[2], B[2]);
    and (and_out[18], A[3], B[2]);
    and (and_out[19], A[4], B[2]);
    and (and_out[20], A[5], B[2]);
    and (and_out[21], A[6], B[2]);
    and (and_out[22], A[7], B[2]);
    and (and_out[23], A[0], B[3]);
    and (and_out[24], A[1], B[3]);
    and (and_out[25], A[2], B[3]);
    and (and_out[26], A[3], B[3]);
    and (and_out[27], A[4], B[3]);
    and (and_out[28], A[5], B[3]);
    and (and_out[29], A[6], B[3]);
    and (and_out[30], A[7], B[3]);
    and (and_out[31], A[0], B[4]);
    and (and_out[32], A[1], B[4]);
    and (and_out[33], A[2], B[4]);
    and (and_out[34], A[3], B[4]);
    and (and_out[35], A[4], B[4]);
    and (and_out[36], A[5], B[4]);
    and (and_out[37], A[6], B[4]);
    and (and_out[38], A[7], B[4]);
    and (and_out[39], A[0], B[5]);
    and (and_out[40], A[1], B[5]);
    and (and_out[41], A[2], B[5]);
    and (and_out[42], A[3], B[5]);
    and (and_out[43], A[4], B[5]);
    and (and_out[44], A[5], B[5]);
    and (and_out[45], A[6], B[5]);
    and (and_out[46], A[7], B[5]);
    and (and_out[47], A[0], B[6]);
    and (and_out[48], A[1], B[6]);
    and (and_out[49], A[2], B[6]);
    and (and_out[50], A[3], B[6]);
    and (and_out[51], A[4], B[6]);
    and (and_out[52], A[5], B[6]);
    and (and_out[53], A[6], B[6]);
    and (and_out[54], A[7], B[6]);
    and (and_out[55], A[0], B[7]);
    and (and_out[56], A[1], B[7]);
    and (and_out[57], A[2], B[7]);
    and (and_out[58], A[3], B[7]);
    and (and_out[59], A[4], B[7]);
    and (and_out[60], A[5], B[7]);
    and (and_out[61], A[6], B[7]);
    and (and_out[62], A[7], B[7]);
    and (zero, 1'b0, 1'b0);
    
    CLA8 cl8(.A({1'b0, and_out[6], and_out[5], and_out[4], and_out[3], and_out[2], and_out[1], and_out[0]}),
                .B({and_out[14], and_out[13], and_out[12], and_out[11], and_out[10], and_out[9], and_out[8], and_out[7]}),
                .Cin(zero), .Sum(Sum[0]), .Cout(carry_wire[0]));
    CLA8 cl7(.A({carry_wire[0], Sum[0][7:1]}), .B({and_out[22], and_out[21], and_out[20], and_out[19], and_out[18], and_out[17], and_out[16], and_out[15]}), 
                .Cin(zero), .Sum(Sum[1]), .Cout(carry_wire[1]));
    CLA8 cl6(.A({carry_wire[1], Sum[1][7:1]}), .B({and_out[30], and_out[29], and_out[28], and_out[27], and_out[26], and_out[25], and_out[24], and_out[23]}),
                .Cin(zero), .Sum(Sum[2]), .Cout(carry_wire[2]));
    CLA8 cl5(.A({carry_wire[2], Sum[2][7:1]}), .B({and_out[38], and_out[37], and_out[36], and_out[35], and_out[34], and_out[33], and_out[32], and_out[31]}),
                .Cin(zero), .Sum(Sum[3]), .Cout(carry_wire[3]));
    CLA8 cl4(.A({carry_wire[3], Sum[3][7:1]}), .B({and_out[46], and_out[45], and_out[44], and_out[43], and_out[42], and_out[41], and_out[40], and_out[39]}),
                .Cin(zero), .Sum(Sum[4]), .Cout(carry_wire[4]));   
    CLA8 cl3(.A({carry_wire[4], Sum[4][7:1]}), .B({and_out[54], and_out[53], and_out[52], and_out[51], and_out[50], and_out[49], and_out[48], and_out[47]}),
                .Cin(zero), .Sum(Sum[5]), .Cout(carry_wire[5]));
    CLA8 cl2(.A({carry_wire[5], Sum[5][7:1]}), .B({and_out[62], and_out[61], and_out[60], and_out[59], and_out[58], and_out[57], and_out[56], and_out[55]}),
                .Cin(zero), .Sum(Sum[6]), .Cout(carry_wire[6])); 

    and (Product[0], A[0], B[0]);
    and (Product[1], Sum[0][0], 1'b1);
    and (Product[2], Sum[1][0], 1'b1);
    and (Product[3], Sum[2][0], 1'b1);
    and (Product[4], Sum[3][0], 1'b1);
    and (Product[5], Sum[4][0], 1'b1);
    and (Product[6], Sum[5][0], 1'b1);
    and (Product[7], Sum[6][0], 1'b1);
    and (Product[8], Sum[6][1], 1'b1);
    and (Product[9], Sum[6][2], 1'b1);
    and (Product[10], Sum[6][3], 1'b1);
    and (Product[11], Sum[6][4], 1'b1);
    and (Product[12], Sum[6][5], 1'b1);
    and (Product[13], Sum[6][6], 1'b1);
    and (Product[14], Sum[6][7], 1'b1);
    and (Product[15], carry_wire[6], 1'b1); 
   
endmodule
