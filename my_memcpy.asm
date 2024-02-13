bits 64
section .text
global memcpy

memcpy:
    push rbx
    mov r10, rdi
    mov r11, rsi
    cmp rdx, 0
    je end

loop:
    mov al, [r11]
    mov [r10], al
    inc r10
    inc r11
    dec rdx
    cmp rdx, 0
    je end

    jmp loop

end:
    pop rbx
    ret

