.data
	m1: .asciiz "True\n"
	m2: .asciiz "False\n"
	n1: .float 3.14
	n2: .float 2.71
.text
	main:
		lwc1 $f0, n1
		lwc1 $f1, n2
		
		c.eq.s $f0, $f1
		bc1t true    				#TO KNOW IF THE ABOVE CONDITION IS TRUE
		bc1f false				#TO KNOW IF THE ABOVE CONDITION IS FALSE
		
		li $v0, 10
		syscall
		
		true:
			li $v0, 4
			la $a0, m1
			syscall
			
			li $v0, 10
			syscall
			
		false:
			li $v0, 4
			la $a0, m2
			syscall
			
			li $v0, 10
			syscall
