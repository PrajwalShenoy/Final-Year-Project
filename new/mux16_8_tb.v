`timescale 1ms / 1ps

module mux16_8_tb;
reg [15:0] a,b,c,d,e,f,g,h;
reg [2:0] sel;
wire [15:0] out;
mux16_8 mux8(out, sel, a,b,c,d,e,f,g,h);
initial begin
sel = 3'd0; a=16'd1; b=16'd0; c=16'd0; d=16'd0; e=16'd0; f=16'd0; g=16'd0; h=16'd0;#5
sel = 3'd1; a=16'd0; b=16'd1; c=16'd0; d=16'd0; e=16'd0; f=16'd0; g=16'd0; h=16'd0;#5
sel = 3'd2; a=16'd0; b=16'd0; c=16'd1; d=16'd0; e=16'd0; f=16'd0; g=16'd0; h=16'd0;#5
sel = 3'd3; a=16'd0; b=16'd0; c=16'd0; d=16'd1; e=16'd0; f=16'd0; g=16'd0; h=16'd0;#5
sel = 3'd4; a=16'd0; b=16'd0; c=16'd0; d=16'd0; e=16'd1; f=16'd0; g=16'd0; h=16'd0;#5
sel = 3'd5; a=16'd0; b=16'd0; c=16'd0; d=16'd0; e=16'd0; f=16'd1; g=16'd0; h=16'd0;#5
sel = 3'd6; a=16'd0; b=16'd0; c=16'd0; d=16'd0; e=16'd0; f=16'd0; g=16'd1; h=16'd0;#5
sel = 3'd7; a=16'd0; b=16'd0; c=16'd0; d=16'd0; e=16'd0; f=16'd0; g=16'd0; h=16'd1;#5
$finish;
end
endmodule