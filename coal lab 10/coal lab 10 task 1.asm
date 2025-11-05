;program to print value 1,2,3,4 using array , task 1
.model small
.stack 100h
.data

arr db 49,50,51,52         ;Data defined: arr bytes 49,50,51,52

.code
main proc
    
    mov ax,@data          ;Load address of data segment into AX
    mov ds,ax             ;Set DS to data segment so [SI] reads correct memory
    mov si,offset arr     ;SI points to start of array
    mov dx,[si]           ;2 bytes loaded from memory at SI into DX.
    mov ah,2              ;DL = 49 -> prints ASCII '1'
    int 21h
    
    mov dx,[si+1]         ;DX = 0x3332. DL = 0x32 (50) -> '2'
    mov ah,2
    int 21h 
    
    mov dx,[si+2]         ;DX = 0x3433. DL = 0x33 (51) ? '3'.
    mov ah,2
    int 21h
    
    mov dx,[si+3]         ;DL = 0x34 (52) ? '4'.
    mov ah,2
    int 21h
          
mov ah,4ch                ;Terminate program
int 21h
main endp
end main
    