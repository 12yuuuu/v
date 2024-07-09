`define D_DataSize 10

module Min(d_0,
            d_1,
            d_2,
            d_3,
            d_4,
            d_5,
            d_6,
            d_7,
            out_index,
            out_distance);

  // ---------------------- input  ---------------------- //
  input  [`D_DataSize-1:0] d_0, d_1, d_2, d_3, d_4, d_5, d_6, d_7;

  // ---------------------- output ---------------------- //
  output [`D_DataSize-1:0] out_distance;
  output [2:0] out_index;

  // ---------------------- Write down Your design below  ---------------------- //

  reg [`D_DataSize-1:0] min_val;
  reg [2:0] min_index;

  always@(*)
  begin
    min_val = d_0;
    min_index = 3'b000;
    
    if (d_1 < min_val)
    begin
      min_val = d_1;
      min_index = 3'b001;
    end
    if (d_2 < min_val)
    begin
      min_val = d_2;
      min_index = 3'b010;
    end
    if (d_3 < min_val)
    begin
      min_val = d_3;
      min_index = 3'b011;
    end
    if (d_4 < min_val)
    begin
      min_val = d_4;
      min_index = 3'b100;
    end
    if (d_5 < min_val)
    begin
      min_val = d_5;
      min_index = 3'b101;
    end
    if (d_6 < min_val)
    begin
      min_val = d_6;
      min_index = 3'b110;
    end
    if (d_7 < min_val)
    begin
      min_val = d_7;
      min_index = 3'b111;
    end
  end
  assign out_index = min_index;
  assign out_distance = min_val;
endmodule
