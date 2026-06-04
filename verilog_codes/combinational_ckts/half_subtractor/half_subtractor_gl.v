module half_subtractor_gl(
    input a, b,
    output diff, borrow
);

xor(diff, a, b);

wire na;
not(na, a);
and(borrow, na, b);

endmodule