.data
	prompt: .asciiz "ENTER UR NAME: "
	message: .asciiz "\nHELLO, "
	userInput: .space 20				#ALLOWS THE USER TO TYPE IN 20 CHARACTERS

.text
	main:
		li $v0, 4
		la $a0, prompt
		syscall
	
		li $v0, 8				#GETS TEXT FROM THE USER AND STORES IT IN THE STRING VARIABLE userInput
		la $a0, userInput			
		li $a1, 20
		syscall
	
		li $v0, 4
		la $a0, message
		syscall
		
		li $v0, 4
		la $a0, userInput
		syscall
	
	li $v0, 10					#TELLS THE SYSTEM THIS IS THE END OF MAIN
	syscall
