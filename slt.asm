.data
	message: .asciiz "THE FIRST NO. IS LESSER THAN THE SECOND ONE."

.text
	addi $t0, $zero, 10
	addi $t1, $zero, 200
	
	slt $s0, $t0, $t1
	bne $s0, $zero, printMessage
	
	li $v0, 10
	syscall	
	
	printMessage:
		li $v0, 4
		la $a0, message
		syscall
		