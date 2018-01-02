# CREATING FOLDER in x86 (64-bits)

It creats a folder in the root of the computer. 

### Run it from the C file
```
gcc -o test createfolder.c
./test
```

### Run it from the assembler file 
```
nasm -f elf64 createfolder.asm
ld createfolder.o -o createfolder
./createfolder
```

If you want to change folder permissions check this web: https://dbiers.me/chmod-permissions-reference-chart/
