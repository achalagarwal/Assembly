.model tiny
.486
.DATA
dat1 db 1
.stack 256
.CODE
.startup
mov eax,11112222h
mov ecx,55556666h
mov edx,77778888h
mov ebx,33334444h
mov esp,00003000h
mov ebp,00009999h
mov esi,0000aaaah
mov edi,0000bbbbh
pushad
popa
.Exit
end
