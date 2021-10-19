        .text
        .align 2
.global _sum
        .type _sum,%function
        .func _sum,_sum


_sum:
  mov r1, #0 @sommme
	mov r2, #0 @élément du tableau
	b _loop

_loop:
	ldr r2, [r3] @lire l'élément du tableau
	cmp r2, #0 @si élément = 0
	beq _ret @deuxième cas
	add r1, r2, r1 @somme += élément du tableau
	add r3, #4 @adresse suivante
	b _loop @continuer
  mov pc, lr
  .size _sum, .-_sum
  .endfunc

_ret:
  mov pc, lr
