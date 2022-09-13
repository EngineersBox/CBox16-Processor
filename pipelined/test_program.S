movl r1, 8 ; Fill this in
movl r2, 3
movl r3, 0xA
movl r4, 8
ldr r1, [r4]
and r2, r1, r3
orr r3, r4, r1
sub r2, r1, r3
.word 0x1C