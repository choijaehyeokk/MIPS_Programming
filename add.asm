	.data
d:	.word 1
c:	.word 2
a:	.word 0
	.text
main:
	lw $s0, d
	lw $s1, c
	add $s0,$s1,$s0
	sw $s0, a