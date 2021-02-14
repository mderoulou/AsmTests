BITS 64
section .text
    global my_memset

my_memset:
    xor rax, rax

loop:
    cmp rax, rdx ; if (x < ARG3)
    jl next ; goto next
    je end ; goto end
next:
    cmp byte[rdi], byte 0 ; if (str[x] == 0)
    je end; goto end
    mov byte[rdi], sil; str[x] = c
    inc rdi; rdi++
    inc rax; rax ++
    jmp loop; goto loop
end:
    ret; return (rax)
