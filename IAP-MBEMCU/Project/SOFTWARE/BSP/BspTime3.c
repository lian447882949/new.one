#include "includes.h"

//#include "stm32f10x_tim.h"
//#include "stm32f10x_gpio.h"
//#include "stm32f10x_rcc.h"
//#include "stm32f10x_nvic.h"

//#include "BspTime3.h"
//#include "common.h"

/*******************************************************************************
* Function Name :void BspTim3Init(void)
* Description   :通用定时器 初始化，
* Input         :
* Output        :
* Other         :
* Date          :2013.01.27
*******************************************************************************/
void BspTim3Init(void)
{
	NVIC_InitTypeDef NvicInitdef;
    TIM_TimeBaseInitTypeDef timbase;	
    u32 cnt = 5000 ;     //5ms 触发

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);	

    TIM_DeInit(TIM3); 
    timbase.TIM_CounterMode = TIM_CounterMode_Up;
    timbase.TIM_ClockDivision = TIM_CKD_DIV1;
    timbase.TIM_Period = cnt - 1;
    timbase.TIM_Prescaler = 64; 	        // 64分频
    TIM_TimeBaseInit(TIM3, &timbase);

	NvicInitdef.NVIC_IRQChannel = TIM3_IRQn;
    NvicInitdef.NVIC_IRQChannelPreemptionPriority = 6;
    NvicInitdef.NVIC_IRQChannelSubPriority = 0;
    NvicInitdef.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NvicInitdef);
	
    TIM_SetCounter(TIM3, 0);
    TIM_ITConfig(TIM3, TIM_IT_Update, DISABLE);
    TIM_ClearITPendingBit( TIM3, TIM_IT_Update);

    /* TIMX enable counter */
    TIM_Cmd(TIM3, DISABLE);
}

/*******************************************************************************
* Function Name :void BspTim3Open()
* Description   :使能能定时器
* Input         :
* Output        :
* Other         :
* Date          :2013.02.19
*******************************************************************************/
void BspTim3Open(void)
{
    TIM_SetCounter(TIM3, 0);
    TIM_Cmd(TIM3, ENABLE);
    TIM_ITConfig(TIM3, TIM_IT_Update, ENABLE);
}

/*******************************************************************************
* Function Name :void BspTim3Close()
* Description   :关闭定时器
* Input         :
* Output        :
* Other         :
* Date          :2013.02.19
*******************************************************************************/
void BspTim3Close(void)
{
    TIM_Cmd(TIM3, DISABLE);
    TIM_SetCounter(TIM3, 0);
    TIM_ITConfig(TIM3, TIM_IT_Update, DISABLE);
}

/*******************************************************************************
* Function Name :void BspTim3SetCounter(u16 count)
* Description   :设置计数值
* Input         :
* Output        :
* Other         :
* Date          :2013.02.19
*******************************************************************************/
void BspTim3SetCounter(u16 count)
{
    TIM_SetCounter(TIM3, count);
}



/********************** END ***************************************************/

