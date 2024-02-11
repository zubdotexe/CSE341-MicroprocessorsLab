.model small
.stack 100h 

fact macro v
    mov al, 1h
    
    start:
        cmp v, 1h
        jle exit
        
        mul v
        dec v    
    jmp start
    
    exit:
            
endm 

.data 
A dw 5h
.code
    mov ax, @data
    mov ds, ax
    
    fact A
    
    mov dx, ax
    mov ah, 2
    int 21h  




