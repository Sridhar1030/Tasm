assume cs:code,ds:data
data segment
a db 16h
b db 08h
c dw 1 dup (0h)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov ax,0000h
mov bx,0000h
mov al,a
mov bl,b
div bl
mov c,ax
int 03h
code ends
end start
end


