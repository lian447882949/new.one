///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:49 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\stm32 /
//                    f10x_it.c                                               /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\stm32 /
//                    f10x_it.c -D USE_STDPERIPH_DRIVER -D                    /
//                    USE_STM32100B_EVAL -D STM32F10X_CL -lc                  /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\List\ -lA F:\软件工程\平台正式代码001\Benze_Main /
//                    Board\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeri /
//                    ph_Template\EWARM\Debug\List\ -o                        /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\Obj\ --no_cse --no_unroll --no_inline            /
//                    --no_code_motion --no_tbaa --no_clustering              /
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
//                    \Debug\List\stm32f10x_it.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_it

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ARM_Data_Receive
        EXTERN ARM_Max_Time_Cnt
        EXTERN ARM_Receive_Cnt
        EXTERN BAT_Detect_Int
        EXTERN CAN2_USER_HANDLER
        EXTERN CAN_Receive
        EXTERN CCR1_Val
        EXTERN CCR2_Val
        EXTERN CCR3_Val
        EXTERN CCR4_Val
        EXTERN EEPROM_DATA
        EXTERN EXTI_ClearITPendingBit
        EXTERN EXTI_GetITStatus
        EXTERN IN_MTN5_IRSendCodeTask
        EXTERN ITL_DetectDelayCntr
        EXTERN IWDG_ReloadCounter
        EXTERN IWDG_load_Count
        EXTERN PWR_ClearFlag
        EXTERN PWR_GetFlagStatus
        EXTERN Power_canbuswait_count
        EXTERN Poweroff_init_count
        EXTERN Powerstany_count
        EXTERN Powerwork_init_count
        EXTERN RTC_ClearITPendingBit
        EXTERN RTC_GetITStatus
        EXTERN RTC_WaitForLastTask
        EXTERN TIM_ClearITPendingBit
        EXTERN TIM_GetCapture1
        EXTERN TIM_GetCapture2
        EXTERN TIM_GetCapture3
        EXTERN TIM_GetCapture4
        EXTERN TIM_GetITStatus
        EXTERN TIM_SetCompare1
        EXTERN TIM_SetCompare2
        EXTERN TIM_SetCompare3
        EXTERN TIM_SetCompare4
        EXTERN Time_100ms_arrival
        EXTERN Time_10ms_arrival
        EXTERN Time_1s_arrival
        EXTERN Time_300ms_arrival
        EXTERN Time_500ms_arrival
        EXTERN Time_50ms_arrival
        EXTERN Time_5s_arrival
        EXTERN Time_Bus_Cnt
        EXTERN Time_minute_arrival
        EXTERN Touch_flag
        EXTERN Touch_valide_count
        EXTERN U8Tiemr_connect_press
        EXTERN USART_ClearFlag
        EXTERN USART_ClearITPendingBit
        EXTERN USART_GetFlagStatus
        EXTERN USART_GetITStatus
        EXTERN USART_ReceiveData
        EXTERN Uart_data_temp
        EXTERN __aeabi_memcpy4
        EXTERN connect_press_one
        EXTERN gNaviCnt
        EXTERN gNaviSendFlag
        EXTERN gNaviSystemOn
        EXTERN g_GPS_DATA
        EXTERN g_stuCurPower
        EXTERN m_BMW_CAN
        EXTERN m_CarDoorInfo
        EXTERN press_timer
        EXTERN u32Systick

        PUBLIC BusFault_Handler
        PUBLIC CAN1_RX0_IRQHandler
        PUBLIC CAN2_RX0_IRQHandler
        PUBLIC DebugMon_Handler
        PUBLIC EXTI2_IRQHandler
        PUBLIC HardFault_Handler
        PUBLIC MemManage_Handler
        PUBLIC NMI_Handler
        PUBLIC PendSV_Handler
        PUBLIC RTCAlarm_IRQHandler
        PUBLIC RTC_IRQHandler
        PUBLIC SVC_Handler
        PUBLIC SysTick_Handler
        PUBLIC TIM2_IRQHandler
        PUBLIC UART4_IRQHandler
        PUBLIC UART5_IRQHandler
        PUBLIC USART1_IRQHandler
        PUBLIC USART2_IRQHandler
        PUBLIC USART3_IRQHandler
        PUBLIC UsageFault_Handler
        PUBLIC capture
        PUBLIC g_RxMessage
        PUBLIC myRxMessage
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_Template\stm32f10x_it.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    Project/STM32F10x_StdPeriph_Template/stm32f10x_it.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    08-April-2011
//    7   * @brief   Main Interrupt Service Routines.
//    8   *          This file provides template for all exceptions handler and
//    9   *          peripherals interrupt service routine.
//   10   ******************************************************************************
//   11   * @attention
//   12   *
//   13   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   14   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   15   * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
//   16   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   17   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   18   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   19   *
//   20   * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
//   21   ******************************************************************************
//   22   */
//   23 
//   24 /* Includes ------------------------------------------------------------------*/
//   25 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   26 u16 capture = 0;
capture:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 CanRxMsg g_RxMessage;
g_RxMessage:
        DS8 20
//   28  //GPS_DATA g_GPS_DATA;
//   29 /** @addtogroup STM32F10x_StdPeriph_Template
//   30   * @{
//   31   */
//   32 
//   33 /* Private typedef -----------------------------------------------------------*/
//   34 /* Private define ------------------------------------------------------------*/
//   35 /* Private macro -------------------------------------------------------------*/
//   36 /* Private variables ---------------------------------------------------------*/
//   37 /* Private function prototypes -----------------------------------------------*/
//   38 /* Private functions ---------------------------------------------------------*/
//   39 
//   40 /******************************************************************************/
//   41 /*            Cortex-M3 Processor Exceptions Handlers                         */
//   42 /******************************************************************************/
//   43 
//   44 /**
//   45   * @brief  This function handles NMI exception.
//   46   * @param  None
//   47   * @retval None
//   48   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NMI_Handler
          CFI NoCalls
        THUMB
//   49 void NMI_Handler(void)
//   50 {
//   51 }
NMI_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   52 
//   53 /**
//   54   * @brief  This function handles Hard Fault exception.
//   55   * @param  None
//   56   * @retval None
//   57   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HardFault_Handler
          CFI NoCalls
        THUMB
//   58 void HardFault_Handler(void)
//   59 {
//   60     /* Go to infinite loop when Hard Fault exception occurs */
//   61     while (1)
HardFault_Handler:
??HardFault_Handler_0:
        B.N      ??HardFault_Handler_0
          CFI EndBlock cfiBlock1
//   62     {
//   63     }
//   64 }
//   65 
//   66 /**
//   67   * @brief  This function handles Memory Manage exception.
//   68   * @param  None
//   69   * @retval None
//   70   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function MemManage_Handler
          CFI NoCalls
        THUMB
