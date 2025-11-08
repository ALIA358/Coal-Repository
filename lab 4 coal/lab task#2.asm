;Write an assembly program to input two numbers from user, calculate their sum and display the result on screen.
;Hint: Subtract 30h to convert into number, and Add 30h to convert into ASCII 

.model small 
.stack 100h 
.data 
.code 
main proc 
                  
  mov ah , 1       ; input  1st num
  int 21h
  sub al , 30h     ;convert to no.  ,  '3' to 3(110 , etc)
  mov bl , al  
  
  mov dl , 10      ; <<endl
  mov ah , 2
  int 21h  
  
  mov dl , 13      ; alingment
  mov ah , 2
  int 21h
  
  mov ah , 1       ; input  2nd num
  int 21h 
  sub al , 30h     ;convert to no.
  add bl , al 
  
  mov dl , 10      ; <<endl
  mov ah , 2
  int 21h  
  
  mov dl , 13     ; alingment
  mov ah , 2
  int 21h  
      
  add bl , 30h    ; output , convert to ASCII  , 3 to '3'(from 110 to 3)
  mov dl, bl
  mov ah,2 
  int 21h 

mov ah,4ch        ; end program
int 21h 
main endp 
end main 