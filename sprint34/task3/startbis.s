.global _start
_start:
	mov sp, #0xFF
	mov r0, pc
	b .L1
	.word array

.L1:
	mov r1, #0 @sommme
	mov r2, #0 @élément du tableau
	@put the address of the array in r3
	ldr r3 , =array @début du tableau$
	b .loop

.loop:
	ldr r2, [r3]
	cmp r2, #0
	beq _halt
	add r1, r2, r1
	add r3, #4
	b .loop

array:
	.word 0x04
	.word 0x02
	.word 0x01
	.word 0x00

@ .createArray:
@ 	mov r1, #2
@ 	mov r2, #0
@ 	mov r3, #5

@ .createArrayLoop:
@ 	ldr r1,[r2,#8]
@ 	str 0x12345678, [r1]
@ 	cmp r3, #0
@ 	beq .L1
@ 	sub r3, #1
@ 	b .createArrayLoop

@ .L1:
@ 	mov r3, #0
@ 	mov r1, #0
@ 	ldr r2, [0x12345678,r1]
@ 	cmp r2, #0
@ 	beq _halt
@ 	add r3, r2, r3
@ 	add r1, r1, #8
@ 	b .L1

_halt:
	b _halt
	
	
