module full_subtractor_gl(
    input a, b, bin,
    output diff, borrow
);

wire x1;
wire n1;
wire b1, b2, b3;

xor(x1, a, b);
xor(diff, x1, bin);

not(n1, a);

and(b1, n1, b);
and(b2, n1, bin);
and(b3, b, bin);

or(borrow, b1, b2, b3);

endmodule