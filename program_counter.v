`timescale 1ns / 1ps

module program_counter(out, ld_sig, rst, clk, ld_in);

input rst, clk, ld_sig;
input [15:0] ld_in;
output [15:0] out;

wire [15:0] mux_out, mux_in_0, mux_in_1, reg_temp_out, zero;
wire vdd, nclk, single_bit_mux_out;

assign vdd = 1'b1;
assign zero = 16'd0;

notg n(nclk, clk);

incrementer i(mux_in_0, out);
// incrementer(out,in);

register16 tempr(reg_temp_out, nclk, vdd, mux_out);

mux16 m1(mux_out, single_bit_mux_out, mux_in_0, mux_in_1);
// mux16(out, sel, a, b);

mux16 m2(mux_in_1, rst, ld_in, zero);

mux signa(single_bit_mux_out, rst, ld_sig, rst);
register16 r(out, clk, vdd, reg_temp_out);
// register16(out, clk, load, in);

endmodule
