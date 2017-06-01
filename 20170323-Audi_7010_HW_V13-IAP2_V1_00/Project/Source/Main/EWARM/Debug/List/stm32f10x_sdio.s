///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:51 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_sdio.c                                         /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_sdio.c -D USE_STDPERIPH_DRIVER -D              /
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
//                    \Debug\List\stm32f10x_sdio.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_sdio

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC SDIO_CEATAITCmd
        PUBLIC SDIO_ClearFlag
        PUBLIC SDIO_ClearITPendingBit
        PUBLIC SDIO_ClockCmd
        PUBLIC SDIO_CmdStructInit
        PUBLIC SDIO_CommandCompletionCmd
        PUBLIC SDIO_DMACmd
        PUBLIC SDIO_DataConfig
        PUBLIC SDIO_DataStructInit
        PUBLIC SDIO_DeInit
        PUBLIC SDIO_GetCommandResponse
        PUBLIC SDIO_GetDataCounter
        PUBLIC SDIO_GetFIFOCount
        PUBLIC SDIO_GetFlagStatus
        PUBLIC SDIO_GetITStatus
        PUBLIC SDIO_GetPowerState
        PUBLIC SDIO_GetResponse
        PUBLIC SDIO_ITConfig
        PUBLIC SDIO_Init
        PUBLIC SDIO_ReadData
        PUBLIC SDIO_SendCEATACmd
        PUBLIC SDIO_SendCommand
        PUBLIC SDIO_SendSDIOSuspendCmd
        PUBLIC SDIO_SetPowerState
        PUBLIC SDIO_SetSDIOOperation
        PUBLIC SDIO_SetSDIOReadWaitMode
        PUBLIC SDIO_StartSDIOReadWait
        PUBLIC SDIO_StopSDIOReadWait
        PUBLIC SDIO_StructInit
        PUBLIC SDIO_WriteData
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_sdio.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_sdio.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the SDIO firmware functions.
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
//   23 #include "stm32f10x_sdio.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup SDIO 
//   31   * @brief SDIO driver modules
//   32   * @{
//   33   */ 
//   34 
//   35 /** @defgroup SDIO_Private_TypesDefinitions
//   36   * @{
//   37   */ 
//   38 
//   39 /* ------------ SDIO registers bit address in the alias region ----------- */
//   40 #define SDIO_OFFSET                (SDIO_BASE - PERIPH_BASE)
//   41 
//   42 /* --- CLKCR Register ---*/
//   43 
//   44 /* Alias word address of CLKEN bit */
//   45 #define CLKCR_OFFSET              (SDIO_OFFSET + 0x04)
//   46 #define CLKEN_BitNumber           0x08
//   47 #define CLKCR_CLKEN_BB            (PERIPH_BB_BASE + (CLKCR_OFFSET * 32) + (CLKEN_BitNumber * 4))
//   48 
//   49 /* --- CMD Register ---*/
//   50 
//   51 /* Alias word address of SDIOSUSPEND bit */
//   52 #define CMD_OFFSET                (SDIO_OFFSET + 0x0C)
//   53 #define SDIOSUSPEND_BitNumber     0x0B
//   54 #define CMD_SDIOSUSPEND_BB        (PERIPH_BB_BASE + (CMD_OFFSET * 32) + (SDIOSUSPEND_BitNumber * 4))
//   55 
//   56 /* Alias word address of ENCMDCOMPL bit */
//   57 #define ENCMDCOMPL_BitNumber      0x0C
//   58 #define CMD_ENCMDCOMPL_BB         (PERIPH_BB_BASE + (CMD_OFFSET * 32) + (ENCMDCOMPL_BitNumber * 4))
//   59 
//   60 /* Alias word address of NIEN bit */
//   61 #define NIEN_BitNumber            0x0D
//   62 #define CMD_NIEN_BB               (PERIPH_BB_BASE + (CMD_OFFSET * 32) + (NIEN_BitNumber * 4))
//   63 
//   64 /* Alias word address of ATACMD bit */
//   65 #define ATACMD_BitNumber          0x0E
//   66 #define CMD_ATACMD_BB             (PERIPH_BB_BASE + (CMD_OFFSET * 32) + (ATACMD_BitNumber * 4))
//   67 
//   68 /* --- DCTRL Register ---*/
//   69 
//   70 /* Alias word address of DMAEN bit */
//   71 #define DCTRL_OFFSET              (SDIO_OFFSET + 0x2C)
//   72 #define DMAEN_BitNumber           0x03
//   73 #define DCTRL_DMAEN_BB            (PERIPH_BB_BASE + (DCTRL_OFFSET * 32) + (DMAEN_BitNumber * 4))
//   74 
//   75 /* Alias word address of RWSTART bit */
//   76 #define RWSTART_BitNumber         0x08
//   77 #define DCTRL_RWSTART_BB          (PERIPH_BB_BASE + (DCTRL_OFFSET * 32) + (RWSTART_BitNumber * 4))
//   78 
//   79 /* Alias word address of RWSTOP bit */
//   80 #define RWSTOP_BitNumber          0x09
//   81 #define DCTRL_RWSTOP_BB           (PERIPH_BB_BASE + (DCTRL_OFFSET * 32) + (RWSTOP_BitNumber * 4))
//   82 
//   83 /* Alias word address of RWMOD bit */
//   84 #define RWMOD_BitNumber           0x0A
//   85 #define DCTRL_RWMOD_BB            (PERIPH_BB_BASE + (DCTRL_OFFSET * 32) + (RWMOD_BitNumber * 4))
//   86 
//   87 /* Alias word address of SDIOEN bit */
//   88 #define SDIOEN_BitNumber          0x0B
//   89 #define DCTRL_SDIOEN_BB           (PERIPH_BB_BASE + (DCTRL_OFFSET * 32) + (SDIOEN_BitNumber * 4))
//   90 
//   91 /* ---------------------- SDIO registers bit mask ------------------------ */
//   92 
//   93 /* --- CLKCR Register ---*/
//   94 
//   95 /* CLKCR register clear mask */
//   96 #define CLKCR_CLEAR_MASK         ((uint32_t)0xFFFF8100) 
//   97 
//   98 /* --- PWRCTRL Register ---*/
//   99 
//  100 /* SDIO PWRCTRL Mask */
//  101 #define PWR_PWRCTRL_MASK         ((uint32_t)0xFFFFFFFC)
//  102 
//  103 /* --- DCTRL Register ---*/
//  104 
//  105 /* SDIO DCTRL Clear Mask */
//  106 #define DCTRL_CLEAR_MASK         ((uint32_t)0xFFFFFF08)
//  107 
//  108 /* --- CMD Register ---*/
//  109 
//  110 /* CMD Register clear mask */
//  111 #define CMD_CLEAR_MASK           ((uint32_t)0xFFFFF800)
//  112 
//  113 /* SDIO RESP Registers Address */
//  114 #define SDIO_RESP_ADDR           ((uint32_t)(SDIO_BASE + 0x14))
//  115 
//  116 /**
//  117   * @}
//  118   */
//  119 
//  120 /** @defgroup SDIO_Private_Defines
//  121   * @{
//  122   */
//  123 
//  124 /**
//  125   * @}
//  126   */
//  127 
//  128 /** @defgroup SDIO_Private_Macros
//  129   * @{
//  130   */
//  131 
//  132 /**
//  133   * @}
//  134   */
//  135 
//  136 /** @defgroup SDIO_Private_Variables
//  137   * @{
//  138   */
//  139 
//  140 /**
//  141   * @}
//  142   */
//  143 
//  144 /** @defgroup SDIO_Private_FunctionPrototypes
//  145   * @{
//  146   */
//  147 
//  148 /**
//  149   * @}
//  150   */
//  151 
//  152 /** @defgroup SDIO_Private_Functions
//  153   * @{
//  154   */
//  155 
//  156 /**
//  157   * @brief  Deinitializes the SDIO peripheral registers to their default reset values.
//  158   * @param  None
//  159   * @retval None
//  160   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SDIO_DeInit
          CFI NoCalls
        THUMB
