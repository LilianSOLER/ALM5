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
	.file	"fold6.c"
	.text
	.align	2
	.global	fold2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	fold2, %function
fold2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	fold2, .-fold2
	.align	2
	.global	fold3
	.syntax unified
	.arm
	.fpu softvfp
	.type	fold3, %function
fold3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	fold2
	mov	r2, r0
	ldr	r3, [fp, #-16]
	mul	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	fold3, .-fold3
	.align	2
	.global	fold6
	.syntax unified
	.arm
	.fpu softvfp
	.type	fold6, %function
fold6:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	fold3
	mov	r4, r0
	ldr	r2, [fp, #8]
	ldr	r1, [fp, #4]
	ldr	r0, [fp, #-28]
	bl	fold3
	mov	r3, r0
	sub	r3, r4, r3
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	bx	lr
	.size	fold6, .-fold6
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, #21
	str	r3, [sp, #4]
	mov	r3, #23
	str	r3, [sp]
	mov	r3, #43
	mov	r2, #12
	mov	r1, #3
	mov	r0, #5
	bl	fold6
	str	r0, [fp, #-8]
.L8:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L8
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-1) 10.3.1 20210621 (release)"
