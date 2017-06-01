///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:51 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_rtc.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_rtc.c -D USE_STDPERIPH_DRIVER -D               /
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
//                    \Debug\List\stm32f10x_rtc.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_rtc

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC RTC_ClearFlag
        PUBLIC RTC_ClearITPendingBit
        PUBLIC RTC_EnterConfigMode
        PUBLIC RTC_ExitConfigMode
        PUBLIC RTC_GetCounter
        PUBLIC RTC_GetDivider
        PUBLIC RTC_GetFlagStatus
        PUBLIC RTC_GetITStatus
        PUBLIC RTC_ITConfig
        PUBLIC RTC_SetAlarm
        PUBLIC RTC_SetCounter
        PUBLIC RTC_SetPrescaler
        PUBLIC RTC_WaitForLastTask
        PUBLIC RTC_WaitForSynchro
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_rtc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_rtc.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the RTC firmware functions.
//    8   ******************************************************************************
//    9   * @attention
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
//   14   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
//   19   ******************************************************************************
//   20   */
//   21 
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "stm32f10x_rtc.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup RTC
//   30   * @brief RTC driver modules
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup RTC_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 /**
//   38   * @}
//   39   */
//   40 
//   41 /** @defgroup RTC_Private_Defines
//   42   * @{
//   43   */
//   44 #define RTC_LSB_MASK     ((uint32_t)0x0000FFFF)  /*!< RTC LSB Mask */
//   45 #define PRLH_MSB_MASK    ((uint32_t)0x000F0000)  /*!< RTC Prescaler MSB Mask */
//   46 
//   47 /**
//   48   * @}
//   49   */
//   50 
//   51 /** @defgroup RTC_Private_Macros
//   52   * @{
//   53   */
//   54 
//   55 /**
//   56   * @}
//   57   */
//   58 
//   59 /** @defgroup RTC_Private_Variables
//   60   * @{
//   61   */
//   62 
//   63 /**
//   64   * @}
//   65   */
//   66 
//   67 /** @defgroup RTC_Private_FunctionPrototypes
//   68   * @{
//   69   */
//   70 
//   71 /**
//   72   * @}
//   73   */
//   74 
//   75 /** @defgroup RTC_Private_Functions
//   76   * @{
//   77   */
//   78 
//   79 /**
//   80   * @brief  Enables or disables the specified RTC interrupts.
//   81   * @param  RTC_IT: specifies the RTC interrupts sources to be enabled or disabled.
//   82   *   This parameter can be any combination of the following values:
//   83   *     @arg RTC_IT_OW: Overflow interrupt
//   84   *     @arg RTC_IT_ALR: Alarm interrupt
//   85   *     @arg RTC_IT_SEC: Second interrupt
//   86   * @param  NewState: new state of the specified RTC interrupts.
//   87   *   This parameter can be: ENABLE or DISABLE.
//   88   * @retval None
//   89   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function RTC_ITConfig
          CFI NoCalls
        THUMB
