module FA(
    input  A,
    input  B,
    input  Cin, 
    output Sum,
    output Cout);

    wire and1, and2, xor1;

    xor (xor1, A, B);
    and (and1, A, B);
    and (and2, xor1, Cin);
    xor (Sum, xor1, Cin);
    or (Cout, and1, and2);

endmodule