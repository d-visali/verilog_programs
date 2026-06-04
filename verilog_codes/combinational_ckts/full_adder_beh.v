module full_adder_beh(
    input a, b, cin,
    output reg sum, carry
);

always @(*) begin
    sum = a ^ b ^ cin;
    carry = (a & b) | (b & cin) | (a & cin);
end

endmodule