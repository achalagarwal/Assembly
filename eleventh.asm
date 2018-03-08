.model tiny
.386
.data
dat1 db 75h,67h,88h,92h,41h,20h,91h,30h
dat2 db 95h,67h,88h,92h,41h,20h,91h,30h
dat3 dw 4 dup(?)
car db 0
.code
.startup
  lea si,dat1
  lea di,dat3
  lea bx,dat2
  mov cx, 4
  clc
  cld
  lodsw
  x2:
  ror ax,8 ; correcting ax which takes in numbers in reverse order
  mov dx,[bx] ; storing bx
  ror dx,8 ;original bx rotated
  adc ax,dx
  stosw
  add bx,2
  loop x2
  jnc x1
  inc byte ptr[car]
  x1:
  .exit
  end
