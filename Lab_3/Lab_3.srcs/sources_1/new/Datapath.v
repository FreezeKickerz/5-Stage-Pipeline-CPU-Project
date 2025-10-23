`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2023 04:53:10 PM
// Design Name: 
// Module Name: Datapath
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Datapath(
clk, 
pc, 
dinstOut, 
ewreg, 
em2reg, 
ewmem, 
ealuc, 
ealuimm, 
edestReg,
eqa, 
eqb, 
eimm32
    );
    
    input clk;
    output[31:0] pc;
    output dinstOut;
    output ewreg;
    output em2reg;
    output ewmem;
    output[3:0] ealuc;
    output ealuimm;
    output[4:0] edestReg;
    output[31:0] eqa;
    output[31:0] eqb;
    output[31:0] eimm32;
    
    wire[31:0] pc;
    wire[31:0] next_Pc;
    wire[31:0] instOut;
    wire[31:0] dinstOut;
    wire wreg;
    wire m2reg;
    wire wmem;
    wire[3:0] aluc;
    wire aluimm;
    wire regrt;
    wire[4:0] destReg;
    wire[31:0] qa;
    wire[31:0] qb;
    wire[31:0] imm32;
    
    wire ewreg;
    wire em2reg;
    wire ewmem;
    wire[3:0] ealuc;
    wire ealuimm;
    wire[4:0] edestReg;
    wire[31:0] eqa;
    wire[31:0] eqb;
    wire[31:0] eimm32;
    
    PC_Adder pcAdder(pc, next_Pc);
    IF_PC programCounter(next_Pc, clk, pc);
    Inst_mem instructionMemory(pc, instOut);
    IF_ID pipelineRegister(instOut, clk, dinstOut);
    ID_Control controlUnit(dinstOut[31:26], dinstOut[5:0], wreg, m2reg, wmem, aluc, aluimm, regrt);
    Regrt_Multiplexer regrtMultiplexer(dinstOut[15:11], dinstOut[20:16], regrt, destReg);
    Register_File registerFile(dinstOut[25:21], dinstOut[20:16], qa, qb);
    Immediate_Extender immediateExtender(dinstOut[15:0], imm32);
    IDEXE_Pipeline_Register idexePipelineRegister(wreg, m2reg, wmem, aluc, aluimm, destReg, qa, qb, imm32, clk, ewreg, em2reg, ewmem, ealuc, ealuimm, edestReg, eqa, eqb, eimm32);
        
endmodule
    