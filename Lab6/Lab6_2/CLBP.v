module CLBP
#(
    parameter INT_WIDTH     = 9,
    parameter FRAC_WIDTH    = 16
)
(
    input                                       clk,
    input                                       rst,
    input                                       enable,
    output reg  [11:0]                          gray_addr,
    output reg                                  gray_OE,
    input       [7:0]                           gray_data,
    output reg  [11:0]                          lbp_addr,
    output reg                                  lbp_WEN,
    output reg  [7:0]                           lbp_data,
    output reg  [(INT_WIDTH+FRAC_WIDTH)-1:0]    theta, // in radian
    output reg                                  theta_valid,
    input       [(INT_WIDTH+FRAC_WIDTH)-1:0]    cos_data,
    input                                       cos_valid,
    input       [(INT_WIDTH+FRAC_WIDTH)-1:0]    sin_data,
    input                                       sin_valid,
    output reg                                  finish
    );  
//====================================================================
reg [11:0] lbp_addr_value, gray_addr_value;
reg [7:0] lbp_value, lbp_value_t;
reg [7:0] k_c, k_0, k_1, k_2, k_3, k_4, k_5, k_6, k_7, q_00, q_01, q_10, q_11;
reg [7:0] k_c_t, k_0_t, k_1_t, k_2_t, k_3_t, k_4_t, k_5_t, k_6_t, k_7_t, q_00_t, q_01_t, q_10_t, q_11_t;
reg [5:0] counter;
reg current_state, next_state;
reg k_0_marked, k_1_marked, k_2_marked, k_3_marked, k_4_marked, k_5_marked, k_6_marked, k_7_marked;
reg k_0_marked_t, k_1_marked_t, k_2_marked_t, k_3_marked_t, k_4_marked_t, k_5_marked_t, k_6_marked_t, k_7_marked_t;
reg [(INT_WIDTH+FRAC_WIDTH)-1:0] rx, ry, w1, w2, w3, w4, x1, x2, y1, y2, tx, ty, ry_t, theta_t;
reg [(INT_WIDTH+FRAC_WIDTH)-1:0] rx_t, w1_t, w2_t, w3_t, w4_t, x1_t, x2_t, y1_t, y2_t, tx_t, ty_t, ry_t_t, ry_t_tt;
reg [(INT_WIDTH+FRAC_WIDTH)-1:0] q_00_temp, q_01_temp, q_10_temp, q_11_temp, c_d, s_d;
reg [(INT_WIDTH+FRAC_WIDTH)-1:0] c_d_t, s_d_t;
reg [(INT_WIDTH+FRAC_WIDTH)*2-1:0] w_1_data, w_2_data, w_3_data, w_4_data, k_temp;
reg [(INT_WIDTH+FRAC_WIDTH)*2-1:0] w_1_data_t, w_2_data_t, w_3_data_t, w_4_data_t, k_temp_t;
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
		if (lbp_addr_value < 12'd192 || lbp_addr_value > 12'd3903 || 
            lbp_addr_value % 12'd64 == 12'd0 || lbp_addr_value % 12'd64 == 12'd63 ||
            lbp_addr_value % 12'd64 == 12'd1 || lbp_addr_value % 12'd64 == 12'd62 ||
            lbp_addr_value % 12'd64 == 12'd2 || lbp_addr_value % 12'd64 == 12'd61)
		begin
            lbp_data <= 8'b0;
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
            theta_valid = 1'b0;
		end
		CALC: begin
			gray_OE = 1'b1;
			lbp_WEN = 1'b1;
            theta_valid = 1'b1;
		end
	endcase
end