//   90 void RTC_ITConfig(uint16_t RTC_IT, FunctionalState NewState)
//   91 {
//   92     /* Check the parameters */
//   93     assert_param(IS_RTC_IT(RTC_IT));
//   94     assert_param(IS_FUNCTIONAL_STATE(NewState));
//   95 
//   96     if (NewState != DISABLE)
RTC_ITConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??RTC_ITConfig_0
//   97     {
//   98         RTC->CRH |= RTC_IT;
        LDR.N    R2,??DataTable13  ;; 0x40002800
        LDRH     R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable13  ;; 0x40002800
        STRH     R2,[R3, #+0]
        B.N      ??RTC_ITConfig_1
//   99     }
//  100     else
//  101     {
//  102         RTC->CRH &= (uint16_t)~RTC_IT;
??RTC_ITConfig_0:
        LDR.N    R2,??DataTable13  ;; 0x40002800
        LDRH     R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable13  ;; 0x40002800
        STRH     R2,[R3, #+0]
//  103     }
//  104 }
??RTC_ITConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  105 
//  106 /**
//  107   * @brief  Enters the RTC configuration mode.
//  108   * @param  None
//  109   * @retval None
//  110   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function RTC_EnterConfigMode
          CFI NoCalls
        THUMB
//  111 void RTC_EnterConfigMode(void)
//  112 {
//  113     /* Set the CNF flag to enter in the Configuration Mode */
//  114     RTC->CRL |= RTC_CRL_CNF;
RTC_EnterConfigMode:
        LDR.N    R0,??DataTable13_1  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable13_1  ;; 0x40002804
        STRH     R0,[R1, #+0]
//  115 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  116 
//  117 /**
//  118   * @brief  Exits from the RTC configuration mode.
//  119   * @param  None
//  120   * @retval None
//  121   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function RTC_ExitConfigMode
          CFI NoCalls
        THUMB
//  122 void RTC_ExitConfigMode(void)
//  123 {
//  124     /* Reset the CNF flag to exit from the Configuration Mode */
//  125     RTC->CRL &= (uint16_t)~((uint16_t)RTC_CRL_CNF);
RTC_ExitConfigMode:
        LDR.N    R0,??DataTable13_1  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13_1  ;; 0x40002804
        STRH     R0,[R1, #+0]
//  126 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  127 
//  128 /**
//  129   * @brief  Gets the RTC counter value.
//  130   * @param  None
//  131   * @retval RTC counter value.
//  132   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function RTC_GetCounter
          CFI NoCalls
        THUMB
//  133 uint32_t RTC_GetCounter(void)
//  134 {
//  135     uint16_t tmp = 0;
RTC_GetCounter:
        MOVS     R0,#+0
//  136     tmp = RTC->CNTL;
        LDR.N    R1,??DataTable13_2  ;; 0x4000281c
        LDRH     R1,[R1, #+0]
        MOVS     R0,R1
//  137     return (((uint32_t)RTC->CNTH << 16 ) | tmp) ;
        LDR.N    R1,??DataTable13_3  ;; 0x40002818
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1, LSL #+16
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  138 }
//  139 
//  140 /**
//  141   * @brief  Sets the RTC counter value.
//  142   * @param  CounterValue: RTC counter new value.
//  143   * @retval None
//  144   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function RTC_SetCounter
        THUMB
//  145 void RTC_SetCounter(uint32_t CounterValue)
//  146 {
RTC_SetCounter:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  147     RTC_EnterConfigMode();
          CFI FunCall RTC_EnterConfigMode
        BL       RTC_EnterConfigMode
//  148     /* Set RTC COUNTER MSB word */
//  149     RTC->CNTH = CounterValue >> 16;
        LSRS     R0,R4,#+16
        LDR.N    R1,??DataTable13_3  ;; 0x40002818
        STRH     R0,[R1, #+0]
//  150     /* Set RTC COUNTER LSB word */
//  151     RTC->CNTL = (CounterValue & RTC_LSB_MASK);
        LDR.N    R0,??DataTable13_2  ;; 0x4000281c
        STRH     R4,[R0, #+0]
//  152     RTC_ExitConfigMode();
          CFI FunCall RTC_ExitConfigMode
        BL       RTC_ExitConfigMode
//  153 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  154 
//  155 /**
//  156   * @brief  Sets the RTC prescaler value.
//  157   * @param  PrescalerValue: RTC prescaler new value.
//  158   * @retval None
//  159   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function RTC_SetPrescaler
        THUMB
//  160 void RTC_SetPrescaler(uint32_t PrescalerValue)
//  161 {
RTC_SetPrescaler:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  162     /* Check the parameters */
//  163     assert_param(IS_RTC_PRESCALER(PrescalerValue));
//  164 
//  165     RTC_EnterConfigMode();
          CFI FunCall RTC_EnterConfigMode
        BL       RTC_EnterConfigMode
//  166     /* Set RTC PRESCALER MSB word */
//  167     RTC->PRLH = (PrescalerValue & PRLH_MSB_MASK) >> 16;
        LSRS     R0,R4,#+16
        ANDS     R0,R0,#0xF
        LDR.N    R1,??DataTable13_4  ;; 0x40002808
        STRH     R0,[R1, #+0]
//  168     /* Set RTC PRESCALER LSB word */
//  169     RTC->PRLL = (PrescalerValue & RTC_LSB_MASK);
        LDR.N    R0,??DataTable13_5  ;; 0x4000280c
        STRH     R4,[R0, #+0]
//  170     RTC_ExitConfigMode();
          CFI FunCall RTC_ExitConfigMode
        BL       RTC_ExitConfigMode
//  171 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  172 
//  173 /**
//  174   * @brief  Sets the RTC alarm value.
//  175   * @param  AlarmValue: RTC alarm new value.
//  176   * @retval None
//  177   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function RTC_SetAlarm
        THUMB
//  178 void RTC_SetAlarm(uint32_t AlarmValue)
//  179 {
RTC_SetAlarm:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  180     RTC_EnterConfigMode();
          CFI FunCall RTC_EnterConfigMode
        BL       RTC_EnterConfigMode
//  181     /* Set the ALARM MSB word */
//  182     RTC->ALRH = AlarmValue >> 16;
        LSRS     R0,R4,#+16
        LDR.N    R1,??DataTable13_6  ;; 0x40002820
        STRH     R0,[R1, #+0]
//  183     /* Set the ALARM LSB word */
//  184     RTC->ALRL = (AlarmValue & RTC_LSB_MASK);
        LDR.N    R0,??DataTable13_7  ;; 0x40002824
        STRH     R4,[R0, #+0]
//  185     RTC_ExitConfigMode();
          CFI FunCall RTC_ExitConfigMode
        BL       RTC_ExitConfigMode
//  186 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  187 
//  188 /**
//  189   * @brief  Gets the RTC divider value.
//  190   * @param  None
//  191   * @retval RTC Divider value.
//  192   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function RTC_GetDivider
          CFI NoCalls
        THUMB
//  193 uint32_t RTC_GetDivider(void)
//  194 {
//  195     uint32_t tmp = 0x00;
RTC_GetDivider:
        MOVS     R0,#+0
//  196     tmp = ((uint32_t)RTC->DIVH & (uint32_t)0x000F) << 16;
        LDR.N    R1,??DataTable13_8  ;; 0x40002810
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ANDS     R1,R1,#0xF
        LSLS     R1,R1,#+16
        MOVS     R0,R1
//  197     tmp |= RTC->DIVL;
        LDR.N    R1,??DataTable13_9  ;; 0x40002814
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0
//  198     return tmp;
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  199 }
//  200 
//  201 /**
//  202   * @brief  Waits until last write operation on RTC registers has finished.
//  203   * @note   This function must be called before any write to RTC registers.
//  204   * @param  None
//  205   * @retval None
//  206   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function RTC_WaitForLastTask
          CFI NoCalls
        THUMB
//  207 void RTC_WaitForLastTask(void)
//  208 {
//  209     /* Loop until RTOFF flag is set */
//  210     while ((RTC->CRL & RTC_FLAG_RTOFF) == (uint16_t)RESET)
RTC_WaitForLastTask:
??RTC_WaitForLastTask_0:
        LDR.N    R0,??DataTable13_1  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??RTC_WaitForLastTask_0
//  211     {
//  212     }
//  213 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  214 
//  215 /**
//  216   * @brief  Waits until the RTC registers (RTC_CNT, RTC_ALR and RTC_PRL)
//  217   *   are synchronized with RTC APB clock.
//  218   * @note   This function must be called before any read operation after an APB reset
//  219   *   or an APB clock stop.
//  220   * @param  None
//  221   * @retval None
//  222   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function RTC_WaitForSynchro
          CFI NoCalls
        THUMB
//  223 void RTC_WaitForSynchro(void)
//  224 {
//  225     /* Clear RSF flag */
//  226     RTC->CRL &= (uint16_t)~RTC_FLAG_RSF;
RTC_WaitForSynchro:
        LDR.N    R0,??DataTable13_1  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65527
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13_1  ;; 0x40002804
        STRH     R0,[R1, #+0]
//  227     /* Loop until RSF flag is set */
//  228     while ((RTC->CRL & RTC_FLAG_RSF) == (uint16_t)RESET)
??RTC_WaitForSynchro_0:
        LDR.N    R0,??DataTable13_1  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??RTC_WaitForSynchro_0
//  229     {
//  230     }
//  231 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  232 
//  233 /**
//  234   * @brief  Checks whether the specified RTC flag is set or not.
//  235   * @param  RTC_FLAG: specifies the flag to check.
//  236   *   This parameter can be one the following values:
//  237   *     @arg RTC_FLAG_RTOFF: RTC Operation OFF flag
//  238   *     @arg RTC_FLAG_RSF: Registers Synchronized flag
//  239   *     @arg RTC_FLAG_OW: Overflow flag
//  240   *     @arg RTC_FLAG_ALR: Alarm flag
//  241   *     @arg RTC_FLAG_SEC: Second flag
//  242   * @retval The new state of RTC_FLAG (SET or RESET).
//  243   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function RTC_GetFlagStatus
          CFI NoCalls
        THUMB
//  244 FlagStatus RTC_GetFlagStatus(uint16_t RTC_FLAG)
//  245 {
RTC_GetFlagStatus:
        MOVS     R1,R0
//  246     FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
//  247 
//  248     /* Check the parameters */
//  249     assert_param(IS_RTC_GET_FLAG(RTC_FLAG));
//  250 
//  251     if ((RTC->CRL & RTC_FLAG) != (uint16_t)RESET)
        LDR.N    R2,??DataTable13_1  ;; 0x40002804
        LDRH     R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        TST      R2,R1
        BEQ.N    ??RTC_GetFlagStatus_0
//  252     {
//  253         bitstatus = SET;
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??RTC_GetFlagStatus_1
//  254     }
//  255     else
//  256     {
//  257         bitstatus = RESET;
??RTC_GetFlagStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
//  258     }
//  259     return bitstatus;
??RTC_GetFlagStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  260 }
//  261 
//  262 /**
//  263   * @brief  Clears the RTC's pending flags.
//  264   * @param  RTC_FLAG: specifies the flag to clear.
//  265   *   This parameter can be any combination of the following values:
//  266   *     @arg RTC_FLAG_RSF: Registers Synchronized flag. This flag is cleared only after
//  267   *                        an APB reset or an APB Clock stop.
//  268   *     @arg RTC_FLAG_OW: Overflow flag
//  269   *     @arg RTC_FLAG_ALR: Alarm flag
//  270   *     @arg RTC_FLAG_SEC: Second flag
//  271   * @retval None
//  272   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function RTC_ClearFlag
          CFI NoCalls
        THUMB
//  273 void RTC_ClearFlag(uint16_t RTC_FLAG)
//  274 {
//  275     /* Check the parameters */
//  276     assert_param(IS_RTC_CLEAR_FLAG(RTC_FLAG));
//  277 
//  278     /* Clear the corresponding RTC flag */
//  279     RTC->CRL &= (uint16_t)~RTC_FLAG;
RTC_ClearFlag:
        LDR.N    R1,??DataTable13_1  ;; 0x40002804
        LDRH     R1,[R1, #+0]
        BICS     R1,R1,R0
        LDR.N    R2,??DataTable13_1  ;; 0x40002804
        STRH     R1,[R2, #+0]
//  280 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  281 
//  282 /**
//  283   * @brief  Checks whether the specified RTC interrupt has occurred or not.
//  284   * @param  RTC_IT: specifies the RTC interrupts sources to check.
//  285   *   This parameter can be one of the following values:
//  286   *     @arg RTC_IT_OW: Overflow interrupt
//  287   *     @arg RTC_IT_ALR: Alarm interrupt
//  288   *     @arg RTC_IT_SEC: Second interrupt
//  289   * @retval The new state of the RTC_IT (SET or RESET).
//  290   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function RTC_GetITStatus
          CFI NoCalls
        THUMB
//  291 ITStatus RTC_GetITStatus(uint16_t RTC_IT)
//  292 {
RTC_GetITStatus:
        MOVS     R1,R0
//  293     ITStatus bitstatus = RESET;
        MOVS     R0,#+0
//  294     /* Check the parameters */
//  295     assert_param(IS_RTC_GET_IT(RTC_IT));
//  296 
//  297     bitstatus = (ITStatus)(RTC->CRL & RTC_IT);
        LDR.N    R2,??DataTable13_1  ;; 0x40002804
        LDRH     R2,[R2, #+0]
        ANDS     R2,R1,R2
        MOVS     R0,R2
//  298     if (((RTC->CRH & RTC_IT) != (uint16_t)RESET) && (bitstatus != (uint16_t)RESET))
        LDR.N    R2,??DataTable13  ;; 0x40002800
        LDRH     R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        TST      R2,R1
        BEQ.N    ??RTC_GetITStatus_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??RTC_GetITStatus_0
//  299     {
//  300         bitstatus = SET;
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??RTC_GetITStatus_1
//  301     }
//  302     else
//  303     {
//  304         bitstatus = RESET;
??RTC_GetITStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
//  305     }
//  306     return bitstatus;
??RTC_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  307 }
//  308 
//  309 /**
//  310   * @brief  Clears the RTC's interrupt pending bits.
//  311   * @param  RTC_IT: specifies the interrupt pending bit to clear.
//  312   *   This parameter can be any combination of the following values:
//  313   *     @arg RTC_IT_OW: Overflow interrupt
//  314   *     @arg RTC_IT_ALR: Alarm interrupt
//  315   *     @arg RTC_IT_SEC: Second interrupt
//  316   * @retval None
//  317   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function RTC_ClearITPendingBit
          CFI NoCalls
        THUMB
//  318 void RTC_ClearITPendingBit(uint16_t RTC_IT)
//  319 {
//  320     /* Check the parameters */
//  321     assert_param(IS_RTC_IT(RTC_IT));
//  322 
//  323     /* Clear the corresponding RTC pending bit */
//  324     RTC->CRL &= (uint16_t)~RTC_IT;
RTC_ClearITPendingBit:
        LDR.N    R1,??DataTable13_1  ;; 0x40002804
        LDRH     R1,[R1, #+0]
        BICS     R1,R1,R0
        LDR.N    R2,??DataTable13_1  ;; 0x40002804
        STRH     R1,[R2, #+0]
//  325 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x40002800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x40002804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x4000281c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0x40002818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0x40002808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0x4000280c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0x40002820

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0x40002824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0x40002810

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0x40002814

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  326 
//  327 /**
//  328   * @}
//  329   */
//  330 
//  331 /**
//  332   * @}
//  333   */
//  334 
//  335 /**
//  336   * @}
//  337   */
//  338 
//  339 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 352 bytes in section .text
// 
// 352 bytes of CODE memory
//
//Errors: none
//Warnings: none
