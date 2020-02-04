`timescale 1ns / 1ps

//module decoder(out, c, zr, ng, load, Asel);
module decoder(out, Asel, load, c, zr, ng);
input [15:0] c;
//c is the instruction;
input zr, ng;
output [15:0] out;
output Asel, load;
decode d1(out, Asel, c[15], c);
// decode(out,Asel,sel,c);
load l1(load, out[2:0], zr, ng);
// load(load, j, zr, ng );
endmodule
