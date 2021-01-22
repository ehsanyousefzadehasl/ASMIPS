.data
	message1: .asciiz "Enter Your Age: "
	message2: .asciiz "\nYour Age is: "
	newline: .asciiz "\n"
.text
	jal print_string1
	
	# Getting integer from the user
	li $v0, 5
	syscall
	
	move $a1, $v0
	# the entered integer now is in $v0
	
	jal print_string2
	
	jal print_integer
	
	# return 0; end of the program
	li $v0, 10
	syscall

print_newline:
	li $v0, 4
	la $a0, newline
	syscall
	
	jr $ra

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

# assumes that the input will be in the $a1		
print_integer:
	li $v0, 1
	add $a0, $zero, $a1
	syscall
	
	jr $ra
