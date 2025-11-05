; program to take single character input from user
.model small
.stack 100h
.data
.code
main proc
    
    mov ah, 1       ; Take single character input
    int 21h         ; Character comes in AL
    
    mov dl, al      ; Copy AL into DL for output 
   
    mov ah, 2       ; Function to display character
    int 21h         ; Display on screen
    
     
    
mov ah, 4ch
main endp
end main
    
    
    