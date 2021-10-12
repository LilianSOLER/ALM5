.global _start
_start:
	mov sp, #0xFF
	mv r0, pc
	b .L1
	.word 0x12345678
.L1:	
	b _halt

_halt:
	b _halt
	
	
