`timescale 1ns / 1ps

module register16_tb;
wire [15:0] out;
reg clk, load;
reg [15:0]in;

register16 r1(out, clk, load, in);

initial begin
clk = 1'b0;
forever
#5 clk =~ clk;
end

initial begin
in = 16'b0000000000000000;
forever
#10 in =~ in;
end

initial begin
load = 1'b0;
forever
#20 load =~ load;
end

initial begin
#45 ;
end

endmodule
