`include "FPCVT.v"
module FPCVT_tb;

reg  [11:0] in;  // two's complement
wire S;
wire [2:0] E;
wire [3:0] F;
FPCVT m(in, S,E,F);

// debug values
wire       sign = S;
wire [2:0] exp  = E;
wire [3:0] val  = F;
integer x, expanded;

initial begin
    $dumpfile("main_tb.vcd");
    $dumpvars(0, in, S, E, F);

    // Rounding Examples 1-4
    // 44 and 45 should round down
    // 46 and 47 should round up
    for (x = 44; x <= 47; x=x+1) begin
        in = x; #1
        expanded = (-1)**sign * val * 2**exp;

        $display("in  = %b (%0d)", in, in);

        $display("s,e,v");
        $display("%0d,%0d,%0d", sign, exp, val);

        if (x < 47)
            $display(" ");
    end
end

endmodule
