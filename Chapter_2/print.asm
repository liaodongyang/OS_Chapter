;
; mov si,msg
; msg db 'XXXXXXX',0
;
print_str:
 lodsb
 or al,al
 jz done
 mov ah, 0x0E
 int 0x10
 jmp print_str

done:
 ret
