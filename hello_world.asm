section .data
    msg: db "Hello, World!", 0xa ; define byte (8 bits), 0xa == \n na tabela ascii
    len: equ $-msg ; msg length

    name: db "Gabriel", 0xa
    name_len: equ $-name

section .text

    global _start

    _start:
        mov eax, 10
        cmp eax, 0

        jz NAME

        mov eax, 0x4 ; fazer saída
        mov ebx, 0x1 ; saída na saída padrão
        mov ecx, msg
        mov edx, len
        int 0x80
        jmp END

        NAME:
        mov eax, 0x4
        mov ebx, 0x1
        mov ecx, name
        mov edx, name_len
        int 0x80

        END:
        mov eax, 0x1 ; eax = 1
        mov ebx, 0x0 ; finishing the program, analog to return 0 in C
        int 0x80 ; OS executes the instructions
