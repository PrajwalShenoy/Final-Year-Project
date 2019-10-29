`timescale 1ns / 1ps

module alu_tb;
wire  [15:0] x,y;
reg [1:0] zxnx, zyny, fno;
wire [15:0] out;
wire zr, ng;
assign x = 16'd100;
assign y = 16'b1111111100111000;
//module alu(out,x, y, zr, ng, zx, nx, zy, ny, f, no);
alu a1(out, zr,ng, x, y, zxnx, zyny, fno);
initial
begin
//zx = 1'b1; nx = 1'b0; zy = 1'b1; f = 1'b1; ny = 1'b0; no = 1'b0; #2
//zx = 1'b1; nx = 1'b1; zy = 1'b1; f = 1'b1; ny = 1'b1; no = 1'b1; #2
//zx = 1'b1; nx = 1'b1; zy = 1'b1; f = 1'b1; ny = 1'b0; no = 1'b0; #2
//zx = 1'b0; nx = 1'b0; zy = 1'b1; f = 1'b0; ny = 1'b1; no = 1'b0; #2
//zx = 1'b1; nx = 1'b1; zy = 1'b0; f = 1'b0; ny = 1'b0; no = 1'b0; #2
//zx = 1'b0; nx = 1'b0; zy = 1'b1; f = 1'b0; ny = 1'b1; no = 1'b1; #2
//zx = 1'b1; nx = 1'b1; zy = 1'b0; f = 1'b0; ny = 1'b0; no = 1'b1; #2

//zx = 1'b0; nx = 1'b0; zy = 1'b1; f = 1'b1; ny = 1'b1; no = 1'b1; #2
//zx = 1'b1; nx = 1'b1; zy = 1'b0; f = 1'b1; ny = 1'b0; no = 1'b1; #2
//zx = 1'b0; nx = 1'b1; zy = 1'b1; f = 1'b1; ny = 1'b1; no = 1'b1; #2
//zx = 1'b1; nx = 1'b1; zy = 1'b0; f = 1'b1; ny = 1'b1; no = 1'b1; #2
//zx = 1'b0; nx = 1'b0; zy = 1'b1; f = 1'b1; ny = 1'b1; no = 1'b0; #2
//zx = 1'b1; nx = 1'b1; zy = 1'b0; f = 1'b1; ny = 1'b0; no = 1'b0; #2
//zx = 1'b0; nx = 1'b0; zy = 1'b0; f = 1'b1; ny = 1'b0; no = 1'b0; #2

//zx = 1'b0; nx = 1'b1; zy = 1'b0; f = 1'b1; ny = 1'b0; no = 1'b1; #2
//zx = 1'b0; nx = 1'b0; zy = 1'b0; f = 1'b1; ny = 1'b1; no = 1'b1; #2
//zx = 1'b0; nx = 1'b0; zy = 1'b0; f = 1'b0; ny = 1'b0; no = 1'b0; #2
//zx = 1'b0; nx = 1'b1; zy = 1'b0; f = 1'b0; ny = 1'b1; no = 1'b1; #2

zxnx = 2'b10; zyny = 2'b10; fno = 2'b10; #5
zxnx = 2'b11; zyny = 2'b11; fno = 2'b11; #5
zxnx = 2'b11; zyny = 2'b10; fno = 2'b10; #5
zxnx = 2'b00; zyny = 2'b11; fno = 2'b00; #5
zxnx = 2'b11; zyny = 2'b00; fno = 2'b00; #5
zxnx = 2'b00; zyny = 2'b11; fno = 2'b01; #5
zxnx = 2'b11; zyny = 2'b00; fno = 2'b01; #5
zxnx = 2'b00; zyny = 2'b11; fno = 2'b11; #5
zxnx = 2'b11; zyny = 2'b00; fno = 2'b11; #5
zxnx = 2'b01; zyny = 2'b11; fno = 2'b11; #5
zxnx = 2'b11; zyny = 2'b01; fno = 2'b11; #5
zxnx = 2'b00; zyny = 2'b11; fno = 2'b10; #5
zxnx = 2'b11; zyny = 2'b00; fno = 2'b10; #5
zxnx = 2'b00; zyny = 2'b00; fno = 2'b10; #5
zxnx = 2'b01; zyny = 2'b00; fno = 2'b11; #5
zxnx = 2'b00; zyny = 2'b01; fno = 2'b11; #5
zxnx = 2'b00; zyny = 2'b00; fno = 2'b00; #5
zxnx = 2'b01; zyny = 2'b01; fno = 2'b01; #5

$finish;
end
endmodule