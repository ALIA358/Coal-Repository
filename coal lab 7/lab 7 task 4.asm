.model small
.stack 100h
.data
    msg1 db "Enter base of triangle: $"
    msg2 db "Enter height of triangle: $"
    msg3 db "Area of triangle is: $"
    base db ?
    height db ?
    area db ?

.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset msg1
    mov ah, 9
    int 21h
    mov ah, 1
    int 21h
    sub al, 30h
    mov base, al

    mov dx, offset msg2
    mov ah, 9
    int 21h
    mov ah, 1
    int 21h
    sub al, 30h
    mov height, al

    mov al, base
    mov bl, height
    mul bl
    mov bl, 2
    div bl
    mov area, al

    mov dx, offset msg3
    mov ah, 9
    int 21h
    mov dl, area
    add dl, 30h
    mov ah, 2
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main
