module mux4x1_df(
    input i0, i1, i2, i3,
    input [1:0] s,
    output y
);

assign y = (s==2'b00) ? i0 :
           (s==2'b01) ? i1 :
           (s==2'b10) ? i2 :
                         i3;

endmodule