module test;

reg  [11:0] in;
wire  [7:0] out;

main m(in, out);

initial begin
    // Rounding Example 1
    in = 'b000000_101_100; #5
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    $display("");

    // Rounding Example 2
    in = 'b000000_101_101; #5
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    $display("");

    // Rounding Example 3
    in = 'b000000_101_110; #5
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    $display("");

    // Rounding Example 4
    in = 'b000000_101_111; #5
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
end

endmodule
