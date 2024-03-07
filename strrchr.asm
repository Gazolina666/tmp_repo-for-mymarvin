bits 64
section .text
global strrchr

strrchr:
    mov r10, 0

loop:
    cmp byte [rdi], sil
    je found

    cmp byte [rdi], 0
    je end

    inc rdi
    jmp loop


found:
    mov r10, rdi
    inc rdi
    jmp loop

end:
    mov rax, r10
    ret
