`include "TCTSM.v"
`include "convert.v"
`include "rounder.v"
module FPCVT(
    input [11:0] D, // linear encoding (two's complement)
    output S,
    output [2:0] E,
    output [3:0] F
);

wire sign;
wire [10:0] magnitude;
wire [ 2:0] exponent;
wire [ 3:0] significand;
wire fifth_bit;

wire [2:0] rounded_exp;
wire [3:0] rounded_sig;

  TCTSM a(D, sign, magnitude);
convert b(magnitude, exponent, significand, fifth_bit);
rounder c(exponent, significand, fifth_bit, rounded_exp, rounded_sig);

assign S = sign;
assign E = rounded_exp;
assign F = rounded_sig;

endmodule
