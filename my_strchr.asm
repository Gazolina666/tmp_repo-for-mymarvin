bits 64
section .text
global strchr

strchr:

loop:
    cmp byte [rdi], 0
    je end

    cmp byte [rdi], sil
    je found

    inc rdi
    jmp loop

found:
    mov rax, rdi
    ret

end:
    xor rax, rax
    ret