#ifndef _TOUCH_H_
#define _TOUCH_H_

#ifdef  _TOUCH_C_
  #define  _TOUCH_
#else
  #define  _TOUCH_ extern
#endif
#include "type.h"

//#define GT911_adr 0x28//0xba//
#define touch_i2cSCL_PIN_STATUS() 	GPIO_ReadInputDataBit(CTOUCH_SCL_PORT, CTOUCH_SCL_PIN)
#define touch_i2cSDA_PIN_STATUS() 	GPIO_ReadInputDataBit(CTOUCH_SDA_PORT, CTOUCH_SDA_PIN)


_TOUCH_ BYTE touch_I2C_buff[26];
_TOUCH_ BYTE Touch_flag;
_TOUCH_ BYTE Touch_on_Click;

_TOUCH_ BYTE GT911_adr;

_TOUCH_ void init_touch(void);
_TOUCH_ bool touch_i2c_Start(void);
_TOUCH_ void touch_i2c_Stop(void);
_TOUCH_ BYTE touch_i2c_SendByte(BYTE ucVal);
_TOUCH_ BYTE touch_i2c_ReceiveByte(bool bAck);
_TOUCH_ void touch_i2cBurstCurrentBytes(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen);
_TOUCH_ void touch_i2cWriteByte(BYTE deviceID, BYTE addr, BYTE value);
_TOUCH_ void touch_i2cBurstReadBytes(BYTE ucSlaveAdr, BYTE ucSubAdr1, BYTE ucSubAdr2, BYTE *pBuf, BYTE
						ucBufLen);

_TOUCH_ void touch_i2cBurstWriteBytes(BYTE ucSlaveAdr, BYTE ucSubAdr1, BYTE ucSubAdr2, BYTE *pBuf, BYTE
						ucBufLen);
_TOUCH_  void touch_i2cBurst_1addr_ReadBytes(BYTE ucSlaveAdr, BYTE ucSubAdr,  BYTE *pBuf, BYTE
						ucBufLen);

_TOUCH_ void touch_i2cBurst_1addr_WriteBytes(BYTE ucSlaveAdr, BYTE ucSubAdr,  BYTE *pBuf, BYTE
						ucBufLen);

#endif

