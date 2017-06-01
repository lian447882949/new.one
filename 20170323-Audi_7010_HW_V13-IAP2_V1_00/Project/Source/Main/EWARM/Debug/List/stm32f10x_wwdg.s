///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:52 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_wwdg.c                                         /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_wwdg.c -D USE_STDPERIPH_DRIVER -D              /
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
//                    \Debug\List\stm32f10x_wwdg.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_wwdg

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd

        PUBLIC WWDG_ClearFlag
        PUBLIC WWDG_DeInit
        PUBLIC WWDG_Enable
        PUBLIC WWDG_EnableIT
        PUBLIC WWDG_GetFlagStatus
        PUBLIC WWDG_SetCounter
        PUBLIC WWDG_SetPrescaler
        PUBLIC WWDG_SetWindowValue
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_wwdg.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_wwdg.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the WWDG firmware functions.
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
//   23 #include "stm32f10x_wwdg.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup WWDG
//   31   * @brief WWDG driver modules
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup WWDG_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 /** @defgroup WWDG_Private_Defines
//   44   * @{
//   45   */
//   46 
//   47 /* ----------- WWDG registers bit address in the alias region ----------- */
//   48 #define WWDG_OFFSET       (WWDG_BASE - PERIPH_BASE)
//   49 
//   50 /* Alias word address of EWI bit */
//   51 #define CFR_OFFSET        (WWDG_OFFSET + 0x04)
//   52 #define EWI_BitNumber     0x09
//   53 #define CFR_EWI_BB        (PERIPH_BB_BASE + (CFR_OFFSET * 32) + (EWI_BitNumber * 4))
//   54 
//   55 /* --------------------- WWDG registers bit mask ------------------------ */
//   56 
//   57 /* CR register bit mask */
//   58 #define CR_WDGA_Set       ((uint32_t)0x00000080)
//   59 
//   60 /* CFR register bit mask */
//   61 #define CFR_WDGTB_Mask    ((uint32_t)0xFFFFFE7F)
//   62 #define CFR_W_Mask        ((uint32_t)0xFFFFFF80)
//   63 #define BIT_Mask          ((uint8_t)0x7F)
//   64 
//   65 /**
//   66   * @}
//   67   */
//   68 
//   69 /** @defgroup WWDG_Private_Macros
//   70   * @{
//   71   */
//   72 
//   73 /**
//   74   * @}
//   75   */
//   76 
//   77 /** @defgroup WWDG_Private_Variables
//   78   * @{
//   79   */
//   80 
//   81 /**
//   82   * @}
//   83   */
//   84 
//   85 /** @defgroup WWDG_Private_FunctionPrototypes
//   86   * @{
//   87   */
//   88 
//   89 /**
//   90   * @}
//   91   */
//   92 
//   93 /** @defgroup WWDG_Private_Functions
//   94   * @{
//   95   */
//   96 
//   97 /**
//   98   * @brief  Deinitializes the WWDG peripheral registers to their default reset values.
//   99   * @param  None
//  100   * @retval None
//  101   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function WWDG_DeInit
        THUMB
