module HA(
    input  A,
    input  B,
    output Sum,
    output Cout);

    xor (Sum, A, B);
    and (Cout, A, B);

endmodule