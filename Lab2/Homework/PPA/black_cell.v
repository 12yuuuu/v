module black_cell(p1, p2, g1, g2, G, P);
input  p1, p2, g1, g2;
output G, P;

wire w1;

and (w1, p2, g1);
or (G, g2, w1); //G = g2 + p2 * g1
and (P, p1, p2); //p = p1 * p2

endmodule