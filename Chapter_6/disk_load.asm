disk_load:
    push dx
    mov ah, 0x02    
    mov al, dh      
    mov ch, 0x00    
    mov dh, 0x00    
    mov cl, 0x02    
    int 0x13      
    jc disk_error_flag
    pop dx
    cmp dh, al      
    jne disk_error_count
    ret
disk_error_flag:
    mov bx, DISK_ERROR_FLAG_MSG
    call print_str
    jmp $
disk_error_count:
    mov bx, DISK_ERROR_COUNT_MSG
    call print_str
    jmp $
DISK_ERROR_FLAG_MSG:
    db "Disk read flag error!", 0x0a, 0x0d, 0
DISK_ERROR_COUNT_MSG:
    db "Disk read count error!", 0x0a, 0x0d, 0