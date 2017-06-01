/**
  ******************************************************************************
  * @file    Project/STM32F10x_StdPeriph_Template/stm32f10x_it.c
  * @author  MCD Application Team
  * @version V3.5.0
  * @date    08-April-2011
  * @brief   Main Interrupt Service Routines.
  *          This file provides template for all exceptions handler and
  *          peripherals interrupt service routine.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "includes.h"
u16 capture = 0;
CanRxMsg g_RxMessage;
BYTE GPSDebug[15];
//GPS_DATA g_GPS_DATA;
/** @addtogroup STM32F10x_StdPeriph_Template
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M3 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
    /* Go to infinite loop when Hard Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
    /* Go to infinite loop when Memory Manage exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
    /* Go to infinite loop when Bus Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
    /* Go to infinite loop when Usage Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles PendSVC exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
    static vu16 u16MsCount = 0; //1ms
    static vu16 u10MsCount = 0; //1ms
    static vu16 u100MsClrWdgCount = 0; //100ms


#if 0
    if(ARM_send_id==0)
    {
        if(ARM_ack_request!=0)
        {
            ARM_Receive_ACK(ARM_ack_request);
            ARM_ack_request=0;
        }
    }
#endif
    u32Systick++;
    u10MsCount++;
    u100MsClrWdgCount++;
#if 0
    if (u100MsClrWdgCount >= 100)
    {

        u100MsClrWdgCount = 0;
        //--------clear wdg timer----------------------------------
        /* Reload IWDG counter */
        IWDG_ReloadCounter();
    }
#endif
    //------------------------------------------------------------
    //------------------------------------------------------------
    if(g_stuCurPower.wPowerWamkeupTimer != 0)g_stuCurPower.wPowerWamkeupTimer--;
    if(m_BMW_CAN.wLoopTimer != 0)m_BMW_CAN.wLoopTimer--;

    if(g_stuCurPower.wPowerOnByCanPwr!=0)g_stuCurPower.wPowerOnByCanPwr--;
    if(g_stuCurPower.wPowerOnByCanTimer2!=0)g_stuCurPower.wPowerOnByCanTimer2--;
    if(g_stuCurPower.wKnobAuxContrlTimer!=0)g_stuCurPower.wKnobAuxContrlTimer--;
    if(g_stuCurPower.wRearOnByCanTimer!=0)g_stuCurPower.wRearOnByCanTimer--;
	if(m_BMW_CAN.wLeftPushTimeout != 0)m_BMW_CAN.wLeftPushTimeout--;

    if(m_CarDoorInfo.door_show_timer!=0)m_CarDoorInfo.door_show_timer--;
    if(g_stuCurPower.WVedio_show_timer>1)g_stuCurPower.WVedio_show_timer--;

    if(m_BMW_CAN.benze_air_show_Timer!=0)m_BMW_CAN.benze_air_show_Timer--;
    if(g_GPS_DATA.RxFinishTimer!=0)g_GPS_DATA.RxFinishTimer--;
    if(press_timer>1) press_timer--;

	if(g_stuCurPower.wOptionTimeout!=0)g_stuCurPower.wOptionTimeout--;
	if(gNaviVoiceCnt!=0)gNaviVoiceCnt--;

	if(g_stuSYSSRC.soft_mute_Delay>1) g_stuSYSSRC.soft_mute_Delay--;

	
    if(U8Tiemr_connect_press!=0)
        U8Tiemr_connect_press--;
    else
        connect_press_one=0;

	if(wLockWinTimer!=0)	//20170209
		wLockWinTimer--;
	if(wLockWinTimer2!=0)
		wLockWinTimer2--;
	if(wLockWinTimeout!=0)
		wLockWinTimeout--;


    if(gNaviCnt!=0)gNaviCnt--;


    Time_Bus_Cnt++;

    if(Time_Bus_Cnt%2==0)
    {
        if(Time_Bus_Cnt%10==0)
        {
            Time_10ms_arrival=1;


            if(Time_Bus_Cnt%50==0)
            {
                Time_50ms_arrival=1;

                //----------------------
                if(Time_Bus_Cnt%100==0)
                {
                    Time_100ms_arrival=1;



                    if(Poweroff_init_count!=0)
                        Poweroff_init_count--;
                    if(Powerwork_init_count!=0)
                        Powerwork_init_count--;
                    if(Powerstany_count!=0)
                        Powerstany_count--;
                    if(Power_canbuswait_count!=0)
                        Power_canbuswait_count--;

                    if(Touch_valide_count)
                        Touch_valide_count--;


                    if(Time_Bus_Cnt%200==0)
                    {
                        Time_300ms_arrival=1;
                    }

                    //------------------------
                    if(Time_Bus_Cnt%500==0)
                    {
                        Time_500ms_arrival=1;



                        if(ITL_DetectDelayCntr<8)
                            ITL_DetectDelayCntr++;

                        //-----------------------
                        if(Time_Bus_Cnt%1000==0)
                        {
                            Time_1s_arrival=1;
#if 1
                            {
                                if(IWDG_load_Count<3)
                                {
                                    IWDG_ReloadCounter();
                                    IWDG_load_Count++;
                                }
                            }
#endif

                            if(Time_Bus_Cnt%5000==0)
                            {
                                Time_5s_arrival=1;
                                if(Time_Bus_Cnt%(1000*60)==0)
                                {
                                    Time_minute_arrival=1;
                                }
                            }

                        }
                    }
                }
            }
        }
    }

    //---------------------------------------

}
/******************************************************************************/
/*            STM32F10x Peripherals Interrupt Handlers                        */
/******************************************************************************/

