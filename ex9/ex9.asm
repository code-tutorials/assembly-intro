global _start

_start:
    push 21
    call times2
    mov ebx, eax
    mov eax, 1
    int 0x80

times2:
    push ebp
    mov ebp, esp
    mov eax, [ebp+8]
    add eax, eax
    mov esp, ebp
    pop ebp
    ret