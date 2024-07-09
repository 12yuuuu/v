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
reg [7:0] k_c, k_0, k_1, k_2, k_3, k_4, k_5, k_6, k_7, q_00, q_01, q_10, q_11;
reg [3:0] k_counter, n_counter;
reg [3:0] current_state, next_state;
reg [(INT_WIDTH+FRAC_WIDTH)-1:0] rx, ry, w1, w2, w3, w4, x1, x2, y1, y2, tx, ty;
reg [(INT_WIDTH+FRAC_WIDTH)-1:0] q_00_temp, q_01_temp, q_10_temp, q_11_temp, c_d, s_d;
reg [(INT_WIDTH+FRAC_WIDTH)*2-1:0] w_1_data, w_2_data, w_3_data, w_4_data, k_temp, rx_t, ry_t;
parameter [3:0] IDLE = 4'd0, 
                WRITE = 4'd1, 
                READ = 4'd2,
                CALC_rt = 4'd3, 
                CALC_r = 4'd4,
                CALC_xy = 4'd5, 
                CALC_t = 4'd6,
                CALC_wt = 4'd7, 
                CALC_w = 4'd8,
                CALC_kt = 4'd9,
                CALC_kr = 4'd10, 
                CALC_k = 4'd11,
                CALC_lbp = 4'd12,
                DONE = 4'd13;
