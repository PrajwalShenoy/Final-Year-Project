`timescale 1ns / 1ps

module mux(out, sel, a, b);
input sel, a, b;
output out;
wire w;
notg not_gate(w, sel);
pmos p1(out, b, w);
nmos n1(out, b, sel);
pmos p2(out, a, sel);
nmos n2(out, a, w);
endmodule
