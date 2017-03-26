[org 0x7c00]
KERNEL_OFFSET equ 0x1000

jmp start

 %include "print.asm"
 %include "diskload.asm"

start:
 xor ax,ax
 mov ds,ax

 mov [BOOT_DRIVE], dl
 mov bp,0x9000
 mov sp, bp

 mov si, MSG_START 
 call print_str
 
 call load_disk

 jmp $

 [bits 16]
 load_disk:
  mov si,MSG_LOAD_DISK
  call print_str
  mov bx,KERNEL_OFFSET
  mov dh,16
  mov dl,[BOOT_DRIVE] ; 0x0f00 ?
  call disk_load
 
 BOOT_DRIVE db 0
 MSG_START db 'hello,newOS',0x0a,0x0d,0
 MSG_LOAD_DISK db 'loading kernel into memory',0x0a,0x0d,0

 times 510-($-$$) db 0
 db 0x55
 db 0xAA

