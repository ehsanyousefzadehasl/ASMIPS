.data
    a_character: .byte	'e'
    
.text
    li  $v0, 4
    la  $a0, a_character
    syscall