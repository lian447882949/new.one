#define __SPIFLASH_C__


//#include "kernel.h"
#include "SPIFlash.h"
#include "TW8836.h"
#include "type.h"


uint8_t gucSpiFlashVendor    = SPI_FLASH_VENDOR_UNKNOW;
uint8_t gucSpiFlash4ByteMode = 0x00;


uint8_t SPICMD_x_READ  = 0x00;
uint8_t SPICMD_x_BYTES = 0x00;
//uint8_t SpiFlash4ByteAddr;		//4Byte mode for big SPIFLASH
#define SpiFlash4ByteAddr gucSpiFlash4ByteMode

BYTE SPI_CmdBuffer[8];


void SpiFlashDmaControl( uint8_t ucDestination, uint8_t ucAccessMode, uint8_t ucCount )
{
    uint8_t ucREG4C3 = 0;

    ucREG4C3 = ((ucDestination << 6) & 0xC0) | ((ucAccessMode << 4) & 0x30) | (ucCount & 0x0F);

    TW8836_Write(REG4C3, ucREG4C3);
}

uint8_t SpiFlashBusyControl( uint8_t ucCommand )
{
    uint8_t temp = 0;

    switch(ucCommand)
    {
    case FLASH_CMD_PP       :
        temp = 0x02;
        break;
    case FLASH_CMD_READ     :
    case FLASH_CMD_FAST_READ:
    case FLASH_CMD_4READ    :
    case FLASH_CMD_WRSR     :
        temp = 0x04;
        break;
    case FLASH_CMD_SE       :
    case FLASH_CMD_BE       :
    case FLASH_CMD_BE_32K   :
    case FLASH_CMD_CE       :
        temp = 0x06;
        break;
    default:
        break;
    }

    return temp;
}



BYTE SpiFlashDmaStart(BYTE dma_option)
{
    BYTE i;
    volatile BYTE vdata;

    // DMA-start
    WriteTW88(REG4C4, 0x01 | dma_option);

    //wait a done flag
    //REG4C4[0] is a self clear flag register.
    for(i=0; i < 100; i++)
    {
        vdata = ReadTW88(REG4C4);
        if((vdata & 0x01)==0)
            break;
        Delay_1ms(2);
    }
    if(i==100)
    {
        //   Printf("\nSpiFlashDmaWait DMA Busy.");
        return 2;	//fail:busy
    }
    return 0;
}

//-----------------------------------------------------------------------------
/**
* assign a flash address
*
* To support 4BYTE address mode.
* extern: SpiFlash4ByteAddr.
*/
void SpiFlashSetAddress2Hw(DWORD addr)
{
    if(SpiFlash4ByteAddr)
    {
        WriteTW88(REG4CB, (BYTE)(addr >> 24));
        WriteTW88(REG4CC, (BYTE)(addr >> 16));
        WriteTW88(REG4CD, (BYTE)(addr >> 8));
        WriteTW88(REG4CE, (BYTE)(addr));
    }
    else
    {
        WriteTW88(REG4CB, (BYTE)(addr >> 16));
        WriteTW88(REG4CC, (BYTE)(addr >> 8));
        WriteTW88(REG4CD, (BYTE)(addr));
    }
}
BYTE SpiFlashSetAddress2CmdBuffer(DWORD spiaddr)
{
    if(SpiFlash4ByteAddr)
    {
        SPI_CmdBuffer[0] = spiaddr >> 24;
        SPI_CmdBuffer[1] = spiaddr >> 16;
        SPI_CmdBuffer[2] = spiaddr >> 8;
        SPI_CmdBuffer[3] = spiaddr;
        return 4;
    }
    else
    {
        SPI_CmdBuffer[0] = spiaddr >> 16;
        SPI_CmdBuffer[1] = spiaddr >> 8;
        SPI_CmdBuffer[2] = spiaddr;
        return 3;
    }
}