//  161 void SDIO_DeInit(void)
//  162 {
//  163   SDIO->POWER = 0x00000000;
SDIO_DeInit:
        LDR.N    R0,??DataTable26  ;; 0x40018000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  164   SDIO->CLKCR = 0x00000000;
        LDR.N    R0,??DataTable26_1  ;; 0x40018004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  165   SDIO->ARG = 0x00000000;
        LDR.N    R0,??DataTable26_2  ;; 0x40018008
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  166   SDIO->CMD = 0x00000000;
        LDR.N    R0,??DataTable26_3  ;; 0x4001800c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  167   SDIO->DTIMER = 0x00000000;
        LDR.N    R0,??DataTable26_4  ;; 0x40018024
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  168   SDIO->DLEN = 0x00000000;
        LDR.N    R0,??DataTable26_5  ;; 0x40018028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  169   SDIO->DCTRL = 0x00000000;
        LDR.N    R0,??DataTable26_6  ;; 0x4001802c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  170   SDIO->ICR = 0x00C007FF;
        LDR.N    R0,??DataTable26_7  ;; 0x40018038
        LDR.N    R1,??DataTable26_8  ;; 0xc007ff
        STR      R1,[R0, #+0]
//  171   SDIO->MASK = 0x00000000;
        LDR.N    R0,??DataTable26_9  ;; 0x4001803c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  172 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  173 
//  174 /**
//  175   * @brief  Initializes the SDIO peripheral according to the specified 
//  176   *         parameters in the SDIO_InitStruct.
//  177   * @param  SDIO_InitStruct : pointer to a SDIO_InitTypeDef structure 
//  178   *         that contains the configuration information for the SDIO peripheral.
//  179   * @retval None
//  180   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SDIO_Init
          CFI NoCalls
        THUMB
//  181 void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct)
//  182 {
//  183   uint32_t tmpreg = 0;
SDIO_Init:
        MOVS     R1,#+0
//  184     
//  185   /* Check the parameters */
//  186   assert_param(IS_SDIO_CLOCK_EDGE(SDIO_InitStruct->SDIO_ClockEdge));
//  187   assert_param(IS_SDIO_CLOCK_BYPASS(SDIO_InitStruct->SDIO_ClockBypass));
//  188   assert_param(IS_SDIO_CLOCK_POWER_SAVE(SDIO_InitStruct->SDIO_ClockPowerSave));
//  189   assert_param(IS_SDIO_BUS_WIDE(SDIO_InitStruct->SDIO_BusWide));
//  190   assert_param(IS_SDIO_HARDWARE_FLOW_CONTROL(SDIO_InitStruct->SDIO_HardwareFlowControl)); 
//  191    
//  192 /*---------------------------- SDIO CLKCR Configuration ------------------------*/  
//  193   /* Get the SDIO CLKCR value */
//  194   tmpreg = SDIO->CLKCR;
        LDR.N    R2,??DataTable26_1  ;; 0x40018004
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  195   
//  196   /* Clear CLKDIV, PWRSAV, BYPASS, WIDBUS, NEGEDGE, HWFC_EN bits */
//  197   tmpreg &= CLKCR_CLEAR_MASK;
        LDR.N    R2,??DataTable26_10  ;; 0xffff8100
        ANDS     R1,R2,R1
//  198   
//  199   /* Set CLKDIV bits according to SDIO_ClockDiv value */
//  200   /* Set PWRSAV bit according to SDIO_ClockPowerSave value */
//  201   /* Set BYPASS bit according to SDIO_ClockBypass value */
//  202   /* Set WIDBUS bits according to SDIO_BusWide value */
//  203   /* Set NEGEDGE bits according to SDIO_ClockEdge value */
//  204   /* Set HWFC_EN bits according to SDIO_HardwareFlowControl value */
//  205   tmpreg |= (SDIO_InitStruct->SDIO_ClockDiv  | SDIO_InitStruct->SDIO_ClockPowerSave |
//  206              SDIO_InitStruct->SDIO_ClockBypass | SDIO_InitStruct->SDIO_BusWide |
//  207              SDIO_InitStruct->SDIO_ClockEdge | SDIO_InitStruct->SDIO_HardwareFlowControl); 
        LDRB     R2,[R0, #+20]
        LDR      R3,[R0, #+8]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+4]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+12]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+0]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+16]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
//  208   
//  209   /* Write to SDIO CLKCR */
//  210   SDIO->CLKCR = tmpreg;
        LDR.N    R2,??DataTable26_1  ;; 0x40018004
        STR      R1,[R2, #+0]
//  211 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  212 
//  213 /**
//  214   * @brief  Fills each SDIO_InitStruct member with its default value.
//  215   * @param  SDIO_InitStruct: pointer to an SDIO_InitTypeDef structure which 
//  216   *   will be initialized.
//  217   * @retval None
//  218   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function SDIO_StructInit
          CFI NoCalls
        THUMB
//  219 void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct)
//  220 {
//  221   /* SDIO_InitStruct members default value */
//  222   SDIO_InitStruct->SDIO_ClockDiv = 0x00;
SDIO_StructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
//  223   SDIO_InitStruct->SDIO_ClockEdge = SDIO_ClockEdge_Rising;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  224   SDIO_InitStruct->SDIO_ClockBypass = SDIO_ClockBypass_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  225   SDIO_InitStruct->SDIO_ClockPowerSave = SDIO_ClockPowerSave_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  226   SDIO_InitStruct->SDIO_BusWide = SDIO_BusWide_1b;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  227   SDIO_InitStruct->SDIO_HardwareFlowControl = SDIO_HardwareFlowControl_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  228 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  229 
//  230 /**
//  231   * @brief  Enables or disables the SDIO Clock.
//  232   * @param  NewState: new state of the SDIO Clock. This parameter can be: ENABLE or DISABLE.
//  233   * @retval None
//  234   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function SDIO_ClockCmd
          CFI NoCalls
        THUMB
//  235 void SDIO_ClockCmd(FunctionalState NewState)
//  236 {
//  237   /* Check the parameters */
//  238   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  239   
//  240   *(__IO uint32_t *) CLKCR_CLKEN_BB = (uint32_t)NewState;
SDIO_ClockCmd:
        LDR.N    R1,??DataTable26_11  ;; 0x423000a0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  241 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  242 
//  243 /**
//  244   * @brief  Sets the power status of the controller.
//  245   * @param  SDIO_PowerState: new state of the Power state. 
//  246   *   This parameter can be one of the following values:
//  247   *     @arg SDIO_PowerState_OFF
//  248   *     @arg SDIO_PowerState_ON
//  249   * @retval None
//  250   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function SDIO_SetPowerState
          CFI NoCalls
        THUMB
//  251 void SDIO_SetPowerState(uint32_t SDIO_PowerState)
//  252 {
//  253   /* Check the parameters */
//  254   assert_param(IS_SDIO_POWER_STATE(SDIO_PowerState));
//  255   
//  256   SDIO->POWER &= PWR_PWRCTRL_MASK;
SDIO_SetPowerState:
        LDR.N    R1,??DataTable26  ;; 0x40018000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        LDR.N    R2,??DataTable26  ;; 0x40018000
        STR      R1,[R2, #+0]
//  257   SDIO->POWER |= SDIO_PowerState;
        LDR.N    R1,??DataTable26  ;; 0x40018000
        LDR      R1,[R1, #+0]
        ORRS     R1,R0,R1
        LDR.N    R2,??DataTable26  ;; 0x40018000
        STR      R1,[R2, #+0]
//  258 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  259 
//  260 /**
//  261   * @brief  Gets the power status of the controller.
//  262   * @param  None
//  263   * @retval Power status of the controller. The returned value can
//  264   *   be one of the following:
//  265   * - 0x00: Power OFF
//  266   * - 0x02: Power UP
//  267   * - 0x03: Power ON 
//  268   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SDIO_GetPowerState
          CFI NoCalls
        THUMB
//  269 uint32_t SDIO_GetPowerState(void)
//  270 {
//  271   return (SDIO->POWER & (~PWR_PWRCTRL_MASK));
SDIO_GetPowerState:
        LDR.N    R0,??DataTable26  ;; 0x40018000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  272 }
//  273 
//  274 /**
//  275   * @brief  Enables or disables the SDIO interrupts.
//  276   * @param  SDIO_IT: specifies the SDIO interrupt sources to be enabled or disabled.
//  277   *   This parameter can be one or a combination of the following values:
//  278   *     @arg SDIO_IT_CCRCFAIL: Command response received (CRC check failed) interrupt
//  279   *     @arg SDIO_IT_DCRCFAIL: Data block sent/received (CRC check failed) interrupt
//  280   *     @arg SDIO_IT_CTIMEOUT: Command response timeout interrupt
//  281   *     @arg SDIO_IT_DTIMEOUT: Data timeout interrupt
//  282   *     @arg SDIO_IT_TXUNDERR: Transmit FIFO underrun error interrupt
//  283   *     @arg SDIO_IT_RXOVERR:  Received FIFO overrun error interrupt
//  284   *     @arg SDIO_IT_CMDREND:  Command response received (CRC check passed) interrupt
//  285   *     @arg SDIO_IT_CMDSENT:  Command sent (no response required) interrupt
//  286   *     @arg SDIO_IT_DATAEND:  Data end (data counter, SDIDCOUNT, is zero) interrupt
//  287   *     @arg SDIO_IT_STBITERR: Start bit not detected on all data signals in wide 
//  288   *                            bus mode interrupt
//  289   *     @arg SDIO_IT_DBCKEND:  Data block sent/received (CRC check passed) interrupt
//  290   *     @arg SDIO_IT_CMDACT:   Command transfer in progress interrupt
//  291   *     @arg SDIO_IT_TXACT:    Data transmit in progress interrupt
//  292   *     @arg SDIO_IT_RXACT:    Data receive in progress interrupt
//  293   *     @arg SDIO_IT_TXFIFOHE: Transmit FIFO Half Empty interrupt
//  294   *     @arg SDIO_IT_RXFIFOHF: Receive FIFO Half Full interrupt
//  295   *     @arg SDIO_IT_TXFIFOF:  Transmit FIFO full interrupt
//  296   *     @arg SDIO_IT_RXFIFOF:  Receive FIFO full interrupt
//  297   *     @arg SDIO_IT_TXFIFOE:  Transmit FIFO empty interrupt
//  298   *     @arg SDIO_IT_RXFIFOE:  Receive FIFO empty interrupt
//  299   *     @arg SDIO_IT_TXDAVL:   Data available in transmit FIFO interrupt
//  300   *     @arg SDIO_IT_RXDAVL:   Data available in receive FIFO interrupt
//  301   *     @arg SDIO_IT_SDIOIT:   SD I/O interrupt received interrupt
//  302   *     @arg SDIO_IT_CEATAEND: CE-ATA command completion signal received for CMD61 interrupt
//  303   * @param  NewState: new state of the specified SDIO interrupts.
//  304   *   This parameter can be: ENABLE or DISABLE.
//  305   * @retval None 
//  306   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function SDIO_ITConfig
          CFI NoCalls
        THUMB
//  307 void SDIO_ITConfig(uint32_t SDIO_IT, FunctionalState NewState)
//  308 {
//  309   /* Check the parameters */
//  310   assert_param(IS_SDIO_IT(SDIO_IT));
//  311   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  312   
//  313   if (NewState != DISABLE)
SDIO_ITConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??SDIO_ITConfig_0
//  314   {
//  315     /* Enable the SDIO interrupts */
//  316     SDIO->MASK |= SDIO_IT;
        LDR.N    R2,??DataTable26_9  ;; 0x4001803c
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable26_9  ;; 0x4001803c
        STR      R2,[R3, #+0]
        B.N      ??SDIO_ITConfig_1
//  317   }
//  318   else
//  319   {
//  320     /* Disable the SDIO interrupts */
//  321     SDIO->MASK &= ~SDIO_IT;
??SDIO_ITConfig_0:
        LDR.N    R2,??DataTable26_9  ;; 0x4001803c
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable26_9  ;; 0x4001803c
        STR      R2,[R3, #+0]
//  322   } 
//  323 }
??SDIO_ITConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  324 
//  325 /**
//  326   * @brief  Enables or disables the SDIO DMA request.
//  327   * @param  NewState: new state of the selected SDIO DMA request.
//  328   *   This parameter can be: ENABLE or DISABLE.
//  329   * @retval None
//  330   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function SDIO_DMACmd
          CFI NoCalls
        THUMB
//  331 void SDIO_DMACmd(FunctionalState NewState)
//  332 {
//  333   /* Check the parameters */
//  334   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  335   
//  336   *(__IO uint32_t *) DCTRL_DMAEN_BB = (uint32_t)NewState;
SDIO_DMACmd:
        LDR.N    R1,??DataTable26_12  ;; 0x4230058c
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  337 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  338 
//  339 /**
//  340   * @brief  Initializes the SDIO Command according to the specified 
//  341   *         parameters in the SDIO_CmdInitStruct and send the command.
//  342   * @param  SDIO_CmdInitStruct : pointer to a SDIO_CmdInitTypeDef 
//  343   *         structure that contains the configuration information for the SDIO command.
//  344   * @retval None
//  345   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function SDIO_SendCommand
          CFI NoCalls
        THUMB
//  346 void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct)
//  347 {
//  348   uint32_t tmpreg = 0;
SDIO_SendCommand:
        MOVS     R1,#+0
//  349   
//  350   /* Check the parameters */
//  351   assert_param(IS_SDIO_CMD_INDEX(SDIO_CmdInitStruct->SDIO_CmdIndex));
//  352   assert_param(IS_SDIO_RESPONSE(SDIO_CmdInitStruct->SDIO_Response));
//  353   assert_param(IS_SDIO_WAIT(SDIO_CmdInitStruct->SDIO_Wait));
//  354   assert_param(IS_SDIO_CPSM(SDIO_CmdInitStruct->SDIO_CPSM));
//  355   
//  356 /*---------------------------- SDIO ARG Configuration ------------------------*/
//  357   /* Set the SDIO Argument value */
//  358   SDIO->ARG = SDIO_CmdInitStruct->SDIO_Argument;
        LDR.N    R2,??DataTable26_2  ;; 0x40018008
        LDR      R3,[R0, #+0]
        STR      R3,[R2, #+0]
//  359   
//  360 /*---------------------------- SDIO CMD Configuration ------------------------*/  
//  361   /* Get the SDIO CMD value */
//  362   tmpreg = SDIO->CMD;
        LDR.N    R2,??DataTable26_3  ;; 0x4001800c
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  363   /* Clear CMDINDEX, WAITRESP, WAITINT, WAITPEND, CPSMEN bits */
//  364   tmpreg &= CMD_CLEAR_MASK;
        LSRS     R1,R1,#+11
        LSLS     R1,R1,#+11
//  365   /* Set CMDINDEX bits according to SDIO_CmdIndex value */
//  366   /* Set WAITRESP bits according to SDIO_Response value */
//  367   /* Set WAITINT and WAITPEND bits according to SDIO_Wait value */
//  368   /* Set CPSMEN bits according to SDIO_CPSM value */
//  369   tmpreg |= (uint32_t)SDIO_CmdInitStruct->SDIO_CmdIndex | SDIO_CmdInitStruct->SDIO_Response
//  370            | SDIO_CmdInitStruct->SDIO_Wait | SDIO_CmdInitStruct->SDIO_CPSM;
        LDR      R2,[R0, #+4]
        LDR      R3,[R0, #+8]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+12]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+16]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
//  371   
//  372   /* Write to SDIO CMD */
//  373   SDIO->CMD = tmpreg;
        LDR.N    R2,??DataTable26_3  ;; 0x4001800c
        STR      R1,[R2, #+0]
//  374 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  375 
//  376 /**
//  377   * @brief  Fills each SDIO_CmdInitStruct member with its default value.
//  378   * @param  SDIO_CmdInitStruct: pointer to an SDIO_CmdInitTypeDef 
//  379   *         structure which will be initialized.
//  380   * @retval None
//  381   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function SDIO_CmdStructInit
          CFI NoCalls
        THUMB
//  382 void SDIO_CmdStructInit(SDIO_CmdInitTypeDef* SDIO_CmdInitStruct)
//  383 {
//  384   /* SDIO_CmdInitStruct members default value */
//  385   SDIO_CmdInitStruct->SDIO_Argument = 0x00;
SDIO_CmdStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  386   SDIO_CmdInitStruct->SDIO_CmdIndex = 0x00;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  387   SDIO_CmdInitStruct->SDIO_Response = SDIO_Response_No;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  388   SDIO_CmdInitStruct->SDIO_Wait = SDIO_Wait_No;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  389   SDIO_CmdInitStruct->SDIO_CPSM = SDIO_CPSM_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  390 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  391 
//  392 /**
//  393   * @brief  Returns command index of last command for which response received.
//  394   * @param  None
//  395   * @retval Returns the command index of the last command response received.
//  396   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function SDIO_GetCommandResponse
          CFI NoCalls
        THUMB
//  397 uint8_t SDIO_GetCommandResponse(void)
//  398 {
//  399   return (uint8_t)(SDIO->RESPCMD);
SDIO_GetCommandResponse:
        LDR.N    R0,??DataTable26_13  ;; 0x40018010
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  400 }
//  401 
//  402 /**
//  403   * @brief  Returns response received from the card for the last command.
//  404   * @param  SDIO_RESP: Specifies the SDIO response register. 
//  405   *   This parameter can be one of the following values:
//  406   *     @arg SDIO_RESP1: Response Register 1
//  407   *     @arg SDIO_RESP2: Response Register 2
//  408   *     @arg SDIO_RESP3: Response Register 3
//  409   *     @arg SDIO_RESP4: Response Register 4
//  410   * @retval The Corresponding response register value.
//  411   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function SDIO_GetResponse
          CFI NoCalls
        THUMB
//  412 uint32_t SDIO_GetResponse(uint32_t SDIO_RESP)
//  413 {
SDIO_GetResponse:
        SUB      SP,SP,#+4
          CFI CFA R13+4
        MOVS     R1,R0
//  414   __IO uint32_t tmp = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  415 
//  416   /* Check the parameters */
//  417   assert_param(IS_SDIO_RESP(SDIO_RESP));
//  418 
//  419   tmp = SDIO_RESP_ADDR + SDIO_RESP;
        LDR.N    R0,??DataTable26_14  ;; 0x40018014
        ADDS     R0,R0,R1
        STR      R0,[SP, #+0]
//  420   
//  421   return (*(__IO uint32_t *) tmp); 
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  422 }
//  423 
//  424 /**
//  425   * @brief  Initializes the SDIO data path according to the specified 
//  426   *   parameters in the SDIO_DataInitStruct.
//  427   * @param  SDIO_DataInitStruct : pointer to a SDIO_DataInitTypeDef structure that
//  428   *   contains the configuration information for the SDIO command.
//  429   * @retval None
//  430   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function SDIO_DataConfig
          CFI NoCalls
        THUMB
//  431 void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct)
//  432 {
//  433   uint32_t tmpreg = 0;
SDIO_DataConfig:
        MOVS     R1,#+0
//  434   
//  435   /* Check the parameters */
//  436   assert_param(IS_SDIO_DATA_LENGTH(SDIO_DataInitStruct->SDIO_DataLength));
//  437   assert_param(IS_SDIO_BLOCK_SIZE(SDIO_DataInitStruct->SDIO_DataBlockSize));
//  438   assert_param(IS_SDIO_TRANSFER_DIR(SDIO_DataInitStruct->SDIO_TransferDir));
//  439   assert_param(IS_SDIO_TRANSFER_MODE(SDIO_DataInitStruct->SDIO_TransferMode));
//  440   assert_param(IS_SDIO_DPSM(SDIO_DataInitStruct->SDIO_DPSM));
//  441 
//  442 /*---------------------------- SDIO DTIMER Configuration ---------------------*/
//  443   /* Set the SDIO Data TimeOut value */
//  444   SDIO->DTIMER = SDIO_DataInitStruct->SDIO_DataTimeOut;
        LDR.N    R2,??DataTable26_4  ;; 0x40018024
        LDR      R3,[R0, #+0]
        STR      R3,[R2, #+0]
//  445 
//  446 /*---------------------------- SDIO DLEN Configuration -----------------------*/
//  447   /* Set the SDIO DataLength value */
//  448   SDIO->DLEN = SDIO_DataInitStruct->SDIO_DataLength;
        LDR      R2,[R0, #+4]
        LDR.N    R3,??DataTable26_5  ;; 0x40018028
        STR      R2,[R3, #+0]
//  449 
//  450 /*---------------------------- SDIO DCTRL Configuration ----------------------*/  
//  451   /* Get the SDIO DCTRL value */
//  452   tmpreg = SDIO->DCTRL;
        LDR.N    R2,??DataTable26_6  ;; 0x4001802c
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  453   /* Clear DEN, DTMODE, DTDIR and DBCKSIZE bits */
//  454   tmpreg &= DCTRL_CLEAR_MASK;
        BICS     R1,R1,#0xF7
//  455   /* Set DEN bit according to SDIO_DPSM value */
//  456   /* Set DTMODE bit according to SDIO_TransferMode value */
//  457   /* Set DTDIR bit according to SDIO_TransferDir value */
//  458   /* Set DBCKSIZE bits according to SDIO_DataBlockSize value */
//  459   tmpreg |= (uint32_t)SDIO_DataInitStruct->SDIO_DataBlockSize | SDIO_DataInitStruct->SDIO_TransferDir
//  460            | SDIO_DataInitStruct->SDIO_TransferMode | SDIO_DataInitStruct->SDIO_DPSM;
        LDR      R2,[R0, #+8]
        LDR      R3,[R0, #+12]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+16]
        ORRS     R2,R3,R2
        LDR      R3,[R0, #+20]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
//  461 
//  462   /* Write to SDIO DCTRL */
//  463   SDIO->DCTRL = tmpreg;
        LDR.N    R2,??DataTable26_6  ;; 0x4001802c
        STR      R1,[R2, #+0]
//  464 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  465 
//  466 /**
//  467   * @brief  Fills each SDIO_DataInitStruct member with its default value.
//  468   * @param  SDIO_DataInitStruct: pointer to an SDIO_DataInitTypeDef structure which
//  469   *         will be initialized.
//  470   * @retval None
//  471   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function SDIO_DataStructInit
          CFI NoCalls
        THUMB
//  472 void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct)
//  473 {
//  474   /* SDIO_DataInitStruct members default value */
//  475   SDIO_DataInitStruct->SDIO_DataTimeOut = 0xFFFFFFFF;
SDIO_DataStructInit:
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
//  476   SDIO_DataInitStruct->SDIO_DataLength = 0x00;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  477   SDIO_DataInitStruct->SDIO_DataBlockSize = SDIO_DataBlockSize_1b;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  478   SDIO_DataInitStruct->SDIO_TransferDir = SDIO_TransferDir_ToCard;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  479   SDIO_DataInitStruct->SDIO_TransferMode = SDIO_TransferMode_Block;  
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  480   SDIO_DataInitStruct->SDIO_DPSM = SDIO_DPSM_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
//  481 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  482 
//  483 /**
//  484   * @brief  Returns number of remaining data bytes to be transferred.
//  485   * @param  None
//  486   * @retval Number of remaining data bytes to be transferred
//  487   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function SDIO_GetDataCounter
          CFI NoCalls
        THUMB
//  488 uint32_t SDIO_GetDataCounter(void)
//  489 { 
//  490   return SDIO->DCOUNT;
SDIO_GetDataCounter:
        LDR.N    R0,??DataTable26_15  ;; 0x40018030
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  491 }
//  492 
//  493 /**
//  494   * @brief  Read one data word from Rx FIFO.
//  495   * @param  None
//  496   * @retval Data received
//  497   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function SDIO_ReadData
          CFI NoCalls
        THUMB
//  498 uint32_t SDIO_ReadData(void)
//  499 { 
//  500   return SDIO->FIFO;
SDIO_ReadData:
        LDR.N    R0,??DataTable26_16  ;; 0x40018080
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  501 }
//  502 
//  503 /**
//  504   * @brief  Write one data word to Tx FIFO.
//  505   * @param  Data: 32-bit data word to write.
//  506   * @retval None
//  507   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function SDIO_WriteData
          CFI NoCalls
        THUMB
//  508 void SDIO_WriteData(uint32_t Data)
//  509 { 
//  510   SDIO->FIFO = Data;
SDIO_WriteData:
        LDR.N    R1,??DataTable26_16  ;; 0x40018080
        STR      R0,[R1, #+0]
//  511 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  512 
//  513 /**
//  514   * @brief  Returns the number of words left to be written to or read from FIFO.	
//  515   * @param  None
//  516   * @retval Remaining number of words.
//  517   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function SDIO_GetFIFOCount
          CFI NoCalls
        THUMB
//  518 uint32_t SDIO_GetFIFOCount(void)
//  519 { 
//  520   return SDIO->FIFOCNT;
SDIO_GetFIFOCount:
        LDR.N    R0,??DataTable26_17  ;; 0x40018048
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  521 }
//  522 
//  523 /**
//  524   * @brief  Starts the SD I/O Read Wait operation.	
//  525   * @param  NewState: new state of the Start SDIO Read Wait operation. 
//  526   *   This parameter can be: ENABLE or DISABLE.
//  527   * @retval None
//  528   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function SDIO_StartSDIOReadWait
          CFI NoCalls
        THUMB
//  529 void SDIO_StartSDIOReadWait(FunctionalState NewState)
//  530 { 
//  531   /* Check the parameters */
//  532   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  533   
//  534   *(__IO uint32_t *) DCTRL_RWSTART_BB = (uint32_t) NewState;
SDIO_StartSDIOReadWait:
        LDR.N    R1,??DataTable26_18  ;; 0x423005a0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  535 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  536 
//  537 /**
//  538   * @brief  Stops the SD I/O Read Wait operation.	
//  539   * @param  NewState: new state of the Stop SDIO Read Wait operation. 
//  540   *   This parameter can be: ENABLE or DISABLE.
//  541   * @retval None
//  542   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function SDIO_StopSDIOReadWait
          CFI NoCalls
        THUMB
//  543 void SDIO_StopSDIOReadWait(FunctionalState NewState)
//  544 { 
//  545   /* Check the parameters */
//  546   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  547   
//  548   *(__IO uint32_t *) DCTRL_RWSTOP_BB = (uint32_t) NewState;
SDIO_StopSDIOReadWait:
        LDR.N    R1,??DataTable26_19  ;; 0x423005a4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  549 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
//  550 
//  551 /**
//  552   * @brief  Sets one of the two options of inserting read wait interval.
//  553   * @param  SDIO_ReadWaitMode: SD I/O Read Wait operation mode.
//  554   *   This parameter can be:
//  555   *     @arg SDIO_ReadWaitMode_CLK: Read Wait control by stopping SDIOCLK
//  556   *     @arg SDIO_ReadWaitMode_DATA2: Read Wait control using SDIO_DATA2
//  557   * @retval None
//  558   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function SDIO_SetSDIOReadWaitMode
          CFI NoCalls
        THUMB
//  559 void SDIO_SetSDIOReadWaitMode(uint32_t SDIO_ReadWaitMode)
//  560 {
//  561   /* Check the parameters */
//  562   assert_param(IS_SDIO_READWAIT_MODE(SDIO_ReadWaitMode));
//  563   
//  564   *(__IO uint32_t *) DCTRL_RWMOD_BB = SDIO_ReadWaitMode;
SDIO_SetSDIOReadWaitMode:
        LDR.N    R1,??DataTable26_20  ;; 0x423005a8
        STR      R0,[R1, #+0]
//  565 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  566 
//  567 /**
//  568   * @brief  Enables or disables the SD I/O Mode Operation.
//  569   * @param  NewState: new state of SDIO specific operation. 
//  570   *   This parameter can be: ENABLE or DISABLE.
//  571   * @retval None
//  572   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function SDIO_SetSDIOOperation
          CFI NoCalls
        THUMB
//  573 void SDIO_SetSDIOOperation(FunctionalState NewState)
//  574 { 
//  575   /* Check the parameters */
//  576   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  577   
//  578   *(__IO uint32_t *) DCTRL_SDIOEN_BB = (uint32_t)NewState;
SDIO_SetSDIOOperation:
        LDR.N    R1,??DataTable26_21  ;; 0x423005ac
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  579 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  580 
//  581 /**
//  582   * @brief  Enables or disables the SD I/O Mode suspend command sending.
//  583   * @param  NewState: new state of the SD I/O Mode suspend command.
//  584   *   This parameter can be: ENABLE or DISABLE.
//  585   * @retval None
//  586   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function SDIO_SendSDIOSuspendCmd
          CFI NoCalls
        THUMB
//  587 void SDIO_SendSDIOSuspendCmd(FunctionalState NewState)
//  588 { 
//  589   /* Check the parameters */
//  590   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  591   
//  592   *(__IO uint32_t *) CMD_SDIOSUSPEND_BB = (uint32_t)NewState;
SDIO_SendSDIOSuspendCmd:
        LDR.N    R1,??DataTable26_22  ;; 0x423001ac
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  593 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
//  594 
//  595 /**
//  596   * @brief  Enables or disables the command completion signal.
//  597   * @param  NewState: new state of command completion signal. 
//  598   *   This parameter can be: ENABLE or DISABLE.
//  599   * @retval None
//  600   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function SDIO_CommandCompletionCmd
          CFI NoCalls
        THUMB
//  601 void SDIO_CommandCompletionCmd(FunctionalState NewState)
//  602 { 
//  603   /* Check the parameters */
//  604   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  605   
//  606   *(__IO uint32_t *) CMD_ENCMDCOMPL_BB = (uint32_t)NewState;
SDIO_CommandCompletionCmd:
        LDR.N    R1,??DataTable26_23  ;; 0x423001b0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  607 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  608 
//  609 /**
//  610   * @brief  Enables or disables the CE-ATA interrupt.
//  611   * @param  NewState: new state of CE-ATA interrupt. This parameter can be: ENABLE or DISABLE.
//  612   * @retval None
//  613   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function SDIO_CEATAITCmd
          CFI NoCalls
        THUMB
//  614 void SDIO_CEATAITCmd(FunctionalState NewState)
//  615 { 
//  616   /* Check the parameters */
//  617   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  618   
//  619   *(__IO uint32_t *) CMD_NIEN_BB = (uint32_t)((~((uint32_t)NewState)) & ((uint32_t)0x1));
SDIO_CEATAITCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MVNS     R1,R0
        ANDS     R1,R1,#0x1
        LDR.N    R2,??DataTable26_24  ;; 0x423001b4
        STR      R1,[R2, #+0]
//  620 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  621 
//  622 /**
//  623   * @brief  Sends CE-ATA command (CMD61).
//  624   * @param  NewState: new state of CE-ATA command. This parameter can be: ENABLE or DISABLE.
//  625   * @retval None
//  626   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function SDIO_SendCEATACmd
          CFI NoCalls
        THUMB
//  627 void SDIO_SendCEATACmd(FunctionalState NewState)
//  628 { 
//  629   /* Check the parameters */
//  630   assert_param(IS_FUNCTIONAL_STATE(NewState));
//  631   
//  632   *(__IO uint32_t *) CMD_ATACMD_BB = (uint32_t)NewState;
SDIO_SendCEATACmd:
        LDR.N    R1,??DataTable26_25  ;; 0x423001b8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  633 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
//  634 
//  635 /**
//  636   * @brief  Checks whether the specified SDIO flag is set or not.
//  637   * @param  SDIO_FLAG: specifies the flag to check. 
//  638   *   This parameter can be one of the following values:
//  639   *     @arg SDIO_FLAG_CCRCFAIL: Command response received (CRC check failed)
//  640   *     @arg SDIO_FLAG_DCRCFAIL: Data block sent/received (CRC check failed)
//  641   *     @arg SDIO_FLAG_CTIMEOUT: Command response timeout
//  642   *     @arg SDIO_FLAG_DTIMEOUT: Data timeout
//  643   *     @arg SDIO_FLAG_TXUNDERR: Transmit FIFO underrun error
//  644   *     @arg SDIO_FLAG_RXOVERR:  Received FIFO overrun error
//  645   *     @arg SDIO_FLAG_CMDREND:  Command response received (CRC check passed)
//  646   *     @arg SDIO_FLAG_CMDSENT:  Command sent (no response required)
//  647   *     @arg SDIO_FLAG_DATAEND:  Data end (data counter, SDIDCOUNT, is zero)
//  648   *     @arg SDIO_FLAG_STBITERR: Start bit not detected on all data signals in wide 
//  649   *                              bus mode.
//  650   *     @arg SDIO_FLAG_DBCKEND:  Data block sent/received (CRC check passed)
//  651   *     @arg SDIO_FLAG_CMDACT:   Command transfer in progress
//  652   *     @arg SDIO_FLAG_TXACT:    Data transmit in progress
//  653   *     @arg SDIO_FLAG_RXACT:    Data receive in progress
//  654   *     @arg SDIO_FLAG_TXFIFOHE: Transmit FIFO Half Empty
//  655   *     @arg SDIO_FLAG_RXFIFOHF: Receive FIFO Half Full
//  656   *     @arg SDIO_FLAG_TXFIFOF:  Transmit FIFO full
//  657   *     @arg SDIO_FLAG_RXFIFOF:  Receive FIFO full
//  658   *     @arg SDIO_FLAG_TXFIFOE:  Transmit FIFO empty
//  659   *     @arg SDIO_FLAG_RXFIFOE:  Receive FIFO empty
//  660   *     @arg SDIO_FLAG_TXDAVL:   Data available in transmit FIFO
//  661   *     @arg SDIO_FLAG_RXDAVL:   Data available in receive FIFO
//  662   *     @arg SDIO_FLAG_SDIOIT:   SD I/O interrupt received
//  663   *     @arg SDIO_FLAG_CEATAEND: CE-ATA command completion signal received for CMD61
//  664   * @retval The new state of SDIO_FLAG (SET or RESET).
//  665   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function SDIO_GetFlagStatus
          CFI NoCalls
        THUMB
//  666 FlagStatus SDIO_GetFlagStatus(uint32_t SDIO_FLAG)
//  667 { 
SDIO_GetFlagStatus:
        MOVS     R1,R0
//  668   FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
//  669   
//  670   /* Check the parameters */
//  671   assert_param(IS_SDIO_FLAG(SDIO_FLAG));
//  672   
//  673   if ((SDIO->STA & SDIO_FLAG) != (uint32_t)RESET)
        LDR.N    R2,??DataTable26_26  ;; 0x40018034
        LDR      R2,[R2, #+0]
        TST      R2,R1
        BEQ.N    ??SDIO_GetFlagStatus_0
//  674   {
//  675     bitstatus = SET;
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??SDIO_GetFlagStatus_1
//  676   }
//  677   else
//  678   {
//  679     bitstatus = RESET;
??SDIO_GetFlagStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
//  680   }
//  681   return bitstatus;
??SDIO_GetFlagStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  682 }
//  683 
//  684 /**
//  685   * @brief  Clears the SDIO's pending flags.
//  686   * @param  SDIO_FLAG: specifies the flag to clear.  
//  687   *   This parameter can be one or a combination of the following values:
//  688   *     @arg SDIO_FLAG_CCRCFAIL: Command response received (CRC check failed)
//  689   *     @arg SDIO_FLAG_DCRCFAIL: Data block sent/received (CRC check failed)
//  690   *     @arg SDIO_FLAG_CTIMEOUT: Command response timeout
//  691   *     @arg SDIO_FLAG_DTIMEOUT: Data timeout
//  692   *     @arg SDIO_FLAG_TXUNDERR: Transmit FIFO underrun error
//  693   *     @arg SDIO_FLAG_RXOVERR:  Received FIFO overrun error
//  694   *     @arg SDIO_FLAG_CMDREND:  Command response received (CRC check passed)
//  695   *     @arg SDIO_FLAG_CMDSENT:  Command sent (no response required)
//  696   *     @arg SDIO_FLAG_DATAEND:  Data end (data counter, SDIDCOUNT, is zero)
//  697   *     @arg SDIO_FLAG_STBITERR: Start bit not detected on all data signals in wide 
//  698   *                              bus mode
//  699   *     @arg SDIO_FLAG_DBCKEND:  Data block sent/received (CRC check passed)
//  700   *     @arg SDIO_FLAG_SDIOIT:   SD I/O interrupt received
//  701   *     @arg SDIO_FLAG_CEATAEND: CE-ATA command completion signal received for CMD61
//  702   * @retval None
//  703   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function SDIO_ClearFlag
          CFI NoCalls
        THUMB
//  704 void SDIO_ClearFlag(uint32_t SDIO_FLAG)
//  705 { 
//  706   /* Check the parameters */
//  707   assert_param(IS_SDIO_CLEAR_FLAG(SDIO_FLAG));
//  708    
//  709   SDIO->ICR = SDIO_FLAG;
SDIO_ClearFlag:
        LDR.N    R1,??DataTable26_7  ;; 0x40018038
        STR      R0,[R1, #+0]
//  710 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
//  711 
//  712 /**
//  713   * @brief  Checks whether the specified SDIO interrupt has occurred or not.
//  714   * @param  SDIO_IT: specifies the SDIO interrupt source to check. 
//  715   *   This parameter can be one of the following values:
//  716   *     @arg SDIO_IT_CCRCFAIL: Command response received (CRC check failed) interrupt
//  717   *     @arg SDIO_IT_DCRCFAIL: Data block sent/received (CRC check failed) interrupt
//  718   *     @arg SDIO_IT_CTIMEOUT: Command response timeout interrupt
//  719   *     @arg SDIO_IT_DTIMEOUT: Data timeout interrupt
//  720   *     @arg SDIO_IT_TXUNDERR: Transmit FIFO underrun error interrupt
//  721   *     @arg SDIO_IT_RXOVERR:  Received FIFO overrun error interrupt
//  722   *     @arg SDIO_IT_CMDREND:  Command response received (CRC check passed) interrupt
//  723   *     @arg SDIO_IT_CMDSENT:  Command sent (no response required) interrupt
//  724   *     @arg SDIO_IT_DATAEND:  Data end (data counter, SDIDCOUNT, is zero) interrupt
//  725   *     @arg SDIO_IT_STBITERR: Start bit not detected on all data signals in wide 
//  726   *                            bus mode interrupt
//  727   *     @arg SDIO_IT_DBCKEND:  Data block sent/received (CRC check passed) interrupt
//  728   *     @arg SDIO_IT_CMDACT:   Command transfer in progress interrupt
//  729   *     @arg SDIO_IT_TXACT:    Data transmit in progress interrupt
//  730   *     @arg SDIO_IT_RXACT:    Data receive in progress interrupt
//  731   *     @arg SDIO_IT_TXFIFOHE: Transmit FIFO Half Empty interrupt
//  732   *     @arg SDIO_IT_RXFIFOHF: Receive FIFO Half Full interrupt
//  733   *     @arg SDIO_IT_TXFIFOF:  Transmit FIFO full interrupt
//  734   *     @arg SDIO_IT_RXFIFOF:  Receive FIFO full interrupt
//  735   *     @arg SDIO_IT_TXFIFOE:  Transmit FIFO empty interrupt
//  736   *     @arg SDIO_IT_RXFIFOE:  Receive FIFO empty interrupt
//  737   *     @arg SDIO_IT_TXDAVL:   Data available in transmit FIFO interrupt
//  738   *     @arg SDIO_IT_RXDAVL:   Data available in receive FIFO interrupt
//  739   *     @arg SDIO_IT_SDIOIT:   SD I/O interrupt received interrupt
//  740   *     @arg SDIO_IT_CEATAEND: CE-ATA command completion signal received for CMD61 interrupt
//  741   * @retval The new state of SDIO_IT (SET or RESET).
//  742   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function SDIO_GetITStatus
          CFI NoCalls
        THUMB
//  743 ITStatus SDIO_GetITStatus(uint32_t SDIO_IT)
//  744 { 
SDIO_GetITStatus:
        MOVS     R1,R0
//  745   ITStatus bitstatus = RESET;
        MOVS     R0,#+0
//  746   
//  747   /* Check the parameters */
//  748   assert_param(IS_SDIO_GET_IT(SDIO_IT));
//  749   if ((SDIO->STA & SDIO_IT) != (uint32_t)RESET)  
        LDR.N    R2,??DataTable26_26  ;; 0x40018034
        LDR      R2,[R2, #+0]
        TST      R2,R1
        BEQ.N    ??SDIO_GetITStatus_0
//  750   {
//  751     bitstatus = SET;
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??SDIO_GetITStatus_1
//  752   }
//  753   else
//  754   {
//  755     bitstatus = RESET;
??SDIO_GetITStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
//  756   }
//  757   return bitstatus;
??SDIO_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
//  758 }
//  759 
//  760 /**
//  761   * @brief  Clears the SDIO's interrupt pending bits.
//  762   * @param  SDIO_IT: specifies the interrupt pending bit to clear. 
//  763   *   This parameter can be one or a combination of the following values:
//  764   *     @arg SDIO_IT_CCRCFAIL: Command response received (CRC check failed) interrupt
//  765   *     @arg SDIO_IT_DCRCFAIL: Data block sent/received (CRC check failed) interrupt
//  766   *     @arg SDIO_IT_CTIMEOUT: Command response timeout interrupt
//  767   *     @arg SDIO_IT_DTIMEOUT: Data timeout interrupt
//  768   *     @arg SDIO_IT_TXUNDERR: Transmit FIFO underrun error interrupt
//  769   *     @arg SDIO_IT_RXOVERR:  Received FIFO overrun error interrupt
//  770   *     @arg SDIO_IT_CMDREND:  Command response received (CRC check passed) interrupt
//  771   *     @arg SDIO_IT_CMDSENT:  Command sent (no response required) interrupt
//  772   *     @arg SDIO_IT_DATAEND:  Data end (data counter, SDIDCOUNT, is zero) interrupt
//  773   *     @arg SDIO_IT_STBITERR: Start bit not detected on all data signals in wide 
//  774   *                            bus mode interrupt
//  775   *     @arg SDIO_IT_SDIOIT:   SD I/O interrupt received interrupt
//  776   *     @arg SDIO_IT_CEATAEND: CE-ATA command completion signal received for CMD61
//  777   * @retval None
//  778   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function SDIO_ClearITPendingBit
          CFI NoCalls
        THUMB
//  779 void SDIO_ClearITPendingBit(uint32_t SDIO_IT)
//  780 { 
//  781   /* Check the parameters */
//  782   assert_param(IS_SDIO_CLEAR_IT(SDIO_IT));
//  783    
//  784   SDIO->ICR = SDIO_IT;
SDIO_ClearITPendingBit:
        LDR.N    R1,??DataTable26_7  ;; 0x40018038
        STR      R0,[R1, #+0]
//  785 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     0x40018000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     0x40018004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_2:
        DC32     0x40018008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_3:
        DC32     0x4001800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_4:
        DC32     0x40018024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_5:
        DC32     0x40018028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_6:
        DC32     0x4001802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_7:
        DC32     0x40018038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_8:
        DC32     0xc007ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_9:
        DC32     0x4001803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_10:
        DC32     0xffff8100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_11:
        DC32     0x423000a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_12:
        DC32     0x4230058c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_13:
        DC32     0x40018010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_14:
        DC32     0x40018014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_15:
        DC32     0x40018030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_16:
        DC32     0x40018080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_17:
        DC32     0x40018048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_18:
        DC32     0x423005a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_19:
        DC32     0x423005a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_20:
        DC32     0x423005a8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_21:
        DC32     0x423005ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_22:
        DC32     0x423001ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_23:
        DC32     0x423001b0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_24:
        DC32     0x423001b4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_25:
        DC32     0x423001b8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_26:
        DC32     0x40018034

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  786 
//  787 /**
//  788   * @}
//  789   */
//  790 
//  791 /**
//  792   * @}
//  793   */
//  794 
//  795 /**
//  796   * @}
//  797   */
//  798 
//  799 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 634 bytes in section .text
// 
// 634 bytes of CODE memory
//
//Errors: none
//Warnings: none
