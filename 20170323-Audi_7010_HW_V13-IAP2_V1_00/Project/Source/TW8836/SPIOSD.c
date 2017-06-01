#define __SPIOSD_C__

#include "includes.h"

//#include "SPIFlash.h"
//#include "SPIOSD.h"
//#include "TW8836.h"



const uint8_t SpiOsdWinBase[9] =
{
    SPIOSD_WIN0_START, SPIOSD_WIN1_START, SPIOSD_WIN2_START,
    SPIOSD_WIN3_START, SPIOSD_WIN4_START, SPIOSD_WIN5_START,
    SPIOSD_WIN6_START, SPIOSD_WIN7_START, SPIOSD_WIN8_START,
};

const uint8_t bmp_LUT[] =      // LUT
{
    // Color Look Up Table (256) bytes
#if 1
    0,0,0,0,0,0,128,0,0,128,0,0,0,128,128,0,128,0,0,0,128,0,128,0,128,128,0,0,192,192,192,0,
    192,220,192,0,240,202,166,0,51,0,0,0,0,0,51,0,51,0,51,0,51,51,0,0,22,22,22,0,28,28,28,0,
    34,34,34,0,41,41,41,0,85,85,85,0,77,77,77,0,66,66,66,0,57,57,57,0,128,124,255,0,80,80,255,0,
    147,0,214,0,255,236,204,0,198,214,239,0,214,231,231,0,144,169,173,0,0,255,51,0,0,0,102,0,0,0,153,0,
    0,0,204,0,0,51,0,0,0,51,51,0,0,51,102,0,0,51,153,0,0,51,204,0,0,51,255,0,0,102,0,0,
    0,102,51,0,0,102,102,0,0,102,153,0,0,102,204,0,0,102,255,0,0,153,0,0,0,153,51,0,0,153,102,0,
    0,153,153,0,0,153,204,0,0,153,255,0,0,204,0,0,0,204,51,0,0,204,102,0,0,204,153,0,0,204,204,0,
    0,204,255,0,0,255,102,0,0,255,153,0,0,255,204,0,51,255,0,0,255,0,51,0,51,0,102,0,51,0,153,0,
    51,0,204,0,51,0,255,0,255,51,0,0,51,51,51,0,51,51,102,0,51,51,153,0,51,51,204,0,51,51,255,0,
    51,102,0,0,51,102,51,0,51,102,102,0,51,102,153,0,51,102,204,0,51,102,255,0,51,153,0,0,51,153,51,0,
    51,153,102,0,51,153,153,0,51,153,204,0,51,153,255,0,51,204,0,0,51,204,51,0,51,204,102,0,51,204,153,0,
    51,204,204,0,51,204,255,0,51,255,51,0,51,255,102,0,51,255,153,0,51,255,204,0,51,255,255,0,102,0,0,0,
    102,0,51,0,102,0,102,0,102,0,153,0,102,0,204,0,102,0,255,0,102,51,0,0,102,51,51,0,102,51,102,0,
    102,51,153,0,102,51,204,0,102,51,255,0,102,102,0,0,102,102,51,0,102,102,102,0,102,102,153,0,102,102,204,0,
    102,153,0,0,102,153,51,0,102,153,102,0,102,153,153,0,102,153,204,0,102,153,255,0,102,204,0,0,102,204,51,0,
    102,204,153,0,102,204,204,0,102,204,255,0,102,255,0,0,102,255,51,0,102,255,153,0,102,255,204,0,204,0,255,0,
    255,0,204,0,153,153,0,0,153,51,153,0,153,0,153,0,153,0,204,0,153,0,0,0,153,51,51,0,153,0,102,0,
    153,51,204,0,153,0,255,0,153,102,0,0,153,102,51,0,153,51,102,0,153,102,153,0,153,102,204,0,153,51,255,0,
    153,153,51,0,153,153,102,0,153,153,153,0,153,153,204,0,153,153,255,0,153,204,0,0,153,204,51,0,102,204,102,0,
    153,204,153,0,153,204,204,0,153,204,255,0,153,255,0,0,153,255,51,0,153,204,102,0,153,255,153,0,153,255,204,0,
    153,255,255,0,204,0,0,0,153,0,51,0,204,0,102,0,204,0,153,0,204,0,204,0,153,51,0,0,204,51,51,0,
    204,51,102,0,204,51,153,0,204,51,204,0,204,51,255,0,204,102,0,0,204,102,51,0,153,102,102,0,204,102,153,0,
    204,102,204,0,153,102,255,0,204,153,0,0,204,153,51,0,204,153,102,0,204,153,153,0,204,153,204,0,204,153,255,0,
    204,204,0,0,204,204,51,0,204,204,102,0,204,204,153,0,204,204,204,0,204,204,255,0,204,255,0,0,204,255,51,0,
    153,255,102,0,204,255,153,0,204,255,204,0,204,255,255,0,204,0,51,0,255,0,102,0,255,0,153,0,204,51,0,0,
    255,51,51,0,255,51,102,0,255,51,153,0,255,51,204,0,255,51,255,0,255,102,0,0,255,102,51,0,204,102,102,0,
    255,102,153,0,255,102,204,0,204,102,255,0,255,153,0,0,255,153,51,0,255,153,102,0,255,153,153,0,255,153,204,0,
    255,153,255,0,255,204,0,0,255,204,51,0,255,204,102,0,255,204,153,0,255,204,204,0,255,204,255,0,255,255,51,0,
    204,255,102,0,255,255,153,0,255,255,204,0,102,102,255,0,102,255,102,0,102,255,255,0,255,102,102,0,255,102,255,0,
    255,255,102,0,33,0,165,0,95,95,95,0,119,119,119,0,134,134,134,0,150,150,150,0,203,203,203,0,178,178,178,0,
    215,215,215,0,221,221,221,0,227,227,227,0,234,234,234,0,241,241,241,0,248,248,248,0,240,251,255,0,164,160,160,0,
    128,128,128,0,0,0,255,0,0,255,0,0,0,255,255,0,255,0,0,0,255,0,255,0,255,255,0,0,255,255,255,0,
#endif
#if 0
    0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00,
    0x80, 0x00, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0xc0, 0xc0, 0xc0, 0x00, 0xc0, 0xdc, 0xc0, 0x00, 0xa6, 0xca, 0xf0, 0x00,
    0x00, 0x00, 0x33, 0x00, 0x33, 0x00, 0x00, 0x00, 0x33, 0x00, 0x33, 0x00, 0x00, 0x33, 0x33, 0x00, 0x16, 0x16, 0x16, 0x00,
    0x1c, 0x1c, 0x1c, 0x00, 0x22, 0x22, 0x22, 0x00, 0x29, 0x29, 0x29, 0x00, 0x55, 0x55, 0x55, 0x00, 0x4d, 0x4d, 0x4d, 0x00, 0x42, 0x42, 0x42, 0x00,
    0x39, 0x39, 0x39, 0x00, 0xff, 0x7c, 0x80, 0x00, 0xff, 0x50, 0x50, 0x00, 0xd6, 0x00, 0x93, 0x00, 0xcc, 0xec, 0xff, 0x00,
    0xef, 0xd6, 0xc6, 0x00, 0xe7, 0xe7, 0xd6, 0x00, 0xad, 0xa9, 0x90, 0x00, 0x33, 0xff, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00,
    0x99, 0x00, 0x00, 0x00, 0xcc, 0x00, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x33, 0x33, 0x00, 0x00, 0x66, 0x33, 0x00, 0x00, 0x99, 0x33, 0x00, 0x00,
    0xcc, 0x33, 0x00, 0x00, 0xff, 0x33, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x33, 0x66, 0x00, 0x00, 0x66, 0x66, 0x00, 0x00,
    0x99, 0x66, 0x00, 0x00, 0xcc, 0x66, 0x00, 0x00, 0xff, 0x66, 0x00, 0x00, 0x00, 0x99, 0x00, 0x00, 0x33, 0x99, 0x00, 0x00,
    0x66, 0x99, 0x00, 0x00, 0x99, 0x99, 0x00, 0x00, 0xcc, 0x99, 0x00, 0x00, 0xff, 0x99, 0x00, 0x00, 0x00, 0xcc, 0x00, 0x00, 0x33, 0xcc, 0x00, 0x00,
    0x66, 0xcc, 0x00, 0x00, 0x99, 0xcc, 0x00, 0x00, 0xcc, 0xcc, 0x00, 0x00, 0xff, 0xcc, 0x00, 0x00, 0x66, 0xff, 0x00, 0x00,
    0x99, 0xff, 0x00, 0x00, 0xcc, 0xff, 0x00, 0x00, 0x00, 0xff, 0x33, 0x00, 0x33, 0x00, 0xff, 0x00, 0x66, 0x00, 0x33, 0x00,
    0x99, 0x00, 0x33, 0x00, 0xcc, 0x00, 0x33, 0x00, 0xff, 0x00, 0x33, 0x00, 0x00, 0x33, 0xff, 0x00, 0x33, 0x33, 0x33, 0x00, 0x66, 0x33, 0x33, 0x00,
    0x99, 0x33, 0x33, 0x00, 0xcc, 0x33, 0x33, 0x00, 0xff, 0x33, 0x33, 0x00, 0x00, 0x66, 0x33, 0x00, 0x33, 0x66, 0x33, 0x00,
    0x66, 0x66, 0x33, 0x00, 0x99, 0x66, 0x33, 0x00, 0xcc, 0x66, 0x33, 0x00, 0xff, 0x66, 0x33, 0x00, 0x00, 0x99, 0x33, 0x00,
    0x33, 0x99, 0x33, 0x00, 0x66, 0x99, 0x33, 0x00, 0x99, 0x99, 0x33, 0x00, 0xcc, 0x99, 0x33, 0x00, 0xff, 0x99, 0x33, 0x00, 0x00, 0xcc, 0x33, 0x00,
    0x33, 0xcc, 0x33, 0x00, 0x66, 0xcc, 0x33, 0x00, 0x99, 0xcc, 0x33, 0x00, 0xcc, 0xcc, 0x33, 0x00, 0xff, 0xcc, 0x33, 0x00,
    0x33, 0xff, 0x33, 0x00, 0x66, 0xff, 0x33, 0x00, 0x99, 0xff, 0x33, 0x00, 0xcc, 0xff, 0x33, 0x00, 0xff, 0xff, 0x33, 0x00,
    0x00, 0x00, 0x66, 0x00, 0x33, 0x00, 0x66, 0x00, 0x66, 0x00, 0x66, 0x00, 0x99, 0x00, 0x66, 0x00, 0xcc, 0x00, 0x66, 0x00, 0xff, 0x00, 0x66, 0x00,
    0x00, 0x33, 0x66, 0x00, 0x33, 0x33, 0x66, 0x00, 0x66, 0x33, 0x66, 0x00, 0x99, 0x33, 0x66, 0x00, 0xcc, 0x33, 0x66, 0x00,
    0xff, 0x33, 0x66, 0x00, 0x00, 0x66, 0x66, 0x00, 0x33, 0x66, 0x66, 0x00, 0x66, 0x66, 0x66, 0x00, 0x99, 0x66, 0x66, 0x00,
    0xcc, 0x66, 0x66, 0x00, 0x00, 0x99, 0x66, 0x00, 0x33, 0x99, 0x66, 0x00, 0x66, 0x99, 0x66, 0x00, 0x99, 0x99, 0x66, 0x00, 0xcc, 0x99, 0x66, 0x00,
    0xff, 0x99, 0x66, 0x00, 0x00, 0xcc, 0x66, 0x00, 0x33, 0xcc, 0x66, 0x00, 0x99, 0xcc, 0x66, 0x00, 0xcc, 0xcc, 0x66, 0x00,
    0xff, 0xcc, 0x66, 0x00, 0x00, 0xff, 0x66, 0x00, 0x33, 0xff, 0x66, 0x00, 0x99, 0xff, 0x66, 0x00, 0xcc, 0xff, 0x66, 0x00,
    0xff, 0x00, 0xcc, 0x00, 0xcc, 0x00, 0xff, 0x00, 0x00, 0x99, 0x99, 0x00, 0x99, 0x33, 0x99, 0x00, 0x99, 0x00, 0x99, 0x00, 0xcc, 0x00, 0x99, 0x00,
    0x00, 0x00, 0x99, 0x00, 0x33, 0x33, 0x99, 0x00, 0x66, 0x00, 0x99, 0x00, 0xcc, 0x33, 0x99, 0x00, 0xff, 0x00, 0x99, 0x00,
    0x00, 0x66, 0x99, 0x00, 0x33, 0x66, 0x99, 0x00, 0x66, 0x33, 0x99, 0x00, 0x99, 0x66, 0x99, 0x00, 0xcc, 0x66, 0x99, 0x00,
    0xff, 0x33, 0x99, 0x00, 0x33, 0x99, 0x99, 0x00, 0x66, 0x99, 0x99, 0x00, 0x99, 0x99, 0x99, 0x00, 0xcc, 0x99, 0x99, 0x00, 0xff, 0x99, 0x99, 0x00,
    0x00, 0xcc, 0x99, 0x00, 0x33, 0xcc, 0x99, 0x00, 0x66, 0xcc, 0x66, 0x00, 0x99, 0xcc, 0x99, 0x00, 0xcc, 0xcc, 0x99, 0x00,
    0xff, 0xcc, 0x99, 0x00, 0x00, 0xff, 0x99, 0x00, 0x33, 0xff, 0x99, 0x00, 0x66, 0xcc, 0x99, 0x00, 0x99, 0xff, 0x99, 0x00,
    0xcc, 0xff, 0x99, 0x00, 0xff, 0xff, 0x99, 0x00, 0x00, 0x00, 0xcc, 0x00, 0x33, 0x00, 0x99, 0x00, 0x66, 0x00, 0xcc, 0x00, 0x99, 0x00, 0xcc, 0x00,
    0xcc, 0x00, 0xcc, 0x00, 0x00, 0x33, 0x99, 0x00, 0x33, 0x33, 0xcc, 0x00, 0x66, 0x33, 0xcc, 0x00, 0x99, 0x33, 0xcc, 0x00,
    0xcc, 0x33, 0xcc, 0x00, 0xff, 0x33, 0xcc, 0x00, 0x00, 0x66, 0xcc, 0x00, 0x33, 0x66, 0xcc, 0x00, 0x66, 0x66, 0x99, 0x00,
    0x99, 0x66, 0xcc, 0x00, 0xcc, 0x66, 0xcc, 0x00, 0xff, 0x66, 0x99, 0x00, 0x00, 0x99, 0xcc, 0x00, 0x33, 0x99, 0xcc, 0x00, 0x66, 0x99, 0xcc, 0x00,
    0x99, 0x99, 0xcc, 0x00, 0xcc, 0x99, 0xcc, 0x00, 0xff, 0x99, 0xcc, 0x00, 0x00, 0xcc, 0xcc, 0x00, 0x33, 0xcc, 0xcc, 0x00,
    0x66, 0xcc, 0xcc, 0x00, 0x99, 0xcc, 0xcc, 0x00, 0xcc, 0xcc, 0xcc, 0x00, 0xff, 0xcc, 0xcc, 0x00, 0x00, 0xff, 0xcc, 0x00,
    0x33, 0xff, 0xcc, 0x00, 0x66, 0xff, 0x99, 0x00, 0x99, 0xff, 0xcc, 0x00, 0xcc, 0xff, 0xcc, 0x00, 0xff, 0xff, 0xcc, 0x00, 0x33, 0x00, 0xcc, 0x00,
    0x66, 0x00, 0xff, 0x00, 0x99, 0x00, 0xff, 0x00, 0x00, 0x33, 0xcc, 0x00, 0x33, 0x33, 0xff, 0x00, 0x66, 0x33, 0xff, 0x00,
    0x99, 0x33, 0xff, 0x00, 0xcc, 0x33, 0xff, 0x00, 0xff, 0x33, 0xff, 0x00, 0x00, 0x66, 0xff, 0x00, 0x33, 0x66, 0xff, 0x00,
    0x66, 0x66, 0xcc, 0x00, 0x99, 0x66, 0xff, 0x00, 0xcc, 0x66, 0xff, 0x00, 0xff, 0x66, 0xcc, 0x00, 0x00, 0x99, 0xff, 0x00, 0x33, 0x99, 0xff, 0x00,
    0x66, 0x99, 0xff, 0x00, 0x99, 0x99, 0xff, 0x00, 0xcc, 0x99, 0xff, 0x00, 0xff, 0x99, 0xff, 0x00, 0x00, 0xcc, 0xff, 0x00,
    0x33, 0xcc, 0xff, 0x00, 0x66, 0xcc, 0xff, 0x00, 0x99, 0xcc, 0xff, 0x00, 0xcc, 0xcc, 0xff, 0x00, 0xff, 0xcc, 0xff, 0x00,
    0x33, 0xff, 0xff, 0x00, 0x66, 0xff, 0xcc, 0x00, 0x99, 0xff, 0xff, 0x00, 0xcc, 0xff, 0xff, 0x00, 0xff, 0x66, 0x66, 0x00, 0x66, 0xff, 0x66, 0x00,
    0xff, 0xff, 0x66, 0x00, 0x66, 0x66, 0xff, 0x00, 0xff, 0x66, 0xff, 0x00, 0x66, 0xff, 0xff, 0x00, 0xa5, 0x00, 0x21, 0x00,
    0x5f, 0x5f, 0x5f, 0x00, 0x77, 0x77, 0x77, 0x00, 0x86, 0x86, 0x86, 0x00, 0x96, 0x96, 0x96, 0x00, 0xcb, 0xcb, 0xcb, 0x00,
    0xb2, 0xb2, 0xb2, 0x00, 0xd7, 0xd7, 0xd7, 0x00, 0xdd, 0xdd, 0xdd, 0x00, 0xe3, 0xe3, 0xe3, 0x00, 0xea, 0xea, 0xea, 0x00, 0xf1, 0xf1, 0xf1, 0x00,
    0xf8, 0xf8, 0xf8, 0x00, 0xff, 0xfb, 0xf0, 0x00, 0xa0, 0xa0, 0xa4, 0x00, 0x80, 0x80, 0x80, 0x00, 0xff, 0x00, 0x00, 0x00,
    0x00, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xff, 0xff, 0xff, 0x00

#endif
};


