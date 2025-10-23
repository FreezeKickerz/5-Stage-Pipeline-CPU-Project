`timescale 1ns / 1ps

module ALUMultiplexer(
    input [31:0] eqb, eimm32,
    input ealuimm,
    output reg [31:0] b
);
    always @(*)
    begin
        if (ealuimm == 0)
            b <= eqb;
        else
            b <= eimm32;
    end
endmodule
