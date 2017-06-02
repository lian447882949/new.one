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
//#include "stm32f10x_it.h"
//#include "BspTime2.h"
//#include "IAPUsart.h"
//#include "BspTime3.h"
//#include "common.h"

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
	u32Systick++;
	if(g_GPS_DATA.RxFinishTimer!=0)g_GPS_DATA.RxFinishTimer--;
	if(g_Uart2CheckTick)
	{
		g_Uart2CheckTick--;
		if ( g_Uart2CheckTick == 0 )
	        {
	            //g_bUart2Detected = FALSE;
	            //g_Uart2Command.Index = 0;
		    g_ucUart2BufIndex2 = 0;//miller.tao20151215
	        }

	}
}



/*******************************************************************************
* Function Name :void TIM2_IRQHandler(void)
* Description   :tim2中断函数
* Input         :
* Output        :
* Other         :
* Date          :2013.01.27
*******************************************************************************/
void TIM2_IRQHandler(void)
{
    u16 i = 0;

    if( SET == TIM_GetITStatus(TIM2,TIM_IT_Update) )
    {
        TIM_ClearITPendingBit( TIM2, TIM_IT_Update);

        for (i = 0; i < (u16)eTimMax; i++)
        {
            g_Tim2Array[i]++;
        }
    }
    
}


/*******************************************************************************
* Function Name :void TIM3_IRQHandler(void)
* Description   :timx中断函数
* Input         :
* Output        :
* Other         :
* Date          :2013.01.27
*******************************************************************************/
void TIM3_IRQHandler(void)
{
    if( SET == TIM_GetITStatus(TIM3,TIM_IT_Update) )
    {
        TIM_ClearITPendingBit( TIM3, TIM_IT_Update);

            BspTim3Close();
		    m_ReceData.len = m_ReceData.ind;
		    m_ReceData.ind = 0;
    }
}



/*******************************************************************************
* Function Name :void USART1_IRQHandler(void)
* Description   :USART1 中断程序
* Input         :
* Output        :
* Other         :
* Date          :2011.11.16  16:57:39
*******************************************************************************/

void USART1_IRQHandler(void)
{
    if(SET == USART_GetITStatus(USART1, USART_IT_TXE))
    {
        USART_ClearITPendingBit(USART1, USART_IT_TXE);
        if (m_SendBuff.len > 0 )
        {
            USART_SendData(USART1, m_SendBuff.buf[m_SendBuff.ind++]);
            m_SendBuff.len--;
        }
        else
        {
            USART_ITConfig(USART1, USART_IT_TXE, DISABLE);
            USART_ITConfig(USART1, USART_IT_TC, ENABLE);
        }
    }
    else if (USART_GetITStatus(USART1, USART_IT_TC) != RESET)
    {
        USART_ClearITPendingBit(USART1, USART_IT_TC);
        USART_ITConfig(USART1, USART_IT_TC, DISABLE);
        m_SendBuff.len = 0;
        eTXIdle = TRUE;
    }
    else if (USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
    {
        u8 ch;
        
        USART_ClearITPendingBit(USART1, USART_IT_RXNE);	
        ch = USART_ReceiveData(USART1);
        
		ReceOneChar(ch);	//IAP
//        if (receChar != NULL)
//            (*receChar)(ch);
		
    }	
}



void USART2_IRQHandler(void)
{
	u8 SendData;
    if(SET == USART_GetITStatus(USART2, USART_IT_TXE))
    {
        USART_ClearITPendingBit(USART2, USART_IT_TXE);
	#if 1
		if(FIFO_GET_ONE(McuUart2_TxFifo,&SendData))
		{
		   USART_SendData(USART2,SendData);
		}				  
		else
		{
		 	USART_ITConfig(USART2, USART_IT_TXE, DISABLE);
		 	USART_ITConfig(USART2, USART_IT_TC, ENABLE);
		}
	#else
        if (m_SendBuff.len > 0 )
        {
            USART_SendData(USART2, m_SendBuff.buf[m_SendBuff.ind++]);
            m_SendBuff.len--;
        }
        else
        {
            USART_ITConfig(USART2, USART_IT_TXE, DISABLE);
            USART_ITConfig(USART2, USART_IT_TC, ENABLE);
        }
	#endif
    }
    if (USART_GetITStatus(USART2, USART_IT_TC) != RESET)//去掉else
    {
        USART_ClearITPendingBit(USART2, USART_IT_TC);
        USART_ITConfig(USART2, USART_IT_TC, DISABLE);
        m_SendBuff.len = 0;
        eTXIdle = TRUE;
    }
    if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)//去掉else
    {
        u8 ch;
        
        USART_ClearITPendingBit(USART2, USART_IT_RXNE);	
        ch = USART_ReceiveData(USART2);
        if(UpgradeReady == 1)
		{
			ReceOneChar(ch);	//IAP
		}
		else
		{
			#ifdef ANDROID_UPGRADE
				FIFO_PUT_ONE(McuUart2_RxFifo,ch);
				//ReceOneCharByandroid(ch);
			#else
				ReceOneCharVerify(ch);
			#endif
		}
//        if (receChar != NULL)
//            (*receChar)(ch);
		
    }	
}


