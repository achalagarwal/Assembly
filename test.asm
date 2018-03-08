.model tiny
.data
  string db 0AAh,11h,0d1h
.code
.startup
  ;mov si,1
  ;mov al,string+1
  mov al,-128
  neg al
.exit
end