uint8_t SpiOsdWinRegs[10 * 0x10];



extern uint8_t gucSpiFlash4ByteMode;
extern uint8_t SPICMD_x_READ;
extern uint8_t SPICMD_x_BYTES;


void SpiOsdEnable( uint8_t en )
{
    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    if(en)
    {
        TW8836_Write(REG400, TW8836_Read(REG400) | 0x04);
    }
    else
    {
        TW8836_Write(REG400, TW8836_Read(REG400) & 0xFB);
    }
}


void SpiOsdSetDeValue( void )
{
    uint16_t temp = 0;
    uint8_t  HDE  = 0, PCLK0 = 0;

    TW8836_WritePage(TW8836_PAGE2_SCALER);

    HDE   = TW8836_Read(REG210);
    PCLK0 = TW8836_Read(REG20D) & 0x03;

    temp  = HDE + PCLK0 - 18;

    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
    TW8836_Write(REG40E, (uint8_t)(temp >> 0x08));
    TW8836_Write(REG40F, (uint8_t)(temp >> 0x00));
}


void SpiOsdWinEnable( uint8_t winno, uint8_t en )
{
    uint8_t *dat = gtSpiOsd.reg[winno];

    if(en) *dat |= 0x01;
    else   *dat &= 0xFE;
}


