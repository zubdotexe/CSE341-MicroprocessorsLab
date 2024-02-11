.model small
.stack 100h 

   
.data
ar db 3 dup(?) 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 3
    mov si, 0
    in1:    
        mov ah, 1
        int 21h
        
        mov ar[si], al
        inc si
    loop in1 
    
    mov si, 0
    mov bl, ar[si]
    
    mov si, 0
    mov cx, 3
    
    ou1:    
        cmp ar[si], bl
        jge m1
        jmp finish
        
        m1:
            mov bl, ar[si]
        
        finish:    
            inc si 
    loop ou1
    
    mov bh, 0h
    mov dx, bx
    mov ah, 2
    int 21h
       
main endp
end main