module Controller(
    input               clk,
    input               rst,
    input               mode,
    input               enable,
    input               valid,
    input   [4:0]       id,

    // ID RAM 
    output  reg [7:0]   id_addr,
    output  reg [4:0]   id_wdata,
    output  reg         id_wen,

    // CLBP I/O
	output	reg			lbp_enable,
	input   			lbp_finish,
	output  reg			ram_clbp,
	
    // HCU I/O
    input   [3:0]       gridX_i,     
    input   [3:0]       gridY_i,        
    output  reg         hcu_enable,
    output  reg [3:0]   gridX_o,
    output  reg [3:0]   gridY_o,  
    input               hcu_finish,      
    // Comparator I/O
    input               comparator_finish,
    output  reg         comparator_enable,
    output  reg         ram_comp
);

   always @(posedge clk or posedge rst) 
   begin
        if (rst) 
        begin
            id_addr <= 8'd0;
            id_wdata <= 5'd0;
            id_wen <= 1'b0;

            lbp_enable <= 1'b1;
            ram_clbp <= 1'b0;

            hcu_enable <= 1'b0;
            gridX_o <= 4'd0;
            gridY_o <= 4'd0;

            comparator_enable <= 1'b0;
            ram_comp <= 1'b0;
        end 
        else 
        begin
            if (mode == 1'b0) 
            begin
                id_wen <= 1'b1;
                ram_comp <= 1'b0;
                comparator_enable <= 1'b0;
                if (valid)
                begin
                    id_addr <= id_addr + 8'd1;
                    id_wdata <= id;
                end  
                else if (lbp_finish)
                begin
                    hcu_enable <= 1'b1;
                    lbp_enable <= 1'b0;
                    ram_clbp <= 1'b0;
                end
                else 
                if (hcu_finish)
                begin
                    hcu_enable <= 1'b0;
                    lbp_enable <= 1'b1;
                    ram_clbp <= 1'b1;
                end
                else
                begin
                    hcu_enable <= hcu_enable;
                    lbp_enable <= lbp_enable;
                    ram_clbp <= ram_clbp;
                end
            end
            else 
            begin
                id_wen <= 1'b0;
                if (lbp_finish)
                begin
                    hcu_enable <= 1'b1;
                    lbp_enable <= 1'b0;
                    ram_comp <= 1'b0;
                    ram_clbp <= 1'b0;
                end
                else if (hcu_finish)
                begin
                    hcu_enable <= 1'b0;
                    lbp_enable <= 1'b0;
                    ram_comp <= 1'b1;
                    ram_clbp <= 1'b1;
                    comparator_enable <= 1'b1;
                end
                else if (comparator_finish)
                begin
                    lbp_enable <= 1'b1;
                    comparator_enable <= 1'b0;
                end
                else
                begin
                    hcu_enable <= hcu_enable;
                    lbp_enable <= lbp_enable;
                    ram_clbp <= ram_clbp;
                    comparator_enable <= comparator_enable;
                end
            end
        end
    end

endmodule