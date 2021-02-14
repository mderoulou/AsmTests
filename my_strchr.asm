BITS 64
section .text
    global my_strchr

my_strchr:
    XOR RAX, RAX ; Int x = 0

loop:
    CMP BYTE[RDI], SIL; if (rdi == sil)
    JE end; goto end
    INC RDI; rdi++
    JMP loop; goto loop
end:
    MOV RAX, RDI; char *rax = char *rdi
    RET; return (rax)