parameter pi = 25'b0000000110010010000111111;
//====================================================================
always @(posedge clk or posedge rst)
begin
	if (rst)
        current_state <= IDLE;
	else
    begin
        if (k_counter == 4'd8)
            current_state <= WRITE;
        else
            current_state <= next_state;
    end
end

always @(*)
begin
	case (current_state)
		IDLE: 
        begin
			gray_OE = 1'b1;
			lbp_WEN = 1'b0;
            theta_valid = 1'b1;
            finish = 1'b0;
            if (enable)
                next_state = current_state + 4'd1;
            else
                next_state = current_state;
		end
		WRITE: 
        begin
			gray_OE = 1'b1;
			lbp_WEN = 1'b1;
            theta_valid = 1'b1;
            finish = 1'b0;
            if (lbp_addr < 12'd192 || lbp_addr > 12'd3903 || 
                lbp_addr % 12'd64 == 12'd0 || lbp_addr % 12'd64 == 12'd63 ||
                lbp_addr % 12'd64 == 12'd1 || lbp_addr % 12'd64 == 12'd62 ||
                lbp_addr % 12'd64 == 12'd61)
            begin
                if (lbp_addr == 12'd4095)
                    next_state = DONE;
                else
                begin
                    next_state = WRITE;
                end
            end
            else if (k_counter != 4'd0 && n_counter == 4'd0)
                next_state = current_state;
            else
                next_state = current_state + 4'd1;
		end
        READ: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b1;
            finish = 1'b0;
            next_state = current_state + 4'd1;
        end
        CALC_rt: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b1;
            finish = 1'b0;
            if (k_counter == 4'd0)
                next_state = CALC_w;
            else
                next_state = current_state + 4'd1;
        end
        CALC_r: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b1;
            finish = 1'b0;
            next_state = current_state + 4'd1;
        end
        CALC_xy: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b1;
            finish = 1'b0;
            next_state = current_state + 4'd1;
        end
        CALC_t: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b1;
            finish = 1'b0;
            next_state = current_state + 4'd1;
        end
        CALC_wt: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b0;
            finish = 1'b0;
            if (n_counter == 4'd5)
                next_state = current_state + 4'd1;
            else
                next_state = current_state;
        end
        CALC_w: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b0;
            finish = 1'b0;
            next_state = current_state + 4'd1;
        end
        CALC_kt: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b0;
            finish = 1'b0;
            next_state = current_state + 4'd1;
        end
        CALC_kr: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b0;
            finish = 1'b0;
            next_state = current_state + 4'd1;
        end
        CALC_k: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b0;
            finish = 1'b0;
            if (k_counter == 4'd7)
                next_state = current_state + 4'd1;
            else
                next_state = WRITE;
        end
        CALC_lbp: 
        begin
            gray_OE = 1'b1;
            lbp_WEN = 1'b1;
            theta_valid = 1'b0;
            finish = 1'b0;
            next_state = WRITE;
        end
        DONE: 
        begin
            gray_OE = 1'b0;
            lbp_WEN = 1'b0;
            theta_valid = 1'b0;
            finish = 1'b1;
            next_state = IDLE;
        end
        default: 
        begin
            gray_OE = 1'b0;
            lbp_WEN = 1'b0;
            theta_valid = 1'b0;
            finish = 1'b0;
            next_state = current_state;
        end
	endcase
end

always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        lbp_addr <= 12'd0;
    end
    else
    begin
        if (current_state == WRITE && k_counter == 4'd0)
            lbp_addr <= lbp_addr + 12'd1;
        else
            lbp_addr <= lbp_addr;
    end
end

always @(posedge clk)
begin
    if (rst)
    begin
        k_counter <= 4'd0;
        n_counter <= 4'd0;
        c_d <= 25'd0;
        s_d <= 25'd0;
        rx_t <= 50'd0;
        ry_t <= 50'd0;
        rx <= 25'd0;
        ry <= 25'd0;
        tx <= 25'd0;
        ty <= 25'd0;
        x1 <= 25'd0;
        x2 <= 25'd0;
        y1 <= 25'd0;
        y2 <= 25'd0;
        w1 <= 25'd0;
        w2 <= 25'd0;
        w3 <= 25'd0;
        w4 <= 25'd0;
        q_00 <= 8'd0;
        q_01 <= 8'd0;
        q_10 <= 8'd0;
        q_11 <= 8'd0;
        q_00_temp <= 25'd0;
        q_01_temp <= 25'd0;
        q_10_temp <= 25'd0;
        q_11_temp <= 25'd0;
        k_temp <= 50'd0;
        k_c <= 8'd0;
        k_0 <= 8'd0;
        k_1 <= 8'd0;
        k_2 <= 8'd0;
        k_3 <= 8'd0;
        k_4 <= 8'd0;
        k_5 <= 8'd0;
        k_6 <= 8'd0;
        k_7 <= 8'd0;
        w_1_data <= 50'd0;
        w_2_data <= 50'd0;
        w_3_data <= 50'd0;
        w_4_data <= 50'd0;
    end
    else
    begin
        case (current_state)
            IDLE: 
            begin
                lbp_data <= 8'd0;
            end
            WRITE: 
            begin
                if (lbp_addr < 12'd192 || lbp_addr > 12'd3903 || 
                lbp_addr % 12'd64 == 12'd0 || lbp_addr % 12'd64 == 12'd63 ||
                lbp_addr % 12'd64 == 12'd1 || lbp_addr % 12'd64 == 12'd62 ||
                lbp_addr % 12'd64 == 12'd61)
                begin
                    lbp_data <= 8'd0;
                end
                else
                begin
                    if (k_counter == 4'd0)
                    begin
                        gray_addr <= lbp_addr + 12'd1;
                    end
                    else
                    begin
                        case (k_counter)
                            4'd1: theta <= ((pi << 1) * 25'd1) >>> 3;
                            4'd2: theta <= ((pi << 1) * 25'd2) >>> 3;
                            4'd3: theta <= ((pi << 1) * 25'd3) >>> 3;
                            4'd4: theta <= ((pi << 1) * 25'd4) >>> 3;
                            4'd5: theta <= ((pi << 1) * 25'd5) >>> 3;
                            4'd6: theta <= ((pi << 1) * 25'd6) >>> 3;
                            4'd7: theta <= ((pi << 1)* 25'd7) >>> 3;
                            default: theta <= 25'd0;
                        endcase
                    end
                    
                end
            end
            READ: 
            begin
                if (k_counter == 4'd0)
                begin
                    // nothing to do
                end
                else
                begin
                    if (cos_valid && sin_valid)
                    begin
                        if (cos_data[24] == 1'b1) //-
                        begin
                            if (cos_data[15:11] == 5'b00000) //rounding
                            begin
                                c_d <= {9'b100000001, 16'b0};
                            end
                            else
                            begin
                                c_d[24:16] <= 9'b100000000;
                                c_d[15:0] <= ~cos_data[15:0] + 16'd1;
                            end
                        end
                        else //+
                        begin
                            if (cos_data[15:0] == 16'b0000000000000001)
                            begin
                                c_d <= cos_data;
                            end
                            else if (cos_data[15:11] == 5'b11111) //rounding
                            begin
                                c_d <= {9'b000000001, 16'b0};
                            end
                            else
                            begin
                                c_d <= cos_data;
                            end
                        end
                        if (sin_data[24] == 1'b1) //-
                        begin
                            if (sin_data[15:11] == 5'b00000)
                            begin
                                s_d <= {9'b100000001, 16'b0};
                            end
                            else
                            begin
                                s_d[24:16] <= 9'b100000000;
                                s_d[15:0] <= ~sin_data[15:0] + 16'd1;
                            end
                        end
                        else //+
                        begin
                            if (sin_data[15:0] == 16'b0000000000000001)
                            begin
                                s_d <= sin_data;
                            end
                            else if (sin_data[15:11] == 5'b11111)
                            begin
                                s_d <= {9'b000000001, 16'b0};
                            end
                            else
                            begin
                                s_d <= sin_data;
                            end
                        end
                    end
                    else
                    begin
                        c_d <= 25'd0;
                        s_d <= 25'd0;
                    end
                end
            end
            CALC_rt:
            begin
                if (k_counter == 4'd0)
                    k_c <= gray_data; 
                else
                    k_c <= k_c;
                rx_t <= 25'b0000000110000000000000000 * c_d;
                ry_t <= 25'b0000000110000000000000000 * s_d;
            end
            CALC_r:
            begin
                rx <= rx_t[40:16];
                if (ry_t[40] == 1'b0)
                    ry <= {1'b1, ry_t[39:16]};
                else
                    ry <= {1'b0, ry_t[39:16]};
            end
            CALC_xy:
            begin
                if (rx[15:0] > 16'd0)
                begin
                    if (rx[24] == 1'b1)
                    begin
                        x1 <= (rx / 25'd65536) * 25'd65536 + 25'd65536;
                        x2 <= (rx / 25'd65536) * 25'd65536;
                    end
                    else
                    begin
                        x1 <= (rx / 25'd65536) * 25'd65536;
                        x2 <= (rx / 25'd65536) * 25'd65536 + 25'd65536;
                    end
                end
                else
                begin
                    x1 <= (rx / 25'd65536) * 25'd65536;
                    x2 <= (rx / 25'd65536) * 25'd65536;
                end
                if (ry[15:0] > 16'd0)
                begin
                    if (ry[24] == 1'b1)
                    begin
                        y1 <= (ry / 25'd65536) * 25'd65536 + 25'd65536;
                        y2 <= (ry / 25'd65536) * 25'd65536;
                    end
                    else
                    begin
                        y1 <= (ry / 25'd65536) * 25'd65536;
                        y2 <= (ry / 25'd65536) * 25'd65536 + 25'd65536;
                    end
                end
                else
                begin
                    y1 <= (ry / 25'd65536) * 25'd65536;
                    y2 <= (ry / 25'd65536) * 25'd65536;
                end
            end
            CALC_t:
            begin
                if (rx[24] == 1'b1)
                    tx <= (x1 - rx);
                else
                    tx <= (rx - x1);
                if (ry[24] == 1'b1)
                    ty <= (y1 - ry);
                else
                    ty <= (ry - y1);
            end
            CALC_wt:
            begin
                case (n_counter)
                    4'd0:
                    begin
                        if (x1[24] == 1'b1 && y1[24] == 1'b1)
                            gray_addr <= lbp_addr - {4'd0, x1[23:16]} - ({4'd0, y1[23:16]}<<6);
                        else if (x1[24] == 1'b1 && y1[24] == 1'b0)
                            gray_addr <= lbp_addr - {4'd0, x1[23:16]} + ({4'd0, y1[23:16]}<<6);
                        else if (x1[24] == 1'b0 && y1[24] == 1'b1)
                            gray_addr <= lbp_addr + {4'd0, x1[23:16]} - ({4'd0, y1[23:16]}<<6);
                        else
                            gray_addr <= lbp_addr + {4'd0, x1[23:16]} + ({4'd0, y1[23:16]}<<6);
                    end
                    4'd1: 
                    begin
                        if (x1[24] == 1'b1 && y2[24] == 1'b1)
                            gray_addr <= lbp_addr - {4'd0, x1[23:16]} - ({4'd0, y2[23:16]}<<6);
                        else if (x1[24] == 1'b1 && y2[24] == 1'b0)
                            gray_addr <= lbp_addr - {4'd0, x1[23:16]} + ({4'd0, y2[23:16]}<<6);
                        else if (x1[24] == 1'b0 && y2[24] == 1'b1)
                            gray_addr <= lbp_addr + {4'd0, x1[23:16]} - ({4'd0, y2[23:16]}<<6);
                        else
                            gray_addr <= lbp_addr + {4'd0, x1[23:16]} + ({4'd0, y2[23:16]}<<6);
                    end
                    4'd2:
                    begin
                        q_00 <= gray_data;
                        if (x2[24] == 1'b1 && y1[24] == 1'b1)
                            gray_addr <= lbp_addr - {4'd0, x2[23:16]} - ({4'd0, y1[23:16]}<<6);
                        else if (x2[24] == 1'b1 && y1[24] == 1'b0)
                            gray_addr <= lbp_addr - {4'd0, x2[23:16]} + ({4'd0, y1[23:16]}<<6);
                        else if (x2[24] == 1'b0 && y1[24] == 1'b1)
                            gray_addr <= lbp_addr + {4'd0, x2[23:16]} - ({4'd0, y1[23:16]}<<6);
                        else
                            gray_addr <= lbp_addr + {4'd0, x2[23:16]} + ({4'd0, y1[23:16]}<<6);
                    end
                    4'd3:
                    begin
                        q_01 <= gray_data;
                        if (x2[24] == 1'b1 && y2[24] == 1'b1)
                            gray_addr <= lbp_addr - {4'd0, x2[23:16]} - ({4'd0, y2[23:16]}<<6);
                        else if (x2[24] == 1'b1 && y2[24] == 1'b0)
                            gray_addr <= lbp_addr - {4'd0, x2[23:16]} + ({4'd0, y2[23:16]}<<6);
                        else if (x2[24] == 1'b0 && y2[24] == 1'b1)
                            gray_addr <= lbp_addr + {4'd0, x2[23:16]} - ({4'd0, y2[23:16]}<<6);
                        else
                            gray_addr <= lbp_addr + {4'd0, x2[23:16]} + ({4'd0, y2[23:16]}<<6);
                    end
                    4'd4:
                    begin
                        q_10 <= gray_data;
                    end
                    4'd5:
                    begin
                        q_11 <= gray_data;
                    end
                    default:
                    begin
                        // nothing to do
                    end
                endcase
                w_1_data <= ((25'b0000000010000000000000000 - tx) * (25'b0000000010000000000000000 - ty));
                w_2_data <= (tx * (25'b0000000010000000000000000 - ty));
                w_3_data <= ((25'b0000000010000000000000000 - tx) * ty);
                w_4_data <= (tx * ty);
            end
            CALC_w:
            begin
                if (k_counter == 4'd0)
                begin
                    gray_addr <= lbp_addr + 12'd3;
                end
                else
                begin
                    q_00_temp <= {1'b0, q_00, 16'b0};
                    q_01_temp <= {1'b0, q_01, 16'b0};
                    q_10_temp <= {1'b0, q_10, 16'b0};
                    q_11_temp <= {1'b0, q_11, 16'b0};
                    w1 <= w_1_data[40:16];
                    w2 <= w_2_data[40:16];
                    w3 <= w_3_data[40:16];
                    w4 <= w_4_data[40:16];
                end
            end
            CALC_kt:
            begin
                if (k_counter == 4'd0)
                begin
                    // nothing to do
                end
                else
                    k_temp <= (q_00_temp * w1 + q_01_temp * w2 + q_10_temp * w3 + q_11_temp * w4);
            end
            CALC_kr:
            begin
                k_temp <= (k_temp[31] == 1)? k_temp + 50'd4294967296 : k_temp;
            end
            CALC_k:
            begin
                k_0 <= (k_counter == 4'd0) ? gray_data : k_0;
                k_1 <= (k_counter == 4'd1) ? k_temp[39:32] : k_1;
                k_2 <= (k_counter == 4'd2) ? k_temp[39:32] : k_2;
                k_3 <= (k_counter == 4'd3) ? k_temp[39:32] : k_3;
                k_4 <= (k_counter == 4'd4) ? k_temp[39:32] : k_4;
                k_5 <= (k_counter == 4'd5) ? k_temp[39:32] : k_5;
                k_6 <= (k_counter == 4'd6) ? k_temp[39:32] : k_6;
                k_7 <= (k_counter == 4'd7) ? k_temp[39:32] : k_7;
            end
            CALC_lbp:
            begin
                lbp_data[0] <= (k_0 >= k_c) ? 1'b1 : 1'b0;
                lbp_data[1] <= (k_1 >= k_c) ? 1'b1 : 1'b0;
                lbp_data[2] <= (k_2 >= k_c) ? 1'b1 : 1'b0;
                lbp_data[3] <= (k_3 >= k_c) ? 1'b1 : 1'b0;
                lbp_data[4] <= (k_4 >= k_c) ? 1'b1 : 1'b0;
                lbp_data[5] <= (k_5 >= k_c) ? 1'b1 : 1'b0;
                lbp_data[6] <= (k_6 >= k_c) ? 1'b1 : 1'b0;
                lbp_data[7] <= (k_7 >= k_c) ? 1'b1 : 1'b0;
            end
            default:
            begin
                c_d <= 25'd0;
                s_d <= 25'd0;
                rx_t <= 50'd0;
                ry_t <= 50'd0;
                rx <= 25'd0;
                ry <= 25'd0;
                tx <= 25'd0;
                ty <= 25'd0;
                x1 <= 25'd0;
                x2 <= 25'd0;
                y1 <= 25'd0;
                y2 <= 25'd0;
                w1 <= 25'd0;
                w2 <= 25'd0;
                w3 <= 25'd0;
                w4 <= 25'd0;
                q_00 <= 8'd0;
                q_01 <= 8'd0;
                q_10 <= 8'd0;
                q_11 <= 8'd0;
                q_00_temp <= 25'd0;
                q_01_temp <= 25'd0;
                q_10_temp <= 25'd0;
                q_11_temp <= 25'd0;
                k_temp <= 50'd0;
                k_0 <= 8'd0;
                k_1 <= 8'd0;
                k_2 <= 8'd0;
                k_3 <= 8'd0;
                k_4 <= 8'd0;
                k_5 <= 8'd0;
                k_6 <= 8'd0;
                k_7 <= 8'd0;
                w_1_data <= 50'd0;
                w_2_data <= 50'd0;
                w_3_data <= 50'd0;
                w_4_data <= 50'd0;
            end
        endcase
        if (current_state == CALC_k)
            k_counter <= k_counter + 4'd1;
        else if (lbp_addr < 12'd192 || lbp_addr > 12'd3903 || 
                lbp_addr % 12'd64 == 12'd0 || lbp_addr % 12'd64 == 12'd63 ||
                lbp_addr % 12'd64 == 12'd1 || lbp_addr % 12'd64 == 12'd62 ||
                lbp_addr % 12'd64 == 12'd61)
        begin
                k_counter <= 4'd0;
        end
        else
        begin
            if (k_counter == 4'd8)
                k_counter <= 4'd0;
            else
                k_counter <= k_counter;
        end
        if (current_state == CALC_wt)
        begin
            if (n_counter == 4'd5)
                n_counter <= 4'd0;
            else
                n_counter <= n_counter + 4'd1;
        end
        else if (current_state == WRITE)
        begin
            if (k_counter != 4'd0)
                n_counter <= n_counter + 4'd1;
            else
                n_counter <= n_counter;
        end
        else
            n_counter <= 4'd0;
    end
end
endmodule