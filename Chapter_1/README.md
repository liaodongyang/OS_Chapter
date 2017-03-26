In real mode, addresses are calculated as segment * 16 + offset. Since offset can be much larger than 16, there are many pairs of segment and offset that point to the same address. For instance, some say that the bootloader is is loaded at 0000:7C00, while others say 07C0:0000. 
This is in fact the same address: 
  16 * 0x0000 + 0x7C00 = 16 * 0x07C0 + 0x0000 = 0x7C00.
  
  
Many (but not all) BIOS interrupts expect DS to be filled with a Real Mode segment value. This is why many BIOS interrupts won't work in protected mode. So if you want to use int 10h/ah=0eh to print to the screen, then you need to make sure that your seg:offset for the characters to print is correct.
