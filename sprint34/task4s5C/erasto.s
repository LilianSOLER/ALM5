	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"erasto.c"
	.text
	.align	2
	.global	affecttab
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	affecttab, %function
affecttab:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [fp, #-16]
	and	r2, r2, #255
	strb	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	affecttab, .-affecttab
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #28
	mov	r3, sp
	mov	r6, r3
	mov	r3, #100
	str	r3, [fp, #-32]
	ldr	ip, [fp, #-32]
	sub	r3, ip, #1
	str	r3, [fp, #-36]
	mov	r2, ip
	mov	r3, #0
	mov	r4, r2
	mov	r5, r3
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r5, #3
	orr	r3, r3, r4, lsr #29
	lsl	r2, r4, #3
	mov	r2, ip
	mov	r3, #0
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #3
	orr	r3, r3, r0, lsr #29
	lsl	r2, r0, #3
	mov	r3, ip
	add	r3, r3, #7
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #0
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L3
.L4:
	mov	r2, #1
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-40]
	bl	affecttab
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L3:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L4
	mov	r3, #2
	str	r3, [fp, #-28]
	b	.L5
.L9:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L6
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L7
.L8:
	mov	r2, #0
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-40]
	bl	affecttab
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L7:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L8
.L6:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L5:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L9
	mov	sp, r6
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, lr}
	bx	lr
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-1) 10.3.1 20210621 (release)"
