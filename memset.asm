bits 64
section .text
global memset

memset:
    mov rcx, 0
    mov rax, rdi

loop:
    cmp rdx, rcx
    je end

    mov byte [rdi + rcx], sil
    inc rcx

    jmp loop

end:
    ret