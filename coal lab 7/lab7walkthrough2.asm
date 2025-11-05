; Program to find square of a number entered by user

.model small
.stack 100h
.data
    msg1 db "Enter a single digit number: $"
    msg2 db "Square is: $"    ; new line before output
.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset msg1 ; input no.
    mov ah, 9
    int 21h

    
    mov ah, 1
    int 21h         ; AL = ASCII of entered digit (for example '4')
    sub al, 48      ; convert ASCII to number (so now AL = 4)

    mov bl, al      ; copy number to BL
    mul bl          ; multiply AL * BL ? result in AX (AL*BL)

    
    mov bx, ax      ; store result in BX temporarily

    mov dx, offset msg2
    mov ah, 9
    int 21h

    add bl, 48      ; convert number to ASCII
    mov dl, bl
    mov ah, 2
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp
end main
