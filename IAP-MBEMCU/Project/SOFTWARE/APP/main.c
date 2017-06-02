/******************** (C) COPYRIGHT 2008 STMicroelectronics ********************
* File Name          : main.c
* Author             : whq
* Version            : V2.0.1
* Date               : 20/02/2013
* Description        : Main program body
********************************************************************************
* THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
* AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
* INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
* CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
* INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*******************************************************************************/

/** @addtogroup IAP
  * @{
  */

/* Includes ------------------------------------------------------------------*/
#include "includes.h"

//#include <stdio.h>
//#include "common.h"
//#include "bsp.h"
//#include "cortexm3_macro.h"

//#include "download.h"
//#include "Port.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/


/* Private function prototypes -----------------------------------------------*/


void Main_SysTick_Config(void)
{
    SysTick_Config(SystemCoreClock / 1000);

}

int fputc(int ch, FILE *f)
{   
	USART_ClearFlag(UART4,USART_FLAG_TC);
    USART_SendData(UART4,(uint8_t)ch);
	while(USART_GetFlagStatus(UART4,USART_FLAG_TC)==RESET){};
    return ch;              
}
void MMCU_Reset(void)
{
    GPIO_ResetBits(MMCU_RST_PORT, MMCU_RST_PIN);
    Delay_1ms(50);
    GPIO_SetBits(MMCU_RST_PORT, MMCU_RST_PIN);
///	Delay_1ms(100);
}
void ResetMainMcu(void)
{
	//GPIO_SetBits(MMCU_RST_PORT,MMCU_RST_PIN);
    //Delay_1ms(50);
	GPIO_ResetBits(MMCU_RST_PORT,MMCU_RST_PIN);
    Delay_1ms(50);
	GPIO_SetBits(MMCU_RST_PORT,MMCU_RST_PIN);
}
void MApp_PowerStatus_Send(BYTE powerstatus)
{
	u8 buffer[4]={ 0x84,0x01,COM_EMCU_ID};
	buffer[3]=	powerstatus;
	IAPSendDataToMMCU(buffer,sizeof(buffer));
}
void show_welcome_message(void)
{ 
	printf("\r\n***********************************************************");
	printf("\r\nLF MBAndroid EEEmcuBootloader Build at:");
	printf("%s %s",__DATE__,__TIME__);	
	printf("\r\n***********************************************************\r\n\r\n");
}

void Show_ResetMode(void)
{
	printf("\r\nRCC_FLAG_PINRST is:%d",RCC_GetFlagStatus(RCC_FLAG_PINRST));
	printf("\r\nRCC_FLAG_SFTRST is:%d",RCC_GetFlagStatus(RCC_FLAG_SFTRST));
	printf("\r\nRCC_FLAG_IWDGRST is:%d",RCC_GetFlagStatus(RCC_FLAG_IWDGRST));
	printf("\r\nRCC_FLAG_WWDGRST is:%d",RCC_GetFlagStatus(RCC_FLAG_WWDGRST));
	printf("\r\nRCC_FLAG_LPWRRST is:%d",RCC_GetFlagStatus(RCC_FLAG_LPWRRST));
	
	RCC_ClearFlag();
	printf("\r\n");
}


/*******************************************************************************
* Function Name  : main
* Description    : Main program.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
int main(void)
{
    BspInit();	
	Main_SysTick_Config();
	Acc_Wdg_Config();	//watch dog
	UpgradeReady = 0;
	//ResetMainMcu();
	show_welcome_message();
	Show_ResetMode();
#if updatamode == 1
	if(BKP_ReadBackupRegister(BKP_DR1)==0x5A5A)	//判断是否有升级标志
#else
	if(UPDATA_VALUE == *(vu32 *)UpdataFlagAddress)	//判断是否有升级标志
#endif
	{
		ResetMainMcu();
	}
	while (1)
    {
		CommonExec();	
	#ifdef ANDROID_UPGRADE
		DealMainMcuComMag();
		//Upgrade_CMD_PROCESS();
	#else
		MApp_Proc_Uart();
	#endif
		Can1Data_Task();
		Can2Data_Task();
    }

}

#ifdef  DEBUG
/*******************************************************************************
* Function Name  : assert_failed
* Description    : Reports the name of the source file and the source line number
*                  where the assert_param error has occurred.
* Input          : - file: pointer to the source file name
*                  - line: assert_param error line source number
* Output         : None
* Return         : None
*******************************************************************************/
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif





/******************* (C) COPYRIGHT 2008 STMicroelectronics *****END OF FILE****/
