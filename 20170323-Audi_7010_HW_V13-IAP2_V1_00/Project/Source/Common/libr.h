#ifndef _LIBR_H_
#define _LIBR_H_

#ifdef _LIBR_C_
  #define _LIBRDEC_
#else
  #define _LIBRDEC_ extern
#endif

#include "type.h"

_LIBRDEC_ void Delay_1ms (UINT count);
_LIBRDEC_ void delay_500us(void);
_LIBRDEC_ void delay_100us(void);
_LIBRDEC_ void delay_50us(void);
_LIBRDEC_ void delay_10us(void);
_LIBRDEC_ void delay_5us(void);
_LIBRDEC_ void delay_1us(void);

#endif
