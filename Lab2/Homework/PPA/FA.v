module FA(
    input  a,
    input  b,
    input  Cin, 
    output Sum,
    output Cout);

    wire and1, and2, xor1;

    xor (xor1, a, b);
    and (and1, a, b);
    and (and2, xor1, Cin);
    xor (Sum, xor1, Cin);
    or (Cout, and1, and2);

endmodule