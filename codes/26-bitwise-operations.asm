.data
.text
	li $a1, 11
	
	andi $t1, $a1, 0xF0
	
	ori $t2, $a1, 0x0F
	
	xori $t3, $a1, 0xFF
	
	sll $t4, $a1, 2
	
	srl $t5, $a1, 2
	
	li $v0, 10
	syscall 