module rounder(
    input [2:0] exp,
    input [3:0] sig,
    input fifth_bit,
    output [2:0] outexp,
    output [3:0] outsig
);

reg [4:0] sig_reg;
reg [2:0] exp_reg;

always @* begin
  sig_reg = sig;
  exp_reg = exp;

  if (fifth_bit) begin
    sig_reg = sig + 1;

    // detect overflow
    if (sig_reg[4]) begin
        sig_reg = sig_reg >> 1;
        exp_reg = exp + 1;

        if (exp_reg < exp) begin
            sig_reg = 'b1111;
            exp_reg = 'b111;
        end
    end
  end
end

assign outexp = exp_reg;
assign outsig = sig_reg[3:0];
endmodule
