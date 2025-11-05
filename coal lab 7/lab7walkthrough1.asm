;program to multiply with single digit answer. 

.model small 
.data 
.code 

main proc
     
mov al, 3 
mov bl, 2
 
MUL bl 

MOV dx, ax
 
add dx,48 
mov ah,2 
int 21h 

mov ah,4ch 
int 21h 
main endp 
end main 
