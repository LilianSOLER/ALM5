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
	.file	"binary_tree.c"
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
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	mov	r2, #2
	str	r2, [r3]
	mov	r2, #12
	str	r2, [r3, #12]
	mov	r2, #32
	str	r2, [r3, #24]
	mov	r2, #43
	str	r2, [r3, #36]
	mov	r2, #234
	str	r2, [r3, #48]
	ldr	r2, .L2+4
	str	r2, [r3, #60]
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
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
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	init_nodes
	ldr	r3, .L6
	str	r3, [r3, #76]
	add	r2, r3, #12
	str	r2, [r3, #80]
	add	r2, r3, #24
	str	r2, [r3, #4]
	add	r2, r3, #36
	str	r2, [r3, #8]
	add	r2, r3, #48
	str	r2, [r3, #16]
	add	r2, r3, #60
	str	r2, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.size	init_tree, .-init_tree
	.align	2
	.global	tree_sum
	.syntax unified
	.arm
	.fpu softvfp
	.type	tree_sum, %function
tree_sum:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, [r0]
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.L9
	bl	tree_sum
	add	r5, r5, r0
.L9:
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L8
	bl	tree_sum
	add	r5, r5, r0
.L8:
	mov	r0, r5
	pop	{r4, r5, r6, lr}
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
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	init_tree
	ldr	r0, .L14
	bl	tree_sum
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0+72
	.size	main, .-main
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	A, %object
	.size	A, 12
A:
	.space	12
	.type	B, %object
	.size	B, 12
B:
	.space	12
	.type	A1, %object
	.size	A1, 12
A1:
	.space	12
	.type	A2, %object
	.size	A2, 12
A2:
	.space	12
	.type	B1, %object
	.size	B1, 12
B1:
	.space	12
	.type	B2, %object
	.size	B2, 12
B2:
	.space	12
	.type	tree, %object
	.size	tree, 12
tree:
	.space	12
	.ident	"GCC: (15:10.3-2021.07-1) 10.3.1 20210621 (release)"
