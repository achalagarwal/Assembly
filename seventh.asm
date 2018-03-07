.model tiny
.386
.data
  in1 dd 8000aaaah,0ffffffffh,8888aaafh,0aaaafffah,0abcdefh
  c1 db 0
  c2 db 0
  c3 db 0
  c4 db 0
.code
.startup
  lea si,in1
  mov cl,4
  y1:
  mov ebx,[si]
  call sub1
  inc si
  dec cx
  jnz y1
.exit
sub1 proc near
  sar ebx,1
  jnc x1
  ; not divisibly by 2
  shl ebx,1
  jnc x2
  ;negative number
  ;negative and odd
  inc c3
  ret
x2:;positive number
   ;positive and odd
   inc c1
   ret
x1:;divisible by 2
  shl ebx,1
  jnc x3
  ;negative number
  ;negative and even
  inc c4
  ret
x3:;positive number
   ;positive and even
   inc c2
   ret
sub1 endp
end
