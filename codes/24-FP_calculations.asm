.data
	f1: .float 3.14
	f2: .float 2.71
	
	d1: .double 31.1084
	d2: .double 25.0171
	
	new_line: .asciiz "\n"
	
	zero_double: .double 0.0
.text
	main:
		lwc1 $f1, f1
		lwc1 $f2, f2
		
		ldc1 $f4, d1
		ldc1 $f6, d2

		add.s $f3, $f1, $f2
		
		add.d $f8, $f4, $f6
	
		li $v0, 2
		movf.s $f12, $f3
		syscall
		
		li $v0, 4
		la $a0, new_line
		syscall 
		
		ldc1 $f0, zero_double
		
		li $v0, 3
		add.d $f12, $f8, $f0
		syscall 
		
	li $v0, 10
	syscall
	