void USART3_IRQHandler(void)
{
	
	u8 SendData;
    if(SET == USART_GetITStatus(USART3, USART_IT_TXE))
    {
        USART_ClearITPendingBit(USART3, USART_IT_TXE);
#if 1
		
		 if (FIFO_GET_ONE(McuUart3_TxFifo,&SendData))
		 {
		   USART_SendData(USART3,SendData);
		 }				  
		 else
		{
		 USART_ITConfig(USART3, USART_IT_TXE, DISABLE);
		 USART_ITConfig(USART3, USART_IT_TC, ENABLE);
		}
#else
        if (m_SendBuff.len > 0 )
        {
            USART_SendData(USART3, m_SendBuff.buf[m_SendBuff.ind++]);
            m_SendBuff.len--;
        }
        else
        {
            USART_ITConfig(USART3, USART_IT_TXE, DISABLE);
            USART_ITConfig(USART3, USART_IT_TC, ENABLE);
        }
#endif
    }
    if (USART_GetITStatus(USART3, USART_IT_TC) != RESET)//去掉else
    {
        USART_ClearITPendingBit(USART3, USART_IT_TC);
        USART_ITConfig(USART3, USART_IT_TC, DISABLE);
        m_SendBuff.len = 0;
        eTXIdle = TRUE;
    }
    if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)//去掉else
    {
        u8 ch;
        
        USART_ClearITPendingBit(USART3, USART_IT_RXNE);	
        ch = USART_ReceiveData(USART3);
        if(UpgradeReady == 1)
		{
			ReceOneChar(ch);	//IAP
		}
		else
		{
			#ifdef ANDROID_UPGRADE
				
				FIFO_PUT_ONE(McuUart3_RxFifo,ch);
				//ReceOneCharByandroid(ch);
			#else
				ReceOneCharVerify(ch);
			#endif
		}
//        if (receChar != NULL)
//            (*receChar)(ch);
		
    }	
}

void UART4_IRQHandler(void)
{
    u8 uRevData;
	u8 SendData;
    if (USART_GetITStatus(UART4, USART_IT_RXNE) != RESET)
    {
        /* Read one byte from the receive data register */
        uRevData = USART_ReceiveData(UART4);

        //-------------------------------------------

        //-------------------------------------------
        USART_ClearITPendingBit(UART4, USART_IT_RXNE);
    }
	if(USART_GetITStatus(UART4, USART_IT_TXE) == SET)
	{
		//if (FIFO_GET_ONE(McuUart4_TxFifo,&SendData))
		//{
		//  USART_SendData(UART4,SendData);
		//} 				 
       // else
       {
		USART_ITConfig(UART4, USART_IT_TXE, DISABLE);
       }
		  
	}

}

void CAN1_RX0_IRQHandler(void)
{
    CanRxMsg RxMessage;
    //CAN_Receive(CAN1, CAN_FIFO0, &RxMessage);
    //myRxMessage1 =RxMessage;
		if(SET == CAN_GetITStatus(CAN1, CAN_IT_FF0))
		{
			 CAN_ClearITPendingBit(CAN1, CAN_IT_FF0);
		}
		else if(SET == CAN_GetITStatus(CAN1, CAN_IT_FOV0))
		{
			 CAN_ClearITPendingBit(CAN1, CAN_IT_FOV0);
		}
		else
		{
			 CAN_ClearITPendingBit(CAN1, CAN_IT_FMP0);
			 CAN_Receive(CAN1, CAN_FIFO0, &RxMessage);
			 FIFO_PUT_ONE(CAN1_RxFifo, RxMessage); 
		}
}
void CAN2_RX0_IRQHandler(void)
{
    CanRxMsg RxMessage;

    //CAN_Receive(CAN2, CAN_FIFO0, &RxMessage);
	//myRxMessage =RxMessage;
	if(SET == CAN_GetITStatus(CAN2, CAN_IT_FF0))
	{
		 CAN_ClearITPendingBit(CAN2, CAN_IT_FF0);
	}
	else if(SET == CAN_GetITStatus(CAN2, CAN_IT_FOV0))
	{
		 CAN_ClearITPendingBit(CAN2, CAN_IT_FOV0);
	}
	else
	{
		 CAN_ClearITPendingBit(CAN2, CAN_IT_FMP0);
		 CAN_Receive(CAN2, CAN_FIFO0, &RxMessage);
	     FIFO_PUT_ONE(CAN2_RxFifo, RxMessage); 
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
