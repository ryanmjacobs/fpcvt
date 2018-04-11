module test;

reg  [11:0] in = 422;
wire  [7:0] out;

main m(in, out);

initial begin
   #10
   $display("in  = %b (%0d)", in, in);
   $display("out = %b (%0d)", out, out);
end

endmodule
