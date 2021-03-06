#define __TW8836_C__


//#include "kernel.h"
//#include "sI2C.h"
#include "SPIFlash.h"
#include "TW8836.h"
#include "i2c_driver.h"
#include "libr.h"
#include "Menu.h"
#include "OSDFont.h"
#if 0//miller.tao20150829
const uint8_t TW8836_REG_TAB[] =
{
    0xFF, 0x00,  // Page 00
    0x02, 0x49,
    0x03, 0xFF,
    0x04, 0x01,
    0x06, 0x00,
    0x07, 0x02,
    0x08, 0xC0,
    0x0F, 0x00,
    0x1F, 0x00,
    0x40, 0x00,
    0x41, 0xC0,
    0x42, 0x02,
    0x43, 0x20,
    0x44, 0xF0,
    0x45, 0x20,
    0x46, 0xD0,
    0x47, 0x00,
    0x48, 0x00,
    0x4B, 0x10,
    0x50, 0x00,
    0x51, 0x00,
    0x52, 0x00,
    0x53, 0x03,
    0x54, 0x00,
    0x56, 0x00,
    0x57, 0x00,
    0x5F, 0x00,
    0x60, 0x00,
    0x66, 0x30,
    0x67, 0x00,
    0x68, 0x00,
    0x69, 0x02,
    0x6A, 0x20,
    0x6B, 0xF0,
    0x6C, 0x20,
    0x6D, 0xD0,
    0x6E, 0x10,
    0x6F, 0x10,
    0xD4, 0x00,
    0xE7, 0x16,
    0xE8, 0x01,
    0xE9, 0x20,
    0xEA, 0x00,
    0xEB, 0x40,
    0xEC, 0xB0,
    0xED, 0x11,
    0xF6, 0x02,
    0xF7, 0x16,
    0xF8, 0x01,
    0xF9, 0x00,
    0xFA, 0x00,
    0xFB, 0x40,
    0xFC, 0x30,
    0xFD, 0x11,

    0xFF, 0x01,  // Page 01
    0x01, 0x83,
    0x02, 0x40,
    0x04, 0x00,
    0x05, 0x00,
    0x06, 0x00,
    0x07, 0x12,
    0x08, 0x12,
    0x09, 0x20,
    0x0A, 0x0A,
    0x0B, 0xD0,
    0x0C, 0xCC,
    0x0D, 0x00,
    0x10, 0x00,
    0x11, 0x5C,
    0x12, 0x11,
    0x13, 0x80,
    0x14, 0x80,
    0x15, 0x00,
    0x17, 0x80,
    0x18, 0x44,
    0x1A, 0x10,
    0x1B, 0x00,
    0x1C, 0x27,
    0x1D, 0x7F,
    0x1E, 0x00,
    0x1F, 0x00,
    0x20, 0x50,
    0x21, 0x22,
    0x22, 0xF0,
    0x23, 0xD8,
    0x24, 0xBC,
    0x25, 0xB8,
    0x26, 0x44,
    0x27, 0x38,
    0x28, 0x00,
    0x29, 0x00,
    0x2A, 0x78,
    0x2B, 0x44,
    0x2C, 0x30,
    0x2D, 0x14,
    0x2E, 0xA5,
    0x2F, 0xE0,
    0x30, 0xD0,
    0x31, 0x00,
    0x32, 0x00,
    0x33, 0x05,
    0x34, 0x1A,
    0x35, 0x00,
    0x36, 0xE3,
    0x37, 0x28,
    0x38, 0xAF,
    0x40, 0x00,
    0x41, 0x80,
    0x42, 0x00,
    0xC0, 0x00,
    0xC1, 0xC7,
    0xC2, 0x01,
    0xC3, 0x03,
    0xC4, 0x5A,
    0xC5, 0x00,
    0xC6, 0x20,
    0xC7, 0x04,
    0xC8, 0x00,
    0xC9, 0x06,
    0xCA, 0x06,
    0xCB, 0x30,
    0xCC, 0x00,
    0xCD, 0x54,
    0xD0, 0x00,
    0xD1, 0xF0,
    0xD2, 0xF0,
    0xD3, 0xF0,
    0xD4, 0x00,
    0xD5, 0x00,
    0xD6, 0x10,
    0xD7, 0x70,
    0xD8, 0x00,
    0xD9, 0x04,
    0xDA, 0x80,
    0xDB, 0x80,
    0xDC, 0x20,
    0xE0, 0x00,
    0xE1, 0x05,
    0xE2, 0xD9,
    0xE3, 0x07,
    0xE4, 0x33,
    0xE5, 0x31,
    0xE6, 0x00,
    0xE7, 0x2A,
    0xE8, 0x01,
    0xE9, 0x00,
    0xEA, 0x03,
    0xF6, 0x30,
    0xF7, 0x00,
    0xF8, 0x00,
    0xF9, 0x00,
    0xFA, 0x38,

    0xFF, 0x02,  // Page 02
    0x01, 0x00,
    0x02, 0x20,
    0x03, 0x00,
    0x04, 0x20,
    0x05, 0x00,
    0x06, 0x20,
    0x07, 0x80,
    0x08, 0x10,
    0x09, 0x00,
    0x0A, 0x04,
    0x0B, 0x01,
    0x0C, 0xE0,
    0x0D, 0x42,
    0x0E, 0x10,
    0x0F, 0x00,
    0x10, 0x21,
    0x11, 0xE0,
    0x12, 0x01,
    0x13, 0x00,
    0x14, 0x20,
    0x15, 0x08,
    0x16, 0x10,
    0x17, 0x01,
    0x18, 0x08,
    0x19, 0x40,
    0x1A, 0x00,
    0x1B, 0x00,
    0x1C, 0x22,
    0x1D, 0x40,
    0x1E, 0x03,
    0x20, 0x00,
    0x21, 0x00,
    0x40, 0x10,
    0x41, 0x00,
    0x42, 0x01,
    0x43, 0x00,
    0x44, 0x00,
    0x45, 0x01,
    0x46, 0x00,
    0x47, 0x00,
    0x48, 0x01,
    0x49, 0x10,
    0x4A, 0x00,
    0x4B, 0x00,
    0x4C, 0x10,
    0x4D, 0x80,
    0x4E, 0x00,
    0xE4, 0x00,
    0xF8, 0x00,
    0xF9, 0x80,

    0xFF, 0x06,  // Page 06
    0x40, 0x00,
    0x41, 0x00,
    0x42, 0x00,
    0x43, 0x00,
    0x44, 0x00,
    0x46, 0x00,
    0x48, 0x00,
    0x49, 0x00,
    0x4A, 0x00,
    0x4B, 0x00,
    0x4C, 0x00,
    0x4D, 0x00,
    0x4E, 0x00,

    0xFF, 0xFF,
};
#else
const uint8_t TW8836_REG_TAB[] =
{
	0xFF,0x00,	//; Page 00
	0x02,0x6B,
	0x03,0xFF,
	0x04,0x00,
	0x06,0x06,
	0x07,0x02,
	0x08,0x80,
	0x0F,0x00,
	0x1F,0x00,
	0x40,0x03,
	0x41,0x11,
	0x42,0x24,
	0x43,0x20,
	0x44,0x58,
	0x45,0x59,
	0x46,0x00,
	0x47,0x00,
	0x48,0x00,
	0x4B,0x00,
	0x50,0x00,
	0x51,0x00,
	0x52,0x00,
	0x53,0x03,
	0x54,0x00,
	0x56,0x00,
	0x57,0x00,
	0x5F,0x00,
	0x60,0x00,
	0x66,0x00,
	0x67,0x00,
	0x68,0x00,
	0x69,0x02,
	0x6A,0x20,
	0x6B,0xF0,
	0x6C,0x20,
	0x6D,0xD0,
	0x6E,0x10,
	0x6F,0x10,
	0xD4,0x00,
	0xE7,0x16,
	0xE8,0x01,
	0xE9,0xDC,
	0xEA,0x00,
	0xEB,0x40,
	0xEC,0x30,
	0xED,0x21,
	0xF6,0x00,
	0xF7,0x16,
	0xF8,0x01,
	0xF9,0x00,
	0xFA,0x00,
	0xFB,0x40,
	0xFC,0x30,
	0xFD,0x31,
	
	0xFF,0x01, // ; Page 01
	0x01,0x93,
	0x02,0x4E,
	0x04,0x00,
	0x05,0x00,
	0x06,0x00,
	0x07,0x02,
	0x08,0x15,
	0x09,0xF0,
	0x0A,0x0F,
	0x0B,0xD0,
	0x0C,0xCC,
	0x0D,0x00,
	0x10,0x80,
	0x11,0x5C,
	0x12,0x11,
	0x13,0x80,
	0x14,0x80,
	0x15,0x00,
	0x17,0x80,
	0x18,0x44,
	0x1A,0x10,
	0x1B,0x00,
	0x1C,0x17,
	0x1D,0x7F,
	0x1E,0x00,
	0x1F,0x00,
	0x20,0x50,
	0x21,0x12,
	0x22,0xF0,
	0x23,0xD8,
	0x24,0xBC,
	0x25,0xB8,
	0x26,0x44,
	0x27,0x38,
	0x28,0x00,
	0x29,0x00,
	0x2A,0x78,
	0x2B,0x44,
	0x2C,0x30,
	0x2D,0x14,
	0x2E,0xA5,
	0x2F,0xE6,
	0x30,0x50,
	0x31,0x00,
	0x32,0x00,
	0x33,0x45,
	0x34,0x1A,
	0x35,0x00,
	0x36,0xE3,
	0x37,0x28,
	0x38,0xAF,
	0x40,0x00,
	0x41,0x80,
	0x42,0x00,
	0xC0,0x38,
	0xC1,0xC7,
	0xC2,0xD1,
	0xC3,0x03,
	0xC4,0x0E,
	0xC5,0x16,
	0xC6,0x20,
	0xC7,0x04,
	0xC8,0x00,
	0xC9,0x06,
	0xCA,0x06,
	0xCB,0x56,
	0xCC,0x10,
	0xCD,0x54,
	0xD0,0x00,
	0xD1,0xF0,
	0xD2,0xF0,
	0xD3,0xF0,
	0xD4,0x80,
	0xD5,0x00,
	0xD6,0x10,
	0xD7,0x2A,
	0xD8,0x00,
	0xD9,0x04,
	0xDA,0x80,
	0xDB,0x80,
	0xDC,0x20,
	0xE0,0x00,
	0xE1,0x05,
	0xE2,0xD9,
	0xE3,0x07,
	0xE4,0x33,
	0xE5,0x31,
	0xE6,0x00,
	0xE7,0x2A,
	0xE8,0x01,
	0xE9,0x00,
	0xEA,0x03,
	0xF6,0x30,
	0xF7,0x00,
	0xF8,0x00,
	0xF9,0x00,
	0xFA,0x38,
	
	0xFF,0x02,	//; Page 02
	0x01,0x00,
	0x02,0xE0,
	0x03,0x00,
	0x04,0x20,
	0x05,0x00,
	0x06,0x1E,
	0x07,0x80,
	0x08,0x12,
	0x09,0x00,
	0x0A,0x04,
	0x0B,0x0E,
	0x0C,0x00,
	0x0D,0x81,
	0x0E,0x40,
	0x0F,0x03,
	0x10,0x2E,
	0x11,0x00,
	0x12,0x24,
	0x13,0x00,
	0x14,0x03,
	0x15,0x21,
	0x16,0x58,
	0x17,0x02,
	0x18,0x63,
	0x19,0x22,
	0x1A,0x00,
	0x1B,0x00,
	0x1C,0x42,
	0x1D,0xFE,
	0x1E,0x10,
	0x20,0x00,
	0x21,0x00,
	0x40,0x10,
	0x41,0x00,
	0x42,0x05,
	0x43,0x01,
	0x44,0x64,
	0x45,0xF4,
	0x46,0x00,
	0x47,0x0A,
	0x48,0x36,
	0x49,0x10,
	0x4A,0x00,
	0x4B,0x00,
	0x4C,0x00,
	0x4D,0x44,
	0x4E,0x04,
	0xE4,0x00,
	0xF8,0x00,
	0xF9,0x80,
	
	0xFF,0x06,	//; Page 06
	0x40,0x0C,
	0x41,0x00,
	0x42,0x01,
	0x43,0xC0,
	0x44,0x00,
	0x46,0x01,
	0x48,0x07,
	0x49,0x01,
	0x4A,0x00,
	0x4B,0x30,//0x3A,0x30
	0x4C,0x40,
	0x4D,0x17,//0x00,0x17
	0x4E,0x00,
	

        0xff,0xff,
};
#endif

 void TW8836_Configuration( void )
{
    uint16_t i = 0;

    for(i = 0; i < sizeof(TW8836_REG_TAB); i+=2)
    {
        TW8836_Write(TW8836_REG_TAB[i], TW8836_REG_TAB[i+1]);
    }

    //printf("\r\nTW8836 Configuration Finished.");
}


