.model small
.stack 100h 
chck macro v1
    mov bl, 02h
    mov ax, v1
    mov ah, 00h
    
    div bl
    mov a, ah
    
    cmp a, 0h
    jne else
    
    lea dx, o1
    mov ah, 9
    int 21h
    jmp finish
    
    else:
    mov bl, 03h
    mov ax, v1
    mov ah, 00h
    
    div bl
    mov b, ah
    
    cmp b, 0h
    jne finish
    
    lea dx, o2
    mov ah, 9
    int 21h        
    
    finish:
    
endm    
.data 
a dw ?
b dw ?
o1 dw "Fizz$"
o2 dw "Buzz$"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1 
    int 21h
    
    sub al, 30h 
    mov cl, al
    
    chck cl
main endp
end main