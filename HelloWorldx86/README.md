# HELLO WORLD in x86 processor (64-bits)

## Execution

```
Fork, download or clone this repository
```

#### If you want to run it from my C file:
```

gcc --static -g -Wl,--omagic -o helloworldx86 helloworldx86.c
./helloworldx86
```

#### If you have your own C file or want the hexa values:
```

nasm -f elf64 helloworldx86.asm
ld helloworldx86.o -o helloworldx86
./helloworldx86
objdump -d ./helloworldx86|grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
```
Finally, if you want to put the code in your C file just put the output in your string. 

