.data
	prompt: .asciiz "ENTER THE VALUE OF e (EULER'S NO.): "
	message: .asciiz "\nTHE VALUE OF e IS: "

.text
	li $v0, 4				#PROMPTS THE USER TO ENTER THE VALUE OF e
	la $a0, prompt
	syscall
	
	li $v0, 7				#STORES THE DOUBLE VALUE IN $f0 (ALTHOUGH WE WRITE $v0 instead of $f0) TAKEN FROM THE USER
	syscall
	
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 3
	add.d $f12, $f0, $f10			#I AM USING $f10 AS THE SECOND ARGUMENT AS IT HAS THE DEFAULT VALUE OF 0.0 SO BASICALLY, WE CAN USE ANY REGISTER EXCEPT $f0
	syscall
	