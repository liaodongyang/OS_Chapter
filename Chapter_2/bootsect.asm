[org 0x7c00]

jmp start
; includer
 %include "print.asm"



start:
 xor ax,ax
 mov ds,ax 

; use interupt(BIOS) to display string 
;
 mov si, msg
 call print_str
;
;
 loop:
  jmp loop
;
; = jmp $
;

 msg db 'hello,newOS',13,10,0

 times 510-($-$$) db 0
 db 0x55
 db 0xAA

