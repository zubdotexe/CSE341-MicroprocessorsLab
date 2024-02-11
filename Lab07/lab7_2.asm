.model small
.stack 300h

rev macro str1, str2
     
    mov cx, 8h  ; dw tai 2 ta kore addrs niye kaj ekarone 4 char * 2 = 8 bar loop ghure
    mov si, 0h
    
    p1: 
;        mov dx, str1[si]
;        mov ah, 2
;        int 21h
        
        push str1[si]
        inc si 
    loop p1       
    

    mov cx, 8h  
    mov si, 0h
    
    p2:    
        pop str2[si]
        inc si
    loop p2 
    
    mov cx, 8h
    mov si, 0h
    
    print:    
        mov dx, str2[si]
        mov ah, 2
        int 21h
        
        inc si
    loop print
endm  

.data
A dw "a",'b','c','d','$'  
;A dw 'abcd$';
B dw 4 dup(?)  

.code  
    mov ax, @data
    mov ds, ax
    
    rev A, B
    
    
    
    
    
     




