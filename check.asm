.model tiny
.data
  str1 db 'A'
  str2 db 'C'
.code
.startup
lea si,str1
mov al,[si]
rcl al,1
lea si,str2
mov al,[si]
rcl al,1
.exit
end
