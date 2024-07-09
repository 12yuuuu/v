module LBP
(
	input 	 			clk,
	input 	 			rst,
	input 				enable,
	output 	reg	[11:0] 	gray_addr,
	output 	reg 		gray_OE,	// Read enable signal 
	input 	  	[7:0]  	gray_data,
	output 	reg	[11:0]	lbp_addr,
    output 	reg         lbp_WEN,	// Write enable signal
    output 	reg [7:0] 	lbp_data,
	output	reg			finish
);
//====================================================================
reg [11:0] lbp_addr_value, gray_addr_value;
reg [7:0] lbp_value, lbp_value_t;
reg [7:0] g_c, g_0, g_1, g_2, g_3, g_4, g_5, g_6, g_7;
reg [7:0] g_c_t, g_0_t, g_1_t, g_2_t, g_3_t, g_4_t, g_5_t, g_6_t, g_7_t;
reg [3:0] counter;
reg current_state, next_state;
reg g_0_marked, g_1_marked, g_2_marked, g_3_marked, g_4_marked, g_5_marked, g_6_marked, g_7_marked;
reg g_0_marked_t, g_1_marked_t, g_2_marked_t, g_3_marked_t, g_4_marked_t, g_5_marked_t, g_6_marked_t, g_7_marked_t;
parameter IDLE = 1'b0, CALC = 1'b1;
//====================================================================
always @(*)
begin
    case(current_state)
        IDLE: begin
			if (enable)
			begin
            	next_state = CALC;
			end
			else
            begin
                next_state = IDLE;
			end
        end
        CALC: begin
            if (finish)
			begin
            	next_state = IDLE;
			end
			else
            begin
                next_state = CALC;
			end
        end
    endcase
end

always @(posedge clk or posedge rst)
begin
	if (rst)
        current_state <= IDLE;
	else
        current_state <= next_state;
end

always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        // Reset signals
        gray_addr <= 12'd0;
        lbp_addr <= 12'd0;
        lbp_data <= 8'd0;
    end
    else
    begin
        // Update outputs based on the calculated values
        gray_addr <= gray_addr_value;
        lbp_addr <= lbp_addr_value;
		if (lbp_addr_value < 12'd64 || lbp_addr_value > 12'd4031 || 
		lbp_addr_value % 12'd64 == 12'd0 || lbp_addr_value % 12'd64 == 12'd63)
		begin
            lbp_data <= 8'd0;
        end
		else
        begin
            lbp_data <= lbp_value;
		end
    end
end

always @(*)
begin
	case (current_state)
		IDLE: begin
			gray_OE = 1'b0;
			lbp_WEN = 1'b0;
		end
		CALC: begin
			gray_OE = 1'b1;
			lbp_WEN = 1'b1;
		end
	endcase
end

