module full_adder_gl(
    input a, b, cin,
    output sum, carry
);

wire x1, a1, a2, a3;

xor(x1, a, b);
xor(sum, x1, cin);

and(a1, a, b);
and(a2, b, cin);
and(a3, a, cin);

or(carry, a1, a2, a3);

endmodule