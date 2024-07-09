// ================================================ // 
//  Course:      IVCAD 2024 Spring                  //                       
//  Auther:      Zong-Jin CAI (Leo)                 //                         
//  Filename:    Multiplier_CLA.v                   //                               
//  Description: 8*8-bit Multiplier using CLA       //                 
//  Version:     1.0                                // 
//  Date:        2024/02/22                         //     
// ================================================ //    

`include "FA.v"
`include "HA.v"

module Multiplier_WTM(
    input   [7:0]   A,
    input   [7:0]   B,
    output  [15:0]  Product
);

    wire [63:0] pro_wire;
    wire [63:0] C;
    wire [52:0] S;

    and(pro_wire[0], A[0], B[0]);
    and(pro_wire[1], A[0], B[1]);
    and(pro_wire[2], A[0], B[2]);
    and(pro_wire[3], A[0], B[3]);
    and(pro_wire[4], A[0], B[4]);
    and(pro_wire[5], A[0], B[5]);
    and(pro_wire[6], A[0], B[6]);
    and(pro_wire[7], A[0], B[7]);

    and(pro_wire[8], A[1], B[0]);
    and(pro_wire[9], A[1], B[1]);
    and(pro_wire[10], A[1], B[2]);
    and(pro_wire[11], A[1], B[3]);
    and(pro_wire[12], A[1], B[4]);
    and(pro_wire[13], A[1], B[5]);
    and(pro_wire[14], A[1], B[6]);
    and(pro_wire[15], A[1], B[7]);

    and(pro_wire[16], A[2], B[0]);
    and(pro_wire[17], A[2], B[1]);
    and(pro_wire[18], A[2], B[2]);
    and(pro_wire[19], A[2], B[3]);
    and(pro_wire[20], A[2], B[4]);
    and(pro_wire[21], A[2], B[5]);
    and(pro_wire[22], A[2], B[6]);
    and(pro_wire[23], A[2], B[7]);

    and(pro_wire[24], A[3], B[0]);
    and(pro_wire[25], A[3], B[1]);  
    and(pro_wire[26], A[3], B[2]);
    and(pro_wire[27], A[3], B[3]);
    and(pro_wire[28], A[3], B[4]);
    and(pro_wire[29], A[3], B[5]);
    and(pro_wire[30], A[3], B[6]);
    and(pro_wire[31], A[3], B[7]);
    
    and(pro_wire[32], A[4], B[0]);
    and(pro_wire[33], A[4], B[1]);
    and(pro_wire[34], A[4], B[2]);
    and(pro_wire[35], A[4], B[3]);
    and(pro_wire[36], A[4], B[4]);
    and(pro_wire[37], A[4], B[5]);
    and(pro_wire[38], A[4], B[6]);
    and(pro_wire[39], A[4], B[7]);

    and(pro_wire[40], A[5], B[0]);
    and(pro_wire[41], A[5], B[1]);
    and(pro_wire[42], A[5], B[2]);
    and(pro_wire[43], A[5], B[3]);
    and(pro_wire[44], A[5], B[4]);
    and(pro_wire[45], A[5], B[5]);
    and(pro_wire[46], A[5], B[6]);
    and(pro_wire[47], A[5], B[7]);

    and(pro_wire[48], A[6], B[0]);
    and(pro_wire[49], A[6], B[1]);
    and(pro_wire[50], A[6], B[2]);
    and(pro_wire[51], A[6], B[3]);
    and(pro_wire[52], A[6], B[4]);
    and(pro_wire[53], A[6], B[5]);
    and(pro_wire[54], A[6], B[6]);
    and(pro_wire[55], A[6], B[7]);

    and(pro_wire[56], A[7], B[0]);
    and(pro_wire[57], A[7], B[1]);
    and(pro_wire[58], A[7], B[2]);
    and(pro_wire[59], A[7], B[3]);
    and(pro_wire[60], A[7], B[4]);
    and(pro_wire[61], A[7], B[5]);
    and(pro_wire[62], A[7], B[6]);
    and(pro_wire[63], A[7], B[7]);
    
    HA ha0(.A(pro_wire[1]), .B(pro_wire[8]), .Sum(S[0]), .Cout(C[0]));
	FA fa0(.A(pro_wire[2]), .B(pro_wire[9]), .Cin(pro_wire[16]), .Sum(S[1]), .Cout(C[1]));
    FA fa0_1(.A(pro_wire[3]), .B(pro_wire[10]), .Cin(pro_wire[17]), .Sum(S[2]), .Cout(C[2]));
    FA fa0_2(.A(pro_wire[4]), .B(pro_wire[11]), .Cin(pro_wire[18]), .Sum(S[3]), .Cout(C[3]));
    FA fa0_3(.A(pro_wire[5]), .B(pro_wire[12]), .Cin(pro_wire[19]), .Sum(S[4]), .Cout(C[4]));
    FA fa0_4(.A(pro_wire[6]), .B(pro_wire[13]), .Cin(pro_wire[20]), .Sum(S[5]), .Cout(C[5]));
    FA fa0_5(.A(pro_wire[7]), .B(pro_wire[14]), .Cin(pro_wire[21]), .Sum(S[6]), .Cout(C[6]));
	HA ha1(.A(pro_wire[15]), .B(pro_wire[22]), .Sum(S[7]), .Cout(C[7]));

	HA ha2(.A(pro_wire[25]), .B(pro_wire[32]), .Sum(S[8]), .Cout(C[8]));
	FA fa1_0(.A(pro_wire[26]), .B(pro_wire[33]), .Cin(pro_wire[40]), .Sum(S[9]), .Cout(C[9]));
    FA fa1_1(.A(pro_wire[27]), .B(pro_wire[34]), .Cin(pro_wire[41]), .Sum(S[10]), .Cout(C[10]));
    FA fa1_2(.A(pro_wire[28]), .B(pro_wire[35]), .Cin(pro_wire[42]), .Sum(S[11]), .Cout(C[11]));
    FA fa1_3(.A(pro_wire[29]), .B(pro_wire[36]), .Cin(pro_wire[43]), .Sum(S[12]), .Cout(C[12]));
    FA fa1_4(.A(pro_wire[30]), .B(pro_wire[37]), .Cin(pro_wire[44]), .Sum(S[13]), .Cout(C[13]));
    FA fa1_5(.A(pro_wire[31]), .B(pro_wire[38]), .Cin(pro_wire[45]), .Sum(S[14]), .Cout(C[14]));
	HA ha3(.A(pro_wire[39]), .B(pro_wire[46]), .Sum(S[15]), .Cout(C[15]));
	
	HA ha4(.A(S[1]), .B(C[0]), .Sum(S[16]), .Cout(C[16]));
	FA fa2(.A(S[2]), .B(C[1]), .Cin(pro_wire[24]), .Sum(S[17]), .Cout(C[17]));
	FA fa3_0(.A(S[3]), .B(C[2]), .Cin(S[8]), .Sum(S[18]), .Cout(C[18]));
    FA fa3_1(.A(S[4]), .B(C[3]), .Cin(S[9]), .Sum(S[19]), .Cout(C[19]));
    FA fa3_2(.A(S[5]), .B(C[4]), .Cin(S[10]), .Sum(S[20]), .Cout(C[20]));
    FA fa3_3(.A(S[6]), .B(C[5]), .Cin(S[11]), .Sum(S[21]), .Cout(C[21]));
    FA fa3_4(.A(S[7]), .B(C[6]), .Cin(S[12]), .Sum(S[22]), .Cout(C[22]));
	FA fa4(.A(pro_wire[23]), .B(C[7]), .Cin(S[13]), .Sum(S[23]), .Cout(C[23]));

	HA ha5(.A(C[9]), .B(pro_wire[48]), .Sum(S[24]), .Cout(C[24]));
	FA fa5_0(.A(C[10]), .B(pro_wire[49]), .Cin(pro_wire[56]), .Sum(S[25]), .Cout(C[25]));
    FA fa5_1(.A(C[11]), .B(pro_wire[50]), .Cin(pro_wire[57]), .Sum(S[26]), .Cout(C[26]));
    FA fa5_2(.A(C[12]), .B(pro_wire[51]), .Cin(pro_wire[58]), .Sum(S[27]), .Cout(C[27]));
    FA fa5_3(.A(C[13]), .B(pro_wire[52]), .Cin(pro_wire[59]), .Sum(S[28]), .Cout(C[28]));
    FA fa5_4(.A(C[14]), .B(pro_wire[53]), .Cin(pro_wire[60]), .Sum(S[29]), .Cout(C[29]));
    FA fa5_5(.A(C[15]), .B(pro_wire[54]), .Cin(pro_wire[61]), .Sum(S[30]), .Cout(C[30]));
	HA ha6(.A(pro_wire[55]), .B(pro_wire[62]), .Sum(S[31]), .Cout(C[31]));
		
	HA ha7(.A(S[17]), .B(C[16]), .Sum(S[32]), .Cout(C[32]));
	HA ha8(.A(S[18]), .B(C[17]), .Sum(S[33]), .Cout(C[33]));
	FA fa6(.A(S[19]), .B(C[18]), .Cin(C[8]), .Sum(S[34]), .Cout(C[34]));
	FA fa6_0(.A(S[20]), .B(C[19]), .Cin(S[24]), .Sum(S[35]), .Cout(C[35]));
    FA fa6_1(.A(S[21]), .B(C[20]), .Cin(S[25]), .Sum(S[36]), .Cout(C[36]));
    FA fa6_2(.A(S[22]), .B(C[21]), .Cin(S[26]), .Sum(S[37]), .Cout(C[37]));
    FA fa6_3(.A(S[23]), .B(C[22]), .Cin(S[27]), .Sum(S[38]), .Cout(C[38]));
	FA fa8(.A(S[14]), .B(C[23]), .Cin(S[28]), .Sum(S[39]), .Cout(C[39]));
	HA ha9(.A(S[15]), .B(S[29]), .Sum(S[40]), .Cout(C[40]));
	HA ha10(.A(pro_wire[47]), .B(S[30]), .Sum(S[41]), .Cout(C[41]));
	
	HA ha11_0(.A(S[33]), .B(C[32]), .Sum(S[42]), .Cout(C[42]));
    HA ha11_1(.A(S[34]), .B(C[33]), .Sum(S[43]), .Cout(C[43]));
    HA ha11_2(.A(S[35]), .B(C[34]), .Sum(S[44]), .Cout(C[44]));
	
	FA fa9_0(.A(C[24]), .B(S[36]), .Cin(C[35]), .Sum(S[45]), .Cout(C[45]));
    FA fa9_1(.A(C[25]), .B(S[37]), .Cin(C[36]), .Sum(S[46]), .Cout(C[46]));
    FA fa9_2(.A(C[26]), .B(S[38]), .Cin(C[37]), .Sum(S[47]), .Cout(C[47]));
    FA fa9_3(.A(C[27]), .B(S[39]), .Cin(C[38]), .Sum(S[48]), .Cout(C[48]));
    FA fa9_4(.A(C[28]), .B(S[40]), .Cin(C[39]), .Sum(S[49]), .Cout(C[49]));
    FA fa9_5(.A(C[29]), .B(S[41]), .Cin(C[40]), .Sum(S[50]), .Cout(C[50]));
	FA fa10(.A(C[30]), .B(S[31]), .Cin(C[41]), .Sum(S[51]), .Cout(C[51]));
	HA ha12(.A(C[31]), .B(pro_wire[63]), .Sum(S[52]), .Cout(C[52]));
	
    assign Product[0] = pro_wire[0];
	assign Product[1] = S[0];
	assign Product[2] = S[16];
	assign Product[3] = S[32];
    assign Product[4] = S[42];
	HA ha13(.A(S[43]), .B(C[42]), .Sum(Product[5]), .Cout(C[53]));
	FA fa11_0(.A(S[44]), .B(C[43]), .Cin(C[53]), .Sum(Product[6]), .Cout(C[54]));
    FA fa11_1(.A(S[45]), .B(C[44]), .Cin(C[54]), .Sum(Product[7]), .Cout(C[55]));
    FA fa11_2(.A(S[46]), .B(C[45]), .Cin(C[55]), .Sum(Product[8]), .Cout(C[56]));
    FA fa11_3(.A(S[47]), .B(C[46]), .Cin(C[56]), .Sum(Product[9]), .Cout(C[57]));
    FA fa11_4(.A(S[48]), .B(C[47]), .Cin(C[57]), .Sum(Product[10]), .Cout(C[58]));
    FA fa11_5(.A(S[49]), .B(C[48]), .Cin(C[58]), .Sum(Product[11]), .Cout(C[59]));
    FA fa11_6(.A(S[50]), .B(C[49]), .Cin(C[59]), .Sum(Product[12]), .Cout(C[60]));
    FA fa11_7(.A(S[51]), .B(C[50]), .Cin(C[60]), .Sum(Product[13]), .Cout(C[61]));
    FA fa11_8(.A(S[52]), .B(C[51]), .Cin(C[61]), .Sum(Product[14]), .Cout(C[62]));
	HA ha14(.A(C[52]), .B(C[62]), .Sum(Product[15]), .Cout(C[63]));
endmodule
