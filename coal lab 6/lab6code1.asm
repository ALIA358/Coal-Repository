.model small
.stack 100h
.data
msg1 DB 'Name: Sara$'
msg2 DB 'Age: 20$'
msg3 DB 'Field: Software Engineering$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Print msg1
    mov dx, offset msg1
    mov ah, 9
    int 21h

    ; New line
    mov ah, 2
    mov dl, 13
    int 21h
    mov ah, 2
    mov dl, 10
    int 21h

    ; Print msg2
    mov dx, offset msg2
    mov ah, 9
    int 21h

    ; New line
    mov ah, 2
    mov dl, 13
    int 21h
    mov ah, 2
    mov dl, 10
    int 21h

    ; Print msg3
    mov dx, offset msg3
    mov ah, 9
    int 21h

    ; Exit
    mov ah, 4Ch
    int 21h
main endp
end main