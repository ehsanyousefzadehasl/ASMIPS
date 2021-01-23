# slt: set on less than to one
.data
	msgLess: .asciiz "The number is less than the other!"
	msgNotLess: .asciiz "The number is not less than the other!"
.text
	main:
		addi $t0, $zero, 11
		addi $t1, $zero, 11
		
		add $s0, $zero, $zero
		
		slt $s1, $t0, $t1 # if $t0 < $t1 :: $s1 <--- 1
		
		beqz $s1, NotLess
		
		li $v0, 4
		la $a0, msgLess
		syscall 
		b Exit
		
		NotLess:
			li $v0, 4
			la $a0, msgNotLess
			syscall 
		
		Exit:
		# return 0;
		li $v0, 10
		syscall 