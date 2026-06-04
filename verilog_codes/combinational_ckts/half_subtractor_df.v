module half_subtractor_df(
    input a, b,
    output diff, borrow
);

assign diff = a ^ b;
assign borrow = (~a) & b;

endmodule