
#ifndef  _PORTCHECK_H_
#define _PORTCHECK_H_

#ifdef _PORTCHECK_C_
#define _PORTCHECK_EXT_
#else
#define _PORTCHECK_EXT_  extern
#endif
#include "type.h"
#include "stm32f10x.h"
#include "port.h"


_PORTCHECK_EXT_	uint8_t  AccStatus;
_PORTCHECK_EXT_	uint8_t  BackStatus;
_PORTCHECK_EXT_	uint8_t  EarPhoneStatus;
_PORTCHECK_EXT_ uint8_t PortDataBk;

#define ACC_PORT() GPIO_ReadInputDataBit(DET_ACCCHECK_PORT,DET_ACCCHECK_PIN)

#define BACK_PORT() GPIO_ReadInputDataBit(DET_CAM_PORT,DET_CAM_PIN)

//#define EAR_PHONE() GPIO_ReadInputDataBit(EAR_PHONE_DET_PORT,EAR_PHONE_DET_PIN)

_PORTCHECK_EXT_ void PortCheck(void);
 _PORTCHECK_EXT_ uint8_t BACK_PIN_STATUS(void);
 _PORTCHECK_EXT_ uint8_t ACC_PIN_STATUS(void);


#endif


