#!/usr/bin/env python3


import sys
import Assembler


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 Assembler.py Program.asm")
    else:
        asm_file = sys.argv[1]
    hack_assembler = Assembler.Assembler()
    hack_assembler.assemble(asm_file)

    text_file = asm_file[:-3] + "txt"
    file = open(text_file, 'r')
    lines = file.read()
    # print(lines)

    dot_v_file = open("../../16_bitCore/16_bitCore.srcs/sources_1/new/rom.v", 'w', encoding='utf-8')
    dot_v_file.write("""`timescale 1ns / 1ps

module rom(instruction, clk, pco_in);
output [15:0] instruction;
reg [15:0] instruction;
input clk;
input [15:0] pco_in;
wire [15:0] rom_store [512:0];\n""")
# assign rom_store[0] = 16'd0;
# assign rom_store[1] = 16'd0;\n""")
    for i in range(len(lines.split("\n"))-1):
        dot_v_file.write("assign rom_store[" + str(i) + "] = 16'b" + lines.split("\n")[i] + ";\n")

    for i in range(len(lines.split("\n"))-1, 512):
        dot_v_file.write("assign rom_store[" + str(i) + "] = 16'd0" + ";\n")

    dot_v_file.write("""always @ (posedge clk)
begin
        instruction = rom_store[pco_in];
end
endmodule\n""")
    dot_v_file.close()
