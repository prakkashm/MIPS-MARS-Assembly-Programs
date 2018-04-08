.data
	n1: .word 11
	n2: .word 12

.text
	lw $t0, n1
	lw $t1, n2
	add $t2, $t1, $t0
	
	li $v0, 1				#PRINTING THE RESULT
	move $a0, $t2
	syscall
	
