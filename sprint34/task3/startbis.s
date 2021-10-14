.global _start

.data @zone des donnees
	array1:
		.word 0x04 @premier élément du tableau
		.word 0x02 @deuxième élément du tableau
		.word 0x01
		.word 0x00

.text @zone des instructions
	_start:
		mov sp, #0xFF
		b _L1
		.word array1

	_L1:
		mov r1, #0 @sommme
		mov r2, #0 @élément du tableau
		ldr r3 , =array1 @début du tableau$
		b _loop

	_loop:
		ldr r2, [r3] @lire l'élément du tableau
		cmp r2, #0 @si élément = 0
		beq _halt @deuxième cas
		add r1, r2, r1 @somme += élément du tableau
		add r3, #4 @adresse suivante
		b _loop @continuer

	_halt:
		mov r0, #0x4 @afficher bye
		svc #0x80 @appel syscall
		@fin du programme
		
		
