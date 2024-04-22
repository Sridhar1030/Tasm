
data segment 
ip dw 0004h
op dw 0000h
data ends
code segment 
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,ip
mov bx,ax
go:
dec bx
mul bx
mov cx,bx
cmp cx,01h
jnz go
mov op,ax
mov ax,4C00h
int 3
code ends 
end start
end
