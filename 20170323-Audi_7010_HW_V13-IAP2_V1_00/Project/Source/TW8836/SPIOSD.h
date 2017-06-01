#ifndef __SPIOSD_H__
#define __SPIOSD_H__


//#undef  EXTERN


#ifdef  __SPIOSD_C__
#define _SPIOSD_DEC_
#else
#define _SPIOSD_DEC_ extern
#endif


#include <stdio.h>
#include "stdint.h"
//#include "type.h"

//#include "gd32f1x0.h"
#include "TW8836.h"


typedef struct __SPIOSD_LUT_STRUCT__
{
    uint8_t  type;
    uint16_t offset;
    uint16_t size;
    uint32_t addr;
    uint8_t  alpha;
} SPIOSD_LUT;


typedef struct __SPIOSD_RLC_STRUCT__
{
    uint8_t winno;
    uint8_t bpp;
    uint8_t counter;
} SPIOSD_RLC;


typedef struct __SPIOSD_STRUCT__
{
    uint8_t    *reg[9];
    SPIOSD_LUT  lut[9];
    SPIOSD_RLC  rlc[2];
} SPIOSD;


#define SPIOSD_START        REG400
#define SPIOSD_WIN0_START   REG420
#define SPIOSD_WIN1_START   REG440
#define SPIOSD_WIN2_START   REG450
#define SPIOSD_WIN3_START   REG460
#define SPIOSD_WIN4_START   REG470
#define SPIOSD_WIN5_START   REG480
#define SPIOSD_WIN6_START   REG490
#define SPIOSD_WIN7_START   REG4A0
#define SPIOSD_WIN8_START   REG4B0


#define SPIOSD_LUT_BYTE     0x01
#define SPIOSD_LUT_ADDR     0x00
#define SPIOSD_LUT_MASK     0x01


#define SPIOSD_LUT_WEN              0x80    /*Enable Look up table write access*/
#define SPIOSD_LUT_INC_ADDR         0x40    /*Address pointer inc. by 1 after each LUT data port write*/
#define SPIOSD_LUT_INC_BYTE         0x20    /*Byte    pointer inc. by 1 after each LUT data port write*/
#define SPIOSD_LUT_ADDR_H           0x08    /*MSB of the address pointer to one of the 512 entries of the LUT*/
#define SPIOSD_LUT_SEL              0x04    /*0:Select 512*8 LUT, 1:Select 256*8 LUT*/
#define SPIOSD_LUT_BYT              0x03    /*Byte pointer for the LUT access*/


#define SPIOSD_WIN_ENABLE           0x00
#define SPIOSD_WIN_WINDOW           0x01
#define SPIOSD_WIN_BUFFERSTART      0x07
#define SPIOSD_WIN_BUFFERSTART_BIT  0x0A
#define SPIOSD_WIN_DISPSIZE         0x0A
#define SPIOSD_WIN_DISPOFFSET       0x0D    /*Only Win0*/
#define SPIOSD_WIN_ALPHA            0x0C
#define SPIOSD_WIN_LUT_PTR          0x0D
#define SPIOSD_WIN_FILLCOLOR        0x0E
#define SPIOSD_WIN_ANIMATION        0x12    /*Only Win0*/

#define LUTTYPE_BYTE	1	//LUTS
#define LUTTYPE_ADDR	0
#define LUTTYPE_MASK	0x01

//REG410 SOSD_LUT control
#define SOSD_LUT_WEN		0x80
#define SOSD_LUT_INC_ADDR	0x40
#define SOSD_LUT_INC_COLM	0x20
#define SOSD_LUT_INC_NO		0x00
#define SOSD_LUT_HIGH256	0x08
#define SOSD_LUT_BGRP		0x04
#define SOSD_LUT_ATTR		0x03

_SPIOSD_DEC_ uint8_t SPI_Buffer[128];
_SPIOSD_DEC_ SPIOSD  gtSpiOsd;


_SPIOSD_DEC_ void SpiOsdEnable( uint8_t en );
_SPIOSD_DEC_ void SpiOsdSetDeValue( void );
_SPIOSD_DEC_ void SpiOsdWinEnable( uint8_t winno, uint8_t en );
_SPIOSD_DEC_ void SpiOsdAlphaBlending( uint8_t winno, uint8_t en, uint8_t mode, uint8_t alpha );
_SPIOSD_DEC_ void SpiOsdSetBitsPixel( uint8_t winno, uint8_t bpp );
_SPIOSD_DEC_ void SpiOsdLutOffset( uint8_t winno,  uint8_t lut_offset );
_SPIOSD_DEC_ void SpiOsdBuffWidth( uint8_t winno, uint16_t w, uint16_t h );
_SPIOSD_DEC_ void SpiOsdSpiStartAddress( uint8_t winno, uint32_t address );
_SPIOSD_DEC_ void SpiOsdWindowPosAndSize( uint8_t winno, uint16_t start_h, uint16_t start_v, uint16_t len_h, uint16_t len_v );
_SPIOSD_DEC_ void SpiOsdZoom( uint8_t winno, uint8_t en );
_SPIOSD_DEC_ void SpiOsdFillColor( uint8_t winno, uint8_t en, uint8_t fill_color );
_SPIOSD_DEC_ void SpiOsdSetLut( uint8_t winno, uint8_t type, uint16_t lut_offset, uint16_t size, uint32_t addr, uint8_t alpha );
_SPIOSD_DEC_ void SpiOsdSetRlc( uint8_t winno, uint8_t bpp, uint8_t counter );
_SPIOSD_DEC_ void SpiOsdInit( void );
_SPIOSD_DEC_ void SpiOsdClrReg( void );
_SPIOSD_DEC_ void SpiOsdClrLut( void );
_SPIOSD_DEC_ void SpiOsdClrRlc( void );
_SPIOSD_DEC_ void SpiOsdUpdateReg( uint8_t begin_winno, uint8_t end_winno );
_SPIOSD_DEC_ void SpiOsdUpdateLut( uint8_t winno, uint8_t alpha );
_SPIOSD_DEC_ void SpiOsdUpdateRlc( void );
_SPIOSD_DEC_ void SpiOsdPixelAlphaAttr(uint32_t lutloc, uint8_t value);

_SPIOSD_DEC_ void SpiOsdWinGlobalAlpha(uint8_t winno, uint8_t alpha);
_SPIOSD_DEC_ void SpiOsdWinPixelAlpha(uint8_t winno, uint8_t alpha); 
_SPIOSD_DEC_ void SpiOsdSetGlobalAlpha( uint8_t winno, uint8_t alpha );
_SPIOSD_DEC_  void SpiOsdSetPixelAlpha( uint8_t winno, uint8_t alpha );
_SPIOSD_DEC_ void SpiOsdUpdateReg_update_win( uint8_t begin_winno, uint8_t end_winno );
_SPIOSD_DEC_ void SpiOsdUpdateRlc_user( uint8_t winno );
_SPIOSD_DEC_ void SpiFlashReadRLE2Header( uint8_t *dest_loc, uint32_t src_loc, uint16_t size );
_SPIOSD_DEC_ void SpiOsdClrRlc_updateReg( void );
_SPIOSD_DEC_ void SpiOsdPixelAlphaAttr_user(uint8_t winno, uint16_t alpha, uint8_t value);


#endif