void SpiOsdAlphaBlending( uint8_t winno, uint8_t en, uint8_t mode, uint8_t alpha )
{
    uint8_t *dat = gtSpiOsd.reg[winno];

    if(en)   *dat |= 0x10;
    else     *dat &= 0xEF;

    if(mode) *dat |= 0x20;  /*Per Pixel Alpha*/
    else     *dat &= 0xDF;  /*Global Window 1 Alpha*/

    dat += SPIOSD_WIN_ALPHA;

    if(winno == 0) dat += 4;

    *dat = alpha;
}


void SpiOsdSetBitsPixel( uint8_t winno, uint8_t bpp )
{
    uint8_t *dat = gtSpiOsd.reg[winno];
    uint8_t mode = 0;

    if(bpp == 4)      mode = 0;
    else if(bpp == 6) mode = 1;
    else              mode = 2;

    *dat &= 0x3F;
    *dat |= (mode << 6);
}


void SpiOsdLutOffset( uint8_t winno,  uint8_t lut_offset )
{
    uint8_t *dat = gtSpiOsd.reg[winno];

    dat += SPIOSD_WIN_LUT_PTR;

    if(winno == 0) dat += 4;

    *dat = lut_offset >> 4;
}


void SpiOsdBuffWidth( uint8_t winno, uint16_t w, uint16_t h )
{
    uint8_t *dat = gtSpiOsd.reg[winno];

    uint8_t temp = 0;

    dat += SPIOSD_WIN_DISPSIZE;

    if(winno)
    {
        temp = *dat & 0xC0;
        *dat++ = (uint8_t)(w >> 8 | temp);
        *dat++ = (uint8_t)(w);
    }
    else
    {
        temp   = (uint8_t)(h >> 8);
        temp <<= 4;
        temp  |= (uint8_t)(w >> 8);

        *dat++ = temp;
        *dat++ = (uint8_t)w;
        *dat++ = (uint8_t)h;
    }
}


