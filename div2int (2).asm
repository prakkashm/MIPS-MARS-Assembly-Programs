.data
	string: .asciiz "\n"

.text
	addi $t0, $zero, 36
	addi $t1, $zero, 5
	
	div $t0, $t1			#STORES THE QUOTIENT IN THE lo REGISTER AND THE REMAINDER IN THE hi REGISTER
	
	mflo $s0			#QUOTIENT
	mfhi $s1			#REMAINDER
	
	
	li $v0, 1			#PRINTS THE QUOTIENT
	move $a0, $s0
	syscall
	
	li $v0, 4			#OK system, prepare to load a string
	la $a0, string			#OK system, load the variable named 'string' into register
	syscall
	
	li $v0, 1			#PRINTS THE REMAINDER
	move $a0, $s1
	syscall
