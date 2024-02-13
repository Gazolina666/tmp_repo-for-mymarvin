bits 64
section .text
global memset

memset:
    push rbx
    cmp rdx, 0
    je end

loop:
    mov byte [rdi], sil
    inc rdi

    dec rdx
    cmp rdx, 0
    je end

    jmp loop

end:
    pop rbx
    ret
