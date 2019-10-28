`timescale 1ns / 1ps

module incrementer_tb;
reg [15:0] in;
wire [15:0] out;
incrementer inc(out, in);
initial begin
in = 16'd99;#5
in = 16'd89;#5
in = 16'd79;#5
$finish;
end
endmodule