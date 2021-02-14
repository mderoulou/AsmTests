BITS 64
section .text ; Début
    global my_strlen

my_strlen: ; def my_strlen()
    XOR RAX, RAX ; Int x = 0

loop: ; marquer loop
    CMP [RDI + RAX], byte 0 ; str[x] == 0
    JE end ; goto end
    INC RAX ; x++
    JMP loop ; goto loop
end: ; marqueur end
    RET ; return x
