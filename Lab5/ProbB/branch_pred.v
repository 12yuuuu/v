module branch_pred(clk, rst, taken,p_taken);

input       clk, rst;
input       taken;
output reg  p_taken;

reg [2:0] cs, ns;
parameter p0 = 3'd0, pt1 = 3'd1, pt2 = 3'd2, pnt1 = 3'd3, pnt2 = 3'd4;

//fsm
always @(posedge clk or posedge rst)
begin
    if(rst) begin
        cs <= p0;
	end
    else begin
        cs <= ns;
	end
end

always @(*)
begin
	case(cs)
	p0: begin
		ns = pt1;
	end
	pt1: begin
		ns = taken ? pt2 : pnt2;
	end
	pt2: begin
		ns = taken ? pt2 : pt1;
	end
	pnt1: begin
		ns = taken ? pt2 : pnt2;
	end
	pnt2: begin
		ns = taken ? pnt1 : pnt2;
	end
	default: begin
		ns = pt1;
	end
	endcase
end

always @(*)
begin
    if(cs == pt1 || cs == pt2)
		p_taken = 1'd1;
	else
		p_taken = 1'd0;
end

endmodule

