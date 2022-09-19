movl r1, 0x8 ; Test data in registers
movl r2, 0x13
movl r3, 0xA
movl r4, 0x8
jp 0x6
add r2, r3, r4
ldr r1, [r2]
nop
nop
nop
nop
nop
nop
.word 0xFF