/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module CompUnsigned #(
    parameter Bits = 1
)
(
    input [(Bits -1):0] a,
    input [(Bits -1):0] b,
    output \> ,
    output \= ,
    output \<
);
    assign \> = a > b;
    assign \= = a == b;
    assign \< = a < b;
endmodule

module LUT_OpcodeCL (
    input \0 ,
    input \1 ,
    input \2 ,
    input \3 ,
    output reg  [11:0]  out
);
    reg [11:0] my_lut [0:15];
    wire [3:0] temp;
    assign temp = {\3 , \2 , \1 , \0 };

    always @ (*) begin
       out = my_lut[temp];
    end

    initial begin
        my_lut[0] = 12'h410;
        my_lut[1] = 12'h414;
        my_lut[2] = 12'h0;
        my_lut[3] = 12'h0;
        my_lut[4] = 12'h100;
        my_lut[5] = 12'h601;
        my_lut[6] = 12'h0;
        my_lut[7] = 12'h0;
        my_lut[8] = 12'h40a;
        my_lut[9] = 12'h44a;
        my_lut[10] = 12'h48a;
        my_lut[11] = 12'h4ca;
        my_lut[12] = 12'h0;
        my_lut[13] = 12'h0;
        my_lut[14] = 12'h0;
        my_lut[15] = 12'h0;
    end
endmodule


module Mux_2x1
(
    input [0:0] sel,
    input in_0,
    input in_1,
    output reg out
);
    always @ (*) begin
        case (sel)
            1'h0: out = in_0;
            1'h1: out = in_1;
            default:
                out = 'h0;
        endcase
    end
endmodule


module Mux_2x1_NBits #(
    parameter Bits = 2
)
(
    input [0:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            1'h0: out = in_0;
            1'h1: out = in_1;
            default:
                out = 'h0;
        endcase
    end
endmodule


module control_unit (
  input [15:0] INST,
  output FlagWriteD,
  output ALUSrcD,
  output BranchD,
  output [1:0] ALUCtrlD,
  output MemWriteD,
  output MemToRegD,
  output RegWriteD,
  output PCSrcD,
  output SethD,
  output FlagEN,
  output LDR,
  output InsertNOP
);
  wire [2:0] s0;
  wire [3:0] s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire [11:0] s6;
  wire s7;
  wire s8;
  wire s9;
  wire [1:0] s10;
  wire s11;
  wire s12;
  wire s13;
  wire s14;
  wire s15;
  wire s16;
  wire InsertNOP_temp;
  wire s17;
  wire [1:0] s18;
  wire s19;
  assign s18[0] = 1'b0;
  assign s18[1] = 1'b0;
  CompUnsigned #(
    .Bits(16)
  )
  CompUnsigned_i0 (
    .a( 16'b0 ),
    .b( INST ),
    .\= ( InsertNOP_temp )
  );
  assign s0 = INST[10:8];
  assign s1 = INST[15:12];
  // Is Rd PC
  CompUnsigned #(
    .Bits(3)
  )
  CompUnsigned_i1 (
    .a( s0 ),
    .b( 3'b111 ),
    .\= ( s16 )
  );
  assign s2 = s1[0];
  assign s3 = s1[1];
  assign s4 = s1[2];
  assign s5 = s1[3];
  // OpcodeCL
  LUT_OpcodeCL LUT_OpcodeCL_i2 (
    .\0 ( s2 ),
    .\1 ( s3 ),
    .\2 ( s4 ),
    .\3 ( s5 ),
    .out( s6 )
  );
  assign s17 = (s16 | s6[11]);
  assign s19 = (s16 | s6[5]);
  assign s7 = s6[10];
  assign s8 = s6[9];
  assign s9 = s6[8];
  assign s10 = s6[7:6];
  assign s11 = s6[4];
  assign s12 = s6[3];
  assign s13 = s6[2];
  assign s14 = s6[1];
  assign s15 = s6[0];
  Mux_2x1 Mux_2x1_i3 (
    .sel( InsertNOP_temp ),
    .in_0( s17 ),
    .in_1( 1'b0 ),
    .out( PCSrcD )
  );
  Mux_2x1 Mux_2x1_i4 (
    .sel( InsertNOP_temp ),
    .in_0( s7 ),
    .in_1( 1'b0 ),
    .out( RegWriteD )
  );
  Mux_2x1 Mux_2x1_i5 (
    .sel( InsertNOP_temp ),
    .in_0( s8 ),
    .in_1( 1'b0 ),
    .out( MemToRegD )
  );
  Mux_2x1 Mux_2x1_i6 (
    .sel( InsertNOP_temp ),
    .in_0( s9 ),
    .in_1( 1'b0 ),
    .out( MemWriteD )
  );
  Mux_2x1_NBits #(
    .Bits(2)
  )
  Mux_2x1_NBits_i7 (
    .sel( InsertNOP_temp ),
    .in_0( s10 ),
    .in_1( s18 ),
    .out( ALUCtrlD )
  );
  Mux_2x1 Mux_2x1_i8 (
    .sel( InsertNOP_temp ),
    .in_0( s19 ),
    .in_1( 1'b0 ),
    .out( BranchD )
  );
  Mux_2x1 Mux_2x1_i9 (
    .sel( InsertNOP_temp ),
    .in_0( s11 ),
    .in_1( 1'b0 ),
    .out( ALUSrcD )
  );
  Mux_2x1 Mux_2x1_i10 (
    .sel( InsertNOP_temp ),
    .in_0( s12 ),
    .in_1( 1'b0 ),
    .out( FlagWriteD )
  );
  Mux_2x1 Mux_2x1_i11 (
    .sel( InsertNOP_temp ),
    .in_0( s13 ),
    .in_1( 1'b0 ),
    .out( SethD )
  );
  Mux_2x1 Mux_2x1_i12 (
    .sel( InsertNOP_temp ),
    .in_0( s14 ),
    .in_1( 1'b0 ),
    .out( FlagEN )
  );
  Mux_2x1 Mux_2x1_i13 (
    .sel( InsertNOP_temp ),
    .in_0( s15 ),
    .in_1( 1'b0 ),
    .out( LDR )
  );
  assign InsertNOP = InsertNOP_temp;
endmodule