#define _SYSTEM_CONFIG_C_

#include "compile.h"
//#include "stm32f10x_lib.h"
//#include "system_config.h"
#include "port.h"


#include "stm32f10x_gpio.h"	
#include "libr.h"	
#include "main.h"	
#include "includes.h"
#include "i2c_driver.h"

#define SPI1_DR_Address  0x4001300C 
#define SPI2_DR_Address    0x4000380C

#define ADC1_DR_Address     0x4001244C
#define USART1_DR_Base      0x40013804
#define USART2_DR_Base      0x40004404
#define I2C1_SLAVE_ADDRESS7 0xa2


void NVIC_Configuration(void);
void LcdShow_Init(void);



void I2C_Configuration(void);
void ExInt_Config(void);
void Timer_Config(void);
void DAC_Config(void);
void SPI_FLASH_Init(void);
void USART_Configuration(void);
void RTC_Configuration(void);
void Time_Adjust(void);
u32 Time_Regulate(void);



	  
//系统时钟配置
void RCC_Configuration(void)
{
  DWORD   i;
 // ErrorStatus HSEStartUpStatus;
  
  /* RCC system reset(for debug purpose) */
  RCC_DeInit();

  /* Enable HSE */
 // RCC_HSEConfig(RCC_HSE_ON);

  /* Wait till HSE is ready */
//  HSEStartUpStatus = RCC_WaitForHSEStartUp();

 // if(HSEStartUpStatus == SUCCESS)
  {
    /* Enable Prefetch Buffer */
    FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);

    /* Flash 2 wait state */
    FLASH_SetLatency(FLASH_Latency_2);

    /* HCLK = SYSCLK */ //AHB分频
    RCC_HCLKConfig(RCC_SYSCLK_Div1);

    /* PCLK2 = HCLK *///APB2分频
    RCC_PCLK2Config(RCC_HCLK_Div1);

    /* PCLK1 = HCLK/2 *///APB1分频   //包括定时器
    //定时器的始终只要分频就自动倍频*2；现在为56M
    RCC_PCLK1Config(RCC_HCLK_Div1);//RCC_HCLK_Div2

    /* ADCCLK = PCLK2/4 */ //ADC分频
    RCC_ADCCLKConfig(RCC_PCLK2_Div4);

    /* PLLCLK = 8MHz * 3 = 24 MHz *///PLL倍频
    RCC_PLLConfig(RCC_PLLSource_HSI_Div2, RCC_PLLMul_6);//4//RCC_PLLConfig(RCC_PLLSource_HSE_Div1, RCC_PLLMul_4);//4

    /* Enable PLL */
    RCC_PLLCmd(ENABLE);

    /* Wait till PLL is ready */
    i=0;
    while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET)
    {
		delay_5us();
		if(i++>80000)
			break;
    }

    /* Select PLL as system clock source */
    RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);
    i=0;
    /* Wait till PLL is used as system clock source */
    while(RCC_GetSYSCLKSource() != 0x08)
    {
		delay_5us();
		if(i++>80000)
			break;
    }
  }

  /* 使能对应的外设时钟 --------------------------------------------------*/
  /* TIM2 ,TIM3 and TIM4 clocks enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2 | RCC_APB1Periph_TIM3 |RCC_APB1Periph_TIM4, ENABLE);

  /* DMA clock enable */
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1 ,ENABLE);

  /* Enable ADC1 clock */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);
  //RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC2, ENABLE);
  //RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC3, ENABLE);

  /* SPI2 Periph clock enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);  

  /* Enable USART2 clocks */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);    
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);   
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, ENABLE);   
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, ENABLE);   
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);  
  /* DAC Periph clock enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE);
  
  /* Enable GPIOA, GPIOB, GPIOC, GPIOD, GPIOE and AFIO clocks */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB |RCC_APB2Periph_GPIOC
         | RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, ENABLE);

}

void RCC_Close(void)
{
  //DWORD   i;
GPIO_InitTypeDef GPIO_InitStructure;

#if 0
  /* 使能对应的外设时钟 --------------------------------------------------*/
  /* TIM2 ,TIM3 and TIM4 clocks enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2 | RCC_APB1Periph_TIM3 |RCC_APB1Periph_TIM4, DISABLE);

  /* DMA clock enable */
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1 ,DISABLE);

  /* Enable ADC1 clock */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, DISABLE);
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC2, DISABLE);
  //RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC3, ENABLE);

  /* SPI2 Periph clock enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, DISABLE);  

  /* Enable USART2 clocks */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, DISABLE);    
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, DISABLE);   
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, DISABLE);   
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, DISABLE);   
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, DISABLE);  
  /* DAC Periph clock enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE);
  
  /* Enable GPIOA, GPIOB, GPIOC, GPIOD, GPIOE and AFIO clocks */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB |RCC_APB2Periph_GPIOC
         | RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, ENABLE);

#endif

  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|
  								GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7|GPIO_Pin_8|GPIO_Pin_9|
  								GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|
  								GPIO_Pin_15;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_Init(GPIOA, &GPIO_InitStructure);  

  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|
  								GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7|GPIO_Pin_9|
  								GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|
  								GPIO_Pin_15;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_Init(GPIOB, &GPIO_InitStructure);  //GPIO_Pin_8|
  
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|
  								GPIO_Pin_5|GPIO_Pin_8|GPIO_Pin_9|
  								GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|
  								GPIO_Pin_15;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_Init(GPIOC, &GPIO_InitStructure);  //GPIO_Pin_6|GPIO_Pin_7|
 
  
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|
  								GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7|GPIO_Pin_8|GPIO_Pin_9|
  								GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|GPIO_Pin_15;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_Init(GPIOD, &GPIO_InitStructure);  
    


}

//系统时钟配置
void SYSCLKConfig_STOP(void)
{
  DWORD   i;
 // ErrorStatus HSEStartUpStatus;
  
  /* Enable HSE */
 // RCC_HSEConfig(RCC_HSE_ON);

  /* Wait till HSE is ready */
//  HSEStartUpStatus = RCC_WaitForHSEStartUp();

 // if(HSEStartUpStatus == SUCCESS)
  {
    /* Enable PLL */
    RCC_PLLCmd(ENABLE);

    /* Wait till PLL is ready */
    i=0;
    while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET)
    {
		delay_5us();
		if(i++>80000)
			break;
    }

    /* Select PLL as system clock source */
    RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);
    i=0;
    /* Wait till PLL is used as system clock source */
    while(RCC_GetSYSCLKSource() != 0x08)
    {
		delay_5us();
		if(i++>80000)
			break;
    }
  }



}

