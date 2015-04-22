.model SMALL
.stack
.data
   messege db "Hello World!", "$"
.code
main proc
   mov ax, seg messege
   mov ds,ax
   mov ah,09
   lea dx, messege
   int 21h
   mov ax, 4c00h
   int 21h
main endp
end main
