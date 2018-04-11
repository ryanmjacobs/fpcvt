`include "main.v"
module test;

reg  [11:0] in;
wire  [7:0] out;

main m(in, out);

wire       sign = out[7];
wire [2:0] exp  = out[6:4];
wire [3:0] val  = out[3:0];

integer x, expanded;

initial begin
    $dumpfile("main_tb.vcd");
    $dumpvars(0, in, out);

    // Rounding Examples 1-4
    for (x = 44; x <= 47; x=x+1) begin
        in = x; #1
        expanded = (-1)**sign * val * 2**exp;

        $display("in  = %b (%0d)", in, in);
        $display("out = %12b (%0d)", out, expanded);

        $display("s,e,v");
        $display("%0d,%0d,%0d\n", sign, exp, val);
    end
end

endmodule
