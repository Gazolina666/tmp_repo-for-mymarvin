bits 64
section .text
global memcpy

memcpy:
    mov rcx, 0
    mov rax, rdi

loop:
    cmp rdx, rcx
    je end

    mov r10b, byte [rsi + rcx]

    mov byte [rax + rcx], r10b
    inc rcx

    jmp loop

end:
    ret

