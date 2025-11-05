;Write a program to use the SCAN_NUM to input prompt for values for three
;variables x, y and z and the PRINT_NUM to display an appropriate label and value of
;the expression x - y + z - 1.  


.model small
.stack 100h
.data
.code
main proc

                     ; Input 1st number
    mov ah, 1        ; Take input from user
    int 21h
    sub al, 48       ; Convert ASCII to number
    mov bl, al       ; Store first number in BL

                     ; Input 2nd number
    mov ah, 1        ; Take second input
    int 21h
    sub al, 48       ; Convert ASCII to number
    sub bl, al       ; Add to BL (sum of first two numbers)

                     ; Input 3rd number 
    mov ah, 1        ; Take third input
    int 21h
    sub al, 48       ; Convert ASCII to number
    add bl, al       ; Add to BL (sum of all three numbers)

    mov al, 1
    
    sub bl, al
                     
    add bl, 48       ; Convert number to ASCII for display

                     ; Display result
    mov dl, bl       ; Move result to DL
    mov ah, 2        
    int 21h

                     ; Exit program
    mov ah, 4Ch
    int 21h

main endp
end main
