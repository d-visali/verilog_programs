module or_gate_beh(
    input a, b,
    output reg y
);
    always @(*) begin
        y = a | b;
    end
endmodule