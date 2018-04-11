module test;

reg [10:0] magnitude = 11'b0011;
wire [2:0] exponent;
wire [3:0] significand;
convert c(magnitude, exponent, significand);

initial begin
   $display("magnitude   = %b", magnitude);
   $display("exponent    = %b", exponent);
   $display("significand = %b", significand);
end

endmodule
