module test;

reg  [11:0] in;
wire  [7:0] out;

main m(in, out);

initial begin
    in = 'b000000101111; #1
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    $display("");

    /*
    // ex 1, pg. 2
    in = 0; #1
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    $display("");

    // ex 2, pg. 2
    in = -40; #1
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    $display("");

    // ex 3/4, pg. 2
    in = 56; #1
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    $display("");

    // ex 1, pg. 3
    in = 422; #1
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    $display("");

    // ex 1, pg. 3
    in = -422; #1
    $display("in  = %b (%0d)", in, in);
    $display("out = %b (%0d)", out, out);
    */
end

endmodule
