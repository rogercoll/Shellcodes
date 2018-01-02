global _start

section .text

_start:
    jmp TEXT

MAINPROG:
    mov eax, 0x4
    mov ebx, 0x1
    pop rcx          ; It is for x86 processor so we must get stack elements with 64 bits register
    mov edx, 0xF     ; Size of the message, take into account that 0dh(\r) and 0ah(\n) are also ASCII values	
    int 0x80

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

TEXT:
    call MAINPROG       ; 2) we need to go back to put the message in the stack
    db "Hello, World!", 0dh, 0ah
