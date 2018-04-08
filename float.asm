.data
	n1: .float 3.14
	n2: .float 2.71
	newLine: .asciiz "\n"

.text
	lwc1 $f0, n1
	lwc1 $f1, n2
	
	add.s $f12, $f0, $f1
	
	li $v0, 2
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	mul.s $f12, $f0, $f1
	
	li $v0, 2
	syscall
	
	li $v0, 4
	la $a0, newLine
	syscall
	
	div.s $f12, $f0, $f1
	
	li $v0, 2
	syscall
	