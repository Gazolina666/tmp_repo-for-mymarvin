bits 64
section .text
global strpbrk

strpbrk:
    mov rcx, 0
    cmp byte [rsi], 0
    je not_found

loop:
    mov r10, 0
    cmp byte [rdi + rcx], 0
    je not_found

    mov r11b, byte [rdi + rcx]
    jmp check_occ

check_occ
    cmp byte [rsi + r10], 0
    je inc_loop

    cmp byte [rsi + r10], r11b
    je found

    inc r10
    jmp check_occ

inc_loop:
    inc rcx
    jmp loop

not_found:
    mov rax, 0
    jmp end

found:
    lea rax, [rdi + rcx]
    jmp end

end:
    ret