.model tiny
.DATA
  disp equ 20
  loc1 db 20h,30h,35h,0
  loc2 db 10 dup(00h)
  org 0010h
  array dw 7fffh,25,175,00h
  name db 'valid'
  x3 equ 50
  max db 00h
  min dw ?
.CODE
.startup
mov cl,loc1
mov si,0008h
mov ch,loc2[si]
mov ax, array
add ax,cx
mov min,ax
mov ah,02h
mov dl,disp
int 21h
end
