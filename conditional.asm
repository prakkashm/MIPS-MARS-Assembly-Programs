.data							#PLAY N EXPERIMENT BY COMMENTING N UNCOMMENTING THE DIFFERENT LINES BELOW (5 SUCH LINES)
	message1: .asciiz "NOS. ARE EQUAL.\n"
	message2: .asciiz "NOS. ARE DIFFERENT.\n"
	message3: .asciiz "NOTHING HAPPENED."

.text
	addi $t0, $zero, 5
	addi $t1, $zero, 20
	
	beq $t0, $t1, nosEqual				#IF THE NOS. ARE EQUAL, IT WILL BRANCH TO THE LABEL nosEqual
	bne $t0, $t1, nosDifferent			#IF THE NOS. ARE NOT EQUAL, IT WILL BRANCH TO THE LABEL nosDifferent
#	b branching					#JUST AN UNCONDITIONAL BRANCHING

	li $v0, 10					#SYSCALL TO END THE PROGRAM
	syscall
	
	nosEqual:
		li $v0, 4
		la $a0, message1
		syscall
		
#	li $v0, 10					#SYSCALL TO END THE PROGRAM
#	syscall
		
	nosDifferent:
		li $v0, 4
		la $a0, message2
		syscall
		
#	li $v0, 10					#SYSCALL TO END THE PROGRAM
#	syscall
	
	branching:
		li $v0, 4
		la $a0, message3
		syscall