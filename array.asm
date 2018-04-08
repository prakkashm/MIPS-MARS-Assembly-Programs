.data
	#TO GENERATE AN UNINITIALIZED ARRAY
	#myarray: .space 20				#5 INTEGERS * 4 BYTES FOR EACH INTEGER
	#TO INITIALISE THE ARRAY WITH ,say, 100, TYPE AS BELOW
	myarray: .word 100:5				#5 BECAUSE WE WANT THE ARRAY OF SIZE 5
	newLine: .asciiz "\n"
	prompt: .asciiz "Please Enter the 5 nos. to be stored in the array.\n"
.text
	main:
		addi $t0, $zero, 0				#$t0 = INDEX/OFFSET
		
		li $v0, 4
		la $a0, prompt
		syscall
	
		readArray:
			bge $t0, 20, down
		
			li $v0, 5
			syscall
		
			sw $v0, myarray($t0)
			addi $t0, $t0, 4
		
			j readArray
		
		down:
			addi $t0, $zero, 0
		
		printArray:
			bge $t0, 20, exit
		
			li $v0, 1
			lw $a0, myarray($t0) 
			syscall
		
			li $v0, 4
			la $a0, newLine
			syscall
		
			addi $t0, $t0, 4
		
			j printArray
		
		exit:
			li $v0, 10
			syscall
	
