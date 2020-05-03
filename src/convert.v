// Basic conversion, linear encoding -> floating point
module convert(
    input  [10:0] magnitude,
    output  [2:0] exponent,
    output  [3:0] significand,
    output  fifth_bit
);

// priority encoder to count leading zeros
assign exponent =
   (magnitude[10] ? 7 :
    magnitude[9]  ? 6 :
    magnitude[8]  ? 5 :
    magnitude[7]  ? 4 :
    magnitude[6]  ? 3 :
    magnitude[5]  ? 2 :
    magnitude[4]  ? 1 : 0);

assign significand = magnitude >> exponent;
assign fifth_bit   = magnitude >> (exponent-1);

endmodule
