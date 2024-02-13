bits 64
section .text
global strncmp

strncmp:
    cmp rdx, 0
    je end

loop:
    cmp rdx, 0
    je end

	mov r10b, byte [rdi]
	mov r11b, byte [rsi]

	cmp r10b, 0
	je end

	cmp r11b, 0
	je end

	cmp r10b, r11b
	jne end
    
    dec rdx
	inc rdi
	inc rsi
	jmp loop

end:
	movzx rax, r10b
	movzx rbx, r11b
	sub rax, rbx
	ret