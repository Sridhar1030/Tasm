assume cs:code, ds:data

data segment
    count equ 00H
    num db 00H, 01H
data ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov cl, count
    mov cl, 04H
    lea si, num
    mov al, [si]
    inc si
    mov bl, [si]

up:
    add al, bl
    xchg al, bl
    inc si
    mov [si], bl
    
    dec cl
    jnz up

    int 03H

code ends
end start
end
