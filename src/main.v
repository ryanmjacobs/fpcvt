`include "TCTSM.v"
`include "convert.v"
`include "rounder.v"
module main(
    input [11:0] in, // linear encoding (two's complement)
    output [7:0] out // floating point output
);

wire sign;
wire [10:0] magnitude;
wire [ 2:0] exponent;
wire [ 3:0] significand;
wire fifth_bit;

wire [2:0] rounded_exp;
wire [3:0] rounded_sig;

  TCTSM a(in, sign, magnitude);
convert b(magnitude, exponent, significand, fifth_bit);
rounder c(exponent, significand, fifth_bit, rounded_exp, rounded_sig);

assign out[7]   = sign;
assign out[6:4] = rounded_exp;
assign out[3:0] = rounded_sig;

endmodule
