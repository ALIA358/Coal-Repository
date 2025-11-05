;program to print digits from 0 to 9 
 
.model small 
.stack 100h 
.data 
.code 
main proc 
 
mov cx, 10    ;counter register = how many times loop will be executed+LOOP instruction CX decrement till CX!= 0 
mov dx, 48    ;data register is used to pass ascii code for 0 
 
PrintDigits:  ; name of loop, we will call loop with this name 
 
mov ah, 2     ;body
Int 21h       ;interrupt ki waja sy loop sy nikal rhay hain
 
Inc dx        ; increment of value in dx register alternate add dx,1 
 
Loop PrintDigits     ; calling loop  
 
mov ah,4ch    ;AH=4Ch terminate process function; int 21h program ko return karta hai to DOS.
int 21h 
main endp