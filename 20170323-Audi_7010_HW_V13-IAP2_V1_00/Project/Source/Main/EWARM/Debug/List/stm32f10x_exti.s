///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:48 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_exti.c                                         /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_exti.c -D USE_STDPERIPH_DRIVER -D              /
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
//                    \Debug\List\stm32f10x_exti.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_exti

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC EXTI_ClearFlag
        PUBLIC EXTI_ClearITPendingBit
        PUBLIC EXTI_DeInit
        PUBLIC EXTI_GenerateSWInterrupt
        PUBLIC EXTI_GetFlagStatus
        PUBLIC EXTI_GetITStatus
        PUBLIC EXTI_Init
        PUBLIC EXTI_StructInit
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_exti.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_exti.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the EXTI firmware functions.
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
//   23 #include "stm32f10x_exti.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup EXTI
//   30   * @brief EXTI driver modules
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup EXTI_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup EXTI_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 #define EXTI_LINENONE    ((uint32_t)0x00000)  /* No interrupt selected */
//   47 
//   48 /**
//   49   * @}
//   50   */
//   51 
//   52 /** @defgroup EXTI_Private_Macros
//   53   * @{
//   54   */
//   55 
//   56 /**
//   57   * @}
//   58   */
//   59 
//   60 /** @defgroup EXTI_Private_Variables
//   61   * @{
//   62   */
//   63 
//   64 /**
//   65   * @}
//   66   */
//   67 
//   68 /** @defgroup EXTI_Private_FunctionPrototypes
//   69   * @{
//   70   */
//   71 
//   72 /**
//   73   * @}
//   74   */
//   75 
//   76 /** @defgroup EXTI_Private_Functions
//   77   * @{
//   78   */
//   79 
//   80 /**
//   81   * @brief  Deinitializes the EXTI peripheral registers to their default reset values.
//   82   * @param  None
//   83   * @retval None
//   84   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function EXTI_DeInit
          CFI NoCalls
        THUMB
