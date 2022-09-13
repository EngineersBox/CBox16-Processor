/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module DIG_Register
(
    input C,
    input en,
    input D,
    output Q
);

    reg  state = 'h0;

    assign Q = state;

    always @ (posedge C) begin
        if (en)
            state <= D;
   end
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

module mem_wb_ppr (
  input CLK,
  input PCSrcM,
  input RegWriteM,
  input MemToRegM,
  input [15:0] ReadDataM,
  input [15:0] ALUResultM,
  input [2:0] WA3M,
  input SethM,
  output PCSrcW,
  output RegWriteW,
  output MemToRegW,
  output [15:0] ReadDataW,
  output [15:0] ALUResultW,
  output [2:0] WA3W,
  output SethW
);
  // PCSrc
  DIG_Register DIG_Register_i0 (
    .D( PCSrcM ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( PCSrcW )
  );
  // RegWrite
  DIG_Register DIG_Register_i1 (
    .D( RegWriteM ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( RegWriteW )
  );
  // MemToReg
  DIG_Register DIG_Register_i2 (
    .D( MemToRegM ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( MemToRegW )
  );
  // ReadData
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i3 (
    .D( ReadDataM ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( ReadDataW )
  );
  // ALUResult
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i4 (
    .D( ALUResultM ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( ALUResultW )
  );
  // WA3
  DIG_Register_BUS #(
    .Bits(3)
  )
  DIG_Register_BUS_i5 (
    .D( WA3M ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( WA3W )
  );
  // Seth
  DIG_Register DIG_Register_i6 (
    .D( SethM ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( SethW )
  );
endmodule