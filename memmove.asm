bits 64
section .text
global memmove

memmove:
    mov rax, rdi
    cmp rdi, rsi
    je end
    jb loop
    mov rcx, rsi
    add rcx, rdx
    cmp rdi, rcx
    jae loop

start:
    std
    mov rcx, rdx
    dec rdx
    add rsi, rdx
    add rdi, rdx
    rep movsb
    cld
    ret

loop:
    mov rcx, rdx
    rep movsb

end:
    ret