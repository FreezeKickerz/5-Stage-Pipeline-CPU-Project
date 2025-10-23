`timescale 1ns / 1ps

module ProgramCounter(next_pc, clk, pc);
    input [31:0]next_pc;
    input clk;
    output pc;
    reg[31:0] pc;
    
    initial begin
        pc = 100;
    end
    always @(posedge clk) begin
        pc = next_pc;
    end
endmodule