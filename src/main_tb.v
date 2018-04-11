module test;

reg  [11:0] in;
wire  [7:0] out;

main m(in, out);

integer x;
initial begin
    // Rounding Examples 1-4
    for (x = 44; x <= 47; x=x+1) begin
        in = x; #5
        $display("in  = %b (%0d)", in, in);
        $display("out = %b (%0d)", out, out);
        $display("");
    end
end

endmodule
