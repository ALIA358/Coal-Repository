; program to print hello world in separate lines using variables
.model small
.stack 100h
.data  

Msg1 DB 'Hello$'
Msg2 DB 'World$' ; when we pass string to variable, $ sign should be at the end of string

.code
main proc   
    
mov ax, @data   ; imports the address of data section
mov ds, ax      ; moves data address to access variables
mov dl, msg1    ; access msg variable and moves it to dl
mov dx, offset msg1 ; offset is used to get address of next character

mov ah,9 ; service routine to print string
int 21h
mov dx, 10 

mov ah, 2 ; service routine to go next line
int 21h
mov dx, 13 

mov ah, 2 ; service routine to go start of the line
int 21h  

mov ax, @data ; imports the address of data section
mov ds, ax    ; moves data address to access variables
mov dl, msg2  ; access msg variable and moves it to dl
mov dx, offset msg2 ; offset is used to get address of next character

mov ah,9 ; service routine to print string
int 21h
mov ah, 4ch
int 21h
main endp
end main