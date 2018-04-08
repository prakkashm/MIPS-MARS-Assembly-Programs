.data
	newLine: .asciiz "\n"
	
.text							# s REGISTERS ARE CALLER SAVED AND t REGISTERS ARE CALLEE SAVED
	main:						#THE FUNCTION THAT WE CALL CAN MODIFY THE VALUE IN t REGISTERS BUT IT IS NOT ALLOWED TO DO SO IN CASE OF s REGISTERS
		addi $s0, $zero, 10
	
		jal increaseMyRegister

		li $v0, 4				#PRINTS A NEW LINE
		la $a0, newLine
		syscall
	
		li $v0, 1				#PRINTS THE VALUE IN $s0
		move $a0, $s0
		syscall
		
		
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp, $sp, -4			#WE SAVE THE VALUE PRESENT IN $s0 IN STACK HERE COZ WE DON'T WANT THE FUNCTION TO BE ABLE TO MODIFY $s0
							#ALLOCATES 4 BYTES ON THE STACK; STACK GROWS DOWN SO -4
		sw $s0, 0($sp)				#STORES THE VALUE PRESENT IN $s0 INTO STACK
		
		addi $s0, $s0, 30
		
		li $v0, 1
		move $a0, $s0
		syscall
		
		lw $s0, 0($sp)				#LOADS BACK THE VALUE FROM STACK INTO $s0
		addi $sp, $sp, 4
		
		jr $ra