.model tiny
.data
     PACKEDBCD DB 52H
     BINARY    DB ?

.code
.startup
      MOV AH,0
      MOV AL,PACKEDBCD
      MOV BL,AL

      AND AL,0F0H
      AND BL,0FH

      MOV CL,04H
      ROL AL,CL

      MOV CL,10
      MUL CL

      ADD AL,BL

      MOV AH,AL
      MOV BINARY,AH

      MOV AH,4CH
      INT 21H
END