/**
  * @brief  This function handles TIM2 global interrupt request.
  * @param  None
  * @retval None
  */
void TIM2_IRQHandler(void)
{
    if (TIM_GetITStatus(TIM2, TIM_IT_CC1) != RESET)
    {
        TIM_ClearITPendingBit(TIM2, TIM_IT_CC1);
        //ir

        //IN_MTN5_IRSendCodeTask();

        capture = TIM_GetCapture1(TIM2);
        TIM_SetCompare1(TIM2, capture + CCR1_Val);
    }
    else if (TIM_GetITStatus(TIM2, TIM_IT_CC2) != RESET)
    {
        TIM_ClearITPendingBit(TIM2, TIM_IT_CC2);
        //beep
        //Beep_OutPWM();
        capture = TIM_GetCapture2(TIM2);
        TIM_SetCompare2(TIM2, capture + CCR2_Val);
    }
    else if (TIM_GetITStatus(TIM2, TIM_IT_CC3) != RESET)
    {
        TIM_ClearITPendingBit(TIM2, TIM_IT_CC3);


        capture = TIM_GetCapture3(TIM2);
        TIM_SetCompare3(TIM2, capture + CCR3_Val);
    }
    else
    {
        TIM_ClearITPendingBit(TIM2, TIM_IT_CC4);


        capture = TIM_GetCapture4(TIM2);
        TIM_SetCompare4(TIM2, capture + CCR4_Val);
    }
}

void EXTI9_5_IRQHandler(void)
{
    if(EXTI_GetITStatus(EXTI_Line7) != RESET)
    {
        EXTI_ClearITPendingBit(EXTI_Line7); //
        Touch_flag=1;
        /* Clear the EXTI line 9 pending bit */
    }
    EXTI_ClearITPendingBit(EXTI_Line7); //

}

/*******************************************************************************
 * Function Name  : USART1_IRQHandler
 * Description    : This function handles USART1 global interrupt request.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void USART1_IRQHandler(void)
{
    u8 uRevData;
    //


    if (USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
    {
        /* Read one byte from the receive data register */
        uRevData = (u8)USART_ReceiveData(USART1);




    }
    if (USART_GetITStatus(USART1, USART_IT_TXE) != RESET)
    {
    }
}
/*******************************************************************************
 * Function Name  : USART2_IRQHandler
 * Description    : This function handles USART2 global interrupt request.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void USART2_IRQHandler(void)
{
    // u8 uRevData;
    // u8 checksum = 0, i = 0;
#if 0//miller.tao20150723
    if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
    {
        /* Read one byte from the receive data register */
        uRevData = (u8)USART_ReceiveData(USART2);
    }
    if (USART_GetITStatus(USART2, USART_IT_TXE) != RESET)
    {
    }
