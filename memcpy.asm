bits 64
section .text
global memcpy

memcpy:
    push rbx

    test rdi, rdi
    jz end

    test rsi, rsi
    jz end

    mov r10, rdi
    mov r11, rsi
    cmp rdx, 0
    je end

loop:
    cmp rdx, 0
    je end
    mov al, byte [r11]
    mov byte [r10], al
    inc r10
    inc r11
    dec rdx

    jmp loop

end:
    pop rbx
    ret