//   71 void MemManage_Handler(void)
//   72 {
//   73     /* Go to infinite loop when Memory Manage exception occurs */
//   74     while (1)
MemManage_Handler:
??MemManage_Handler_0:
        B.N      ??MemManage_Handler_0
          CFI EndBlock cfiBlock2
//   75     {
//   76     }
//   77 }
//   78 
//   79 /**
//   80   * @brief  This function handles Bus Fault exception.
//   81   * @param  None
//   82   * @retval None
//   83   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function BusFault_Handler
          CFI NoCalls
        THUMB
//   84 void BusFault_Handler(void)
//   85 {
//   86     /* Go to infinite loop when Bus Fault exception occurs */
//   87     while (1)
BusFault_Handler:
??BusFault_Handler_0:
        B.N      ??BusFault_Handler_0
          CFI EndBlock cfiBlock3
//   88     {
//   89     }
//   90 }
//   91 
//   92 /**
//   93   * @brief  This function handles Usage Fault exception.
//   94   * @param  None
//   95   * @retval None
//   96   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function UsageFault_Handler
          CFI NoCalls
        THUMB
//   97 void UsageFault_Handler(void)
//   98 {
//   99     /* Go to infinite loop when Usage Fault exception occurs */
//  100     while (1)
UsageFault_Handler:
??UsageFault_Handler_0:
        B.N      ??UsageFault_Handler_0
          CFI EndBlock cfiBlock4
//  101     {
//  102     }
//  103 }
//  104 
//  105 /**
//  106   * @brief  This function handles SVCall exception.
//  107   * @param  None
//  108   * @retval None
//  109   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SVC_Handler
          CFI NoCalls
        THUMB
//  110 void SVC_Handler(void)
//  111 {
//  112 }
SVC_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  113 
//  114 /**
//  115   * @brief  This function handles Debug Monitor exception.
//  116   * @param  None
//  117   * @retval None
//  118   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function DebugMon_Handler
          CFI NoCalls
        THUMB
//  119 void DebugMon_Handler(void)
//  120 {
//  121 }
DebugMon_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  122 
//  123 /**
//  124   * @brief  This function handles PendSVC exception.
//  125   * @param  None
//  126   * @retval None
//  127   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function PendSV_Handler
          CFI NoCalls
        THUMB
//  128 void PendSV_Handler(void)
//  129 {
//  130 }
PendSV_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  131 
//  132 /**
//  133   * @brief  This function handles SysTick Handler.
//  134   * @param  None
//  135   * @retval None
//  136   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function SysTick_Handler
        THUMB
//  137 void SysTick_Handler(void)
//  138 {
SysTick_Handler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  139     static vu16 u16MsCount = 0; //1ms
//  140     static vu16 u10MsCount = 0; //1ms
//  141     static vu16 u100MsClrWdgCount = 0; //100ms
//  142     
//  143    // BYTE uChecksum,i;
//  144    	if(ARM_Max_Time_Cnt>0)
        LDR.W    R0,??DataTable9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BCC.N    ??SysTick_Handler_0
