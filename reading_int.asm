.data
	prompt: .asciiz "ENTER UR AGE: "
	message: .asciiz "\nUR AGE IS: "

.text
	li $v0, 4				#PROMPTS THE USER TO ENTER HIS AGE
	la $a0, prompt
	syscall
	
	li $v0, 5				#STORES AN INTEGER IN $v0 TAKEN FROM THE USER
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall