#ifndef _DrvTime3_h_
#define _DrvTime3_h_

//#include "stm32f10x.h"

#ifndef NULL
#define NULL        ((void *)0)
#endif


void BspTim3Init(void);
void BspTim3Open(void);
void BspTim3Close(void);
void BspTim3SetCounter(u16 count);
void BspTim3SetIRQCallBack(void (*fun)());



#endif
/********************** END ***************************************************/


