.model small      ; reserve 64 KB space for data and code together. 
.stack 100h       ; reserve space for stack 
.data             ; data directive, all variables are defined after this instruction 
.code             ; out instructions are written after this segment. 
main proc         ; start of procedure, we have to define at least one procedure,
    
 mov dl,'i'       ; store i inside data register’s part of dl
 mov ah,2         ; display output of data that is stored in dl, in this case i is stored in dl
 int 21h          ; generate interrupt every time we access hardware, we are accessing dl register
 
 mov dl,'s'       ; store s inside data register’s part of dl
 mov ah,2         ; display output of data that is stored in dl, in this case s is stored in dl
 int 21h          ; again, generate interrupt 
 
mov ah,4ch        ; code to exit from data registers
int 21h           ; generate interrupt
main endp         ; end of procedure proc
end main          ; end of program
 
 
 
 
 


 
 
 

 
 