//IO口配置
void GPIO_Configuration(void)
{

	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_AFIODeInit();


	//-------------power -and mute------------------------

	//R24_OE Car_Display sel port
	GPIO_InitStructure.GPIO_Pin = R24_OE_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(R24_OE_PORT, &GPIO_InitStructure);

	//Camera_OE HD_Camera_Display sel port
	GPIO_InitStructure.GPIO_Pin = CAMERA_OE_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(CAMERA_OE_PORT, &GPIO_InitStructure);


	GPIO_InitStructure.GPIO_Pin = MUTE_NAVI_MUTE_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(MUTE_NAVI_MUTE_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = MUTE_PHONE_MUTE_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(MUTE_PHONE_MUTE_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = SW_GPS_CAR_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(SW_GPS_CAR_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = POWER_SYSTEM_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(POWER_SYSTEM_PORT, &GPIO_InitStructure);



	GPIO_InitStructure.GPIO_Pin = POWER_REAR_CAMERA_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(POWER_REAR_CAMERA_PORT, &GPIO_InitStructure);

/*
	GPIO_InitStructure.GPIO_Pin = POWER_DVD_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(POWER_DVD_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = POWER_DVBCMMB_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(POWER_DVBCMMB_PORT, &GPIO_InitStructure);
*/


/*
	GPIO_InitStructure.GPIO_Pin = POWER_AUDIO_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(POWER_AUDIO_PORT, &GPIO_InitStructure);
*/

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = POWER_CarRec_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(POWER_CarRec_PORT, &GPIO_InitStructure);




	GPIO_InitStructure.GPIO_Pin = POWER_TFT_LED__PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(POWER_TFT_LED__PORT, &GPIO_InitStructure);
	//------------MCU comunication--------------------
	GPIO_InitStructure.GPIO_Pin = COM_MCU_RX_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(COM_MCU_RX_PORT, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = COM_MCU_TX_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(COM_MCU_TX_PORT, &GPIO_InitStructure);

	//------------GPS comunication--------------------
	GPIO_InitStructure.GPIO_Pin = COM_GPS_RX_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(COM_GPS_RX_PORT, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = COM_GPS_TX_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(COM_GPS_TX_PORT, &GPIO_InitStructure);
	//----------------------DVD---------------------
	GPIO_InitStructure.GPIO_Pin = COM_DVD_IPOD_CMMB_MP5_RX_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(COM_DVD_IPOD_CMMB_MP5_RX_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = COM_DVD_IPOD_CMMB_MP5_TX_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(COM_DVD_IPOD_CMMB_MP5_TX_PORT, &GPIO_InitStructure);

	
	//-----------ACC WAKEUP---------------------------
	/* Connect Key Button EXTI Line to Key Button GPIO Pin */
	GPIO_InitStructure.GPIO_Pin = DET_ACCCHECK_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_Init(DET_ACCCHECK_PORT, &GPIO_InitStructure);
	//-------------DET-------------------------------
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOC, &GPIO_InitStructure);
	//------------------CAM DET-----------------------------------
	GPIO_InitStructure.GPIO_Pin = DET_CAM_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_Init(DET_CAM_PORT, &GPIO_InitStructure);

	//-------------------DIMMER-------------------------------
	//GPIO_InitStructure.GPIO_Pin = DIMMER_PIN;
	//GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
	//GPIO_Init(DIMMER_PORT, &GPIO_InitStructure);


	//------- navi or OEM video sel port----
	GPIO_InitStructure.GPIO_Pin = NAVI_OE_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	//GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(NAVI_OE_PORT, &GPIO_InitStructure);

	// ------ 125R24 reset port----
	GPIO_InitStructure.GPIO_Pin = APIX_OE_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
    GPIO_Init(APIX_OE_PORT, &GPIO_InitStructure);

		/*  A100 93LC46 CS  */
	GPIO_InitStructure.GPIO_Pin = A100_CS_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
    GPIO_Init(A100_CS_PORT, &GPIO_InitStructure);

	//-----93LC46 IIC_SDA IIC_SCL Sel MCU or 125r24 port
	GPIO_InitStructure.GPIO_Pin = A100_IN_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
    GPIO_Init(A100_IN_PORT, &GPIO_InitStructure);


	//-------------KnobKey--Miller.Tao,20140911------------------------
	/*
	GPIO_InitStructure.GPIO_Pin = KnobENC_ENDB_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	//GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(KnobENC_ENDB_PORT, &GPIO_InitStructure);
	*/
	GPIO_InitStructure.GPIO_Pin = KnobKey_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
	GPIO_Init(KnobKey_PORT, &GPIO_InitStructure);
	//-----------------KEY-----------------------------------

	
	GPIO_InitStructure.GPIO_Pin = KEY_DVD_CP_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
	GPIO_Init(KEY_DVD_CP_PORT, &GPIO_InitStructure);
	//-------------AV -------------------------------
	
	GPIO_InitStructure.GPIO_Pin = AV_IIC_CLK_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(AV_IIC_CLK_PORT, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = AV_IIC_DAT_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
	GPIO_Init(AV_IIC_DAT_PORT, &GPIO_InitStructure);

	//-------------TDA7729 iic--------------
	GPIO_InitStructure.GPIO_Pin = TDA7729_IIC_CLK_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(TDA7729_IIC_CLK_PORT, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = TDA7729_IIC_DAT_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
	GPIO_Init(TDA7729_IIC_DAT_PORT, &GPIO_InitStructure);
	
	//----------------CMMB---------------------------
	GPIO_InitStructure.GPIO_Pin = CMMB_IR_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(CMMB_IR_PORT, &GPIO_InitStructure);
	//----------------------CAN--------------------


	GPIO_InitStructure.GPIO_Pin = CAN_EN_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(CAN_EN_PORT, &GPIO_InitStructure);
	GPIO_InitStructure.GPIO_Pin = CAN_STB_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(CAN_STB_PORT, &GPIO_InitStructure);
/*	
	GPIO_InitStructure.GPIO_Pin = CAN_ERR_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(CAN_ERR_PORT, &GPIO_InitStructure);
	*/
	/* Configure CAN pin: RX */
	GPIO_InitStructure.GPIO_Pin = CAN_RX_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_Init(CAN_RX_PORT, &GPIO_InitStructure);
	/* Configure CAN pin: TX */
	GPIO_InitStructure.GPIO_Pin = CAN_TX_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(CAN_TX_PORT, &GPIO_InitStructure);

	//GPIO_PinRemapConfig(GPIO_Remap1_CAN1, ENABLE);

	/* Configure CAN2 pin: RX */
	GPIO_InitStructure.GPIO_Pin = CAN2_RX_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_Init(CAN2_RX_PORT, &GPIO_InitStructure);
	/* Configure CAN pin: TX */
	GPIO_InitStructure.GPIO_Pin = CAN2_TX_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(CAN2_TX_PORT, &GPIO_InitStructure);

	//GPIO_PinRemapConfig(GPIO_Remap1_CAN, ENABLE);

	GPIO_InitStructure.GPIO_Pin = (CTOUCH_INT_PIN);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(CTOUCH_INT_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = (CTOUCH_RST_PIN);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(CTOUCH_RST_PORT, &GPIO_InitStructure);

	/*!< Configure sEE_I2C pins: SCL */
	GPIO_InitStructure.GPIO_Pin = CTOUCH_SCL_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;//
	GPIO_Init(CTOUCH_SCL_PORT, &GPIO_InitStructure);

	/*!< Configure sEE_I2C pins: SDA */
	GPIO_InitStructure.GPIO_Pin = CTOUCH_SDA_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
	GPIO_Init(CTOUCH_SDA_PORT, &GPIO_InitStructure);

	//
/*	GPIO_InitStructure.GPIO_Pin = (GPIO_Pin_13);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	GPIO_Init(GPIOC, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = (MTN5_CLK_PIN|MTN5_DATA_PIN);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);
*/
	GPIO_InitStructure.GPIO_Pin = (MTN5_BUSY_PIN);
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	//GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(MTN5_BUSY_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = TW8836_RST_Pin;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(TW8836_RST_PORT, &GPIO_InitStructure);

}

void System_Normal_ClkSetup(void)
{

    //-----------------------config clock--------------------------
    /* Enable PWR and BKP clock */
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
    PWR_WakeUpPinCmd(ENABLE);
    /* Allow access to BKP Domain */
    PWR_BackupAccessCmd(ENABLE);
    //----------------------config AFIO---------------------
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
     //----------------------config CAN---------------------
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN2, ENABLE);
    //----------------------config GPIO--------------------
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA  | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | \
                           RCC_APB2Periph_GPIOD  , ENABLE);
    //RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA  | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | \
    //                       RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_GPIOF | RCC_APB2Periph_GPIOG , ENABLE);//Miller.Tao2014-09-10
	//----------------------config DMA---------------------
	RCC_AHBPeriphClockCmd( RCC_AHBPeriph_DMA1 | RCC_AHBPeriph_SRAM | RCC_AHBPeriph_FLITF | RCC_AHBPeriph_CRC , ENABLE);
    //----------------------config uart -------------------
   // RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
	
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, ENABLE);
	
    //RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C1, ENABLE);
    //----------------------config timer--------------------------
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
	
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
    //----------------------config ADC1--------------------------


}


void GPIO_keylight_Configuration(void)
{}
	
void GPIO_Off_Init(void)
{
/* PORT A Definition*/
#if 0 //miller.tao20150731
	DAC_SetChannel2Data(DAC_Align_8b_R, 0x0);	//DAC
	GPIO_WriteBit(GPIOA, P_RADIO_PWR, Bit_RESET);

	GPIO_WriteBit(GPIOA, P_DVR_PWR, Bit_RESET);
	GPIO_WriteBit(GPIOA, P_M_IN2, Bit_RESET);
	GPIO_WriteBit(GPIOA, P_DISC_LED, Bit_RESET);

/* PORT B Definition*/

	GPIO_WriteBit(GPIOB, P_PEC_RST, Bit_RESET);
	GPIO_WriteBit(GPIOB, P_TV_SDA, Bit_RESET);
	GPIO_WriteBit(GPIOB, P_AUDIO_SEL1, Bit_SET);
	GPIO_WriteBit(GPIOB, P_AUDIO_SEL2, Bit_RESET);
	GPIO_WriteBit(GPIOB, P_TW8823_SCL, Bit_RESET);
	GPIO_WriteBit(GPIOB, P_TW8823_SDA, Bit_RESET);

	GPIO_WriteBit(GPIOB, P_PEC_CLK, Bit_RESET);
	GPIO_WriteBit(GPIOB, P_MAIN_SCL, Bit_RESET);
	GPIO_WriteBit(GPIOB, P_MAIN_SDA, Bit_RESET);
	GPIO_WriteBit(GPIOB, P_8823_SPI_CS, Bit_RESET);
	
	GPIO_WriteBit(GPIOB, P_GOD_RST, Bit_RESET);


	GPIO_WriteBit(GPIOC, P_TV_PWR , Bit_RESET);
	GPIO_WriteBit(GPIOC, P_DVD_RST , Bit_RESET);

	GPIO_WriteBit(GPIOC, P_TV_SEL , Bit_RESET);


	GPIO_WriteBit(GPIOD, P_TW8823_RST , Bit_RESET);

	GPIO_WriteBit(GPIOD, P_DTVTXD_ATVSCL , Bit_RESET);

	GPIO_WriteBit(GPIOD, P_RES_SEL , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_LED_COL1 , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_LED_COL2 , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_MUTE , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_MUTE_ZONE , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_STBY , Bit_RESET);

	GPIO_WriteBit(GPIOE, P_DVDUSB_SEL , Bit_RESET);
	GPIO_WriteBit(GPIOE, P_DVR_WRXD , Bit_RESET);
	GPIO_WriteBit(GPIOE, P_2ZONE_WTXD, Bit_RESET);
	GPIO_WriteBit(GPIOE, P_2ZONE_RTXD , Bit_RESET);
    #endif

	
}


void GPIO_On_Init(void)
{
/* PORT A Definition*/
       #if 0//miller.tao20150731
	DAC_SetChannel2Data(DAC_Align_8b_R, 0x0);   //DAC
	GPIO_WriteBit(GPIOA, P_RADIO_PWR, Bit_RESET);

	GPIO_WriteBit(GPIOA, P_DVR_PWR, Bit_RESET);
	GPIO_WriteBit(GPIOA, P_M_IN2, Bit_RESET);
	GPIO_WriteBit(GPIOA, P_DISC_LED, Bit_RESET);

	GPIO_WriteBit(GPIOB, P_PEC_RST, Bit_SET);
	GPIO_WriteBit(GPIOB, P_TV_SDA, Bit_SET);
	GPIO_WriteBit(GPIOB, P_AUDIO_SEL1, Bit_SET);
	GPIO_WriteBit(GPIOB, P_AUDIO_SEL2, Bit_RESET);
	GPIO_WriteBit(GPIOB, P_TW8823_SCL, Bit_SET);
	GPIO_WriteBit(GPIOB, P_TW8823_SDA, Bit_SET);
	
	GPIO_WriteBit(GPIOB, P_PEC_CLK, Bit_SET);
	GPIO_WriteBit(GPIOB, P_MAIN_SCL, Bit_SET);
	GPIO_WriteBit(GPIOB, P_MAIN_SDA, Bit_SET);
	GPIO_WriteBit(GPIOB, P_8823_SPI_CS, Bit_RESET);
	
	GPIO_WriteBit(GPIOB, P_GOD_RST, Bit_SET);


	GPIO_WriteBit(GPIOC, P_TV_PWR , Bit_RESET);
	GPIO_WriteBit(GPIOC, P_DVD_RST , Bit_RESET);

	GPIO_WriteBit(GPIOC, P_TV_SEL , Bit_RESET);


	GPIO_WriteBit(GPIOD, P_DTVTXD_ATVSCL , Bit_SET);

	GPIO_WriteBit(GPIOD, P_RES_SEL , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_LED_COL1 , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_LED_COL2 , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_MUTE , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_MUTE_ZONE , Bit_RESET);
	GPIO_WriteBit(GPIOD, P_STBY , Bit_RESET);

	GPIO_WriteBit(GPIOE, P_DVDUSB_SEL , Bit_RESET);
	GPIO_WriteBit(GPIOE, P_DVR_WRXD , Bit_RESET);
	GPIO_WriteBit(GPIOE, P_2ZONE_WTXD, Bit_SET);
	GPIO_WriteBit(GPIOE, P_2ZONE_RTXD , Bit_SET);
        #endif
}	

//中断配置
void NVIC_Configuration(void)
{
	NVIC_InitTypeDef NVIC_InitStructure;


	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);

	NVIC_InitStructure.NVIC_IRQChannel = EXTI9_5_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	/* Enable the TIM2 gloabal Interrupt */
	NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
	
#if 0
	//------------MCU-----------------------------------
	NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
	
#endif
	//------------GPS-----------------------------------
	NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
	#if 0
	//------------Q3 Rec-----------------------------------
	NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	//------------DVD ipod-----------------------------------
	NVIC_InitStructure.NVIC_IRQChannel = UART5_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
	
#endif
	//------------BT-----------------------------------
	#if 0
	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);
	//---------------CAN-------------------------------
#endif

    NVIC_InitStructure.NVIC_IRQChannel = CAN1_RX0_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    NVIC_InitStructure.NVIC_IRQChannel = CAN2_RX0_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);


#if 0
  NVIC_InitStructure.NVIC_IRQChannel = RTCAlarm_IRQn;//RTCAlarm_IRQChannel;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
  #endif
	//---------------SYSTEM TICK------------------------
	//n=0x00~0x03 设置Systick为抢占优先级0
	//n=0x04~0x07 设置Systick为抢占优先级1
	//n=0x08~0x0B 设置Systick为抢占优先级2
	//n=0x0C~0x0F 设置Systick为抢占优先级3

	/*
	这时不能显式的看出抢先式优先级与子优先级，写入的优先级需要根据优先级组的配置来选择。
	NVIC_SetPriority函数指定中断优先级的寄存器位（STM32只用4位来表示优先级）的数据，
	例如中断优先级组设置为了2，即高2位用于指定抢占式优先级，低2位用于指定响应优先级，
	0x00~0x03高2位为0，所以抢占优先级为0；0x04~0x07高2位为1，所以抢占优先级为1，以此类推。
	*/

	NVIC_SetPriority(SysTick_IRQn, 1);

}


void EXIT_Control(BYTE type,BYTE on_off)
{}

void EXIT_all_off(void)
{
	// USART_ITConfig(UART4, USART_IT_RXNE, DISABLE);
	//SysTick_ITConfig(DISABLE);
}	



/*******************************************************************************
* Function Name  : RTC_Configuration
* Description    : Configures the RTC.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
#if 1
void RTC_Configuration(void)
{
	DWORD i;
	 EXTI_InitTypeDef EXTI_InitStructure;

	  /* Configure EXTI Line17(RTC Alarm) to generate an interrupt on rising edge */
	  EXTI_InitStructure.EXTI_Line = EXTI_Line17;
	  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
	  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	  EXTI_Init(&EXTI_InitStructure);
  
  /* Enable PWR and BKP clocks */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);

  /* Allow access to BKP Domain */
  PWR_BackupAccessCmd(ENABLE);

  /* Reset Backup Domain */
  BKP_DeInit();

  /* Enable the LSI OSC */
  RCC_LSICmd(ENABLE);
  /* Wait till LSI is ready */
	i=0;
  while (RCC_GetFlagStatus(RCC_FLAG_LSIRDY) == RESET)
  {
		delay_5us();
		if(i++>80000)
			break;		
  }

  /* Select the RTC Clock Source */
  RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);

  /* Enable RTC Clock */
  RCC_RTCCLKCmd(ENABLE);

  /* Wait for RTC registers synchronization */
  RTC_WaitForSynchro();

  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();

  /* Enable the RTC Second */
  //RTC_ITConfig(RTC_IT_SEC, ENABLE);

  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();

  /* Set RTC prescaler: set RTC period to 1sec */
  RTC_SetPrescaler(40000);

  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();

  /* To output second signal on Tamper pin, the tamper functionality
	   must be disabled (by default this functionality is disabled) */
 // BKP_TamperPinCmd(DISABLE);

  /* Enable the RTC Second Output on Tamper Pin */
  //BKP_RTCOutputConfig(BKP_RTCOutputSource_Second);

  /* Enable the RTC Alarm interrupt */
  RTC_ITConfig(RTC_IT_ALR, ENABLE);
	/* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();	
}
	
#else
	
void RTC_Configuration(void)
{
	/* Enable PWR and BKP clocks */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);

	/* Allow access to BKP Domain */
	PWR_BackupAccessCmd(ENABLE);

	/* Reset Backup Domain */
	BKP_DeInit();

	/* Enable the LSI OSC */
	RCC_LSICmd(ENABLE);
	/* Wait till LSI is ready */
	while (RCC_GetFlagStatus(RCC_FLAG_LSIRDY) == RESET)
		{}
	/* Select the RTC Clock Source */
	RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);

	/* Enable RTC Clock */
	RCC_RTCCLKCmd(ENABLE);

	/* Wait for RTC registers synchronization */
	RTC_WaitForSynchro();

	/* Wait until last write operation on RTC registers has finished */
	RTC_WaitForLastTask();

	/* Enable the RTC Second */
	RTC_ITConfig(RTC_IT_ALR, ENABLE);

	/* Wait until last write operation on RTC registers has finished */
	RTC_WaitForLastTask();

	/* Set RTC prescaler: set RTC period to 1sec */
	RTC_SetPrescaler(40000);

	/* Wait until last write operation on RTC registers has finished */
	RTC_WaitForLastTask();

}
#endif



