	.data
d: .word 10
c: .word 0
four: .word 4
box: .word 0

limit: .word 1

list: .word 1, 2, 3, 4, 5
	.text

main:
  lw $t1, d
  lw $t2, c
  lw $t3, limit
  lw $t4, four
  la $t7, list
  
 
  jal loop

  li $v0, 10
  syscall

loop:
 
  sw $t1, box
  
  sw $t1, ($t7)
  add $t7, $t7, $t4

  lw $t8, box
  move $a0, $t8
  li $v0, 1
  syscall

  sub $t1, $t1, $t3

  addi $t2, 1
  bne $t2, 5, loop
  j $31

  