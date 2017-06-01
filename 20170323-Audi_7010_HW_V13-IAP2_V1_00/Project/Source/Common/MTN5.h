#ifndef _MTN5_H_
#define _MTN5_H_

#ifdef  _MTN5_C_
  #define  _MTN5H_
#else
  #define  _MTN5H_ extern
#endif
#include "type.h"

//#define GT911_adr 0x28//0xba//
//#define MTN5_i2cSCL_PIN_STATUS() 	GPIO_ReadInputDataBit(MTN5_CLK_PORT, MTN5_CLK_PIN)
//#define MTN5_i2cSDA_PIN_STATUS() 	GPIO_ReadInputDataBit(MTN5_DATA_PORT, MTN5_DATA_PIN)

#define IR_SEND_DATA_end           0x00
#define IR_SEND_HEAD_5MS         0x01
#define IR_SEND_HEAD_4P5MS     0x02
#define IR_SEND_DATA_SURE       0x03
#define IR_SEND_DATA_1             0x04
#define IR_SEND_DATA_0            0x05

typedef struct
{
    //send
    u8 u8SendBitIndex;
    u8 u8SendProgress;
    u8 u8SendBuff[4];
    u8 u8PulseLenCnt;
    //receive
    u8 u8RevDataIndex;
    u8 u8RevBuff[4];
    u8 u8RevEn;
    u8 u8RevFullFlag;
    u8 u8RepFlag;
    u8 u8CurIrCode;
    u8 u8PreIrCode;
    //
    u16 u8RepCheckDelay;
    u16 u16RepLongPressDelay_1;
    vu8 u8RepLongPressStatus;
    vu8 u8RepLongPressLastFlag;
    vu16 u16RevBitW;
} IR_CNTR;
_MTN5H_ IR_CNTR g_stuIR_CNTR;

_MTN5H_ BYTE MTN5_i2c_SendByte(BYTE ucVal);
_MTN5H_ void MTN5_init(void);
_MTN5H_ void IR_HD_StartIrSend(u8 pData);
_MTN5H_ void IN_MTN5_IRSendCodeTask(void);

#endif

