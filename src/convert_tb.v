module test;

//reg [10:0] magnitude = 11'b0011;
reg [10:0] magnitude = 11'b1111_11;
wire [2:0] exponent;
wire [3:0] significand;
convert c(magnitude, exponent, significand);

initial begin
   #10
   $display("magnitude   = %b", magnitude);
   $display("exponent    = %b", exponent);
   $display("significand = %b", significand);
end

endmodule
