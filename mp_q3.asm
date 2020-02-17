   .data
four: .word 4
list: .word 10, 9, 8, 7, 6
start: .word 0
box: .word 0
   .text

main:
  lw $t4, four
  la $t7, list
  la $t9, list
  addi $t7, 20
  addi $t9, 16

  la $t3, list
  add $t2, $t3, 4

  jal loop
  
loop:

  lw $s3, ($t3)
  lw $s2, ($t2)
  bge $s3, $s2, swap
  
  add $t2, $t2, $t4
  lw $s2, ($t2)
  beq $t2, $t7, trans
  beq $t3, $t7, finish
  bne $s2, 0, loop 
  
swap:
  move $t8, $s3
  move $s3, $s2
  move $s2, $t8
  sw $s2, ($t2)
  sw $s3, ($t3)
  bne $s2, $s3, loop
  
trans:

  addi $t3, 4
  add $t2, $t3, $t4
  bne $t2, $t3, loop

finish:

  lw $t8, list
  move $a0, $t8
  li $v0, 1
  syscall

  la $s5, list
  addi $s5, 4
  lw $t8, ($s5)
  move $a0, $t8
  li $v0, 1
  syscall

  addi $s5, 4
  lw $t8, ($s5)
  move $a0, $t8
  li $v0, 1
  syscall

  addi $s5, 4
  lw $t8, ($s5)
  move $a0, $t8
  li $v0, 1
  syscall

  addi $s5,  4
  lw $t8, ($s5)
  move $a0, $t8
  li $v0, 1
  syscall

  li $v0, 10
  syscall
  