#endif
    ////////miller.tao20150723//////////
    if(USART_GetFlagStatus(USART2, USART_FLAG_ORE) != RESET)
    {
        USART_ClearFlag(USART2, USART_FLAG_ORE);
        Uart_data_temp=USART_ReceiveData(USART2);//tiger
    }

    //BYTE temp;
    if(USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
    {
        USART_ClearITPendingBit(USART2, USART_IT_RXNE);
        //temp=USART_ReceiveData(UART4);
        //ARM_Data_Receive();
    }

    USART_ClearITPendingBit(USART2, USART_IT_RXNE);
}

/*******************************************************************************
 * Function Name  : USART3_IRQHandler
 * Description    : This function handles USART3 global interrupt request.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
//BYTE GPSDebug[15];
//BYTE gpsdebugindex=0;
void USART3_IRQHandler(void)
{
    vu8 uRevData;
    BYTE uChecksum,i;//,index_backup;
    msg_data_t cmd;
 #if 0   
    //msg_data_t cmd;
    /********************************************************************/
    if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
    {
        /* Read one byte from the receive data register */
        uRevData = USART_ReceiveData(USART3);

        //-------------------------------------------
        if(g_GPS_DATA.RxFinishTimer ==0)
        {
            g_GPS_DATA.RxIndex=0;
            g_GPS_DATA.RxWriteIndex++;
            g_GPS_DATA.RxWriteIndex %= IPC_RX_GROUP_MAX;
        }

        g_GPS_DATA.RxFinishTimer = 10;

        g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][g_GPS_DATA.RxIndex] = uRevData;
        g_GPS_DATA.RxIndex++;
        if (g_GPS_DATA.RxIndex >= IPC_RX_BUF_MAX)
        {
            g_GPS_DATA.RxIndex = IPC_RX_BUF_MAX - 1;
        }

        if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0xEE)
            //exit gps system
        {
            //g_GPS_DATA.uGPSExitFlag = 1;
            g_GPS_DATA.RxFinishTimer=0;
            //cmd.msgbuf[0]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0];
            //MSG_SendcmdMesssage(&cmd);
        }
        else if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0xAA)
            //sound start
        {
            g_GPS_DATA.uSoundFlag = 1;
            g_GPS_DATA.RxFinishTimer=0;
            //cmd.msgbuf[0]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0];
            //MSG_SendcmdMesssage(&cmd);

            //SW_GPS_CAR_TO_GPS();
        }
        else if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0x55)
            //sound end
        {
            g_GPS_DATA.uSoundFlag = 0;
            g_GPS_DATA.RxFinishTimer=0;
            //cmd.msgbuf[0]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0];
            //MSG_SendcmdMesssage(&cmd);

            //SW_GPS_CAR_TO_CAR();
        }
        else if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0x14)//navi version
        {
            if(g_GPS_DATA.RxIndex>5)
            {


                uChecksum=0;
                for(i=0; i<5; i++)
                    uChecksum+=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
                uChecksum=uChecksum^0xFF;
                if(uChecksum==g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][5])
                {
                    /*
                    g_struct_navi_ver.notify=1;
                    g_struct_navi_ver.code0=   (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0]);
                    g_struct_navi_ver.code1=   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1];
                    g_struct_navi_ver.code2=   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][2];
                    g_struct_navi_ver.code3=   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][3];
                    g_struct_navi_ver.code4=   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][4];
                    */
                    //hour
                }


                g_GPS_DATA.RxFinishTimer=0;
                //for(i=0;i<=4;i++)
                // cmd.msgbuf[i]=g_GPS_DATA.Rx[g_GPS_DATA.
                //RxWriteIndex][i];
                // MSG_SendcmdMesssage(&cmd);
            }
        }
