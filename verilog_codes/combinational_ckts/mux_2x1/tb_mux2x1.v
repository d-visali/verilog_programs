module tb_mux2x1;

reg a, b, s;
wire y;

mux2x1_df uut(
    .a(a),
    .b(b),
    .s(s),
    .y(y)
);

initial begin
    $monitor("a=%b b=%b s=%b y=%b", a, b, s, y);

    a=0; b=1; s=0; #10;
    a=0; b=1; s=1; #10;
    a=1; b=0; s=0; #10;
    a=1; b=0; s=1; #10;

    $finish;
end

endmodule