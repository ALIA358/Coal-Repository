; program to take input two single-digit numbers from user and subtract
.model small
.stack 100h 
.data
.code
main proc

     mov ah, 1    ; input 1st no.
     int 21h
     
     mov bl, al   ; move data from al to bl to empty al
     mov ah, 2
     int 21h
     
    
     mov ah, 1    ; input 2nd no.
     int 21h
     
     sub bl, al   ; sub num1 - num2 
     mov ah, 2
     int 21h
     
     add bl, 48   ; convert from ascii to number , 32 for ascii to char
     
     
     mov dl, bl   ; output
     mov ah, 2
     int 21h
     

mov ah, 4ch
int 21h
main endp
end main