// update address
always @(posedge clk)
begin
	if (rst)
    begin
		lbp_addr_value <= 12'd0;
    end
    else
	if (lbp_addr_value == 12'd4095)
	begin
        lbp_addr_value <= 12'd0;
		finish <= 1'b1;
	end
    else
    begin
		if (counter == 4'd11)
			lbp_addr_value <= lbp_addr_value + 12'd1;
		else
			lbp_addr_value <= lbp_addr_value;
		finish <= 1'b0;
    end
end

// counter
always @(posedge clk)
begin
	if (rst)
        counter <= 4'd0;
	else
    begin
		if (counter == 4'd11)
            counter <= 4'd0;
        else
            counter <= counter + 4'd1;
	end
end

// gray_addr_value
always @(*)
begin
	gray_addr_value = 12'd0;
	case(counter)
		4'd0: gray_addr_value = lbp_addr_value;
    	4'd1: gray_addr_value = lbp_addr_value - 12'd65;
    	4'd2: gray_addr_value = lbp_addr_value - 12'd64;
    	4'd3: gray_addr_value = lbp_addr_value - 12'd63;
		4'd4: gray_addr_value = lbp_addr_value - 12'd1;
		4'd5: gray_addr_value = lbp_addr_value + 12'd1;
		4'd6: gray_addr_value = lbp_addr_value + 12'd63;
		4'd7: gray_addr_value = lbp_addr_value + 12'd64;
		4'd8: gray_addr_value = lbp_addr_value + 12'd65;
		default: gray_addr_value = 12'd0;
	endcase
end

always @(posedge clk or posedge rst)
begin
	if (rst)
	begin
        g_c_t <= 8'd0;
        g_0_t <= 8'd0;
        g_1_t <= 8'd0;
        g_2_t <= 8'd0;
        g_3_t <= 8'd0;
        g_4_t <= 8'd0;
        g_5_t <= 8'd0;
        g_6_t <= 8'd0;
        g_7_t <= 8'd0;
	end
	else
	begin
		g_c_t <= g_c;
        g_0_t <= g_0;
        g_1_t <= g_1;
        g_2_t <= g_2;
        g_3_t <= g_3;
        g_4_t <= g_4;
        g_5_t <= g_5;
        g_6_t <= g_6;
        g_7_t <= g_7;
	end        
end

// gray_value
always @(*)
begin
	g_c = g_c_t;
	g_0 = g_0_t;
	g_1 = g_1_t;
	g_2 = g_2_t;
	g_3 = g_3_t;
	g_4 = g_4_t;
	g_5 = g_5_t;
	g_6 = g_6_t;
	g_7 = g_7_t;
	case(counter)
	4'd2: g_c = gray_data;
	4'd3: g_0 = gray_data;
	4'd4: g_1 = gray_data;
	4'd5: g_2 = gray_data;
	4'd6: g_3 = gray_data;
	4'd7: g_4 = gray_data;
	4'd8: g_5 = gray_data;
	4'd9: g_6 = gray_data;
	4'd10: g_7 = gray_data;
	endcase
end

always @(posedge clk or posedge rst)
begin
	if (rst)
	begin
        g_0_marked_t <= 1'b0;
		g_1_marked_t <= 1'b0;
		g_2_marked_t <= 1'b0;
		g_3_marked_t <= 1'b0;
		g_4_marked_t <= 1'b0;
		g_5_marked_t <= 1'b0;
		g_6_marked_t <= 1'b0;
		g_7_marked_t <= 1'b0;
		lbp_value_t = 8'd0;
	end
	else
	begin
		g_0_marked_t <= g_0_marked;
		g_1_marked_t <= g_1_marked;
		g_2_marked_t <= g_2_marked;
		g_3_marked_t <= g_3_marked;
		g_4_marked_t <= g_4_marked;
		g_5_marked_t <= g_5_marked;
		g_6_marked_t <= g_6_marked;
		g_7_marked_t <= g_7_marked;
		lbp_value_t = lbp_value;
	end        
end

always @(*)
begin
	g_0_marked = g_0_marked_t;
    g_1_marked = g_1_marked_t;
    g_2_marked = g_2_marked_t;
    g_3_marked = g_3_marked_t;
    g_4_marked = g_4_marked_t;
    g_5_marked = g_5_marked_t;
    g_6_marked = g_6_marked_t;
    g_7_marked = g_7_marked_t;
	lbp_value = lbp_value_t;
	case(counter)
    4'd3: g_0_marked = (g_0 >= g_c) ? 1'b1 : 1'b0;
    4'd4: g_1_marked = (g_1 >= g_c) ? 1'b1 : 1'b0;
    4'd5: g_2_marked = (g_2 >= g_c) ? 1'b1 : 1'b0;
    4'd6: g_3_marked = (g_3 >= g_c) ? 1'b1 : 1'b0;
    4'd7: g_4_marked = (g_4 >= g_c) ? 1'b1 : 1'b0;
    4'd8: g_5_marked = (g_5 >= g_c) ? 1'b1 : 1'b0;
    4'd9: g_6_marked = (g_6 >= g_c) ? 1'b1 : 1'b0;
    4'd10: g_7_marked = (g_7 >= g_c) ? 1'b1 : 1'b0;
	4'd11: lbp_value = g_0_marked * 2**0 + g_1_marked * 2**1 + g_2_marked * 2**2 + g_3_marked * 2**3 +
                      g_4_marked * 2**4 + g_5_marked * 2**5 + g_6_marked * 2**6 + g_7_marked * 2**7;
	default: lbp_value = lbp_value_t;
	endcase
end
endmodule
