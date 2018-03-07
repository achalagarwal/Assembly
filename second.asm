.model small
.386
.data
  mes1 db 'Enter a character',13,10,'$'
  mes2 db 'The character you entered is',13,10,'$'
.code
  mov ax,@data
  mov ds,ax
  mov dx, offset mes1
  mov ah,09h
  int 21h
  mov ah,08h
  int 21h
  mov bl,al
  mov dx,offset mes2
  mov ah,09h
  int 21h
  mov dl,bl
  mov dh,0
  mov ah,02h
  int 21h
  mov ah,4ch
  int 21h
end
