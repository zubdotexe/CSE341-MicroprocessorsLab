;task 1



;.model small
;.stack 100h
;.data
;    a db 5, 7, 2, 7, 5
;.code
;    mov ax, @data
;    mov ds, ax
;       
;    mov cx,5
;    mov ah,2
;    mov si,4
;    
;    start:
;    mov dl,a[si]  
;    add dl, 48
;    int 21h
;
;    sub si,1
;    loop start
        
  
  
;task 2 



.model small
.stack 100h
.data
a db 5 dup(?)  

.code  
    mov ax, @data
    mov ds, ax
    
    ;input
    mov cx,5
    mov ah,1
    mov si,0 

    input:
        int 21h
        mov a[si], al
        add si,1
    loop input
    
    ;new line
    mov ah, 2
    mov dl, 0ah
    int 21h
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    
        
    mov bl, 100
    mov cx, 5       
    mov si, 0
    
    less:    
        cmp a[si], bl
        jl least
        add si, 1
    loop less
    jmp exit 
    
    least: 
        mov bl, a[si]
        jmp less
    
    exit:
        mov ah, 2
        mov dl, bl
        int 21h