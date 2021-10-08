.global _start
_start:
    mov sp, #0xFF

    @ mov r0, #9
    @ mov r1, #4
    @ bl _div       // first call to _div(9,4)
    @ mov r0, #3
    @ mov r1, #4
    @ bl _div       // first call to _div(3,4)
    @ mov r0, #5
    @ bl _fact
    mov r0, #96
    bl _writec
    mov r0, #72
    bl _writec
    mov r0, #69
    bl _writec
    mov r0, #76
    bl _writec
    bl _writec
    mov r0, #79
    bl _writec
    mov r0, #32
    bl _writec
    mov r0, #87
    bl _writec
    mov r0, #79
    bl _writec
    mov r0, #82
    bl _writec
    mov r0, #76
    bl _writec
    mov r0, #68
    bl _writec
    mov r0, #96
    bl _writec
    b _halt

_ret:
    mov pc, lr

_halt:
    b _halt
