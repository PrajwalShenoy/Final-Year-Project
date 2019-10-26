`timescale 1ns / 1ps

module mux(out, sel, a, b);
input sel, a, b;
output out;
wire w;
notg not_gate(w, sel);
pmos p1(out, a, w);
nmos n1(out, a, sel);
pmos p2(out, b, sel);
nmos n2(out, b, w);
endmodule
