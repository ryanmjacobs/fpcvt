`include "rounder.v"
module test();

// inputs to rounder
reg [2:0] exp;
reg [3:0] sig;
reg fifth_bit;
wire [2:0] outexp;
wire [3:0] outsig;

// testbench variables
integer i;

// instantiate modules
rounder rounder(exp, sig, fifth_bit, outexp, outsig);

// begin doing stuff
initial begin
  #1
  exp = 'b111;
  sig = 'b1111;
  fifth_bit = 1;
  #5 
  $display("IN");
  $display("exp=%b, sig=%b, fifth_bit=%b", exp, sig, fifth_bit);
  $display("OUT");
  $display("exp=%b, sig=%b", outexp, outsig);
end

endmodule
