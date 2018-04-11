module TCTSM(
    input [11:0] tc,
    output sign,
    output [10:0] sm
);
    reg [10:0] magnitude;
    assign sign = tc[11];

    always @* begin
      if (sign) begin
        if (tc[10:0] == 11'b000000_00000)
            magnitude = 11'b111111_11111;
        else
            magnitude = ~tc[10:0] + 1;
      end else
        magnitude = tc[10:0];
    end

    assign sm[10:0] = magnitude;
endmodule