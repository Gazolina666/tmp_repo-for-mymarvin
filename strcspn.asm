bits 64
section	.text
global strcspn
extern strlen

strcspn:
	mov rcx, 0
    cmp byte [rsi], 0
    je my_strlen

	jmp	loop

loop:
    mov r10, 0                       
    cmp byte [rdi + rcx], 0 
    je end                         
    mov r11b, byte [rdi + rcx]       
    jmp check_occ

check_occ:
    cmp byte [rsi + r10], 0
    je inc_loop                
    cmp byte [rsi + r10], r11b       
    je end                        
    inc r10                         
    jmp check_occ

inc_loop:
    inc rcx
    jmp loop

my_strlen:
    call strlen wrt ..plt
    ret

end:
    mov rax, rcx
    ret