void SpiOsdSpiStartAddress( uint8_t winno, uint32_t address )
{
    uint8_t *dat = gtSpiOsd.reg[winno];

    dat += SPIOSD_WIN_BUFFERSTART;

    *dat++ = (uint8_t)(address >> 20);
    *dat++ = (uint8_t)(address >> 12);
    *dat   = (uint8_t)(address >> 4 );

    if(winno == 0) dat += 0x0E;
    else           dat += 0x06;

    *dat   = (uint8_t)(address & 0x0F);
}


void SpiOsdWindowPosAndSize( uint8_t winno, uint16_t start_h, uint16_t start_v, uint16_t len_h, uint16_t len_v )
{
    uint8_t *dat = gtSpiOsd.reg[winno];

    uint8_t temp = 0;

    dat += SPIOSD_WIN_WINDOW;

    temp   = (start_v >> 8);
    temp <<= 4;
    temp  |= (start_h >> 8);

    *dat++ = temp;
    *dat++ = (uint8_t)start_h;
    *dat++ = (uint8_t)start_v;

    temp   = (len_v >> 8);
    temp <<= 4;
    temp  |= (len_h >> 8);

    *dat++ = temp;
    *dat++ = (uint8_t)len_h;
    *dat++ = (uint8_t)len_v;
}


