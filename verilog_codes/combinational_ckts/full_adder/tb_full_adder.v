module tb_full_adder;

reg a, b, cin;
wire sum, carry;

full_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
);

// Generate VCD file for GTKWave
initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, tb_full_adder);
end

initial begin
    $display("a b cin | sum carry");

    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;

    $finish;
end

initial begin
    $monitor("%b %b %b | %b %b",
             a,b,cin,sum,carry);
end

endmodule