/*******************************************************************************
* Function Name  : Time_Adjust
* Description    : Adjusts time.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void Time_Adjust(void)
{
  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();
  /* Change the current time */
  RTC_SetCounter(Time_Regulate());
  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();
}

/*******************************************************************************
* Function Name  : Time_Regulate
* Description    : Returns the time entered by user, using Hyperterminal.
* Input          : None
* Output         : None
* Return         : Current time RTC counter value
*******************************************************************************/
u32 Time_Regulate(void)
{
  u32 Tmp_HH = 0x21, Tmp_MM = 0x31, Tmp_SS = 0x32;

  /* Return the value to store in RTC counter register */
  return((Tmp_HH*3600 + Tmp_MM*60 + Tmp_SS));
}

/*******************************************************************************
* Function Name  : DMA_Configuration
* Description    : Configures the DMA.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA_Configuration(BYTE *Receive_Buf,u16 NumByteToRead)
{
  
}


//外部中断
void ExInt_Config(void)
{
    //EXTI_InitTypeDef EXTI_InitStructure;

#if 0
  //RDS
   GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource0);
   /* Configure EXTI Line9 to generate an interrupt on falling edge */
   EXTI_InitStructure.EXTI_Line = EXTI_Line0;
   EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
   EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
   EXTI_InitStructure.EXTI_LineCmd = ENABLE;
   EXTI_Init(&EXTI_InitStructure);	
