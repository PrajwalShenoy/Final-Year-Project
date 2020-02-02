`timescale 1ns / 1ps

module register(out, clk, load, in);
input in, load, clk;
output out;
wire mux_out;
mux m1(mux_out, load, out, in);
dff d1(out, clk, mux_out);
endmodule