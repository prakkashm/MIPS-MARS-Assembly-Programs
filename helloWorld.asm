.data
	string: .asciiz "HELLO WORLD \n"
	character: .byte '!'
	integer: .word -123
	decimal: .float 3.3333333333	#can have maximum precision of 9 digits after the decimal point so it rounds it off to 9 places
	myDouble: .double 1.11111111111111111111	#can have maximum precision of 17 digits after the decimal point so it rounds it off to 17 places
	zeroDouble: .double 2.22222222222222222222

.text

	#PRINTING A STRING
	li $v0, 4			#OK system, prepare to load a string
	la $a0, string			#OK system, load the variable named 'string' into register
	syscall
	
	#PRINTING A CHARACTER
	li $v0, 4			
	la $a0, character
	syscall
	
	#PRINTING AN INTEGER
	li $v0, 1			
	lw $a0, integer
	syscall
	
	#PRINTING A FLOAT VALUE
	li $v0, 2
	lwc1 $f12, decimal		#----------------the variable always has to be loaded into f12------------
	syscall
	
	#PRINTING A DOUBLE
	ldc1 $f2, zeroDouble		#always stored within a pair of registers ---> difference of 2 between f0 and f2
	ldc1 $f0, myDouble
	li $v0, 3
	add.d $f12,$f0,$f2
	
	syscall
	
