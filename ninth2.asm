.model tiny
.CODE
.startup
  ;mov ax,2000h
  ;mov ds,ax
  mov si,1234h
l1:
  mov al,byte ptr[si]
  cmp al,0ffh
  je nd
cont:
  call chek
  mov [si],al
  inc si
  jmp l1
nd:
  .exit

chek proc near
  cmp al,15
  jg i1
  ret
i1:
  add al,20
  ret
chek endp
end
