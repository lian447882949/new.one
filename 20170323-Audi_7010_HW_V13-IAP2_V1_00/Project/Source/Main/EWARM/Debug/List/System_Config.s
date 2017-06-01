///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:41 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\System_Config.c             /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\System_Config.c -D          /
//                    USE_STDPERIPH_DRIVER -D USE_STM32100B_EVAL -D           /
//                    STM32F10X_CL -lc F:\软件工程\平台正式代码001\Benze_Main /
//                    Board\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeri /
//                    ph_Template\EWARM\Debug\List\ -lA                       /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\List\ -o F:\软件工程\平台正式代码001\Benze_MainB /
//                    oard\baoma_36\benci_newC_V45\Project\STM32F10x_StdPerip /
//                    h_Template\EWARM\Debug\Obj\ --no_cse --no_unroll        /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M3 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_2\arm\INC\c\DLib_Config_Full.h" -I                  /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \ -I F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_ /
//                    36\benci_newC_V45\Project\STM32F10x_StdPeriph_Template\ /
//                    EWARM\..\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Libraries\STM32F10x_StdPeriph_Dr /
//                    iver\inc\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Libraries\STM32F10x_StdPeriph_Dr /
//                    iver\src\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Project/Common\ -I               /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/TW8836\ -I                            /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/CAN\ -I F:\软件工程\平台正式代码001\B /
//                    enze_MainBoard\baoma_36\benci_newC_V45\Project\STM32F10 /
//                    x_StdPeriph_Template\EWARM\..\..\..\Project/FM\ -I      /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/ARM\ -I F:\软件工程\平台正式代码001\B /
//                    enze_MainBoard\baoma_36\benci_newC_V45\Project\STM32F10 /
//                    x_StdPeriph_Template\EWARM\..\..\..\Libraries\CMSIS\CM3 /
//                    \DeviceSupport\ST\STM32F10x\ -On -I "C:\Program         /
//                    Files\IAR Systems\Embedded Workbench                    /
//                    6.0_2\arm\CMSIS\Include\"                               /
//    List file    =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\List\System_Config.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME System_Config

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ADC_Cmd
        EXTERN ADC_DMACmd
        EXTERN ADC_GetCalibrationStatus
        EXTERN ADC_GetResetCalibrationStatus
        EXTERN ADC_Init
        EXTERN ADC_RegularChannelConfig
        EXTERN ADC_ResetCalibration
        EXTERN ADC_SoftwareStartConvCmd
        EXTERN ADC_StartCalibration
        EXTERN ADC_StructInit
        EXTERN BKP_DeInit
        EXTERN CAN_ClearFlag
        EXTERN CAN_GetFlagStatus
        EXTERN CAN_ITConfig
        EXTERN CAN_Receive
        EXTERN DAC_Cmd
        EXTERN DAC_Init
        EXTERN DAC_SetChannel1Data
        EXTERN Delay_1ms
        EXTERN EXTI_ClearITPendingBit
        EXTERN EXTI_DeInit
        EXTERN EXTI_Init
        EXTERN FLASH_PrefetchBufferCmd
        EXTERN FLASH_SetLatency
        EXTERN GPIO_AFIODeInit
        EXTERN GPIO_DeInit
        EXTERN GPIO_EXTILineConfig
        EXTERN GPIO_Init
        EXTERN GPIO_PinRemapConfig
        EXTERN GPIO_ReadInputDataBit
        EXTERN I2C_Cmd
        EXTERN I2C_DeInit
        EXTERN I2C_ITConfig
        EXTERN I2C_Init
        EXTERN IWDG_Enable
        EXTERN IWDG_ReloadCounter
        EXTERN IWDG_SetPrescaler
        EXTERN IWDG_SetReload
        EXTERN IWDG_WriteAccessCmd
        EXTERN LF_CanBus_Config
        EXTERN LF_CanBus_PowerOn
        EXTERN NVIC_Init
        EXTERN NVIC_PriorityGroupConfig
        EXTERN PWR_BackupAccessCmd
        EXTERN PWR_EnterSTANDBYMode
        EXTERN PWR_WakeUpPinCmd
        EXTERN RCC_ADCCLKConfig
        EXTERN RCC_AHBPeriphClockCmd
        EXTERN RCC_APB1PeriphClockCmd
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN RCC_ClearFlag
        EXTERN RCC_DeInit
        EXTERN RCC_GetFlagStatus
        EXTERN RCC_GetSYSCLKSource
        EXTERN RCC_HCLKConfig
        EXTERN RCC_LSICmd
        EXTERN RCC_PCLK1Config
        EXTERN RCC_PCLK2Config
        EXTERN RCC_PLLCmd
        EXTERN RCC_PLLConfig
        EXTERN RCC_RTCCLKCmd
        EXTERN RCC_RTCCLKConfig
        EXTERN RCC_SYSCLKConfig
        EXTERN RTC_ITConfig
        EXTERN RTC_SetCounter
        EXTERN RTC_SetPrescaler
        EXTERN RTC_WaitForLastTask
        EXTERN RTC_WaitForSynchro
        EXTERN SystemCoreClock
        EXTERN TIM_ARRPreloadConfig
        EXTERN TIM_Cmd
        EXTERN TIM_CtrlPWMOutputs
        EXTERN TIM_OC3Init
        EXTERN TIM_OC3PreloadConfig
        EXTERN TIM_PrescalerConfig
        EXTERN TIM_TimeBaseInit
        EXTERN USART_Cmd
        EXTERN USART_ITConfig
        EXTERN USART_Init
        EXTERN __aeabi_memcpy4
        EXTERN delay_5us
        EXTERN g_stuCurPower
        EXTERN m_BMW_CAN

        PUBLIC ADC_Config
        PUBLIC ADC_Configuration
        PUBLIC Acc_PwrEnterStandyMode
        PUBLIC Acc_Wdg_Config
        PUBLIC CAN_Configuration
        PUBLIC DAC_Config
        PUBLIC DMA_Configuration
        PUBLIC EXIT_Configuration
        PUBLIC EXIT_Control
        PUBLIC EXIT_all_off
        PUBLIC ExInt_Config
        PUBLIC GPIO_Configuration
        PUBLIC GPIO_Off_Init
        PUBLIC GPIO_On_Init
        PUBLIC GPIO_keylight_Configuration
        PUBLIC I2C_Configuration
        PUBLIC MCU_Init
        PUBLIC Main_SysTick_Config
        PUBLIC NVIC_Configuration
        PUBLIC NVIC_STANBY_CAN_Configuration
        PUBLIC PWM_Configuration
        PUBLIC RCC_Close
        PUBLIC RCC_Configuration
        PUBLIC RTC_Configuration
        PUBLIC SPI_FLASH_Init
        PUBLIC STM32_Canbus_Config
        PUBLIC SYSCLKConfig_STOP
        PUBLIC System_Normal_ClkSetup
        PUBLIC System_Standby_Reset_ClkSetup
        PUBLIC TIMER_Configuration
        PUBLIC Time_Adjust
        PUBLIC Time_Regulate
        PUBLIC USART_Configuration
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\System_Config.c
//    1 #define _SYSTEM_CONFIG_C_
//    2 
//    3 #include "compile.h"
//    4 //#include "stm32f10x_lib.h"
//    5 //#include "system_config.h"
//    6 #include "port.h"
//    7 
//    8 
//    9 #include "stm32f10x_gpio.h"	

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NVIC_SetPriority
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_SetPriority(IRQn_Type, uint32_t)
NVIC_SetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_SetPriority_0
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R2,R0,#0xF
        LDR.W    R3,??DataTable15  ;; 0xe000ed18
        ADDS     R2,R2,R3
        LSLS     R3,R1,#+4
        STRB     R3,[R2, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable15_1  ;; 0xe000e400
        LSLS     R3,R1,#+4
        STRB     R3,[R0, R2]
??NVIC_SetPriority_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SysTick_Config
        THUMB
// static __interwork __softfp uint32_t SysTick_Config(uint32_t)
SysTick_Config:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        CMP      R4,#+16777216
        BCC.N    ??SysTick_Config_0
        MOVS     R0,#+1
        B.N      ??SysTick_Config_1
??SysTick_Config_0:
        LSLS     R0,R4,#+8        ;; ZeroExtS R0,R4,#+8,#+8
        LSRS     R0,R0,#+8
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable15_2  ;; 0xe000e014
        STR      R0,[R1, #+0]
        MOVS     R1,#+15
        MOVS     R0,#-1
          CFI FunCall NVIC_SetPriority
        BL       NVIC_SetPriority
        LDR.W    R0,??DataTable15_3  ;; 0xe000e018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable15_4  ;; 0xe000e010
        MOVS     R1,#+7
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
??SysTick_Config_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   10 #include "libr.h"	
//   11 #include "main.h"	
//   12 #include "includes.h"
//   13 
//   14 #define SPI1_DR_Address  0x4001300C 
//   15 #define SPI2_DR_Address    0x4000380C
//   16 
//   17 #define ADC1_DR_Address     0x4001244C
//   18 #define USART1_DR_Base      0x40013804
//   19 #define USART2_DR_Base      0x40004404
//   20 #define I2C1_SLAVE_ADDRESS7 0xa2
//   21 
//   22 
//   23 void NVIC_Configuration(void);
//   24 void LcdShow_Init(void);
//   25 
//   26 
//   27 
//   28 void I2C_Configuration(void);
//   29 void ExInt_Config(void);
//   30 void Timer_Config(void);
//   31 void DAC_Config(void);
//   32 void SPI_FLASH_Init(void);
//   33 void USART_Configuration(void);
//   34 void RTC_Configuration(void);
//   35 void Time_Adjust(void);
//   36 u32 Time_Regulate(void);
//   37 
//   38 
//   39 
//   40 	  
//   41 //系统时钟配置

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function RCC_Configuration
        THUMB
//   42 void RCC_Configuration(void)
//   43 {
RCC_Configuration:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   44   DWORD   i;
//   45  // ErrorStatus HSEStartUpStatus;
//   46   
//   47   /* RCC system reset(for debug purpose) */
//   48   RCC_DeInit();
          CFI FunCall RCC_DeInit
        BL       RCC_DeInit
//   49 
//   50   /* Enable HSE */
//   51  // RCC_HSEConfig(RCC_HSE_ON);
//   52 
//   53   /* Wait till HSE is ready */
//   54 //  HSEStartUpStatus = RCC_WaitForHSEStartUp();
//   55 
//   56  // if(HSEStartUpStatus == SUCCESS)
//   57   {
//   58     /* Enable Prefetch Buffer */
//   59     FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);
        MOVS     R0,#+16
          CFI FunCall FLASH_PrefetchBufferCmd
        BL       FLASH_PrefetchBufferCmd
//   60 
//   61     /* Flash 2 wait state */
//   62     FLASH_SetLatency(FLASH_Latency_2);
        MOVS     R0,#+2
          CFI FunCall FLASH_SetLatency
        BL       FLASH_SetLatency
//   63 
//   64     /* HCLK = SYSCLK */ //AHB分频
//   65     RCC_HCLKConfig(RCC_SYSCLK_Div1);
        MOVS     R0,#+0
          CFI FunCall RCC_HCLKConfig
        BL       RCC_HCLKConfig
//   66 
//   67     /* PCLK2 = HCLK *///APB2分频
//   68     RCC_PCLK2Config(RCC_HCLK_Div1);
        MOVS     R0,#+0
          CFI FunCall RCC_PCLK2Config
        BL       RCC_PCLK2Config
//   69 
//   70     /* PCLK1 = HCLK/2 *///APB1分频   //包括定时器
//   71     //定时器的始终只要分频就自动倍频*2；现在为56M
//   72     RCC_PCLK1Config(RCC_HCLK_Div1);//RCC_HCLK_Div2
        MOVS     R0,#+0
          CFI FunCall RCC_PCLK1Config
        BL       RCC_PCLK1Config
//   73 
//   74     /* ADCCLK = PCLK2/4 */ //ADC分频
//   75     RCC_ADCCLKConfig(RCC_PCLK2_Div4);
        MOV      R0,#+16384
          CFI FunCall RCC_ADCCLKConfig
        BL       RCC_ADCCLKConfig
//   76 
//   77     /* PLLCLK = 8MHz * 3 = 24 MHz *///PLL倍频
//   78     RCC_PLLConfig(RCC_PLLSource_HSI_Div2, RCC_PLLMul_6);//4//RCC_PLLConfig(RCC_PLLSource_HSE_Div1, RCC_PLLMul_4);//4
        MOVS     R1,#+1048576
        MOVS     R0,#+0
          CFI FunCall RCC_PLLConfig
        BL       RCC_PLLConfig
//   79 
//   80     /* Enable PLL */
//   81     RCC_PLLCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall RCC_PLLCmd
        BL       RCC_PLLCmd
//   82 
//   83     /* Wait till PLL is ready */
//   84     i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//   85     while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET)
??RCC_Configuration_0:
        MOVS     R0,#+57
          CFI FunCall RCC_GetFlagStatus
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BNE.N    ??RCC_Configuration_1
//   86     {
//   87 		delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
//   88 		if(i++>80000)
        MOVS     R0,R4
        ADDS     R4,R0,#+1
        LDR.W    R1,??DataTable15_5  ;; 0x13881
        CMP      R0,R1
        BCC.N    ??RCC_Configuration_0
//   89 			break;
//   90     }
//   91 
//   92     /* Select PLL as system clock source */
//   93     RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);
??RCC_Configuration_1:
        MOVS     R0,#+2
          CFI FunCall RCC_SYSCLKConfig
        BL       RCC_SYSCLKConfig
//   94     i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//   95     /* Wait till PLL is used as system clock source */
//   96     while(RCC_GetSYSCLKSource() != 0x08)
??RCC_Configuration_2:
          CFI FunCall RCC_GetSYSCLKSource
        BL       RCC_GetSYSCLKSource
        CMP      R0,#+8
        BEQ.N    ??RCC_Configuration_3
//   97     {
//   98 		delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
//   99 		if(i++>80000)
        MOVS     R0,R4
        ADDS     R4,R0,#+1
        LDR.W    R1,??DataTable15_5  ;; 0x13881
        CMP      R0,R1
        BCC.N    ??RCC_Configuration_2
//  100 			break;
//  101     }
//  102   }
//  103 
//  104   /* 使能对应的外设时钟 --------------------------------------------------*/
//  105   /* TIM2 ,TIM3 and TIM4 clocks enable */
//  106   RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2 | RCC_APB1Periph_TIM3 |RCC_APB1Periph_TIM4, ENABLE);
??RCC_Configuration_3:
        MOVS     R1,#+1
        MOVS     R0,#+7
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  107 
//  108   /* DMA clock enable */
//  109   RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1 ,ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall RCC_AHBPeriphClockCmd
        BL       RCC_AHBPeriphClockCmd
//  110 
//  111   /* Enable ADC1 clock */
//  112   RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+512
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//  113   //RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC2, ENABLE);
//  114   //RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC3, ENABLE);
//  115 
//  116   /* SPI2 Periph clock enable */
//  117   RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);  
        MOVS     R1,#+1
        MOV      R0,#+16384
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  118 
//  119   /* Enable USART2 clocks */
//  120   RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);    
        MOVS     R1,#+1
        MOVS     R0,#+262144
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  121   RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);   
        MOVS     R1,#+1
        MOVS     R0,#+131072
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  122   RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, ENABLE);   
        MOVS     R1,#+1
        MOVS     R0,#+1048576
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  123   RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, ENABLE);   
        MOVS     R1,#+1
        MOVS     R0,#+524288
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  124   RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);  
        MOVS     R1,#+1
        MOV      R0,#+16384
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//  125   /* DAC Periph clock enable */
//  126   RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+536870912
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  127   
//  128   /* Enable GPIOA, GPIOB, GPIOC, GPIOD, GPIOE and AFIO clocks */
//  129   RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB |RCC_APB2Periph_GPIOC
//  130          | RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+125
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//  131 
//  132 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//  133 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function RCC_Close
        THUMB
