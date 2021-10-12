	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"force.c"
	.text
	.align	2
	.global	main
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L3
	ldr	r1, .L3+4
	str	r1, [r5]
	ldr	r0, .L3+8
	bl	printf
	ldr	r4, .L3+12
	mov	r1, #102
	strb	r1, [r4]
	ldr	r0, .L3+16
	bl	printf
	ldr	r3, .L3+20
	str	r5, [r3]
	ldr	r1, [r5]
	strb	r1, [r4]
	and	r1, r1, #255
	ldr	r0, .L3+24
	bl	printf
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L3+28
	bl	printf
	mov	r0, #0
	pop	{r4, r5, r6, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	res
	.word	1633837924
	.word	.LC0
	.word	c
	.word	.LC1
	.word	p
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.comm	c,1,1
	.comm	p,4,4
	.comm	res,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Resultat: %d\012\000"
	.space	2
.LC1:
	.ascii	"Caract\303\250re 102: %c\012\000"
.LC2:
	.ascii	"1er octet en memoire de res sous forme de caractere"
	.ascii	": %c\012\000"
	.space	3
.LC3:
	.ascii	"1er octet en memoire de res sous forme d\303\251cim"
	.ascii	"al: %d\012\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
