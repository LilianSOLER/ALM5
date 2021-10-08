.global _start

_start:
    mov r0, #0     // load r0 with 0
_loop:                     // loop until r0==5
    cmp r0, #5     // compare r0 with 5
    bge _div        // if r0>=5, branch to _halt
    add r0, r0, #1   // increment the register r0
    b   _loop        // loop over
_div:
    //add your division code here...
    mov r0, #14 // load r0 with 14
    mov r1, #5  // load r1 with 5
    mov r2, #0  // load r2 with 0
    mov r3, #0  // load r3 with 0

_loop2:
    cmp r1, r0 // compare r0 with r1
    bge _res  // if r1>=r0, branch to _res
    sub r0, r0, r1 // decrement r0 by r2
    add r2, r2, #1 // increment r2 by 1
    b _loop2 // loop over

_res: //print the remainder and the division
    cmp r3, #0 // compare r3 with 0
    beq _div2
    bge _div3

_div2:
    mov r0, #16 // load r0 with 16
    mov r1, #3  // load r1 with 3
    mov r2, #0  // load r2 with 0
    b _loop2

_div3:
    mov r0, #20 // load r0 with 20
    mov r1, #7  // load r1 with 7
    mov r2, #0  // load r2 with 0
    b _loop2









