module FA(
    input  a,
    input  b,
    input  cin, 
    output sum,
    output cout
);

	wire w1, w2, w3, w4, w5;

    and (w1, a, b);
    and (w2, a, cin);
    and (w3, b, cin);

    xor (w4, a, b);
    xor (sum, w4, cin);

    or (cout, w1, w2, w3);

endmodule