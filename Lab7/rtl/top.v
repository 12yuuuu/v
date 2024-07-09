`include "CLBP.v"
`include "HCU.v"
`include "DCU.v"
`include "Comparator.v"
`include "Controller.v"
`include "MUX1.v"
`include "MUX2.v"
`include "MUX3.v"
`include "MUX4.v"

module top(
    input           clk,
    input           rst,
    input           enable,
    input           mode,
    input           valid, 
    input   [4:0]   id,
    input   [3:0]   gridX,
    input   [3:0]   gridY,

    // CLBP I/O & LBP RAM
	output reg [11:0] gray_addr,
	output			gray_ren,
	input	[7:0]	gray_rdata,
    output [11:0]   lbp_addr,   // no reg
    output          lbp_wen,
	output			lbp_ren,
    input   [7:0]   lbp_rdata,
	output	[7:0] 	lbp_wdata,
	output reg [24:0]   theta,
	output			theta_valid,
	input [24:0]	cos_data,
	input   	    cos_valid,
	input [24:0]	sin_data,
	input       	sin_valid,
	output reg	    lbp_finish,
	
    // ID RAM I/O
    output  [7:0]   id_addr,
    output  [4:0]   id_wdata,
    output          id_wen,
    output          id_ren,
    input   [4:0]   id_rdata,

    // HIST TRAIN RAM I/O
    output reg [20:0] hist_addr_train,
    output reg [7:0]  hist_wdata_train,
    output reg        hist_wen_train,
    output reg        hist_ren_train,
    input   [7:0]     hist_rdata_train,

    // HIST PREDICT RAM I/O
    output reg [13:0] hist_addr_predict,
    output reg [7:0]  hist_wdata_predict,
    output reg        hist_wen_predict,
    output reg        hist_ren_predict,
    input   [7:0]     hist_rdata_predict,  

    output          hcu_finish,
    output reg      done,
    output  [4:0]   label,
    output  [17:0]  minDistance
);

    reg hcu_enable, dcu_enable, lbp_enable, comparator_enable;
    reg dcu_valid, ram_comp;
    reg hist_ren_train_hcu, hist_ren_predict_hcu, hist_ren_train_dcu, hist_ren_predict_dcu;
    reg [17:0] distance;
    reg [20:0] hist_addr_offset, hist_addr_train_hcu, hist_addr_train_dcu;
    reg [13:0] hist_addr_predict_dcu, hist_addr_predict_hcu;
    reg [3:0] gridX_o, gridY_o;
    reg [11:0] lbp_addr_clbp, lbp_addr_hcu;
    reg [7:0] id_addr_com, id_addr_con;

    CLBP clbp(
        .clk(clk),
        .rst(rst),
        .enable(lbp_enable),
        .gray_addr(gray_addr),
        .gray_OE(gray_ren),
        .gray_data(gray_rdata),
        .lbp_addr(lbp_addr_clbp),
        .lbp_WEN(lbp_wen),
        .lbp_data(lbp_wdata),
        .theta(theta),
        .theta_valid(theta_valid),
        .cos_data(cos_data),
        .cos_valid(cos_valid),
        .sin_data(sin_data),
        .sin_valid(sin_valid),
        .finish(lbp_finish)
    );

    HCU hcu(
        .clk(clk),
        .rst(rst),
        .mode(mode),
        .enable(hcu_enable),
        .gridX(gridX_o),
        .gridY(gridY_o),
        .lbp_ren(lbp_ren),
        .lbp_addr(lbp_addr_hcu),
        .lbp_rdata(lbp_rdata),
        .hist_wen_train(hist_wen_train),
        .hist_wdata_train(hist_wdata_train),
        .hist_addr_train(hist_addr_train_hcu),
        .hist_ren_train(hist_ren_train_hcu),
        .hist_rdata_train(hist_rdata_train),
        .hist_wen_predict(hist_wen_predict),
        .hist_wdata_predict(hist_wdata_predict),
        .hist_addr_predict(hist_addr_predict_hcu),
        .hist_ren_predict(hist_ren_predict_hcu),
        .hist_rdata_predict(hist_rdata_predict),
        .done(hcu_finish)
    );

    DCU dcu(
        .clk(clk),
        .rst(rst),
        .enable(dcu_enable),
        .hist_addr_offset(hist_addr_offset),
        .hist_addr_train(hist_addr_train_dcu),
        .hist_ren_train(hist_ren_train_dcu),
        .hist_rdata_train(hist_rdata_train),
        .hist_addr_predict(hist_addr_predict_dcu),
        .hist_ren_predict(hist_ren_predict_dcu),
        .hist_rdata_predict(hist_rdata_predict),
        .distance(distance),
        .valid(dcu_valid)
    );

    Comparator comparator(
        .clk(clk),
        .rst(rst),
        .enable(comparator_enable),
        .histcount(id_addr),
        .dcu_valid(dcu_valid),
        .distance(distance),
        .id(id_rdata),
        .id_ren(id_ren),
        .id_counter(id_addr_com),
        .dcu_enable(dcu_enable),
        .label(label),
        .minDistance(minDistance),
        .hist_addr_offset(hist_addr_offset),
        .done(done)
    );

    Controller controller(
        .clk(clk),
        .rst(rst),
        .mode(mode),
        .enable(enable),
        .valid(valid),
        .id(id),
        .id_addr(id_addr_con),
        .id_wdata(id_wdata),
        .id_wen(id_wen),
        .lbp_enable(lbp_enable),
        .lbp_finish(lbp_finish),
        .ram_clbp(ram_clbp),
        .gridX_i(gridX),
        .gridY_i(gridY),
        .gridX_o(gridX_o),
        .gridY_o(gridY_o),
        .hcu_enable(hcu_enable),
        .hcu_finish(hcu_finish),
        .comparator_finish(done),
        .comparator_enable(comparator_enable),
        .ram_comp(ram_comp)
    );

    MUX1 mux_lbp(
        .sel(hcu_enable),
        .data0(lbp_addr_clbp),
        .data1(lbp_addr_hcu),
        .out(lbp_addr)
    );
    
    MUX2 mux_predict(
        .sel(ram_comp),
        .data0_0(hist_rdata_predict_hcu),
        .data0_1(hist_addr_predict_hcu),
        .data0_2(hist_ren_predict_hcu),
        .data1_0(hist_rdata_predict_dcu),
        .data1_1(hist_addr_predict_dcu),
        .data1_2(hist_ren_predict_dcu),
        .out0(hist_rdata_predict),
        .out1(hist_addr_predict),
        .out2(hist_ren_predict)
    );

    MUX3 mux_train(
        .sel(ram_comp),
        .data0_1(hist_addr_train_hcu),
        .data0_2(hist_ren_train_hcu),
        .data1_1(hist_addr_train_dcu),
        .data1_2(hist_ren_train_dcu),
        .out1(hist_addr_train),
        .out2(hist_ren_train)
    );

    MUX4 mux_id(
        .sel(dcu_enable),
        .data0_0(id_addr_con),
        .data1_0(id_addr_com),
        .out0(id_addr)
    );

endmodule