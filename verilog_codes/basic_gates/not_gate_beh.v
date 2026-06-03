module not_gate_beh(
    input a,
    output reg y
);
    always @(*) begin
        y = ~a;
    end
endmodule