`timescale 1ns / 1ps

module xorg(out,a,b);
  input a,b;
  output out;
  wire a1,b1,x,y;
  
  notg not_gate(a1,a);
  notg not_gate1(b1,b);
  andg and1(x,a1,b);
  andg and2(y,a,b1);
  org  or1(out,x,y);
  
endmodule