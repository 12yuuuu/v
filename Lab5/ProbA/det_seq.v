module det_seq(clk, rst, d, q, num);

input clk, rst;
input d;
output reg q;
output reg [2:0] num;

reg [2:0] cs, ns;
parameter one = 3'd0, two = 3'd1, three = 3'd2;
parameter four = 3'd3, five = 3'd4, six = 3'd5, correct = 3'd6;

// reset
always @(posedge clk or posedge rst)
begin
    if(rst)
        cs <= one;
    else 
        cs <= ns;
end

// update state
always @(*)
begin
    case(cs)
    one: begin //1
        ns = (d) ? two : one;
	end
	two: begin //0
        ns = (!d) ? three : two;
	end
	three: begin //1
        ns = (d) ? four : one;
	end
	four: begin //0
        ns = (!d) ? five : two;
	end
	five: begin //1
        ns = (d) ? six : one;
	end
	six: begin //1
        ns = (d) ? correct : five;
	end
    correct: begin
        ns = (d) ? two : three;
    end
	default: ns = one;
	endcase
end 

// output
always@(*)
begin
	if(cs == correct)
		q = 1'd1;
	else
		q = 1'd0;
end
	
always@(posedge clk	or posedge rst)
begin
	if(rst)
		num <= 3'd0;
	else if(cs == correct)
		num <= num + 3'd1;
	else
		num <= num;
end

endmodule






















