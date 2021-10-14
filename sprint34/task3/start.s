.global _start
_start:
	mov sp, #0xFF
    ldr r0, [pc,#8]
    ldr r1, [r0]
    add r1, r1, #1
    str r1, [r0]
var: .word 0x1234

_halt:
	b _halt
	
	
