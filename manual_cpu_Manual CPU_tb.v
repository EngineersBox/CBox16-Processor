//  A testbench for manual_cpu_Manual CPU_tb
`timescale 1us/1ns

module manual_cpu_Manual CPU_tb;
    reg CLK;
    reg [2:0] RS1;
    reg [2:0] RS2;
    reg [2:0] WS;
    reg STR;
    reg LDR;
    reg WE;
    reg [15:0] IN;
    reg [1:0] ALUOP;
    reg [1:0] DMUX;
    wire Z;
    wire N;
    wire C;
    wire V;

  manual_cpu manual_cpu0 (
    .CLK(CLK),
    .RS1(RS1),
    .RS2(RS2),
    .WS(WS),
    .STR(STR),
    .LDR(LDR),
    .WE(WE),
    .IN(IN),
    .ALUOP(ALUOP),
    .DMUX(DMUX),
    .Z(Z),
    .N(N),
    .C(C),
    .V(V)
  );

