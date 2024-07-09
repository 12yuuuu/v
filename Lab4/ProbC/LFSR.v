module LFSR(
	input clk,
	input rst,
	input seed_val,
	input [7:0] seed,//if rst=1, d=8'd0
	output reg [7:0] d// d[0] = (d[7]^d[5]) ^ (d[4] ^ d[2])
);
	reg [7:0] d_reg;
	wire [7:0] d_LFSR;

	assign d_LFSR = {d_reg[6:0], d_reg[7]^d_reg[5]^d_reg[4]^d_reg[2]};

	always @(posedge clk or posedge rst)
	begin
		if(rst)
			d_reg <= 8'd0;
		else
		begin
			if (seed_val)
				d_reg <= seed;
			else
				d_reg <= d_LFSR;
		end
	end

	always @(*)
	begin
		d = d_reg;
	end
endmodule
