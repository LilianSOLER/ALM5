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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Resultat: %d\012\000"
	.align	2
.LC1:
	.ascii	"Caract\303\250re 102: %c\012\000"
	.align	2
.LC2:
	.ascii	"1er octet en memoire de res sous forme de caractere"
	.ascii	": %c\012\000"
	.align	2
.LC3:
	.ascii	"1er octet en memoire de res sous forme d\303\251cim"
	.ascii	"al: %d\012\000"
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
	push	{r4, lr}
	ldr	r4, .L3
	ldr	r1, .L3+4
	str	r1, [r4]
	ldr	r0, .L3+8
	bl	printf
	mov	r1, #102
	strb	r1, [r4, #4]
	ldr	r0, .L3+12
	bl	printf
	str	r4, [r4, #8]
	ldr	r1, [r4]
	strb	r1, [r4, #4]
	and	r1, r1, #255
	ldr	r0, .L3+16
	bl	printf
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldr	r0, .L3+20
	bl	printf
	mov	r0, #0
	pop	{r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	1633837924
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.global	c
	.global	p
	.global	res
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	res, %object
	.size	res, 4
res:
	.space	4
	.type	c, %object
	.size	c, 1
c:
	.space	1
	.space	3
	.type	p, %object
	.size	p, 4
p:
	.space	4
	.ident	"GCC: (15:10.3-2021.07-1) 10.3.1 20210621 (release)"
