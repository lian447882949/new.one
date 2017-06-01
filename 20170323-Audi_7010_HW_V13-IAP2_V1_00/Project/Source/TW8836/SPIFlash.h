#ifndef __SPIFLASH_H__
#define __SPIFLASH_H__


//#undef  EXTERN


#ifdef  __SPIFLASH_C__
#define _SPIFLASH_DEC_
#else
#define _SPIFLASH_DEC_ extern
#endif


#include <stdio.h>
#include "stdint.h"
//#include "type.h"

//#include "gd32f1x0.h"


typedef struct __DMA_RW_CHIP_REGISTER_STRUCT__
{
    uint8_t command;
    uint8_t parameter[8];
    uint8_t r_size;
    uint8_t w_size;
    uint8_t buffer[8];
} DMA_RW_CHIP_REGISTER;



/* SPI Flash Command */

#define FLASH_CMD_WREN              0x06    /* Write enable */
#define FLASH_CMD_WRDI              0x04    /* Write disable */
#define FLASH_CMD_RDID              0x9F    /* Read  identification */
#define FLASH_CMD_RDSR              0x05    /* Read  status register */
#define FLASH_CMD_WRSR              0x01    /* Write status register */
#define FLASH_CMD_EN4B              0xB7    /* Enter 4-byte mode */
#define FLASH_CMD_EX4B              0xE9    /* Exit  4-byte mode */
#define FLASH_CMD_READ              0x03    /* Read  data */

#define FLASH_CMD_FAST_READ         0x0B    /* Fast read data */
#define FLASH_CMD_2READ             0xBB    /* 2xIO read command */
#define FLASH_CMD_4READ             0xEB    /* 4xIO read command */
#define FLASH_CMD_4PP               0x38    /* Quad page program */
#define FLASH_CMD_SE                0x20    /* Sector erase */
#define FLASH_CMD_BE                0xD8    /* Block erase 64KB */
#define FLASH_CMD_BE_32K            0x52    /* Block erase 32KB */
#define FLASH_CMD_CE                0x60    /* Chip erase */

#define FLASH_CMD_PP                0x02    /* Page program */
#define FLASH_CMD_CP                0xAD    /* Continuously program mode */
#define FLASH_CMD_DP                0xB9    /* Deep power down */
#define FLASH_CMD_RDP               0xAB    /* Release from deep power down */
#define FLASH_CMD_RES               0xAB    /* Read electronic ID */
#define FLASH_CMD_REMS              0x90    /* Read electronic manufacturer & device ID */
#define FLASH_CMD_REMS2             0xEF    /* Read ID for 2xIO mode */
#define FLASH_CMD_REMS4             0xDF    /* Read ID for 4xIO mode */

#define FLASH_CMD_ENSO              0xB1    /* Enter secured OTP */
#define FLASH_CMD_EXSO              0xC1    /* Exit  secured OTP */
#define FLASH_CMD_RDSCUR            0x2B    /* Read  security register */
#define FLASH_CMD_WRSCUR            0x2F    /* Write secutiry register */
#define FLASH_CMD_ESRY              0x70    /* Enable  SO to output RY/BY */
#define FLASH_CMD_DSRY              0x80    /* Disable SO to output RY/BY */
#define FLASH_CMD_ENPLM             0x55    /* Enter parallel mode */
#define FLASH_CMD_EXPLM             0x45    /* Exit  parallel mode */

#define FLASH_CMD_CLSR              0x30    /* Clear SR fail flags */
#define FLASH_CMD_HPM               0xA3    /* High performance enable mode */
#define FLASH_CMD_WPSEL             0x68    /* Write protection selection */
#define FLASH_CMD_SBLK              0x36    /* Single block lock */
#define FLASH_CMD_SBULK             0x39    /* Single block unlock */
#define FLASH_CMD_RDBLOCK           0x3C    /* Block protect read */
#define FLASH_CMD_GBLK              0x7E    /* Gang block lock */
#define FLASH_CMD_GBULK             0x98    /* Gang block unlock */
#define FLASH_CMD_RDDMC             0x5A    /* Read DMC */