//   85 void EXTI_DeInit(void)
//   86 {
//   87     EXTI->IMR = 0x00000000;
EXTI_DeInit:
        LDR.N    R0,??DataTable6  ;; 0x40010400
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   88     EXTI->EMR = 0x00000000;
        LDR.N    R0,??DataTable6_1  ;; 0x40010404
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   89     EXTI->RTSR = 0x00000000;
        LDR.N    R0,??DataTable6_2  ;; 0x40010408
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   90     EXTI->FTSR = 0x00000000;
        LDR.N    R0,??DataTable6_3  ;; 0x4001040c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   91     EXTI->PR = 0x000FFFFF;
        LDR.N    R0,??DataTable6_4  ;; 0x40010414
        LDR.N    R1,??DataTable6_5  ;; 0xfffff
        STR      R1,[R0, #+0]
//   92 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   93 
//   94 /**
//   95   * @brief  Initializes the EXTI peripheral according to the specified
//   96   *         parameters in the EXTI_InitStruct.
//   97   * @param  EXTI_InitStruct: pointer to a EXTI_InitTypeDef structure
//   98   *         that contains the configuration information for the EXTI peripheral.
//   99   * @retval None
//  100   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function EXTI_Init
          CFI NoCalls
        THUMB
//  101 void EXTI_Init(EXTI_InitTypeDef *EXTI_InitStruct)
//  102 {
//  103     uint32_t tmp = 0;
EXTI_Init:
        MOVS     R1,#+0
//  104 
//  105     /* Check the parameters */
//  106     assert_param(IS_EXTI_MODE(EXTI_InitStruct->EXTI_Mode));
//  107     assert_param(IS_EXTI_TRIGGER(EXTI_InitStruct->EXTI_Trigger));
//  108     assert_param(IS_EXTI_LINE(EXTI_InitStruct->EXTI_Line));
//  109     assert_param(IS_FUNCTIONAL_STATE(EXTI_InitStruct->EXTI_LineCmd));
//  110 
//  111     tmp = (uint32_t)EXTI_BASE;
        LDR.N    R2,??DataTable6  ;; 0x40010400
        MOVS     R1,R2
//  112 
//  113     if (EXTI_InitStruct->EXTI_LineCmd != DISABLE)
        LDRB     R2,[R0, #+6]
        CMP      R2,#+0
        BEQ.N    ??EXTI_Init_0
//  114     {
//  115         /* Clear EXTI line configuration */
//  116         EXTI->IMR &= ~EXTI_InitStruct->EXTI_Line;
        LDR.N    R2,??DataTable6  ;; 0x40010400
        LDR      R2,[R2, #+0]
        LDR      R3,[R0, #+0]
        BICS     R2,R2,R3
        LDR.N    R3,??DataTable6  ;; 0x40010400
        STR      R2,[R3, #+0]
//  117         EXTI->EMR &= ~EXTI_InitStruct->EXTI_Line;
        LDR.N    R2,??DataTable6_1  ;; 0x40010404
        LDR      R2,[R2, #+0]
        LDR      R3,[R0, #+0]
        BICS     R2,R2,R3
        LDR.N    R3,??DataTable6_1  ;; 0x40010404
        STR      R2,[R3, #+0]
//  118 
//  119         tmp += EXTI_InitStruct->EXTI_Mode;
        LDRB     R2,[R0, #+4]
        ADDS     R1,R2,R1
//  120 
//  121         *(__IO uint32_t *) tmp |= EXTI_InitStruct->EXTI_Line;
        LDR      R2,[R1, #+0]
        LDR      R3,[R0, #+0]
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
//  122 
//  123         /* Clear Rising Falling edge configuration */
//  124         EXTI->RTSR &= ~EXTI_InitStruct->EXTI_Line;
        LDR.N    R2,??DataTable6_2  ;; 0x40010408
        LDR      R2,[R2, #+0]
        LDR      R3,[R0, #+0]
        BICS     R2,R2,R3
        LDR.N    R3,??DataTable6_2  ;; 0x40010408
        STR      R2,[R3, #+0]
//  125         EXTI->FTSR &= ~EXTI_InitStruct->EXTI_Line;
        LDR.N    R2,??DataTable6_3  ;; 0x4001040c
        LDR      R2,[R2, #+0]
        LDR      R3,[R0, #+0]
        BICS     R2,R2,R3
        LDR.N    R3,??DataTable6_3  ;; 0x4001040c
        STR      R2,[R3, #+0]
//  126 
//  127         /* Select the trigger for the selected external interrupts */
//  128         if (EXTI_InitStruct->EXTI_Trigger == EXTI_Trigger_Rising_Falling)
        LDRB     R2,[R0, #+5]
        CMP      R2,#+16
        BNE.N    ??EXTI_Init_1
//  129         {
//  130             /* Rising Falling edge */
//  131             EXTI->RTSR |= EXTI_InitStruct->EXTI_Line;
        LDR.N    R2,??DataTable6_2  ;; 0x40010408
        LDR      R2,[R2, #+0]
        LDR      R3,[R0, #+0]
        ORRS     R2,R3,R2
        LDR.N    R3,??DataTable6_2  ;; 0x40010408
        STR      R2,[R3, #+0]
//  132             EXTI->FTSR |= EXTI_InitStruct->EXTI_Line;
        LDR.N    R2,??DataTable6_3  ;; 0x4001040c
        LDR      R2,[R2, #+0]
        LDR      R3,[R0, #+0]
        ORRS     R2,R3,R2
        LDR.N    R3,??DataTable6_3  ;; 0x4001040c
        STR      R2,[R3, #+0]
        B.N      ??EXTI_Init_2
//  133         }
//  134         else
//  135         {
//  136             tmp = (uint32_t)EXTI_BASE;
??EXTI_Init_1:
        LDR.N    R2,??DataTable6  ;; 0x40010400
        MOVS     R1,R2
//  137             tmp += EXTI_InitStruct->EXTI_Trigger;
        LDRB     R2,[R0, #+5]
        ADDS     R1,R2,R1
//  138 
//  139             *(__IO uint32_t *) tmp |= EXTI_InitStruct->EXTI_Line;
        LDR      R2,[R1, #+0]
        LDR      R3,[R0, #+0]
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        B.N      ??EXTI_Init_2
//  140         }
//  141     }
//  142     else
//  143     {
//  144         tmp += EXTI_InitStruct->EXTI_Mode;
??EXTI_Init_0:
        LDRB     R2,[R0, #+4]
        ADDS     R1,R2,R1
//  145 
//  146         /* Disable the selected external lines */
//  147         *(__IO uint32_t *) tmp &= ~EXTI_InitStruct->EXTI_Line;
        LDR      R2,[R1, #+0]
        LDR      R3,[R0, #+0]
        BICS     R2,R2,R3
        STR      R2,[R1, #+0]
//  148     }
//  149 }
??EXTI_Init_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  150 
//  151 /**
//  152   * @brief  Fills each EXTI_InitStruct member with its reset value.
//  153   * @param  EXTI_InitStruct: pointer to a EXTI_InitTypeDef structure which will
//  154   *         be initialized.
//  155   * @retval None
//  156   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function EXTI_StructInit
          CFI NoCalls
        THUMB
//  157 void EXTI_StructInit(EXTI_InitTypeDef *EXTI_InitStruct)
//  158 {
//  159     EXTI_InitStruct->EXTI_Line = EXTI_LINENONE;
EXTI_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  160     EXTI_InitStruct->EXTI_Mode = EXTI_Mode_Interrupt;
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  161     EXTI_InitStruct->EXTI_Trigger = EXTI_Trigger_Falling;
        MOVS     R1,#+12
        STRB     R1,[R0, #+5]
//  162     EXTI_InitStruct->EXTI_LineCmd = DISABLE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  163 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  164 
//  165 /**
//  166   * @brief  Generates a Software interrupt.
//  167   * @param  EXTI_Line: specifies the EXTI lines to be enabled or disabled.
//  168   *   This parameter can be any combination of EXTI_Linex where x can be (0..19).
//  169   * @retval None
//  170   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function EXTI_GenerateSWInterrupt
          CFI NoCalls
        THUMB
//  171 void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line)
//  172 {
//  173     /* Check the parameters */
//  174     assert_param(IS_EXTI_LINE(EXTI_Line));
//  175 
//  176     EXTI->SWIER |= EXTI_Line;
EXTI_GenerateSWInterrupt:
        LDR.N    R1,??DataTable6_6  ;; 0x40010410
        LDR      R1,[R1, #+0]
        ORRS     R1,R0,R1
        LDR.N    R2,??DataTable6_6  ;; 0x40010410
        STR      R1,[R2, #+0]
//  177 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  178 
//  179 /**
//  180   * @brief  Checks whether the specified EXTI line flag is set or not.
//  181   * @param  EXTI_Line: specifies the EXTI line flag to check.
//  182   *   This parameter can be:
//  183   *     @arg EXTI_Linex: External interrupt line x where x(0..19)
//  184   * @retval The new state of EXTI_Line (SET or RESET).
//  185   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function EXTI_GetFlagStatus
          CFI NoCalls
        THUMB
//  186 FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line)
//  187 {
EXTI_GetFlagStatus:
        MOVS     R1,R0
//  188     FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
//  189     /* Check the parameters */
//  190     assert_param(IS_GET_EXTI_LINE(EXTI_Line));
//  191 
//  192     if ((EXTI->PR & EXTI_Line) != (uint32_t)RESET)
        LDR.N    R2,??DataTable6_4  ;; 0x40010414
        LDR      R2,[R2, #+0]
        TST      R2,R1
        BEQ.N    ??EXTI_GetFlagStatus_0
//  193     {
//  194         bitstatus = SET;
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??EXTI_GetFlagStatus_1
//  195     }
//  196     else
//  197     {
//  198         bitstatus = RESET;
??EXTI_GetFlagStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
//  199     }
//  200     return bitstatus;
??EXTI_GetFlagStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  201 }
//  202 
//  203 /**
//  204   * @brief  Clears the EXTI's line pending flags.
//  205   * @param  EXTI_Line: specifies the EXTI lines flags to clear.
//  206   *   This parameter can be any combination of EXTI_Linex where x can be (0..19).
//  207   * @retval None
//  208   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function EXTI_ClearFlag
          CFI NoCalls
        THUMB
//  209 void EXTI_ClearFlag(uint32_t EXTI_Line)
//  210 {
//  211     /* Check the parameters */
//  212     assert_param(IS_EXTI_LINE(EXTI_Line));
//  213 
//  214     EXTI->PR = EXTI_Line;
EXTI_ClearFlag:
        LDR.N    R1,??DataTable6_4  ;; 0x40010414
        STR      R0,[R1, #+0]
//  215 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  216 
//  217 /**
//  218   * @brief  Checks whether the specified EXTI line is asserted or not.
//  219   * @param  EXTI_Line: specifies the EXTI line to check.
//  220   *   This parameter can be:
//  221   *     @arg EXTI_Linex: External interrupt line x where x(0..19)
//  222   * @retval The new state of EXTI_Line (SET or RESET).
//  223   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function EXTI_GetITStatus
          CFI NoCalls
        THUMB
//  224 ITStatus EXTI_GetITStatus(uint32_t EXTI_Line)
//  225 {
EXTI_GetITStatus:
        MOVS     R1,R0
//  226     ITStatus bitstatus = RESET;
        MOVS     R0,#+0
//  227     uint32_t enablestatus = 0;
        MOVS     R2,#+0
//  228     /* Check the parameters */
//  229     assert_param(IS_GET_EXTI_LINE(EXTI_Line));
//  230 
//  231     enablestatus =  EXTI->IMR & EXTI_Line;
        LDR.N    R3,??DataTable6  ;; 0x40010400
        LDR      R3,[R3, #+0]
        ANDS     R3,R1,R3
        MOVS     R2,R3
//  232     if (((EXTI->PR & EXTI_Line) != (uint32_t)RESET) && (enablestatus != (uint32_t)RESET))
        LDR.N    R3,??DataTable6_4  ;; 0x40010414
        LDR      R3,[R3, #+0]
        TST      R3,R1
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R2,#+0
        BEQ.N    ??EXTI_GetITStatus_0
//  233     {
//  234         bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??EXTI_GetITStatus_1
//  235     }
//  236     else
//  237     {
//  238         bitstatus = RESET;
??EXTI_GetITStatus_0:
        MOVS     R3,#+0
        MOVS     R0,R3
//  239     }
//  240     return bitstatus;
??EXTI_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  241 }
//  242 
//  243 /**
//  244   * @brief  Clears the EXTI's line pending bits.
//  245   * @param  EXTI_Line: specifies the EXTI lines to clear.
//  246   *   This parameter can be any combination of EXTI_Linex where x can be (0..19).
//  247   * @retval None
//  248   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function EXTI_ClearITPendingBit
          CFI NoCalls
        THUMB
//  249 void EXTI_ClearITPendingBit(uint32_t EXTI_Line)
//  250 {
//  251     /* Check the parameters */
//  252     assert_param(IS_EXTI_LINE(EXTI_Line));
//  253 
//  254     EXTI->PR = EXTI_Line;
EXTI_ClearITPendingBit:
        LDR.N    R1,??DataTable6_4  ;; 0x40010414
        STR      R0,[R1, #+0]
//  255 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40010404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40010408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x4001040c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x40010414

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0xfffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x40010410

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  256 
//  257 /**
//  258   * @}
//  259   */
//  260 
//  261 /**
//  262   * @}
//  263   */
//  264 
//  265 /**
//  266   * @}
//  267   */
//  268 
//  269 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 304 bytes in section .text
// 
// 304 bytes of CODE memory
//
//Errors: none
//Warnings: none
