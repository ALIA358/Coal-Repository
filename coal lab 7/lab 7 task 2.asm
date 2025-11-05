;Write an assembly language program that find the cube of a number entered by user. Print the 
;result on screen 

.model small
.stack 100h
.data
    msg1 db "Enter a single digit number: $"
    msg2 db "Cube is: $"    
.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset msg1
    mov ah, 9
    int 21h

                     ; input 
    mov ah, 1
    int 21h         ; AL = ASCII of entered digit
    sub al, 48      ; convert ASCII to number 

    mov bl, al      ; copy number to BL
    mul bl          ;  AX = AL*BL
    mul bl
    
    mov bx, ax      ; store result in BX temporarily
    
    mov ah, 2
    mov dl, 13         ; Carriage return
    int 21h
    mov dl, 10         ; Line feed
    int 21h
    
    mov dx, offset msg2
    mov ah, 9
    int 21h

    add bl, 48      ; convert number to ASCII
    mov dl, bl
    mov ah, 2
    int 21h
    


main endp
end main

    
    