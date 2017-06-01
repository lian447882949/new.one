#ifndef _SYSTEM_CONFIG_H_
#define _SYSTEM_CONFIG_H_

#ifdef _SYSTEM_CONFIG_C_
  #define _SYSTEM_CONFIGDEC_
#else
  #define _SYSTEM_CONFIGDEC_ extern
#endif

#include "Type.h"


#define LUM_VALUE_1	90
#define LUM_VALUE_2	180
#define LUM_VALUE_3	270
#define LUM_VALUE_4	360
#define LUM_VALUE_5	450
#define LUM_VALUE_6	540
#define LUM_VALUE_7	630
#define LUM_VALUE_8	720
#define LUM_VALUE_9	810
#define LUM_VALUE_10	900


_SYSTEM_CONFIGDEC_ void	MCU_Init(void);
_SYSTEM_CONFIGDEC_ void RCC_Configuration(void);
_SYSTEM_CONFIGDEC_ void SYSCLKConfig_STOP(void);
_SYSTEM_CONFIGDEC_ void RCC_Close(void);
_SYSTEM_CONFIGDEC_ void GPIO_Off_Init(void);
_SYSTEM_CONFIGDEC_ void GPIO_On_Init(void);
_SYSTEM_CONFIGDEC_ void EXIT_Control(BYTE type,BYTE on_off);
_SYSTEM_CONFIGDEC_ void EXIT_all_off(void);
_SYSTEM_CONFIGDEC_ void DMA_Configuration(BYTE *Receive_Buf,u16 NumByteToRead);
_SYSTEM_CONFIGDEC_ void GPIO_Configuration(void);
_SYSTEM_CONFIGDEC_ void GPIO_keylight_Configuration(void);

_SYSTEM_CONFIGDEC_ void ADC_Config(void);
_SYSTEM_CONFIGDEC_ void STM32_Canbus_Config(void);

_SYSTEM_CONFIGDEC_ void PWM_Configuration(void);
_SYSTEM_CONFIGDEC_ void Bright_Adjust(u8 value);

_SYSTEM_CONFIGDEC_ void A91_date_checked(void);

#endif

