///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:47 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_dac.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_dac.c -D USE_STDPERIPH_DRIVER -D               /
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
//                    \Debug\List\stm32f10x_dac.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_dac

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd

        PUBLIC DAC_Cmd
        PUBLIC DAC_DMACmd
        PUBLIC DAC_DeInit
        PUBLIC DAC_DualSoftwareTriggerCmd
        PUBLIC DAC_GetDataOutputValue
        PUBLIC DAC_Init
        PUBLIC DAC_SetChannel1Data
        PUBLIC DAC_SetChannel2Data
        PUBLIC DAC_SetDualChannelData
        PUBLIC DAC_SoftwareTriggerCmd
        PUBLIC DAC_StructInit
        PUBLIC DAC_WaveGenerationCmd
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_dac.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_dac.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the DAC firmware functions.
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
//   23 #include "stm32f10x_dac.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup DAC
//   31   * @brief DAC driver modules
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup DAC_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 /** @defgroup DAC_Private_Defines
//   44   * @{
//   45   */
//   46 
//   47 /* CR register Mask */
//   48 #define CR_CLEAR_MASK              ((uint32_t)0x00000FFE)
//   49 
//   50 /* DAC Dual Channels SWTRIG masks */
//   51 #define DUAL_SWTRIG_SET            ((uint32_t)0x00000003)
//   52 #define DUAL_SWTRIG_RESET          ((uint32_t)0xFFFFFFFC)
//   53 
//   54 /* DHR registers offsets */
//   55 #define DHR12R1_OFFSET             ((uint32_t)0x00000008)
//   56 #define DHR12R2_OFFSET             ((uint32_t)0x00000014)
//   57 #define DHR12RD_OFFSET             ((uint32_t)0x00000020)
//   58 
//   59 /* DOR register offset */
//   60 #define DOR_OFFSET                 ((uint32_t)0x0000002C)
//   61 /**
//   62   * @}
//   63   */
//   64 
//   65 /** @defgroup DAC_Private_Macros
//   66   * @{
//   67   */
//   68 
//   69 /**
//   70   * @}
//   71   */
//   72 
//   73 /** @defgroup DAC_Private_Variables
//   74   * @{
//   75   */
//   76 
//   77 /**
//   78   * @}
//   79   */
//   80 
//   81 /** @defgroup DAC_Private_FunctionPrototypes
//   82   * @{
//   83   */
//   84 
//   85 /**
//   86   * @}
//   87   */
//   88 
//   89 /** @defgroup DAC_Private_Functions
//   90   * @{
//   91   */
//   92 
//   93 /**
//   94   * @brief  Deinitializes the DAC peripheral registers to their default reset values.
//   95   * @param  None
//   96   * @retval None
//   97   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function DAC_DeInit
        THUMB
//   98 void DAC_DeInit(void)
//   99 {
DAC_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  100     /* Enable DAC reset state */
//  101     RCC_APB1PeriphResetCmd(RCC_APB1Periph_DAC, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+536870912
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  102     /* Release DAC from reset state */
//  103     RCC_APB1PeriphResetCmd(RCC_APB1Periph_DAC, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+536870912
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  104 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//  105 
//  106 /**
//  107   * @brief  Initializes the DAC peripheral according to the specified
//  108   *         parameters in the DAC_InitStruct.
//  109   * @param  DAC_Channel: the selected DAC channel.
//  110   *   This parameter can be one of the following values:
//  111   *     @arg DAC_Channel_1: DAC Channel1 selected
//  112   *     @arg DAC_Channel_2: DAC Channel2 selected
//  113   * @param  DAC_InitStruct: pointer to a DAC_InitTypeDef structure that
//  114   *        contains the configuration information for the specified DAC channel.
//  115   * @retval None
//  116   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function DAC_Init
          CFI NoCalls
        THUMB
//  117 void DAC_Init(uint32_t DAC_Channel, DAC_InitTypeDef *DAC_InitStruct)
//  118 {
DAC_Init:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  119     uint32_t tmpreg1 = 0, tmpreg2 = 0;
        MOVS     R3,#+0
        MOVS     R2,#+0
