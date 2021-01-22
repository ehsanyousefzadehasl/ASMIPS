.data
	message1: .asciiz "Enter PI: "
	message2: .asciiz "\nThe PI is: "

    	zeroDouble: .double 0.0
.text

    	lwc1  $f4, zeroDouble 
	jal print_string1
	
	# Getting double from the user
	li $v0, 7
	syscall
	# the entered integer now is in $f0 in the co-processor
	
	jal print_string2
	
	jal print_double
	
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

print_double:
	li $v0, 3
	add.d $f12, $f0, $f4
	syscall
	
	jr $ra