#endif	

  //ENCODE
 //  GPIO_EXTILineConfig(GPIO_PortSourceGPIOE, GPIO_PinSource1);
   /* Configure EXTI Line9 to generate an interrupt on falling edge */
 /*  EXTI_InitStructure.EXTI_Line = EXTI_Line1;
   EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
   EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;//EXTI_Trigger_Rising;//
   EXTI_InitStructure.EXTI_LineCmd = ENABLE;
   EXTI_Init(&EXTI_InitStructure);	*/
   



}


/*******************************************************************************
* Function Name  : SPI_FLASH_Init
* Description    : Initializes the peripherals used by the SPI FLASH driver.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void SPI_FLASH_Init(void)
{

}

//定时器
/*******************************************************************************
* Function Name  : LcdShow_Init
* Description    : Configure the lcd dispaly: TIM4 initialize in Output Compare
*                  Timing Mode
* Input          : None
* Return         : None
* Comment        : TIM2 Configuration: Output Compare Timing Mode:
                   TIM2CLK = 36 *2 =72MHz, Prescaler = 17, TIM2 counter clock = 4 MHz
                   TIM2 update Period = ARR / TIM2 counter Period = 2 ms
                   CC1 OC period = 1ms
*******************************************************************************/
	void Main_SysTick_Config(void)
	{
		SysTick_Config(SystemCoreClock / 1000);
	
	}
	
	void TIMER_Configuration(void)
	{
	//	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	//	TIM_OCInitTypeDef TIM_OCInitStructure;
		//TIM_ICInitTypeDef TIM_ICInitStructure;

		
#if  0
		CCR1_Val = 200;
		CCR2_Val = 5000;
		CCR3_Val = 2000;
		CCR4_Val = 4000;

		/* ---------------------------------------------------------------
		TIM2 Configuration: Output Compare Timing Mode:
		TIM2CLK = 36 MHz, Prescaler = 4, TIM2 counter clock = 7.2 MHz
		CC1 update rate = TIM2 counter clock / CCR1_Val = 146.48 Hz
		CC2 update rate = TIM2 counter clock / CCR2_Val = 219.7 Hz
		CC3 update rate = TIM2 counter clock / CCR3_Val = 439.4 Hz
		CC4 update rate = TIM2 counter clock / CCR4_Val =  878.9 Hz
		--------------------------------------------------------------- */
		/* Time base configuration */
	    TIM_TimeBaseStructure.TIM_Period = 65535;
	    TIM_TimeBaseStructure.TIM_Prescaler = 0;
	    TIM_TimeBaseStructure.TIM_ClockDivision = 0;
	    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	    TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);
	    /* Prescaler configuration */
	    TIM_PrescalerConfig(TIM2, 71, TIM_PSCReloadMode_Immediate);
	    /* Output Compare Timing Mode configuration: Channel1 */
	    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_Timing;
	    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
	    TIM_OCInitStructure.TIM_Pulse = CCR1_Val;
	    //TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
	    TIM_OC1Init(TIM2, &TIM_OCInitStructure);
	    TIM_OC1PreloadConfig(TIM2, TIM_OCPreload_Disable);
	    /* Output Compare Timing Mode configuration: Channel2 */
	    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
	    TIM_OCInitStructure.TIM_Pulse = CCR2_Val;
	    TIM_OC2Init(TIM2, &TIM_OCInitStructure);
	    TIM_OC2PreloadConfig(TIM2, TIM_OCPreload_Disable);
	    /* Output Compare Timing Mode configuration: Channel3 */
	    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
	    TIM_OCInitStructure.TIM_Pulse = CCR3_Val;
	    TIM_OC3Init(TIM2, &TIM_OCInitStructure);
	    TIM_OC3PreloadConfig(TIM2, TIM_OCPreload_Disable);
	    /* Output Compare Timing Mode configuration: Channel4 */
	    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
	    TIM_OCInitStructure.TIM_Pulse = CCR4_Val;
	    TIM_OC4Init(TIM2, &TIM_OCInitStructure);
	    TIM_OC4PreloadConfig(TIM2, TIM_OCPreload_Disable);
	    /* TIM IT enable */
	    TIM_ITConfig(TIM2, TIM_IT_CC1 | TIM_IT_CC2 | TIM_IT_CC3 | TIM_IT_CC4, DISABLE)
	    ;
	    //TIM_ITConfig(TIM2, TIM_IT_CC1 | TIM_IT_CC2 | TIM_IT_CC3 | TIM_IT_CC4, ENABLE);
	    /* TIM2 enable counter */
	    TIM_Cmd(TIM2, ENABLE);
