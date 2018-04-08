.data
	n1: .word 53
	n2: .word 23

.text
	lw $t0, n1
	lw $t1, n2
	sub $t2, $t0, $t1
	
	li $v0, 1				#PRINTING THE RESULT
	move $a0, $t2
	syscall