
	.data
a: .word 0
d: .word 7
c: .word 5
ne: .word -1
ze: .word 0

	.text
main: 

  lw $t0, c
  lw $t1, d
  lw $t2, a
  lw $t3, ne
  lw $t5, ze
 
  sub $t4, $t0, $t1
  bge $t5, $t4, negative

  sw $t4, a

  lw $t2, a
  move $a0, $t2
  li $v0, 1
  syscall

  li $v0, 10
  syscall

negative:

  mul $t2, $t4, $t3
  sw $t2, a 

  lw $t2, a
  move $a0, $t2
  li $v0, 1
  syscall
    
  li $v0, 10
  syscall