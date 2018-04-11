// Basic conversion, linear encoding -> floating point
module convert(
    input  [10:0] magnitude,
    output  [2:0] exponent,
    output  [3:0] significand
);

assign significand = (magnitude);

assign exponent = 8 -
   (magnitude[10] ? 0 :
    magnitude[9]  ? 1 :
    magnitude[8]  ? 2 :
    magnitude[7]  ? 3 :
    magnitude[6]  ? 4 :
    magnitude[5]  ? 5 :
    magnitude[4]  ? 6 :
    magnitude[3]  ? 7 : 8);

endmodule