//  134 void RCC_Close(void)
//  135 {
RCC_Close:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  136   //DWORD   i;
//  137 GPIO_InitTypeDef GPIO_InitStructure;
//  138 
//  139 #if 0
//  140   /* 使能对应的外设时钟 --------------------------------------------------*/
//  141   /* TIM2 ,TIM3 and TIM4 clocks enable */
//  142   RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2 | RCC_APB1Periph_TIM3 |RCC_APB1Periph_TIM4, DISABLE);
//  143 
//  144   /* DMA clock enable */
//  145   RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1 ,DISABLE);
//  146 
//  147   /* Enable ADC1 clock */
//  148   RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, DISABLE);
//  149   RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC2, DISABLE);
//  150   //RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC3, ENABLE);
//  151 
//  152   /* SPI2 Periph clock enable */
//  153   RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, DISABLE);  
//  154 
//  155   /* Enable USART2 clocks */
//  156   RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, DISABLE);    
//  157   RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, DISABLE);   
//  158   RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, DISABLE);   
//  159   RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, DISABLE);   
//  160   RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, DISABLE);  
//  161   /* DAC Periph clock enable */
//  162   RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE);
//  163   
//  164   /* Enable GPIOA, GPIOB, GPIOC, GPIOD, GPIOE and AFIO clocks */
//  165   RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB |RCC_APB2Periph_GPIOC
//  166          | RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, ENABLE);
//  167 
//  168 #endif
//  169 
//  170   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|
//  171   								GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7|GPIO_Pin_8|GPIO_Pin_9|
//  172   								GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|
//  173   								GPIO_Pin_15;
        MOVW     R0,#+65535
        STRH     R0,[SP, #+0]
//  174   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
//  175   GPIO_Init(GPIOA, &GPIO_InitStructure);  
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  176 
//  177   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|
//  178   								GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7|GPIO_Pin_9|
//  179   								GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|
//  180   								GPIO_Pin_15;
        MOVW     R0,#+65279
        STRH     R0,[SP, #+0]
//  181   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
//  182   GPIO_Init(GPIOB, &GPIO_InitStructure);  //GPIO_Pin_8|
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  183   
//  184   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|
//  185   								GPIO_Pin_5|GPIO_Pin_8|GPIO_Pin_9|
//  186   								GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|
//  187   								GPIO_Pin_15;
        MOVW     R0,#+65343
        STRH     R0,[SP, #+0]
//  188   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
//  189   GPIO_Init(GPIOC, &GPIO_InitStructure);  //GPIO_Pin_6|GPIO_Pin_7|
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  190  
//  191   
//  192   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_2|GPIO_Pin_3|GPIO_Pin_4|
//  193   								GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_7|GPIO_Pin_8|GPIO_Pin_9|
//  194   								GPIO_Pin_10|GPIO_Pin_11|GPIO_Pin_12|GPIO_Pin_13|GPIO_Pin_14|GPIO_Pin_15;
        MOVW     R0,#+65535
        STRH     R0,[SP, #+0]
//  195   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
//  196   GPIO_Init(GPIOD, &GPIO_InitStructure);  
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_2  ;; 0x40011400
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  197     
//  198 
//  199 
//  200 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//  201 
//  202 //系统时钟配置

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function SYSCLKConfig_STOP
        THUMB
//  203 void SYSCLKConfig_STOP(void)
//  204 {
SYSCLKConfig_STOP:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  205   DWORD   i;
//  206  // ErrorStatus HSEStartUpStatus;
//  207   
//  208   /* Enable HSE */
//  209  // RCC_HSEConfig(RCC_HSE_ON);
//  210 
//  211   /* Wait till HSE is ready */
//  212 //  HSEStartUpStatus = RCC_WaitForHSEStartUp();
//  213 
//  214  // if(HSEStartUpStatus == SUCCESS)
//  215   {
//  216     /* Enable PLL */
//  217     RCC_PLLCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall RCC_PLLCmd
        BL       RCC_PLLCmd
//  218 
//  219     /* Wait till PLL is ready */
//  220     i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  221     while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET)
??SYSCLKConfig_STOP_0:
        MOVS     R0,#+57
          CFI FunCall RCC_GetFlagStatus
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BNE.N    ??SYSCLKConfig_STOP_1
//  222     {
//  223 		delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
//  224 		if(i++>80000)
        MOVS     R0,R4
        ADDS     R4,R0,#+1
        LDR.W    R1,??DataTable15_5  ;; 0x13881
        CMP      R0,R1
        BCC.N    ??SYSCLKConfig_STOP_0
//  225 			break;
//  226     }
//  227 
//  228     /* Select PLL as system clock source */
//  229     RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);
??SYSCLKConfig_STOP_1:
        MOVS     R0,#+2
          CFI FunCall RCC_SYSCLKConfig
        BL       RCC_SYSCLKConfig
//  230     i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  231     /* Wait till PLL is used as system clock source */
//  232     while(RCC_GetSYSCLKSource() != 0x08)
??SYSCLKConfig_STOP_2:
          CFI FunCall RCC_GetSYSCLKSource
        BL       RCC_GetSYSCLKSource
        CMP      R0,#+8
        BEQ.N    ??SYSCLKConfig_STOP_3
//  233     {
//  234 		delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
//  235 		if(i++>80000)
        MOVS     R0,R4
        ADDS     R4,R0,#+1
        LDR.W    R1,??DataTable15_5  ;; 0x13881
        CMP      R0,R1
        BCC.N    ??SYSCLKConfig_STOP_2
//  236 			break;
//  237     }
//  238   }
//  239 
//  240 
//  241 
//  242 }
??SYSCLKConfig_STOP_3:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  243 
//  244 //IO口配置

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function GPIO_Configuration
        THUMB
//  245 void GPIO_Configuration(void)
//  246 {
GPIO_Configuration:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  247 
//  248 	GPIO_InitTypeDef GPIO_InitStructure;
//  249 	GPIO_AFIODeInit();
          CFI FunCall GPIO_AFIODeInit
        BL       GPIO_AFIODeInit
//  250 
//  251 
//  252 	//-------------power -and mute------------------------
//  253 	GPIO_InitStructure.GPIO_Pin = MUTE_ALL_OUT_MUTE_PIN;
        MOVS     R0,#+2
        STRH     R0,[SP, #+0]
//  254 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  255 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  256 	GPIO_Init(MUTE_ALL_OUT_MUTE_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  257 
//  258 
//  259 	GPIO_InitStructure.GPIO_Pin = MUTE_NAVI_MUTE_PIN;
        MOVS     R0,#+1
        STRH     R0,[SP, #+0]
//  260 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  261 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  262 	GPIO_Init(MUTE_NAVI_MUTE_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  263 
//  264 	GPIO_InitStructure.GPIO_Pin = MUTE_PHONE_MUTE_PIN;
        MOVS     R0,#+128
        STRH     R0,[SP, #+0]
//  265 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  266 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//  267 	GPIO_Init(MUTE_PHONE_MUTE_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  268 
//  269 	GPIO_InitStructure.GPIO_Pin = SW_GPS_CAR_PIN;
        MOVS     R0,#+16
        STRH     R0,[SP, #+0]
//  270 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  271 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  272 	GPIO_Init(SW_GPS_CAR_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  273 
//  274 	GPIO_InitStructure.GPIO_Pin = POWER_SYSTEM_PIN;
        MOV      R0,#+8192
        STRH     R0,[SP, #+0]
//  275 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  276 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  277 	GPIO_Init(POWER_SYSTEM_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  278 
//  279 
//  280 
//  281 
//  282 
//  283 
//  284 	GPIO_InitStructure.GPIO_Pin = POWER_REAR_CAMERA_PIN;
        MOV      R0,#+512
        STRH     R0,[SP, #+0]
//  285 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  286 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  287 	GPIO_Init(POWER_REAR_CAMERA_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  288 
//  289 	GPIO_InitStructure.GPIO_Pin = POWER_DVD_PIN;
        MOVS     R0,#+1
        STRH     R0,[SP, #+0]
//  290 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  291 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  292 	GPIO_Init(POWER_DVD_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  293 
//  294 	GPIO_InitStructure.GPIO_Pin = POWER_DVBCMMB_PIN;
        MOVS     R0,#+128
        STRH     R0,[SP, #+0]
//  295 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  296 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  297 	GPIO_Init(POWER_DVBCMMB_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  298 
//  299 
//  300 
//  301 
//  302 	GPIO_InitStructure.GPIO_Pin = POWER_AUDIO_PIN;
        MOV      R0,#+256
        STRH     R0,[SP, #+0]
//  303 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  304 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  305 	GPIO_Init(POWER_AUDIO_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  306 
//  307 
//  308 	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
        MOVS     R0,#+32
        STRH     R0,[SP, #+0]
//  309 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  310 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  311 	GPIO_Init(GPIOB, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  312 
//  313 	GPIO_InitStructure.GPIO_Pin = POWER_CarRec_PIN;
        MOVS     R0,#+64
        STRH     R0,[SP, #+0]
//  314 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  315 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  316 	GPIO_Init(POWER_CarRec_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  317 
//  318 
//  319 
//  320 
//  321 	GPIO_InitStructure.GPIO_Pin = POWER_TFT_LED__PIN;
        MOV      R0,#+32768
        STRH     R0,[SP, #+0]
//  322 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  323 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  324 	GPIO_Init(POWER_TFT_LED__PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  325 	//------------MCU comunication--------------------
//  326 	GPIO_InitStructure.GPIO_Pin = COM_MCU_RX_PIN;
        MOVS     R0,#+8
        STRH     R0,[SP, #+0]
//  327 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
//  328 	GPIO_Init(COM_MCU_RX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  329 	GPIO_InitStructure.GPIO_Pin = COM_MCU_TX_PIN;
        MOVS     R0,#+4
        STRH     R0,[SP, #+0]
//  330 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  331 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//  332 	GPIO_Init(COM_MCU_TX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  333 
//  334 	//------------GPS comunication--------------------
//  335 	GPIO_InitStructure.GPIO_Pin = COM_GPS_RX_PIN;
        MOV      R0,#+2048
        STRH     R0,[SP, #+0]
//  336 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
//  337 	GPIO_Init(COM_GPS_RX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  338 	GPIO_InitStructure.GPIO_Pin = COM_GPS_TX_PIN;
        MOV      R0,#+1024
        STRH     R0,[SP, #+0]
//  339 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  340 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//  341 	GPIO_Init(COM_GPS_TX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  342 	//----------------------DVD---------------------
//  343 	GPIO_InitStructure.GPIO_Pin = COM_DVD_IPOD_CMMB_MP5_RX_PIN;
        MOVS     R0,#+4
        STRH     R0,[SP, #+0]
//  344 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
//  345 	GPIO_Init(COM_DVD_IPOD_CMMB_MP5_RX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_2  ;; 0x40011400
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  346 
//  347 	GPIO_InitStructure.GPIO_Pin = COM_DVD_IPOD_CMMB_MP5_TX_PIN;
        MOV      R0,#+4096
        STRH     R0,[SP, #+0]
//  348 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  349 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//  350 	GPIO_Init(COM_DVD_IPOD_CMMB_MP5_TX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  351 
//  352 	//----------------------BT---------------------
//  353 	GPIO_InitStructure.GPIO_Pin = COM_BT_RX_PIN;
        MOVS     R0,#+128
        STRH     R0,[SP, #+0]
//  354 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;//GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  355 	GPIO_Init(COM_BT_RX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  356 
//  357 	GPIO_InitStructure.GPIO_Pin = COM_BT_TX_PIN;
        MOVS     R0,#+64
        STRH     R0,[SP, #+0]
//  358 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//  359 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_OD;
        MOVS     R0,#+28
        STRB     R0,[SP, #+3]
//  360 	GPIO_Init(COM_BT_TX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  361 	GPIO_PinRemapConfig(GPIO_Remap_USART1, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall GPIO_PinRemapConfig
        BL       GPIO_PinRemapConfig
//  362 	//-----------ACC WAKEUP---------------------------
//  363 	/* Connect Key Button EXTI Line to Key Button GPIO Pin */
//  364 	GPIO_InitStructure.GPIO_Pin = DET_ACCCHECK_PIN;
        MOVS     R0,#+2
        STRH     R0,[SP, #+0]
//  365 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  366 	GPIO_Init(DET_ACCCHECK_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  367 	//-------------DET-------------------------------
//  368 	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
        MOV      R0,#+256
        STRH     R0,[SP, #+0]
//  369 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//  370 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//  371 	GPIO_Init(GPIOC, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  372 	//------------------CAM DET-----------------------------------
//  373 	GPIO_InitStructure.GPIO_Pin = DET_CAM_PIN;
        MOVS     R0,#+1
        STRH     R0,[SP, #+0]
//  374 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  375 	GPIO_Init(DET_CAM_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  376 
//  377 	//-------------------DIMMER-------------------------------
//  378 	//GPIO_InitStructure.GPIO_Pin = DIMMER_PIN;
//  379 	//GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
//  380 	//GPIO_Init(DIMMER_PORT, &GPIO_InitStructure);
//  381 
//  382 
//  383 	//-------------KnobKey--Miller.Tao,20140911------------------------
//  384 
//  385 	GPIO_InitStructure.GPIO_Pin = KnobENC_ENDA_PIN;
        MOVS     R0,#+2
        STRH     R0,[SP, #+0]
//  386 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  387 	//GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
//  388 	GPIO_Init(KnobENC_ENDA_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  389 
//  390 	GPIO_InitStructure.GPIO_Pin = KnobENC_ENDB_PIN;
        MOVS     R0,#+32
        STRH     R0,[SP, #+0]
//  391 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  392 	//GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
//  393 	GPIO_Init(KnobENC_ENDB_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  394 	
//  395 	GPIO_InitStructure.GPIO_Pin = KnobKey_PIN;
        MOVS     R0,#+16
        STRH     R0,[SP, #+0]
//  396 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
        MOVS     R0,#+0
        STRB     R0,[SP, #+3]
//  397 	GPIO_Init(KnobKey_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  398 	//-----------------KEY-----------------------------------
//  399 
//  400 	
//  401 	GPIO_InitStructure.GPIO_Pin = KEY_DVD_CP_PIN;
        MOVS     R0,#+32
        STRH     R0,[SP, #+0]
//  402 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
        MOVS     R0,#+0
        STRB     R0,[SP, #+3]
//  403 	GPIO_Init(KEY_DVD_CP_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  404 	//-------------AV -------------------------------
//  405 	
//  406 	GPIO_InitStructure.GPIO_Pin = AV_IIC_CLK_PIN;
        MOVS     R0,#+8
        STRH     R0,[SP, #+0]
//  407 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//  408 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  409 	GPIO_Init(AV_IIC_CLK_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  410 	GPIO_InitStructure.GPIO_Pin = AV_IIC_DAT_PIN;
        MOVS     R0,#+4
        STRH     R0,[SP, #+0]
//  411 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//  412 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
        MOVS     R0,#+20
        STRB     R0,[SP, #+3]
//  413 	GPIO_Init(AV_IIC_DAT_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  414 	//----------------CMMB---------------------------
//  415 	GPIO_InitStructure.GPIO_Pin = CMMB_IR_PIN;
        MOVS     R0,#+64
        STRH     R0,[SP, #+0]
//  416 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  417 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  418 	GPIO_Init(CMMB_IR_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  419 	//----------------------CAN--------------------
//  420 
//  421 
//  422 	GPIO_InitStructure.GPIO_Pin = CAN_EN_PIN;
        MOV      R0,#+1024
        STRH     R0,[SP, #+0]
//  423 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  424 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  425 	GPIO_Init(CAN_EN_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  426 	GPIO_InitStructure.GPIO_Pin = CAN_STB_PIN;
        MOV      R0,#+512
        STRH     R0,[SP, #+0]
//  427 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  428 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  429 	GPIO_Init(CAN_STB_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  430 	GPIO_InitStructure.GPIO_Pin = CAN_ERR_PIN;
        MOV      R0,#+256
        STRH     R0,[SP, #+0]
//  431 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  432 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  433 	GPIO_Init(CAN_ERR_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  434 	/* Configure CAN pin: RX */
//  435 	GPIO_InitStructure.GPIO_Pin = CAN_RX_PIN;
        MOV      R0,#+2048
        STRH     R0,[SP, #+0]
//  436 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  437 	GPIO_Init(CAN_RX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  438 	/* Configure CAN pin: TX */
//  439 	GPIO_InitStructure.GPIO_Pin = CAN_TX_PIN;
        MOV      R0,#+4096
        STRH     R0,[SP, #+0]
//  440 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//  441 	GPIO_Init(CAN_TX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  442 
//  443 	//GPIO_PinRemapConfig(GPIO_Remap1_CAN1, ENABLE);
//  444 
//  445 	/* Configure CAN2 pin: RX */
//  446 	GPIO_InitStructure.GPIO_Pin = CAN2_RX_PIN;
        MOV      R0,#+4096
        STRH     R0,[SP, #+0]
//  447 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  448 	GPIO_Init(CAN2_RX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  449 	/* Configure CAN pin: TX */
//  450 	GPIO_InitStructure.GPIO_Pin = CAN2_TX_PIN;
        MOV      R0,#+8192
        STRH     R0,[SP, #+0]
//  451 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
//  452 	GPIO_Init(CAN2_TX_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  453 
//  454 	//GPIO_PinRemapConfig(GPIO_Remap1_CAN, ENABLE);
//  455 
//  456 	/* Configure CAN2 pin: RX */
//  457 	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8;
        MOV      R0,#+256
        STRH     R0,[SP, #+0]
//  458 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
//  459 	GPIO_Init(GPIOA, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable15_6  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  460 
//  461 	GPIO_InitStructure.GPIO_Pin = (CTOUCH_INT_PIN);
        MOVS     R0,#+4
        STRH     R0,[SP, #+0]
//  462 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  463 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  464 	GPIO_Init(CTOUCH_INT_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_2  ;; 0x40011400
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  465 
//  466 	GPIO_InitStructure.GPIO_Pin = (CTOUCH_RST_PIN);
        MOV      R0,#+4096
        STRH     R0,[SP, #+0]
//  467 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  468 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  469 	GPIO_Init(CTOUCH_RST_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  470 
//  471 	/*!< Configure sEE_I2C pins: SCL */
//  472 	GPIO_InitStructure.GPIO_Pin = CTOUCH_SCL_PIN;
        MOV      R0,#+1024
        STRH     R0,[SP, #+0]
//  473 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  474 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;//
        MOVS     R0,#+20
        STRB     R0,[SP, #+3]
//  475 	GPIO_Init(CTOUCH_SCL_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  476 
//  477 	/*!< Configure sEE_I2C pins: SDA */
//  478 	GPIO_InitStructure.GPIO_Pin = CTOUCH_SDA_PIN;
        MOV      R0,#+2048
        STRH     R0,[SP, #+0]
//  479 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  480 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
        MOVS     R0,#+20
        STRB     R0,[SP, #+3]
//  481 	GPIO_Init(CTOUCH_SDA_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  482 
//  483 	GPIO_InitStructure.GPIO_Pin = (GPIO_Pin_13);
        MOV      R0,#+8192
        STRH     R0,[SP, #+0]
//  484 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//  485 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//  486 	GPIO_Init(GPIOC, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  487 
//  488 	GPIO_InitStructure.GPIO_Pin = (MTN5_CLK_PIN|MTN5_DATA_PIN);
        MOV      R0,#+768
        STRH     R0,[SP, #+0]
//  489 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
        MOVS     R0,#+20
        STRB     R0,[SP, #+3]
//  490 	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
//  491 	GPIO_Init(GPIOB, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16  ;; 0x40010c00
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  492 
//  493 	GPIO_InitStructure.GPIO_Pin = (MTN5_BUSY_PIN);
        MOVS     R0,#+1
        STRH     R0,[SP, #+0]
//  494 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
//  495 	//GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//  496 	GPIO_Init(MTN5_BUSY_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  497 
//  498 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5
//  499 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function System_Normal_ClkSetup
        THUMB
//  500 void System_Normal_ClkSetup(void)
//  501 {
System_Normal_ClkSetup:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  502 
//  503     //-----------------------config clock--------------------------
//  504     /* Enable PWR and BKP clock */
//  505     RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+402653184
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  506     PWR_WakeUpPinCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall PWR_WakeUpPinCmd
        BL       PWR_WakeUpPinCmd
//  507     /* Allow access to BKP Domain */
//  508     PWR_BackupAccessCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall PWR_BackupAccessCmd
        BL       PWR_BackupAccessCmd
//  509     //----------------------config AFIO---------------------
//  510     RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//  511      //----------------------config CAN---------------------
//  512     RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+33554432
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  513     RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN2, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+67108864
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  514     //----------------------config GPIO--------------------
//  515     RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA  | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | \ 
//  516                            RCC_APB2Periph_GPIOD  , ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+60
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
//  517     //RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA  | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | \ 
//  518     //                       RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_GPIOF | RCC_APB2Periph_GPIOG , ENABLE);//Miller.Tao2014-09-10
//  519 	//----------------------config DMA---------------------
//  520 	RCC_AHBPeriphClockCmd( RCC_AHBPeriph_DMA1 | RCC_AHBPeriph_SRAM | RCC_AHBPeriph_FLITF | RCC_AHBPeriph_CRC , ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+85
          CFI FunCall RCC_AHBPeriphClockCmd
        BL       RCC_AHBPeriphClockCmd
//  521     //----------------------config uart -------------------
//  522    // RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);
//  523     RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+131072
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  524 	
//  525     RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+262144
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  526     RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1048576
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  527 	
//  528     //RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C1, ENABLE);
//  529     //----------------------config timer--------------------------
//  530     RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+2
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  531 	
//  532     RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  533     //----------------------config ADC1--------------------------
//  534 
//  535 
//  536 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6
//  537 
//  538 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function GPIO_keylight_Configuration
          CFI NoCalls
        THUMB
//  539 void GPIO_keylight_Configuration(void)
//  540 {}
GPIO_keylight_Configuration:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  541 	

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function GPIO_Off_Init
          CFI NoCalls
        THUMB
//  542 void GPIO_Off_Init(void)
//  543 {
//  544 /* PORT A Definition*/
//  545 #if 0 //miller.tao20150731
//  546 	DAC_SetChannel2Data(DAC_Align_8b_R, 0x0);	//DAC
//  547 	GPIO_WriteBit(GPIOA, P_RADIO_PWR, Bit_RESET);
//  548 
//  549 	GPIO_WriteBit(GPIOA, P_DVR_PWR, Bit_RESET);
//  550 	GPIO_WriteBit(GPIOA, P_M_IN2, Bit_RESET);
//  551 	GPIO_WriteBit(GPIOA, P_DISC_LED, Bit_RESET);
//  552 
//  553 /* PORT B Definition*/
//  554 
//  555 	GPIO_WriteBit(GPIOB, P_PEC_RST, Bit_RESET);
//  556 	GPIO_WriteBit(GPIOB, P_TV_SDA, Bit_RESET);
//  557 	GPIO_WriteBit(GPIOB, P_AUDIO_SEL1, Bit_SET);
//  558 	GPIO_WriteBit(GPIOB, P_AUDIO_SEL2, Bit_RESET);
//  559 	GPIO_WriteBit(GPIOB, P_TW8823_SCL, Bit_RESET);
//  560 	GPIO_WriteBit(GPIOB, P_TW8823_SDA, Bit_RESET);
//  561 
//  562 	GPIO_WriteBit(GPIOB, P_PEC_CLK, Bit_RESET);
//  563 	GPIO_WriteBit(GPIOB, P_MAIN_SCL, Bit_RESET);
//  564 	GPIO_WriteBit(GPIOB, P_MAIN_SDA, Bit_RESET);
//  565 	GPIO_WriteBit(GPIOB, P_8823_SPI_CS, Bit_RESET);
//  566 	
//  567 	GPIO_WriteBit(GPIOB, P_GOD_RST, Bit_RESET);
//  568 
//  569 
//  570 	GPIO_WriteBit(GPIOC, P_TV_PWR , Bit_RESET);
//  571 	GPIO_WriteBit(GPIOC, P_DVD_RST , Bit_RESET);
//  572 
//  573 	GPIO_WriteBit(GPIOC, P_TV_SEL , Bit_RESET);
//  574 
//  575 
//  576 	GPIO_WriteBit(GPIOD, P_TW8823_RST , Bit_RESET);
//  577 
//  578 	GPIO_WriteBit(GPIOD, P_DTVTXD_ATVSCL , Bit_RESET);
//  579 
//  580 	GPIO_WriteBit(GPIOD, P_RES_SEL , Bit_RESET);
//  581 	GPIO_WriteBit(GPIOD, P_LED_COL1 , Bit_RESET);
//  582 	GPIO_WriteBit(GPIOD, P_LED_COL2 , Bit_RESET);
//  583 	GPIO_WriteBit(GPIOD, P_MUTE , Bit_RESET);
//  584 	GPIO_WriteBit(GPIOD, P_MUTE_ZONE , Bit_RESET);
//  585 	GPIO_WriteBit(GPIOD, P_STBY , Bit_RESET);
//  586 
//  587 	GPIO_WriteBit(GPIOE, P_DVDUSB_SEL , Bit_RESET);
//  588 	GPIO_WriteBit(GPIOE, P_DVR_WRXD , Bit_RESET);
//  589 	GPIO_WriteBit(GPIOE, P_2ZONE_WTXD, Bit_RESET);
//  590 	GPIO_WriteBit(GPIOE, P_2ZONE_RTXD , Bit_RESET);
//  591     #endif
//  592 
//  593 	
//  594 }
GPIO_Off_Init:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  595 
//  596 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function GPIO_On_Init
          CFI NoCalls
        THUMB
//  597 void GPIO_On_Init(void)
//  598 {
//  599 /* PORT A Definition*/
//  600        #if 0//miller.tao20150731
//  601 	DAC_SetChannel2Data(DAC_Align_8b_R, 0x0);   //DAC
//  602 	GPIO_WriteBit(GPIOA, P_RADIO_PWR, Bit_RESET);
//  603 
//  604 	GPIO_WriteBit(GPIOA, P_DVR_PWR, Bit_RESET);
//  605 	GPIO_WriteBit(GPIOA, P_M_IN2, Bit_RESET);
//  606 	GPIO_WriteBit(GPIOA, P_DISC_LED, Bit_RESET);
//  607 
//  608 	GPIO_WriteBit(GPIOB, P_PEC_RST, Bit_SET);
//  609 	GPIO_WriteBit(GPIOB, P_TV_SDA, Bit_SET);
//  610 	GPIO_WriteBit(GPIOB, P_AUDIO_SEL1, Bit_SET);
//  611 	GPIO_WriteBit(GPIOB, P_AUDIO_SEL2, Bit_RESET);
//  612 	GPIO_WriteBit(GPIOB, P_TW8823_SCL, Bit_SET);
//  613 	GPIO_WriteBit(GPIOB, P_TW8823_SDA, Bit_SET);
//  614 	
//  615 	GPIO_WriteBit(GPIOB, P_PEC_CLK, Bit_SET);
//  616 	GPIO_WriteBit(GPIOB, P_MAIN_SCL, Bit_SET);
//  617 	GPIO_WriteBit(GPIOB, P_MAIN_SDA, Bit_SET);
//  618 	GPIO_WriteBit(GPIOB, P_8823_SPI_CS, Bit_RESET);
//  619 	
//  620 	GPIO_WriteBit(GPIOB, P_GOD_RST, Bit_SET);
//  621 
//  622 
//  623 	GPIO_WriteBit(GPIOC, P_TV_PWR , Bit_RESET);
//  624 	GPIO_WriteBit(GPIOC, P_DVD_RST , Bit_RESET);
//  625 
//  626 	GPIO_WriteBit(GPIOC, P_TV_SEL , Bit_RESET);
//  627 
//  628 
//  629 	GPIO_WriteBit(GPIOD, P_DTVTXD_ATVSCL , Bit_SET);
//  630 
//  631 	GPIO_WriteBit(GPIOD, P_RES_SEL , Bit_RESET);
//  632 	GPIO_WriteBit(GPIOD, P_LED_COL1 , Bit_RESET);
//  633 	GPIO_WriteBit(GPIOD, P_LED_COL2 , Bit_RESET);
//  634 	GPIO_WriteBit(GPIOD, P_MUTE , Bit_RESET);
//  635 	GPIO_WriteBit(GPIOD, P_MUTE_ZONE , Bit_RESET);
//  636 	GPIO_WriteBit(GPIOD, P_STBY , Bit_RESET);
//  637 
//  638 	GPIO_WriteBit(GPIOE, P_DVDUSB_SEL , Bit_RESET);
//  639 	GPIO_WriteBit(GPIOE, P_DVR_WRXD , Bit_RESET);
//  640 	GPIO_WriteBit(GPIOE, P_2ZONE_WTXD, Bit_SET);
//  641 	GPIO_WriteBit(GPIOE, P_2ZONE_RTXD , Bit_SET);
//  642         #endif
//  643 }	
GPIO_On_Init:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  644 
//  645 //中断配置

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function NVIC_Configuration
        THUMB
//  646 void NVIC_Configuration(void)
//  647 {
NVIC_Configuration:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  648 	NVIC_InitTypeDef NVIC_InitStructure;
//  649 
//  650 
//  651 	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
        MOV      R0,#+1280
          CFI FunCall NVIC_PriorityGroupConfig
        BL       NVIC_PriorityGroupConfig
//  652 
//  653 	/* Enable the TIM2 gloabal Interrupt */
//  654 	NVIC_InitStructure.NVIC_IRQChannel = EXTI2_IRQn;
        MOVS     R0,#+8
        STRB     R0,[SP, #+0]
//  655 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;
        MOVS     R0,#+2
        STRB     R0,[SP, #+1]
//  656 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//  657 	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//  658 	NVIC_Init(&NVIC_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//  659 
//  660 	/* Enable the TIM2 gloabal Interrupt */
//  661 	NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
        MOVS     R0,#+28
        STRB     R0,[SP, #+0]
//  662 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//  663 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//  664 	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//  665 	NVIC_Init(&NVIC_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//  666 	
//  667 #if 0
//  668 	//------------MCU-----------------------------------
//  669 	NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
//  670 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
//  671 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
//  672 	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//  673 	NVIC_Init(&NVIC_InitStructure);
//  674 	
//  675 #endif
//  676 	//------------GPS-----------------------------------
//  677 	NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
        MOVS     R0,#+39
        STRB     R0,[SP, #+0]
//  678 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//  679 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
        MOVS     R0,#+2
        STRB     R0,[SP, #+2]
//  680 	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//  681 	NVIC_Init(&NVIC_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//  682 	#if 0
//  683 	//------------Q3 Rec-----------------------------------
//  684 	NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
//  685 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
//  686 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
//  687 	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//  688 	NVIC_Init(&NVIC_InitStructure);
//  689 
//  690 	//------------DVD ipod-----------------------------------
//  691 	NVIC_InitStructure.NVIC_IRQChannel = UART5_IRQn;
//  692 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
//  693 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
//  694 	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//  695 	NVIC_Init(&NVIC_InitStructure);
//  696 	
//  697 #endif
//  698 	//------------BT-----------------------------------
//  699 	#if 0
//  700 	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
//  701 	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
//  702 	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
//  703 	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//  704 	NVIC_Init(&NVIC_InitStructure);
//  705 	//---------------CAN-------------------------------
//  706 #endif
//  707 
//  708     NVIC_InitStructure.NVIC_IRQChannel = CAN1_RX0_IRQn;
        MOVS     R0,#+20
        STRB     R0,[SP, #+0]
//  709     NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//  710     NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
        MOVS     R0,#+2
        STRB     R0,[SP, #+2]
//  711     NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//  712     NVIC_Init(&NVIC_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//  713 
//  714     NVIC_InitStructure.NVIC_IRQChannel = CAN2_RX0_IRQn;
        MOVS     R0,#+64
        STRB     R0,[SP, #+0]
//  715     NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//  716     NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
        MOVS     R0,#+2
        STRB     R0,[SP, #+2]
//  717     NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//  718     NVIC_Init(&NVIC_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
//  719 
//  720 
//  721 #if 0
//  722   NVIC_InitStructure.NVIC_IRQChannel = RTCAlarm_IRQn;//RTCAlarm_IRQChannel;
//  723   NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
//  724   NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
//  725   NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//  726   NVIC_Init(&NVIC_InitStructure);
//  727   #endif
//  728 	//---------------SYSTEM TICK------------------------
//  729 	//n=0x00~0x03 设置Systick为抢占优先级0
//  730 	//n=0x04~0x07 设置Systick为抢占优先级1
//  731 	//n=0x08~0x0B 设置Systick为抢占优先级2
//  732 	//n=0x0C~0x0F 设置Systick为抢占优先级3
//  733 
//  734 	/*
//  735 	这时不能显式的看出抢先式优先级与子优先级，写入的优先级需要根据优先级组的配置来选择。
//  736 	NVIC_SetPriority函数指定中断优先级的寄存器位（STM32只用4位来表示优先级）的数据，
//  737 	例如中断优先级组设置为了2，即高2位用于指定抢占式优先级，低2位用于指定响应优先级，
//  738 	0x00~0x03高2位为0，所以抢占优先级为0；0x04~0x07高2位为1，所以抢占优先级为1，以此类推。
//  739 	*/
//  740 
//  741 	NVIC_SetPriority(SysTick_IRQn, 1);
        MOVS     R1,#+1
        MOVS     R0,#-1
          CFI FunCall NVIC_SetPriority
        BL       NVIC_SetPriority
//  742 
//  743 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock10
//  744 
//  745 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function EXIT_Control
          CFI NoCalls
        THUMB
//  746 void EXIT_Control(BYTE type,BYTE on_off)
//  747 {}
EXIT_Control:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  748 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function EXIT_all_off
          CFI NoCalls
        THUMB
//  749 void EXIT_all_off(void)
//  750 {
//  751 	// USART_ITConfig(UART4, USART_IT_RXNE, DISABLE);
//  752 	//SysTick_ITConfig(DISABLE);
//  753 }	
EXIT_all_off:
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  754 
//  755 
//  756 
//  757 /*******************************************************************************
//  758 * Function Name  : RTC_Configuration
//  759 * Description    : Configures the RTC.
//  760 * Input          : None
//  761 * Output         : None
//  762 * Return         : None
//  763 *******************************************************************************/
//  764 #if 1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function RTC_Configuration
        THUMB
//  765 void RTC_Configuration(void)
//  766 {
RTC_Configuration:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
//  767 	DWORD i;
//  768 	 EXTI_InitTypeDef EXTI_InitStructure;
//  769 
//  770 	  /* Configure EXTI Line17(RTC Alarm) to generate an interrupt on rising edge */
//  771 	  EXTI_InitStructure.EXTI_Line = EXTI_Line17;
        MOVS     R0,#+131072
        STR      R0,[SP, #+0]
//  772 	  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//  773 	  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
        MOVS     R0,#+8
        STRB     R0,[SP, #+5]
//  774 	  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+6]
//  775 	  EXTI_Init(&EXTI_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall EXTI_Init
        BL       EXTI_Init
//  776   
//  777   /* Enable PWR and BKP clocks */
//  778   RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+402653184
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
//  779 
//  780   /* Allow access to BKP Domain */
//  781   PWR_BackupAccessCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall PWR_BackupAccessCmd
        BL       PWR_BackupAccessCmd
//  782 
//  783   /* Reset Backup Domain */
//  784   BKP_DeInit();
          CFI FunCall BKP_DeInit
        BL       BKP_DeInit
//  785 
//  786   /* Enable the LSI OSC */
//  787   RCC_LSICmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall RCC_LSICmd
        BL       RCC_LSICmd
//  788   /* Wait till LSI is ready */
//  789 	i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  790   while (RCC_GetFlagStatus(RCC_FLAG_LSIRDY) == RESET)
??RTC_Configuration_0:
        MOVS     R0,#+97
          CFI FunCall RCC_GetFlagStatus
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BNE.N    ??RTC_Configuration_1
//  791   {
//  792 		delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
//  793 		if(i++>80000)
        MOVS     R0,R4
        ADDS     R4,R0,#+1
        LDR.W    R1,??DataTable15_5  ;; 0x13881
        CMP      R0,R1
        BCC.N    ??RTC_Configuration_0
//  794 			break;		
//  795   }
//  796 
//  797   /* Select the RTC Clock Source */
//  798   RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);
??RTC_Configuration_1:
        MOV      R0,#+512
          CFI FunCall RCC_RTCCLKConfig
        BL       RCC_RTCCLKConfig
//  799 
//  800   /* Enable RTC Clock */
//  801   RCC_RTCCLKCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall RCC_RTCCLKCmd
        BL       RCC_RTCCLKCmd
//  802 
//  803   /* Wait for RTC registers synchronization */
//  804   RTC_WaitForSynchro();
          CFI FunCall RTC_WaitForSynchro
        BL       RTC_WaitForSynchro
//  805 
//  806   /* Wait until last write operation on RTC registers has finished */
//  807   RTC_WaitForLastTask();
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  808 
//  809   /* Enable the RTC Second */
//  810   //RTC_ITConfig(RTC_IT_SEC, ENABLE);
//  811 
//  812   /* Wait until last write operation on RTC registers has finished */
//  813   RTC_WaitForLastTask();
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  814 
//  815   /* Set RTC prescaler: set RTC period to 1sec */
//  816   RTC_SetPrescaler(40000);
        MOVW     R0,#+40000
          CFI FunCall RTC_SetPrescaler
        BL       RTC_SetPrescaler
//  817 
//  818   /* Wait until last write operation on RTC registers has finished */
//  819   RTC_WaitForLastTask();
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  820 
//  821   /* To output second signal on Tamper pin, the tamper functionality
//  822 	   must be disabled (by default this functionality is disabled) */
//  823  // BKP_TamperPinCmd(DISABLE);
//  824 
//  825   /* Enable the RTC Second Output on Tamper Pin */
//  826   //BKP_RTCOutputConfig(BKP_RTCOutputSource_Second);
//  827 
//  828   /* Enable the RTC Alarm interrupt */
//  829   RTC_ITConfig(RTC_IT_ALR, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+2
          CFI FunCall RTC_ITConfig
        BL       RTC_ITConfig
//  830 	/* Wait until last write operation on RTC registers has finished */
//  831   RTC_WaitForLastTask();	
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  832 }
        POP      {R0,R1,R4,PC}    ;; return
          CFI EndBlock cfiBlock13
//  833 	
//  834 #else
//  835 	
//  836 void RTC_Configuration(void)
//  837 {
//  838 	/* Enable PWR and BKP clocks */
//  839 	RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
//  840 
//  841 	/* Allow access to BKP Domain */
//  842 	PWR_BackupAccessCmd(ENABLE);
//  843 
//  844 	/* Reset Backup Domain */
//  845 	BKP_DeInit();
//  846 
//  847 	/* Enable the LSI OSC */
//  848 	RCC_LSICmd(ENABLE);
//  849 	/* Wait till LSI is ready */
//  850 	while (RCC_GetFlagStatus(RCC_FLAG_LSIRDY) == RESET)
//  851 		{}
//  852 	/* Select the RTC Clock Source */
//  853 	RCC_RTCCLKConfig(RCC_RTCCLKSource_LSI);
//  854 
//  855 	/* Enable RTC Clock */
//  856 	RCC_RTCCLKCmd(ENABLE);
//  857 
//  858 	/* Wait for RTC registers synchronization */
//  859 	RTC_WaitForSynchro();
//  860 
//  861 	/* Wait until last write operation on RTC registers has finished */
//  862 	RTC_WaitForLastTask();
//  863 
//  864 	/* Enable the RTC Second */
//  865 	RTC_ITConfig(RTC_IT_ALR, ENABLE);
//  866 
//  867 	/* Wait until last write operation on RTC registers has finished */
//  868 	RTC_WaitForLastTask();
//  869 
//  870 	/* Set RTC prescaler: set RTC period to 1sec */
//  871 	RTC_SetPrescaler(40000);
//  872 
//  873 	/* Wait until last write operation on RTC registers has finished */
//  874 	RTC_WaitForLastTask();
//  875 
//  876 }
//  877 #endif
//  878 
//  879 
//  880 
//  881 /*******************************************************************************
//  882 * Function Name  : Time_Adjust
//  883 * Description    : Adjusts time.
//  884 * Input          : None
//  885 * Output         : None
//  886 * Return         : None
//  887 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function Time_Adjust
        THUMB
//  888 void Time_Adjust(void)
//  889 {
Time_Adjust:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  890   /* Wait until last write operation on RTC registers has finished */
//  891   RTC_WaitForLastTask();
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  892   /* Change the current time */
//  893   RTC_SetCounter(Time_Regulate());
          CFI FunCall Time_Regulate
        BL       Time_Regulate
          CFI FunCall RTC_SetCounter
        BL       RTC_SetCounter
//  894   /* Wait until last write operation on RTC registers has finished */
//  895   RTC_WaitForLastTask();
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  896 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock14
//  897 
//  898 /*******************************************************************************
//  899 * Function Name  : Time_Regulate
//  900 * Description    : Returns the time entered by user, using Hyperterminal.
//  901 * Input          : None
//  902 * Output         : None
//  903 * Return         : Current time RTC counter value
//  904 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function Time_Regulate
          CFI NoCalls
        THUMB
//  905 u32 Time_Regulate(void)
//  906 {
Time_Regulate:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  907   u32 Tmp_HH = 0x21, Tmp_MM = 0x31, Tmp_SS = 0x32;
        MOVS     R0,#+33
        MOVS     R1,#+49
        MOVS     R2,#+50
//  908 
//  909   /* Return the value to store in RTC counter register */
//  910   return((Tmp_HH*3600 + Tmp_MM*60 + Tmp_SS));
        MOV      R3,#+3600
        MOVS     R4,#+60
        MULS     R1,R4,R1
        MLA      R0,R3,R0,R1
        ADDS     R0,R2,R0
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  911 }
//  912 
//  913 /*******************************************************************************
//  914 * Function Name  : DMA_Configuration
//  915 * Description    : Configures the DMA.
//  916 * Input          : None
//  917 * Output         : None
//  918 * Return         : None
//  919 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function DMA_Configuration
          CFI NoCalls
        THUMB
//  920 void DMA_Configuration(BYTE *Receive_Buf,u16 NumByteToRead)
//  921 {
//  922   
//  923 }
DMA_Configuration:
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  924 
//  925 
//  926 //外部中断

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function ExInt_Config
          CFI NoCalls
        THUMB
//  927 void ExInt_Config(void)
//  928 {
//  929     //EXTI_InitTypeDef EXTI_InitStructure;
//  930 
//  931 #if 0
//  932   //RDS
//  933    GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource0);
//  934    /* Configure EXTI Line9 to generate an interrupt on falling edge */
//  935    EXTI_InitStructure.EXTI_Line = EXTI_Line0;
//  936    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
//  937    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
//  938    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
//  939    EXTI_Init(&EXTI_InitStructure);	
//  940 #endif	
//  941 
//  942   //ENCODE
//  943  //  GPIO_EXTILineConfig(GPIO_PortSourceGPIOE, GPIO_PinSource1);
//  944    /* Configure EXTI Line9 to generate an interrupt on falling edge */
//  945  /*  EXTI_InitStructure.EXTI_Line = EXTI_Line1;
//  946    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
//  947    EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;//EXTI_Trigger_Rising;//
//  948    EXTI_InitStructure.EXTI_LineCmd = ENABLE;
//  949    EXTI_Init(&EXTI_InitStructure);	*/
//  950    
//  951 
//  952 
//  953 
//  954 }
ExInt_Config:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  955 
//  956 
//  957 /*******************************************************************************
//  958 * Function Name  : SPI_FLASH_Init
//  959 * Description    : Initializes the peripherals used by the SPI FLASH driver.
//  960 * Input          : None
//  961 * Output         : None
//  962 * Return         : None
//  963 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function SPI_FLASH_Init
          CFI NoCalls
        THUMB
//  964 void SPI_FLASH_Init(void)
//  965 {
//  966 
//  967 }
SPI_FLASH_Init:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  968 
//  969 //定时器
//  970 /*******************************************************************************
//  971 * Function Name  : LcdShow_Init
//  972 * Description    : Configure the lcd dispaly: TIM4 initialize in Output Compare
//  973 *                  Timing Mode
//  974 * Input          : None
//  975 * Return         : None
//  976 * Comment        : TIM2 Configuration: Output Compare Timing Mode:
//  977                    TIM2CLK = 36 *2 =72MHz, Prescaler = 17, TIM2 counter clock = 4 MHz
//  978                    TIM2 update Period = ARR / TIM2 counter Period = 2 ms
//  979                    CC1 OC period = 1ms
//  980 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function Main_SysTick_Config
        THUMB
//  981 	void Main_SysTick_Config(void)
//  982 	{
Main_SysTick_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  983 		SysTick_Config(SystemCoreClock / 1000);
        LDR.W    R0,??DataTable16_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
          CFI FunCall SysTick_Config
        BL       SysTick_Config
//  984 	
//  985 	}
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock19
//  986 	

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function TIMER_Configuration
        THUMB
//  987 	void TIMER_Configuration(void)
//  988 	{
TIMER_Configuration:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
//  989 		TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
//  990 		TIM_OCInitTypeDef TIM_OCInitStructure;
//  991 		//TIM_ICInitTypeDef TIM_ICInitStructure;
//  992 
//  993 		
//  994 #if  0
//  995 		CCR1_Val = 200;
//  996 		CCR2_Val = 5000;
//  997 		CCR3_Val = 2000;
//  998 		CCR4_Val = 4000;
//  999 
// 1000 		/* ---------------------------------------------------------------
// 1001 		TIM2 Configuration: Output Compare Timing Mode:
// 1002 		TIM2CLK = 36 MHz, Prescaler = 4, TIM2 counter clock = 7.2 MHz
// 1003 		CC1 update rate = TIM2 counter clock / CCR1_Val = 146.48 Hz
// 1004 		CC2 update rate = TIM2 counter clock / CCR2_Val = 219.7 Hz
// 1005 		CC3 update rate = TIM2 counter clock / CCR3_Val = 439.4 Hz
// 1006 		CC4 update rate = TIM2 counter clock / CCR4_Val =  878.9 Hz
// 1007 		--------------------------------------------------------------- */
// 1008 		/* Time base configuration */
// 1009 	    TIM_TimeBaseStructure.TIM_Period = 65535;
// 1010 	    TIM_TimeBaseStructure.TIM_Prescaler = 0;
// 1011 	    TIM_TimeBaseStructure.TIM_ClockDivision = 0;
// 1012 	    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
// 1013 	    TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);
// 1014 	    /* Prescaler configuration */
// 1015 	    TIM_PrescalerConfig(TIM2, 71, TIM_PSCReloadMode_Immediate);
// 1016 	    /* Output Compare Timing Mode configuration: Channel1 */
// 1017 	    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_Timing;
// 1018 	    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
// 1019 	    TIM_OCInitStructure.TIM_Pulse = CCR1_Val;
// 1020 	    //TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
// 1021 	    TIM_OC1Init(TIM2, &TIM_OCInitStructure);
// 1022 	    TIM_OC1PreloadConfig(TIM2, TIM_OCPreload_Disable);
// 1023 	    /* Output Compare Timing Mode configuration: Channel2 */
// 1024 	    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
// 1025 	    TIM_OCInitStructure.TIM_Pulse = CCR2_Val;
// 1026 	    TIM_OC2Init(TIM2, &TIM_OCInitStructure);
// 1027 	    TIM_OC2PreloadConfig(TIM2, TIM_OCPreload_Disable);
// 1028 	    /* Output Compare Timing Mode configuration: Channel3 */
// 1029 	    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
// 1030 	    TIM_OCInitStructure.TIM_Pulse = CCR3_Val;
// 1031 	    TIM_OC3Init(TIM2, &TIM_OCInitStructure);
// 1032 	    TIM_OC3PreloadConfig(TIM2, TIM_OCPreload_Disable);
// 1033 	    /* Output Compare Timing Mode configuration: Channel4 */
// 1034 	    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
// 1035 	    TIM_OCInitStructure.TIM_Pulse = CCR4_Val;
// 1036 	    TIM_OC4Init(TIM2, &TIM_OCInitStructure);
// 1037 	    TIM_OC4PreloadConfig(TIM2, TIM_OCPreload_Disable);
// 1038 	    /* TIM IT enable */
// 1039 	    TIM_ITConfig(TIM2, TIM_IT_CC1 | TIM_IT_CC2 | TIM_IT_CC3 | TIM_IT_CC4, DISABLE)
// 1040 	    ;
// 1041 	    //TIM_ITConfig(TIM2, TIM_IT_CC1 | TIM_IT_CC2 | TIM_IT_CC3 | TIM_IT_CC4, ENABLE);
// 1042 	    /* TIM2 enable counter */
// 1043 	    TIM_Cmd(TIM2, ENABLE);
// 1044 #endif
// 1045 		
// 1046 		GPIO_PinRemapConfig(GPIO_FullRemap_TIM3,ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_4  ;; 0x1a0c00
          CFI FunCall GPIO_PinRemapConfig
        BL       GPIO_PinRemapConfig
// 1047 		TIM_TimeBaseStructure.TIM_Period = 4001;
        MOVW     R0,#+4001
        STRH     R0,[SP, #+20]
// 1048 		TIM_TimeBaseStructure.TIM_Prescaler = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+16]
// 1049 		TIM_TimeBaseStructure.TIM_ClockDivision = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+22]
// 1050 		TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
        MOVS     R0,#+0
        STRH     R0,[SP, #+18]
// 1051 		TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure);
        ADD      R1,SP,#+16
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_TimeBaseInit
        BL       TIM_TimeBaseInit
// 1052 		/* Prescaler configuration */
// 1053 		TIM_PrescalerConfig(TIM3, 71, TIM_PSCReloadMode_Immediate);
        MOVS     R2,#+1
        MOVS     R1,#+71
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_PrescalerConfig
        BL       TIM_PrescalerConfig
// 1054 		/* Output Compare Timing Mode configuration: Channel1 */
// 1055 		TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
        MOVS     R0,#+96
        STRH     R0,[SP, #+0]
// 1056 		TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
        MOVS     R0,#+1
        STRH     R0,[SP, #+2]
// 1057 		TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable; //使能  互补 输出状态
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
// 1058 		TIM_OCInitStructure.TIM_Pulse = 4000;
        MOV      R0,#+4000
        STRH     R0,[SP, #+6]
// 1059 		TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
        MOVS     R0,#+2
        STRH     R0,[SP, #+8]
// 1060 		TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;     //互补 输出极性高
        MOVS     R0,#+0
        STRH     R0,[SP, #+10]
// 1061 		TIM_OCInitStructure.TIM_OCIdleState  =  TIM_OCIdleState_Set;    
        MOV      R0,#+256
        STRH     R0,[SP, #+12]
// 1062         TIM_OCInitStructure.TIM_OCNIdleState =  TIM_OCIdleState_Reset; 
        MOVS     R0,#+0
        STRH     R0,[SP, #+14]
// 1063 		TIM_OC3Init(TIM3, &TIM_OCInitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_OC3Init
        BL       TIM_OC3Init
// 1064 
// 1065 
// 1066 	
// 1067 	TIM_OC3PreloadConfig(TIM3, TIM_OCPreload_Enable);
        MOVS     R1,#+8
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_OC3PreloadConfig
        BL       TIM_OC3PreloadConfig
// 1068 	
// 1069 	TIM_ARRPreloadConfig(TIM3, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_ARRPreloadConfig
        BL       TIM_ARRPreloadConfig
// 1070 	TIM_CtrlPWMOutputs(TIM3, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_CtrlPWMOutputs
        BL       TIM_CtrlPWMOutputs
// 1071 	//TIM_CCxNCmd(TIM1,TIM_Channel_2, TIM_CCxN_Enable);
// 1072 		/* TIM IT enable */
// 1073 	   // TIM_ITConfig(TIM2, TIM_IT_CC1 | TIM_IT_CC2 | TIM_IT_CC3 | TIM_IT_CC4, DISABLE)
// 1074 	   // ;
// 1075 		//TIM_ITConfig(TIM2, TIM_IT_CC1 | TIM_IT_CC2 | TIM_IT_CC3 | TIM_IT_CC4, ENABLE);
// 1076 		/* TIM2 enable counter */
// 1077 		TIM_Cmd(TIM3, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_Cmd
        BL       TIM_Cmd
// 1078 	//PWM_Configuration(CCR1_Val-20);
// 1079 	}
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock20
// 1080 
// 1081 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function PWM_Configuration
        THUMB
// 1082 void PWM_Configuration(vu16 ccr_data)
// 1083 {
PWM_Configuration:
        PUSH     {R0,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        SUB      SP,SP,#+16
          CFI CFA R13+24
// 1084    // TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
// 1085     TIM_OCInitTypeDef TIM_OCInitStructure;
// 1086 	
// 1087     /* Output Compare Timing Mode configuration: Channel1 */
// 1088     TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
        MOVS     R0,#+96
        STRH     R0,[SP, #+0]
// 1089     TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
        MOVS     R0,#+1
        STRH     R0,[SP, #+2]
// 1090     TIM_OCInitStructure.TIM_Pulse = ccr_data;
        LDRH     R0,[SP, #+16]
        STRH     R0,[SP, #+6]
// 1091     TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
        MOVS     R0,#+2
        STRH     R0,[SP, #+8]
// 1092     TIM_OC3Init(TIM3, &TIM_OCInitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_OC3Init
        BL       TIM_OC3Init
// 1093 
// 1094     /* TIM IT enable */
// 1095    // TIM_ITConfig(TIM2, TIM_IT_CC1 | TIM_IT_CC2 | TIM_IT_CC3 | TIM_IT_CC4, DISABLE)
// 1096    // ;
// 1097     //TIM_ITConfig(TIM2, TIM_IT_CC1 | TIM_IT_CC2 | TIM_IT_CC3 | TIM_IT_CC4, ENABLE);
// 1098     /* TIM2 enable counter */
// 1099     TIM_Cmd(TIM3, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_5  ;; 0x40000400
          CFI FunCall TIM_Cmd
        BL       TIM_Cmd
// 1100 
// 1101 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock21
// 1102 
// 1103 
// 1104 //ADC

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function ADC_Config
        THUMB
// 1105 void ADC_Config(void)
// 1106 {
ADC_Config:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
// 1107 	ADC_InitTypeDef ADC_InitStructure;
// 1108 	ADC_StructInit(&ADC_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall ADC_StructInit
        BL       ADC_StructInit
// 1109 	/* ADC1 configuration ------------------------------------------------------*/
// 1110 	ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
// 1111 	ADC_InitStructure.ADC_ScanConvMode = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+4]
// 1112 	ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
// 1113 	ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
        MOVS     R0,#+917504
        STR      R0,[SP, #+8]
// 1114 	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1115 	ADC_InitStructure.ADC_NbrOfChannel = 1; // 1
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
// 1116 	ADC_Init(ADC1, &ADC_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_Init
        BL       ADC_Init
// 1117 	/* ADC1 regular channel14 configuration */
// 1118 	//ADC_RegularChannelConfig(ADC1, ADC_Channel_5, 1, ADC_SampleTime_55Cycles5);
// 1119 	//ADC_RegularChannelConfig(ADC1, ADC_Channel_9, 2, ADC_SampleTime_55Cycles5);
// 1120 	ADC_RegularChannelConfig(ADC1, ADC_Channel_4, 1, ADC_SampleTime_55Cycles5);
        MOVS     R3,#+5
        MOVS     R2,#+1
        MOVS     R1,#+4
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_RegularChannelConfig
        BL       ADC_RegularChannelConfig
// 1121 	//ADC_RegularChannelConfig(ADC1, ADC_Channel_5, 2, ADC_SampleTime_55Cycles5);
// 1122 	//ADC_RegularChannelConfig(ADC1, ADC_Channel_15, 4, ADC_SampleTime_55Cycles5);
// 1123 	/* Enable ADC1 DMA */
// 1124 	ADC_DMACmd(ADC1, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_DMACmd
        BL       ADC_DMACmd
// 1125 	/* Enable ADC1 */
// 1126 	ADC_Cmd(ADC1, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_Cmd
        BL       ADC_Cmd
// 1127 	/* Enable ADC1 reset calibaration register */
// 1128 	ADC_ResetCalibration(ADC1);
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_ResetCalibration
        BL       ADC_ResetCalibration
// 1129 	/* Check the end of ADC1 reset calibration register */
// 1130 	while (ADC_GetResetCalibrationStatus(ADC1));
??ADC_Config_0:
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_GetResetCalibrationStatus
        BL       ADC_GetResetCalibrationStatus
        CMP      R0,#+0
        BNE.N    ??ADC_Config_0
// 1131 	/* Start ADC1 calibaration */
// 1132 	ADC_StartCalibration(ADC1);
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_StartCalibration
        BL       ADC_StartCalibration
// 1133 	/* Check the end of ADC1 calibration */
// 1134 	while (ADC_GetCalibrationStatus(ADC1));
??ADC_Config_1:
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_GetCalibrationStatus
        BL       ADC_GetCalibrationStatus
        CMP      R0,#+0
        BNE.N    ??ADC_Config_1
// 1135 	ADC_SoftwareStartConvCmd(ADC1, ENABLE); //使能ADC1软件开始转换
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_SoftwareStartConvCmd
        BL       ADC_SoftwareStartConvCmd
// 1136 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock22
// 1137 
// 1138 /*******************************************************************************
// 1139  * Function Name  : NVIC_STANBY_CAN_Configuration
// 1140  * Description    : Configures Vector Table base location.
// 1141  * Input          : None
// 1142  * Output         : None
// 1143  * Return         : None
// 1144  *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function NVIC_STANBY_CAN_Configuration
        THUMB
// 1145 void NVIC_STANBY_CAN_Configuration(void)
// 1146 {
NVIC_STANBY_CAN_Configuration:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1147     NVIC_InitTypeDef NVIC_InitStructure;
// 1148     /* Configure one bit for preemption priority */
// 1149     NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1);
        MOV      R0,#+1536
          CFI FunCall NVIC_PriorityGroupConfig
        BL       NVIC_PriorityGroupConfig
// 1150 
// 1151 
// 1152 #if 1
// 1153     NVIC_InitStructure.NVIC_IRQChannel = CAN1_RX1_IRQn;//USB_LP_CAN1_RX0_IRQn;
        MOVS     R0,#+21
        STRB     R0,[SP, #+0]
// 1154     NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
// 1155     NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x2;
        MOVS     R0,#+2
        STRB     R0,[SP, #+2]
// 1156     NVIC_InitStructure.NVIC_IRQChannelCmd = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+3]
// 1157     NVIC_Init(&NVIC_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall NVIC_Init
        BL       NVIC_Init
// 1158 #endif
// 1159     /* CAN FIFO0 message pending interrupt enable */
// 1160     CAN_ITConfig(CAN1, CAN_IT_FMP0 | CAN_IT_FF0, DISABLE);
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.W    R0,??DataTable16_7  ;; 0x40006400
          CFI FunCall CAN_ITConfig
        BL       CAN_ITConfig
// 1161     /* CAN FIFO0 message pending interrupt enable */
// 1162     //CAN_ITConfig(CAN2, CAN_IT_FMP0, DISABLE);
// 1163 
// 1164 
// 1165 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock23
// 1166 
// 1167 
// 1168 
// 1169 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function DAC_Config
        THUMB
// 1170 void DAC_Config(void)
// 1171 {
DAC_Config:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
// 1172    DAC_InitTypeDef  DAC_InitStructure;
// 1173    //GPIO_InitTypeDef GPIO_InitStructure;
// 1174   
// 1175   DAC_InitStructure.DAC_Trigger = DAC_Trigger_None; //DAC_Trigger_Software;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
// 1176   DAC_InitStructure.DAC_WaveGeneration = DAC_WaveGeneration_Noise;
        MOVS     R0,#+64
        STR      R0,[SP, #+4]
// 1177   DAC_InitStructure.DAC_LFSRUnmask_TriangleAmplitude = DAC_LFSRUnmask_Bits8_0;
        MOV      R0,#+2048
        STR      R0,[SP, #+8]
// 1178   DAC_InitStructure.DAC_OutputBuffer = DAC_OutputBuffer_Enable;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1179   DAC_Init(DAC_Channel_1, &DAC_InitStructure);
        ADD      R1,SP,#+0
        MOVS     R0,#+0
          CFI FunCall DAC_Init
        BL       DAC_Init
// 1180 
// 1181   /* Enable DAC Channel1 */
// 1182   DAC_Cmd(DAC_Channel_1, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+0
          CFI FunCall DAC_Cmd
        BL       DAC_Cmd
// 1183   DAC_SetChannel1Data(DAC_Align_8b_R, 0x80);	
        MOVS     R1,#+128
        MOVS     R0,#+8
          CFI FunCall DAC_SetChannel1Data
        BL       DAC_SetChannel1Data
// 1184 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock24
// 1185 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function STM32_Canbus_Config
          CFI NoCalls
        THUMB
// 1186 void STM32_Canbus_Config(void)
// 1187 {}
STM32_Canbus_Config:
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
// 1188 
// 1189 /*******************************************************************************
// 1190  * Function Name  : USART_Configuration
// 1191  * Description	  : Configures the different usart.
// 1192  * Input		  : None
// 1193  * Output		  : None
// 1194  * Return		  : None
// 1195  *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function USART_Configuration
        THUMB
// 1196 void USART_Configuration(void)
// 1197 {
USART_Configuration:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
// 1198 	USART_InitTypeDef USART_InitStructure;
// 1199 	/*************************DVD IPOD MP5******************************/
// 1200 #if 1 //miller.tao20150718
// 1201 	USART_InitStructure.USART_BaudRate = 9600;
        MOV      R0,#+9600
        STR      R0,[SP, #+0]
// 1202 
// 1203 	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
// 1204 	USART_InitStructure.USART_StopBits = USART_StopBits_1;
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
// 1205 	USART_InitStructure.USART_Parity = USART_Parity_No;
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
// 1206 	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
        MOVS     R0,#+0
        STRH     R0,[SP, #+12]
// 1207 	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
        MOVS     R0,#+12
        STRH     R0,[SP, #+10]
// 1208 	/* Configure USART5 */
// 1209 	USART_Init(UART5, &USART_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_8  ;; 0x40005000
          CFI FunCall USART_Init
        BL       USART_Init
// 1210 	/* Enable USART5 Receive  interrupts */
// 1211 	USART_ITConfig(UART5, USART_IT_RXNE, ENABLE);
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable16_8  ;; 0x40005000
          CFI FunCall USART_ITConfig
        BL       USART_ITConfig
// 1212 	USART_ITConfig(UART5, USART_IT_TXE, DISABLE);
        MOVS     R2,#+0
        MOVW     R1,#+1831
        LDR.W    R0,??DataTable16_8  ;; 0x40005000
          CFI FunCall USART_ITConfig
        BL       USART_ITConfig
// 1213 	/* Enable the USART5 */
// 1214 	USART_Cmd(UART5, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_8  ;; 0x40005000
          CFI FunCall USART_Cmd
        BL       USART_Cmd
// 1215 
// 1216 #endif
// 1217 
// 1218 	/*************************MCU TO MCU******************************/
// 1219 	USART_InitStructure.USART_BaudRate = 115200;
        MOVS     R0,#+115200
        STR      R0,[SP, #+0]
// 1220 	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
// 1221 	USART_InitStructure.USART_StopBits = USART_StopBits_1;
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
// 1222 	USART_InitStructure.USART_Parity = USART_Parity_No;
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
// 1223 	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
        MOVS     R0,#+0
        STRH     R0,[SP, #+12]
// 1224 	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
        MOVS     R0,#+12
        STRH     R0,[SP, #+10]
// 1225 	USART_Init(USART2, &USART_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_9  ;; 0x40004400
          CFI FunCall USART_Init
        BL       USART_Init
// 1226 	/* Enable USART2 DMA TX request */
// 1227 	//USART_DMACmd(USART2, USART_DMAReq_Tx, ENABLE);
// 1228 	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable16_9  ;; 0x40004400
          CFI FunCall USART_ITConfig
        BL       USART_ITConfig
// 1229 	USART_ITConfig(USART2, USART_IT_TXE, DISABLE);
        MOVS     R2,#+0
        MOVW     R1,#+1831
        LDR.W    R0,??DataTable16_9  ;; 0x40004400
          CFI FunCall USART_ITConfig
        BL       USART_ITConfig
// 1230 	USART_Cmd(USART2, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_9  ;; 0x40004400
          CFI FunCall USART_Cmd
        BL       USART_Cmd
// 1231 
// 1232 	/*************************MCU TO GPS******************************/
// 1233 	USART_InitStructure.USART_BaudRate = 19200;
        MOV      R0,#+19200
        STR      R0,[SP, #+0]
// 1234 	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
        MOVS     R0,#+0
        STRH     R0,[SP, #+4]
// 1235 	USART_InitStructure.USART_StopBits = USART_StopBits_1;
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
// 1236 	USART_InitStructure.USART_Parity = USART_Parity_No;
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
// 1237 	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
        MOVS     R0,#+0
        STRH     R0,[SP, #+12]
// 1238 	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
        MOVS     R0,#+12
        STRH     R0,[SP, #+10]
// 1239 	USART_Init(USART3, &USART_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_10  ;; 0x40004800
          CFI FunCall USART_Init
        BL       USART_Init
// 1240 	/* Enable USART2 DMA TX request */
// 1241 	//USART_DMACmd(USART2, USART_DMAReq_Tx, ENABLE);
// 1242 	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable16_10  ;; 0x40004800
          CFI FunCall USART_ITConfig
        BL       USART_ITConfig
// 1243 	USART_ITConfig(USART3, USART_IT_TXE, DISABLE);
        MOVS     R2,#+0
        MOVW     R1,#+1831
        LDR.W    R0,??DataTable16_10  ;; 0x40004800
          CFI FunCall USART_ITConfig
        BL       USART_ITConfig
// 1244 	USART_Cmd(USART3, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_10  ;; 0x40004800
          CFI FunCall USART_Cmd
        BL       USART_Cmd
// 1245 
// 1246 	/*************************MCU TO BT******************************/
// 1247 	#if 0//miler.tao20150810
// 1248 	USART_InitStructure.USART_BaudRate = 19200;
// 1249 	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
// 1250 	USART_InitStructure.USART_StopBits = USART_StopBits_1;
// 1251 	USART_InitStructure.USART_Parity = USART_Parity_No;
// 1252 	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
// 1253 	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
// 1254 	USART_Init(USART1, &USART_InitStructure);
// 1255 	/* Enable USART1 DMA TX request */
// 1256 	//USART_DMACmd(USART1, USART_DMAReq_Tx, ENABLE);
// 1257 	USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
// 1258 	USART_ITConfig(USART1, USART_IT_TXE, DISABLE);
// 1259 	USART_Cmd(USART1, ENABLE);
// 1260 	#endif
// 1261 
// 1262 #if 0
// 1263 	/*************************MCU TO KEY REC******************************/
// 1264 	USART_InitStructure.USART_BaudRate = 19200;
// 1265 	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
// 1266 	USART_InitStructure.USART_StopBits = USART_StopBits_1;
// 1267 	USART_InitStructure.USART_Parity = USART_Parity_No;
// 1268 	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
// 1269 	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
// 1270 	USART_Init(UART4, &USART_InitStructure);
// 1271 	/* Enable USART1 DMA TX request */
// 1272 	//USART_DMACmd(USART1, USART_DMAReq_Tx, ENABLE);
// 1273 	USART_ITConfig(UART4, USART_IT_RXNE, ENABLE);
// 1274 	USART_ITConfig(UART4, USART_IT_TXE, DISABLE);
// 1275 	USART_Cmd(UART4, ENABLE);
// 1276 
// 1277 #endif
// 1278 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock26
// 1279 
// 1280 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function I2C_Configuration
        THUMB
// 1281 void I2C_Configuration(void)
// 1282 {
I2C_Configuration:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
// 1283 	I2C_InitTypeDef I2C_InitStruct;
// 1284 
// 1285 	I2C_DeInit(I2C1);
        LDR.W    R0,??DataTable16_11  ;; 0x40005400
          CFI FunCall I2C_DeInit
        BL       I2C_DeInit
// 1286 	I2C_InitStruct.I2C_Mode                = I2C_Mode_SMBusDevice;
        MOVS     R0,#+2
        STRH     R0,[SP, #+4]
// 1287     I2C_InitStruct.I2C_DutyCycle           = I2C_DutyCycle_2;
        MOVW     R0,#+49151
        STRH     R0,[SP, #+6]
// 1288     I2C_InitStruct.I2C_OwnAddress1         = I2C1_SLAVE_ADDRESS7;
        MOVS     R0,#+162
        STRH     R0,[SP, #+8]
// 1289     I2C_InitStruct.I2C_Ack                 = I2C_Ack_Enable;
        MOV      R0,#+1024
        STRH     R0,[SP, #+10]
// 1290     I2C_InitStruct.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
        MOV      R0,#+16384
        STRH     R0,[SP, #+12]
// 1291     I2C_InitStruct.I2C_ClockSpeed          = 100000;
        LDR.W    R0,??DataTable16_12  ;; 0x186a0
        STR      R0,[SP, #+0]
// 1292     I2C_Init(I2C1, &I2C_InitStruct);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable16_11  ;; 0x40005400
          CFI FunCall I2C_Init
        BL       I2C_Init
// 1293 	I2C_Cmd(I2C1, ENABLE);
        MOVS     R1,#+1
        LDR.W    R0,??DataTable16_11  ;; 0x40005400
          CFI FunCall I2C_Cmd
        BL       I2C_Cmd
// 1294 
// 1295 	  // Enable I2C2 event and buffer interrupt 
// 1296   I2C_ITConfig(I2C2, I2C_IT_EVT | I2C_IT_BUF, ENABLE);
        MOVS     R2,#+1
        MOV      R1,#+1536
        LDR.W    R0,??DataTable16_13  ;; 0x40005800
          CFI FunCall I2C_ITConfig
        BL       I2C_ITConfig
// 1297 
// 1298 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock27
// 1299 
// 1300 
// 1301 
// 1302 /*******************************************************************************
// 1303  * Function Name  : CAN_Configuration
// 1304  * Description    : Configures the can.
// 1305  * Input          : None
// 1306  * Output         : None
// 1307  * Return         : None
// 1308  *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function CAN_Configuration
        THUMB
// 1309 void CAN_Configuration(void)
// 1310 {
CAN_Configuration:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1311         LF_CanBus_Config();
          CFI FunCall LF_CanBus_Config
        BL       LF_CanBus_Config
// 1312 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock28
// 1313 /*******************************************************************************
// 1314  * Function Name  : EXIT_Configuration
// 1315  * Description    : Configure a ext it
// 1316  * Input          : None
// 1317  * Output         : None
// 1318  * Return         : None
// 1319  *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function EXIT_Configuration
        THUMB
// 1320 void EXIT_Configuration(void)
// 1321 {
EXIT_Configuration:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+12
          CFI CFA R13+16
// 1322     EXTI_InitTypeDef EXTI_InitStructure;
// 1323     EXTI_DeInit();
          CFI FunCall EXTI_DeInit
        BL       EXTI_DeInit
// 1324     /*
// 1325       EXTI_InitStructure.EXTI_Line = WAKEUP_EXTI_LINE;
// 1326       EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Event; //EXTI_Mode_Interrupt;
// 1327       EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising_Falling;
// 1328       EXTI_InitStructure.EXTI_LineCmd = ENABLE;
// 1329       EXTI_Init(&EXTI_InitStructure);
// 1330 
// 1331       */
// 1332     /* Configure EXTI Line17(RTC Alarm) to generate an interrupt on rising edge */
// 1333     EXTI_ClearITPendingBit(EXTI_Line17);
        MOVS     R0,#+131072
          CFI FunCall EXTI_ClearITPendingBit
        BL       EXTI_ClearITPendingBit
// 1334     EXTI_InitStructure.EXTI_Line = EXTI_Line17;
        MOVS     R0,#+131072
        STR      R0,[SP, #+0]
// 1335     EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
        MOVS     R0,#+8
        STRB     R0,[SP, #+5]
// 1336     EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
// 1337     EXTI_InitStructure.EXTI_LineCmd =ENABLE;// DISABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+6]
// 1338     EXTI_Init(&EXTI_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall EXTI_Init
        BL       EXTI_Init
// 1339 
// 1340 	EXTI_ClearITPendingBit(EXTI_Line2);
        MOVS     R0,#+4
          CFI FunCall EXTI_ClearITPendingBit
        BL       EXTI_ClearITPendingBit
// 1341 	
// 1342 	
// 1343 	GPIO_EXTILineConfig(GPIO_PortSourceGPIOD, GPIO_PinSource2);
        MOVS     R1,#+2
        MOVS     R0,#+3
          CFI FunCall GPIO_EXTILineConfig
        BL       GPIO_EXTILineConfig
// 1344     EXTI_InitStructure.EXTI_Line = EXTI_Line2;
        MOVS     R0,#+4
        STR      R0,[SP, #+0]
// 1345     EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
        MOVS     R0,#+8
        STRB     R0,[SP, #+5]
// 1346     EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
// 1347     EXTI_InitStructure.EXTI_LineCmd = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+6]
// 1348     EXTI_Init(&EXTI_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall EXTI_Init
        BL       EXTI_Init
// 1349 
// 1350 }
        POP      {R0-R2,PC}       ;; return
          CFI EndBlock cfiBlock29
// 1351 /*******************************************************************************
// 1352  * Function Name  : ADC_Configuration
// 1353  * Description    : Configure a key ADC
// 1354  * Input          : None
// 1355  * Output         : None
// 1356  * Return         : None
// 1357  *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function ADC_Configuration
        THUMB
// 1358 void ADC_Configuration(void)
// 1359 {
ADC_Configuration:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
// 1360     ADC_InitTypeDef ADC_InitStructure;
// 1361     ADC_StructInit(&ADC_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall ADC_StructInit
        BL       ADC_StructInit
// 1362     /* ADC1 configuration ------------------------------------------------------*/
// 1363     ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
// 1364     ADC_InitStructure.ADC_ScanConvMode = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+4]
// 1365     ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
// 1366     ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
        MOVS     R0,#+917504
        STR      R0,[SP, #+8]
// 1367     ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1368     ADC_InitStructure.ADC_NbrOfChannel = 1; // 1
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
// 1369     ADC_Init(ADC1, &ADC_InitStructure);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_Init
        BL       ADC_Init
// 1370     /* ADC1 regular channel14 configuration */
// 1371     //ADC_RegularChannelConfig(ADC1, ADC_Channel_5, 1, ADC_SampleTime_55Cycles5);
// 1372     //ADC_RegularChannelConfig(ADC1, ADC_Channel_9, 2, ADC_SampleTime_55Cycles5);
// 1373     ADC_RegularChannelConfig(ADC1, ADC_Channel_4, 1, ADC_SampleTime_55Cycles5);
        MOVS     R3,#+5
        MOVS     R2,#+1
        MOVS     R1,#+4
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_RegularChannelConfig
        BL       ADC_RegularChannelConfig
// 1374     //ADC_RegularChannelConfig(ADC1, ADC_Channel_5, 2, ADC_SampleTime_55Cycles5);
// 1375 	//ADC_RegularChannelConfig(ADC1, ADC_Channel_15, 4, ADC_SampleTime_55Cycles5);
// 1376     /* Enable ADC1 DMA */
// 1377     ADC_DMACmd(ADC1, ENABLE);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_DMACmd
        BL       ADC_DMACmd
// 1378     /* Enable ADC1 */
// 1379     ADC_Cmd(ADC1, ENABLE);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_Cmd
        BL       ADC_Cmd
// 1380     /* Enable ADC1 reset calibaration register */
// 1381     ADC_ResetCalibration(ADC1);
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_ResetCalibration
        BL       ADC_ResetCalibration
// 1382     /* Check the end of ADC1 reset calibration register */
// 1383     while (ADC_GetResetCalibrationStatus(ADC1));
??ADC_Configuration_0:
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_GetResetCalibrationStatus
        BL       ADC_GetResetCalibrationStatus
        CMP      R0,#+0
        BNE.N    ??ADC_Configuration_0
// 1384     /* Start ADC1 calibaration */
// 1385     ADC_StartCalibration(ADC1);
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_StartCalibration
        BL       ADC_StartCalibration
// 1386     /* Check the end of ADC1 calibration */
// 1387     while (ADC_GetCalibrationStatus(ADC1));
??ADC_Configuration_1:
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_GetCalibrationStatus
        BL       ADC_GetCalibrationStatus
        CMP      R0,#+0
        BNE.N    ??ADC_Configuration_1
// 1388     ADC_SoftwareStartConvCmd(ADC1, ENABLE); //使能ADC1软件开始转换
        MOVS     R1,#+1
        LDR.N    R0,??DataTable16_6  ;; 0x40012400
          CFI FunCall ADC_SoftwareStartConvCmd
        BL       ADC_SoftwareStartConvCmd
// 1389 }
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock30
// 1390 
// 1391 
// 1392 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function Acc_Wdg_Config
        THUMB
// 1393 void Acc_Wdg_Config(void)
// 1394 {
Acc_Wdg_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1395 
// 1396     /* Check if the system has resumed from IWDG reset */
// 1397     if (RCC_GetFlagStatus(RCC_FLAG_IWDGRST) != RESET)
        MOVS     R0,#+125
          CFI FunCall RCC_GetFlagStatus
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Acc_Wdg_Config_0
// 1398     {
// 1399         /* IWDGRST flag set */
// 1400 
// 1401 
// 1402         /* Clear reset flags */
// 1403         RCC_ClearFlag();
          CFI FunCall RCC_ClearFlag
        BL       RCC_ClearFlag
// 1404     }
// 1405     else
// 1406     {
// 1407         /* IWDGRST flag is not set */
// 1408         /* Reset GPIO_LED pin 6 */
// 1409 
// 1410     }
// 1411 
// 1412 
// 1413 
// 1414     /* IWDG timeout equal to 280 ms (the timeout may varies due to LSI frequency
// 1415        dispersion) */
// 1416     /* Enable write access to IWDG_PR and IWDG_RLR registers */
// 1417     IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);
??Acc_Wdg_Config_0:
        MOVW     R0,#+21845
          CFI FunCall IWDG_WriteAccessCmd
        BL       IWDG_WriteAccessCmd
// 1418 
// 1419     /* IWDG counter clock: 40KHz(LSI) / 32 = 1.25 KHz */
// 1420     IWDG_SetPrescaler(IWDG_Prescaler_32);
        MOVS     R0,#+3
          CFI FunCall IWDG_SetPrescaler
        BL       IWDG_SetPrescaler
// 1421 
// 1422     /* Set counter reload value to 349 */
// 1423     IWDG_SetReload(3200);//2500,2s    xs (if 3s is 30000/8=? fill here)
        MOV      R0,#+3200
          CFI FunCall IWDG_SetReload
        BL       IWDG_SetReload
// 1424 
// 1425     /* Reload IWDG counter */
// 1426     IWDG_ReloadCounter();
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
// 1427 
// 1428     /* Enable IWDG (the LSI oscillator will be enabled by hardware) */
// 1429     IWDG_Enable();
          CFI FunCall IWDG_Enable
        BL       IWDG_Enable
// 1430 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock31

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function System_Standby_Reset_ClkSetup
        THUMB
// 1431 void System_Standby_Reset_ClkSetup(void)
// 1432 {
System_Standby_Reset_ClkSetup:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1433     GPIO_InitTypeDef GPIO_InitStructure;
// 1434     GPIO_AFIODeInit();
          CFI FunCall GPIO_AFIODeInit
        BL       GPIO_AFIODeInit
// 1435 
// 1436     //-----------------------config clock--------------------------
// 1437     /* Enable PWR and BKP clock */
// 1438     RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+402653184
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1439     /* Enable WKUP pin */
// 1440     PWR_WakeUpPinCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall PWR_WakeUpPinCmd
        BL       PWR_WakeUpPinCmd
// 1441 
// 1442     /* Allow access to BKP Domain */
// 1443     PWR_BackupAccessCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall PWR_BackupAccessCmd
        BL       PWR_BackupAccessCmd
// 1444 
// 1445     RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);//enable can1
        MOVS     R1,#+1
        MOVS     R0,#+33554432
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1446     //RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN2, ENABLE);
// 1447 
// 1448     RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);//can1 io port open
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1449     RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+8
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1450     RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, DISABLE);//DISABLE,MillerTao
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1451     RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD, DISABLE);//DISABLE,MillerTao
        MOVS     R1,#+0
        MOVS     R0,#+32
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1452     //RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOE, DISABLE);//Miller.Tao2014-09-10
// 1453     //RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOF, DISABLE);
// 1454     //RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOG, DISABLE);
// 1455     RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1456 
// 1457     RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall RCC_AHBPeriphClockCmd
        BL       RCC_AHBPeriphClockCmd
// 1458     RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA2, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+2
          CFI FunCall RCC_AHBPeriphClockCmd
        BL       RCC_AHBPeriphClockCmd
// 1459     RCC_AHBPeriphClockCmd(RCC_AHBPeriph_SRAM, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall RCC_AHBPeriphClockCmd
        BL       RCC_AHBPeriphClockCmd
// 1460     RCC_AHBPeriphClockCmd(RCC_AHBPeriph_FLITF, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall RCC_AHBPeriphClockCmd
        BL       RCC_AHBPeriphClockCmd
// 1461     RCC_AHBPeriphClockCmd(RCC_AHBPeriph_CRC, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+64
          CFI FunCall RCC_AHBPeriphClockCmd
        BL       RCC_AHBPeriphClockCmd
// 1462     //spi
// 1463 
// 1464 
// 1465     //uart
// 1466     RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+16384
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1467     RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+131072
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1468     RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+262144
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1469     //RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, DISABLE);
// 1470     //RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, DISABLE);
// 1471     //adc
// 1472     RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+512
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1473    // RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC2, DISABLE);
// 1474     //timer
// 1475     RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1476     RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+2
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1477     RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1478     RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM5, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+8
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1479     RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM6, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1480     RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM7, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+32
          CFI FunCall RCC_APB1PeriphClockCmd
        BL       RCC_APB1PeriphClockCmd
// 1481     //
// 1482     RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM8, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+8192
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1483     RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM9, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+524288
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1484     RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM10, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+1048576
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1485     RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM11, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+2097152
          CFI FunCall RCC_APB2PeriphClockCmd
        BL       RCC_APB2PeriphClockCmd
// 1486     //
// 1487     
// 1488     //-----------ACC WAKEUP---------------------------
// 1489     /* Connect Key Button EXTI Line to Key Button GPIO Pin */
// 1490     GPIO_InitStructure.GPIO_Pin = P_ACC_DET;
        MOVS     R0,#+2
        STRH     R0,[SP, #+0]
// 1491     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
// 1492     GPIO_Init(P_ACC_PORT, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable16_14  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
// 1493 
// 1494     //----------------------CAN--------------------
// 1495     GPIO_InitStructure.GPIO_Pin = P_CAN_PWR_EN;
        MOV      R0,#+256
        STRH     R0,[SP, #+0]
// 1496     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
// 1497     GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
// 1498     GPIO_Init(GPIOA, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable16_14  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
// 1499    #if 0
// 1500     GPIO_InitStructure.GPIO_Pin = CAN_STB_PIN;
// 1501     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
// 1502     GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
// 1503     GPIO_Init(CAN_STB_PORT, &GPIO_InitStructure);
// 1504     GPIO_InitStructure.GPIO_Pin = CAN_ERR_PIN;
// 1505     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
// 1506     GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
// 1507     GPIO_Init(CAN_ERR_PORT, &GPIO_InitStructure);
// 1508    #endif
// 1509     /* Configure CAN pin: RX */
// 1510     GPIO_InitStructure.GPIO_Pin = P_CAN_RXD;
        MOV      R0,#+2048
        STRH     R0,[SP, #+0]
// 1511     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
        MOVS     R0,#+72
        STRB     R0,[SP, #+3]
// 1512     GPIO_Init(GPIOA, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable16_14  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
// 1513     /* Configure CAN pin: TX */
// 1514     GPIO_InitStructure.GPIO_Pin = P_CAN_TXD;
        MOV      R0,#+4096
        STRH     R0,[SP, #+0]
// 1515     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
        MOVS     R0,#+24
        STRB     R0,[SP, #+3]
// 1516     GPIO_Init(GPIOA, &GPIO_InitStructure);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable16_14  ;; 0x40010800
          CFI FunCall GPIO_Init
        BL       GPIO_Init
// 1517 
// 1518     //GPIO_PinRemapConfig(GPIO_Remap1_CAN1, ENABLE);
// 1519 
// 1520    #if 0
// 1521     /* Configure CAN pin: RX */
// 1522     //GPIO_InitStructure.GPIO_Pin = CAN2_RX_PIN;
// 1523     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
// 1524     //GPIO_Init(CAN2_RX_PORT, &GPIO_InitStructure);
// 1525     /* Configure CAN pin: TX */
// 1526     //GPIO_InitStructure.GPIO_Pin = CAN2_TX_PIN;
// 1527     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
// 1528     //GPIO_Init(CAN2_TX_PORT, &GPIO_InitStructure);
// 1529     #endif
// 1530 
// 1531     //GPIO_PinRemapConfig(GPIO_Remap1_CAN2, ENABLE);
// 1532 
// 1533 
// 1534 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     0xe000e014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     0xe000e018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     0x13881

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     0x40010800
// 1535 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function Acc_PwrEnterStandyMode
        THUMB
// 1536 void Acc_PwrEnterStandyMode(void)
// 1537 {
Acc_PwrEnterStandyMode:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
// 1538     CanRxMsg RxMessage;
// 1539     static u8 uPreMediaStatus, uPrePreMediaStatus;
// 1540     uPreMediaStatus = uPreMediaStatus;
        LDR.N    R0,??DataTable16_15
        LDR.N    R1,??DataTable16_15
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 1541     uPrePreMediaStatus = uPrePreMediaStatus;
        LDR.N    R0,??DataTable16_16
        LDR.N    R1,??DataTable16_16
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 1542     System_Standby_Reset_ClkSetup();
          CFI FunCall System_Standby_Reset_ClkSetup
        BL       System_Standby_Reset_ClkSetup
// 1543     //GPIO_DeInit(GPIOA);
// 1544     //GPIO_DeInit(GPIOB);
// 1545     GPIO_DeInit(GPIOC);
        LDR.N    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_DeInit
        BL       GPIO_DeInit
// 1546     GPIO_DeInit(GPIOD);
        LDR.N    R0,??DataTable16_2  ;; 0x40011400
          CFI FunCall GPIO_DeInit
        BL       GPIO_DeInit
// 1547     //GPIO_DeInit(GPIOE);//Miller.Tao
// 1548     //GPIO_DeInit(GPIOF);
// 1549     //GPIO_DeInit(GPIOG);
// 1550     Main_SysTick_Config();
          CFI FunCall Main_SysTick_Config
        BL       Main_SysTick_Config
// 1551     Acc_Wdg_Config();
          CFI FunCall Acc_Wdg_Config
        BL       Acc_Wdg_Config
// 1552 
// 1553     CAN_Configuration();
          CFI FunCall CAN_Configuration
        BL       CAN_Configuration
// 1554 
// 1555     NVIC_STANBY_CAN_Configuration();
          CFI FunCall NVIC_STANBY_CAN_Configuration
        BL       NVIC_STANBY_CAN_Configuration
// 1556 
// 1557     //CAN_STB_SET();
// 1558     //CAN_EN_SET();
// 1559     /* Reload IWDG counter */
// 1560     IWDG_ReloadCounter();
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
// 1561 
// 1562     m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
        LDR.N    R0,??DataTable16_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1563 	m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_OFF;//Miller.Tao20141104
        LDR.N    R0,??DataTable16_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+60]
// 1564 	m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
        LDR.N    R0,??DataTable16_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+58]
// 1565 	m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
        LDR.N    R0,??DataTable16_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+59]
// 1566     //SysDelay(100);
// 1567     g_stuCurPower.wPowerWamkeupTimer = 1000;
        LDR.N    R0,??DataTable16_18
        MOV      R1,#+1000
        STRH     R1,[R0, #+14]
// 1568 
// 1569     while(1)
// 1570     {
// 1571       
// 1572       
// 1573       
// 1574         //CAN_STB_SET();
// 1575         //CAN_EN_SET();
// 1576         if(CAN_GetFlagStatus(CAN1, CAN_FLAG_FMP0) == SET || CAN_GetFlagStatus(CAN1, CAN_FLAG_FF0) == SET)
??Acc_PwrEnterStandyMode_0:
        LDR.N    R1,??DataTable16_19  ;; 0x12000003
        LDR.N    R0,??DataTable16_7  ;; 0x40006400
          CFI FunCall CAN_GetFlagStatus
        BL       CAN_GetFlagStatus
        CMP      R0,#+1
        BEQ.N    ??Acc_PwrEnterStandyMode_1
        LDR.N    R1,??DataTable16_20  ;; 0x32000008
        LDR.N    R0,??DataTable16_7  ;; 0x40006400
          CFI FunCall CAN_GetFlagStatus
        BL       CAN_GetFlagStatus
        CMP      R0,#+1
        BNE.N    ??Acc_PwrEnterStandyMode_2
// 1577         {
// 1578             CAN_Receive(CAN1, CAN_FIFO0, &RxMessage);
??Acc_PwrEnterStandyMode_1:
        ADD      R2,SP,#+4
        MOVS     R1,#+0
        LDR.N    R0,??DataTable16_7  ;; 0x40006400
          CFI FunCall CAN_Receive
        BL       CAN_Receive
// 1579 			
// 1580 			LF_CanBus_PowerOn(RxMessage);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
          CFI CFA R13+48
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+32
          CFI FunCall LF_CanBus_PowerOn
        BL       LF_CanBus_PowerOn
// 1581 
// 1582             CAN_ClearFlag(CAN1, CAN_FLAG_FMP0);
        LDR.N    R1,??DataTable16_19  ;; 0x12000003
        LDR.N    R0,??DataTable16_7  ;; 0x40006400
          CFI FunCall CAN_ClearFlag
        BL       CAN_ClearFlag
// 1583             CAN_ClearFlag(CAN1, CAN_FLAG_FF0);
        LDR.N    R1,??DataTable16_20  ;; 0x32000008
        LDR.N    R0,??DataTable16_7  ;; 0x40006400
          CFI FunCall CAN_ClearFlag
        BL       CAN_ClearFlag
// 1584 
// 1585         }
// 1586         if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
??Acc_PwrEnterStandyMode_2:
        LDR.N    R0,??DataTable16_17
        LDRB     R0,[R0, #+57]
        CMP      R0,#+2
        BEQ.N    ??Acc_PwrEnterStandyMode_3
// 1587             break;
// 1588 
// 1589         if(!g_stuCurPower.wPowerWamkeupTimer)
??Acc_PwrEnterStandyMode_4:
        LDR.N    R0,??DataTable16_18
        LDRH     R0,[R0, #+14]
        CMP      R0,#+0
        BEQ.N    ??Acc_PwrEnterStandyMode_3
// 1590             break;
// 1591         if(!ACC_PIN_STATUS())
??Acc_PwrEnterStandyMode_5:
        MOVS     R1,#+2
        LDR.N    R0,??DataTable16_14  ;; 0x40010800
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??Acc_PwrEnterStandyMode_0
// 1592             break;
// 1593     }
// 1594     if(!ACC_PIN_STATUS())
??Acc_PwrEnterStandyMode_3:
        MOVS     R1,#+2
        LDR.N    R0,??DataTable16_14  ;; 0x40010800
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??Acc_PwrEnterStandyMode_6
// 1595         return;
// 1596 
// 1597 
// 1598 
// 1599     if(m_BMW_CAN.benze_Pwr_acc != SYSTEM_POWER_ON)
??Acc_PwrEnterStandyMode_7:
        LDR.N    R0,??DataTable16_17
        LDRB     R0,[R0, #+57]
        CMP      R0,#+2
        BEQ.N    ??Acc_PwrEnterStandyMode_8
// 1600     {
// 1601         //----------------------------before  enter standby to close clk
// 1602         System_Standby_Reset_ClkSetup();
          CFI FunCall System_Standby_Reset_ClkSetup
        BL       System_Standby_Reset_ClkSetup
// 1603 
// 1604         //GPIO_DeInit(GPIOA);
// 1605         //GPIO_DeInit(GPIOB);
// 1606         GPIO_DeInit(GPIOC);
        LDR.N    R0,??DataTable16_1  ;; 0x40011000
          CFI FunCall GPIO_DeInit
        BL       GPIO_DeInit
// 1607         GPIO_DeInit(GPIOD);
        LDR.N    R0,??DataTable16_2  ;; 0x40011400
          CFI FunCall GPIO_DeInit
        BL       GPIO_DeInit
// 1608         //GPIO_DeInit(GPIOE);//Miller.Tao
// 1609         //GPIO_DeInit(GPIOF);
// 1610         //GPIO_DeInit(GPIOG);
// 1611         //CAN_STB_RESET();
// 1612         //CAN_EN_RESET();
// 1613         //-----------------------------
// 1614 
// 1615         PWR_EnterSTANDBYMode();
          CFI FunCall PWR_EnterSTANDBYMode
        BL       PWR_EnterSTANDBYMode
// 1616     }
// 1617 
// 1618 
// 1619 }
??Acc_PwrEnterStandyMode_8:
??Acc_PwrEnterStandyMode_6:
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock33

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     0x40011400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     0x1a0c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_5:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_6:
        DC32     0x40012400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_7:
        DC32     0x40006400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_8:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_9:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_10:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_11:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_12:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_13:
        DC32     0x40005800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_14:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_15:
        DC32     ??uPreMediaStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_16:
        DC32     ??uPrePreMediaStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_17:
        DC32     m_BMW_CAN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_18:
        DC32     g_stuCurPower

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_19:
        DC32     0x12000003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_20:
        DC32     0x32000008

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uPreMediaStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uPrePreMediaStatus:
        DS8 1
// 1620 
// 1621 /*******************************************************************************
// 1622  * Function Name  : MCU_Init
// 1623  * Description    : init hardwre.
// 1624  * Input          : None
// 1625  * Output         : None
// 1626  * Return         : None
// 1627  *******************************************************************************/
// 1628 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function MCU_Init
        THUMB
// 1629 void MCU_Init(void)
// 1630 {
MCU_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1631        	System_Normal_ClkSetup();
          CFI FunCall System_Normal_ClkSetup
        BL       System_Normal_ClkSetup
// 1632 	GPIO_Configuration();
          CFI FunCall GPIO_Configuration
        BL       GPIO_Configuration
// 1633 	Main_SysTick_Config();
          CFI FunCall Main_SysTick_Config
        BL       Main_SysTick_Config
// 1634 	
// 1635 	Acc_Wdg_Config();
          CFI FunCall Acc_Wdg_Config
        BL       Acc_Wdg_Config
// 1636 	TIMER_Configuration();
          CFI FunCall TIMER_Configuration
        BL       TIMER_Configuration
// 1637 	USART_Configuration();
          CFI FunCall USART_Configuration
        BL       USART_Configuration
// 1638 	Delay_1ms(50);
        MOVS     R0,#+50
          CFI FunCall Delay_1ms
        BL       Delay_1ms
// 1639 	CAN_Configuration();
          CFI FunCall CAN_Configuration
        BL       CAN_Configuration
// 1640 	
// 1641 	EXIT_Configuration();
          CFI FunCall EXIT_Configuration
        BL       EXIT_Configuration
// 1642 	NVIC_Configuration();
          CFI FunCall NVIC_Configuration
        BL       NVIC_Configuration
// 1643 	//RTC_Configuration();
// 1644 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock34

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1645 
// 1646 
// 1647 
// 1648 
// 1649 
// 1650 
// 
//     2 bytes in section .bss
// 4 058 bytes in section .text
// 
// 4 058 bytes of CODE memory
//     2 bytes of DATA memory
//
//Errors: none
//Warnings: none
