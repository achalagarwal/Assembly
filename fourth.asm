;square a number

.model tiny
.DATA
  dat1 dw 'as'
  dat2 equ 1000
  res1 dd ?
  st1 dw 10 dup(0)
  st2 dw 0
.CODE
.startup
  lea si,dat1
  lea sp,st2
  call square
  lea si,res1
  mov word ptr[si],ax
  inc si
  inc si
  mov word ptr[si],dx
.exit ; mov ah,4Ch INT 21h
square proc near
  pushf
  mul ax
  popf
  ret
square endp
end
