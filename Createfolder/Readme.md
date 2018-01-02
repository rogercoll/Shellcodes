# CREATING FOLDER in x86 (64-bits)

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
