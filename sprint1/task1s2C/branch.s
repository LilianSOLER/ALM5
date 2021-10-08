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
	.file	"branch.c"
	.text
	.align	2
	.global	get_mot_a_trouver
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	get_mot_a_trouver, %function
get_mot_a_trouver:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	rand
	ldr	r3, .L3
	umull	r2, r3, r0, r3
	lsr	r3, r3, #5
	add	r2, r3, r3, lsl #1
	rsb	r3, r3, r2, lsl #4
	sub	r3, r0, r3
	ldr	r2, .L3+4
	ldr	r0, [r2, r3, lsl #2]
	pop	{r4, lr}
	bx	lr
.L4:
	.align	2
.L3:
	.word	-1370734243
	.word	.LANCHOR0
	.size	get_mot_a_trouver, .-get_mot_a_trouver
	.align	2
	.global	get_char
	.syntax unified
	.arm
	.fpu softvfp
	.type	get_char, %function
get_char:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	getchar
	and	r4, r0, #255
.L6:
	bl	getchar
	cmp	r0, #10
	beq	.L9
	bl	getchar
	and	r4, r0, #255
	b	.L6
.L9:
	mov	r0, r4
	pop	{r4, lr}
	bx	lr
	.size	get_char, .-get_char
	.align	2
	.global	is_in_mot
	.syntax unified
	.arm
	.fpu softvfp
	.type	is_in_mot, %function
is_in_mot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	ble	.L14
	push	{r4, r5, lr}
	mov	lr, r0
	sub	r1, r1, #1
	add	ip, r1, r3
	mov	r0, #0
	mov	r4, #1
	mov	r5, r4
.L13:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, lr
	streq	r4, [r2]
	moveq	r0, r5
	add	r2, r2, #4
	cmp	r1, ip
	bne	.L13
	pop	{r4, r5, lr}
	bx	lr
.L14:
	mov	r0, #0
	bx	lr
	.size	is_in_mot, .-is_in_mot
	.align	2
	.global	gagne
	.syntax unified
	.arm
	.fpu softvfp
	.type	gagne, %function
gagne:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	ble	.L24
	sub	r3, r0, #4
	add	r1, r3, r1, lsl #2
	mov	r0, #1
.L23:
	ldr	r2, [r3, #4]!
	cmp	r2, #0
	moveq	r0, r2
	cmp	r3, r1
	bne	.L23
	bx	lr
.L24:
	mov	r0, #1
	bx	lr
	.size	gagne, .-gagne
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Le mot a trouver est : %s\012\000"
	.align	2
.LC1:
	.ascii	"Nombre d'essais : %d\012\000"
	.align	2
.LC2:
	.ascii	"Vous avez %d coups pour deviner le mot : \012\000"
	.align	2
.LC3:
	.ascii	"_ \000"
	.align	2
.LC4:
	.ascii	"Vous avez gagne. \000"
	.align	2
.LC5:
	.ascii	"Vous avez perdu ! Le mot \303\251tait : %s\012\000"
	.align	2
.LC6:
	.ascii	"Voulez-vous continuer ? (y/n)\000"
	.align	2
.LC7:
	.ascii	"Bye.\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	bl	clock
	bl	srand
	ldr	r7, .L47
	b	.L42
.L33:
	mov	r0, r7
	bl	printf
.L34:
	add	r5, r5, #1
	cmp	r4, r6
	beq	.L32
.L35:
	ldr	r3, [r4, #4]!
	cmp	r3, #1
	bne	.L33
	ldrb	r0, [r5]	@ zero_extendqisi2
	bl	putchar
	b	.L34
.L32:
	mov	r0, #10
	bl	putchar
	mov	r0, #63
	bl	putchar
	bl	get_char
	mov	r3, r10
	mov	r2, r8
	mov	r1, fp
	bl	is_in_mot
	cmp	r0, #0
	subeq	r9, r9, #1
	mov	r0, #10
	bl	putchar
	cmp	r9, #0
	ble	.L30
.L31:
	mov	r1, r10
	mov	r0, r8
	bl	gagne
	cmp	r0, #0
	bne	.L38
	mov	r1, r9
	ldr	r0, .L47+4
	bl	printf
	cmp	r10, #0
	ble	.L32
	sub	r4, r8, #4
	mov	r5, fp
	b	.L35
.L30:
	ldr	r1, [sp, #4]
	mov	r0, r8
	bl	gagne
	cmp	r0, #0
	bne	.L38
	mov	r1, fp
	ldr	r0, .L47+8
	bl	printf
	b	.L40
.L38:
	ldr	r0, .L47+12
	bl	printf
.L40:
	ldr	r0, .L47+16
	bl	printf
	bl	get_char
	cmp	r0, #110
	beq	.L41
	mov	r0, r8
	bl	free
.L42:
	bl	get_mot_a_trouver
	mov	fp, r0
	mov	r1, r0
	ldr	r0, .L47+20
	bl	printf
	mov	r0, fp
	bl	strlen
	mov	r5, r0
	str	r0, [sp, #4]
	mov	r10, r0
	lsl	r4, r0, #2
	mov	r0, r4
	bl	malloc
	mov	r8, r0
	lsl	r9, r5, #1
	mov	r1, r9
	ldr	r0, .L47+24
	bl	printf
	cmp	r5, #0
	ble	.L28
	sub	r3, r8, #4
	add	r2, r8, r4
	sub	r2, r2, #4
	mov	r1, #0
.L29:
	str	r1, [r3, #4]!
	cmp	r3, r2
	bne	.L29
.L28:
	cmp	r9, #0
	ble	.L30
	add	r4, r8, r4
	sub	r6, r4, #4
	b	.L31
.L41:
	ldr	r0, .L47+28
	bl	puts
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LC3
	.word	.LC2
	.word	.LC5
	.word	.LC4
	.word	.LC6
	.word	.LC0
	.word	.LC1
	.word	.LC7
	.size	main, .-main
	.global	words
	.section	.rodata.str1.4
	.align	2
.LC8:
	.ascii	"alligator\000"
	.align	2
.LC9:
	.ascii	"ant\000"
	.align	2
.LC10:
	.ascii	"bear\000"
	.align	2
.LC11:
	.ascii	"bee\000"
	.align	2
.LC12:
	.ascii	"bird\000"
	.align	2
.LC13:
	.ascii	"cat\000"
	.align	2
.LC14:
	.ascii	"chicken\000"
	.align	2
.LC15:
	.ascii	"cow\000"
	.align	2
.LC16:
	.ascii	"crocodile\000"
	.align	2
.LC17:
	.ascii	"deer\000"
	.align	2
.LC18:
	.ascii	"dog\000"
	.align	2
.LC19:
	.ascii	"dolphin\000"
	.align	2
.LC20:
	.ascii	"duck\000"
	.align	2
.LC21:
	.ascii	"elephant\000"
	.align	2
.LC22:
	.ascii	"fish\000"
	.align	2
.LC23:
	.ascii	"fly\000"
	.align	2
.LC24:
	.ascii	"fox\000"
	.align	2
.LC25:
	.ascii	"frog\000"
	.align	2
.LC26:
	.ascii	"giraffe\000"
	.align	2
.LC27:
	.ascii	"goat\000"
	.align	2
.LC28:
	.ascii	"goose\000"
	.align	2
.LC29:
	.ascii	"gorilla\000"
	.align	2
.LC30:
	.ascii	"hamster\000"
	.align	2
.LC31:
	.ascii	"horse\000"
	.align	2
.LC32:
	.ascii	"kangaroo\000"
	.align	2
.LC33:
	.ascii	"kitten\000"
	.align	2
.LC34:
	.ascii	"lion\000"
	.align	2
.LC35:
	.ascii	"lobster\000"
	.align	2
.LC36:
	.ascii	"monkey\000"
	.align	2
.LC37:
	.ascii	"mouse\000"
	.align	2
.LC38:
	.ascii	"octopus\000"
	.align	2
.LC39:
	.ascii	"owl\000"
	.align	2
.LC40:
	.ascii	"panda\000"
	.align	2
.LC41:
	.ascii	"penguin\000"
	.align	2
.LC42:
	.ascii	"pig\000"
	.align	2
.LC43:
	.ascii	"rabbit\000"
	.align	2
.LC44:
	.ascii	"rat\000"
	.align	2
.LC45:
	.ascii	"rhinoceros\000"
	.align	2
.LC46:
	.ascii	"sheep\000"
	.align	2
.LC47:
	.ascii	"sloth\000"
	.align	2
.LC48:
	.ascii	"snake\000"
	.align	2
.LC49:
	.ascii	"spider\000"
	.align	2
.LC50:
	.ascii	"squirrel\000"
	.align	2
.LC51:
	.ascii	"tiger\000"
	.align	2
.LC52:
	.ascii	"turtle\000"
	.align	2
.LC53:
	.ascii	"whale\000"
	.align	2
.LC54:
	.ascii	"zebra\000"
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	words, %object
	.size	words, 188
words:
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
