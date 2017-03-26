; choose 1 
[org 0x7c00]

 xor ax,ax
 mov ds,ax
 
; choose 2
; mov ax,0x07c0
; mov ds,ax
;
; 16*0x0000+0x7c00=16*0x07c0+0x0000 = 0x7c00
; ds,es,ss,cs <--1 + ip and other

;
; use interupt(BIOS) to display string 
;
 mov si, msg
 call bios_print
;
;


;
;
 loop:
  jmp loop
;
; = jmp $
;

msg db 'hello,newOS',13,10,0

bios_print:
 lodsb
 or al,al
 jz done
 mov ah, 0x0E
 int 0x10
 jmp bios_print

done:
 ret

 times 510-($-$$) db 0
 db 0x55
 db 0xAA

