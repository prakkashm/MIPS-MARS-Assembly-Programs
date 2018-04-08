.data

.text
	addi $t0, $zero, 50 
	addi $t1, $zero, 51
	
	mult $t0, $t1					#STORES THE PRODUCT IN lo REGISTER
	
	mflo $s0					#MOVES THE PRODUCT STORED IN lo TO s0
	
	li $v0, 1
	move $a0, $s0					#MOVES THE CONTENT OF s0 to a0
	syscall
