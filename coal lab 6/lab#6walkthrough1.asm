; walkthrough 1
.model small
.stack 100h
.data 

msg DB 'Hello$'      ; string with $ terminator
.code
main proc

mov ax, @data        ; load data segment address
mov ds, ax           ; initialize DS register

mov dx, offset msg   ; put address of string in DX
mov ah, 9            ; to print string
int 21h              ; call DOS interrupt

mov ah, 4Ch          ; exit program
int 21h

main endp
end main
