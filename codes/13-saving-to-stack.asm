.data
        new_line: .asciiz "\n"
.text
main:
    addi $s0, $zero, 10

    jal incremet

    # print a newline
    li $v0, 4
    la $a0, new_line
    syscall 

    # print value
    li $v0, 1 # integer print
    move $a0, $s0
    syscall

# return 0; ~= signal for the end of the program
li $v0, 10
syscall

incremet:
            addi $sp, $sp, -4
            sw $s0, 0($sp)    # pushing to the stack

            addi $s0, $s0, 30

            # Print new value in function
            li $v0, 1
            move $a0, $s0
            syscall

            lw $s0, 0($sp) # poping from the stack
            addi $sp, $sp, 4

            jr $ra