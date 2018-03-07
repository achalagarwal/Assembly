.model tiny
.data
  str1 db 'madam','$'
  len1 dw $-str1
  strrev db 20 dup(' ')
.code
.startup
  mov cx, len1
  add cx,-2
  lea si,str1
  lea di,strrev
  add si,len1
  add si,-2
reverse:
  mov al,[si]
  mov [di],al
  inc di
  dec si
  loop reverse
  mov al,[si]
  mov [di],al
  inc di
  mov dl,'$'
  mov [di],dl
  mov cx,len1
  add cx,-2
  lea si,str1
  lea di,strrev
palindromeCheck:
  cmpsb
  jnz notPal
  loop palindromeCheck
isPal:
   mov ah,2Ah
   mov dx,'y'
   int 21h
   .exit
notPal:
    mov ah,2Ch
    mov dx,'n'
    int 21h
    .exit
  end
