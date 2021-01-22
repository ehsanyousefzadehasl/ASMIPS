.data
	message1: .asciiz "Enter PI: "
	message2: .asciiz "\nThe PI is: "

    zeroFloat: .float 0.0
.text

    	lwc1 $f4, zeroFloat

	jal print_string1
	
	# Getting float from the user
	li $v0, 6
	syscall
	# the entered integer now is in $f0 in the co-processor
	
	jal print_string2
	
	jal print_float
	
	# return 0; end of the program
	li $v0, 10
	syscall

print_string1:
	li $v0, 4
	la $a0, message1
	syscall
	
	jr $ra
	
print_string2:
	li $v0, 4
	la $a0, message2
	syscall
	
	jr $ra

print_float:
	li $v0, 2
	add.s $f12, $f0, $f4
	syscall
	
	jr $ra
