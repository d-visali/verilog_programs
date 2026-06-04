module full_subtractor_df(
    input a, b, bin,
    output diff, borrow
);

assign diff = a ^ b ^ bin;

assign borrow = ((~a) & b) |
                ((~a) & bin) |
                (b & bin);

endmodule