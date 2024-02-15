bits 64
section .text
global strchr

strchr:
    test rdi, rdi
    jz end
    
loop:
    cmp byte [rdi], dil
    je found

    cmp byte [rdi], 0
    je end

    inc rdi
    jmp loop

found:
    mov rax, rdi
    ret

end:
    xor rax, rax
    ret