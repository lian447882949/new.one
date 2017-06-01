
#ifndef __I2C_DRIVER_H
#define __I2C_DRIVER_H

#ifdef _I2C_DRIVER_C_
  #define _I2C_DRIVER_DEC_
#else
  #define _I2C_DRIVER_DEC_ extern
#endif

/* Includes ------------------------------------------------------------------*/
//#include "stm32f10x_lib.h"
#include "type.h"

#define TSC2003_ADDRESS 0x90   
//#define FMS6501_ADDRESS 0x06   
#define FMS6502_ADDRESS 0x06   
#define TDA7415_ADDRESS 0x8C   
#define PT2037_AMP_ADDRESS 0x88   
#define PT2037_2ZONE_ADDRESS 0x8A   
#define	PCF8563	0xA2	 	//Ð´µØÖ·£¨Ê±ÖÓ£©

#define TW8823_ADDRESS 0x8A   //0x88

#define RadioFM_ADDRESS 0x58 //0x2C //miller.tao20150713 for QN8027

#ifdef	ADAU1401_EN
#define ADAU1401_ADDRESS 0xBB			//	0XC8		LZS		2013-01-12
#endif

// 93LC46
#define read 0x01
#define read_addr 0x02
#define write 0x03
#define write_addr 0x04
#define write_en 0x05
#define write_en_addr 0x06
#define write_ds 0x07
#define write_ds_addr 0x08
#define write_erase 0x09
#define write_all 0x0a

typedef enum
{ I2C_WRITE,
  I2C_READ
} I2C_Direction;

#define _IN       0
#define _OUT    1

#define I2C_DEVICE_ADR_WRITE(slave_adr)   (slave_adr & ~_BIT0)
#define I2C_DEVICE_ADR_READ(slave_adr)    (slave_adr | _BIT0)
#define I2C_ACCESS_DUMMY_TIME   		  3
#define I2C_ACCESS_DUMMY_TIME_TV   		  10
#define I2C_CHECK_PIN_DUMMY     100

#define I2C_ACCESS_DUMMY_TIME1   		  10

#define i2cSetSCL(is_hl)  	{                      \
  if(is_hl) AV_IIC_CLK_PORT->BSRR=AV_IIC_CLK_PIN;\
  else AV_IIC_CLK_PORT->BRR=AV_IIC_CLK_PIN;\
  }
#define i2cSetSDA(is_hl)	{                      \
  if(is_hl) AV_IIC_DAT_PORT->BSRR=AV_IIC_DAT_PIN;\
  else AV_IIC_DAT_PORT->BRR=AV_IIC_DAT_PIN;\
  }
#define i2cSCL_PIN_STATUS()	(AV_IIC_CLK_PORT->IDR&AV_IIC_CLK_PIN)
#define i2cSDA_PIN_STATUS()     (AV_IIC_DAT_PORT->IDR&AV_IIC_DAT_PIN)

//#define i2cSCL_PIN_STATUS()	GPIO_ReadInputDataBit(GPIOB, P_MAIN_SCL)
//#define i2cSDA_PIN_STATUS() GPIO_ReadInputDataBit(GPIOB, P_MAIN_SDA)

#define i2cSCL_PIN_STATUS_tw8823()	GPIO_ReadInputDataBit(GPIOC, P_TW8823_SCL)
#define i2cSDA_PIN_STATUS_tw8823() GPIO_ReadInputDataBit(GPIOC, P_TW8823_SDA)

#define A100_CS_PORT_SET()           GPIO_SetBits(A100_CS_PORT,A100_CS_PIN)
#define A100_CS_PORT_RESET()          GPIO_ResetBits(A100_CS_PORT,A100_CS_PIN)
#define A100_IN_PORT_SET()           GPIO_SetBits(A100_IN_PORT,A100_IN_PIN)
#define A100_IN_PORT_RESET()          GPIO_ResetBits(A100_IN_PORT,A100_IN_PIN)

//#define i2cSCL_PIN_STATUS_TV()	GPIO_ReadInputDataBit(GPIOD, P_DTVTXD_ATVSCL)
//#define i2cSDA_PIN_STATUS_TV() GPIO_ReadInputDataBit(GPIOB, P_TV_SDA)

//#define i2cSCL_PIN_STATUS_keylight()	GPIO_ReadInputDataBit(GPIOD, P_LED_COL2)   //20120724
//#define i2cSDA_PIN_STATUS_keylight() GPIO_ReadInputDataBit(GPIOD, P_LED_COL1)

