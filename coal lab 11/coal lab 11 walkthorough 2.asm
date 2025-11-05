;program to reverse a string 
 
.model small 
.data 
string db 'sara$' 
.code 
main proc 
mov ax, @data 
mov ds, ax 
mov si, offset string 
mov cx,4 
 
psh: 
mov bx, [si] 
push bx 
inc si 
loop psh 
 
mov cx,4 
 
pp: 
pop dx 
mov ah,2 
int 21h 
loop pp 
 
mov ah,4ch 
int 21h 
main endp 
end main 
