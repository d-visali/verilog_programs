module full_subtractor_beh(
    input a, b, bin,
    output reg diff, borrow
);

always @(*) begin
    diff = a ^ b ^ bin;

    borrow = ((~a) & b) |
             ((~a) & bin) |
             (b & bin);
end

endmodule