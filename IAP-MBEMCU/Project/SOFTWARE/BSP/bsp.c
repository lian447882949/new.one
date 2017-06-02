/*
********************************************************************************
*   
*                              ARM Cortex-M3 Port
*
* File          : BSP.C
* Version       : V1.0
* By            : 
*
* For           : Stm32f10x
* Mode          : Thumb2
* Toolchain     : 
*                   RealView Microcontroller Development Kit (MDK)
*                   Keil uVision
* Description   : STM32F10x �ڲ� ϵͳ������
*
*                   1��ϵͳ�ж����ȼ�ģʽ����
*                   2��ϵͳ��������ָ��
*                   3��ϵͳʱ�Ӽ�ʱ������
*                   4��оƬ���ų�ʼ��
*
* Date          : 2012.05.22
*******************************************************************************/
#include "includes.h"

//#include "common.h"
//#include "bsp.h"
//#include "BspTime3.h"
//#include "BspTime2.h"
//#include "Port.h"


static GPIO_InitTypeDef GPIO_InitStructure;
ErrorStatus HSEStartUpStatus;

/*******************************************************************************
* Function Name  : RCC_Configuration
* Description    : Configures the different system clocks.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RCC_Configuration(void)
{
    /* RCC system reset(for debug purpose) */
    RCC_DeInit();
    
    /* Enable HSE */
    RCC_HSEConfig(RCC_HSE_ON);
    
    /* Wait till HSE is ready */
    HSEStartUpStatus = RCC_WaitForHSEStartUp();
    
    if(HSEStartUpStatus == SUCCESS)
    {
        /* Enable Prefetch Buffer */
        FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);
        
        /* Flash 2 wait state */
        FLASH_SetLatency(FLASH_Latency_2);
        
        /* HCLK = SYSCLK */
        RCC_HCLKConfig(RCC_SYSCLK_Div1); 
        
        /* PCLK2 = HCLK */
        RCC_PCLK2Config(RCC_HCLK_Div1); 
        
        /* PCLK1 = HCLK */
        RCC_PCLK1Config(RCC_HCLK_Div1);
        
        /* PLLCLK = 8MHz * 9 = 72 MHz */
        RCC_PLLConfig(RCC_PLLSource_PREDIV1, RCC_PLLMul_9);
        
        /* Enable PLL */ 
        RCC_PLLCmd(ENABLE);
        
        /* Wait till PLL is ready */
        while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET)
        {
        }
        
        /* Select PLL as system clock source */
        RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);
        
        /* Wait till PLL is used as system clock source */
        while(RCC_GetSYSCLKSource() != 0x08)
        {
        }
    }
}
void PeriphClock_Config(void)
{
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR 
							| RCC_APB1Periph_BKP, ENABLE);
	//PWR_WakeUpPinCmd(ENABLE);
	//PWR_WakeUpPinCmd(DISABLE);
	/* Allow access to BKP Domain */
	PWR_BackupAccessCmd(ENABLE);
}
/*******************************************************************************
* Function Name  : GPIO_Configuration
* Description    : Configures the different GPIO ports.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void GPIO_Configuration(void)
{
	
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB |
                     RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD |
                     RCC_APB2Periph_GPIOE, ENABLE);
    
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_All;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    GPIO_Init(GPIOB, &GPIO_InitStructure);
    GPIO_Init(GPIOC, &GPIO_InitStructure);
    GPIO_Init(GPIOD, &GPIO_InitStructure);
    GPIO_Init(GPIOE, &GPIO_InitStructure);
    
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB |
                         RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD |
                         RCC_APB2Periph_GPIOE, DISABLE);  
	
}

void System_IO_Config(void)
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA 
							|RCC_APB2Periph_GPIOB 
							| RCC_APB2Periph_GPIOC, ENABLE);

    //-----------------Reset Mmcu--------------------
	GPIO_InitStructure.GPIO_Pin = MMCU_RST_PIN;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(MMCU_RST_PORT, &GPIO_InitStructure);
	GPIO_ResetBits(MMCU_RST_PORT,MMCU_RST_PIN);

    //----------------------CAN--------------------

    GPIO_InitStructure.GPIO_Pin = CAN_EN_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
    GPIO_Init(CAN_EN_PORT, &GPIO_InitStructure);
	
    GPIO_InitStructure.GPIO_Pin = CAN_STB_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
    GPIO_Init(CAN_STB_PORT, &GPIO_InitStructure);
	
    GPIO_InitStructure.GPIO_Pin = CAN_ERR_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
    GPIO_Init(CAN_ERR_PORT, &GPIO_InitStructure);
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

	CAN_STB_SET() ;
    CAN_EN_SET();
	
#if Clock_Output_MCO == 1	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(GPIOA, &GPIO_InitStructure);
	RCC_MCOConfig(RCC_MCO_PLLCLK_Div2);
#endif
}


void BWM_5S_CanBus_Config(void)
{
    CAN_InitTypeDef CAN_InitStructure;
    CAN_FilterInitTypeDef CAN_FilterInitStructure;
    /* CAN register init */
    // CAN_DeInit();
    /* CAN1 and CAN2 register init */
    CAN_DeInit(CAN1);
    CAN_DeInit(CAN2);


    /* Struct init*/
    CAN_StructInit(&CAN_InitStructure);
	CAN_FilterInit(&CAN_FilterInitStructure); //��ʼ��CAN_FilterInitStructrue�ṹ�����

    /* CAN cell init */
    CAN_InitStructure.CAN_TTCM = DISABLE; //��ֹʱ�䴥��ͨ��ģʽ
    CAN_InitStructure.CAN_ABOM = DISABLE;
    CAN_InitStructure.CAN_AWUM = DISABLE;
    CAN_InitStructure.CAN_NART = DISABLE;
    //CAN����ֻ������1�Σ����ܷ��͵Ľ����Σ��ɹ���������ٲö�ʧ��
    CAN_InitStructure.CAN_RFLM = DISABLE;
    CAN_InitStructure.CAN_TXFP = DISABLE;
    CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;

    CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
    CAN_InitStructure.CAN_BS1 = CAN_BS1_13tq; //1--16
    CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8
    CAN_InitStructure.CAN_Prescaler = 4;
    ////(pclk1/((1+8+7)*16)) = 32Mhz/16/20 = 100Kbits
    //CAN_Init(&CAN_InitStructure);

    /*Initializes the CAN1	and CAN2 */
    CAN_Init(CAN1, &CAN_InitStructure);


    /* CAN cell init */
    CAN_InitStructure.CAN_TTCM = DISABLE; //��ֹʱ�䴥��ͨ��ģʽ
    CAN_InitStructure.CAN_ABOM = DISABLE;
    CAN_InitStructure.CAN_AWUM = DISABLE;
    CAN_InitStructure.CAN_NART = DISABLE;
    //CAN����ֻ������1�Σ����ܷ��͵Ľ����Σ��ɹ���������ٲö�ʧ��
    CAN_InitStructure.CAN_RFLM = DISABLE;
    CAN_InitStructure.CAN_TXFP = DISABLE;
    CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;

    CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
    CAN_InitStructure.CAN_BS1 = CAN_BS1_13tq; //1--16
    CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8
    CAN_InitStructure.CAN_Prescaler = 4;//20
    ////(pclk1/((1+8+7)*16)) = 32Mhz/16/20 = 100Kbits
    CAN_Init(CAN2, &CAN_InitStructure);


	CAN_FilterInitStructure.CAN_FilterNumber=0;     /* ������0 */
  	CAN_FilterInitStructure.CAN_FilterMode=CAN_FilterMode_IdMask;  /* ����ģʽ */
  	CAN_FilterInitStructure.CAN_FilterScale=CAN_FilterScale_32bit; /* 32λ */
	CAN_FilterInitStructure.CAN_FilterIdHigh=0x0000;  /* �����ĸ���Ϊ0, �����������κ�id */
	CAN_FilterInitStructure.CAN_FilterIdLow=0x0000;
	CAN_FilterInitStructure.CAN_FilterMaskIdHigh=0x0000;
	CAN_FilterInitStructure.CAN_FilterMaskIdLow=0x0000;
	CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //ѡ��FIFO0
	CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //ʹ�ܹ�����
	CAN_FilterInit(&CAN_FilterInitStructure); //�����ʼ������
	CAN_SlaveStartBank(0);//5,Miller.Tao


}