void SpiOsdZoom( uint8_t winno, uint8_t en )
{
    uint8_t *dat = gtSpiOsd.reg[winno];

    if(en) *dat |= 0x02;
    else   *dat &= 0xFD;
}


void SpiOsdFillColor( uint8_t winno, uint8_t en, uint8_t fill_color )
{
    uint8_t *dat = gtSpiOsd.reg[winno];

    if(en) *dat |= 0x04;
    else   *dat &= 0xFB;

    dat += SPIOSD_WIN_FILLCOLOR;

    *dat = fill_color;
}


void SpiOsdSetLut( uint8_t winno, uint8_t type, uint16_t lut_offset, uint16_t size, uint32_t addr, uint8_t alpha )
{
    SPIOSD_LUT *lut = &gtSpiOsd.lut[winno];

    lut->type   = 0x80 | type;
    lut->offset = lut_offset;
    lut->size   = size;
    lut->addr   = addr;
    lut->alpha  = alpha;
}


void SpiOsdSetRlc( uint8_t winno, uint8_t bpp, uint8_t counter )
{
    SPIOSD_RLC *rlc;

    if(winno == 0)
    {
        return;
    }

    if((winno == 1) || (winno == 2))
    {
        rlc = &gtSpiOsd.rlc[1]; /*Group B*/
    }
    else
    {
        rlc = &gtSpiOsd.rlc[0]; /*Group A*/
    }

    rlc->winno   = winno;
    rlc->bpp     = bpp;
    rlc->counter = counter;
}


