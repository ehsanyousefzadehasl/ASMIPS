.data
	new_line: .asciiz "\n"
	
.text
	addi $t0, $zero, 2000
	addi $t1, $zero, 100
	
	mult $t0, $t1
	
	mflo $s0
	mfhi $s1
	
	# display the product to the screen
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
	# newline print 	
	li $v0, 4
	la $a0, new_line
	syscall
	
	
	addi $t0, $zero, 1000
	sll $s0, $t0, 1
	
	# display the product to the screen
	
	li $v0, 1
	add $a0, $zero, $s0
	syscall