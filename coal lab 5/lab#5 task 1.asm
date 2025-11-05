; Program to take input of three single-digit numbers and find their sum

.model small
.stack 100h
.data
.code
main proc

                     ; Input 1st number
    mov ah, 1        
    int 21h
    sub al, 48       ; Convert from ASCII to number
    mov bl, al       ; Store first number in BL

                     ; Input 2nd number
    mov ah, 1
    int 21h
    sub al, 48       ; Convert from ASCII to number
    add bl, al       ; Add to BL (sum of first two numbers)

                     ;Input 3rd number 
    mov ah, 1
    int 21h
    sub al, 48
    add bl, al       ; Add to BL (sum of all three numbers)

                     
    add bl, 48       ; Convert result to ASCII for display

                     ; Display result
    mov dl, bl
    mov ah, 2
    int 21h

                   
mov ah, 4Ch
int 21h
main endp
end main
