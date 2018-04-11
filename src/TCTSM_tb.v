`include "TCTSM.v"

module test();

// inputs to tctsm
reg [11:0] tc;
wire sign;
wire [10:0] sm;

// testbench variables
integer i;

// instantiate modules
TCTSM TCTSM(tc, sign, sm);

// begin doing stuff
initial begin
  for (i = 12'b1_111111_11111; i >= 12'b0_111111_11111; i = i - 1) begin
    #5 tc = i;
    #5 $display("input=%b, output sign= %b, output=%b", tc, sign, sm);
  end
end

endmodule