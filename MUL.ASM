assume cs:code,ds:data
data segment
a db 02h
b db 01h
c dw 1 dup (0h)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov al,a
mov bl,b
mul bl
mov c,ax
int 03h
code ends
end start
end

