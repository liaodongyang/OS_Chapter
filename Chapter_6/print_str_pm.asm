[bits 32]
VIDEO_MEMORY        equ 0xb8000 
WHITE_ON_BLACK      equ 0xf     

print_string_pm:
    pusha
    mov edx, VIDEO_MEMORY
    mov ah, WHITE_ON_BLACK

print_string_pm_loop:
    mov al, [ebx]
    cmp al, 0                   
    je print_string_pm_loop_done
    mov [edx], ax               

    add ebx, 1
    add edx, 2

    jmp print_string_pm_loop

print_string_pm_loop_done:
    popa
    ret