/*******************************************************************************
* Function Name  : Delay
* Description    : Inserts a delay time.
* Input          : nCount: specifies the delay time length.
* Output         : None
* Return         : None
*******************************************************************************/
void Delay(vu32 nCount)
{
    for(; nCount != 0; nCount--);
}

/*******************************************************************************
�� �� ����void IWDG_Init(void)
�������������Ź���ʼ��						
��ڲ�����							
���ز�����
����ʱ��: 2011.6.24
********************************************************************************/
void IWDG_Init(void)
{
    IWDG_WriteAccessCmd( IWDG_WriteAccess_Enable );
    IWDG_SetPrescaler( IWDG_Prescaler_64);	//��С
    IWDG_SetReload( 0x138);		//40KHz�ڲ�ʱ�� (1/40000 * 64 * 0x138 = 0.5s)
    IWDG_WriteAccessCmd( IWDG_WriteAccess_Disable );
    IWDG_Enable();
    IWDG_ReloadCounter();
}

/*******************************************************************************
* Function Name :void SysTickInit(void)
* Description   :ϵͳ��ʱ��ʱ������
* Input         :
* Output        :
* Other         :ʱ��Ϊ1ms
* Date          :2011.11.03  12:59:13
*******************************************************************************/
void SysTickInit(void)
{
//    SysTick_CLKSourceConfig( SysTick_CLKSource_HCLK_Div8 );     //ϵͳ������ʱ��ԴΪAHB/8
//    SysTick_SetReload( 0x002328 );                              //SysTick��װ��ֵ  ʱ��1ms
//    SysTick_ITConfig( ENABLE );                                 //ʹ���ж�
//    SysTick_CounterCmd( SysTick_Counter_Enable );               //����ϵͳ������
}