//-----------------------------------------------------------------------------
/**
* read SpiFlash
*
* @param dest_type
*	DMA_DEST_FONTRAM,DMA_DEST_CHIPREG,DMA_DEST_SOSD_LUT,DMA_DEST_MCU_XMEM
* @param dest_loc
*	destination location. WORD
* @param src_loc source location
* @param size	size
*/
void SpiFlashDmaRead(BYTE dest_type, WORD dest_loc, DWORD src_loc, WORD size)
{
    BYTE dma_option;

    TW8836_WritePage(PAGE4_SPI);
	TW8836_Write(REG4C0, (TW8836_Read(REG4C0) & 0xF8) | SPI_READ_MODE);
    WriteTW88(REG4C3, (dest_type << 6) | SPICMD_x_BYTES + SpiFlash4ByteAddr);
    WriteTW88(REG4C6, (BYTE)(dest_loc>>8));				//page
    WriteTW88(REG4C7, (BYTE)(dest_loc));				//index
    WriteTW88(REG4C8, (BYTE)(size >> 8) );				// data Buff count middle
    WriteTW88(REG4C9, (BYTE)size );						// data Buff count Lo
    WriteTW88(REG4CA, SPICMD_x_READ );
    SpiFlashSetAddress2Hw(src_loc);
    WriteTW88(REG4DA, (BYTE)(size >> 16) );				// data Buff count high

    //vblank wait
    //if(vblank)
    //	WaitVBlank(vblank);

    //dma option
    dma_option = 0x04;		//SPIDMA_BUSYCHECK

    // DMA-start
    SpiFlashDmaStart(dma_option);

}
void SpiFlashDmaRead2XMem(BYTE * dest_loc, DWORD src_loc, WORD size)
{
    WORD dest_w_loc = (WORD)dest_loc;
    BYTE dma_option;

    TW8836_WritePage(PAGE4_SPI);
    WriteTW88(REG4C3, (DMA_DEST_MCU_XMEM << 6) | SPICMD_x_BYTES + SpiFlash4ByteAddr);
    WriteTW88(REG4C6, (BYTE)(dest_w_loc>>8));			//page
    WriteTW88(REG4C7, (BYTE)(dest_w_loc));				//index
    WriteTW88(REG4C8, (BYTE)(size >> 8) );				// data Buff count middle
    WriteTW88(REG4C9, (BYTE)size );						// data Buff count Lo
    WriteTW88(REG4CA, SPICMD_x_READ );
    SpiFlashSetAddress2Hw(src_loc);
    WriteTW88(REG4DA, (BYTE)(size >> 16) );				// data Buff count high

    //vblank wait
    //if(vblank)
    //	WaitVBlank(vblank);

    //dma option
    dma_option = 0x04;		//SPIDMA_BUSYCHECK

    // DMA-start
    SpiFlashDmaStart(dma_option);
}



/*!
* wait REG4C4[0] done status.
*	This flag is cleared when HW executes SPI command.
*
* 	For WRSR,SE,BE,PP, it does not means the command is finished.
*	You have to assign SPI_CMD_OPT_BUSY(or _WRITE_BUSY), and executes SpiFlash_check_busy().
*	For more detail info, see SpiFlash_check_busy() function.
*
*	For the read family commands, it is cleared when HW finishes the DMA.
*	On the internal MCU, you do not need to wait, because, the code fetch routine is blocked.
*   So, you do not need a SpiFlash_wait_done() on the internal MCU.
*   But, on the external CPU that using I2C, CPU have to wait and check this flag.
*
*	When TW8836B HW executes the DMA, it also blocks the I2C host.
*	so, the external CPU also can use ReadI2C(0xFF); Page register.
*
* @param wait - count
* @param unit - 1ms delay unit
* @return 0:success 1:fail
*/
BYTE SpiFlash_wait_done(BYTE wait, BYTE unit)
{
    BYTE i;
    volatile BYTE vdata;

    for(i=0; i<wait; i++)
    {
        vdata = ReadTW88(REG4C4);
        if((vdata & 0x01)==0)
            break;
        Delay_1ms((WORD)unit);
    }
    if(i==wait)
    {
        //	Printf("DmaFail cmd:%02bx loop:%bd unit:%bd\n",
        //		ReadTW88(REG4DA), wait, unit);
        return 1;
    }
    return 0;
}

