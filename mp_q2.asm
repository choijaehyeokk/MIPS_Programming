main :
   li $v0, 5
   syscall
   
   move $s0, $v0   
    
   move $t0, $s0
	   
   jal factorial
   
   li $v0, 10
   syscall

factorial :
   addi $sp, $sp, -12
   sw $fp, 8($sp)
   sw $ra, 4($sp)
   addi $fp, $sp, 8
   sw $t0, 0($sp)
   
   addi $s0, $s0, -1
   mul $t0, $t0, $s0

   bne $s0, 1, factorial
  
   move $a0, $t0
   li $v0, 1
   syscall
 
   lw $t0, 0($sp)
   lw $ra, 4($sp)
   lw $fp, 8($sp)
   
   addi $sp, $sp, 12

   jr $ra
