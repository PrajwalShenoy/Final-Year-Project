`timescale 1ns / 1ps


module cpu(outM,PCout,WriteM,addrM,instruction,inM,rst,clk);
    
    input [15:0]instruction,inM;
    input rst,clk;
    
    output [15:0] outM,PCout,addrM;
    output WriteM;
    
    wire zr,ng;
    wire [15:0]dout,aout,mux2,mux1,inst1,alu_out;
    wire Asel,load;
    wire vdd;
    
    assign vdd = 1'b1;
    
    assign WriteM = inst1[3];
    assign addrM = aout;
    neg_register16 alu_reg(outM, clk, vdd, alu_out);
//  module neg_register16(out, clk, load, in);
    alu a_lu(alu_out, zr, ng, dout, mux2, inst1[11:10], inst1[9:8], inst1[7:6]);
    d_reg d1(dout, clk, inst1[4], outM);
    a_reg a1(aout, clk, Asel, mux1);
    decoder dec1(inst1, Asel, load, instruction, zr, ng);
    program_counter pc1(PCout, load, rst, clk, aout);
    mux16 m1(mux1, inst1[5], instruction, outM);
    mux16 m2(mux2, inst1[12], aout, inM);
    
    
    
    
    
endmodule
