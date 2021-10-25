.align 2
.global _fact
	.type _fact,%function
	.func _fact,_fact
_fact:
	cmp r0, #1       // fact(1)=1
	bne .L0          // so if r0==1
	mov pc, lr       // return 1
.L0:
	push {r1, lr}        // save r1 and lr in memory on the stack
	mov r1, r0	 // save r0 in r1
	sub r0,r0,#1     // compute (n-1)!
        bl _fact         // by recursively calling  _fact
	mul r0, r1, r0   // compute n*(n-1)!
        pop {r1, lr}	 //restore r1 and lr
	mov pc,lr        // return
	.size	_fact, .-_fact
	.endfunc
