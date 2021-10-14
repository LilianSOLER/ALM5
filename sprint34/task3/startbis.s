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
		.word array1
		ldr r3 , =array1 @début du tableau$
		bl _sum

	_halt:
		mov r0, #0x4 @afficher bye
		svc #0x80 @appel syscall
		@fin du programme
		
		