void SpiOsdInit( void )
{
    uint8_t winno = 0, offset = 0;

    for(winno = 0; winno < 9; winno++)
    {
        if(winno) offset = winno + 0x01;
        else      offset = 0x00;

        gtSpiOsd.reg[winno] = &SpiOsdWinRegs[offset << 0x04];
    }

    SpiOsdClrLut();
    SpiOsdClrReg();
    SpiOsdClrRlc();

    SpiOsdUpdateReg(0, 8);
    SpiOsdUpdateRlc();
}


void SpiOsdClrReg( void )
{
    uint8_t i = 0;

    for(i = 0; i < 10 * 0x10; i++)
    {
        SpiOsdWinRegs[i] = 0x00;
    }
}


void SpiOsdClrLut( void )
{
    uint8_t winno = 0;

    SPIOSD_LUT *lut;

    for(winno = 0; winno < 9; winno++)
    {
        lut = &gtSpiOsd.lut[winno];

        lut->type   = 0;
        lut->offset = 0;
        lut->size   = 0;
        lut->addr   = 0;
        lut->alpha  = 0xFF;
    }
}


void SpiOsdClrRlc( void )
{
    uint8_t i = 0;

    SPIOSD_RLC *rlc;

    for(i = 0; i < 2; i++)
    {
        rlc = &gtSpiOsd.rlc[i];

        rlc->winno   = 0;
        rlc->bpp     = 0;
        rlc->counter = 0;
    }
}

void SpiOsdClrRlc_updateReg( void )
{
    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
    TW8836_Write(0x04,0);
    TW8836_Write(0x06,0);

}



void SpiOsdUpdateReg( uint8_t begin_winno, uint8_t end_winno )
{
    uint8_t i = 0, winno = 0, reg = 0;

    uint8_t *dat;

    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    for(winno = begin_winno; winno <= end_winno; winno++)
    {
        dat = gtSpiOsd.reg[winno];
        reg = SpiOsdWinBase[winno];

        //WriteTW88(dat+0x04, 0);
        //WriteTW88(dat+0x05, 0);

        if(Sys.Main_Source==SRC_NAVI)
        {
            for(i = 0x0e; i >0; i--)   TW8836_Write(reg+i-1, dat[i-1]);
        }
        else
        {
            for(i = 0; i < 0x10; i++)   TW8836_Write(reg+i, dat[i]);
        }

        if(winno == 0)
        {
            for( ; i < 0x17; i++)   TW8836_Write(reg+i, dat[i]);
        }
    }
}


void SpiOsdUpdateReg_update_win( uint8_t begin_winno, uint8_t end_winno )
{
    uint8_t i = 0, winno = 0, reg = 0;

    uint8_t *dat;

    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    for(winno = begin_winno; winno <= end_winno; winno++)
    {
        dat = gtSpiOsd.reg[winno];
        reg = SpiOsdWinBase[winno];

        for(i = 0x07; i < 0x0a; i++)   TW8836_Write(reg+i, dat[i]);

        if(winno == 0)
        {
            //     for( ; i < 0x17; i++)   TW8836_Write(reg+i, dat[i]);
        }
    }
}