#endif
		
	}


void PWM_Configuration(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	TIM_TimeBaseInitTypeDef   TIM_TimeBaseStructure;
	TIM_OCInitTypeDef  TIM_OCInitStructure;
	
	/* GPIOB clock enable */
	//GPIOB使用的RCC时钟使能
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC|RCC_APB2Periph_AFIO, ENABLE);
	//配置使用的GPIO
	GPIO_InitStructure.GPIO_Pin = TFT_LED_LUM_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;//GPIO_Mode_Out_PP;//;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(TFT_LED_LUM_PORT, &GPIO_InitStructure);

	/* TIM3 clock enable */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
	GPIO_PinRemapConfig(GPIO_FullRemap_TIM3, ENABLE);	//管脚映射
	//不分频。PWM频率=72000000/900=80Khz
	/* ---------------------------------------------------------------
	TIM3CLK 即PCLK1=36MHz
	TIM3 Configuration: generate 1 PWM signals :
		TIM3CLK = 36 MHz, Prescaler = 0x0, TIM3 counter clock = 36 MHz
		TIM3 ARR Register = 900 => TIM3 Frequency = TIM3 counter clock/(ARR + 1)
		TIM3 Frequency = 36 KHz.
		TIM3 Channel2 duty cycle = (TIM3_CCR2/ TIM3_ARR)* 100 
	TIM3CLK = 36 MHz, Prescaler = 0, TIM3 counter clock = 36MHz
	--------------------------------------------------------------- */
	/* Time base configuration */
	TIM_TimeBaseStructure.TIM_Period = 900; //设置在下一个更新事件装入活动的自动重装载寄存器周期的值  5K
	TIM_TimeBaseStructure.TIM_Prescaler = 16; //设置用来作为TIMx时钟频率除数的预分频值  
	TIM_TimeBaseStructure.TIM_ClockDivision = 0; //设置时钟分割:TDTS = Tck_tim
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  //TIM向上计数模式
	TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure); //根据TIM_TimeBaseInitStruct中指定的参数初始化TIMx的时间基数单位

	/* Output Compare Active Mode configuration: Channel3 */
	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM2; //选择定时器模式:TIM脉冲宽度调制模式2
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable; //比较输出使能
	TIM_OCInitStructure.TIM_Pulse = 450;                   //设置待装入捕获比较寄存器的脉冲值，初始的占空比
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High; //输出极性:TIM输出比较极性高
	TIM_OC3Init(TIM3, &TIM_OCInitStructure);  //根据TIM_OCInitStruct中指定的参数初始化外设TIMx
	TIM_OC3PreloadConfig(TIM3, TIM_OCPreload_Enable);  //使能TIMx在CCR2上的预装载寄存器
	//上面两句中的OCx确定了是channle几，要是OC3则是channel 3  

	TIM_ARRPreloadConfig(TIM3, ENABLE); //使能TIMx在ARR上的预装载寄存器 

	/* TIM3 enable counter */
	//TIM_ITConfig(TIM3, TIM_IT_CC1, ENABLE );
	TIM_Cmd(TIM3, ENABLE); //使能TIMx外设
}

