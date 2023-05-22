`timescale 1us / 1ps 
 
module Parity_tb();
reg [6:0] D;
wire F_conv, F_davio;

initial 
D = 7'h0;

initial
#1000 $stop;


always
#10 D= D+7'h1;


parity par(
.D(D),
.F_conv(F_conv),
.F_davio(F_davio));

endmodule
