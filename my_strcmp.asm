BITS 64
section .text
    global my_strcmp

my_strcmp:
    xor rax, rax
    xor r8, r8
    xor r9, r9

check:
    cmp [rdi + rax], byte 0
    je end
    cmp [rsi + rax], byte 0
    je end
    jmp loop

before:
    inc rax
    jmp check

loop:
    mov r8, [rdi + rax]
    cmp r8, [rsi, rax]
    je before
    jmp end

end:
    mov r8, [rdi + rax]
    sbb r8, [rsi + rax]
    mov rax, r8
    ret