void SpiOsdUpdateLut( uint8_t winno, uint8_t alpha )
{
    uint8_t i;
    uint16_t k;
    uint8_t bTemp;
    SPIOSD_LUT *lut;
    lut  = &gtSpiOsd.lut[winno];
#ifdef DEBUG_OSD
    dPrintf("\n\rSpiOsdIoLoadLUT%s win:%bd, LutLoc:%d size:%d 0x%06lx", type ? "S":" ", _winno, LutOffset, size, spiaddr);
#endif

//#if defined(TW8836_CHIPDEBUG)
//#else
//	McuSpiClkToPclk(PLLCLK_DIV_3P0);	//BKFYI.DIV_2P0 is better.
//#endif

    TW8836_WritePage(TW8836_PAGE4_SPI_OSD );

    //--- SPI-OSD config
    bTemp = SOSD_LUT_WEN;
    bTemp |= SOSD_LUT_INC_COLM;
    if(winno==1 || winno==2)	bTemp |= SOSD_LUT_BGRP;
    else if(lut->offset >> 8)		bTemp |= SOSD_LUT_HIGH256;


    WriteTW88(REG410, bTemp);
    WriteTW88(REG411, (uint8_t)lut->offset);		//reset address ptr.

    if(1)
    {
        for(i=0; i < (lut->size / 64); i++ )  		//min size is a 64(16*4)
        {
            SpiFlashReadRLE2Header(SPI_Buffer,lut->addr + i*64,64);
            for(k=0; k < 64; k++)
                WriteTW88(REG412, SPI_Buffer[k]);		//write data
        }
    }
    else
    {
        for(k=0; k < (256*4); k++)
            WriteTW88(REG412, bmp_LUT[k]);		//write data
    }
    //pixel alpha
    if(alpha!=0xFF)
    {
        lut->offset += alpha;

        bTemp = SOSD_LUT_WEN | SOSD_LUT_INC_NO | SOSD_LUT_ATTR ;
        if(winno==1 || winno==2)	bTemp |= SOSD_LUT_BGRP;
        else if(lut->offset >> 8)		bTemp |= SOSD_LUT_HIGH256;

        WriteTW88(REG410, bTemp);
        WriteTW88(REG411, (uint8_t)lut->offset );
        WriteTW88(REG412, 0x7F );
    }


#if defined(TW8836_CHIPDEBUG)
#else
//	McuSpiClkRestore();
#endif
}
#if 0
{
    SPIOSD_LUT *lut;

    uint8_t  ucType = 0;

    uint8_t  ucTemp = 0;
    uint16_t uiTemp = 0;
    uint32_t ulTemp = 0;


    lut  = &gtSpiOsd.lut[winno];

    ucType = lut->type;

    if((ucType & 0x80) == 0x00) return;

    ucType &= SPIOSD_LUT_MASK;

    if(ucType == SPIOSD_LUT_ADDR) return;


    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    ucTemp = SPIOSD_LUT_WEN;

    if(ucType == SPIOSD_LUT_ADDR) ucTemp |= SPIOSD_LUT_INC_ADDR;
    else                          ucTemp |= SPIOSD_LUT_INC_BYTE;

    if((winno == 1) || (winno == 2))
    {
        ucTemp |= SPIOSD_LUT_SEL;
    }
    else
    {
        if(lut->offset & 0x0F00)
        {
            ucTemp |= SPIOSD_LUT_ADDR_H;
        }
    }


    /*8-BIT SPIOSD Look Up Table Access Control*/
    TW8836_Write(REG410, ucTemp);

    /*8-BIT SPIOSD Look Up Table Address*/
    TW8836_Write(REG411, (uint8_t)(lut->offset));

    /*Flash Busy Control : No Busy Check & Read Mode*/
    TW8836_Write(REG4C4, 0x00);

    /*DMA Control Register*/
    SpiFlashDmaControl(DMA_RW_DEST_SOSD_LUT, DMA_RW_MODE_INCREASE, SPICMD_x_BYTES + gucSpiFlash4ByteMode);


    /*DMA Page & Index Register*/
    uiTemp = lut->offset;

    if(ucType == SPIOSD_LUT_ADDR)
    {
        TW8836_Write(REG4C6, (uint8_t)(uiTemp >> 8));
        TW8836_Write(REG4C7, (uint8_t)(uiTemp));
    }
    else
    {
        TW8836_Write(REG4C6, (uint8_t)(uiTemp >> 6));
        TW8836_Write(REG4C7, (uint8_t)(uiTemp << 2));
    }


    /*DMA Length High , MID, Low Byte*/
    uiTemp = lut->size;

    TW8836_Write(REG4DA, 0x00);
    TW8836_Write(REG4C8, (uint8_t)(uiTemp >> 8));
    TW8836_Write(REG4C9, (uint8_t)(uiTemp));


    /*DMA Command Buffer*/
    ulTemp = lut->addr;

    TW8836_Write(REG4CA, SPICMD_x_READ);

    if(gucSpiFlash4ByteMode)
    {
        TW8836_Write(REG4CB, (uint8_t)(ulTemp >> 24));
        TW8836_Write(REG4CC, (uint8_t)(ulTemp >> 16));
        TW8836_Write(REG4CD, (uint8_t)(ulTemp >> 8));
        TW8836_Write(REG4CE, (uint8_t)(ulTemp));
    }
    else
    {
        TW8836_Write(REG4CB, (uint8_t)(ulTemp >> 16));
        TW8836_Write(REG4CC, (uint8_t)(ulTemp >> 8));
        TW8836_Write(REG4CD, (uint8_t)(ulTemp));
    }


    /*DMA Start*/
    TW8836_Write(REG4C4, 0x01);


    if(alpha)
    {
        ucTemp = lut->alpha;

        if(ucTemp != 0xFF)
        {
            uiTemp += ucTemp;

            ucTemp = SPIOSD_LUT_WEN | SPIOSD_LUT_BYT;

            if((winno == 1) || (winno == 2))
            {
                ucTemp |= SPIOSD_LUT_SEL;
            }
            else
            {
                if(uiTemp >> 8)
                {
                    ucTemp |= SPIOSD_LUT_ADDR_H;
                }
            }

            TW8836_Write(REG410, ucTemp);
            TW8836_Write(REG411, (uint8_t)uiTemp);
            TW8836_Write(REG412, 0x7F);
        }
    }
}
#endif

