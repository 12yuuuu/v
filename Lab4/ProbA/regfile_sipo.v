`timescale 1ns/10ps

// ---------------------- define ---------------------- //
`define AddrSize  7
`define DataSize  32
`define RegSize   128

// ---------------------------------------------------- //
module regfile_sipo(clk, rst, reg_enable, reg_write, src_addr,
				write_addr, write_data, src1, src2, src3, src4, src5);

// ---------------------- input  ---------------------- //
input clk;
input rst;
input reg_enable;
input reg_write;

input [`AddrSize-1:0] src_addr;
input [`AddrSize-1:0] write_addr;
input [`DataSize-1:0] write_data;

// ---------------------- output ---------------------- //
output [`DataSize-1:0] src1;
output [`DataSize-1:0] src2;
output [`DataSize-1:0] src3;
output [`DataSize-1:0] src4;
output [`DataSize-1:0] src5;

// ----------------------  reg   ---------------------- //
reg [`DataSize-1:0] src1;
reg [`DataSize-1:0] src2;
reg [`DataSize-1:0] src3;
reg [`DataSize-1:0] src4;
reg [`DataSize-1:0] src5;
reg [`DataSize-1:0] R [`RegSize-1:0];
// ----------please write your code here--------------- //
integer i;
always@(posedge clk or posedge rst)
begin 	
	if (rst) begin
    	// Reset all registers to 0 on reset
		for(i=0 ; i<`RegSize; i=i+1)
			R[i] <= 32'b0;
		src1 <= 32'b0;
		src2 <= 32'b0;
		src3 <= 32'b0;
		src4 <= 32'b0;
		src5 <= 32'b0;
	end else if (reg_enable) begin
		// Read operation
		src1 <= R[src_addr];
		src2 <= R[src_addr + 7'd1];
		src3 <= R[src_addr + 7'd2];
		src4 <= R[src_addr + 7'd3];
		src5 <= R[src_addr + 7'd4];
		if (reg_write) begin
			// Write operation
			R[write_addr] <= write_data;
		end
	end
end
endmodule
