.data
	newLine: .asciiz "\n"
	
.text							# s REGISTERS ARE CALLER SAVED AND t REGISTERS ARE CALLEE SAVED
	main:						#THE FUNCTION THAT WE CALL CAN MODIFY THE VALUE IN t REGISTERS BUT IT IS NOT ALLOWED TO DO SO IN CASE OF s REGISTERS
		addi $s0, $zero, 10
	
		jal increaseMyRegister

		li $v0, 4				#PRINTS A NEW LINE
		la $a0, newLine
		syscall
	
		jal printTheValue
		
	li $v0, 10
	syscall
	
	increaseMyRegister:
		addi $sp, $sp, -8			#WE SAVE THE VALUE PRESENT IN $s0 IN STACK HERE COZ WE DON'T WANT THE FUNCTION TO BE ABLE TO MODIFY $s0
							#ALLOCATES 8 BYTES ON THE STACK; STACK GROWS DOWN SO -8
		sw $s0, 0($sp)				#STORES THE VALUE PRESENT IN $s0 INTO THE FIRST VALUE OF STACK (IN THIS CASE, STACK CAN STORE 2 VALUES i.e. 2 INTEGERS )
		sw $ra, 4($sp)				#STORES THE ADDRESS OF MAIN INTO THE NEXT VALUE OF STACK
		
		addi $s0, $s0, 30
		
		jal printTheValue			#NESTED PROCEDURE
		
		lw $s0, 0($sp)				#LOADS BACK THE VALUE FROM STACK INTO $s0 SO THAT NOW $ra CONTAINS THE ADDRESS OF MAIN TO WHICH WE CAN RETURN AFTER THIS FUNCTION
		lw $ra, 4($sp)
		addi $sp, $sp, 8
		
		jr $ra
		
	printTheValue:
		li $v0, 1
		move $a0, $s0
		syscall
		
		jr $ra