void InitTW8836( void )
{
    //sI2cInit();

    TW8836_WritePage(0x00);

   // printf("\r\nTW88xx ID = %x , REV = %x", TW8836_Read(REG000), TW8836_Read(REG001));

    SpiFlashInit();

    //TW8836_Configuration(); 
	Delay_1ms(20 * 10);
}


uint8_t TW8836_Read( uint8_t suba )
{
    //return sI2cReadByte(0x8A, suba);
    return ReadTW88(suba);
}


void TW8836_Write( uint8_t suba, uint8_t dat )
{
    //sI2cWriteByte(0x8A, suba, dat);
    WriteTW88(suba,dat);
}


void TW8836_WritePage( uint8_t dat )
{
    //sI2cWriteByte(0x8A, 0xFF, dat);
    WriteTW88(0xff,dat);
}


void TW8836_WaitVBlank( uint8_t cnt )
{
    uint8_t  i = 0;
    uint16_t j = 0;

    TW8836_WritePage(TW8836_PAGE0_GENERAL);

    for(i = 0; i < cnt; i++)
    {
        TW8836_Write(REG002, 0xFF);

        j = 0;

        while(!(TW8836_Read(REG002) & 0x40))
        {
            j++;

            if(j > TW8836_WAIT_VBLANK_VALUE)
            {
                //printf("\r\nError : Wait VBlank.");
                break;
            }
        }
    }
}

void Init_FontOSD(void)
{
//	BackLight(1); //test
	FontOsdInit();
//	FOsdSetDeValue();
//	TestNum1BPP3BPP();
//	Delay_1ms(100);
//	FOsdIndexMsgPrint(FOSD_STR1_TW8836);

//	FOsdWinEnable(0, OFF);	//win0, disable..
}

void FOsdDisableAllWin(void)
{
	uint8_t i;
	for(i = 0;i<FOSD_MAX_OSDWIN; i++)
	{
		FOsdWinEnable(i, OFF);
	}
}


void OuputVideoEnable(uint8_t en)
{
	TW8836_WritePage(TW8836_PAGE2_TCON);
	if(en)
	{
		TW8836_Write(REG21E, (TW8836_Read(REG21E) & 0xfe));
	}
	else
	{
		TW8836_Write(REG21E, (TW8836_Read(REG21E) | 0x01));
	}
}


