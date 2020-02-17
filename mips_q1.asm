	.data
 a: .word 0
 c: .word 0
	.text
main:
 li $v0,5
 syscall
 sw $v0, a

 li $v0,5
 syscall
 sw $v0, c