void Bright_Adjust(u8 value)
{
	if(value < 65)
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_1);
    }
    else if(value < 64+(1*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_2);
    }
    else if(value < 64+(2*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_3);
    }
    else if(value < 64+(3*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_4);
    }
    else if(value < 64+(4*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_5);
    }
    else if(value < 64+(5*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_6);
    }
    else if(value < 64+(6*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_7);
    }
    else if(value < 64+(7*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_8);
    }
    else if(value < 64+(8*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_9);
    }
    else if(value < 64+(9*17))
    {
        TIM_SetCompare3(TIM3, LUM_VALUE_10);
    }
}



//ADC
void ADC_Config(void)
{
	ADC_InitTypeDef ADC_InitStructure;
	ADC_StructInit(&ADC_InitStructure);
	/* ADC1 configuration ------------------------------------------------------*/
	ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
	ADC_InitStructure.ADC_ScanConvMode = ENABLE;
	ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
	ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
	ADC_InitStructure.ADC_NbrOfChannel = 1; // 1
	ADC_Init(ADC1, &ADC_InitStructure);
	/* ADC1 regular channel14 configuration */
	//ADC_RegularChannelConfig(ADC1, ADC_Channel_5, 1, ADC_SampleTime_55Cycles5);
	//ADC_RegularChannelConfig(ADC1, ADC_Channel_9, 2, ADC_SampleTime_55Cycles5);
	ADC_RegularChannelConfig(ADC1, ADC_Channel_4, 1, ADC_SampleTime_55Cycles5);
	//ADC_RegularChannelConfig(ADC1, ADC_Channel_5, 2, ADC_SampleTime_55Cycles5);
	//ADC_RegularChannelConfig(ADC1, ADC_Channel_15, 4, ADC_SampleTime_55Cycles5);
	/* Enable ADC1 DMA */
	ADC_DMACmd(ADC1, ENABLE);
	/* Enable ADC1 */
	ADC_Cmd(ADC1, ENABLE);
	/* Enable ADC1 reset calibaration register */
	ADC_ResetCalibration(ADC1);
	/* Check the end of ADC1 reset calibration register */
	while (ADC_GetResetCalibrationStatus(ADC1));
	/* Start ADC1 calibaration */
	ADC_StartCalibration(ADC1);
	/* Check the end of ADC1 calibration */
	while (ADC_GetCalibrationStatus(ADC1));
	ADC_SoftwareStartConvCmd(ADC1, ENABLE); //使能ADC1软件开始转换
}

/*******************************************************************************
 * Function Name  : NVIC_STANBY_CAN_Configuration
 * Description    : Configures Vector Table base location.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void NVIC_STANBY_CAN_Configuration(void)
{
    NVIC_InitTypeDef NVIC_InitStructure;
    /* Configure one bit for preemption priority */
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1);


#if 1
    NVIC_InitStructure.NVIC_IRQChannel = CAN1_RX1_IRQn;//USB_LP_CAN1_RX0_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x2;
    NVIC_InitStructure.NVIC_IRQChannelCmd = DISABLE;
    NVIC_Init(&NVIC_InitStructure);
