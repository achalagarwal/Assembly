.model tiny
.data
str1 db 'A','B','C','D','E','F','G','H','I','J','K','L','M'
count db 13
.code
.startup
mov cl,count
lea si,str1
l1:
  mov al,[si]
  mov ah,0
  mov ch,8
rotate:
  dec ch
  jz checkParity
  rcr al,1
  jnc rotate
  inc ah
  jmp rotate
checkParity:
  mov al,ah
  mov ah,0
  mov dl,2
  div dl ;instead of dividing just check the lsb of al (total 1's) uisng RCR / ROR and then carry check   
  cmp ah,0
  jnz modify
looper:
  inc si
  dec cl
  jnz l1
  .exit
modify:
  mov al,[si]
  or al,80h
  mov [si],al
  jmp looper
end
