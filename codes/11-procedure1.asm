.data
	message: .asciiz "Hello! How is it going?!\n"
	
.text
	jal display_message
	
	addi $s0, $zero, 5
	
	# print number on the screen
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	
# like return 0; in c/c++
li $v0, 10
syscall

	display_message:
		li $v0, 4
		la $a0, message
		syscall 
		
		jr $ra