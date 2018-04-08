.data
	message: .asciiz "HI, HOW R U?"
	
.text
	addi $s0, $zero, 14
	addi $s1, $zero, 100

	blt $s0, $s1, displayHi				#bgt,blt COMMANDS ARE ACTUALLY PSEUDO INSTRUCTIONS LIKE move COMMAND
#	bgtz $s0, displayHi

	li $v0, 10
	syscall
	
	displayHi:
		li $v0, 4
		la $a0, message
		syscall 