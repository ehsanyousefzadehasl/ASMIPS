.data
	new_line: .asciiz "\n"
	an_integer: .word 25
	a_float: .float 25.4
	a_double: .double 34.23
	zero_double: .double 0.0

.text
	li $v0, 1		# By loading 1 into $v0, we say the processor that we want to print an integer
	lw $a0, an_integer	# Instead of loading from a address which its end is going to be detected, just load a word
	syscall
	
	li $v0, 4
	la $a0, new_line
	syscall
	
	li $v0, 2
	lwc1 $f12, a_float	# $f12 is in co-processor, so we have to use lwcl
	syscall
	
	li $v0, 4
	la $a0, new_line
	syscall
	
	ldc1  $f2, a_double
	ldc1  $f0, zero_double
	
	li $v0, 3
	add.d $f12, $f2, $f0
	syscall
	
	