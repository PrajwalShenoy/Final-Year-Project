`timescale 1ns / 1ps

module notg_tb;
reg in;
wire out;
notg not1(out, in);
initial begin
in =1'b0;#5
in = 1'b1;#5
$finish;
end
endmodule