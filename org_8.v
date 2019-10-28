`timescale 1ns / 1ps

module org_8(out, a, b, c, d, e, f, g, h);
input a, b, c, d, e, f, g, h;
output out;
wire w1, w2, w3, w4, w5, w6;
org o0(w1, a, b);
org o1(w2, w1, c);
org o2(w3, w2, d);
org o3(w4, w3, e);
org o4(w5, w4, f);
org o5(w6, w5, g);
org o6(out, w6, h);
endmodule