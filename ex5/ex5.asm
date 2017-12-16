global _start

section .data
    addr db "yellow"

section .text
_start:
    mov [addr], byte 'H'
    mov [addr+5], byte '!'
    mov eax, 4    ; sys_write system call
    mov ebx, 1    ; stdout file descriptor
    mov ecx, addr ; bytes to write
    mov edx, 6    ; number of bytes to write
    int 0x80      ; perform system call
    mov eax, 1    ; sys_exit system call
    mov ebx, 0    ; exit status is 0
    int 0x80