//  102 void WWDG_DeInit(void)
//  103 {
WWDG_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  104     RCC_APB1PeriphResetCmd(RCC_APB1Periph_WWDG, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+2048
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  105     RCC_APB1PeriphResetCmd(RCC_APB1Periph_WWDG, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+2048
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  106 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//  107 
//  108 /**
//  109   * @brief  Sets the WWDG Prescaler.
//  110   * @param  WWDG_Prescaler: specifies the WWDG Prescaler.
//  111   *   This parameter can be one of the following values:
//  112   *     @arg WWDG_Prescaler_1: WWDG counter clock = (PCLK1/4096)/1
//  113   *     @arg WWDG_Prescaler_2: WWDG counter clock = (PCLK1/4096)/2
//  114   *     @arg WWDG_Prescaler_4: WWDG counter clock = (PCLK1/4096)/4
//  115   *     @arg WWDG_Prescaler_8: WWDG counter clock = (PCLK1/4096)/8
//  116   * @retval None
//  117   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function WWDG_SetPrescaler
          CFI NoCalls
        THUMB
//  118 void WWDG_SetPrescaler(uint32_t WWDG_Prescaler)
//  119 {
//  120     uint32_t tmpreg = 0;
WWDG_SetPrescaler:
        MOVS     R1,#+0
//  121     /* Check the parameters */
//  122     assert_param(IS_WWDG_PRESCALER(WWDG_Prescaler));
//  123     /* Clear WDGTB[1:0] bits */
//  124     tmpreg = WWDG->CFR & CFR_WDGTB_Mask;
        LDR.N    R2,??DataTable6  ;; 0x40002c04
        LDR      R2,[R2, #+0]
        BICS     R2,R2,#0x180
        MOVS     R1,R2
//  125     /* Set WDGTB[1:0] bits according to WWDG_Prescaler value */
//  126     tmpreg |= WWDG_Prescaler;
        ORRS     R1,R0,R1
//  127     /* Store the new value */
//  128     WWDG->CFR = tmpreg;
        LDR.N    R2,??DataTable6  ;; 0x40002c04
        STR      R1,[R2, #+0]
//  129 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  130 
//  131 /**
//  132   * @brief  Sets the WWDG window value.
//  133   * @param  WindowValue: specifies the window value to be compared to the downcounter.
//  134   *   This parameter value must be lower than 0x80.
//  135   * @retval None
//  136   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function WWDG_SetWindowValue
          CFI NoCalls
        THUMB
//  137 void WWDG_SetWindowValue(uint8_t WindowValue)
//  138 {
WWDG_SetWindowValue:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  139     __IO uint32_t tmpreg = 0;
        MOVS     R1,#+0
        STR      R1,[SP, #+0]
//  140 
//  141     /* Check the parameters */
//  142     assert_param(IS_WWDG_WINDOW_VALUE(WindowValue));
//  143     /* Clear W[6:0] bits */
//  144 
//  145     tmpreg = WWDG->CFR & CFR_W_Mask;
        LDR.N    R1,??DataTable6  ;; 0x40002c04
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+7
        LSLS     R1,R1,#+7
        STR      R1,[SP, #+0]
//  146 
//  147     /* Set W[6:0] bits according to WindowValue value */
//  148     tmpreg |= WindowValue & (uint32_t) BIT_Mask;
        LDR      R1,[SP, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R2,R0,#0x7F
        ORRS     R1,R2,R1
        STR      R1,[SP, #+0]
//  149 
//  150     /* Store the new value */
//  151     WWDG->CFR = tmpreg;
        LDR.N    R1,??DataTable6  ;; 0x40002c04
        LDR      R2,[SP, #+0]
        STR      R2,[R1, #+0]
//  152 }
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  153 
//  154 /**
//  155   * @brief  Enables the WWDG Early Wakeup interrupt(EWI).
//  156   * @param  None
//  157   * @retval None
//  158   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function WWDG_EnableIT
          CFI NoCalls
        THUMB
//  159 void WWDG_EnableIT(void)
//  160 {
//  161     *(__IO uint32_t *) CFR_EWI_BB = (uint32_t)ENABLE;
WWDG_EnableIT:
        LDR.N    R0,??DataTable6_1  ;; 0x420580a4
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  162 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  163 
//  164 /**
//  165   * @brief  Sets the WWDG counter value.
//  166   * @param  Counter: specifies the watchdog counter value.
//  167   *   This parameter must be a number between 0x40 and 0x7F.
//  168   * @retval None
//  169   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function WWDG_SetCounter
          CFI NoCalls
        THUMB
//  170 void WWDG_SetCounter(uint8_t Counter)
//  171 {
//  172     /* Check the parameters */
//  173     assert_param(IS_WWDG_COUNTER(Counter));
//  174     /* Write to T[6:0] bits to configure the counter value, no need to do
//  175        a read-modify-write; writing a 0 to WDGA bit does nothing */
//  176     WWDG->CR = Counter & BIT_Mask;
WWDG_SetCounter:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R1,R0,#0x7F
        LDR.N    R2,??DataTable6_2  ;; 0x40002c00
        STR      R1,[R2, #+0]
//  177 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  178 
//  179 /**
//  180   * @brief  Enables WWDG and load the counter value.
//  181   * @param  Counter: specifies the watchdog counter value.
//  182   *   This parameter must be a number between 0x40 and 0x7F.
//  183   * @retval None
//  184   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function WWDG_Enable
          CFI NoCalls
        THUMB
//  185 void WWDG_Enable(uint8_t Counter)
//  186 {
//  187     /* Check the parameters */
//  188     assert_param(IS_WWDG_COUNTER(Counter));
//  189     WWDG->CR = CR_WDGA_Set | Counter;
WWDG_Enable:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R1,R0,#0x80
        LDR.N    R2,??DataTable6_2  ;; 0x40002c00
        STR      R1,[R2, #+0]
//  190 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  191 
//  192 /**
//  193   * @brief  Checks whether the Early Wakeup interrupt flag is set or not.
//  194   * @param  None
//  195   * @retval The new state of the Early Wakeup interrupt flag (SET or RESET)
//  196   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function WWDG_GetFlagStatus
          CFI NoCalls
        THUMB
//  197 FlagStatus WWDG_GetFlagStatus(void)
//  198 {
//  199     return (FlagStatus)(WWDG->SR);
WWDG_GetFlagStatus:
        LDR.N    R0,??DataTable6_3  ;; 0x40002c08
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  200 }
//  201 
//  202 /**
//  203   * @brief  Clears Early Wakeup interrupt flag.
//  204   * @param  None
//  205   * @retval None
//  206   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function WWDG_ClearFlag
          CFI NoCalls
        THUMB
//  207 void WWDG_ClearFlag(void)
//  208 {
//  209     WWDG->SR = (uint32_t)RESET;
WWDG_ClearFlag:
        LDR.N    R0,??DataTable6_3  ;; 0x40002c08
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  210 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40002c04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x420580a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40002c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x40002c08

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  211 
//  212 /**
//  213   * @}
//  214   */
//  215 
//  216 /**
//  217   * @}
//  218   */
//  219 
//  220 /**
//  221   * @}
//  222   */
//  223 
//  224 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 146 bytes in section .text
// 
// 146 bytes of CODE memory
//
//Errors: none
//Warnings: none