#endif
    /* CAN FIFO0 message pending interrupt enable */
    CAN_ITConfig(CAN1, CAN_IT_FMP0 | CAN_IT_FF0, DISABLE);
    /* CAN FIFO0 message pending interrupt enable */
    //CAN_ITConfig(CAN2, CAN_IT_FMP0, DISABLE);


}




void DAC_Config(void)
{
   DAC_InitTypeDef  DAC_InitStructure;
   //GPIO_InitTypeDef GPIO_InitStructure;
  
  DAC_InitStructure.DAC_Trigger = DAC_Trigger_None; //DAC_Trigger_Software;
  DAC_InitStructure.DAC_WaveGeneration = DAC_WaveGeneration_Noise;
  DAC_InitStructure.DAC_LFSRUnmask_TriangleAmplitude = DAC_LFSRUnmask_Bits8_0;
  DAC_InitStructure.DAC_OutputBuffer = DAC_OutputBuffer_Enable;
  DAC_Init(DAC_Channel_1, &DAC_InitStructure);

  /* Enable DAC Channel1 */
  DAC_Cmd(DAC_Channel_1, ENABLE);
  DAC_SetChannel1Data(DAC_Align_8b_R, 0x80);	
}

void STM32_Canbus_Config(void)
{}

/*******************************************************************************
 * Function Name  : USART_Configuration
 * Description	  : Configures the different usart.
 * Input		  : None
 * Output		  : None
 * Return		  : None
 *******************************************************************************/
void USART_Configuration(void)
{
	USART_InitTypeDef USART_InitStructure;
	/*************************DVD IPOD MP5******************************/
#if 1 //miller.tao20150718
	USART_InitStructure.USART_BaudRate = 9600;

	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	/* Configure USART5 */
	USART_Init(UART5, &USART_InitStructure);
	/* Enable USART5 Receive  interrupts */
	USART_ITConfig(UART5, USART_IT_RXNE, ENABLE);
	USART_ITConfig(UART5, USART_IT_TXE, DISABLE);
	/* Enable the USART5 */
	USART_Cmd(UART5, ENABLE);

#endif

	/*************************MCU TO MCU******************************/
	USART_InitStructure.USART_BaudRate = 115200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(USART2, &USART_InitStructure);
	/* Enable USART2 DMA TX request */
	//USART_DMACmd(USART2, USART_DMAReq_Tx, ENABLE);
	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);
	USART_ITConfig(USART2, USART_IT_TXE, DISABLE);
	USART_Cmd(USART2, ENABLE);

	/*************************MCU TO GPS******************************/
	USART_InitStructure.USART_BaudRate = 19200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(USART3, &USART_InitStructure);
	/* Enable USART2 DMA TX request */
	//USART_DMACmd(USART2, USART_DMAReq_Tx, ENABLE);
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
	USART_ITConfig(USART3, USART_IT_TXE, DISABLE);
	USART_Cmd(USART3, ENABLE);

	/*************************MCU TO BT******************************/
	#if 0//miler.tao20150810
	USART_InitStructure.USART_BaudRate = 19200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(USART1, &USART_InitStructure);
	/* Enable USART1 DMA TX request */
	//USART_DMACmd(USART1, USART_DMAReq_Tx, ENABLE);
	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
	USART_ITConfig(USART1, USART_IT_TXE, DISABLE);
	USART_Cmd(USART1, ENABLE);
	#endif

#if 0
	/*************************MCU TO KEY REC******************************/
	USART_InitStructure.USART_BaudRate = 19200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(UART4, &USART_InitStructure);
	/* Enable USART1 DMA TX request */
	//USART_DMACmd(USART1, USART_DMAReq_Tx, ENABLE);
	USART_ITConfig(UART4, USART_IT_RXNE, ENABLE);
	USART_ITConfig(UART4, USART_IT_TXE, DISABLE);
	USART_Cmd(UART4, ENABLE);

#endif
}


void I2C_Configuration(void)
{
	I2C_InitTypeDef I2C_InitStruct;

	I2C_DeInit(I2C1);
	I2C_InitStruct.I2C_Mode                = I2C_Mode_SMBusDevice;
    I2C_InitStruct.I2C_DutyCycle           = I2C_DutyCycle_2;
    I2C_InitStruct.I2C_OwnAddress1         = I2C1_SLAVE_ADDRESS7;
    I2C_InitStruct.I2C_Ack                 = I2C_Ack_Enable;
    I2C_InitStruct.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
    I2C_InitStruct.I2C_ClockSpeed          = 100000;
    I2C_Init(I2C1, &I2C_InitStruct);
	I2C_Cmd(I2C1, ENABLE);

	  // Enable I2C2 event and buffer interrupt 
  I2C_ITConfig(I2C2, I2C_IT_EVT | I2C_IT_BUF, ENABLE);

}



/*******************************************************************************
 * Function Name  : CAN_Configuration
 * Description    : Configures the can.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void CAN_Configuration(void)
{
        Audi_A4_CanBus_Config();
}
/*******************************************************************************
 * Function Name  : EXIT_Configuration
 * Description    : Configure a ext it
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void EXIT_Configuration(void)
{
    EXTI_InitTypeDef EXTI_InitStructure;
    EXTI_DeInit();
    /*
      EXTI_InitStructure.EXTI_Line = WAKEUP_EXTI_LINE;
      EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Event; //EXTI_Mode_Interrupt;
      EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
      EXTI_InitStructure.EXTI_LineCmd = ENABLE;
      EXTI_Init(&EXTI_InitStructure);

      */
    /* Configure EXTI Line17(RTC Alarm) to generate an interrupt on rising edge */
