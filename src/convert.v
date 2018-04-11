// Basic conversion, linear encoding -> floating point
module convert(
    input  [10:0] magnitude,
    output  [2:0] exponent,
    output  [3:0] significand
);

// priority encoder to count leading zeros
assign exponent = 7 -
   (magnitude[10] ? 0 :
    magnitude[9]  ? 1 :
    magnitude[8]  ? 2 :
    magnitude[7]  ? 3 :
    magnitude[6]  ? 4 :
    magnitude[5]  ? 5 :
    magnitude[4]  ? 6 : 7);

assign significand = (magnitude >> exponent);

endmodule
