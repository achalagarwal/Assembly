.model tiny
.186
.data
  dat1 db 45h,89h,89h,27h,0f2h,3eh
  car1 db 6 dup(00)

.CODE
.startup
  mov dl,'N'
  mov dh,'C'
  mov cx,6
  lea di,car1
  lea si,dat1
x1:
  mov al,[si] ;copying complete byte to al
  mov ah,0ffh ;masking ah with ff for auxiliary carry detection
  shl ax,4 ; dividing nibbles between ah and al
  ror al,4 ;swapping nibbles in al
  ;for xy initially -> fx0y attained
  add ah,al ;
  jc x2 ;any carry in x + y will result in carry in higher nibble
  mov [di],dl
  jmp x3
x2:
  mov [di],dh
x3:
  inc si
  inc di
  dec cx;
  jnz x1
  .exit
  end
