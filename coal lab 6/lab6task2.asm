.MODEL SMALL
.STACK 100h
.DATA      

msg1 DB 'The user entered ', '$'
msg2 DB ' character.$'
char DB ?              ;  user input

.CODE
main PROC 
    
    mov ax, @data      ; load data segment
    mov ds, ax

                       ;Input Character
    mov ah, 1          ;  take one char from keyboard
    int 21h
    
    mov char, al       ; store user input in variable

    
    mov dx, offset msg1  ;  Print First Message
    mov ah, 9            ; print string
    int 21h

                       ;Print Character
    mov dl, char       ; load character to DL
    mov ah, 2          ;display single character
    int 21h

                       ;Print Second Message
    mov dx, offset msg2
    mov ah, 9
    int 21h

   
    mov ah, 4Ch
    int 21h
main ENDP

END main
