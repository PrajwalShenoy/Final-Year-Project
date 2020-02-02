`timescale 1ns / 1ps

module register_tb;
wire out;
reg in, clk, load;

register r1(out, clk, load, in);

initial begin
clk = 1'b0;
forever
#5 clk =~ clk;
end

initial begin
in = 1'b0;
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