//  145 	{
//  146 		ARM_Max_Time_Cnt--;
        LDR.W    R0,??DataTable9
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9
        STRB     R0,[R1, #+0]
//  147 		if(ARM_Max_Time_Cnt==0)
        LDR.W    R0,??DataTable9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SysTick_Handler_0
//  148 		{//-----------总线接收超时退出
//  149 			ARM_Receive_Cnt=0;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  150 		}
//  151 	}	
//  152 	#if 0
//  153 	if(ARM_send_id==0)
//  154 	{
//  155 		if(ARM_ack_request!=0)
//  156 		{
//  157 			ARM_Receive_ACK(ARM_ack_request);
//  158 			ARM_ack_request=0;		
//  159 		}
//  160 	}
//  161 	#endif
//  162     u32Systick++;
??SysTick_Handler_0:
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_2
        STR      R0,[R1, #+0]
//  163     u10MsCount++;
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_3
        STRH     R0,[R1, #+0]
//  164     u100MsClrWdgCount++;
        LDR.W    R0,??DataTable9_4
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_4
        STRH     R0,[R1, #+0]
//  165 #if 0
//  166     if (u100MsClrWdgCount >= 100)
//  167     {
//  168 
//  169         u100MsClrWdgCount = 0;
//  170         //--------clear wdg timer----------------------------------
//  171         /* Reload IWDG counter */
//  172         IWDG_ReloadCounter();
//  173     }
//  174 #endif
//  175     //------------------------------------------------------------
//  176     //------------------------------------------------------------
//  177     if(g_stuCurPower.wPowerWamkeupTimer != 0)g_stuCurPower.wPowerWamkeupTimer--;
        LDR.W    R0,??DataTable9_5
        LDRH     R0,[R0, #+14]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_1
        LDR.W    R0,??DataTable9_5
        LDRH     R0,[R0, #+14]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_5
        STRH     R0,[R1, #+14]
//  178     if(m_BMW_CAN.wLoopTimer != 0)m_BMW_CAN.wLoopTimer--;
??SysTick_Handler_1:
        LDR.W    R0,??DataTable9_6
        LDRH     R0,[R0, #+30]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_2
        LDR.W    R0,??DataTable9_6
        LDRH     R0,[R0, #+30]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_6
        STRH     R0,[R1, #+30]
//  179 
//  180     if(Sys.wPowerOnByCanTimer!=0)Sys.wPowerOnByCanTimer--;
??SysTick_Handler_2:
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+56]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_3
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+56]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_7
        STR      R0,[R1, #+56]
//  181     if(Sys.wPowerOnByCanTimer2!=0)Sys.wPowerOnByCanTimer2--;
??SysTick_Handler_3:
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+60]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_4
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+60]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_7
        STR      R0,[R1, #+60]
//  182     if(Sys.wKnobAuxContrlTimer!=0)Sys.wKnobAuxContrlTimer--;
??SysTick_Handler_4:
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+72]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_5
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+72]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_7
        STR      R0,[R1, #+72]
//  183     if(Sys.wRearOnByCanTimer!=0)Sys.wRearOnByCanTimer--;
??SysTick_Handler_5:
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+64]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_6
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+64]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_7
        STR      R0,[R1, #+64]
//  184 	
//  185     if(m_CarDoorInfo.door_show_timer!=0)m_CarDoorInfo.door_show_timer--;
??SysTick_Handler_6:
        LDR.W    R0,??DataTable9_8
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_7
        LDR.W    R0,??DataTable9_8
        LDR      R0,[R0, #+12]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_8
        STR      R0,[R1, #+12]
//  186     if(Sys.WVedio_show_timer>1)Sys.WVedio_show_timer--;
??SysTick_Handler_7:
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+68]
        CMP      R0,#+2
        BCC.N    ??SysTick_Handler_8
        LDR.W    R0,??DataTable9_7
        LDR      R0,[R0, #+68]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_7
        STR      R0,[R1, #+68]
//  187 	
//  188     if(m_BMW_CAN.benze_air_show_Timer!=0)m_BMW_CAN.benze_air_show_Timer--;
??SysTick_Handler_8:
        LDR.W    R0,??DataTable9_6
        LDRH     R0,[R0, #+54]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_9
        LDR.W    R0,??DataTable9_6
        LDRH     R0,[R0, #+54]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_6
        STRH     R0,[R1, #+54]
//  189     if(g_GPS_DATA.RxFinishTimer!=0)g_GPS_DATA.RxFinishTimer--;
??SysTick_Handler_9:
        LDR.W    R0,??DataTable9_9
        LDRH     R0,[R0, #+1216]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_10
        LDR.W    R0,??DataTable9_9
        LDRH     R0,[R0, #+1216]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_9
        STRH     R0,[R1, #+1216]
//  190 	if(press_timer>1) press_timer--;
??SysTick_Handler_10:
        LDR.W    R0,??DataTable9_10
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BCC.N    ??SysTick_Handler_11
        LDR.W    R0,??DataTable9_10
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_10
        STRH     R0,[R1, #+0]
//  191 	if(U8Tiemr_connect_press!=0) 
??SysTick_Handler_11:
        LDR.W    R0,??DataTable9_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_12
//  192 		U8Tiemr_connect_press--;
        LDR.W    R0,??DataTable9_11
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_11
        STRB     R0,[R1, #+0]
        B.N      ??SysTick_Handler_13
//  193 	else
//  194 		connect_press_one=0;
??SysTick_Handler_12:
        LDR.W    R0,??DataTable9_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  195 
//  196 	 
//  197 
//  198 
//  199      if(gNaviCnt!=0)gNaviCnt--;
??SysTick_Handler_13:
        LDR.W    R0,??DataTable9_13
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_14
        LDR.W    R0,??DataTable9_13
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_13
        STRH     R0,[R1, #+0]
//  200 
//  201 	 
//  202 	Time_Bus_Cnt++;
??SysTick_Handler_14:
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_14
        STRH     R0,[R1, #+0]
//  203 	
//  204     if(Time_Bus_Cnt%2==0)
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        CMP      R2,#+0
        BNE.W    ??SysTick_Handler_15
//  205     {			
//  206 		if(Time_Bus_Cnt%10==0)
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.W    ??SysTick_Handler_15
//  207 		{
//  208 			Time_10ms_arrival=1;
        LDR.W    R0,??DataTable9_15
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  209 	
//  210 
//  211 			if(Time_Bus_Cnt%50==0)
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+50
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.W    ??SysTick_Handler_15
//  212 			{
//  213 				Time_50ms_arrival=1;
        LDR.W    R0,??DataTable9_16
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  214 
//  215 				BAT_Detect_Int();
          CFI FunCall BAT_Detect_Int
        BL       BAT_Detect_Int
//  216 
//  217 				//----------------------
//  218 				if(Time_Bus_Cnt%100==0)
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+100
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.W    ??SysTick_Handler_15
//  219 				{
//  220 					Time_100ms_arrival=1;
        LDR.W    R0,??DataTable9_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  221 
//  222 
//  223 					
//  224 					if(Poweroff_init_count!=0)
        LDR.W    R0,??DataTable9_18
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_16
//  225 						Poweroff_init_count--;
        LDR.W    R0,??DataTable9_18
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_18
        STRH     R0,[R1, #+0]
//  226 					if(Powerwork_init_count!=0)
??SysTick_Handler_16:
        LDR.W    R0,??DataTable9_19
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_17
//  227 						Powerwork_init_count--;
        LDR.W    R0,??DataTable9_19
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_19
        STRH     R0,[R1, #+0]
//  228 					if(Powerstany_count!=0)
??SysTick_Handler_17:
        LDR.W    R0,??DataTable9_20
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_18
//  229 						Powerstany_count--;
        LDR.W    R0,??DataTable9_20
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_20
        STRH     R0,[R1, #+0]
//  230 					if(Power_canbuswait_count!=0)
??SysTick_Handler_18:
        LDR.W    R0,??DataTable9_21
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_19
//  231 						Power_canbuswait_count--;
        LDR.W    R0,??DataTable9_21
        LDRH     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_21
        STRH     R0,[R1, #+0]
//  232 
//  233 					if(Touch_valide_count)
??SysTick_Handler_19:
        LDR.W    R0,??DataTable9_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??SysTick_Handler_20
//  234 					    Touch_valide_count--;					
        LDR.W    R0,??DataTable9_22
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_22
        STRB     R0,[R1, #+0]
//  235 
//  236 
//  237 					if(Time_Bus_Cnt%200==0)
??SysTick_Handler_20:
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+200
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??SysTick_Handler_21
//  238 					{
//  239 						Time_300ms_arrival=1;
        LDR.W    R0,??DataTable9_23
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  240 					}
//  241 					
//  242 					//------------------------
//  243 					if(Time_Bus_Cnt%500==0)
??SysTick_Handler_21:
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOV      R1,#+500
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??SysTick_Handler_15
//  244 					{
//  245 						Time_500ms_arrival=1;		
        LDR.W    R0,??DataTable9_24
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  246 
//  247 	
//  248 
//  249 						if(ITL_DetectDelayCntr<8)		
        LDR.W    R0,??DataTable9_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BCS.N    ??SysTick_Handler_22
//  250 							ITL_DetectDelayCntr++;
        LDR.W    R0,??DataTable9_25
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_25
        STRB     R0,[R1, #+0]
//  251 						
//  252 						//-----------------------
//  253 						if(Time_Bus_Cnt%1000==0)
??SysTick_Handler_22:
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOV      R1,#+1000
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??SysTick_Handler_15
//  254 						{
//  255 							Time_1s_arrival=1;
        LDR.W    R0,??DataTable9_26
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  256 							#if 1
//  257 								{
//  258 									if(IWDG_load_Count<3)
        LDR.W    R0,??DataTable9_27
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BCS.N    ??SysTick_Handler_23
//  259 										{
//  260 							IWDG_ReloadCounter();
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
//  261 							IWDG_load_Count++;
        LDR.W    R0,??DataTable9_27
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_27
        STRB     R0,[R1, #+0]
//  262 										}
//  263 								}
//  264 							#endif
//  265 
//  266 							if(Time_Bus_Cnt%5000==0)
??SysTick_Handler_23:
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+5000
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??SysTick_Handler_15
//  267 							{
//  268 								Time_5s_arrival=1;  	
        LDR.W    R0,??DataTable9_28
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  269 								if(Time_Bus_Cnt%(1000*60)==0)
        LDR.W    R0,??DataTable9_14
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+60000
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??SysTick_Handler_15
//  270 								{
//  271 									Time_minute_arrival=1;  	
        LDR.W    R0,??DataTable9_29
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  272 								}
//  273 							}
//  274 							
//  275 						}
//  276 					}
//  277 				}
//  278 			}		
//  279 		}
//  280 	}
//  281 
//  282     //---------------------------------------
//  283 
//  284 }
??SysTick_Handler_15:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock8

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
??u10MsCount:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
??u100MsClrWdgCount:
        DS8 2
//  285 /******************************************************************************/
//  286 /*            STM32F10x Peripherals Interrupt Handlers                        */
//  287 /******************************************************************************/
//  288 
//  289 /**
//  290   * @brief  This function handles TIM2 global interrupt request.
//  291   * @param  None
//  292   * @retval None
//  293   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function TIM2_IRQHandler
        THUMB
//  294 void TIM2_IRQHandler(void)
//  295 {
TIM2_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  296     if (TIM_GetITStatus(TIM2, TIM_IT_CC1) != RESET)
        MOVS     R1,#+2
        MOVS     R0,#+1073741824
          CFI FunCall TIM_GetITStatus
        BL       TIM_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??TIM2_IRQHandler_0
//  297     {
//  298         TIM_ClearITPendingBit(TIM2, TIM_IT_CC1);
        MOVS     R1,#+2
        MOVS     R0,#+1073741824
          CFI FunCall TIM_ClearITPendingBit
        BL       TIM_ClearITPendingBit
//  299         //ir
//  300   
//  301         IN_MTN5_IRSendCodeTask();
          CFI FunCall IN_MTN5_IRSendCodeTask
        BL       IN_MTN5_IRSendCodeTask
//  302         
//  303         capture = TIM_GetCapture1(TIM2);
        MOVS     R0,#+1073741824
          CFI FunCall TIM_GetCapture1
        BL       TIM_GetCapture1
        LDR.W    R1,??DataTable9_30
        STRH     R0,[R1, #+0]
//  304         TIM_SetCompare1(TIM2, capture + CCR1_Val);
        LDR.W    R0,??DataTable9_30
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_31
        LDRH     R1,[R1, #+0]
        ADDS     R1,R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1073741824
          CFI FunCall TIM_SetCompare1
        BL       TIM_SetCompare1
        B.N      ??TIM2_IRQHandler_1
//  305     }
//  306     else if (TIM_GetITStatus(TIM2, TIM_IT_CC2) != RESET)
??TIM2_IRQHandler_0:
        MOVS     R1,#+4
        MOVS     R0,#+1073741824
          CFI FunCall TIM_GetITStatus
        BL       TIM_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??TIM2_IRQHandler_2
//  307     {
//  308         TIM_ClearITPendingBit(TIM2, TIM_IT_CC2);
        MOVS     R1,#+4
        MOVS     R0,#+1073741824
          CFI FunCall TIM_ClearITPendingBit
        BL       TIM_ClearITPendingBit
//  309         //beep
//  310         //Beep_OutPWM();
//  311         capture = TIM_GetCapture2(TIM2);
        MOVS     R0,#+1073741824
          CFI FunCall TIM_GetCapture2
        BL       TIM_GetCapture2
        LDR.W    R1,??DataTable9_30
        STRH     R0,[R1, #+0]
//  312         TIM_SetCompare2(TIM2, capture + CCR2_Val);
        LDR.W    R0,??DataTable9_30
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_32
        LDRH     R1,[R1, #+0]
        ADDS     R1,R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1073741824
          CFI FunCall TIM_SetCompare2
        BL       TIM_SetCompare2
        B.N      ??TIM2_IRQHandler_1
//  313     }
//  314     else if (TIM_GetITStatus(TIM2, TIM_IT_CC3) != RESET)
??TIM2_IRQHandler_2:
        MOVS     R1,#+8
        MOVS     R0,#+1073741824
          CFI FunCall TIM_GetITStatus
        BL       TIM_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??TIM2_IRQHandler_3
//  315     {
//  316         TIM_ClearITPendingBit(TIM2, TIM_IT_CC3);
        MOVS     R1,#+8
        MOVS     R0,#+1073741824
          CFI FunCall TIM_ClearITPendingBit
        BL       TIM_ClearITPendingBit
//  317 
//  318 
//  319         capture = TIM_GetCapture3(TIM2);
        MOVS     R0,#+1073741824
          CFI FunCall TIM_GetCapture3
        BL       TIM_GetCapture3
        LDR.W    R1,??DataTable9_30
        STRH     R0,[R1, #+0]
//  320         TIM_SetCompare3(TIM2, capture + CCR3_Val);
        LDR.W    R0,??DataTable9_30
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_33
        LDRH     R1,[R1, #+0]
        ADDS     R1,R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1073741824
          CFI FunCall TIM_SetCompare3
        BL       TIM_SetCompare3
        B.N      ??TIM2_IRQHandler_1
//  321     }
//  322     else
//  323     {
//  324         TIM_ClearITPendingBit(TIM2, TIM_IT_CC4);
??TIM2_IRQHandler_3:
        MOVS     R1,#+16
        MOVS     R0,#+1073741824
          CFI FunCall TIM_ClearITPendingBit
        BL       TIM_ClearITPendingBit
//  325 
//  326 
//  327         capture = TIM_GetCapture4(TIM2);
        MOVS     R0,#+1073741824
          CFI FunCall TIM_GetCapture4
        BL       TIM_GetCapture4
        LDR.W    R1,??DataTable9_30
        STRH     R0,[R1, #+0]
//  328         TIM_SetCompare4(TIM2, capture + CCR4_Val);
        LDR.W    R0,??DataTable9_30
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_34
        LDRH     R1,[R1, #+0]
        ADDS     R1,R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1073741824
          CFI FunCall TIM_SetCompare4
        BL       TIM_SetCompare4
//  329     }
//  330 }
??TIM2_IRQHandler_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock9
//  331 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function EXTI2_IRQHandler
        THUMB
//  332 void EXTI2_IRQHandler(void)
//  333 {
EXTI2_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  334 	 if(EXTI_GetITStatus(EXTI_Line2) != RESET)
        MOVS     R0,#+4
          CFI FunCall EXTI_GetITStatus
        BL       EXTI_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??EXTI2_IRQHandler_0
//  335 	  {
//  336 			EXTI_ClearITPendingBit(EXTI_Line2); //
        MOVS     R0,#+4
          CFI FunCall EXTI_ClearITPendingBit
        BL       EXTI_ClearITPendingBit
//  337 			Touch_flag=1;
        LDR.W    R0,??DataTable9_35
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  338 			/* Clear the EXTI line 9 pending bit */ 				
//  339 	  } 
//  340 			EXTI_ClearITPendingBit(EXTI_Line2); //
??EXTI2_IRQHandler_0:
        MOVS     R0,#+4
          CFI FunCall EXTI_ClearITPendingBit
        BL       EXTI_ClearITPendingBit
//  341 	 
//  342 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock10
//  343 
//  344 /*******************************************************************************
//  345  * Function Name  : USART1_IRQHandler
//  346  * Description    : This function handles USART1 global interrupt request.
//  347  * Input          : None
//  348  * Output         : None
//  349  * Return         : None
//  350  *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function USART1_IRQHandler
        THUMB
//  351 void USART1_IRQHandler(void)
//  352 {
USART1_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  353     u8 uRevData;
//  354     //
//  355 
//  356 
//  357     if (USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable9_36  ;; 0x40013800
          CFI FunCall USART_GetITStatus
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART1_IRQHandler_0
//  358     {
//  359         /* Read one byte from the receive data register */
//  360         uRevData = (u8)USART_ReceiveData(USART1);
        LDR.W    R0,??DataTable9_36  ;; 0x40013800
          CFI FunCall USART_ReceiveData
        BL       USART_ReceiveData
        MOVS     R4,R0
//  361        
//  362 
//  363 
//  364 
//  365     }
//  366     if (USART_GetITStatus(USART1, USART_IT_TXE) != RESET)
??USART1_IRQHandler_0:
        MOVW     R1,#+1831
        LDR.W    R0,??DataTable9_36  ;; 0x40013800
          CFI FunCall USART_GetITStatus
        BL       USART_GetITStatus
//  367     {
//  368     }
//  369 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock11
//  370 /*******************************************************************************
//  371  * Function Name  : USART2_IRQHandler
//  372  * Description    : This function handles USART2 global interrupt request.
//  373  * Input          : None
//  374  * Output         : None
//  375  * Return         : None
//  376  *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function USART2_IRQHandler
        THUMB
//  377 void USART2_IRQHandler(void)
//  378 {
USART2_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  379    // u8 uRevData;
//  380    // u8 checksum = 0, i = 0;
//  381    #if 0//miller.tao20150723
//  382     if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
//  383     {
//  384         /* Read one byte from the receive data register */
//  385         uRevData = (u8)USART_ReceiveData(USART2);
//  386     }
//  387     if (USART_GetITStatus(USART2, USART_IT_TXE) != RESET)
//  388     {
//  389     }
//  390     #endif
//  391    ////////miller.tao20150723//////////
//  392    	if(USART_GetFlagStatus(USART2, USART_FLAG_ORE) != RESET)		
        MOVS     R1,#+8
        LDR.W    R0,??DataTable9_37  ;; 0x40004400
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??USART2_IRQHandler_0
//  393 	{
//  394 		  USART_ClearFlag(USART2, USART_FLAG_ORE);
        MOVS     R1,#+8
        LDR.W    R0,??DataTable9_37  ;; 0x40004400
          CFI FunCall USART_ClearFlag
        BL       USART_ClearFlag
//  395 		  Uart_data_temp=USART_ReceiveData(USART2);//tiger		  
        LDR.W    R0,??DataTable9_37  ;; 0x40004400
          CFI FunCall USART_ReceiveData
        BL       USART_ReceiveData
        LDR.W    R1,??DataTable9_38
        STRB     R0,[R1, #+0]
//  396 	}
//  397 	
//  398 	//BYTE temp;
//  399 	  if(USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
??USART2_IRQHandler_0:
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable9_37  ;; 0x40004400
          CFI FunCall USART_GetITStatus
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART2_IRQHandler_1
//  400 	  {
//  401 		    USART_ClearITPendingBit(USART2, USART_IT_RXNE);
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable9_37  ;; 0x40004400
          CFI FunCall USART_ClearITPendingBit
        BL       USART_ClearITPendingBit
//  402 	    	    //temp=USART_ReceiveData(UART4);	
//  403 		    ARM_Data_Receive();	    	    
          CFI FunCall ARM_Data_Receive
        BL       ARM_Data_Receive
//  404 	  }		
//  405 
//  406 	 USART_ClearITPendingBit(USART2, USART_IT_RXNE);	
??USART2_IRQHandler_1:
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable9_37  ;; 0x40004400
          CFI FunCall USART_ClearITPendingBit
        BL       USART_ClearITPendingBit
//  407 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock12
//  408 
//  409 /*******************************************************************************
//  410  * Function Name  : USART3_IRQHandler
//  411  * Description    : This function handles USART3 global interrupt request.
//  412  * Input          : None
//  413  * Output         : None
//  414  * Return         : None
//  415  *******************************************************************************/
//  416 //BYTE GPSDebug[15];
//  417 //BYTE gpsdebugindex=0;

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function USART3_IRQHandler
        THUMB
//  418 void USART3_IRQHandler(void)
//  419 	{
USART3_IRQHandler:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  420 		vu8 uRevData;
//  421 		BYTE uChecksum,i;//,index_backup;
//  422 		//msg_data_t cmd;
//  423 		/********************************************************************/
//  424 		if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable9_39  ;; 0x40004800
          CFI FunCall USART_GetITStatus
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.W    ??USART3_IRQHandler_0
//  425 		{
//  426 			/* Read one byte from the receive data register */
//  427 			uRevData = USART_ReceiveData(USART3);
        LDR.W    R0,??DataTable9_39  ;; 0x40004800
          CFI FunCall USART_ReceiveData
        BL       USART_ReceiveData
        STRB     R0,[SP, #+0]
//  428 	
//  429 			//-------------------------------------------
//  430 			if(g_GPS_DATA.RxFinishTimer ==0)
        LDR.W    R0,??DataTable9_9
        LDRH     R0,[R0, #+1216]
        CMP      R0,#+0
        BNE.N    ??USART3_IRQHandler_1
//  431 			{
//  432 				g_GPS_DATA.RxIndex=0;
        LDR.W    R0,??DataTable9_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+1214]
//  433 				g_GPS_DATA.RxWriteIndex++;
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_9
        STRB     R0,[R1, #+12]
//  434 				g_GPS_DATA.RxWriteIndex %= IPC_RX_GROUP_MAX;
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+20
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable9_9
        STRB     R0,[R1, #+12]
//  435 			}
//  436 	
//  437 			g_GPS_DATA.RxFinishTimer = 10;
??USART3_IRQHandler_1:
        LDR.W    R0,??DataTable9_9
        MOVS     R1,#+10
        STRH     R1,[R0, #+1216]
//  438 	
//  439 			g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][g_GPS_DATA.RxIndex] = uRevData;
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+1214]
        LDR.W    R1,??DataTable9_9
        LDRB     R1,[R1, #+12]
        MOVS     R2,#+60
        LDR.W    R3,??DataTable9_9
        MLA      R1,R2,R1,R3
        ADDS     R0,R0,R1
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+14]
//  440 			g_GPS_DATA.RxIndex++;
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+1214]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_9
        STRB     R0,[R1, #+1214]
//  441 			if (g_GPS_DATA.RxIndex >= IPC_RX_BUF_MAX)
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+1214]
        CMP      R0,#+50
        BCC.N    ??USART3_IRQHandler_2
//  442 			{
//  443 				g_GPS_DATA.RxIndex = IPC_RX_BUF_MAX - 1;
        LDR.W    R0,??DataTable9_9
        MOVS     R1,#+49
        STRB     R1,[R0, #+1214]
//  444 			}
//  445 	
//  446 			if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0xEE)
??USART3_IRQHandler_2:
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.W    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+238
        BNE.N    ??USART3_IRQHandler_3
//  447 						//exit gps system
//  448 					{
//  449 						//g_GPS_DATA.uGPSExitFlag = 1;
//  450 						g_GPS_DATA.RxFinishTimer=0;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+1216]
        B.N      ??USART3_IRQHandler_4
//  451 						//cmd.msgbuf[0]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0];
//  452 						//MSG_SendcmdMesssage(&cmd);
//  453 					}
//  454 					else if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0xAA)
??USART3_IRQHandler_3:
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+170
        BNE.N    ??USART3_IRQHandler_5
//  455 						//sound start
//  456 					{
//  457 						g_GPS_DATA.uSoundFlag = 1;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  458 						g_GPS_DATA.RxFinishTimer=0;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+1216]
        B.N      ??USART3_IRQHandler_4
//  459 						//cmd.msgbuf[0]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0];
//  460 						//MSG_SendcmdMesssage(&cmd);
//  461 						
//  462 						//SW_GPS_CAR_TO_GPS();
//  463 					}
//  464 					else if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0x55)
??USART3_IRQHandler_5:
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+85
        BNE.N    ??USART3_IRQHandler_6
//  465 						//sound end
//  466 					{
//  467 						g_GPS_DATA.uSoundFlag = 0;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  468 						g_GPS_DATA.RxFinishTimer=0;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+1216]
        B.N      ??USART3_IRQHandler_4
//  469 						//cmd.msgbuf[0]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0];
//  470 						//MSG_SendcmdMesssage(&cmd);
//  471 						
//  472 						//SW_GPS_CAR_TO_CAR();
//  473 					}
//  474 					else if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0x14)//navi version
??USART3_IRQHandler_6:
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+20
        BNE.N    ??USART3_IRQHandler_7
//  475 					{
//  476 						if(g_GPS_DATA.RxIndex>5)
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+1214]
        CMP      R0,#+6
        BCC.W    ??USART3_IRQHandler_4
//  477 						{
//  478 											   
//  479 							
//  480 							  uChecksum=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  481 							  for(i=0;i<5;i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??USART3_IRQHandler_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BCS.N    ??USART3_IRQHandler_9
//  482 							  uChecksum+=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+14]
        ADDS     R4,R0,R4
        ADDS     R5,R5,#+1
        B.N      ??USART3_IRQHandler_8
//  483 							  uChecksum=uChecksum^0xFF;
??USART3_IRQHandler_9:
        EORS     R4,R4,#0xFF
//  484 							  if(uChecksum==g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][5])
//  485 							  {
//  486 								/*
//  487 								g_struct_navi_ver.notify=1;
//  488 								g_struct_navi_ver.code0=   (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0]);
//  489 								g_struct_navi_ver.code1=   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1];
//  490 								g_struct_navi_ver.code2=   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][2];
//  491 								g_struct_navi_ver.code3=   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][3];
//  492 								g_struct_navi_ver.code4=   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][4]; 
//  493 								*/
//  494 	//hour
//  495 							  }
//  496 								
//  497 												
//  498 										g_GPS_DATA.RxFinishTimer=0;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+1216]
        B.N      ??USART3_IRQHandler_4
//  499 										//for(i=0;i<=4;i++)
//  500 										 // cmd.msgbuf[i]=g_GPS_DATA.Rx[g_GPS_DATA.
//  501 	//RxWriteIndex][i];
//  502 							   // MSG_SendcmdMesssage(&cmd);
//  503 							  }
//  504 					}				
//  505 				#if 1
//  506 					else if (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0xF1)
??USART3_IRQHandler_7:
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+241
        BNE.W    ??USART3_IRQHandler_10
//  507 					{
//  508 					  if(g_GPS_DATA.RxIndex>9)
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+1214]
        CMP      R0,#+10
        BCC.W    ??USART3_IRQHandler_4
//  509 						{
//  510 							
//  511 						  uChecksum=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  512 						  for(i=0;i<9;i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??USART3_IRQHandler_11:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+9
        BCS.N    ??USART3_IRQHandler_12
//  513 						  uChecksum+=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+14]
        ADDS     R4,R0,R4
        ADDS     R5,R5,#+1
        B.N      ??USART3_IRQHandler_11
//  514 						  uChecksum=uChecksum^0xFF;
??USART3_IRQHandler_12:
        EORS     R4,R4,#0xFF
//  515 						  if(uChecksum==g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][9])
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+23]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??USART3_IRQHandler_13
//  516 						  {
//  517 							
//  518 							m_BMW_CAN.send_time_flag=1;
        LDR.N    R0,??DataTable9_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+70]
//  519 							m_BMW_CAN.Year_data   =   (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]<<8)|g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][2];
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+15]
        LDR.N    R1,??DataTable9_9
        LDRB     R1,[R1, #+12]
        MOVS     R2,#+60
        LDR.N    R3,??DataTable9_9
        MLA      R1,R2,R1,R3
        LDRB     R1,[R1, #+16]
        ORRS     R0,R1,R0, LSL #+8
        LDR.N    R1,??DataTable9_6
        STRH     R0,[R1, #+62]
//  520 	
//  521 							m_BMW_CAN.Month_data  =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][3];
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+17]
        LDR.N    R1,??DataTable9_6
        STRB     R0,[R1, #+64]
//  522 							m_BMW_CAN.day_data	  =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][5];
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+19]
        LDR.N    R1,??DataTable9_6
        STRB     R0,[R1, #+65]
//  523 							m_BMW_CAN.week_data   =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][4];
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+18]
        LDR.N    R1,??DataTable9_6
        STRB     R0,[R1, #+66]
//  524 							m_BMW_CAN.Hour_data   =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][6]; //
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+20]
        LDR.N    R1,??DataTable9_6
        STRB     R0,[R1, #+67]
//  525 							m_BMW_CAN.Minute_data =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][7]; 
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+21]
        LDR.N    R1,??DataTable9_6
        STRB     R0,[R1, #+68]
//  526 	//时间数据
//  527 							m_BMW_CAN.Sec_data	  =   g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][8];
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+22]
        LDR.N    R1,??DataTable9_6
        STRB     R0,[R1, #+69]
//  528 	                        //if(gNaviCnt>250)gNaviCnt=200;
//  529 	                        if(gNaviSystemOn)
        LDR.N    R0,??DataTable9_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??USART3_IRQHandler_13
//  530 	                        {
//  531 	                           gNaviSystemOn=0;
        LDR.N    R0,??DataTable9_40
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  532 							   gNaviSendFlag=1;
        LDR.N    R0,??DataTable9_41
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  533                                //gNaviCnt=3200;
//  534 							}
//  535 	//时间数据
//  536 						  }
//  537 								
//  538 				  g_GPS_DATA.RxFinishTimer=0;
??USART3_IRQHandler_13:
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+1216]
        B.N      ??USART3_IRQHandler_4
//  539 				 // for(i=0;i<=9;i++)
//  540 				 // cmd.msgbuf[i]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
//  541 					//	MSG_SendcmdMesssage(&cmd);
//  542 					  }
//  543 					}
//  544 				#endif
//  545 					else if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0x03)
??USART3_IRQHandler_10:
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+3
        BNE.N    ??USART3_IRQHandler_14
//  546 					{
//  547 						 g_GPS_DATA.RxFinishTimer=0;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+1216]
        B.N      ??USART3_IRQHandler_4
//  548 					  }
//  549 					  else if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0]==0x05)//蓝牙挂断
??USART3_IRQHandler_14:
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+5
        BNE.N    ??USART3_IRQHandler_15
//  550 					  {
//  551 						 
//  552 						  g_GPS_DATA.RxFinishTimer=0;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+1216]
        B.N      ??USART3_IRQHandler_4
//  553 					   }
//  554 					  else if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0x52)
??USART3_IRQHandler_15:
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+82
        BNE.N    ??USART3_IRQHandler_4
//  555 						{
//  556 						
//  557 							if(g_GPS_DATA.RxIndex>5)
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+1214]
        CMP      R0,#+6
        BCC.N    ??USART3_IRQHandler_4
//  558 							{
//  559 								uChecksum=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  560 								for(i=0;i<5;i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??USART3_IRQHandler_16:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BCS.N    ??USART3_IRQHandler_17
//  561 								uChecksum+=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.N    R0,??DataTable9_9
        LDRB     R0,[R0, #+12]
        MOVS     R1,#+60
        LDR.N    R2,??DataTable9_9
        MLA      R0,R1,R0,R2
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #+14]
        ADDS     R4,R0,R4
        ADDS     R5,R5,#+1
        B.N      ??USART3_IRQHandler_16
//  562 								uChecksum=uChecksum^0xFF;
??USART3_IRQHandler_17:
        EORS     R4,R4,#0xFF
//  563 
//  564 								g_GPS_DATA.RxFinishTimer=0;
        LDR.N    R0,??DataTable9_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+1216]
//  565 							}
//  566 						}
//  567 			//-------------------------------------------
//  568 			USART_ClearITPendingBit(USART3, USART_IT_RXNE);
??USART3_IRQHandler_4:
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable9_39  ;; 0x40004800
          CFI FunCall USART_ClearITPendingBit
        BL       USART_ClearITPendingBit
//  569 		}
//  570 	}
??USART3_IRQHandler_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock13
//  571 
//  572 //#ifdef AUDI_Q3_TFT_MAIN_BOARD

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function UART4_IRQHandler
        THUMB
//  573 void UART4_IRQHandler(void)
//  574 {
UART4_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  575     u8 uRevData;
//  576     if (USART_GetITStatus(UART4, USART_IT_RXNE) != RESET)
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable9_42  ;; 0x40004c00
          CFI FunCall USART_GetITStatus
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??UART4_IRQHandler_0
//  577     {
//  578         /* Read one byte from the receive data register */
//  579         uRevData = USART_ReceiveData(UART4);
        LDR.N    R0,??DataTable9_42  ;; 0x40004c00
          CFI FunCall USART_ReceiveData
        BL       USART_ReceiveData
        MOVS     R4,R0
//  580 
//  581         //-------------------------------------------
//  582 
//  583         //-------------------------------------------
//  584         USART_ClearITPendingBit(UART4, USART_IT_RXNE);
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable9_42  ;; 0x40004c00
          CFI FunCall USART_ClearITPendingBit
        BL       USART_ClearITPendingBit
//  585     }
//  586 
//  587 }
??UART4_IRQHandler_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14
//  588 //#endif
//  589 /*******************************************************************************
//  590  * Function Name  : UART5_IRQHandler
//  591  * Description    : This function handles UART5 global interrupt request.
//  592  * Input          : None
//  593  * Output         : None
//  594  * Return         : None
//  595  *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function UART5_IRQHandler
        THUMB
//  596 void UART5_IRQHandler(void)
//  597 {
UART5_IRQHandler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  598     u8 uRevData;
//  599     if (USART_GetITStatus(UART5, USART_IT_RXNE) != RESET)
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable9_43  ;; 0x40005000
          CFI FunCall USART_GetITStatus
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??UART5_IRQHandler_0
//  600     {
//  601         /* Read one byte from the receive data register */
//  602         uRevData = USART_ReceiveData(UART5);
        LDR.N    R0,??DataTable9_43  ;; 0x40005000
          CFI FunCall USART_ReceiveData
        BL       USART_ReceiveData
        MOVS     R4,R0
//  603         uRevData = uRevData;
//  604         USART_ClearITPendingBit(UART5, USART_IT_RXNE);
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable9_43  ;; 0x40005000
          CFI FunCall USART_ClearITPendingBit
        BL       USART_ClearITPendingBit
//  605     }
//  606 }
??UART5_IRQHandler_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock15
//  607 
//  608 
//  609 /**
//  610   * @brief  This function handles CAN1 RX0 Handler.
//  611   * @param  None
//  612   * @retval None
//  613   */
//  614 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  615 CanRxMsg myRxMessage;
myRxMessage:
        DS8 20

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function CAN1_RX0_IRQHandler
        THUMB
//  616 void CAN1_RX0_IRQHandler(void)
//  617 {
CAN1_RX0_IRQHandler:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
//  618     CanRxMsg RxMessage;
//  619     CAN_Receive(CAN1, CAN_FIFO0, &RxMessage);
        ADD      R2,SP,#+4
        MOVS     R1,#+0
        LDR.N    R0,??DataTable9_44  ;; 0x40006400
          CFI FunCall CAN_Receive
        BL       CAN_Receive
//  620 	myRxMessage =RxMessage;
        LDR.N    R0,??DataTable9_45
        ADD      R1,SP,#+4
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  621 
//  622     CAN2_USER_HANDLER(RxMessage);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
          CFI CFA R13+48
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+32
          CFI FunCall CAN2_USER_HANDLER
        BL       CAN2_USER_HANDLER
//  623     
//  624 }
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock16
//  625 
//  626 /**
//  627   * @brief  This function handles CAN2 RX0 Handler.
//  628   * @param  None
//  629   * @retval None
//  630   */
//  631 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function CAN2_RX0_IRQHandler
        THUMB
//  632 void CAN2_RX0_IRQHandler(void)
//  633 {
CAN2_RX0_IRQHandler:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
//  634     CanRxMsg RxMessage;
//  635 
//  636     CAN_Receive(CAN2, CAN_FIFO0, &RxMessage);
        ADD      R2,SP,#+4
        MOVS     R1,#+0
        LDR.N    R0,??DataTable9_46  ;; 0x40006800
          CFI FunCall CAN_Receive
        BL       CAN_Receive
//  637 	myRxMessage =RxMessage;
        LDR.N    R0,??DataTable9_45
        ADD      R1,SP,#+4
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//  638 	CAN2_USER_HANDLER(RxMessage);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
          CFI CFA R13+48
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+32
          CFI FunCall CAN2_USER_HANDLER
        BL       CAN2_USER_HANDLER
//  639 }
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     ARM_Max_Time_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     ARM_Receive_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     u32Systick

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     ??u10MsCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     ??u100MsClrWdgCount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     g_stuCurPower

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     m_BMW_CAN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     EEPROM_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     m_CarDoorInfo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     g_GPS_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     press_timer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_11:
        DC32     U8Tiemr_connect_press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_12:
        DC32     connect_press_one

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_13:
        DC32     gNaviCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_14:
        DC32     Time_Bus_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_15:
        DC32     Time_10ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_16:
        DC32     Time_50ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_17:
        DC32     Time_100ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_18:
        DC32     Poweroff_init_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_19:
        DC32     Powerwork_init_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_20:
        DC32     Powerstany_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_21:
        DC32     Power_canbuswait_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_22:
        DC32     Touch_valide_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_23:
        DC32     Time_300ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_24:
        DC32     Time_500ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_25:
        DC32     ITL_DetectDelayCntr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_26:
        DC32     Time_1s_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_27:
        DC32     IWDG_load_Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_28:
        DC32     Time_5s_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_29:
        DC32     Time_minute_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_30:
        DC32     capture

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_31:
        DC32     CCR1_Val

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_32:
        DC32     CCR2_Val

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_33:
        DC32     CCR3_Val

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_34:
        DC32     CCR4_Val

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_35:
        DC32     Touch_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_36:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_37:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_38:
        DC32     Uart_data_temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_39:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_40:
        DC32     gNaviSystemOn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_41:
        DC32     gNaviSendFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_42:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_43:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_44:
        DC32     0x40006400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_45:
        DC32     myRxMessage

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_46:
        DC32     0x40006800
//  640 
//  641 /**
//  642   * @brief  This function handles RTC global interrupt request.
//  643   * @param  None
//  644   * @retval None
//  645   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function RTC_IRQHandler
        THUMB
//  646 void RTC_IRQHandler(void)
//  647 {
RTC_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  648     if (RTC_GetITStatus(RTC_IT_ALR) != RESET)
        MOVS     R0,#+2
          CFI FunCall RTC_GetITStatus
        BL       RTC_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??RTC_IRQHandler_0
//  649     {
//  650         /* Clear Interrupt pending bit */
//  651         RTC_ClearITPendingBit(RTC_FLAG_ALR);
        MOVS     R0,#+2
          CFI FunCall RTC_ClearITPendingBit
        BL       RTC_ClearITPendingBit
//  652     }
//  653 }
??RTC_IRQHandler_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock18
//  654 
//  655 /*******************************************************************************
//  656 * Function Name  : RTCAlarm_IRQHandler
//  657 * Description    : This function handles RTC Alarm interrupt request.
//  658 * Input          : None
//  659 * Output         : None
//  660 * Return         : None
//  661 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function RTCAlarm_IRQHandler
        THUMB
//  662 void RTCAlarm_IRQHandler(void)
//  663 {
RTCAlarm_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  664   if(RTC_GetITStatus(RTC_IT_ALR) != RESET)
        MOVS     R0,#+2
          CFI FunCall RTC_GetITStatus
        BL       RTC_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??RTCAlarm_IRQHandler_0
//  665   {
//  666     /* Toggle Led connected to GPIO_LED Pin8 */
//  667     	//GPIO_WriteBit(GPIOB, P_PEC_CLK, (BitAction)(1-GPIO_ReadOutputDataBit(GPIOB, P_PEC_CLK)));
//  668 
//  669     /* Clear EXTI line17 pending bit */
//  670     EXTI_ClearITPendingBit(EXTI_Line17);
        MOVS     R0,#+131072
          CFI FunCall EXTI_ClearITPendingBit
        BL       EXTI_ClearITPendingBit
//  671 
//  672 	//IWDG_ReloadCounter();//清狗
//  673 	
//  674     /* Check if the Wake-Up flag is set */
//  675     if(PWR_GetFlagStatus(PWR_FLAG_WU) != RESET)
        MOVS     R0,#+1
          CFI FunCall PWR_GetFlagStatus
        BL       PWR_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??RTCAlarm_IRQHandler_1
//  676     {
//  677       /* Clear Wake Up flag */
//  678       PWR_ClearFlag(PWR_FLAG_WU);
        MOVS     R0,#+1
          CFI FunCall PWR_ClearFlag
        BL       PWR_ClearFlag
//  679     }
//  680 
//  681     /* Wait until last write operation on RTC registers has finished */
//  682     RTC_WaitForLastTask();   
??RTCAlarm_IRQHandler_1:
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  683     /* Clear RTC Alarm interrupt pending bit */
//  684     RTC_ClearITPendingBit(RTC_IT_ALR);
        MOVS     R0,#+2
          CFI FunCall RTC_ClearITPendingBit
        BL       RTC_ClearITPendingBit
//  685     /* Wait until last write operation on RTC registers has finished */
//  686     RTC_WaitForLastTask();
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  687   }
//  688 }
??RTCAlarm_IRQHandler_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock19

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  689 
//  690 /******************************************************************************/
//  691 /*                 STM32F10x Peripherals Interrupt Handlers                   */
//  692 /*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
//  693 /*  available peripheral interrupt handler's name please refer to the startup */
//  694 /*  file (startup_stm32f10x_xx.s).                                            */
//  695 /******************************************************************************/
//  696 
//  697 /**
//  698   * @brief  This function handles PPP interrupt request.
//  699   * @param  None
//  700   * @retval None
//  701   */
//  702 /*void PPP_IRQHandler(void)
//  703 {
//  704 }*/
//  705 
//  706 /**
//  707   * @}
//  708   */
//  709 
//  710 
//  711 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
//    46 bytes in section .bss
// 2 504 bytes in section .text
// 
// 2 504 bytes of CODE memory
//    46 bytes of DATA memory
//
//Errors: none
//Warnings: 2
