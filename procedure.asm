.data
	message: .asciiz "Hello World,\nThis is a message.\n"

.text
	main:
		jal displayMessage		#CALLING THE FUNCTION
	
		li $v0, 1			#JUST SOME MORE STATEMENTS AFTER THE FUNCTION CALL
		add $a0, $zero, 5
		syscall				#DISPLAYS 5 ON THE SCREEN
	
	li $v0, 10				#Tells the system that the program is done; without this line, the program will enter into an infinite loop and may give an error
	syscall
	
	displayMessage:
		li $v0, 4
		la $a0, message
		syscall
		
		jr $ra				#Once the function is executed, this statement will send the control back to main()