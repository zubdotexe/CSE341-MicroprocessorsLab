.model small
.stack 100h
.data

.code
    main proc
        mov ax, @data
        mov ds, ax
        
        ; loop for input
        mov cx, 6
        input:    
            mov ah, 1
            int 21h
            
            push ax
        loop input 
        
        ; new line
        mov ah, 2
        mov dx, 0ah
        int 21h
        
        mov dx, 0dh
        int 21h
                 
        ; loop for output                 
        mov cx, 6
        output:    
            pop bx
            mov dx, bx
            
            mov ah, 2
            int 21h
            
            ; space
            mov dx, 20h
            int 21h
        loop output
        
    main endp
end main