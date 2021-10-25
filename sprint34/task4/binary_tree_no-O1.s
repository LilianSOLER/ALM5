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
	.file	"binary_tree.c"
	.text
	.bss
	.align	2
tree:
	.space	12
	.size	tree, 12
	.align	2
A:
	.space	12
	.size	A, 12
	.align	2
B:
	.space	12
	.size	B, 12
	.align	2
A1:
	.space	12
	.size	A1, 12
	.align	2
A2:
	.space	12
	.size	A2, 12
	.align	2
B1:
	.space	12
	.size	B1, 12
	.align	2
B2:
	.space	12
	.size	B2, 12
	.text
	.align	2
	.global	init_nodes
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	init_nodes, %function
init_nodes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L2
	mov	r2, #2
	str	r2, [r3]
	ldr	r3, .L2+4
	mov	r2, #12
	str	r2, [r3]
	ldr	r3, .L2+8
	mov	r2, #32
	str	r2, [r3]
	ldr	r3, .L2+12
	mov	r2, #43
	str	r2, [r3]
	ldr	r3, .L2+16
	mov	r2, #234
	str	r2, [r3]
	ldr	r3, .L2+20
	ldr	r2, .L2+24
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	A
	.word	B
	.word	A1
	.word	A2
	.word	B1
	.word	B2
	.word	543
	.size	init_nodes, .-init_nodes
	.align	2
	.global	init_tree
	.syntax unified
	.arm
	.fpu softvfp
	.type	init_tree, %function
init_tree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	init_nodes
	ldr	r3, .L5
	ldr	r2, .L5+4
	str	r2, [r3, #4]
	ldr	r3, .L5
	ldr	r2, .L5+8
	str	r2, [r3, #8]
	ldr	r3, .L5+4
	ldr	r2, .L5+12
	str	r2, [r3, #4]
	ldr	r3, .L5+4
	ldr	r2, .L5+16
	str	r2, [r3, #8]
	ldr	r3, .L5+8
	ldr	r2, .L5+20
	str	r2, [r3, #4]
	ldr	r3, .L5+8
	ldr	r2, .L5+24
	str	r2, [r3, #8]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	tree
	.word	A
	.word	B
	.word	A1
	.word	A2
	.word	B1
	.word	B2
	.size	init_tree, .-init_tree
	.align	2
	.global	tree_sum
	.syntax unified
	.arm
	.fpu softvfp
	.type	tree_sum, %function
tree_sum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L8
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	tree_sum
	mov	r2, r0
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
.L8:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	tree_sum
	mov	r2, r0
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
.L9:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	tree_sum, .-tree_sum
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	init_tree
	ldr	r0, .L13
	bl	tree_sum
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	tree
	.size	main, .-main
	.ident	"GCC: (15:10.3-2021.07-1) 10.3.1 20210621 (release)"
