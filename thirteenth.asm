.model tiny
.386
.data
dat0 db 'P1211','P1099','G1234'
dat1 db 'a','b','c'
dat2 db 12h,24h,36h
dat3 dw 7890h,0abcdh
.CODE
.startup
mov dx,offset dat0
mov ax,offset dat1
mov bx,offset dat2
mov cx,offset dat3
end
