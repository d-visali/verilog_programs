module half_adder_gl(
    input a, b,
    output sum, carry
);

xor(sum, a, b);
and(carry, a, b);

endmodule