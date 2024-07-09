module Comparator(
    input                   clk,
    input                   rst,
    input                   enable,
    input   [7:0]           histcount,
    input                   dcu_valid,
    input   [17:0]          distance,
    input   [4:0]           id,

    output  reg             id_ren,
    output  reg [7:0]       id_counter,
    output  reg             dcu_enable,
    output  reg [4:0]       label,
    output  reg [17:0]      minDistance,
    output  reg [20:0]      hist_addr_offset,
    output  reg             done
);

	reg [17:0] min_distance;
    reg [4:0] min_ID;
    reg [7:0] histcount_record;

    always @(posedge clk or posedge rst) begin
        if (rst) 
        begin
            id_ren <= 1'b0;
            id_counter <= 8'd0;
            dcu_enable <= 1'b0;
            label <= 5'b0;
            minDistance <= 18'd0;
            hist_addr_offset <= 21'd0;
            done <= 1'b0;

            min_distance <= 18'd0;
            min_ID <= 5'd0;
        end 
        else 
        begin
            if (enable)
            begin
                id_ren <= 1'b1;
                dcu_enable <= 1'b1;
                if (dcu_enable)  
                    histcount_record <= histcount_record;  
                else
                    histcount_record <= histcount;
                if (dcu_valid) 
                begin
                    if (id_counter == histcount_record - 8'd1) 
                    begin
                        label <= min_ID;
                        minDistance <= min_distance;
                        done <= 1'b1;
                    end 
                    else 
                    begin
                        if (distance < min_distance) 
                        begin
                            min_distance <= distance;
                            min_ID <= id;
                        end

                        id_counter <= id_counter + 8'd1;
                        hist_addr_offset <= 21'd16384 * (id_counter + 8'd1);
                    end
                end 
                else 
                begin
                    id_ren <= 1'b1;
                    id_counter <= id_counter;
                    label <= 5'd0;
                    minDistance <= minDistance;
                    hist_addr_offset <= hist_addr_offset;
                    done <= 1'b0;

                    min_distance <= min_distance;
                    min_ID <= min_ID;
                end
            end
            else
            begin
                id_ren <= 1'b1;
                id_counter <= 8'd0;
                dcu_enable <= 1'b0;
                label <= 5'b0;
                minDistance <= 18'b111111111111111111;
                hist_addr_offset <= 21'd0;
                done <= 1'b0;

                min_distance <= 18'b111111111111111111;
                min_ID <= 5'd0;
            end
        end
    end

endmodule