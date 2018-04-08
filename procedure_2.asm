.data

.text
	main:
	
		addi $a0, $zero, 50
		addi $a1, $zero, 23
	
		jal addNos
		
		li $v0, 1
		move $a0, $v1
		syscall
		
	li $v0, 10
	syscall
	
	addNos:
		add $v1, $a0, $a1				#JUST A CONVENTION TO STORE THE RETURN VALUE IN $v1
		jr $ra