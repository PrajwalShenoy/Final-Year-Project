`timescale 1ns / 1ps


module dmux(out1,out2,sel,a);
input sel, a;
output out1,out2;
wire w;
notg not_gate(w, sel);
andg a1(out1,a,w);
andg a2(out2,a, sel);
endmodule