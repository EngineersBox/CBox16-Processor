/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module Demux3
(
    output out_0,
    output out_1,
    output out_2,
    output out_3,
    output out_4,
    output out_5,
    output out_6,
    output out_7,
    input [2:0] sel,
    input in
);
    assign out_0 = (sel == 3'h0)? in : 'd0;
    assign out_1 = (sel == 3'h1)? in : 'd0;
    assign out_2 = (sel == 3'h2)? in : 'd0;
    assign out_3 = (sel == 3'h3)? in : 'd0;
    assign out_4 = (sel == 3'h4)? in : 'd0;
    assign out_5 = (sel == 3'h5)? in : 'd0;
    assign out_6 = (sel == 3'h6)? in : 'd0;
    assign out_7 = (sel == 3'h7)? in : 'd0;
endmodule


module DIG_Register_BUS #(
    parameter Bits = 1
)
(
    input C,
    input en,
    input [(Bits - 1):0]D,
    output [(Bits - 1):0]Q
);

    reg [(Bits - 1):0] state = 'h0;

    assign Q = state;

    always @ (posedge C) begin
        if (en)
            state <= D;
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


module high_mask_in (
  input [15:0] D_HIGH,
  input [15:0] D,
  input EN,
  output [15:0] Q
);
  wire [15:0] s0;
  assign s0[7:0] = D[7:0];
  assign s0[15:8] = D_HIGH[7:0];
  Mux_2x1_NBits #(
    .Bits(16)
  )
  Mux_2x1_NBits_i0 (
    .sel( EN ),
    .in_0( D_HIGH ),
    .in_1( s0 ),
    .out( Q )
  );
endmodule

module Mux_8x1_NBits #(
    parameter Bits = 2
)
(
    input [2:0] sel,
    input [(Bits - 1):0] in_0,
    input [(Bits - 1):0] in_1,
    input [(Bits - 1):0] in_2,
    input [(Bits - 1):0] in_3,
    input [(Bits - 1):0] in_4,
    input [(Bits - 1):0] in_5,
    input [(Bits - 1):0] in_6,
    input [(Bits - 1):0] in_7,
    output reg [(Bits - 1):0] out
);
    always @ (*) begin
        case (sel)
            3'h0: out = in_0;
            3'h1: out = in_1;
            3'h2: out = in_2;
            3'h3: out = in_3;
            3'h4: out = in_4;
            3'h5: out = in_5;
            3'h6: out = in_6;
            3'h7: out = in_7;
            default:
                out = 'h0;
        endcase
    end
endmodule


module reg_file (
  input [2:0] RS1, // The index of the register which should output its value to OUT1.
  input [2:0] RS2, // The index of the register which should output its value to OUT2.
  input [2:0] WS, // The index of the register which should save the value on IN on the next clock cycle (if WE is high).
  input WE, // Whether the register selected by WS should save the value from IN on the next cycle.
  input [15:0] IN, // The value to be saved into the register specified by WS if WE is high,
  input clk,
  input [15:0] FL_IN, // The value to be saved into the register specified by WS if WE is high,
  input FL_EN, // Whether the register selected by WS should save the value from IN on the next cycle.
  input [15:0] PC_IN,
  input HE,
  output [15:0] OUT1, // The value in the register specified by RS1.
  output [15:0] OUT2, // The value in the register specified by RS2.
  output [15:0] PC_S,
  output PC_WE,
  output [15:0] FL_OUT
);
  wire s0;
  wire [15:0] s1;
  wire [15:0] s2;
  wire s3;
  wire [15:0] s4;
  wire [15:0] s5;
  wire s6;
  wire [15:0] s7;
  wire [15:0] s8;
  wire s9;
  wire [15:0] s10;
  wire [15:0] s11;
  wire s12;
  wire [15:0] s13;
  wire [15:0] FL_OUT_temp;
  wire s14;
  wire PC_WE_temp;
  wire [15:0] s15;
  wire s16;
  wire [15:0] s17;
  wire [15:0] s18;
  Demux3 Demux3_i0 (
    .sel( WS ),
    .in( WE ),
    .out_0( s0 ),
    .out_1( s3 ),
    .out_2( s6 ),
    .out_3( s9 ),
    .out_4( s12 ),
    .out_5( s14 ),
    .out_7( PC_WE_temp )
  );
  // RZ
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i1 (
    .D( 16'b0 ),
    .C( clk ),
    .en( s0 ),
    .Q( s1 )
  );
  assign s16 = (s14 | FL_EN);
  Mux_2x1_NBits #(
    .Bits(16)
  )
  Mux_2x1_NBits_i2 (
    .sel( PC_WE_temp ),
    .in_0( PC_IN ),
    .in_1( IN ),
    .out( s18 )
  );
  high_mask_in high_mask_in_i3 (
    .D_HIGH( s18 ),
    .D( PC_IN ),
    .EN( HE ),
    .Q( s17 )
  );
  Mux_2x1_NBits #(
    .Bits(16)
  )
  Mux_2x1_NBits_i4 (
    .sel( PC_WE_temp ),
    .in_0( 16'b0 ),
    .in_1( s17 ),
    .out( PC_S )
  );
  // R1
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i5 (
    .D( s2 ),
    .C( clk ),
    .en( s3 ),
    .Q( s4 )
  );
  // R2
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i6 (
    .D( s5 ),
    .C( clk ),
    .en( s6 ),
    .Q( s7 )
  );
  // R3
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i7 (
    .D( s8 ),
    .C( clk ),
    .en( s9 ),
    .Q( s10 )
  );
  // R4
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i8 (
    .D( s11 ),
    .C( clk ),
    .en( s12 ),
    .Q( s13 )
  );
  Mux_8x1_NBits #(
    .Bits(16)
  )
  Mux_8x1_NBits_i9 (
    .sel( RS1 ),
    .in_0( s1 ),
    .in_1( s4 ),
    .in_2( s7 ),
    .in_3( s10 ),
    .in_4( s13 ),
    .in_5( FL_OUT_temp ),
    .in_6( 16'b0 ),
    .in_7( PC_IN ),
    .out( OUT1 )
  );
  Mux_8x1_NBits #(
    .Bits(16)
  )
  Mux_8x1_NBits_i10 (
    .sel( RS2 ),
    .in_0( s1 ),
    .in_1( s4 ),
    .in_2( s7 ),
    .in_3( s10 ),
    .in_4( s13 ),
    .in_5( FL_OUT_temp ),
    .in_6( 16'b0 ),
    .in_7( PC_IN ),
    .out( OUT2 )
  );
  // FL
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i11 (
    .D( s15 ),
    .C( clk ),
    .en( s16 ),
    .Q( FL_OUT_temp )
  );
  high_mask_in high_mask_in_i12 (
    .D_HIGH( IN ),
    .D( s4 ),
    .EN( HE ),
    .Q( s2 )
  );
  high_mask_in high_mask_in_i13 (
    .D_HIGH( IN ),
    .D( s7 ),
    .EN( HE ),
    .Q( s5 )
  );
  high_mask_in high_mask_in_i14 (
    .D_HIGH( IN ),
    .D( s10 ),
    .EN( HE ),
    .Q( s8 )
  );
  high_mask_in high_mask_in_i15 (
    .D_HIGH( IN ),
    .D( s13 ),
    .EN( HE ),
    .Q( s11 )
  );
  high_mask_in high_mask_in_i16 (
    .D_HIGH( FL_IN ),
    .D( FL_OUT_temp ),
    .EN( HE ),
    .Q( s15 )
  );
  assign PC_WE = PC_WE_temp;
  assign FL_OUT = FL_OUT_temp;
endmodule