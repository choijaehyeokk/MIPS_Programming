	.data
 i: .word 0
 result: .word 0
	.text

main:
 li $v0,5
 syscall
 sw $v0,i
 
 lw $s0, i
 jal plus_one
 
 sw $s1,result
 
 li $v0, 1
 move $a0, $s1
 syscall

 li $v0,10
 syscall

 plus_one:
 addi $s1,$s0,1
 jr $ra