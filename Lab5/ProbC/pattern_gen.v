module pattern_gen(clk, rst, en, sel, pattern, valid);

input clk, rst;
input en;
input [2:0] sel;
output reg pattern;
output reg valid;

reg [2:0] cs, ns;
parameter idle = 3'd0, p0 = 3'd1, p1 = 3'd2, p2 = 3'd3, p3 = 3'd4;

//fsm
always @(posedge clk or posedge rst)
begin
    if(rst)
        cs <= idle;
    else 
        cs <= ns;
end
 
always @(*)
begin
    case(cs)
	idle: begin
		if(en) 
			ns = p0;
		else
			ns = idle;
	end
	p0: ns = p1;
	p1: ns = p2;
	p2: ns = p3;
	p3: ns = idle;
	endcase
end

always @(*)
begin
    case(cs)
	idle: pattern = 1'd0;
	p0: pattern = sel[2];
	p1: pattern = sel[2];
    p2: pattern = sel[1];
    p3: pattern = sel[0];
	endcase
end

always @(*)
begin
    if(cs == idle)
		valid = 1'd0;
	else	
		valid = 1'd1;
end

endmodule
