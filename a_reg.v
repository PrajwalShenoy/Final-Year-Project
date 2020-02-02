`timescale 1ns / 1ps

module a_reg(out, clk, load, in);
input clk, load;
input [15:0] in;
output [15:0] out;
register16 ra(out, clk, load, in);
endmodule
