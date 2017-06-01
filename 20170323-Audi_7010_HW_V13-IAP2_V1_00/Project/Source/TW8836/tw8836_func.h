#ifndef __REG_H
#define __REG_H

#ifdef _REG_C_
  #define _REG_DEC_
#else
  #define _REG_DEC_ extern
#endif

#include "type.h"



_REG_DEC_ void	InitGPIO(void);
_REG_DEC_ void	Write_GPIO(WORD pins,BYTE val);
_REG_DEC_ BYTE	Read_GPIO(WORD pins);

_REG_DEC_ void	InitPanel(void);

_REG_DEC_ void Init_TW8836_Variables(void);
_REG_DEC_ void TW8836_init(void);
_REG_DEC_ void TW8836_Reset(void);

_REG_DEC_ void	BackLight(BYTE on);
_REG_DEC_ void	PanelMute(BYTE on);
_REG_DEC_ void	PanelBlack(BYTE on);

_REG_DEC_ void TW8836_Src(BYTE src);


#endif

