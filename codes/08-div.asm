.data

.text
	addi $t0, $zero, 200
	addi $t1, $zero, 20
	
	div $t0, $t0, $t1
	
	# display the product to the screen
	li $v0, 1
	add $a0, $zero, $t0
	syscall