/*!
* execute DMA command
*
* REG4DA is for pBuff length high bytes.
* this function has 16bit size parameter,
*  and do not control REG4DA register.
* If you need a 3Bytes size, assign REG4DA, execute it, and then clear REG4DA.
*  see, SpiFlash_FastRead_Fixed_ChipReg().
*
* @param cmd
* @param target_cmd_len
*	[7:6} target,
*	[5:4] access mode,
*	[3:0] SPI_CmdBuffer[] length
* @param pBuff
* @param buff_len
* @param option
*	[2] busy check
*	[1]:write. related with pBuff.
*
* if you are using "busy check", execute
*	SpiFlash_wait_done();
*   SpiFlash_check_busy();
*
* if buff_len is 0, we don't need a pBuff.
*	for example: SpiFlash_DmaCmd(cmd, DMA_TARGET_CHIP, 0, 0....
*
* if ExtI2c, use REG4C1[0]=1, At Vertical Blank.
*/
void SpiFlash_DmaCmd(BYTE cmd, BYTE target_cmd_len, WORD pBuff, WORD buff_len, BYTE option)
{
    BYTE i;
    BYTE cmd_buff_len;
    BYTE r4e1;

    cmd_buff_len = target_cmd_len & 0x0F;
    if(cmd_buff_len > 4) 	//for FastRead dummy control.
        cmd_buff_len = 4;

    WriteTW88(REG4C3, target_cmd_len +1);		// target & cmd_len that includes cmd.
    WriteTW88(REG4C6, (BYTE)(pBuff>>8));		// pBuff high
    WriteTW88(REG4C7, (BYTE)pBuff);				// pBuff low
    WriteTW88(REG4C8, (BYTE)(buff_len>>8));		// data Buff count middle
    WriteTW88(REG4C9, (BYTE)buff_len);			// data Buff count Lo
    //--WriteTW88(REG4DA, 0);					// data Buff count high
    WriteTW88(REG4CA, cmd);
    for(i=0; i < cmd_buff_len; i++)				// cmd buffer.
        WriteTW88(REG4CB+i, SPI_CmdBuffer[i]);	// normally address.
#if 0 		//modify by Feng
    if(spiflash_chip->pllclk_dma)
    {
        //for SHSL issue on Micron. only related with an internal MCU.
        r4e1 = ReadTW88(REG4E1);
        if((r4e1 & 0x30) == 0x20)
        {
            WriteTW88(REG4E1, (r4e1 & 0xF0) | spiflash_chip->pllclk_dma);
            WriteTW88(REG4C4, 0x01 | option);
            WriteTW88(REG4E1, r4e1);
        }
        else
            WriteTW88(REG4C4, 0x01 | option);
    }
    else
        WriteTW88(REG4C4, 0x01 | option);
#else
    WriteTW88(REG4C4, 0x01 | option);
#endif
    return;
}

/*!
* @param spiaddr
* @param addr - target FontRam index location.
* @param len
*/
BYTE SpiFlash_Read_FOsd(DWORD spiaddr, WORD addr, WORD len)
{
    BYTE cmd_buff_len;
    BYTE ret;

    cmd_buff_len = SpiFlashSetAddress2CmdBuffer(spiaddr); /* it includes SpiFlash4ByteAddr */
    cmd_buff_len += SPICMD_x_BYTES;						  /* it includes the dummy cycle */
    cmd_buff_len -= 4;
    SpiFlash_DmaCmd(SPICMD_x_READ, DMA_TARGET_FOSD | cmd_buff_len, addr,len, DMA_OPT_NONE);
    ret = SpiFlash_wait_done(10,10);
    return ret;
}

uint8_t SpiFlashReadChipRegister( DMA_RW_CHIP_REGISTER *tDMARWChipRegister )
{
    uint8_t  i = 0, ucREG4C4 = 0;

    TW8836_WritePage(TW8836_PAGE4_SPI_MCU);

    SpiFlashDmaControl(DMA_RW_DEST_CHIPREG, DMA_RW_MODE_INCREASE, tDMARWChipRegister->w_size + 0x01);

    /*DMA Page & Index Register*/
    TW8836_Write(REG4C6, DMA_RW_BUFFER_REG_PAGE);
    TW8836_Write(REG4C7, DMA_RW_BUFFER_REG_INDEX);

    /*DMA Lenght HIGH , MID , LOW Byte Register*/
    TW8836_Write(REG4DA, 0x00);
    TW8836_Write(REG4C8, 0x00);
    TW8836_Write(REG4C9, tDMARWChipRegister->r_size);

    /*DMA Command Buffer Register*/
    TW8836_Write(REG4CA, tDMARWChipRegister->command);

    for(i = 0; i < tDMARWChipRegister->w_size; i++)
    {
        TW8836_Write(REG4CB + i, tDMARWChipRegister->parameter[i]);
    }

    ucREG4C4 |= SpiFlashBusyControl(tDMARWChipRegister->command);

    TW8836_Write(REG4C4, ucREG4C4 | 0x01);   /* Start command execution. Self cleared */

    while(TW8836_Read(REG4C4) & 0x01);

    /*DMA Read/Write Buffer Register*/
    for(i = 0; i < tDMARWChipRegister->r_size; i++)
    {
        tDMARWChipRegister->buffer[i] = TW8836_Read(REG4D0 + i);
    }

    return 0;
}


