module tb_mux4x1;

reg i0, i1, i2, i3;
reg [1:0] s;
wire y;

mux4x1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s(s),
    .y(y)
);

initial begin
    $dumpfile("mux4x1.vcd");
    $dumpvars(0, tb_mux4x1);
end

initial begin
    i0=0;
    i1=1;
    i2=0;
    i3=1;

    s=2'b00; #10;
    s=2'b01; #10;
    s=2'b10; #10;
    s=2'b11; #10;

    $finish;
end

initial begin
    $monitor("s=%b y=%b", s, y);
end

endmodule