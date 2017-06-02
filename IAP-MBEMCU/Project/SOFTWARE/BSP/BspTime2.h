#ifndef _DrvTime2_h_
#define _DrvTime2_h_

#include "stm32f10x.h"



#ifndef NULL
#define NULL        ((void *)0)
#endif





enum {
    eTim1,
    eTim2,
    eTimUpdata,
    eTimYModem,
    eTimExitRec,
	eTimeWaitStart,
    eTimMax,
};



//如果index对应的时间超时，清零并返回1，未超时返回0
#define IS_TIMEOUT_1MS(index, count)    ((g_Tim2Array[(u32)(index)] >= (count))?  \
                                        ((g_Tim2Array[(u32)(index)] = 0) == 0): 0)


extern volatile u32 g_Tim2Array[(u32)eTimMax];

void BspTim2Init(void);
void BspTim2Close(void);




#endif
/*********************************** END **************************************/


