module FA(
    input  a,
    input  b,
    input  Cin, 
    output Sum,
    output Cout);

    wire w1, w2, w3, w4;

    and (w1, a, b);
    and (w2, a, Cin);
    and (w3, b, Cin);

    xor (w4, a, b);
    xor (Sum, w4, Cin);

    or (Cout, w1, w2, w3);

endmodule