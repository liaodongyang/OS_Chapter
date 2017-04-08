#define VIDEO_ADDRESS 0xb8000
#define MAX_ROWS   25
#define MAX_COLS   80
#define WHITE_ON_BLACK 0x0f

// screen device I/O ports
#define REG_SCREEN_CTRL 0x3d4
#define REG_SCREEN_DATA 0x3d5


unsigned char port_byte_in(unsigned short port); //1 byte

void port_byte_out(unsigned short port, unsigned char data);

unsigned short port_word_in(unsigned short port); // 2 byte  1 word

void port_word_out(unsigned short port, unsigned short data);

