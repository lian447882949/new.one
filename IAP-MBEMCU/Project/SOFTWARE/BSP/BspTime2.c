
#include "includes.h"

//#include "stm32f10x_tim.h"
//#include "stm32f10x_gpio.h"
//#include "stm32f10x_rcc.h"


//#include "BspTime2.h"





volatile u32 g_Tim2Array[(u32)eTimMax] = {0,};



/*******************************************************************************
* Function Name :void BspTim2Init(void)
* Description   :通用定时器 初始化，
* Input         :
* Output        :
* Other         :
* Date          :2013.01.27
*******************************************************************************/
void BspTim2Init(void)
{

    NVIC_InitTypeDef NvicInitdef;
    TIM_TimeBaseInitTypeDef timbase;	
    uc16 cnt = 1000;     // 1ms 触发

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);	

    TIM_DeInit(TIM2); 
    timbase.TIM_CounterMode = TIM_CounterMode_Up;
    timbase.TIM_ClockDivision = TIM_CKD_DIV1;
    timbase.TIM_Period = cnt - 1;
    timbase.TIM_Prescaler = 72 - 1; 	// 72分频
    TIM_TimeBaseInit(TIM2, &timbase);

	NvicInitdef.NVIC_IRQChannel = TIM2_IRQn;
    NvicInitdef.NVIC_IRQChannelPreemptionPriority = 10;    //最低优先级
    NvicInitdef.NVIC_IRQChannelSubPriority = 0;
    NvicInitdef.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NvicInitdef);
	
	
    TIM_SetCounter(TIM2, 0);
    TIM_ITConfig(TIM2, TIM_IT_Update, ENABLE);
    TIM_Cmd(TIM2, ENABLE);
    
}

void BspTim2Close(void)
{

    TIM_ITConfig(TIM2, TIM_IT_Update, DISABLE);
    TIM_Cmd(TIM2, DISABLE);
    
}

/********************** END ***************************************************/

