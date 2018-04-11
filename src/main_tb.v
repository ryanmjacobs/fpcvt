module test;

reg  [11:0] in;
wire  [7:0] out;

main m(in, out);

initial begin
   in = 422; #1
   $display("in  = %b (%0d)", in, in);
   $display("out = %b (%0d)", out, out);
   $display("");

   in = -422; #1
   $display("in  = %b (%0d)", in, in);
   $display("out = %b (%0d)", out, out);
end

endmodule