/*	
    EXTI_ClearITPendingBit(EXTI_Line17);
    EXTI_InitStructure.EXTI_Line = EXTI_Line17;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_LineCmd =ENABLE;// DISABLE;
    EXTI_Init(&EXTI_InitStructure);
*/

	EXTI_ClearITPendingBit(EXTI_Line7);
	GPIO_EXTILineConfig(GPIO_PortSourceGPIOA, GPIO_PinSource7);
    EXTI_InitStructure.EXTI_Line = EXTI_Line7;
    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
    EXTI_Init(&EXTI_InitStructure);

}
/*******************************************************************************
 * Function Name  : ADC_Configuration
 * Description    : Configure a key ADC
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/
void ADC_Configuration(void)
{
    ADC_InitTypeDef ADC_InitStructure;
    ADC_StructInit(&ADC_InitStructure);
    /* ADC1 configuration ------------------------------------------------------*/
    ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
    ADC_InitStructure.ADC_ScanConvMode = ENABLE;
    ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
    ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
    ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
    ADC_InitStructure.ADC_NbrOfChannel = 1; // 1
    ADC_Init(ADC1, &ADC_InitStructure);
    /* ADC1 regular channel14 configuration */
    //ADC_RegularChannelConfig(ADC1, ADC_Channel_5, 1, ADC_SampleTime_55Cycles5);
    //ADC_RegularChannelConfig(ADC1, ADC_Channel_9, 2, ADC_SampleTime_55Cycles5);
    ADC_RegularChannelConfig(ADC1, ADC_Channel_4, 1, ADC_SampleTime_55Cycles5);
    //ADC_RegularChannelConfig(ADC1, ADC_Channel_5, 2, ADC_SampleTime_55Cycles5);
	//ADC_RegularChannelConfig(ADC1, ADC_Channel_15, 4, ADC_SampleTime_55Cycles5);
    /* Enable ADC1 DMA */
    ADC_DMACmd(ADC1, ENABLE);
    /* Enable ADC1 */
    ADC_Cmd(ADC1, ENABLE);
    /* Enable ADC1 reset calibaration register */
    ADC_ResetCalibration(ADC1);
    /* Check the end of ADC1 reset calibration register */
    while (ADC_GetResetCalibrationStatus(ADC1));
    /* Start ADC1 calibaration */
    ADC_StartCalibration(ADC1);
    /* Check the end of ADC1 calibration */
    while (ADC_GetCalibrationStatus(ADC1));
    ADC_SoftwareStartConvCmd(ADC1, ENABLE); //使能ADC1软件开始转换
}



void Acc_Wdg_Config(void)
{

    /* Check if the system has resumed from IWDG reset */
    if (RCC_GetFlagStatus(RCC_FLAG_IWDGRST) != RESET)
    {
        /* IWDGRST flag set */


        /* Clear reset flags */
        RCC_ClearFlag();
    }
    else
    {
        /* IWDGRST flag is not set */
        /* Reset GPIO_LED pin 6 */

    }



    /* IWDG timeout equal to 280 ms (the timeout may varies due to LSI frequency
       dispersion) */
    /* Enable write access to IWDG_PR and IWDG_RLR registers */
    IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);

    /* IWDG counter clock: 40KHz(LSI) / 32 = 1.25 KHz */
    IWDG_SetPrescaler(IWDG_Prescaler_32);

    /* Set counter reload value to 349 */
    IWDG_SetReload(3200);//2500,2s    xs (if 3s is 30000/8=? fill here)

    /* Reload IWDG counter */
    IWDG_ReloadCounter();

    /* Enable IWDG (the LSI oscillator will be enabled by hardware) */
    IWDG_Enable();
}




/*******************************************************************************
 * Function Name  : MCU_Init
 * Description    : init hardwre.
 * Input          : None
 * Output         : None
 * Return         : None
 *******************************************************************************/

void MCU_Init(void)
{
    System_Normal_ClkSetup();
	GPIO_Configuration();
	Main_SysTick_Config();
	
	// 看门狗
	//Acc_Wdg_Config();
	TIMER_Configuration();
	PWM_Configuration();
	USART_Configuration();
	Delay_1ms(5);
	CAN_Configuration();
	
	EXIT_Configuration();
	NVIC_Configuration();
	//RTC_Configuration();

}



BYTE IC_C93_buff_debug[10];
BYTE debug_ee=0;
//const unsigned char IC_C93_buff_cmd[]={0xbd,0x8d,0x5a,0x08,0x0c,0x00,0x00,0x99};
void A91_date_checked(void)
{
	U8 i,check=0;
	unsigned char IC_C93_buff_cmd[]={0xbd,0x8d,0x5a,0x08,0x0c,0x00,0x00,0x99};
	//unsigned char IC_C93_buff_cmd[]={0xff,0xff,0x00,0x00,0x00,0x00,0xff,0x99};
	BYTE IC_C93_buff[10];
	//IC_C93_buff[0]=0xbd;

	//MonGPIO_Config(A100_IN_PORT, A100_IN_PIN, TCHWELL_8823_PIN_DIR_OUT, 1);
	//MonGPIO_Config(A100_CS_PORT, A100_CS_PIN, TCHWELL_8823_PIN_DIR_OUT, 1);

	//MonGPIO_Out(A100_IN_PORT, A100_IN_PIN, 1);
	A100_IN_PORT_SET();

	//MonGPIO_Out(A100_CS_PORT, A100_CS_PIN, 0);
	IC_93Ci2cBurstReadBytes(IC_C93_buff,8);
	for(i=0;i<8;i++)
	{
		IC_C93_buff_debug[i]=IC_C93_buff[i];
		if(IC_C93_buff[i]!=IC_C93_buff_cmd[i])
			check++;
	}
	Delay_1ms(10);//20
    debug_ee=check;
	//Printf1("\r\n 111 IC_C93_buff[0]=%d,IC_C93_buff[1]=%d,IC_C93_buff[2]=%d,IC_C93_buff[3]=%d,IC_C93_buff[4]=%d,IC_C93_buff[5]=%d  ",(WORD)IC_C93_buff[0],(WORD)IC_C93_buff[1],(WORD)IC_C93_buff[2],(WORD)IC_C93_buff[3],(WORD)IC_C93_buff[4],(WORD)IC_C93_buff[5]);

	if(check)
	{
		for(i=0;i<8;i++)
		{
			IC_93Ci2cBurstWriteBytes(i,&IC_C93_buff_cmd[i],1);
			Delay_1ms(10);
		}
		Delay_1ms(40);
	}

	 IC_93Ci2cBurstReadBytes(IC_C93_buff,8);

	// Printf1("\r\n 222 IC_C93_buff[0]=%d,IC_C93_buff[1]=%d,IC_C93_buff[2]=%d,IC_C93_buff[3]=%d,IC_C93_buff[4]=%d,IC_C93_buff[5]=%d  ",(WORD)IC_C93_buff[0],(WORD)IC_C93_buff[1],(WORD)IC_C93_buff[2],(WORD)IC_C93_buff[3],(WORD)IC_C93_buff[4],(WORD)IC_C93_buff[5]);
	 //MonGPIO_Out(A100_IN_PORT, A100_IN_PIN, 0);
	 A100_IN_PORT_RESET();
	 //MonGPIO_Out(A100_CS_PORT, A100_CS_PIN, 1);
	 A100_CS_PORT_SET(); 

}