#if 1
        else if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0xF1)
        {
            if(g_GPS_DATA.RxIndex>9)
            {

                uChecksum=0;
                for(i=0; i<9; i++)
                    uChecksum+=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
                uChecksum=uChecksum^0xFF;
                if(uChecksum==g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][9])
                {

                    m_BMW_CAN.send_time_flag=1;
                    m_BMW_CAN.Year_data   =   (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]<<8)|g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][2];

                    m_BMW_CAN.Month_data  =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][3];
                    m_BMW_CAN.day_data	  =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][5];
                    m_BMW_CAN.week_data   =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][4];
                    m_BMW_CAN.Hour_data   =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][6]; //
                    m_BMW_CAN.Minute_data =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][7];
                    //时间数据
                    m_BMW_CAN.Sec_data	  =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][8];
                    //if(gNaviCnt>250)gNaviCnt=200;
                    if(gNaviSystemOn)
                    {
                        gNaviSystemOn=0;
                        gNaviSendFlag=1;
                        //gNaviCnt=3200;
                    }
                    //时间数据
                }

                g_GPS_DATA.RxFinishTimer=0;
                // for(i=0;i<=9;i++)
                // cmd.msgbuf[i]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
                //	MSG_SendcmdMesssage(&cmd);
            }
        }
#endif
        else if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0x03)
        {
            g_GPS_DATA.RxFinishTimer=0;
        }
        else if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0]==0x05)//蓝牙挂断
        {

            g_GPS_DATA.RxFinishTimer=0;
        }
        else if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0x52)
        {

            if(g_GPS_DATA.RxIndex>5)
            {
                uChecksum=0;
                for(i=0; i<5; i++)
                    uChecksum+=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
                uChecksum=uChecksum^0xFF;

                g_GPS_DATA.RxFinishTimer=0;
            }
        }
        //-------------------------------------------
        USART_ClearITPendingBit(USART3, USART_IT_RXNE);
    }
#endif
	 /********************************************************************/
    if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
    {
        /* Read one byte from the receive data register */
        uRevData = USART_ReceiveData(USART3);

        //-------------------------------------------


        if(g_GPS_DATA.RxFinishTimer ==0)
        {
            g_GPS_DATA.RxIndex=0;
            g_GPS_DATA.RxWriteIndex++;
            g_GPS_DATA.RxWriteIndex %= IPC_RX_GROUP_MAX;
        }

        g_GPS_DATA.RxFinishTimer = 10;//30;//10

        g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][g_GPS_DATA.RxIndex] = uRevData;
#if 0 //Miller.Tao20140919
        GPSDebug[gpsdebugindex]=uRevData;
        gpsdebugindex++;
        if(gpsdebugindex>=15)gpsdebugindex=0;
#endif
        g_GPS_DATA.RxIndex++;
        if (g_GPS_DATA.RxIndex >= IPC_RX_BUF_MAX)
        {
            g_GPS_DATA.RxIndex = IPC_RX_BUF_MAX - 1;
        }
		if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0xA0)//正芯
        {
            //Miller.tao20151127
            if(g_GPS_DATA.RxIndex>5)
            {
                if(g_GPS_DATA.RxIndex > (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]+2))
                {
                    uChecksum=0;
                    //checksum calculation
                    for(i=1; i<=(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]+1); i++)
                    {
                        uChecksum+=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];

                    }
                    if(uChecksum==g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]+2])
                    {
                        if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][3] != 0x05)
                        {
                            for(i=0; i<=(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]+2); i++)
                            {
                                cmd.msgbuf[i]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
                                GPSDebug[i]=cmd.msgbuf[i];
                                gGPSCmdBuffer[gGPSCmdWrtIndex][i]=cmd.msgbuf[i];
                            }
                            gGPSCmdWrtIndex++;
                            if(gGPSCmdWrtIndex>=GPSCMDBUFFMAX)gGPSCmdWrtIndex = 0;

                            //if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][3] != 0x05)
                            //MSG_SendcmdMesssage(&cmd);
                        }
						g_GPS_DATA.RxFinishTimer = 0;
                    }
					else
                    {
                        g_GPS_DATA.RxIndex = 0;

					}
                }
            }
        }



        //-------------------------------------------
        USART_ClearITPendingBit(USART3, USART_IT_RXNE);
    }
}

