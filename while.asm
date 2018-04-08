.data							#i=0
	newLine: .byte '\n'						#while (i<10){
							#	i++;	}


.text
	main:
		addi $t0, $zero, 0			#i=0
		
		
		
		while:
			bge $t0, 10, exit
			
			jal printNo
			
			addi $t0, $t0, 1		#i++
			j while				#JUMPS UNCONDITIONALLY TO THE LABEL while
			
		exit:
			li $v0, 10
			syscall
		
		printNo:
			li $v0, 1
			move $a0, $t0
			syscall
			
			li $v0, 4
			la $a0, newLine
			syscall
			
			jr $ra
			
			
			