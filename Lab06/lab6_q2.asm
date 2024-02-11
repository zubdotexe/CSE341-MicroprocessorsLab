.model small
.stack 100h
.data
arr db 3 dup(?) 
sum dw ?
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
            
        ; storing in array            
        mov si, 0  
        mov cx, 3
        store:       
            pop bx
            mov arr[si], bx  
            
            inc si                     
        loop store
                 
        ; output for the first 3 numbers                       
        mov cx, 3
        output:    
            pop bx
            ;add bx, 48
            mov dx, bx
            
            mov ah, 2
            int 21h
           
            ; space
            mov dx, 20h
            int 21h 
            
            ; adding the first 3 values
            add bx, 48
            add sum, bx
        loop output 
        
        ; output for the last 3 numbers
        mov cx, 3
        mov si, 2
        output2:   
            mov dx, arr[si]
            
            mov ah, 2
            int 21h
            
            dec si 
            
            mov dx, 20h
            mov ah, 2
            int 21h  
        loop output2 
        
        ; new line            
        mov ah, 2
        mov dx, 0ah
        int 21h
        
        mov dx, 0dh
        int 21h 
        
        ; sum 
        sub sum, 48
        mov dx, sum
        int 21h
        
    main endp
end main