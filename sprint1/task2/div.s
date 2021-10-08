        .text
        .align 2
.global _div
        .type _div,%function
        .func _div,_div

.global _fact
        

_div:
    // Add your division code here...
    cmp r1, r0 // compare r0 with r1
    bge _ret  // if r1>=r0, branch to _res
    sub r0, r0, r1 // decrement r0 by r2
    add r2, r2, #1 // increment r2 by 1
    b _div // loop over

    mov pc, lr
    .size _div, .-_div
    .endfunc

_fact:
  mov r4, #1
  b _loopFact

_loopFact:
  cmp r0, #1
  beq _ret
  mul r4,r0, r4
  sub r0, r0, #1
  b _loopFact

_ret:
  mov pc, lr
