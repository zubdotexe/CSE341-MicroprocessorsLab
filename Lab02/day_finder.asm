INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
    A DB ?
    B DB ?
.CODE
    MAIN PROC
       MOV AX, @DATA
       MOV DS, AX
       
       ;MOV AH, 1
;       INT 21H ; INPUT 1
;       MOV A, AL
;       SUB A, 48
;       
;       MOV AH, 1
;       INT 21H ; INPUT 2
;       MOV B, AL
;       SUB B, 48

       MOV DL, '?'
       MOV AH, 2
       INT 21H
       
       MOV AH, 1
       INT 21H
       
       SUB AL, 48
       
       MOV BL, AL
       
       ;MOV BX, 1 ; I = 0
       
       CMP BL, 1
       JE D1
       
       CMP BL, 2
       JE D2
       
       CMP BL, 3
       JE D3
       
       CMP BL, 4
       JE D4
       
       CMP BL, 5
       JE D5
       
       CMP BL, 6
       JE D6
       
       CMP BL, 7
       JE D7
       
       JMP END_IF
       
       D1:
       PRINTN "SAT"
       JMP END_IF
              
       D2:
       PRINTN "SUN"
       JMP END_IF
       
       D3:
       PRINTN "MON"
       JMP END_IF
       
       D4:
       PRINTN "TUE"
       JMP END_IF
       
       D5:
       PRINTN "WED"
       JMP END_IF
       
       D6:
       PRINTN "THU"
       JMP END_IF
       
       D7:
       PRINTN "FRI"
       JMP END_IF
       
       END_IF:
       
       MOV AH, 4CH
       INT 21H
        
    MAIN ENDP
    
END MAIN