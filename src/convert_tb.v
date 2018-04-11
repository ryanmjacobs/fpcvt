module test;

//reg [10:0] magnitude = 11'b0011;
//reg [10:0] magnitude = 11'b000_0000_0111;
//reg [10:0] magnitude = 422;
reg [10:0] magnitude = 11'b000_0000_1111;
wire [2:0] exponent;
wire [3:0] significand;
convert c(magnitude, exponent, significand);

initial begin
   #10
   $display("magnitude   = %b (%0d)", magnitude,   magnitude);
   $display("exponent    = %b (%0d)", exponent,    exponent);
   $display("significand = %b (%0d)", significand, significand);

   $display("%0d * 2^%0d = %0d",
       significand, exponent,
       significand*2^exponent);
end

endmodule