//#define WriteTW88(a, b)		regTW88[(BYTE)(a)] = ((BYTE)(b))
//#define	ReadTW88(a)			regTW88[(BYTE)(a)]

_I2C_DRIVER_DEC_ BYTE i2c_AccessStart(BYTE ucSlaveAdr, I2C_Direction trans_t);
_I2C_DRIVER_DEC_ BYTE i2c_SendByte(BYTE ucVal);
_I2C_DRIVER_DEC_ void i2c_Stop(void);
_I2C_DRIVER_DEC_ BOOL i2cWrite_Sub(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ BOOL i2cRead_Sub(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ BOOL i2cCurrent_Read(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ BOOL i2cCurrent_Write(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen);

_I2C_DRIVER_DEC_ BOOL i2cWrite_Sub_tw8823(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ BOOL i2cRead_Sub_tw8823(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ BYTE i2c_Start_tw8823(void);
_I2C_DRIVER_DEC_ void i2c_Stop_tw8823(void);
_I2C_DRIVER_DEC_ BYTE i2c_SendByte_tw8823(BYTE ucVal);
_I2C_DRIVER_DEC_ BYTE i2c_ReceiveByte_tw8823(BYTE bAck);
_I2C_DRIVER_DEC_ BYTE i2c_AccessStart_tw8823(BYTE ucSlaveAdr, I2C_Direction trans_t);
_I2C_DRIVER_DEC_ void WriteTW88(Byte addr,Byte b);	
_I2C_DRIVER_DEC_ Byte ReadTW88(Byte addr);
_I2C_DRIVER_DEC_ void WriteTW88_Page(WORD addr,Byte b);	
_I2C_DRIVER_DEC_ Byte ReadTW88_Page(WORD addr);


_I2C_DRIVER_DEC_ void WriteRadioFM(Byte addr,Byte b)	;

_I2C_DRIVER_DEC_ Byte ReadRadioFM(Byte addr); 

_I2C_DRIVER_DEC_ BYTE i2c_AccessStart_TV(BYTE ucSlaveAdr, I2C_Direction trans_t);
_I2C_DRIVER_DEC_ BYTE i2c_SendByte_TV(BYTE ucVal);
_I2C_DRIVER_DEC_ void i2c_Stop_TV(void);
_I2C_DRIVER_DEC_ void i2cWrite_Sub_TV(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ void i2cRead_Sub_TV(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ void i2cCurrent_Read_TV(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ void i2cCurrent_Write_TV(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ void i2cWrite_Sub_XRP6840(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen);


_I2C_DRIVER_DEC_ BYTE i2c_AccessStart_keylight(BYTE ucSlaveAdr, I2C_Direction trans_t);
_I2C_DRIVER_DEC_ BYTE i2c_SendByte_keylight(BYTE ucVal);
_I2C_DRIVER_DEC_ void i2c_Stop_keylight(void);
_I2C_DRIVER_DEC_ void i2cWrite_Sub_keylight(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ BOOL i2cRead_Sub_keylight(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ void i2cCurrent_Read_keylight(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ void i2cCurrent_Write_keylight(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen);

#ifdef	ADAU1401_EN
void i2c_Delay_ADAU1401(void);
BYTE i2c_Start_ADAU1401(void);
void i2c_Stop_ADAU1401(void);
BYTE i2c_SendByte_ADAU1401(BYTE ucVal);
BYTE i2c_AccessStart_ADAU1401(BYTE ucSlaveAdr, I2C_Direction trans_t);
BOOL i2cWrite_Sub_ADAU1401(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen);
 _I2C_DRIVER_DEC_ void SIGMA_WRITE_DELAY(unsigned char subAddr, unsigned int length, unsigned const char *pData);
 _I2C_DRIVER_DEC_ unsigned char SIGMA_WRITE_REGISTER_BLOCK(unsigned char subAddr, unsigned int Addr, unsigned int length, unsigned const char *pData);
#endif


_I2C_DRIVER_DEC_ void IC_93Ci2cBurstWriteBytes(BYTE addr,BYTE *pBuf, BYTE ucBufLen);
_I2C_DRIVER_DEC_ void IC_93Ci2cBurstReadBytes( BYTE *pBuf, BYTE ucBufLen);

#endif 





