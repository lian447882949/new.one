
#include "type.h"

#define BPP2_START			0x100
#define BPP3DIGIT_START		0x80	//0x6C
#define BPP4PENGUIN_START	0x98

struct fosd_menu_item_s {
	BYTE  	ram;				//osd_ram_start_offset;
	BYTE	zoom;				//upper:h bottom:v
	BYTE 	w,h;				//n_char, 1
	BYTE 	ch_space_low;
	//some more....
	BYTE	color;				//bgColor index + fgColor index
	BYTE	win;
	BYTE	alpha_value;
	BYTE	alpha_color_index;	//only used when alpha_value is not 0
	BYTE	reserved9;
	BYTE	reserved10;
	BYTE	reserved11;
};


void TestUpper256Char(void);
