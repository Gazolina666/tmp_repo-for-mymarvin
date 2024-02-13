global strlen
strlen:
    push rbp
    mov rbp, rsp

    mov rax, 0

loop:
    cmp byte [rdi + rax], 0

    je end

    inc rax

    jmp loop

end:
    mov rsp, rbp
    pop rbp
    ret