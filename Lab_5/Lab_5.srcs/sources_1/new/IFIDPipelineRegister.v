`timescale 1ns / 1ps

module IFIDPipelineRegister(instOut, clk, dinstOut);
    input[31:0] instOut;
    input clk;
    output[31:0] dinstOut;
    reg[31:0] dinstOut;
    
    always @(posedge clk) begin
        dinstOut = instOut;
    end
endmodule
