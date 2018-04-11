`include "convert.v"
module test;

//reg [10:0] magnitude = 11'b0011;
//reg [10:0] magnitude = 11'b000_0000_0111;
reg [10:0] magnitude = 422;
wire [2:0] exponent;
wire [3:0] significand;
wire fifth_bit;
convert c(magnitude, exponent, significand, fifth_bit);

initial begin
   #10
   $display("magnitude   = %b (%0d)", magnitude,   magnitude);
   $display("exponent    = %b (%0d)", exponent,    exponent);
   $display("significand = %b (%0d)", significand, significand);
   $display("fifth_bit   = %b (%0d)", fifth_bit,   fifth_bit);

   $display("%0d * 2^%0d = %0d",
       significand, exponent,
       significand*2**exponent);
end

endmodule
