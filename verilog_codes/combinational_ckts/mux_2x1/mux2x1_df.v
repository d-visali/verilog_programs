module mux2x1_df(
    input a, b, s,
    output y
);

assign y = s ? b : a;

endmodule