/* DMA Read/Write Destination */
#define DMA_RW_DEST_FONTRAM         0   /* Font RAM */
#define DMA_RW_DEST_CHIPREG         1   /* Chip Register */
#define DMA_RW_DEST_SOSD_LUT        2   /* SPIOSD LUT */
#define DMA_RW_DEST_MCU_XMEM        3   /* MCU XMEM */

#define DMA_DEST_FONTRAM			0
#define DMA_DEST_CHIPREG			1
#define DMA_DEST_SOSD_LUT			2
#define DMA_DEST_MCU_XMEM			3

/* DMA Read/Write Access Mode */
#define DMA_RW_MODE_INCREASE        0   /* Increase */
#define DMA_RW_MODE_DECREASE        1   /* Decrease */
#define DMA_RW_MODE_FIX             2   /* Fix */
#define DMA_RW_MODE_RESERVED        3   /* Reserved */

/* SPI DMA/CMD Mode */
#define SPI_DMA_CMD_READ            0   /* Read */
#define SPI_DMA_CMD_WRITE           1   /* Write */
#define SPI_BUSY_CHECK              1   /* Busy check after command. Wait unil busy is cleared */


//new:151215...
#define DMA_TARGET_FOSD			0x00
#define DMA_TARGET_CHIP			0x40
#define DMA_TARGET_SOSD			0x80
#define DMA_TARGET_XMEM			0xC0

#define DMA_ACCESS_INC			0x00
#define DMA_ACCESS_DEC			0x10
#define DMA_ACCESS_FIX			0x20

#define DMA_OPT_NONE			0x00
#define DMA_OPT_READ			0x00
#define DMA_OPT_WRITE			0x02
#define DMA_OPT_BUSY			0x04
#define DMA_OPT_BUSY_WRITE		0x06


/* DMA Read/Write Buffer1 Register */
#define DMA_RW_BUFFER_REG_PAGE      0x04
#define DMA_RW_BUFFER_REG_INDEX     0xD0
#define DMA_RW_BUFFER_REGISTER      0x04D0


/* SPI Flash Vendor */
#define SPI_FLASH_VENDOR_UNKNOW     0
#define SPI_FLASH_VENDOR_EON        1
#define SPI_FLASH_VENDOR_EON_256    2
#define SPI_FLASH_VENDOR_MX         3
#define SPI_FLASH_VENDOR_MX_256     4
#define SPI_FLASH_VENDOR_WB         5
#define SPI_FLASH_VENDOR_MICRON     6
#define SPI_FLASH_VENDOR_MICRON_256 7
#define SPI_FLASH_VENDOR_SPANSION   8


/* SPI Flash Read Mode */
#define SPI_RD_MODE_SLOW            0   /* slow */
#define SPI_RD_MODE_FAST            1   /* fast */
#define SPI_RD_MODE_DUAL            2   /* dual */
#define SPI_RD_MODE_QUAD            3   /* quad */
#define SPI_RD_MODE_DUAL_IO         4   /* duao-io */
#define SPI_RD_MODE_QUAD_IO         5   /* quad-io */
#define SPI_RD_MODE_D_QUAL          6   /* d-quad  */

#define SPI_READ_MODE               SPI_RD_MODE_DUAL//SPI_RD_MODE_FAST//


_SPIFLASH_DEC_ void SpiFlashDmaControl( uint8_t ucDestination, uint8_t ucAccessMode, uint8_t ucCount );
_SPIFLASH_DEC_ void SpiFlashInit( void );
_SPIFLASH_DEC_ void SpiFlashReadRLE2Header( uint8_t *dest_loc, uint32_t src_loc, uint16_t size );


#endif


