`timescale 1ns / 1ps

module RegisterFile(
    input clk, wwreg,
    input [4:0] rs, rt,
    input [4:0] wdestReg,
    input [31:0] wbData,
    output reg [31:0] qa, qb
);
    reg [31:0] registers[0:31];
    integer i;
    initial begin
        registers[0] = 32'h00000000;
        registers[1] = 32'hA00000AA;
        registers[2] = 32'h10000011;
        registers[3] = 32'h20000022;
        registers[4] = 32'h30000033;
        registers[5] = 32'h40000044;
        registers[6] = 32'h50000055;
        registers[7] = 32'h60000066;
        registers[8] = 32'h70000077;
        registers[9] = 32'h80000088;
        registers[10] = 32'h90000099;

        for (i = 11; i < 32; i = i+1)
            registers[i] = 32'b0;
    end
     
    always @(*)
    begin
        qa = registers[rs];
        qb = registers[rt];
    end

    always @(negedge clk)
    begin
        if (wwreg == 1)
            registers[wdestReg] = wbData;
    end
endmodule