.data							#MUL IS THE MOST FLEXIBLE WAY OF MULTIPLYING 2 INTEGERS AMONG THE 3 AVAILABLE METHODS
	n1: .word 15
	n2: .word 4
	string: .asciiz "\n"
.text
	addi $t0, $zero, 14				#KEEPING A CONSTANT VALUE IN s0
	addi $t1, $zero, 3				#KEEPING A CONSTANT VALUE IN s1
	
	mul $t0, $t0, $t1				#STORES THE PRODUCT IN THE SPECIFIED REGISTER i.e. IN t0
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4			#OK system, prepare to load a string
	la $a0, string			#OK system, load the variable named 'string' into register
	syscall
	
	lw $s0, n1
	lw $s1, n2
	
	mul $t0, $s0, $s1
		
	li $v0, 1
	move $a0, $t0
	syscall