void SpiFlashReadRLE2Header( uint8_t *dest_loc, uint32_t src_loc, uint16_t size )
{
#if 0
	SpiFlashDmaRead(DMA_RW_DEST_CHIPREG,dest_loc,src_loc,size);
#else
    uint16_t i = 0, j = 0, rSize = 0;

    uint8_t *ptr;

    uint8_t ucREG4C1 = 0;

    ptr = (uint8_t *)dest_loc;

    TW8836_WritePage(TW8836_PAGE4_SPI_MCU);

    ucREG4C1 = TW8836_Read(REG4C1);

    /*DMA Start Mode : Immediately*/
    TW8836_Write(REG4C1, ucREG4C1 & 0xFE);

    SpiFlashDmaControl(DMA_RW_DEST_CHIPREG, DMA_RW_MODE_INCREASE, 0x05);

    /*DMA Page & Index Register*/
    TW8836_Write(REG4C6, DMA_RW_BUFFER_REG_PAGE);
    TW8836_Write(REG4C7, DMA_RW_BUFFER_REG_INDEX);

    /*DMA Command Buffer Register*/
    TW8836_Write(REG4CA, FLASH_CMD_FAST_READ);      /*SPI Command : Fast Read*/

    for(i = 0; i < size; i+=8)
    {
        /*DMA Command Buffer Register*/
        TW8836_Write(REG4CB, (uint8_t)((src_loc + i) >> 0x10));
        TW8836_Write(REG4CC, (uint8_t)((src_loc + i) >> 0x08));
        TW8836_Write(REG4CD, (uint8_t)((src_loc + i) >> 0x00));

        if(i+0x08 <= size) 
			rSize = 0x08;
        else               
			rSize = size - i;

        /*DMA Lenght HIGH , MID , LOW Byte Register*/
        TW8836_Write(REG4DA, 0x00);
        TW8836_Write(REG4C8, 0x00);
        TW8836_Write(REG4C9, rSize);

        /*SPI Flash Read Mode : Fast*/
        TW8836_Write(REG4C0, (TW8836_Read(REG4C0) & 0xF8) | 0x01);

        /*Flash Busy Control : Busy Check And DMA Start Read*/
        TW8836_Write(REG4C4, 0x05);

        /*Wait DMA Execution Finished*/
        while(TW8836_Read(REG4C4) & 0x01);
 
        /*SPI Flash Read Mode : QUAD-IO*/
        TW8836_Write(REG4C0, (TW8836_Read(REG4C0) & 0xF8) | 0x03);


        for(j = 0; j < rSize; j++)
        {
            /*DMA Read/Write Buffer Register*/
            *ptr++ = TW8836_Read(REG4D0 + j);
        }
    }

    /*Restore The Register Value*/
    TW8836_Write(REG4C1, ucREG4C1);
#endif	
}

uint8_t gManufacturerID=0, gMemoryType=0, gMemoryDensity=0;//miller.tao20150829 for test
uint8_t flasherr=0;
void SpiFlashInitQuad( void )
{
    uint8_t status = 0, value = 0;

    uint8_t ManufacturerID, MemoryType, MemoryDensity;

    DMA_RW_CHIP_REGISTER tDMARWChipRegister;

    tDMARWChipRegister.command = FLASH_CMD_RDID;
    tDMARWChipRegister.r_size  = 0x03;
    tDMARWChipRegister.w_size  = 0x00;

    status = SpiFlashReadChipRegister(&tDMARWChipRegister);

    if(status)
    {
        //printf("\r\nRead Flash's Identification Fail.");
        flasherr = 1;
    }

    ManufacturerID = tDMARWChipRegister.buffer[0];
    MemoryType     = tDMARWChipRegister.buffer[1];
    MemoryDensity  = tDMARWChipRegister.buffer[2];

    gManufacturerID= ManufacturerID;
    gMemoryType= MemoryType;
    gMemoryDensity =MemoryDensity;
    // printf("\r\nSPI Flash JEDEC ID : 0x%x, 0x%x, 0x%x", ManufacturerID, MemoryType, MemoryDensity);

    switch(ManufacturerID)
    {
    case 0x1C:
        gucSpiFlashVendor = SPI_FLASH_VENDOR_EON;

        if(MemoryType == 0x70 && MemoryDensity == 0x19)
        {
            gucSpiFlashVendor = SPI_FLASH_VENDOR_EON_256;
        }
        break;
    case 0xC2://millertao add 20150829
        gucSpiFlashVendor = SPI_FLASH_VENDOR_MX;
        break;
    default:
        //printf("\r\nUnknow SPI Flash.");
        break;
    }

    /*Read Status Register*/
    if(ManufacturerID == 0x1C || ManufacturerID == 0xC2)    /* EON:0x1C , MX:0xC2 */
    {
        tDMARWChipRegister.command = FLASH_CMD_RDSR;
        tDMARWChipRegister.r_size  = 0x01;
        tDMARWChipRegister.w_size  = 0x00;

        status = SpiFlashReadChipRegister(&tDMARWChipRegister);

        value  = tDMARWChipRegister.buffer[0];
    }

    //printf("\r\nSPI Flash Status Register Value : 0x%x", value);

    if(value) return;


    /* Enable Quad IO Mode */
    if(ManufacturerID == 0x1C || ManufacturerID == 0xC2)    /* EON:0x1C , MX:0xC2 */
    {
        tDMARWChipRegister.command = FLASH_CMD_WREN;
        tDMARWChipRegister.r_size  = 0x00;
        tDMARWChipRegister.w_size  = 0x00;

        SpiFlashReadChipRegister(&tDMARWChipRegister);


        tDMARWChipRegister.command = FLASH_CMD_WRSR;
        tDMARWChipRegister.r_size  = 0x00;
        tDMARWChipRegister.w_size  = 0x01;
        tDMARWChipRegister.parameter[0] = 0x40;

        SpiFlashReadChipRegister(&tDMARWChipRegister);


        tDMARWChipRegister.command = FLASH_CMD_WRDI;
        tDMARWChipRegister.r_size  = 0x00;
        tDMARWChipRegister.w_size  = 0x00;

        SpiFlashReadChipRegister(&tDMARWChipRegister);
    }

    //printf("\r\nSPI Flash Quad IO Mode Enable.");
}


