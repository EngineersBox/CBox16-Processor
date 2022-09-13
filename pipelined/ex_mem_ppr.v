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

module ex_mem_ppr (
  input CLK,
  input PCSrcE,
  input RegWriteE,
  input MemToRegE,
  input MemWriteE,
  input [15:0] ALUResultE,
  input [15:0] WriteDataE,
  input [2:0] WAE,
  input LDRE,
  input sethE,
  output PCSrcM,
  output RegWriteM,
  output MemToReg,
  output MemWriteM,
  output [15:0] ALUResultM,
  output [15:0] WriteDataM,
  output [2:0] WA3M,
  output LDRM,
  output sethM
);
  // PCSrc
  DIG_Register DIG_Register_i0 (
    .D( PCSrcE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( PCSrcM )
  );
  // RegWrite
  DIG_Register DIG_Register_i1 (
    .D( RegWriteE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( RegWriteM )
  );
  // MemToReg
  DIG_Register DIG_Register_i2 (
    .D( MemToRegE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( MemToReg )
  );
  // MemWrite
  DIG_Register DIG_Register_i3 (
    .D( MemWriteE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( MemWriteM )
  );
  // ALUResult
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i4 (
    .D( ALUResultE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( ALUResultM )
  );
  // WriteData
  DIG_Register_BUS #(
    .Bits(16)
  )
  DIG_Register_BUS_i5 (
    .D( WriteDataE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( WriteDataM )
  );
  // WA
  DIG_Register_BUS #(
    .Bits(3)
  )
  DIG_Register_BUS_i6 (
    .D( WAE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( WA3M )
  );
  // LDR
  DIG_Register DIG_Register_i7 (
    .D( LDRE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( LDRM )
  );
  // setHE
  DIG_Register DIG_Register_i8 (
    .D( sethE ),
    .C( CLK ),
    .en( 1'b1 ),
    .Q( sethM )
  );
endmodule