bits 64
section .text
global memset

memset:
    push rbx
    test rdi, rdi
    jz end

    cmp rdx, 0
    je end

loop:
    cmp rdx, 0
    je end

    mov [rdi], sil
    inc rdi

    dec rdx

    jmp loop

end:
    pop rbx
    ret
