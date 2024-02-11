.model small
.stack 100h 

saveReg macro r1, r2, r3
    push r1
    push r2
    push r3    
endm       

restoreReg macro s1, s2, s3
    pop s1
    pop s2
    pop s3
endm      

copy macro src, dest, len
    saveReg cx, si, di
    
    lea si, src
    lea di, dest
    cld
    mov cx, len
    rep movsb 
    restoreReg di, si, cx
 
endm    

.data
str2 dw 'abcd'
str1 dw 'efgh'