/*******************************************************************************
* Function Name :void InterruptOrder(void)
* Description   :�ж����������ȼ�
* Input         :
* Output        :
* Other         :
* Date          :2011.10.27  11:50:05
*******************************************************************************/
void NVIC_Configuration(void)
{
#ifdef  VECT_TAB_RAM
    /* Set the Vector Table base location at 0x20000000 */
    NVIC_SetVectorTable(NVIC_VectTab_RAM, 0x0);
#else  /* VECT_TAB_FLASH  */
    /* Set the Vector Table base location at 0x08000000 */
    NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x0000);
#endif
    
    /* 1 bit for pre-emption priority, 3 bits for subpriority */
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);//���ȼ�����  ȫΪ��ռʽ���ȼ�
}




/*******************************************************************************
* Function Name :void SystemConfig(void)
* Description   :ϵͳ��ʼ��
* Input         :
* Output        :
* Other         :
* Date          :2011.10.27  13:14:59
*******************************************************************************/
void BspInit(void)
{
    RCC_Configuration();
	System_IO_Config();
    //GPIO_Configuration();	//�˿ڳ�ʼ�������ж˿ڹ�
	PeriphClock_Config();
//	BWM_5S_CanBus_Config();
    BspTim3Init();
   // BspUsart1Init();
	BspUsart2Init();
    //BspUsart3Init();
   	BspUsart4Init();
	BspTim2Init();
	NVIC_Configuration();	//�ж����ȼ�����
}


void BspClose(void)
{

    BspTim3Close();
	BspTim2Close();
   // BspUsart1Close();
   //BspUsart2Close();
    BspUsart3Close();
}



/*********************************** END **************************************/

