BITS 64
section .text
    global my_memcpy

my_memcpy:
    xor rax, rax ; int x = 0
    xor r8, r8

loop:
    cmp byte[rsi + rax], byte 0 ; if (arg1 == 0)
    je end ; goto end
    mov r8, [rsi + rax]
    mov [rdi + rax], r8 ; dil = sil
    inc rax; rax ++
    jmp loop ; goto loop

end:
    ret ; return (rax)
