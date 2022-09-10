//  A testbench for reg_file_tb
`timescale 1us/1ns

module reg_file_tb;
    reg [2:0] RS1;
    reg [2:0] RS2;
    reg [2:0] WS;
    reg WE;
    reg [15:0] IN;
    reg clk;
    reg [15:0] FL_IN;
    reg FL_EN;
    reg [15:0] PC_IN;
    reg HE;
    wire [15:0] OUT1;
    wire [15:0] OUT2;
    wire [15:0] PC_S;
    wire PC_WE;
    wire [15:0] FL_OUT;

  reg_file reg_file0 (
    .RS1(RS1),
    .RS2(RS2),
    .WS(WS),
    .WE(WE),
    .IN(IN),
    .clk(clk),
    .FL_IN(FL_IN),
    .FL_EN(FL_EN),
    .PC_IN(PC_IN),
    .HE(HE),
    .OUT1(OUT1),
    .OUT2(OUT2),
    .PC_S(PC_S),
    .PC_WE(PC_WE),
    .FL_OUT(FL_OUT)
  );

    reg [90:0] patterns[0:53];
    integer i;

    initial begin
      patterns[0] = 91'b0_000_000_000_1_0001001000110100_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[1] = 91'b1_000_000_000_1_0001001000110100_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[2] = 91'b0_000_000_000_1_0001001000110100_0000000000000000_0000000000000000_0000000000000000_0000000000000000;
      patterns[3] = 91'b0_001_001_001_1_0001001000110100_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[4] = 91'b1_001_001_001_1_0001001000110100_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[5] = 91'b0_001_001_001_1_0001001000110100_0000000000000000_0001001000110100_0001001000110100_0000000000000000;
      patterns[6] = 91'b0_010_001_010_1_1011111011101111_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[7] = 91'b1_010_001_010_1_1011111011101111_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[8] = 91'b0_010_001_010_1_1011111011101111_0000000000000000_1011111011101111_0001001000110100_0000000000000000;
      patterns[9] = 91'b0_011_010_011_1_1101111010101101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[10] = 91'b1_011_010_011_1_1101111010101101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[11] = 91'b0_011_010_011_1_1101111010101101_0000000000000000_1101111010101101_1011111011101111_0000000000000000;
      patterns[12] = 91'b0_100_011_100_1_1111111111111111_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[13] = 91'b1_100_011_100_1_1111111111111111_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[14] = 91'b0_100_011_100_1_1111111111111111_0000000000000000_1111111111111111_1101111010101101_0000000000000000;
      patterns[15] = 91'b0_100_011_100_0_1010101111001101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[16] = 91'b1_100_011_100_0_1010101111001101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[17] = 91'b0_100_011_100_0_1010101111001101_0000000000000000_1111111111111111_1101111010101101_0000000000000000;
      patterns[18] = 91'b0_100_011_011_0_1010101111001101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[19] = 91'b1_100_011_011_0_1010101111001101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[20] = 91'b0_100_011_011_0_1010101111001101_0000000000000000_1111111111111111_1101111010101101_0000000000000000;
      patterns[21] = 91'b0_010_001_010_0_1010101111001101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[22] = 91'b1_010_001_010_0_1010101111001101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[23] = 91'b0_010_001_010_0_1010101111001101_0000000000000000_1011111011101111_0001001000110100_0000000000000000;
      patterns[24] = 91'b0_010_001_001_0_1010101111001101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[25] = 91'b1_010_001_001_0_1010101111001101_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[26] = 91'b0_010_001_001_0_1010101111001101_0000000000000000_1011111011101111_0001001000110100_0000000000000000;
      patterns[27] = 91'b0_010_001_011_1_1011101011011110_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[28] = 91'b1_010_001_011_1_1011101011011110_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[29] = 91'b0_010_001_011_1_1011101011011110_0000000000000000_1011111011101111_0001001000110100_0000000000000000;
      patterns[30] = 91'b0_001_011_011_1_1011101011011110_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[31] = 91'b1_001_011_011_1_1011101011011110_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[32] = 91'b0_001_011_011_1_1011101011011110_0000000000000000_0001001000110100_1011101011011110_0000000000000000;
      patterns[33] = 91'b0_001_001_011_0_0001001000110100_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[34] = 91'b1_001_001_011_0_0001001000110100_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[35] = 91'b0_001_001_011_0_0001001000110100_0000000000000000_0001001000110100_0001001000110100_0000000000000000;
      patterns[36] = 91'b0_011_100_001_1_0000000000000000_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[37] = 91'b1_011_100_001_1_0000000000000000_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[38] = 91'b0_011_100_001_1_0000000000000000_0000000000000000_1011101011011110_1111111111111111_0000000000000000;
      patterns[39] = 91'b0_001_001_011_0_0001001000110100_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[40] = 91'b1_001_001_011_0_0001001000110100_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[41] = 91'b0_001_001_011_0_0001001000110100_0000000000000000_0000000000000000_0000000000000000_0000000000000000;
      patterns[42] = 91'b0_011_100_000_1_1011101011011110_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[43] = 91'b1_011_100_000_1_1011101011011110_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[44] = 91'b0_011_100_000_1_1011101011011110_0000000000000000_1011101011011110_1111111111111111_0000000000000000;
      patterns[45] = 91'b0_000_000_011_1_1011101011011110_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[46] = 91'b1_000_000_011_1_1011101011011110_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[47] = 91'b0_000_000_011_1_1011101011011110_0000000000000000_0000000000000000_0000000000000000_0000000000000000;
      patterns[48] = 91'b0_000_000_100_1_0000000000000001_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[49] = 91'b1_000_000_100_1_0000000000000001_0000000000000000_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[50] = 91'b0_000_000_100_1_0000000000000001_0000000000000000_0000000000000000_0000000000000000_0000000000000000;
      patterns[51] = 91'b0_000_100_010_1_0000000000000001_0000000000000101_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[52] = 91'b1_000_100_010_1_0000000000000001_0000000000000101_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx_xxxxxxxxxxxxxxxx;
      patterns[53] = 91'b0_000_100_010_1_0000000000000001_0000000000000101_0000000000000000_0000000000000001_0000000000000000;

      for (i = 0; i < 54; i = i + 1)
      begin
        clk = patterns[i][90];
        RS1 = patterns[i][89:87];
        RS2 = patterns[i][86:84];
        WS = patterns[i][83:81];
        WE = patterns[i][80];
        IN = patterns[i][79:64];
        PC_IN = patterns[i][63:48];
        #10;
        if (patterns[i][47:32] !== 16'hx)
        begin
          if (OUT1 !== patterns[i][47:32])
          begin
            $display("%d:OUT1: (assertion error). Expected %h, found %h", i, patterns[i][47:32], OUT1);
            $finish;
          end
        end
        if (patterns[i][31:16] !== 16'hx)
        begin
          if (OUT2 !== patterns[i][31:16])
          begin
            $display("%d:OUT2: (assertion error). Expected %h, found %h", i, patterns[i][31:16], OUT2);
            $finish;
          end
        end
        if (patterns[i][15:0] !== 16'hx)
        begin
          if (PC_S !== patterns[i][15:0])
          begin
            $display("%d:PC_S: (assertion error). Expected %h, found %h", i, patterns[i][15:0], PC_S);
            $finish;
          end
        end
      end

      $display("All tests passed.");
    end
    endmodule
