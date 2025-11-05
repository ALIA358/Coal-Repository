.model small
.stack 100h
.data
    myname db "ALIA$"
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Ask user for input 
    mov ah, 1
    int 21h
    sub al, 48      ; convert ASCII to number
    mov cl, al      ; use CL 
    mov ch, 0       ; clear CH to make CX = CL

PrintLoop:
    mov ah, 9
    mov dx, offset myname
    int 21h

    ;for new line after each print
    mov ah, 2
    mov dl, 10      ; Line Feed 
    int 21h
    mov dl, 13      ; Carriage Return
    int 21h
   

    loop PrintLoop   ; repeat n times

    mov ah, 4Ch
    int 21h
main endp
end main