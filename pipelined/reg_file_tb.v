//  A testbench for reg_file_tb
`timescale 1us/1ns

module reg_file_tb;
    reg [2:0] RS1;
    reg [2:0] RS2;
    reg [2:0] WS;
    reg WE;
    reg [15:0] IN;
    reg CLK;
    reg [15:0] FL_IN;
    reg FL_EN;
    reg [15:0] PC_IN;
    reg HE;
    wire [15:0] OUT1;
    wire [15:0] OUT2;

  reg_file reg_file0 (
    .RS1(RS1),
    .RS2(RS2),
    .WS(WS),
    .WE(WE),
    .IN(IN),
    .CLK(CLK),
    .FL_IN(FL_IN),
    .FL_EN(FL_EN),
    .PC_IN(PC_IN),
    .HE(HE),
    .OUT1(OUT1),
    .OUT2(OUT2)
  );

