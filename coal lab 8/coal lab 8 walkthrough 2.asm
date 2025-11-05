;program to print Capital letters from A to Z 
.model small 
.stack 100h 
.data 
.code 
main proc 
 
mov cx, 26   ; loop will be executed 26 times 
mov dx, 65   ; ASCII of A 
 
CapLet: ; name of loop, we will call loop with this name 
 
Mov ah, 2 
Int 21h 
 
Inc dx ;increment of value in dx register / add dx,1 
 
Loop CapLet ; calling loop,  
 
mov ah,4ch 
int 21h 
main endp 
end main 