module mux8x1_df(
    input i0,i1,i2,i3,i4,i5,i6,i7,
    input [2:0] s,
    output y
);

assign y = (s==3'b000)? i0 :
           (s==3'b001)? i1 :
           (s==3'b010)? i2 :
           (s==3'b011)? i3 :
           (s==3'b100)? i4 :
           (s==3'b101)? i5 :
           (s==3'b110)? i6 :
                         i7;

endmodule