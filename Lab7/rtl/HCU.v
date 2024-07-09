module HCU(
    input               clk,
    input               rst,
    input               mode,   // 0 is training, 1 is prediction
    input               enable,
    input   [3:0]       gridX,  // 8
    input   [3:0]       gridY,  // 8
    output  reg         lbp_ren,    // Read enable signal to RAM_LBP
    output  reg [11:0]  lbp_addr,
    input       [7:0]   lbp_rdata,

    output  reg         hist_wen_train,
    output  reg [7:0]   hist_wdata_train,
    output  reg [20:0]  hist_addr_train,
    output  reg         hist_ren_train, // enable signal
    input   [7:0]       hist_rdata_train,

    output  reg         hist_wen_predict,
    output  reg [7:0]   hist_wdata_predict,
    output  reg [13:0]  hist_addr_predict,
    output  reg         hist_ren_predict,   // enable signal
    input   [7:0]       hist_rdata_predict,

    output  reg         done
);
    integer i;
    reg [6:0] grid;
    reg [6:0] read_counter;
    reg [7:0] intensity [255:0];
    reg [8:0] write_counter;
    reg current_state, next_state;
    parameter READ = 1'b0, WRITE = 1'b1;

    always @(posedge clk or posedge rst)
    begin
        if (rst)
            current_state <= READ;
        else
            current_state <= next_state;
    end

    always @(*)
    begin
        case (current_state)
        READ: 
        begin
            if (read_counter == 7'd65)
                next_state <= WRITE;
            else
                next_state <= READ;
        end
        WRITE: 
        begin
            if (write_counter == 9'd256)
                next_state <= READ;
            else
                next_state <= WRITE;
        end
        default:
        begin
        end
        endcase
    end

    always @(posedge clk or posedge rst)
    begin
        if (rst)
        begin
            lbp_addr <= 12'd0;
            hist_addr_train <= 21'd0;
            hist_addr_predict <= 21'd0;
            hist_wdata_train <= 8'd0;
            hist_wdata_predict <= 8'd0;
        end
        else
        begin
            case (current_state)
            READ: 
            begin
                // lbp_addr
                if (read_counter == 7'd8 || read_counter == 7'd16 || read_counter == 7'd24 || 
                    read_counter == 7'd32 || read_counter == 7'd40 || read_counter == 7'd48 ||
                    read_counter == 7'd56)
                    lbp_addr <= lbp_addr + 12'd57;
                else
                if (read_counter == 7'd0)
                    lbp_addr <= 12'd64 * (grid / 6'd8) * 6'd8 + 12'd8 * (grid % 6'd8);
                else if (read_counter == 7'd65)
                    lbp_addr <= lbp_addr;
                else
                    lbp_addr <= lbp_addr + 12'd1;

                // intensity
                if (read_counter == 7'd0)
                begin
                    for (int i = 8'd0; i <= 8'd255; i = i + 8'd1)
                    begin
                        intensity[i] <= 8'd0;
                    end
                end
                else
                begin
                    if (read_counter > 7'd1)
                        intensity[lbp_rdata] <= intensity[lbp_rdata] + 8'd1;
                    else
                        intensity[lbp_rdata] <= intensity[lbp_rdata];
                end
            end
            WRITE: 
            begin
                // hist_addr_train, hist_addr_predict
                if (mode == 1'b0)
                begin
                    if (write_counter == 9'd0)
                        hist_addr_train <= hist_addr_train;
                    else
                        hist_addr_train <= hist_addr_train + 21'd1;
                end
                else
                begin
                    if (write_counter == 9'd0)
                        hist_addr_predict <= hist_addr_predict;
                    else
                        hist_addr_predict <= hist_addr_predict + 21'd1;
                end

                // hist_wen_train, hist_wen_predict
                if (mode == 1'b0)
                begin
                    hist_wdata_train <= intensity[write_counter];
                end
                else
                    hist_wdata_predict <= intensity[write_counter];
            end 
            default:
            begin

            end
            endcase
        end
    end

    always @(posedge clk or posedge rst)
    begin
        if (rst)
            write_counter <= 9'd0;
        else
        begin
            if (current_state == WRITE && enable)
            begin
                if (write_counter == 9'd256)
                    write_counter <= 9'd0;
                else
                    write_counter <= write_counter + 9'd1;       
            end
            else
                write_counter <= 9'd0;
        end
    end

    always @(posedge clk or posedge rst)
    begin
        if (rst)
            read_counter <= 7'd0;
        else
        begin
            if (current_state == READ && enable)
            begin
                if (read_counter == 7'd65)
                    read_counter <= 7'd0;
                else
                    read_counter <= read_counter + 7'd1;       
            end
            else
                read_counter <= 7'd0;
        end
    end

    always @(posedge clk or posedge rst)
    begin
        if (rst)
            grid <= 7'd0;
        else
        begin
            if (grid == 7'd64)
                grid <= 7'd0;
            else
            if (read_counter == 7'd64)
                grid <= grid + 7'd1;
            else
                grid <= grid;
        end
    end     

    always @(*)
    begin
        case (mode)
        1'b0:
        begin
            lbp_ren = 1'b1;
            hist_wen_train = 1'b1;
            hist_ren_train = 1'b1;
            hist_wen_predict = 1'b0;
            hist_wdata_predict = 8'd0;
            hist_addr_predict = 14'd0;
            hist_ren_predict = 1'b0;
        end
        1'b1:
        begin
            lbp_ren = 1'b1;
            hist_wen_train = 1'b0;
            hist_wdata_train = 8'd0;
            hist_addr_train = 21'd0;
            hist_ren_train = 1'b0;
            if (done)
                hist_wen_predict = 1'b0;
            else if (enable)
                hist_wen_predict = 1'b1;
            else
                hist_wen_predict = hist_wen_predict;
            hist_ren_predict = 1'b1;
        end
        endcase
    end

    always @(posedge clk or posedge rst)
    begin
        if (rst)
            done <= 1'b0;
        else
        begin
            if (hist_addr_train % 21'd16384 == 21'd16383 || 
                hist_addr_predict % 21'd16384 == 21'd16383)
                done <= 1'b1;
            else
                done <= 1'b0;
        end
    end
endmodule