// update address
always @(posedge clk or posedge rst)
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
		if (counter == 6'd32)
			lbp_addr_value <= lbp_addr_value + 12'd1;
		else
			lbp_addr_value <= lbp_addr_value;
    end
end

// counter
always @(posedge clk)
begin
	if (rst)
        counter <= 6'd0;
	else
    begin
		if (counter == 6'd32)
            counter <= 6'd0;
        else
            counter <= counter + 6'd1;
	end
end

// gray_addr_value
always @(*)
begin
    case(counter)
		6'd0: gray_addr_value = lbp_addr_value;
    	6'd1: gray_addr_value = lbp_addr_value + 12'd3;     // k_0
    	6'd2: gray_addr_value = lbp_addr_value - 12'd190;   // k_1  // q_00
        6'd3: gray_addr_value = lbp_addr_value - 12'd126;           // q_01
        6'd4: gray_addr_value = lbp_addr_value - 12'd189;           // q_10
        6'd5: gray_addr_value = lbp_addr_value - 12'd125;           // q_11
    	6'd6: gray_addr_value = lbp_addr_value - 12'd192;    // k_2
        6'd7: gray_addr_value = lbp_addr_value - 12'd128;
        6'd8: gray_addr_value = lbp_addr_value - 12'd192;
        6'd9: gray_addr_value = lbp_addr_value - 12'd128;
		6'd10: gray_addr_value = lbp_addr_value - 12'd195;    // k_3 // q_00
        6'd11: gray_addr_value = lbp_addr_value - 12'd131;           // q_01
        6'd12: gray_addr_value = lbp_addr_value - 12'd194;           // q_10
        6'd13: gray_addr_value = lbp_addr_value - 12'd130;          // q_11
		6'd14: gray_addr_value = lbp_addr_value - 12'd67;     // k_4
        6'd15: gray_addr_value = lbp_addr_value - 12'd3;
        6'd16: gray_addr_value = lbp_addr_value - 12'd67;
        6'd17: gray_addr_value = lbp_addr_value - 12'd3;
		6'd18: gray_addr_value = lbp_addr_value + 12'd125;   // k_5  // q_00
        6'd19: gray_addr_value = lbp_addr_value + 12'd189;           // q_01
        6'd20: gray_addr_value = lbp_addr_value + 12'd126;           // q_10
        6'd21: gray_addr_value = lbp_addr_value + 12'd190;           // q_11
		6'd22: gray_addr_value = lbp_addr_value + 12'd127;    // k_6
        6'd23: gray_addr_value = lbp_addr_value + 12'd191;
        6'd24: gray_addr_value = lbp_addr_value + 12'd127;
        6'd25: gray_addr_value = lbp_addr_value + 12'd191;
		6'd26: gray_addr_value = lbp_addr_value + 12'd130;    // k_7 // q_00
        6'd27: gray_addr_value = lbp_addr_value + 12'd194;           // q_01
        6'd28: gray_addr_value = lbp_addr_value + 12'd131;           // q_10
        6'd29: gray_addr_value = lbp_addr_value + 12'd195;           // q_11
        default: gray_addr_value = 12'd0;
	endcase
end

always @(posedge clk or posedge rst)
begin
	if (rst)
        theta_t <= 25'd0;
	else
        theta_t <= theta;
end

always @(*)
begin
    theta = theta_t;
    case(counter)
        6'd6: theta = (25'd2) * (25'b0000000110010010000111111 * 25'd1) / (25'd8);      // pi/4
        6'd10: theta = (25'd2) * (25'b0000000110010010000111111 * 25'd2) / (25'd8);     // pi/2
        6'd14: theta = (25'd2) * (25'b0000000110010010000111111 * 25'd3) / (25'd8);     // 3pi/4
        6'd18: theta = (25'd2) * (25'b0000000110010010000111111 * 25'd4) / (25'd8);     // pi
        6'd22: theta = (25'd2) * (25'b0000000110010010000111111 * 25'd5) / (25'd8);     // 5pi/4
        6'd26: theta = (25'd2) * (25'b0000000110010010000111111 * 25'd6) / (25'd8);     // 3pi/2
        6'd30: theta = (25'd2) * (25'b0000000110010010000111111 * 25'd7) / (25'd8);     // 7pi/4
        default: theta = 25'd0;
    endcase
end

always @(posedge clk or posedge rst)
begin
	if (rst)
    begin
        k_temp_t <= 50'd0;
        k_1_t <= 8'd0;
        k_2_t <= 8'd0;
        k_3_t <= 8'd0;
        k_4_t <= 8'd0;
        k_5_t <= 8'd0;
        k_6_t <= 8'd0;
        k_7_t <= 8'd0;
    end
	else
    begin
        k_temp_t <= k_temp;
        k_1_t <= k_1;
        k_2_t <= k_2;
        k_3_t <= k_3;
        k_4_t <= k_4;
        k_5_t <= k_5;
        k_6_t <= k_6;
        k_7_t <= k_7;
    end
end

always @(*)
begin
    q_00_temp = {1'b0, q_00, 16'b0};
    q_01_temp = {1'b0, q_01, 16'b0};
    q_10_temp = {1'b0, q_10, 16'b0};
    q_11_temp = {1'b0, q_11, 16'b0};
    k_temp = k_temp_t;
    k_1 = k_1_t;
    k_2 = k_2_t;
    k_3 = k_3_t;
    k_4 = k_4_t;
    k_5 = k_5_t;
    k_6 = k_6_t;
    k_7 = k_7_t;
    case(counter)
        6'd7: 
        begin
            k_temp = (q_00_temp * w1 + q_01_temp * w2 + q_10_temp * w3 + q_11_temp * w4);
            if (k_temp[31] == 1'b1 || k_temp[30] == 1'b1 || k_temp[29] == 1'b1 || 
                k_temp[28] == 1'b1 || k_temp[27] == 1'b1)
                k_1 = k_temp[39:32] + 8'd1;
            else
                k_1 = k_temp[39:32];
        end
        6'd11: 
        begin
            k_temp = (q_00_temp * w1 + q_01_temp * w2 + q_10_temp * w3 + q_11_temp * w4);
            if (k_temp[31] == 1'b1 || k_temp[30] == 1'b1 || k_temp[29] == 1'b1 || 
                k_temp[28] == 1'b1 || k_temp[27] == 1'b1)
                k_2 = k_temp[39:32] + 8'd1;
            else
                k_2 = k_temp[39:32];
        end
        6'd15: 
        begin
            k_temp = (q_00_temp * w1 + q_01_temp * w2 + q_10_temp * w3 + q_11_temp * w4);
            if (k_temp[31] == 1'b1 || k_temp[30] == 1'b1 || k_temp[29] == 1'b1 || 
                k_temp[28] == 1'b1 || k_temp[27] == 1'b1)
                k_3 = k_temp[39:32] + 8'd1;
            else
                k_3 = k_temp[39:32];
        end
        6'd19: 
        begin
            k_temp = (q_00_temp * w1 + q_01_temp * w2 + q_10_temp * w3 + q_11_temp * w4);
            if (k_temp[31] == 1'b1 || k_temp[30] == 1'b1 || k_temp[29] == 1'b1 || 
                k_temp[28] == 1'b1 || k_temp[27] == 1'b1)
                k_4 = k_temp[39:32] + 8'd1;
            else
                k_4 = k_temp[39:32];
        end
        6'd23: 
        begin
            k_temp = (q_00_temp * w1 + q_01_temp * w2 + q_10_temp * w3 + q_11_temp * w4);
            if (k_temp[31] == 1'b1 || k_temp[30] == 1'b1 || k_temp[29] == 1'b1 || 
                k_temp[28] == 1'b1 || k_temp[27] == 1'b1)
                k_5 = k_temp[39:32] + 8'd1;
            else
                k_5 = k_temp[39:32];
        end
        6'd27: 
        begin
            k_temp = (q_00_temp * w1 + q_01_temp * w2 + q_10_temp * w3 + q_11_temp * w4);
            if (k_temp[31] == 1'b1 || k_temp[30] == 1'b1 || k_temp[29] == 1'b1 || 
                k_temp[28] == 1'b1 || k_temp[27] == 1'b1)
                k_6 = k_temp[39:32] + 8'd1;
            else
                k_6 = k_temp[39:32];
        end
        6'd31:
        begin
            k_temp = (q_00_temp * w1 + q_01_temp * w2 + q_10_temp * w3 + q_11_temp * w4);
            if (k_temp[31] == 1'b1 || k_temp[30] == 1'b1 || k_temp[29] == 1'b1 || 
                k_temp[28] == 1'b1 || k_temp[27] == 1'b1)
                k_7 = k_temp[39:32] + 8'd1;
            else
                k_7 = k_temp[39:32];
        end 
        default:
        begin
            k_temp = 50'd0;
        end
    endcase
end

always @(posedge clk or posedge rst)
begin
	if (rst)
    begin
        rx_t <= 25'd0;
        ry_t_t <= 25'd0;
        x1_t <= 25'd0;
        x2_t <= 25'd0;
        y1_t <= 25'd0;
        y2_t <= 25'd0;
        tx_t <= 25'd0;
        ty_t <= 25'd0;
        w1_t <= 25'd0;
        w2_t <= 25'd0;
        w3_t <= 25'd0;
        w4_t <= 25'd0;
        c_d_t <= 25'd0;
        s_d_t <= 25'd0;
        ry_t_tt <= 25'd0;
        w_1_data_t <= 50'd0;
        w_2_data_t <= 50'd0;
        w_3_data_t <= 50'd0;
        w_4_data_t <= 50'd0;
    end
	else
    begin
        rx_t <= rx;
        ry_t_t <= ry;
        x1_t <= x1;
        x2_t <= x2;
        y1_t <= y1;
        y2_t <= y2;
        tx_t <= tx;
        ty_t <= ty;
        w1_t <= w1;
        w2_t <= w2;
        w3_t <= w3;
        w4_t <= w4;
        c_d_t <= c_d;
        s_d_t <= s_d;
        ry_t_tt <= ry_t;
        w_1_data_t <= w_1_data;
        w_2_data_t <= w_2_data;
        w_3_data_t <= w_3_data;
        w_4_data_t <= w_4_data;
    end
end

always @(*)
begin
	rx = rx_t;
    ry = ry_t_t;
    x1 = x1_t;
    x2 = x2_t;
    y1 = y1_t;
    y2 = y2_t;
    tx = tx_t;
    ty = ty_t;
    w1 = w1_t;
    w2 = w2_t;
    w3 = w3_t;
    w4 = w4_t;
    c_d = c_d_t;
    s_d = s_d_t;
    ry_t = ry_t_tt;
    w_1_data = w_1_data_t;
    w_2_data = w_2_data_t;
    w_3_data = w_3_data_t;
    w_4_data = w_4_data_t;
    case(counter)
    6'd7, 6'd11, 6'd15, 6'd19, 6'd23, 6'd27, 6'd31:
    begin
        if (cos_valid && sin_valid)
        begin
            c_d = cos_data;
            s_d = sin_data;
            if (c_d[24] == 1'b1)
            begin
                c_d[24:16] = 9'b100000000;
                c_d[15] = ~c_d[15];
                c_d[14] = ~c_d[14];
                c_d[13] = ~c_d[13];
                c_d[12] = ~c_d[12];
                c_d[11] = ~c_d[11];
                c_d[10] = ~c_d[10];
                c_d[9] = ~c_d[9];
                c_d[8] = ~c_d[8];
                c_d[7] = ~c_d[7];
                c_d[6] = ~c_d[6];
                c_d[5] = ~c_d[5];
                c_d[4] = ~c_d[4];
                c_d[3] = ~c_d[3];
                c_d[2] = ~c_d[2];
                c_d[1] = ~c_d[1];
                c_d[0] = ~c_d[0];
                c_d = c_d + 25'd1;
            end
            else
                c_d = c_d;
            if (s_d[24] == 1'b1)
            begin
                s_d[24:16] = 9'b100000000;
                s_d[15] = ~s_d[15];
                s_d[14] = ~s_d[14];
                s_d[13] = ~s_d[13];
                s_d[12] = ~s_d[12];
                s_d[11] = ~s_d[11];
                s_d[10] = ~s_d[10];
                s_d[9] = ~s_d[9];
                s_d[8] = ~s_d[8];
                s_d[7] = ~s_d[7];
                s_d[6] = ~s_d[6];
                s_d[5] = ~s_d[5];
                s_d[4] = ~s_d[4];
                s_d[3] = ~s_d[3];
                s_d[2] = ~s_d[2];
                s_d[1] = ~s_d[1];
                s_d[0] = ~s_d[0];
                s_d = s_d + 25'd1;
            end
            else
                s_d = s_d;
            if (c_d[15:11] == 5'b11111)
            begin
                c_d = {c_d[24:16], 16'b0} + 25'd65536;
            end
            else
            begin
                c_d = c_d;
            end
            if (s_d[15:11] == 5'b11111)
            begin
                s_d = {s_d[24:16], 16'b0} + 25'd65536;
            end
            else
            begin
                s_d = s_d;
            end
            rx = 3 * c_d;
            ry_t = 3 * s_d;
            if (ry_t[24] == 1'b0)
                ry = {1'b1, ry_t[23:0]};
            else
                ry = {1'b0, ry_t[23:0]};
        end
        else
        begin
            rx = 25'd0;
            ry = 25'd0;
        end
    end
    default:
    begin
        rx = rx_t;
        ry = ry_t;
    end
    endcase
    x1 = (rx / 25'd65536) * 25'd65536;
    x2 = (rx / 25'd65536) * 25'd65536;
    if (rx[15:0] > 16'd0)
    begin
        if (rx[24] == 1'b1)
            x1 = x1 + 25'd65536;
        else
            x2 = x2 + 25'd65536;
    end
    else
    begin
        x1 = x1;
        x2 = x2;
    end
    y1 = (ry / 25'd65536) * 25'd65536;
    y2 = (ry / 25'd65536) * 25'd65536;
    if (ry[15:0] > 16'd0)
    begin
        if (ry[24] == 1'b1)
            y1 = y1 + 25'd65536;
        else
            y2 = y2 + 25'd65536;
    end
    else
    begin
        y1 = y1_t;
        y2 = y2_t;
    end
    if (rx[24] == 1'b1)
        tx = (x1 - rx);
    else
        tx = (rx - x1);
    if (ry[24] == 1'b1)
        ty = (y1 - ry);
    else
        ty = (ry - y1);
    w_1_data = ((25'b0000000010000000000000000 - tx) * (25'b0000000010000000000000000 - ty));
    w_2_data = (tx * (25'b0000000010000000000000000 - ty));
    w_3_data = ((25'b0000000010000000000000000 - tx) * ty);
    w_4_data = (tx * ty);
    w1 = w_1_data[40:16];
    if (w_1_data[15] == 1'b1)
        w1= w1 + 25'd1;
    else
        w1 = w1;
    w2 = w_2_data[40:16];
    if (w_2_data[15] == 1'b1)
        w2 = w2 + 25'd1;
    else
        w2 = w2;
    w3 = w_3_data[40:16];
    if (w_3_data[15] == 1'b1)
        w3 = w3 + 25'd1;
    else
        w3 = w3;
    w4 = w_4_data[40:16];
    if (w_4_data[15] == 1'b1)
        w4 = w4 + 25'd1;
    else
        w4 = w4;
end

always @(posedge clk or posedge rst)
begin
	if (rst)
    begin
        k_c_t <= 8'd0;
        k_0_t <= 8'd0;
        q_00_t <= 8'd0;
        q_01_t <= 8'd0;
        q_10_t <= 8'd0;
        q_11_t <= 8'd0;
    end
	else
    begin
        k_c_t <= k_c;
        k_0_t <= k_0;
        q_00_t <= q_00;
        q_01_t <= q_01;
        q_10_t <= q_10;
        q_11_t <= q_11;
    end
end

// gray_value
always @(*)
begin
    k_c = k_c_t;
    k_0 = k_0_t;
    q_00 = q_00_t;
    q_01 = q_01_t;
    q_10 = q_10_t;
    q_11 = q_11_t;
    case(counter)
    6'd2: k_c = gray_data;
    6'd3: k_0 = gray_data;
    6'd4: q_00 = gray_data; // k_1
    6'd5: q_01 = gray_data;
    6'd6: q_10 = gray_data;
    6'd7: q_11 = gray_data;
    6'd8: q_00 = gray_data; // k_2
    6'd9: q_01 = gray_data;
    6'd10: q_10 = gray_data;
    6'd11: q_11 = gray_data;
    6'd12: q_00 = gray_data; // k_3
    6'd13: q_01 = gray_data;
    6'd14: q_10 = gray_data;
    6'd15: q_11 = gray_data;
    6'd16: q_00 = gray_data; // k_4
    6'd17: q_01 = gray_data;
    6'd18: q_10 = gray_data;
    6'd19: q_11 = gray_data;
    6'd20: q_00 = gray_data; // k_5
    6'd21: q_01 = gray_data;
    6'd22: q_10 = gray_data;
    6'd23: q_11 = gray_data;
    6'd24: q_00 = gray_data; // k_6
    6'd25: q_01 = gray_data;
    6'd26: q_10 = gray_data;
    6'd27: q_11 = gray_data;
    6'd28: q_00 = gray_data; // k_7
    6'd29: q_01 = gray_data;
    6'd30: q_10 = gray_data;
    6'd31: q_11 = gray_data;
    default: k_c = k_c_t;
    endcase
end

always @(posedge clk or posedge rst)
begin
	if (rst)
    begin
        k_0_marked_t <= 1'b0;
        k_1_marked_t <= 1'b0;
        k_2_marked_t <= 1'b0;
        k_3_marked_t <= 1'b0;
        k_4_marked_t <= 1'b0;
        k_5_marked_t <= 1'b0;
        k_6_marked_t <= 1'b0;
        k_7_marked_t <= 1'b0;
        lbp_value_t <= 8'd0;
    end
	else
    begin
        k_0_marked_t <= k_0_marked;
        k_1_marked_t <= k_1_marked;
        k_2_marked_t <= k_2_marked;
        k_3_marked_t <= k_3_marked;
        k_4_marked_t <= k_4_marked;
        k_5_marked_t <= k_5_marked;
        k_6_marked_t <= k_6_marked;
        k_7_marked_t <= k_7_marked;
        lbp_value_t <= lbp_value;
    end
end

always @(*)
begin
    k_0_marked = k_0_marked_t;
    k_1_marked = k_0_marked_t;
    k_2_marked = k_0_marked_t;
    k_3_marked = k_0_marked_t;
    k_4_marked = k_0_marked_t;
    k_5_marked = k_0_marked_t;
    k_6_marked = k_0_marked_t;
    k_7_marked = k_0_marked_t;
    lbp_value = lbp_value_t;
	case(counter)
    6'd3: k_0_marked = (k_0 > k_c) ? 1'b1 : 1'b0;
    6'd7: k_1_marked = (k_1 > k_c) ? 1'b1 : 1'b0;
    6'd11: k_2_marked = (k_2 > k_c) ? 1'b1 : 1'b0;
    6'd15: k_3_marked = (k_3 > k_c) ? 1'b1 : 1'b0;
    6'd19: k_4_marked = (k_4 > k_c) ? 1'b1 : 1'b0;
    6'd23: k_5_marked = (k_5 > k_c) ? 1'b1 : 1'b0;
    6'd27: k_6_marked = (k_6 > k_c) ? 1'b1 : 1'b0;
    6'd31: k_7_marked = (k_7 > k_c) ? 1'b1 : 1'b0;
	6'd32: lbp_value = k_0_marked * 2**0 + k_1_marked * 2**1 + k_2_marked * 2**2 + k_3_marked * 2**3 +
                      k_4_marked * 2**4 + k_5_marked * 2**5 + k_6_marked * 2**6 + k_7_marked * 2**7;
    default: lbp_value = lbp_value_t;
	endcase
end
endmodule
