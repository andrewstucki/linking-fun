.section __TEXT,__text
.globl _ASMHello
_ASMHello:
    pushq    %rbp
    movq     %rsp, %rbp

    movq     %rdi, %rsi
    movq     msg@GOTPCREL(%rip), %rdi
    call     _printf
    popq     %rbp
    ret

.section __RODATA,__rodata

msg:
    .asciz "Hello \"%s\" from ASM!\n"
