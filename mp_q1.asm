.data
a: .word 1

.text
main:
 lw $t0, a
 b loop

loop:
 add $t1, $t1, $t0
 addi $t0, $t0 ,1

 bne $t0, 11, loop 