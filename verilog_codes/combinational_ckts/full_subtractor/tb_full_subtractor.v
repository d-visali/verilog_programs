module tb_full_subtractor;

reg a, b, bin;
wire diff, borrow;

full_subtractor uut(
    .a(a),
    .b(b),
    .bin(bin),
    .diff(diff),
    .borrow(borrow)
);

initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, tb_full_subtractor);
end

initial begin
    a=0; b=0; bin=0; #10;
    a=0; b=0; bin=1; #10;
    a=0; b=1; bin=0; #10;
    a=0; b=1; bin=1; #10;
    a=1; b=0; bin=0; #10;
    a=1; b=0; bin=1; #10;
    a=1; b=1; bin=0; #10;
    a=1; b=1; bin=1; #10;

    $finish;
end

initial begin
    $monitor("a=%b b=%b bin=%b diff=%b borrow=%b",
              a,b,bin,diff,borrow);
end

endmodule