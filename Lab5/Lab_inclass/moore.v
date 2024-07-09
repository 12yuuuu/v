module moore (clk, rst, din, qout);
	input clk, rst, din;
	output qout;
	reg qout;
	reg [1:0] cs, ns; //next state current state

	parameter s0 = 2'b00,
              s1 = 2'b01,
              s2 = 2'b10,
              s3 = 2'b11;

	always @(posedge clk or posedge rst) begin
		if (rst)
			cs <= s0;
		else
			cs <= ns;
	end

	always @(cs or din) begin//ns case
		case (cs)
		//
		//please write your code here according to the assignment
		s0: begin
            ns = din ? s2 : s1;
        end
        s1: begin
            ns = din ? s1 : s0;
        end
        s2: begin
            ns = din ? s3 : s2;
        end
        s3: begin
            ns = din ? s3 : s1;
        end
        default: begin
            ns = s0;
        end
		//
		endcase
	end

	always @(cs) begin//qout case, only depend on current state
		case (cs)
		//
		//please write your code here according to the assignment
		s0: begin
            qout = 1'b0;
        end
        s1: begin
            qout = 1'b0;
        end
        s2: begin
            qout = 1'b1;
        end
        s3: begin
            qout = 1'b1;
        end
        default: begin
            qout = 1'b0;
        end
		//
		endcase
	end

endmodule

