;square a number with far call

.model tiny
.DATA
  dat1 dw 1a2bh
  dat2 equ 1000
  res1 dd ?
  st1 dw 10 dup(0)
  st2 dw 0
.CODE
.startup
  lea sp,st2
  mov ax,dat1
  call square
  lea si,res1
  mov word ptr[si],ax
  inc si
  inc si
  mov word ptr[si],dx
.exit ; mov ah,4Ch INT 21h
square proc far
  pushf
  mul ax
  popf
  ret
square endp
end