//  120     /* Check the DAC parameters */
//  121     assert_param(IS_DAC_TRIGGER(DAC_InitStruct->DAC_Trigger));
//  122     assert_param(IS_DAC_GENERATE_WAVE(DAC_InitStruct->DAC_WaveGeneration));
//  123     assert_param(IS_DAC_LFSR_UNMASK_TRIANGLE_AMPLITUDE(DAC_InitStruct->DAC_LFSRUnmask_TriangleAmplitude));
//  124     assert_param(IS_DAC_OUTPUT_BUFFER_STATE(DAC_InitStruct->DAC_OutputBuffer));
//  125     /*---------------------------- DAC CR Configuration --------------------------*/
//  126     /* Get the DAC CR value */
//  127     tmpreg1 = DAC->CR;
        LDR.N    R4,??DataTable9  ;; 0x40007400
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
//  128     /* Clear BOFFx, TENx, TSELx, WAVEx and MAMPx bits */
//  129     tmpreg1 &= ~(CR_CLEAR_MASK << DAC_Channel);
        MOVW     R4,#+4094
        LSLS     R4,R4,R0
        BICS     R3,R3,R4
//  130     /* Configure for the selected DAC channel: buffer output, trigger, wave generation,
//  131        mask/amplitude for wave generation */
//  132     /* Set TSELx and TENx bits according to DAC_Trigger value */
//  133     /* Set WAVEx bits according to DAC_WaveGeneration value */
//  134     /* Set MAMPx bits according to DAC_LFSRUnmask_TriangleAmplitude value */
//  135     /* Set BOFFx bit according to DAC_OutputBuffer value */
//  136     tmpreg2 = (DAC_InitStruct->DAC_Trigger | DAC_InitStruct->DAC_WaveGeneration |
//  137                DAC_InitStruct->DAC_LFSRUnmask_TriangleAmplitude | DAC_InitStruct->DAC_OutputBuffer);
        LDR      R4,[R1, #+0]
        LDR      R5,[R1, #+4]
        ORRS     R4,R5,R4
        LDR      R5,[R1, #+8]
        ORRS     R4,R5,R4
        LDR      R5,[R1, #+12]
        ORRS     R4,R5,R4
        MOVS     R2,R4
//  138     /* Calculate CR register value depending on DAC_Channel */
//  139     tmpreg1 |= tmpreg2 << DAC_Channel;
        LSLS     R4,R2,R0
        ORRS     R3,R4,R3
//  140     /* Write to DAC CR */
//  141     DAC->CR = tmpreg1;
        LDR.N    R4,??DataTable9  ;; 0x40007400
        STR      R3,[R4, #+0]
//  142 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  143 
//  144 /**
//  145   * @brief  Fills each DAC_InitStruct member with its default value.
//  146   * @param  DAC_InitStruct : pointer to a DAC_InitTypeDef structure which will
//  147   *         be initialized.
//  148   * @retval None
//  149   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function DAC_StructInit
          CFI NoCalls
        THUMB
//  150 void DAC_StructInit(DAC_InitTypeDef *DAC_InitStruct)
//  151 {
//  152     /*--------------- Reset DAC init structure parameters values -----------------*/
//  153     /* Initialize the DAC_Trigger member */
//  154     DAC_InitStruct->DAC_Trigger = DAC_Trigger_None;
DAC_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  155     /* Initialize the DAC_WaveGeneration member */
//  156     DAC_InitStruct->DAC_WaveGeneration = DAC_WaveGeneration_None;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  157     /* Initialize the DAC_LFSRUnmask_TriangleAmplitude member */
//  158     DAC_InitStruct->DAC_LFSRUnmask_TriangleAmplitude = DAC_LFSRUnmask_Bit0;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  159     /* Initialize the DAC_OutputBuffer member */
//  160     DAC_InitStruct->DAC_OutputBuffer = DAC_OutputBuffer_Enable;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  161 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  162 
//  163 /**
//  164   * @brief  Enables or disables the specified DAC channel.
//  165   * @param  DAC_Channel: the selected DAC channel.
//  166   *   This parameter can be one of the following values:
//  167   *     @arg DAC_Channel_1: DAC Channel1 selected
//  168   *     @arg DAC_Channel_2: DAC Channel2 selected
//  169   * @param  NewState: new state of the DAC channel.
//  170   *   This parameter can be: ENABLE or DISABLE.
//  171   * @retval None
//  172   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function DAC_Cmd
          CFI NoCalls
        THUMB
//  173 void DAC_Cmd(uint32_t DAC_Channel, FunctionalState NewState)
//  174 {
//  175     /* Check the parameters */
//  176     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  177     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  178     if (NewState != DISABLE)
DAC_Cmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DAC_Cmd_0
//  179     {
//  180         /* Enable the selected DAC channel */
//  181         DAC->CR |= (DAC_CR_EN1 << DAC_Channel);
        LDR.N    R2,??DataTable9  ;; 0x40007400
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        LDR.N    R3,??DataTable9  ;; 0x40007400
        STR      R2,[R3, #+0]
        B.N      ??DAC_Cmd_1
//  182     }
//  183     else
//  184     {
//  185         /* Disable the selected DAC channel */
//  186         DAC->CR &= ~(DAC_CR_EN1 << DAC_Channel);
??DAC_Cmd_0:
        LDR.N    R2,??DataTable9  ;; 0x40007400
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        LDR.N    R3,??DataTable9  ;; 0x40007400
        STR      R2,[R3, #+0]
//  187     }
//  188 }
??DAC_Cmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  189 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  190 /**
//  191   * @brief  Enables or disables the specified DAC interrupts.
//  192   * @param  DAC_Channel: the selected DAC channel.
//  193   *   This parameter can be one of the following values:
//  194   *     @arg DAC_Channel_1: DAC Channel1 selected
//  195   *     @arg DAC_Channel_2: DAC Channel2 selected
//  196   * @param  DAC_IT: specifies the DAC interrupt sources to be enabled or disabled.
//  197   *   This parameter can be the following values:
//  198   *     @arg DAC_IT_DMAUDR: DMA underrun interrupt mask
//  199   * @param  NewState: new state of the specified DAC interrupts.
//  200   *   This parameter can be: ENABLE or DISABLE.
//  201   * @retval None
//  202   */
//  203 void DAC_ITConfig(uint32_t DAC_Channel, uint32_t DAC_IT, FunctionalState NewState)
//  204 {
//  205     /* Check the parameters */
//  206     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  207     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  208     assert_param(IS_DAC_IT(DAC_IT));
//  209 
//  210     if (NewState != DISABLE)
//  211     {
//  212         /* Enable the selected DAC interrupts */
//  213         DAC->CR |=  (DAC_IT << DAC_Channel);
//  214     }
//  215     else
//  216     {
//  217         /* Disable the selected DAC interrupts */
//  218         DAC->CR &= (~(uint32_t)(DAC_IT << DAC_Channel));
//  219     }
//  220 }
//  221 #endif
//  222 
//  223 /**
//  224   * @brief  Enables or disables the specified DAC channel DMA request.
//  225   * @param  DAC_Channel: the selected DAC channel.
//  226   *   This parameter can be one of the following values:
//  227   *     @arg DAC_Channel_1: DAC Channel1 selected
//  228   *     @arg DAC_Channel_2: DAC Channel2 selected
//  229   * @param  NewState: new state of the selected DAC channel DMA request.
//  230   *   This parameter can be: ENABLE or DISABLE.
//  231   * @retval None
//  232   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function DAC_DMACmd
          CFI NoCalls
        THUMB
//  233 void DAC_DMACmd(uint32_t DAC_Channel, FunctionalState NewState)
//  234 {
//  235     /* Check the parameters */
//  236     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  237     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  238     if (NewState != DISABLE)
DAC_DMACmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DAC_DMACmd_0
//  239     {
//  240         /* Enable the selected DAC channel DMA request */
//  241         DAC->CR |= (DAC_CR_DMAEN1 << DAC_Channel);
        LDR.N    R2,??DataTable9  ;; 0x40007400
        LDR      R2,[R2, #+0]
        MOV      R3,#+4096
        LSLS     R3,R3,R0
        ORRS     R2,R3,R2
        LDR.N    R3,??DataTable9  ;; 0x40007400
        STR      R2,[R3, #+0]
        B.N      ??DAC_DMACmd_1
//  242     }
//  243     else
//  244     {
//  245         /* Disable the selected DAC channel DMA request */
//  246         DAC->CR &= ~(DAC_CR_DMAEN1 << DAC_Channel);
??DAC_DMACmd_0:
        LDR.N    R2,??DataTable9  ;; 0x40007400
        LDR      R2,[R2, #+0]
        MOV      R3,#+4096
        LSLS     R3,R3,R0
        BICS     R2,R2,R3
        LDR.N    R3,??DataTable9  ;; 0x40007400
        STR      R2,[R3, #+0]
//  247     }
//  248 }
??DAC_DMACmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  249 
//  250 /**
//  251   * @brief  Enables or disables the selected DAC channel software trigger.
//  252   * @param  DAC_Channel: the selected DAC channel.
//  253   *   This parameter can be one of the following values:
//  254   *     @arg DAC_Channel_1: DAC Channel1 selected
//  255   *     @arg DAC_Channel_2: DAC Channel2 selected
//  256   * @param  NewState: new state of the selected DAC channel software trigger.
//  257   *   This parameter can be: ENABLE or DISABLE.
//  258   * @retval None
//  259   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function DAC_SoftwareTriggerCmd
          CFI NoCalls
        THUMB
//  260 void DAC_SoftwareTriggerCmd(uint32_t DAC_Channel, FunctionalState NewState)
//  261 {
DAC_SoftwareTriggerCmd:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  262     /* Check the parameters */
//  263     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  264     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  265     if (NewState != DISABLE)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??DAC_SoftwareTriggerCmd_0
//  266     {
//  267         /* Enable software trigger for the selected DAC channel */
//  268         DAC->SWTRIGR |= (uint32_t)DAC_SWTRIGR_SWTRIG1 << (DAC_Channel >> 4);
        LDR.N    R2,??DataTable9_1  ;; 0x40007404
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        LSRS     R4,R0,#+4
        LSLS     R3,R3,R4
        ORRS     R2,R3,R2
        LDR.N    R3,??DataTable9_1  ;; 0x40007404
        STR      R2,[R3, #+0]
        B.N      ??DAC_SoftwareTriggerCmd_1
//  269     }
//  270     else
//  271     {
//  272         /* Disable software trigger for the selected DAC channel */
//  273         DAC->SWTRIGR &= ~((uint32_t)DAC_SWTRIGR_SWTRIG1 << (DAC_Channel >> 4));
??DAC_SoftwareTriggerCmd_0:
        LDR.N    R2,??DataTable9_1  ;; 0x40007404
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        LSRS     R4,R0,#+4
        LSLS     R3,R3,R4
        BICS     R2,R2,R3
        LDR.N    R3,??DataTable9_1  ;; 0x40007404
        STR      R2,[R3, #+0]
//  274     }
//  275 }
??DAC_SoftwareTriggerCmd_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  276 
//  277 /**
//  278   * @brief  Enables or disables simultaneously the two DAC channels software
//  279   *   triggers.
//  280   * @param  NewState: new state of the DAC channels software triggers.
//  281   *   This parameter can be: ENABLE or DISABLE.
//  282   * @retval None
//  283   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function DAC_DualSoftwareTriggerCmd
          CFI NoCalls
        THUMB
//  284 void DAC_DualSoftwareTriggerCmd(FunctionalState NewState)
//  285 {
//  286     /* Check the parameters */
//  287     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  288     if (NewState != DISABLE)
DAC_DualSoftwareTriggerCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??DAC_DualSoftwareTriggerCmd_0
//  289     {
//  290         /* Enable software trigger for both DAC channels */
//  291         DAC->SWTRIGR |= DUAL_SWTRIG_SET ;
        LDR.N    R1,??DataTable9_1  ;; 0x40007404
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x3
        LDR.N    R2,??DataTable9_1  ;; 0x40007404
        STR      R1,[R2, #+0]
        B.N      ??DAC_DualSoftwareTriggerCmd_1
//  292     }
//  293     else
//  294     {
//  295         /* Disable software trigger for both DAC channels */
//  296         DAC->SWTRIGR &= DUAL_SWTRIG_RESET;
??DAC_DualSoftwareTriggerCmd_0:
        LDR.N    R1,??DataTable9_1  ;; 0x40007404
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        LDR.N    R2,??DataTable9_1  ;; 0x40007404
        STR      R1,[R2, #+0]
//  297     }
//  298 }
??DAC_DualSoftwareTriggerCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  299 
//  300 /**
//  301   * @brief  Enables or disables the selected DAC channel wave generation.
//  302   * @param  DAC_Channel: the selected DAC channel.
//  303   *   This parameter can be one of the following values:
//  304   *     @arg DAC_Channel_1: DAC Channel1 selected
//  305   *     @arg DAC_Channel_2: DAC Channel2 selected
//  306   * @param  DAC_Wave: Specifies the wave type to enable or disable.
//  307   *   This parameter can be one of the following values:
//  308   *     @arg DAC_Wave_Noise: noise wave generation
//  309   *     @arg DAC_Wave_Triangle: triangle wave generation
//  310   * @param  NewState: new state of the selected DAC channel wave generation.
//  311   *   This parameter can be: ENABLE or DISABLE.
//  312   * @retval None
//  313   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function DAC_WaveGenerationCmd
          CFI NoCalls
        THUMB
//  314 void DAC_WaveGenerationCmd(uint32_t DAC_Channel, uint32_t DAC_Wave, FunctionalState NewState)
//  315 {
DAC_WaveGenerationCmd:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  316     /* Check the parameters */
//  317     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  318     assert_param(IS_DAC_WAVE(DAC_Wave));
//  319     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  320     if (NewState != DISABLE)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??DAC_WaveGenerationCmd_0
//  321     {
//  322         /* Enable the selected wave generation for the selected DAC channel */
//  323         DAC->CR |= DAC_Wave << DAC_Channel;
        LDR.N    R3,??DataTable9  ;; 0x40007400
        LDR      R3,[R3, #+0]
        LSLS     R4,R1,R0
        ORRS     R3,R4,R3
        LDR.N    R4,??DataTable9  ;; 0x40007400
        STR      R3,[R4, #+0]
        B.N      ??DAC_WaveGenerationCmd_1
//  324     }
//  325     else
//  326     {
//  327         /* Disable the selected wave generation for the selected DAC channel */
//  328         DAC->CR &= ~(DAC_Wave << DAC_Channel);
??DAC_WaveGenerationCmd_0:
        LDR.N    R3,??DataTable9  ;; 0x40007400
        LDR      R3,[R3, #+0]
        LSLS     R4,R1,R0
        BICS     R3,R3,R4
        LDR.N    R4,??DataTable9  ;; 0x40007400
        STR      R3,[R4, #+0]
//  329     }
//  330 }
??DAC_WaveGenerationCmd_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  331 
//  332 /**
//  333   * @brief  Set the specified data holding register value for DAC channel1.
//  334   * @param  DAC_Align: Specifies the data alignment for DAC channel1.
//  335   *   This parameter can be one of the following values:
//  336   *     @arg DAC_Align_8b_R: 8bit right data alignment selected
//  337   *     @arg DAC_Align_12b_L: 12bit left data alignment selected
//  338   *     @arg DAC_Align_12b_R: 12bit right data alignment selected
//  339   * @param  Data : Data to be loaded in the selected data holding register.
//  340   * @retval None
//  341   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function DAC_SetChannel1Data
          CFI NoCalls
        THUMB
//  342 void DAC_SetChannel1Data(uint32_t DAC_Align, uint16_t Data)
//  343 {
DAC_SetChannel1Data:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  344     __IO uint32_t tmp = 0;
        MOVS     R2,#+0
        STR      R2,[SP, #+0]
//  345 
//  346     /* Check the parameters */
//  347     assert_param(IS_DAC_ALIGN(DAC_Align));
//  348     assert_param(IS_DAC_DATA(Data));
//  349 
//  350     tmp = (uint32_t)DAC_BASE;
        LDR.N    R2,??DataTable9  ;; 0x40007400
        STR      R2,[SP, #+0]
//  351     tmp += DHR12R1_OFFSET + DAC_Align;
        LDR      R2,[SP, #+0]
        ADDS     R3,R0,#+8
        ADDS     R2,R3,R2
        STR      R2,[SP, #+0]
//  352 
//  353     /* Set the DAC channel1 selected data holding register */
//  354     *(__IO uint32_t *) tmp = Data;
        LDR      R2,[SP, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R2, #+0]
//  355 }
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  356 
//  357 /**
//  358   * @brief  Set the specified data holding register value for DAC channel2.
//  359   * @param  DAC_Align: Specifies the data alignment for DAC channel2.
//  360   *   This parameter can be one of the following values:
//  361   *     @arg DAC_Align_8b_R: 8bit right data alignment selected
//  362   *     @arg DAC_Align_12b_L: 12bit left data alignment selected
//  363   *     @arg DAC_Align_12b_R: 12bit right data alignment selected
//  364   * @param  Data : Data to be loaded in the selected data holding register.
//  365   * @retval None
//  366   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function DAC_SetChannel2Data
          CFI NoCalls
        THUMB
//  367 void DAC_SetChannel2Data(uint32_t DAC_Align, uint16_t Data)
//  368 {
DAC_SetChannel2Data:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  369     __IO uint32_t tmp = 0;
        MOVS     R2,#+0
        STR      R2,[SP, #+0]
//  370 
//  371     /* Check the parameters */
//  372     assert_param(IS_DAC_ALIGN(DAC_Align));
//  373     assert_param(IS_DAC_DATA(Data));
//  374 
//  375     tmp = (uint32_t)DAC_BASE;
        LDR.N    R2,??DataTable9  ;; 0x40007400
        STR      R2,[SP, #+0]
//  376     tmp += DHR12R2_OFFSET + DAC_Align;
        LDR      R2,[SP, #+0]
        ADDS     R3,R0,#+20
        ADDS     R2,R3,R2
        STR      R2,[SP, #+0]
//  377 
//  378     /* Set the DAC channel2 selected data holding register */
//  379     *(__IO uint32_t *)tmp = Data;
        LDR      R2,[SP, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R2, #+0]
//  380 }
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  381 
//  382 /**
//  383   * @brief  Set the specified data holding register value for dual channel
//  384   *   DAC.
//  385   * @param  DAC_Align: Specifies the data alignment for dual channel DAC.
//  386   *   This parameter can be one of the following values:
//  387   *     @arg DAC_Align_8b_R: 8bit right data alignment selected
//  388   *     @arg DAC_Align_12b_L: 12bit left data alignment selected
//  389   *     @arg DAC_Align_12b_R: 12bit right data alignment selected
//  390   * @param  Data2: Data for DAC Channel2 to be loaded in the selected data
//  391   *   holding register.
//  392   * @param  Data1: Data for DAC Channel1 to be loaded in the selected data
//  393   *   holding register.
//  394   * @retval None
//  395   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function DAC_SetDualChannelData
          CFI NoCalls
        THUMB
//  396 void DAC_SetDualChannelData(uint32_t DAC_Align, uint16_t Data2, uint16_t Data1)
//  397 {
DAC_SetDualChannelData:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  398     uint32_t data = 0, tmp = 0;
        MOVS     R3,#+0
        MOVS     R4,#+0
//  399 
//  400     /* Check the parameters */
//  401     assert_param(IS_DAC_ALIGN(DAC_Align));
//  402     assert_param(IS_DAC_DATA(Data1));
//  403     assert_param(IS_DAC_DATA(Data2));
//  404 
//  405     /* Calculate and set dual DAC data holding register value */
//  406     if (DAC_Align == DAC_Align_8b_R)
        CMP      R0,#+8
        BNE.N    ??DAC_SetDualChannelData_0
//  407     {
//  408         data = ((uint32_t)Data2 << 8) | Data1;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ORRS     R5,R2,R1, LSL #+8
        MOVS     R3,R5
        B.N      ??DAC_SetDualChannelData_1
//  409     }
//  410     else
//  411     {
//  412         data = ((uint32_t)Data2 << 16) | Data1;
??DAC_SetDualChannelData_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ORRS     R5,R2,R1, LSL #+16
        MOVS     R3,R5
//  413     }
//  414 
//  415     tmp = (uint32_t)DAC_BASE;
??DAC_SetDualChannelData_1:
        LDR.N    R5,??DataTable9  ;; 0x40007400
        MOVS     R4,R5
//  416     tmp += DHR12RD_OFFSET + DAC_Align;
        ADDS     R5,R0,#+32
        ADDS     R4,R5,R4
//  417 
//  418     /* Set the dual DAC selected data holding register */
//  419     *(__IO uint32_t *)tmp = data;
        STR      R3,[R4, #+0]
//  420 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  421 
//  422 /**
//  423   * @brief  Returns the last data output value of the selected DAC channel.
//  424   * @param  DAC_Channel: the selected DAC channel.
//  425   *   This parameter can be one of the following values:
//  426   *     @arg DAC_Channel_1: DAC Channel1 selected
//  427   *     @arg DAC_Channel_2: DAC Channel2 selected
//  428   * @retval The selected DAC channel data output value.
//  429   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function DAC_GetDataOutputValue
          CFI NoCalls
        THUMB
//  430 uint16_t DAC_GetDataOutputValue(uint32_t DAC_Channel)
//  431 {
DAC_GetDataOutputValue:
        SUB      SP,SP,#+4
          CFI CFA R13+4
        MOVS     R1,R0
//  432     __IO uint32_t tmp = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  433 
//  434     /* Check the parameters */
//  435     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  436 
//  437     tmp = (uint32_t) DAC_BASE ;
        LDR.N    R0,??DataTable9  ;; 0x40007400
        STR      R0,[SP, #+0]
//  438     tmp += DOR_OFFSET + ((uint32_t)DAC_Channel >> 2);
        LDR      R0,[SP, #+0]
        LSRS     R2,R1,#+2
        ADDS     R2,R2,#+44
        ADDS     R0,R2,R0
        STR      R0,[SP, #+0]
//  439 
//  440     /* Returns the DAC channel data output register value */
//  441     return (uint16_t) (*(__IO uint32_t *) tmp);
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  442 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40007400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x40007404

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  443 
//  444 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  445 /**
//  446   * @brief  Checks whether the specified DAC flag is set or not.
//  447   * @param  DAC_Channel: thee selected DAC channel.
//  448   *   This parameter can be one of the following values:
//  449   *     @arg DAC_Channel_1: DAC Channel1 selected
//  450   *     @arg DAC_Channel_2: DAC Channel2 selected
//  451   * @param  DAC_FLAG: specifies the flag to check.
//  452   *   This parameter can be only of the following value:
//  453   *     @arg DAC_FLAG_DMAUDR: DMA underrun flag
//  454   * @retval The new state of DAC_FLAG (SET or RESET).
//  455   */
//  456 FlagStatus DAC_GetFlagStatus(uint32_t DAC_Channel, uint32_t DAC_FLAG)
//  457 {
//  458     FlagStatus bitstatus = RESET;
//  459     /* Check the parameters */
//  460     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  461     assert_param(IS_DAC_FLAG(DAC_FLAG));
//  462 
//  463     /* Check the status of the specified DAC flag */
//  464     if ((DAC->SR & (DAC_FLAG << DAC_Channel)) != (uint8_t)RESET)
//  465     {
//  466         /* DAC_FLAG is set */
//  467         bitstatus = SET;
//  468     }
//  469     else
//  470     {
//  471         /* DAC_FLAG is reset */
//  472         bitstatus = RESET;
//  473     }
//  474     /* Return the DAC_FLAG status */
//  475     return  bitstatus;
//  476 }
//  477 
//  478 /**
//  479   * @brief  Clears the DAC channelx's pending flags.
//  480   * @param  DAC_Channel: the selected DAC channel.
//  481   *   This parameter can be one of the following values:
//  482   *     @arg DAC_Channel_1: DAC Channel1 selected
//  483   *     @arg DAC_Channel_2: DAC Channel2 selected
//  484   * @param  DAC_FLAG: specifies the flag to clear.
//  485   *   This parameter can be of the following value:
//  486   *     @arg DAC_FLAG_DMAUDR: DMA underrun flag
//  487   * @retval None
//  488   */
//  489 void DAC_ClearFlag(uint32_t DAC_Channel, uint32_t DAC_FLAG)
//  490 {
//  491     /* Check the parameters */
//  492     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  493     assert_param(IS_DAC_FLAG(DAC_FLAG));
//  494 
//  495     /* Clear the selected DAC flags */
//  496     DAC->SR = (DAC_FLAG << DAC_Channel);
//  497 }
//  498 
//  499 /**
//  500   * @brief  Checks whether the specified DAC interrupt has occurred or not.
//  501   * @param  DAC_Channel: the selected DAC channel.
//  502   *   This parameter can be one of the following values:
//  503   *     @arg DAC_Channel_1: DAC Channel1 selected
//  504   *     @arg DAC_Channel_2: DAC Channel2 selected
//  505   * @param  DAC_IT: specifies the DAC interrupt source to check.
//  506   *   This parameter can be the following values:
//  507   *     @arg DAC_IT_DMAUDR: DMA underrun interrupt mask
//  508   * @retval The new state of DAC_IT (SET or RESET).
//  509   */
//  510 ITStatus DAC_GetITStatus(uint32_t DAC_Channel, uint32_t DAC_IT)
//  511 {
//  512     ITStatus bitstatus = RESET;
//  513     uint32_t enablestatus = 0;
//  514 
//  515     /* Check the parameters */
//  516     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  517     assert_param(IS_DAC_IT(DAC_IT));
//  518 
//  519     /* Get the DAC_IT enable bit status */
//  520     enablestatus = (DAC->CR & (DAC_IT << DAC_Channel)) ;
//  521 
//  522     /* Check the status of the specified DAC interrupt */
//  523     if (((DAC->SR & (DAC_IT << DAC_Channel)) != (uint32_t)RESET) && enablestatus)
//  524     {
//  525         /* DAC_IT is set */
//  526         bitstatus = SET;
//  527     }
//  528     else
//  529     {
//  530         /* DAC_IT is reset */
//  531         bitstatus = RESET;
//  532     }
//  533     /* Return the DAC_IT status */
//  534     return  bitstatus;
//  535 }
//  536 
//  537 /**
//  538   * @brief  Clears the DAC channelx's interrupt pending bits.
//  539   * @param  DAC_Channel: the selected DAC channel.
//  540   *   This parameter can be one of the following values:
//  541   *     @arg DAC_Channel_1: DAC Channel1 selected
//  542   *     @arg DAC_Channel_2: DAC Channel2 selected
//  543   * @param  DAC_IT: specifies the DAC interrupt pending bit to clear.
//  544   *   This parameter can be the following values:
//  545   *     @arg DAC_IT_DMAUDR: DMA underrun interrupt mask
//  546   * @retval None
//  547   */
//  548 void DAC_ClearITPendingBit(uint32_t DAC_Channel, uint32_t DAC_IT)
//  549 {
//  550     /* Check the parameters */
//  551     assert_param(IS_DAC_CHANNEL(DAC_Channel));
//  552     assert_param(IS_DAC_IT(DAC_IT));
//  553 
//  554     /* Clear the selected DAC interrupt pending bits */
//  555     DAC->SR = (DAC_IT << DAC_Channel);
//  556 }
//  557 #endif
//  558 
//  559 /**
//  560   * @}
//  561   */
//  562 
//  563 /**
//  564   * @}
//  565   */
//  566 
//  567 /**
//  568   * @}
//  569   */
//  570 
//  571 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 442 bytes in section .text
// 
// 442 bytes of CODE memory
//
//Errors: none
//Warnings: none
