bits 64
section .text
global strstr

strstr:
    mov rax, 0
    mov rcx, 0
    mov rdx, 0
    cmp rsi, 0
    je end

loop:
    mov r10, 0
    cmp byte [rdi + rcx], 0
    je not_found

    mov r11b, byte [rsi]
    cmp byte [rdi + rcx], r11b
    je check_occ

    jmp inc_loop

check_occ:
    cmp byte [rsi + r10], 0
    je found

    lea r11, byte [rdi + rcx]
    mov r11b, byte [r11 + r10]
    cmp byte [rsi + r10], r11b
    jne inc_loop

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