//#ifdef AUDI_Q3_TFT_MAIN_BOARD
void UART4_IRQHandler(void)
{
    u8 uRevData;
    if (USART_GetITStatus(UART4, USART_IT_RXNE) != RESET)
    {
        /* Read one byte from the receive data register */
        uRevData = USART_ReceiveData(UART4);

        //-------------------------------------------

        //-------------------------------------------
        USART_ClearITPendingBit(UART4, USART_IT_RXNE);
    }

}
//#endif
/*******************************************************************************
 * Function Name  : UART5_IRQHandler
 * Description    : This function handles UART5 global interrupt request.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void UART5_IRQHandler(void)
{
    u8 uRevData;
    if (USART_GetITStatus(UART5, USART_IT_RXNE) != RESET)
    {
        /* Read one byte from the receive data register */
        uRevData = USART_ReceiveData(UART5);
        uRevData = uRevData;
        USART_ClearITPendingBit(UART5, USART_IT_RXNE);
    }
}


/**
  * @brief  This function handles CAN1 RX0 Handler.
  * @param  None
  * @retval None
  */

CanRxMsg myRxMessage;
void CAN1_RX0_IRQHandler(void)
{
    CanRxMsg RxMessage;
    CAN_Receive(CAN1, CAN_FIFO0, &RxMessage);
    myRxMessage =RxMessage;

    CAN1_USER_HANDLER(RxMessage);

}

/**
  * @brief  This function handles CAN2 RX0 Handler.
  * @param  None
  * @retval None
  */

void CAN2_RX0_IRQHandler(void)
{
    CanRxMsg RxMessage;

    CAN_Receive(CAN2, CAN_FIFO0, &RxMessage);
    myRxMessage =RxMessage;
    CAN2_USER_HANDLER(RxMessage);
}

/**
  * @brief  This function handles RTC global interrupt request.
  * @param  None
  * @retval None
  */
void RTC_IRQHandler(void)
{
    if (RTC_GetITStatus(RTC_IT_ALR) != RESET)
    {
        /* Clear Interrupt pending bit */
        RTC_ClearITPendingBit(RTC_FLAG_ALR);
    }
}

/*******************************************************************************
* Function Name  : RTCAlarm_IRQHandler
* Description    : This function handles RTC Alarm interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RTCAlarm_IRQHandler(void)
{
    if(RTC_GetITStatus(RTC_IT_ALR) != RESET)
    {
        /* Toggle Led connected to GPIO_LED Pin8 */
        //GPIO_WriteBit(GPIOB, P_PEC_CLK, (BitAction)(1-GPIO_ReadOutputDataBit(GPIOB, P_PEC_CLK)));

        /* Clear EXTI line17 pending bit */
        EXTI_ClearITPendingBit(EXTI_Line17);

        //IWDG_ReloadCounter();//清狗

        /* Check if the Wake-Up flag is set */
        if(PWR_GetFlagStatus(PWR_FLAG_WU) != RESET)
        {
            /* Clear Wake Up flag */
            PWR_ClearFlag(PWR_FLAG_WU);
        }

        /* Wait until last write operation on RTC registers has finished */
        RTC_WaitForLastTask();
        /* Clear RTC Alarm interrupt pending bit */
        RTC_ClearITPendingBit(RTC_IT_ALR);
        /* Wait until last write operation on RTC registers has finished */
        RTC_WaitForLastTask();
    }
}

/******************************************************************************/
/*                 STM32F10x Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f10x_xx.s).                                            */
/******************************************************************************/

/**
  * @brief  This function handles PPP interrupt request.
  * @param  None
  * @retval None
  */
/*void PPP_IRQHandler(void)
{
}*/

/**
  * @}
  */


/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