void SpiOsdUpdateRlc( void )
{
    uint8_t i = 0, temp = 0;

    SPIOSD_RLC *rlc;

    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    for(i = 0; i < 2; i++)
    {
        rlc = &gtSpiOsd.rlc[i];

        TW8836_Write(REG404 + i * 2, rlc->winno << 0x04);

        temp = rlc->bpp;

        if(temp == 7) temp++;

        temp <<= 0x04;

        temp |= (rlc->counter & 0x0F);

        TW8836_Write(REG405 + i * 2, temp);
    }
}

void SpiOsdUpdateRlc_user( uint8_t winno )
{
    uint8_t i = 0, temp = 0;

    SPIOSD_RLC *rlc;

    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    //for(i = 0; i < 2; i++)
    if((winno==1)||(winno==2))
        i=1;

    {
        rlc = &gtSpiOsd.rlc[i];

        TW8836_Write(REG404 + i * 2, rlc->winno << 0x04);

        temp = rlc->bpp;

        if(temp == 7) temp++;

        temp <<= 0x04;

        temp |= (rlc->counter & 0x0F);

        TW8836_Write(REG405 + i * 2, temp);
    }
}


/*================================
fun:transparent some color
by Miller.Tao20150912


=================================*/

void SpiOsdSetGlobalAlpha( uint8_t winno, uint8_t alpha )
{
    uint8_t  *data_p;

    data_p = gtSpiOsd.reg[winno];

    *data_p &= 0xCF;
    if(alpha) *data_p |= 0x10;

    data_p += SPIOSD_WIN_ALPHA;
    if(!winno)	data_p += 4;
    *data_p = alpha;
}

void SpiOsdSetPixelAlpha( uint8_t winno, uint8_t alpha )
{
    uint8_t  *data_p;

    data_p = gtSpiOsd.reg[winno];

    if(alpha)	*data_p |= 0x30;
    else		*data_p &= 0xCF;

    data_p += SPIOSD_WIN_ALPHA;//SPI_OSDWIN_ALPHA;
    if(!winno)	data_p += 4;
    *data_p = alpha;
}

void SpiOsdPixelAlphaAttr(uint32_t lutloc, uint8_t value)
{
    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    TW8836_Write(REG410, 0xC3);

    if(lutloc & 0x100)  TW8836_Write(REG410, TW8836_Read(REG410) | 0x08);
    else                TW8836_Write(REG410, TW8836_Read(REG410) & 0xF7);

    TW8836_Write(REG411, (uint8_t)lutloc);
    TW8836_Write(REG412, value);
}

void SpiOsdPixelAlphaAttr_user(uint8_t winno, uint16_t alpha, uint8_t value)
{
    uint8_t bTemp=0;
  //  SPIOSD_LUT *lut;
    //lut  = &gtSpiOsd.lut[winno];

    //if(alpha!=0xFF)
    {
        //lut->offset += alpha;

        bTemp = SOSD_LUT_WEN | SOSD_LUT_INC_NO | SOSD_LUT_ATTR ;
        if(winno==1 || winno==2)	
			bTemp |= SOSD_LUT_BGRP;
        else if(alpha >> 8)		
			bTemp |= SOSD_LUT_HIGH256;

        WriteTW88(REG410, bTemp);
        WriteTW88(REG411, (uint8_t)alpha );
        WriteTW88(REG412, value );
    }
}


void SpiOsdWinGlobalAlpha(uint8_t winno, uint8_t alpha)
{
    uint32_t index = SpiOsdWinBase[winno];

    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    TW8836_Write(index, TW8836_Read(index) & 0xCF);

    if(alpha) TW8836_Write(index, TW8836_Read(index) | 0x10);

    if(winno) index += 0x0C;
    else      index += 0x10;

    TW8836_Write(index, alpha);
}


void SpiOsdWinPixelAlpha(uint8_t winno, uint8_t alpha)
{
    uint32_t index = SpiOsdWinBase[winno];

    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);

    if(alpha) TW8836_Write(index, TW8836_Read(index) | 0x30);
    else      TW8836_Write(index, TW8836_Read(index) & 0xCF);

    if(winno) index += 0x0C;
    else      index += 0x10;

    TW8836_Write(index, alpha);
}


