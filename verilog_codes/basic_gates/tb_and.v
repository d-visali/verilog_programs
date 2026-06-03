module tb_and;

    reg a, b;
    wire y;

    and_gate_df uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $display("a b | y");

        a=0; b=0; #10;
        $display("%b %b | %b", a, b, y);

        a=0; b=1; #10;
        $display("%b %b | %b", a, b, y);

        a=1; b=0; #10;
        $display("%b %b | %b", a, b, y);

        a=1; b=1; #10;
        $display("%b %b | %b", a, b, y);

        $finish;
    end

endmodule