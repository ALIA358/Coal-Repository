; program to subtract two single digit numbers  
.model
.stack 100h
.data
.code
main proc
    mov bl, 3     ; using bl register to store 3
    mov cl, 1     ; using cl register to store 1
    sub bl, cl    ; subtract bl – cl and store answer to bl
    add bl, 48    ; add 48 to convert value to ascii
    mov dl, bl    ; move data from bl to dl,
    mov ah, 2     ; access dl data and show output
    int 21h       ; interrupt 
mov ah, 4ch
int 21h
main endp
end main
    