.global main
main:
li a0,5
addi a1, a0, 5
add a2, a0, a1
la a5, value
lw a6,0(a5)
mv a4, a6 
ret

.section .data
value:
.word 8