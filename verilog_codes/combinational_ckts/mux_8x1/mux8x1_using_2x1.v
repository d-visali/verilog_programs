module mux8x1_using_2x1(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input [2:0] s,
    output y
);

wire w1,w2,w3,w4;
wire w5,w6;

mux2x1 m1(i0,i1,s[0],w1);
mux2x1 m2(i2,i3,s[0],w2);
mux2x1 m3(i4,i5,s[0],w3);
mux2x1 m4(i6,i7,s[0],w4);

mux2x1 m5(w1,w2,s[1],w5);
mux2x1 m6(w3,w4,s[1],w6);

mux2x1 m7(w5,w6,s[2],y);

endmodule