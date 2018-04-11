module test;

reg  [11:0] in;
wire  [7:0] out;

main m(in, out);

integer x;
integer expanded;

initial begin
    // Rounding Examples 1-4
    for (x = 44; x <= 47; x=x+1) begin
        in = 422; #5

        expanded = (-1)**out[7] * out[3:0] * 2**out[6:4];

        $display("in  = %b (%0d)", in, in);
        $display("out = %12b (%0d)", out, expanded);
        $display("%0d,%0d,%0d", out[7], out[3:0], out[6:4]);
        $display("");
    end
end

endmodule
