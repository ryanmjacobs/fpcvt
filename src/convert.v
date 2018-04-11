// Basic conversion, linear encoding -> floating point
module convert(
    input  [10:0] magnitude,
    output  [2:0] exponent,
    output  [3:0] significand
);

assign significand = (magnitude << 7);

assign exponent =
   (~magnitude[0] ? 0 :
    ~magnitude[1] ? 1 :
    ~magnitude[2] ? 2 :
    ~magnitude[3] ? 3 :
    ~magnitude[4] ? 4 :
    ~magnitude[5] ? 5 :
    ~magnitude[6] ? 6 :
    ~magnitude[7] ? 7 :
    ~magnitude[8] ? 8 :
    ~magnitude[9] ? 9 :
    ~magnitude[10] ? 10 : 11);

endmodule