void SpiFlashSetReadMode( uint8_t ucMode )
{
    TW8836_WritePage(TW8836_PAGE4_SPI_MCU);

    TW8836_Write(REG4C0, (TW8836_Read(REG4C0) & 0xF8) | ucMode);

    switch( ucMode )
    {
    case 0: //--- Slow
        //max speed is 50MHz.
        //but, normally, 54MHz is working.
        SPICMD_x_READ	= 0x03;
        SPICMD_x_BYTES	= 4;	//(8+24)/8
        break;
    case 1: //--- Fast
        SPICMD_x_READ	= 0x0b;
        SPICMD_x_BYTES	= 5;   //(8+24+8)/8. 8 dummy
        break;
    case 2: //--- Dual
        SPICMD_x_READ	= 0x3b;
        SPICMD_x_BYTES	= 5;
        break;
    case 3: //--- Quad
        SPICMD_x_READ	= 0x6b;
        SPICMD_x_BYTES	= 5;
        break;
    case 4: //--- Dual-IO
        SPICMD_x_READ	= 0xbb;
        SPICMD_x_BYTES	= 5;	//(8+12*2+4*2)/8. Note:*2 means 2 lines.
        break;
    case 5: //--- Quad-IO
        SPICMD_x_READ	= 0xeb;
        SPICMD_x_BYTES	= 7;   //(8+6*4+2*4+4*4)/8. Note:*4 means 4 lines.
        break;
    case 6: //--- DEdge. DTR(Double Transfer Rate)
        SPICMD_x_READ	= 0xed;
        SPICMD_x_BYTES	= 12;	//.
        break;
    default:
        //fast read mode can support Extender/Qual/Quad.
        SPICMD_x_READ	= 0x0b;
        SPICMD_x_BYTES	= 5;   //(8+24+8)/8. 8 dummy
        break;
    }

}


void SpiFlashSet4ByteMode( uint8_t ucMode )
{
    uint8_t ucCommand = 0;
    DMA_RW_CHIP_REGISTER tDMARWChipRegister;

    if(ucMode)
    {
        if(gucSpiFlash4ByteMode == 0)
        {
            gucSpiFlash4ByteMode = 1;
            ucCommand = FLASH_CMD_EN4B;
        }
    }
    else
    {
        if(gucSpiFlash4ByteMode == 1)
        {
            gucSpiFlash4ByteMode = 0;
            ucCommand = FLASH_CMD_EX4B;
        }
    }

    if(ucCommand)
    {
        tDMARWChipRegister.command = ucCommand;
        tDMARWChipRegister.r_size  = 0x00;
        tDMARWChipRegister.w_size  = 0x00;

        SpiFlashReadChipRegister(&tDMARWChipRegister);
    }
}


void SpiFlashInit( void )
{
    SpiFlashInitQuad();

    if(gucSpiFlashVendor == SPI_FLASH_VENDOR_EON_256)
    {
        SpiFlashSet4ByteMode(1);

        if(gucSpiFlash4ByteMode)
        {
            //printf("\r\nSPI Flash Enter 4-Byte Mode.");
        }
    }

    SpiFlashSetReadMode(SPI_READ_MODE);

    //printf("\r\nSPI Flash Init Finished.");
}


