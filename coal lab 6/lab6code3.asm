.MODEL SMALL
.STACK 100h

.DATA
msg1 DB 'Enter a lowercase letter: $'
msg2 DB 13,10, 'The uppercase letter is: $'  ; 13,10 = newline

char DB ?    ; store input character here

.CODE
main PROC
    mov ax, @data
    mov ds, ax

    
    mov dx, offset msg1
    mov ah, 9
    int 21h

                     ;Take Input 
    mov ah, 08h      ; Function 08h -> read char without echo
    int 21h    
    
    mov char, al     ; store input char in memory

                     ;Convert to Uppercase
    sub char, 32     ; ASCII from lowercase to uppercase

                     ; Print Message
    mov dx, offset msg2
    mov ah, 9
    int 21h

                     ; Print Converted Character
    mov dl, char
    mov ah, 2
    int 21h

   
    mov ah, 4Ch
    int 21h
main ENDP
END main
