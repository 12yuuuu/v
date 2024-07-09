module DCU(
    input               clk,
    input               rst,
    input               enable,
    input   [20:0]      hist_addr_offset,

    output  reg [20:0]  hist_addr_train,
    output  reg         hist_ren_train,
    input   [7:0]       hist_rdata_train,

    output  reg [13:0]  hist_addr_predict,
    output  reg         hist_ren_predict,
    input   [7:0]       hist_rdata_predict,

    output  reg [17:0]  distance,
    output  reg         valid
);

    reg [20:0] count;
    reg [7:0] hist_rdata_train_temp, hist_rdata_predict_temp;

    always @(posedge clk or posedge rst) 
    begin
        if (rst) 
        begin
            hist_addr_train <= 21'd0;
            hist_ren_train <= 1'b0;
            hist_addr_predict <= 14'd0;
            hist_ren_predict <= 1'b0;
            distance <= 18'd0;
            valid <= 1'b0;
            hist_rdata_train_temp <= 8'd0;
            hist_rdata_predict_temp <= 8'd0;
            count <= 21'd0;
        end 
        else 
        begin
            if (enable)
            begin
                hist_ren_train <= 1'b1;
                hist_ren_predict <= 1'b1;
                if (count < 21'd16386)
                begin
                    hist_rdata_train_temp <= hist_rdata_train;
                    hist_rdata_predict_temp <= hist_rdata_predict;
                    if (count == 21'd0)
                    begin
                        distance <= 18'd0;
                        valid <= 1'b0;
                        count <= count + 21'd1;
                        hist_addr_train <= hist_addr_offset + 21'd16384;
                        hist_addr_predict <= 14'd0;
                    end
                    else if (count == 21'd1 || count == 21'd2 || count == 21'd2)
                    begin
                        distance <= distance;
                        count <= count + 21'd1;
                        valid <= 1'b0;
                        hist_addr_train <= hist_addr_train + 21'd1;
                        hist_addr_predict <= hist_addr_predict + 14'd1;
                    end
                    else
                    begin
                        distance <= distance + (hist_rdata_predict_temp - hist_rdata_train_temp) ** 2;
                        count <= count + 21'd1;
                        valid <= 1'b0;
                        hist_addr_train <= hist_addr_train + 21'd1;
                        hist_addr_predict <= hist_addr_predict + 14'd1;
                    end
                end
                else
                begin
                    hist_rdata_train_temp <= hist_rdata_train;
                    hist_rdata_predict_temp <= hist_rdata_predict;
                    distance <= distance + (hist_rdata_predict_temp - hist_rdata_train_temp) ** 2;
                    count <= 21'd0;
                    valid <= 1'b1;
                    hist_addr_train <= hist_addr_train;
                    hist_addr_predict <= hist_addr_predict;
                end
            end
            else
            begin
                hist_addr_train <= 21'd0;
                hist_ren_train <= 1'b0;
                hist_addr_predict <= 14'd0;
                hist_ren_predict <= 1'b0;
                distance <= 18'd0;
                valid <= 1'b0;
                hist_rdata_train_temp <= 8'd0;
                hist_rdata_predict_temp <= 8'd0;
            end
        end
    end
endmodule   