module main(
    input  [11:0] in, // linear encoding (two's complement)
    output [7:0]  out // floating point output
);

wire sign;
wire [10:0] magnitude;
wire  [2:0] exponent;
wire  [3:0] significand;
wire fifth_bit;

wire  [2:0] final_exp;
wire  [3:0] final_sig;

  TCTSM a(in, sign, magnitude);
convert b(magnitude, exponent, significand, fifth_bit);
rounder c(exponent, significand, fifth_bit, final_exp, final_sig);

assign out[7]   = sign;
assign out[6:4] = final_exp;
assign out[3:0] = final_sig;

endmodule
