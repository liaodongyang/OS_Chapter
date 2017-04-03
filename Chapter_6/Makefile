all: osimage

osimage: bootsector.bin kernel.bin sector
	cat $^ > $@

bootsector.bin: bootsector.asm
	nasm $< -f bin -o $@

kernel.bin: kernel_entry.o kernel.o
	ld -o $@ -Ttext 0x1000 --oformat binary $^

kernel_entry.o: kernel_entry.asm
	nasm $< -f elf -o $@

kernel.o: kernel.c
	gcc -ffreestanding -c $< -o $@

sector: 
	dd if=/dev/zero of=$@ bs=512 count=15 2> /dev/null

clean: 
	rm *.bin *.o sector osimage