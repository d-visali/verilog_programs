module tb_mux8x1;

reg i0,i1,i2,i3,i4,i5,i6,i7;
reg [2:0] s;
wire y;

mux8x1_df uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .i4(i4),
    .i5(i5),
    .i6(i6),
    .i7(i7),
    .s(s),
    .y(y)
);

initial begin

    i0=0;
    i1=1;
    i2=0;
    i3=1;
    i4=0;
    i5=1;
    i6=0;
    i7=1;

    $monitor("s=%b y=%b", s, y);

    s=3'b000; #10;
    s=3'b001; #10;
    s=3'b010; #10;
    s=3'b011; #10;
    s=3'b100; #10;
    s=3'b101; #10;
    s=3'b110; #10;
    s=3'b111; #10;

    $finish;
end

endmodule