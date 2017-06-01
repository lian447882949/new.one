#ifndef  _RADIO_FM_H
#define _RADIO_FM_H

#ifdef _RADIO_FM_C_
#define _RADIO_FM_EXT_
#else
#define _RADIO_FM_EXT_  extern
#endif
#include "type.h"
#define FM_REG_SYS 0x00
#define FM_REG_CH1 0x01

_RADIO_FM_EXT_ void radio_fm_init(void);

_RADIO_FM_EXT_ void radio_fm_set_freq(UINT frequency);


#endif
