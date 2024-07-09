module blue_cell(p2, g1, g2, G);
input  p2, g1, g2;
output G;

wire w1;

and (w1, p2, g1);
or (G, g2, w1);   //G = g2 + p2 * g1

endmodule