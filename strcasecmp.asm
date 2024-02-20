bits 64
section .text
global strcasecmp

strcasecmp:

loop:
    mov r10b, byte [rdi]
    mov r11b, byte [rsi]

    cmp r10b, 0
    je end

    cmp r11b, 0
    je end

    cmp r10b, 'A'
    jl check_r11b_case

    cmp r10b, 'Z'
    jg check_r11b_case

    add r10b, 32

check_r11b_case:
    cmp r11b, 'A'
    jl cmp_char

    cmp r11b, 'Z'
    jg cmp_char
    
    add r11b, 32

cmp_char:
    cmp r10b, r11b
    jne end

    inc rdi
    inc rsi
    jmp loop

end:
    movzx rax, r10b
    movzx rbx, r11b
    sub rax, rbx
    ret
