///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:49 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_fsmc.c                                         /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_fsmc.c -D USE_STDPERIPH_DRIVER -D              /
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
//                    \Debug\List\stm32f10x_fsmc.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_fsmc

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC FSMC_ClearFlag
        PUBLIC FSMC_ClearITPendingBit
        PUBLIC FSMC_GetECC
        PUBLIC FSMC_GetFlagStatus
        PUBLIC FSMC_GetITStatus
        PUBLIC FSMC_ITConfig
        PUBLIC FSMC_NANDCmd
        PUBLIC FSMC_NANDDeInit
        PUBLIC FSMC_NANDECCCmd
        PUBLIC FSMC_NANDInit
        PUBLIC FSMC_NANDStructInit
        PUBLIC FSMC_NORSRAMCmd
        PUBLIC FSMC_NORSRAMDeInit
        PUBLIC FSMC_NORSRAMInit
        PUBLIC FSMC_NORSRAMStructInit
        PUBLIC FSMC_PCCARDCmd
        PUBLIC FSMC_PCCARDDeInit
        PUBLIC FSMC_PCCARDInit
        PUBLIC FSMC_PCCARDStructInit
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_fsmc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_fsmc.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the FSMC firmware functions.
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
//   23 #include "stm32f10x_fsmc.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup FSMC
//   31   * @brief FSMC driver modules
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup FSMC_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup FSMC_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 /* --------------------- FSMC registers bit mask ---------------------------- */
//   47 
//   48 /* FSMC BCRx Mask */
//   49 #define BCR_MBKEN_Set                       ((uint32_t)0x00000001)
//   50 #define BCR_MBKEN_Reset                     ((uint32_t)0x000FFFFE)
//   51 #define BCR_FACCEN_Set                      ((uint32_t)0x00000040)
//   52 
//   53 /* FSMC PCRx Mask */
//   54 #define PCR_PBKEN_Set                       ((uint32_t)0x00000004)
//   55 #define PCR_PBKEN_Reset                     ((uint32_t)0x000FFFFB)
//   56 #define PCR_ECCEN_Set                       ((uint32_t)0x00000040)
//   57 #define PCR_ECCEN_Reset                     ((uint32_t)0x000FFFBF)
//   58 #define PCR_MemoryType_NAND                 ((uint32_t)0x00000008)
//   59 /**
//   60   * @}
//   61   */
//   62 
//   63 /** @defgroup FSMC_Private_Macros
//   64   * @{
//   65   */
//   66 
//   67 /**
//   68   * @}
//   69   */
//   70 
//   71 /** @defgroup FSMC_Private_Variables
//   72   * @{
//   73   */
//   74 
//   75 /**
//   76   * @}
//   77   */
//   78 
//   79 /** @defgroup FSMC_Private_FunctionPrototypes
//   80   * @{
//   81   */
//   82 
//   83 /**
//   84   * @}
//   85   */
//   86 
//   87 /** @defgroup FSMC_Private_Functions
//   88   * @{
//   89   */
//   90 
//   91 /**
//   92   * @brief  Deinitializes the FSMC NOR/SRAM Banks registers to their default
//   93   *         reset values.
//   94   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//   95   *   This parameter can be one of the following values:
//   96   *     @arg FSMC_Bank1_NORSRAM1: FSMC Bank1 NOR/SRAM1
//   97   *     @arg FSMC_Bank1_NORSRAM2: FSMC Bank1 NOR/SRAM2
//   98   *     @arg FSMC_Bank1_NORSRAM3: FSMC Bank1 NOR/SRAM3
//   99   *     @arg FSMC_Bank1_NORSRAM4: FSMC Bank1 NOR/SRAM4
//  100   * @retval None
//  101   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function FSMC_NORSRAMDeInit
          CFI NoCalls
        THUMB
//  102 void FSMC_NORSRAMDeInit(uint32_t FSMC_Bank)
//  103 {
//  104     /* Check the parameter */
//  105     assert_param(IS_FSMC_NORSRAM_BANK(FSMC_Bank));
//  106 
//  107     /* FSMC_Bank1_NORSRAM1 */
//  108     if(FSMC_Bank == FSMC_Bank1_NORSRAM1)
FSMC_NORSRAMDeInit:
        CMP      R0,#+0
        BNE.N    ??FSMC_NORSRAMDeInit_0
//  109     {
//  110         FSMC_Bank1->BTCR[FSMC_Bank] = 0x000030DB;
        LSLS     R1,R0,#+2
        SUBS     R1,R1,#+1610612736
        MOVW     R2,#+12507
        STR      R2,[R1, #+0]
        B.N      ??FSMC_NORSRAMDeInit_1
//  111     }
//  112     /* FSMC_Bank1_NORSRAM2,  FSMC_Bank1_NORSRAM3 or FSMC_Bank1_NORSRAM4 */
//  113     else
//  114     {
//  115         FSMC_Bank1->BTCR[FSMC_Bank] = 0x000030D2;
??FSMC_NORSRAMDeInit_0:
        LSLS     R1,R0,#+2
        SUBS     R1,R1,#+1610612736
        MOVW     R2,#+12498
        STR      R2,[R1, #+0]
//  116     }
//  117     FSMC_Bank1->BTCR[FSMC_Bank + 1] = 0x0FFFFFFF;
??FSMC_NORSRAMDeInit_1:
        LSLS     R1,R0,#+2
        SUBS     R1,R1,#+1610612736
        MVNS     R2,#-268435456
        STR      R2,[R1, #+4]
//  118     FSMC_Bank1E->BWTR[FSMC_Bank] = 0x0FFFFFFF;
        LDR.W    R1,??DataTable15  ;; 0xa0000104
        MVNS     R2,#-268435456
        STR      R2,[R1, R0, LSL #+2]
//  119 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  120 
//  121 /**
//  122   * @brief  Deinitializes the FSMC NAND Banks registers to their default reset values.
//  123   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  124   *   This parameter can be one of the following values:
//  125   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  126   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  127   * @retval None
//  128   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function FSMC_NANDDeInit
          CFI NoCalls
        THUMB
//  129 void FSMC_NANDDeInit(uint32_t FSMC_Bank)
//  130 {
//  131     /* Check the parameter */
//  132     assert_param(IS_FSMC_NAND_BANK(FSMC_Bank));
//  133 
//  134     if(FSMC_Bank == FSMC_Bank2_NAND)
FSMC_NANDDeInit:
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDDeInit_0
//  135     {
//  136         /* Set the FSMC_Bank2 registers to their reset values */
//  137         FSMC_Bank2->PCR2 = 0x00000018;
        LDR.W    R1,??DataTable15_1  ;; 0xa0000060
        MOVS     R2,#+24
        STR      R2,[R1, #+0]
//  138         FSMC_Bank2->SR2 = 0x00000040;
        LDR.W    R1,??DataTable15_2  ;; 0xa0000064
        MOVS     R2,#+64
        STR      R2,[R1, #+0]
//  139         FSMC_Bank2->PMEM2 = 0xFCFCFCFC;
        LDR.W    R1,??DataTable15_3  ;; 0xa0000068
        MOVS     R2,#-50529028
        STR      R2,[R1, #+0]
//  140         FSMC_Bank2->PATT2 = 0xFCFCFCFC;
        LDR.W    R1,??DataTable15_4  ;; 0xa000006c
        MOVS     R2,#-50529028
        STR      R2,[R1, #+0]
        B.N      ??FSMC_NANDDeInit_1
//  141     }
//  142     /* FSMC_Bank3_NAND */
//  143     else
//  144     {
//  145         /* Set the FSMC_Bank3 registers to their reset values */
//  146         FSMC_Bank3->PCR3 = 0x00000018;
??FSMC_NANDDeInit_0:
        LDR.W    R1,??DataTable15_5  ;; 0xa0000080
        MOVS     R2,#+24
        STR      R2,[R1, #+0]
//  147         FSMC_Bank3->SR3 = 0x00000040;
        LDR.W    R1,??DataTable15_6  ;; 0xa0000084
        MOVS     R2,#+64
        STR      R2,[R1, #+0]
//  148         FSMC_Bank3->PMEM3 = 0xFCFCFCFC;
        LDR.W    R1,??DataTable15_7  ;; 0xa0000088
        MOVS     R2,#-50529028
        STR      R2,[R1, #+0]
//  149         FSMC_Bank3->PATT3 = 0xFCFCFCFC;
        LDR.W    R1,??DataTable15_8  ;; 0xa000008c
        MOVS     R2,#-50529028
        STR      R2,[R1, #+0]
//  150     }
//  151 }
??FSMC_NANDDeInit_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  152 
//  153 /**
//  154   * @brief  Deinitializes the FSMC PCCARD Bank registers to their default reset values.
//  155   * @param  None
//  156   * @retval None
//  157   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function FSMC_PCCARDDeInit
          CFI NoCalls
        THUMB
//  158 void FSMC_PCCARDDeInit(void)
//  159 {
//  160     /* Set the FSMC_Bank4 registers to their reset values */
//  161     FSMC_Bank4->PCR4 = 0x00000018;
FSMC_PCCARDDeInit:
        LDR.W    R0,??DataTable15_9  ;; 0xa00000a0
        MOVS     R1,#+24
        STR      R1,[R0, #+0]
//  162     FSMC_Bank4->SR4 = 0x00000000;
        LDR.W    R0,??DataTable15_10  ;; 0xa00000a4
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  163     FSMC_Bank4->PMEM4 = 0xFCFCFCFC;
        LDR.W    R0,??DataTable15_11  ;; 0xa00000a8
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
//  164     FSMC_Bank4->PATT4 = 0xFCFCFCFC;
        LDR.W    R0,??DataTable15_12  ;; 0xa00000ac
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
//  165     FSMC_Bank4->PIO4 = 0xFCFCFCFC;
        LDR.W    R0,??DataTable15_13  ;; 0xa00000b0
        MOVS     R1,#-50529028
        STR      R1,[R0, #+0]
//  166 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  167 
//  168 /**
//  169   * @brief  Initializes the FSMC NOR/SRAM Banks according to the specified
//  170   *         parameters in the FSMC_NORSRAMInitStruct.
//  171   * @param  FSMC_NORSRAMInitStruct : pointer to a FSMC_NORSRAMInitTypeDef
//  172   *         structure that contains the configuration information for
//  173   *        the FSMC NOR/SRAM specified Banks.
//  174   * @retval None
//  175   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function FSMC_NORSRAMInit
          CFI NoCalls
        THUMB
//  176 void FSMC_NORSRAMInit(FSMC_NORSRAMInitTypeDef *FSMC_NORSRAMInitStruct)
//  177 {
//  178     /* Check the parameters */
//  179     assert_param(IS_FSMC_NORSRAM_BANK(FSMC_NORSRAMInitStruct->FSMC_Bank));
//  180     assert_param(IS_FSMC_MUX(FSMC_NORSRAMInitStruct->FSMC_DataAddressMux));
//  181     assert_param(IS_FSMC_MEMORY(FSMC_NORSRAMInitStruct->FSMC_MemoryType));
//  182     assert_param(IS_FSMC_MEMORY_WIDTH(FSMC_NORSRAMInitStruct->FSMC_MemoryDataWidth));
//  183     assert_param(IS_FSMC_BURSTMODE(FSMC_NORSRAMInitStruct->FSMC_BurstAccessMode));
//  184     assert_param(IS_FSMC_ASYNWAIT(FSMC_NORSRAMInitStruct->FSMC_AsynchronousWait));
//  185     assert_param(IS_FSMC_WAIT_POLARITY(FSMC_NORSRAMInitStruct->FSMC_WaitSignalPolarity));
//  186     assert_param(IS_FSMC_WRAP_MODE(FSMC_NORSRAMInitStruct->FSMC_WrapMode));
//  187     assert_param(IS_FSMC_WAIT_SIGNAL_ACTIVE(FSMC_NORSRAMInitStruct->FSMC_WaitSignalActive));
//  188     assert_param(IS_FSMC_WRITE_OPERATION(FSMC_NORSRAMInitStruct->FSMC_WriteOperation));
//  189     assert_param(IS_FSMC_WAITE_SIGNAL(FSMC_NORSRAMInitStruct->FSMC_WaitSignal));
//  190     assert_param(IS_FSMC_EXTENDED_MODE(FSMC_NORSRAMInitStruct->FSMC_ExtendedMode));
//  191     assert_param(IS_FSMC_WRITE_BURST(FSMC_NORSRAMInitStruct->FSMC_WriteBurst));
//  192     assert_param(IS_FSMC_ADDRESS_SETUP_TIME(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressSetupTime));
//  193     assert_param(IS_FSMC_ADDRESS_HOLD_TIME(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressHoldTime));
//  194     assert_param(IS_FSMC_DATASETUP_TIME(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataSetupTime));
//  195     assert_param(IS_FSMC_TURNAROUND_TIME(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_BusTurnAroundDuration));
//  196     assert_param(IS_FSMC_CLK_DIV(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_CLKDivision));
//  197     assert_param(IS_FSMC_DATA_LATENCY(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataLatency));
//  198     assert_param(IS_FSMC_ACCESS_MODE(FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AccessMode));
//  199 
//  200     /* Bank1 NOR/SRAM control register configuration */
//  201     FSMC_Bank1->BTCR[FSMC_NORSRAMInitStruct->FSMC_Bank] =
//  202         (uint32_t)FSMC_NORSRAMInitStruct->FSMC_DataAddressMux |
//  203         FSMC_NORSRAMInitStruct->FSMC_MemoryType |
//  204         FSMC_NORSRAMInitStruct->FSMC_MemoryDataWidth |
//  205         FSMC_NORSRAMInitStruct->FSMC_BurstAccessMode |
//  206         FSMC_NORSRAMInitStruct->FSMC_AsynchronousWait |
//  207         FSMC_NORSRAMInitStruct->FSMC_WaitSignalPolarity |
//  208         FSMC_NORSRAMInitStruct->FSMC_WrapMode |
//  209         FSMC_NORSRAMInitStruct->FSMC_WaitSignalActive |
//  210         FSMC_NORSRAMInitStruct->FSMC_WriteOperation |
//  211         FSMC_NORSRAMInitStruct->FSMC_WaitSignal |
//  212         FSMC_NORSRAMInitStruct->FSMC_ExtendedMode |
//  213         FSMC_NORSRAMInitStruct->FSMC_WriteBurst;
FSMC_NORSRAMInit:
        LDR      R1,[R0, #+4]
        LDR      R2,[R0, #+8]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+12]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+16]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+20]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+24]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+28]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+32]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+36]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+40]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+44]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+48]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+0]
        LSLS     R2,R2,#+2
        SUBS     R2,R2,#+1610612736
        STR      R1,[R2, #+0]
//  214 
//  215     if(FSMC_NORSRAMInitStruct->FSMC_MemoryType == FSMC_MemoryType_NOR)
        LDR      R1,[R0, #+8]
        CMP      R1,#+8
        BNE.N    ??FSMC_NORSRAMInit_0
//  216     {
//  217         FSMC_Bank1->BTCR[FSMC_NORSRAMInitStruct->FSMC_Bank] |= (uint32_t)BCR_FACCEN_Set;
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+2
        SUBS     R1,R1,#+1610612736
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x40
        LDR      R2,[R0, #+0]
        LSLS     R2,R2,#+2
        SUBS     R2,R2,#+1610612736
        STR      R1,[R2, #+0]
//  218     }
//  219 
//  220     /* Bank1 NOR/SRAM timing register configuration */
//  221     FSMC_Bank1->BTCR[FSMC_NORSRAMInitStruct->FSMC_Bank+1] =
//  222         (uint32_t)FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressSetupTime |
//  223         (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressHoldTime << 4) |
//  224         (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataSetupTime << 8) |
//  225         (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_BusTurnAroundDuration << 16) |
//  226         (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_CLKDivision << 20) |
//  227         (FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataLatency << 24) |
//  228         FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AccessMode;
??FSMC_NORSRAMInit_0:
        LDR      R1,[R0, #+52]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+4
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+12]
        ORRS     R1,R1,R2, LSL #+16
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+16]
        ORRS     R1,R1,R2, LSL #+20
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+20]
        ORRS     R1,R1,R2, LSL #+24
        LDR      R2,[R0, #+52]
        LDR      R2,[R2, #+24]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+0]
        LSLS     R2,R2,#+2
        SUBS     R2,R2,#+1610612736
        STR      R1,[R2, #+4]
//  229 
//  230 
//  231     /* Bank1 NOR/SRAM timing register for write configuration, if extended mode is used */
//  232     if(FSMC_NORSRAMInitStruct->FSMC_ExtendedMode == FSMC_ExtendedMode_Enable)
        LDR      R1,[R0, #+44]
        CMP      R1,#+16384
        BNE.N    ??FSMC_NORSRAMInit_1
//  233     {
//  234         assert_param(IS_FSMC_ADDRESS_SETUP_TIME(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressSetupTime));
//  235         assert_param(IS_FSMC_ADDRESS_HOLD_TIME(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressHoldTime));
//  236         assert_param(IS_FSMC_DATASETUP_TIME(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataSetupTime));
//  237         assert_param(IS_FSMC_CLK_DIV(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_CLKDivision));
//  238         assert_param(IS_FSMC_DATA_LATENCY(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataLatency));
//  239         assert_param(IS_FSMC_ACCESS_MODE(FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AccessMode));
//  240         FSMC_Bank1E->BWTR[FSMC_NORSRAMInitStruct->FSMC_Bank] =
//  241             (uint32_t)FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressSetupTime |
//  242             (FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressHoldTime << 4 ) |
//  243             (FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataSetupTime << 8) |
//  244             (FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_CLKDivision << 20) |
//  245             (FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataLatency << 24) |
//  246             FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AccessMode;
        LDR      R1,[R0, #+56]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+4
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+16]
        ORRS     R1,R1,R2, LSL #+20
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+20]
        ORRS     R1,R1,R2, LSL #+24
        LDR      R2,[R0, #+56]
        LDR      R2,[R2, #+24]
        ORRS     R1,R2,R1
        LDR      R2,[R0, #+0]
        LDR.W    R3,??DataTable15  ;; 0xa0000104
        STR      R1,[R3, R2, LSL #+2]
        B.N      ??FSMC_NORSRAMInit_2
//  247     }
//  248     else
//  249     {
//  250         FSMC_Bank1E->BWTR[FSMC_NORSRAMInitStruct->FSMC_Bank] = 0x0FFFFFFF;
??FSMC_NORSRAMInit_1:
        LDR      R1,[R0, #+0]
        LDR.W    R2,??DataTable15  ;; 0xa0000104
        MVNS     R3,#-268435456
        STR      R3,[R2, R1, LSL #+2]
//  251     }
//  252 }
??FSMC_NORSRAMInit_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  253 
//  254 /**
//  255   * @brief  Initializes the FSMC NAND Banks according to the specified
//  256   *         parameters in the FSMC_NANDInitStruct.
//  257   * @param  FSMC_NANDInitStruct : pointer to a FSMC_NANDInitTypeDef
//  258   *         structure that contains the configuration information for the FSMC
//  259   *         NAND specified Banks.
//  260   * @retval None
//  261   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function FSMC_NANDInit
          CFI NoCalls
        THUMB
//  262 void FSMC_NANDInit(FSMC_NANDInitTypeDef *FSMC_NANDInitStruct)
//  263 {
FSMC_NANDInit:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  264     uint32_t tmppcr = 0x00000000, tmppmem = 0x00000000, tmppatt = 0x00000000;
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
//  265 
//  266     /* Check the parameters */
//  267     assert_param( IS_FSMC_NAND_BANK(FSMC_NANDInitStruct->FSMC_Bank));
//  268     assert_param( IS_FSMC_WAIT_FEATURE(FSMC_NANDInitStruct->FSMC_Waitfeature));
//  269     assert_param( IS_FSMC_MEMORY_WIDTH(FSMC_NANDInitStruct->FSMC_MemoryDataWidth));
//  270     assert_param( IS_FSMC_ECC_STATE(FSMC_NANDInitStruct->FSMC_ECC));
//  271     assert_param( IS_FSMC_ECCPAGE_SIZE(FSMC_NANDInitStruct->FSMC_ECCPageSize));
//  272     assert_param( IS_FSMC_TCLR_TIME(FSMC_NANDInitStruct->FSMC_TCLRSetupTime));
//  273     assert_param( IS_FSMC_TAR_TIME(FSMC_NANDInitStruct->FSMC_TARSetupTime));
//  274     assert_param(IS_FSMC_SETUP_TIME(FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_SetupTime));
//  275     assert_param(IS_FSMC_WAIT_TIME(FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_WaitSetupTime));
//  276     assert_param(IS_FSMC_HOLD_TIME(FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HoldSetupTime));
//  277     assert_param(IS_FSMC_HIZ_TIME(FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HiZSetupTime));
//  278     assert_param(IS_FSMC_SETUP_TIME(FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_SetupTime));
//  279     assert_param(IS_FSMC_WAIT_TIME(FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_WaitSetupTime));
//  280     assert_param(IS_FSMC_HOLD_TIME(FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HoldSetupTime));
//  281     assert_param(IS_FSMC_HIZ_TIME(FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HiZSetupTime));
//  282 
//  283     /* Set the tmppcr value according to FSMC_NANDInitStruct parameters */
//  284     tmppcr = (uint32_t)FSMC_NANDInitStruct->FSMC_Waitfeature |
//  285              PCR_MemoryType_NAND |
//  286              FSMC_NANDInitStruct->FSMC_MemoryDataWidth |
//  287              FSMC_NANDInitStruct->FSMC_ECC |
//  288              FSMC_NANDInitStruct->FSMC_ECCPageSize |
//  289              (FSMC_NANDInitStruct->FSMC_TCLRSetupTime << 9 ) |
//  290              (FSMC_NANDInitStruct->FSMC_TARSetupTime << 13);
        LDR      R4,[R0, #+4]
        LDR      R5,[R0, #+8]
        ORRS     R4,R5,R4
        LDR      R5,[R0, #+12]
        ORRS     R4,R5,R4
        LDR      R5,[R0, #+16]
        ORRS     R4,R5,R4
        LDR      R5,[R0, #+20]
        ORRS     R4,R4,R5, LSL #+9
        LDR      R5,[R0, #+24]
        ORRS     R4,R4,R5, LSL #+13
        ORRS     R4,R4,#0x8
        MOVS     R1,R4
//  291 
//  292     /* Set tmppmem value according to FSMC_CommonSpaceTimingStructure parameters */
//  293     tmppmem = (uint32_t)FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_SetupTime |
//  294               (FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_WaitSetupTime << 8) |
//  295               (FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HoldSetupTime << 16) |
//  296               (FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HiZSetupTime << 24);
        LDR      R4,[R0, #+28]
        LDR      R4,[R4, #+0]
        LDR      R5,[R0, #+28]
        LDR      R5,[R5, #+4]
        ORRS     R4,R4,R5, LSL #+8
        LDR      R5,[R0, #+28]
        LDR      R5,[R5, #+8]
        ORRS     R4,R4,R5, LSL #+16
        LDR      R5,[R0, #+28]
        LDR      R5,[R5, #+12]
        ORRS     R4,R4,R5, LSL #+24
        MOVS     R2,R4
//  297 
//  298     /* Set tmppatt value according to FSMC_AttributeSpaceTimingStructure parameters */
//  299     tmppatt = (uint32_t)FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_SetupTime |
//  300               (FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_WaitSetupTime << 8) |
//  301               (FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HoldSetupTime << 16) |
//  302               (FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HiZSetupTime << 24);
        LDR      R4,[R0, #+32]
        LDR      R4,[R4, #+0]
        LDR      R5,[R0, #+32]
        LDR      R5,[R5, #+4]
        ORRS     R4,R4,R5, LSL #+8
        LDR      R5,[R0, #+32]
        LDR      R5,[R5, #+8]
        ORRS     R4,R4,R5, LSL #+16
        LDR      R5,[R0, #+32]
        LDR      R5,[R5, #+12]
        ORRS     R4,R4,R5, LSL #+24
        MOVS     R3,R4
//  303 
//  304     if(FSMC_NANDInitStruct->FSMC_Bank == FSMC_Bank2_NAND)
        LDR      R4,[R0, #+0]
        CMP      R4,#+16
        BNE.N    ??FSMC_NANDInit_0
//  305     {
//  306         /* FSMC_Bank2_NAND registers configuration */
//  307         FSMC_Bank2->PCR2 = tmppcr;
        LDR.W    R4,??DataTable15_1  ;; 0xa0000060
        STR      R1,[R4, #+0]
//  308         FSMC_Bank2->PMEM2 = tmppmem;
        LDR.W    R4,??DataTable15_3  ;; 0xa0000068
        STR      R2,[R4, #+0]
//  309         FSMC_Bank2->PATT2 = tmppatt;
        LDR.W    R4,??DataTable15_4  ;; 0xa000006c
        STR      R3,[R4, #+0]
        B.N      ??FSMC_NANDInit_1
//  310     }
//  311     else
//  312     {
//  313         /* FSMC_Bank3_NAND registers configuration */
//  314         FSMC_Bank3->PCR3 = tmppcr;
??FSMC_NANDInit_0:
        LDR.W    R4,??DataTable15_5  ;; 0xa0000080
        STR      R1,[R4, #+0]
//  315         FSMC_Bank3->PMEM3 = tmppmem;
        LDR.W    R4,??DataTable15_7  ;; 0xa0000088
        STR      R2,[R4, #+0]
//  316         FSMC_Bank3->PATT3 = tmppatt;
        LDR.W    R4,??DataTable15_8  ;; 0xa000008c
        STR      R3,[R4, #+0]
//  317     }
//  318 }
??FSMC_NANDInit_1:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  319 
//  320 /**
//  321   * @brief  Initializes the FSMC PCCARD Bank according to the specified
//  322   *         parameters in the FSMC_PCCARDInitStruct.
//  323   * @param  FSMC_PCCARDInitStruct : pointer to a FSMC_PCCARDInitTypeDef
//  324   *         structure that contains the configuration information for the FSMC
//  325   *         PCCARD Bank.
//  326   * @retval None
//  327   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function FSMC_PCCARDInit
          CFI NoCalls
        THUMB
//  328 void FSMC_PCCARDInit(FSMC_PCCARDInitTypeDef *FSMC_PCCARDInitStruct)
//  329 {
//  330     /* Check the parameters */
//  331     assert_param(IS_FSMC_WAIT_FEATURE(FSMC_PCCARDInitStruct->FSMC_Waitfeature));
//  332     assert_param(IS_FSMC_TCLR_TIME(FSMC_PCCARDInitStruct->FSMC_TCLRSetupTime));
//  333     assert_param(IS_FSMC_TAR_TIME(FSMC_PCCARDInitStruct->FSMC_TARSetupTime));
//  334 
//  335     assert_param(IS_FSMC_SETUP_TIME(FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_SetupTime));
//  336     assert_param(IS_FSMC_WAIT_TIME(FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_WaitSetupTime));
//  337     assert_param(IS_FSMC_HOLD_TIME(FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HoldSetupTime));
//  338     assert_param(IS_FSMC_HIZ_TIME(FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HiZSetupTime));
//  339 
//  340     assert_param(IS_FSMC_SETUP_TIME(FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_SetupTime));
//  341     assert_param(IS_FSMC_WAIT_TIME(FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_WaitSetupTime));
//  342     assert_param(IS_FSMC_HOLD_TIME(FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HoldSetupTime));
//  343     assert_param(IS_FSMC_HIZ_TIME(FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HiZSetupTime));
//  344     assert_param(IS_FSMC_SETUP_TIME(FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_SetupTime));
//  345     assert_param(IS_FSMC_WAIT_TIME(FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_WaitSetupTime));
//  346     assert_param(IS_FSMC_HOLD_TIME(FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HoldSetupTime));
//  347     assert_param(IS_FSMC_HIZ_TIME(FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HiZSetupTime));
//  348 
//  349     /* Set the PCR4 register value according to FSMC_PCCARDInitStruct parameters */
//  350     FSMC_Bank4->PCR4 = (uint32_t)FSMC_PCCARDInitStruct->FSMC_Waitfeature |
//  351                        FSMC_MemoryDataWidth_16b |
//  352                        (FSMC_PCCARDInitStruct->FSMC_TCLRSetupTime << 9) |
//  353                        (FSMC_PCCARDInitStruct->FSMC_TARSetupTime << 13);
FSMC_PCCARDInit:
        LDR      R1,[R0, #+0]
        LDR      R2,[R0, #+4]
        ORRS     R1,R1,R2, LSL #+9
        LDR      R2,[R0, #+8]
        ORRS     R1,R1,R2, LSL #+13
        ORRS     R1,R1,#0x10
        LDR.W    R2,??DataTable15_9  ;; 0xa00000a0
        STR      R1,[R2, #+0]
//  354 
//  355     /* Set PMEM4 register value according to FSMC_CommonSpaceTimingStructure parameters */
//  356     FSMC_Bank4->PMEM4 = (uint32_t)FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_SetupTime |
//  357                         (FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_WaitSetupTime << 8) |
//  358                         (FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HoldSetupTime << 16) |
//  359                         (FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HiZSetupTime << 24);
        LDR      R1,[R0, #+12]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+12]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+12]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+16
        LDR      R2,[R0, #+12]
        LDR      R2,[R2, #+12]
        ORRS     R1,R1,R2, LSL #+24
        LDR.W    R2,??DataTable15_11  ;; 0xa00000a8
        STR      R1,[R2, #+0]
//  360 
//  361     /* Set PATT4 register value according to FSMC_AttributeSpaceTimingStructure parameters */
//  362     FSMC_Bank4->PATT4 = (uint32_t)FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_SetupTime |
//  363                         (FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_WaitSetupTime << 8) |
//  364                         (FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HoldSetupTime << 16) |
//  365                         (FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HiZSetupTime << 24);
        LDR      R1,[R0, #+16]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+16]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+16]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+16
        LDR      R2,[R0, #+16]
        LDR      R2,[R2, #+12]
        ORRS     R1,R1,R2, LSL #+24
        LDR.W    R2,??DataTable15_12  ;; 0xa00000ac
        STR      R1,[R2, #+0]
//  366 
//  367     /* Set PIO4 register value according to FSMC_IOSpaceTimingStructure parameters */
//  368     FSMC_Bank4->PIO4 = (uint32_t)FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_SetupTime |
//  369                        (FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_WaitSetupTime << 8) |
//  370                        (FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HoldSetupTime << 16) |
//  371                        (FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HiZSetupTime << 24);
        LDR      R1,[R0, #+20]
        LDR      R1,[R1, #+0]
        LDR      R2,[R0, #+20]
        LDR      R2,[R2, #+4]
        ORRS     R1,R1,R2, LSL #+8
        LDR      R2,[R0, #+20]
        LDR      R2,[R2, #+8]
        ORRS     R1,R1,R2, LSL #+16
        LDR      R2,[R0, #+20]
        LDR      R2,[R2, #+12]
        ORRS     R1,R1,R2, LSL #+24
        LDR.W    R2,??DataTable15_13  ;; 0xa00000b0
        STR      R1,[R2, #+0]
//  372 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  373 
//  374 /**
//  375   * @brief  Fills each FSMC_NORSRAMInitStruct member with its default value.
//  376   * @param  FSMC_NORSRAMInitStruct: pointer to a FSMC_NORSRAMInitTypeDef
//  377   *         structure which will be initialized.
//  378   * @retval None
//  379   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function FSMC_NORSRAMStructInit
          CFI NoCalls
        THUMB
//  380 void FSMC_NORSRAMStructInit(FSMC_NORSRAMInitTypeDef *FSMC_NORSRAMInitStruct)
//  381 {
//  382     /* Reset NOR/SRAM Init structure parameters values */
//  383     FSMC_NORSRAMInitStruct->FSMC_Bank = FSMC_Bank1_NORSRAM1;
FSMC_NORSRAMStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  384     FSMC_NORSRAMInitStruct->FSMC_DataAddressMux = FSMC_DataAddressMux_Enable;
        MOVS     R1,#+2
        STR      R1,[R0, #+4]
//  385     FSMC_NORSRAMInitStruct->FSMC_MemoryType = FSMC_MemoryType_SRAM;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  386     FSMC_NORSRAMInitStruct->FSMC_MemoryDataWidth = FSMC_MemoryDataWidth_8b;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  387     FSMC_NORSRAMInitStruct->FSMC_BurstAccessMode = FSMC_BurstAccessMode_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  388     FSMC_NORSRAMInitStruct->FSMC_AsynchronousWait = FSMC_AsynchronousWait_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
//  389     FSMC_NORSRAMInitStruct->FSMC_WaitSignalPolarity = FSMC_WaitSignalPolarity_Low;
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  390     FSMC_NORSRAMInitStruct->FSMC_WrapMode = FSMC_WrapMode_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
//  391     FSMC_NORSRAMInitStruct->FSMC_WaitSignalActive = FSMC_WaitSignalActive_BeforeWaitState;
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//  392     FSMC_NORSRAMInitStruct->FSMC_WriteOperation = FSMC_WriteOperation_Enable;
        MOV      R1,#+4096
        STR      R1,[R0, #+36]
//  393     FSMC_NORSRAMInitStruct->FSMC_WaitSignal = FSMC_WaitSignal_Enable;
        MOV      R1,#+8192
        STR      R1,[R0, #+40]
//  394     FSMC_NORSRAMInitStruct->FSMC_ExtendedMode = FSMC_ExtendedMode_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
//  395     FSMC_NORSRAMInitStruct->FSMC_WriteBurst = FSMC_WriteBurst_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
//  396     FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressSetupTime = 0xF;
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+0]
//  397     FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AddressHoldTime = 0xF;
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+4]
//  398     FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataSetupTime = 0xFF;
        LDR      R1,[R0, #+52]
        MOVS     R2,#+255
        STR      R2,[R1, #+8]
//  399     FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_BusTurnAroundDuration = 0xF;
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+12]
//  400     FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_CLKDivision = 0xF;
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+16]
//  401     FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_DataLatency = 0xF;
        LDR      R1,[R0, #+52]
        MOVS     R2,#+15
        STR      R2,[R1, #+20]
//  402     FSMC_NORSRAMInitStruct->FSMC_ReadWriteTimingStruct->FSMC_AccessMode = FSMC_AccessMode_A;
        LDR      R1,[R0, #+52]
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
//  403     FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressSetupTime = 0xF;
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+0]
//  404     FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AddressHoldTime = 0xF;
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+4]
//  405     FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataSetupTime = 0xFF;
        LDR      R1,[R0, #+56]
        MOVS     R2,#+255
        STR      R2,[R1, #+8]
//  406     FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_BusTurnAroundDuration = 0xF;
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+12]
//  407     FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_CLKDivision = 0xF;
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+16]
//  408     FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_DataLatency = 0xF;
        LDR      R1,[R0, #+56]
        MOVS     R2,#+15
        STR      R2,[R1, #+20]
//  409     FSMC_NORSRAMInitStruct->FSMC_WriteTimingStruct->FSMC_AccessMode = FSMC_AccessMode_A;
        LDR      R1,[R0, #+56]
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
//  410 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  411 
//  412 /**
//  413   * @brief  Fills each FSMC_NANDInitStruct member with its default value.
//  414   * @param  FSMC_NANDInitStruct: pointer to a FSMC_NANDInitTypeDef
//  415   *         structure which will be initialized.
//  416   * @retval None
//  417   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function FSMC_NANDStructInit
          CFI NoCalls
        THUMB
//  418 void FSMC_NANDStructInit(FSMC_NANDInitTypeDef *FSMC_NANDInitStruct)
//  419 {
//  420     /* Reset NAND Init structure parameters values */
//  421     FSMC_NANDInitStruct->FSMC_Bank = FSMC_Bank2_NAND;
FSMC_NANDStructInit:
        MOVS     R1,#+16
        STR      R1,[R0, #+0]
//  422     FSMC_NANDInitStruct->FSMC_Waitfeature = FSMC_Waitfeature_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  423     FSMC_NANDInitStruct->FSMC_MemoryDataWidth = FSMC_MemoryDataWidth_8b;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  424     FSMC_NANDInitStruct->FSMC_ECC = FSMC_ECC_Disable;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  425     FSMC_NANDInitStruct->FSMC_ECCPageSize = FSMC_ECCPageSize_256Bytes;
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
//  426     FSMC_NANDInitStruct->FSMC_TCLRSetupTime = 0x0;
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
//  427     FSMC_NANDInitStruct->FSMC_TARSetupTime = 0x0;
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
//  428     FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_SetupTime = 0xFC;
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
//  429     FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_WaitSetupTime = 0xFC;
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
//  430     FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HoldSetupTime = 0xFC;
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
//  431     FSMC_NANDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HiZSetupTime = 0xFC;
        LDR      R1,[R0, #+28]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
//  432     FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_SetupTime = 0xFC;
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
//  433     FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_WaitSetupTime = 0xFC;
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
//  434     FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HoldSetupTime = 0xFC;
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
//  435     FSMC_NANDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HiZSetupTime = 0xFC;
        LDR      R1,[R0, #+32]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
//  436 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  437 
//  438 /**
//  439   * @brief  Fills each FSMC_PCCARDInitStruct member with its default value.
//  440   * @param  FSMC_PCCARDInitStruct: pointer to a FSMC_PCCARDInitTypeDef
//  441   *         structure which will be initialized.
//  442   * @retval None
//  443   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function FSMC_PCCARDStructInit
          CFI NoCalls
        THUMB
//  444 void FSMC_PCCARDStructInit(FSMC_PCCARDInitTypeDef *FSMC_PCCARDInitStruct)
//  445 {
//  446     /* Reset PCCARD Init structure parameters values */
//  447     FSMC_PCCARDInitStruct->FSMC_Waitfeature = FSMC_Waitfeature_Disable;
FSMC_PCCARDStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  448     FSMC_PCCARDInitStruct->FSMC_TCLRSetupTime = 0x0;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  449     FSMC_PCCARDInitStruct->FSMC_TARSetupTime = 0x0;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  450     FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_SetupTime = 0xFC;
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
//  451     FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_WaitSetupTime = 0xFC;
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
//  452     FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HoldSetupTime = 0xFC;
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
//  453     FSMC_PCCARDInitStruct->FSMC_CommonSpaceTimingStruct->FSMC_HiZSetupTime = 0xFC;
        LDR      R1,[R0, #+12]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
//  454     FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_SetupTime = 0xFC;
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
//  455     FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_WaitSetupTime = 0xFC;
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
//  456     FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HoldSetupTime = 0xFC;
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
//  457     FSMC_PCCARDInitStruct->FSMC_AttributeSpaceTimingStruct->FSMC_HiZSetupTime = 0xFC;
        LDR      R1,[R0, #+16]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
//  458     FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_SetupTime = 0xFC;
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+0]
//  459     FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_WaitSetupTime = 0xFC;
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+4]
//  460     FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HoldSetupTime = 0xFC;
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+8]
//  461     FSMC_PCCARDInitStruct->FSMC_IOSpaceTimingStruct->FSMC_HiZSetupTime = 0xFC;
        LDR      R1,[R0, #+20]
        MOVS     R2,#+252
        STR      R2,[R1, #+12]
//  462 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  463 
//  464 /**
//  465   * @brief  Enables or disables the specified NOR/SRAM Memory Bank.
//  466   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  467   *   This parameter can be one of the following values:
//  468   *     @arg FSMC_Bank1_NORSRAM1: FSMC Bank1 NOR/SRAM1
//  469   *     @arg FSMC_Bank1_NORSRAM2: FSMC Bank1 NOR/SRAM2
//  470   *     @arg FSMC_Bank1_NORSRAM3: FSMC Bank1 NOR/SRAM3
//  471   *     @arg FSMC_Bank1_NORSRAM4: FSMC Bank1 NOR/SRAM4
//  472   * @param  NewState: new state of the FSMC_Bank. This parameter can be: ENABLE or DISABLE.
//  473   * @retval None
//  474   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function FSMC_NORSRAMCmd
          CFI NoCalls
        THUMB
//  475 void FSMC_NORSRAMCmd(uint32_t FSMC_Bank, FunctionalState NewState)
//  476 {
//  477     assert_param(IS_FSMC_NORSRAM_BANK(FSMC_Bank));
//  478     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  479 
//  480     if (NewState != DISABLE)
FSMC_NORSRAMCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FSMC_NORSRAMCmd_0
//  481     {
//  482         /* Enable the selected NOR/SRAM Bank by setting the PBKEN bit in the BCRx register */
//  483         FSMC_Bank1->BTCR[FSMC_Bank] |= BCR_MBKEN_Set;
        LSLS     R2,R0,#+2
        SUBS     R2,R2,#+1610612736
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LSLS     R3,R0,#+2
        SUBS     R3,R3,#+1610612736
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NORSRAMCmd_1
//  484     }
//  485     else
//  486     {
//  487         /* Disable the selected NOR/SRAM Bank by clearing the PBKEN bit in the BCRx register */
//  488         FSMC_Bank1->BTCR[FSMC_Bank] &= BCR_MBKEN_Reset;
??FSMC_NORSRAMCmd_0:
        LSLS     R2,R0,#+2
        SUBS     R2,R2,#+1610612736
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable15_14  ;; 0xffffe
        ANDS     R2,R3,R2
        LSLS     R3,R0,#+2
        SUBS     R3,R3,#+1610612736
        STR      R2,[R3, #+0]
//  489     }
//  490 }
??FSMC_NORSRAMCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  491 
//  492 /**
//  493   * @brief  Enables or disables the specified NAND Memory Bank.
//  494   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  495   *   This parameter can be one of the following values:
//  496   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  497   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  498   * @param  NewState: new state of the FSMC_Bank. This parameter can be: ENABLE or DISABLE.
//  499   * @retval None
//  500   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function FSMC_NANDCmd
          CFI NoCalls
        THUMB
//  501 void FSMC_NANDCmd(uint32_t FSMC_Bank, FunctionalState NewState)
//  502 {
//  503     assert_param(IS_FSMC_NAND_BANK(FSMC_Bank));
//  504     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  505 
//  506     if (NewState != DISABLE)
FSMC_NANDCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FSMC_NANDCmd_0
//  507     {
//  508         /* Enable the selected NAND Bank by setting the PBKEN bit in the PCRx register */
//  509         if(FSMC_Bank == FSMC_Bank2_NAND)
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDCmd_1
//  510         {
//  511             FSMC_Bank2->PCR2 |= PCR_PBKEN_Set;
        LDR.N    R2,??DataTable15_1  ;; 0xa0000060
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x4
        LDR.N    R3,??DataTable15_1  ;; 0xa0000060
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDCmd_2
//  512         }
//  513         else
//  514         {
//  515             FSMC_Bank3->PCR3 |= PCR_PBKEN_Set;
??FSMC_NANDCmd_1:
        LDR.N    R2,??DataTable15_5  ;; 0xa0000080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x4
        LDR.N    R3,??DataTable15_5  ;; 0xa0000080
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDCmd_2
//  516         }
//  517     }
//  518     else
//  519     {
//  520         /* Disable the selected NAND Bank by clearing the PBKEN bit in the PCRx register */
//  521         if(FSMC_Bank == FSMC_Bank2_NAND)
??FSMC_NANDCmd_0:
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDCmd_3
//  522         {
//  523             FSMC_Bank2->PCR2 &= PCR_PBKEN_Reset;
        LDR.N    R2,??DataTable15_1  ;; 0xa0000060
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable15_15  ;; 0xffffb
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_1  ;; 0xa0000060
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDCmd_2
//  524         }
//  525         else
//  526         {
//  527             FSMC_Bank3->PCR3 &= PCR_PBKEN_Reset;
??FSMC_NANDCmd_3:
        LDR.N    R2,??DataTable15_5  ;; 0xa0000080
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable15_15  ;; 0xffffb
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_5  ;; 0xa0000080
        STR      R2,[R3, #+0]
//  528         }
//  529     }
//  530 }
??FSMC_NANDCmd_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  531 
//  532 /**
//  533   * @brief  Enables or disables the PCCARD Memory Bank.
//  534   * @param  NewState: new state of the PCCARD Memory Bank.
//  535   *   This parameter can be: ENABLE or DISABLE.
//  536   * @retval None
//  537   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function FSMC_PCCARDCmd
          CFI NoCalls
        THUMB
//  538 void FSMC_PCCARDCmd(FunctionalState NewState)
//  539 {
//  540     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  541 
//  542     if (NewState != DISABLE)
FSMC_PCCARDCmd:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??FSMC_PCCARDCmd_0
//  543     {
//  544         /* Enable the PCCARD Bank by setting the PBKEN bit in the PCR4 register */
//  545         FSMC_Bank4->PCR4 |= PCR_PBKEN_Set;
        LDR.N    R1,??DataTable15_9  ;; 0xa00000a0
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x4
        LDR.N    R2,??DataTable15_9  ;; 0xa00000a0
        STR      R1,[R2, #+0]
        B.N      ??FSMC_PCCARDCmd_1
//  546     }
//  547     else
//  548     {
//  549         /* Disable the PCCARD Bank by clearing the PBKEN bit in the PCR4 register */
//  550         FSMC_Bank4->PCR4 &= PCR_PBKEN_Reset;
??FSMC_PCCARDCmd_0:
        LDR.N    R1,??DataTable15_9  ;; 0xa00000a0
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable15_15  ;; 0xffffb
        ANDS     R1,R2,R1
        LDR.N    R2,??DataTable15_9  ;; 0xa00000a0
        STR      R1,[R2, #+0]
//  551     }
//  552 }
??FSMC_PCCARDCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  553 
//  554 /**
//  555   * @brief  Enables or disables the FSMC NAND ECC feature.
//  556   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  557   *   This parameter can be one of the following values:
//  558   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  559   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  560   * @param  NewState: new state of the FSMC NAND ECC feature.
//  561   *   This parameter can be: ENABLE or DISABLE.
//  562   * @retval None
//  563   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function FSMC_NANDECCCmd
          CFI NoCalls
        THUMB
//  564 void FSMC_NANDECCCmd(uint32_t FSMC_Bank, FunctionalState NewState)
//  565 {
//  566     assert_param(IS_FSMC_NAND_BANK(FSMC_Bank));
//  567     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  568 
//  569     if (NewState != DISABLE)
FSMC_NANDECCCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??FSMC_NANDECCCmd_0
//  570     {
//  571         /* Enable the selected NAND Bank ECC function by setting the ECCEN bit in the PCRx register */
//  572         if(FSMC_Bank == FSMC_Bank2_NAND)
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDECCCmd_1
//  573         {
//  574             FSMC_Bank2->PCR2 |= PCR_ECCEN_Set;
        LDR.N    R2,??DataTable15_1  ;; 0xa0000060
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.N    R3,??DataTable15_1  ;; 0xa0000060
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDECCCmd_2
//  575         }
//  576         else
//  577         {
//  578             FSMC_Bank3->PCR3 |= PCR_ECCEN_Set;
??FSMC_NANDECCCmd_1:
        LDR.N    R2,??DataTable15_5  ;; 0xa0000080
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.N    R3,??DataTable15_5  ;; 0xa0000080
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDECCCmd_2
//  579         }
//  580     }
//  581     else
//  582     {
//  583         /* Disable the selected NAND Bank ECC function by clearing the ECCEN bit in the PCRx register */
//  584         if(FSMC_Bank == FSMC_Bank2_NAND)
??FSMC_NANDECCCmd_0:
        CMP      R0,#+16
        BNE.N    ??FSMC_NANDECCCmd_3
//  585         {
//  586             FSMC_Bank2->PCR2 &= PCR_ECCEN_Reset;
        LDR.N    R2,??DataTable15_1  ;; 0xa0000060
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable15_16  ;; 0xfffbf
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_1  ;; 0xa0000060
        STR      R2,[R3, #+0]
        B.N      ??FSMC_NANDECCCmd_2
//  587         }
//  588         else
//  589         {
//  590             FSMC_Bank3->PCR3 &= PCR_ECCEN_Reset;
??FSMC_NANDECCCmd_3:
        LDR.N    R2,??DataTable15_5  ;; 0xa0000080
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable15_16  ;; 0xfffbf
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable15_5  ;; 0xa0000080
        STR      R2,[R3, #+0]
//  591         }
//  592     }
//  593 }
??FSMC_NANDECCCmd_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  594 
//  595 /**
//  596   * @brief  Returns the error correction code register value.
//  597   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  598   *   This parameter can be one of the following values:
//  599   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  600   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  601   * @retval The Error Correction Code (ECC) value.
//  602   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function FSMC_GetECC
          CFI NoCalls
        THUMB
//  603 uint32_t FSMC_GetECC(uint32_t FSMC_Bank)
//  604 {
FSMC_GetECC:
        MOVS     R1,R0
//  605     uint32_t eccval = 0x00000000;
        MOVS     R0,#+0
//  606 
//  607     if(FSMC_Bank == FSMC_Bank2_NAND)
        CMP      R1,#+16
        BNE.N    ??FSMC_GetECC_0
//  608     {
//  609         /* Get the ECCR2 register value */
//  610         eccval = FSMC_Bank2->ECCR2;
        LDR.N    R2,??DataTable15_17  ;; 0xa0000074
        LDR      R2,[R2, #+0]
        MOVS     R0,R2
        B.N      ??FSMC_GetECC_1
//  611     }
//  612     else
//  613     {
//  614         /* Get the ECCR3 register value */
//  615         eccval = FSMC_Bank3->ECCR3;
??FSMC_GetECC_0:
        LDR.N    R2,??DataTable15_18  ;; 0xa0000094
        LDR      R2,[R2, #+0]
        MOVS     R0,R2
//  616     }
//  617     /* Return the error correction code value */
//  618     return(eccval);
??FSMC_GetECC_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  619 }
//  620 
//  621 /**
//  622   * @brief  Enables or disables the specified FSMC interrupts.
//  623   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  624   *   This parameter can be one of the following values:
//  625   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  626   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  627   *     @arg FSMC_Bank4_PCCARD: FSMC Bank4 PCCARD
//  628   * @param  FSMC_IT: specifies the FSMC interrupt sources to be enabled or disabled.
//  629   *   This parameter can be any combination of the following values:
//  630   *     @arg FSMC_IT_RisingEdge: Rising edge detection interrupt.
//  631   *     @arg FSMC_IT_Level: Level edge detection interrupt.
//  632   *     @arg FSMC_IT_FallingEdge: Falling edge detection interrupt.
//  633   * @param  NewState: new state of the specified FSMC interrupts.
//  634   *   This parameter can be: ENABLE or DISABLE.
//  635   * @retval None
//  636   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function FSMC_ITConfig
          CFI NoCalls
        THUMB
//  637 void FSMC_ITConfig(uint32_t FSMC_Bank, uint32_t FSMC_IT, FunctionalState NewState)
//  638 {
FSMC_ITConfig:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  639     assert_param(IS_FSMC_IT_BANK(FSMC_Bank));
//  640     assert_param(IS_FSMC_IT(FSMC_IT));
//  641     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  642 
//  643     if (NewState != DISABLE)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??FSMC_ITConfig_0
//  644     {
//  645         /* Enable the selected FSMC_Bank2 interrupts */
//  646         if(FSMC_Bank == FSMC_Bank2_NAND)
        CMP      R0,#+16
        BNE.N    ??FSMC_ITConfig_1
//  647         {
//  648             FSMC_Bank2->SR2 |= FSMC_IT;
        LDR.N    R3,??DataTable15_2  ;; 0xa0000064
        LDR      R3,[R3, #+0]
        ORRS     R3,R1,R3
        LDR.N    R4,??DataTable15_2  ;; 0xa0000064
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
//  649         }
//  650         /* Enable the selected FSMC_Bank3 interrupts */
//  651         else if (FSMC_Bank == FSMC_Bank3_NAND)
??FSMC_ITConfig_1:
        MOV      R3,#+256
        CMP      R0,R3
        BNE.N    ??FSMC_ITConfig_3
//  652         {
//  653             FSMC_Bank3->SR3 |= FSMC_IT;
        LDR.N    R3,??DataTable15_6  ;; 0xa0000084
        LDR      R3,[R3, #+0]
        ORRS     R3,R1,R3
        LDR.N    R4,??DataTable15_6  ;; 0xa0000084
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
//  654         }
//  655         /* Enable the selected FSMC_Bank4 interrupts */
//  656         else
//  657         {
//  658             FSMC_Bank4->SR4 |= FSMC_IT;
??FSMC_ITConfig_3:
        LDR.N    R3,??DataTable15_10  ;; 0xa00000a4
        LDR      R3,[R3, #+0]
        ORRS     R3,R1,R3
        LDR.N    R4,??DataTable15_10  ;; 0xa00000a4
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
//  659         }
//  660     }
//  661     else
//  662     {
//  663         /* Disable the selected FSMC_Bank2 interrupts */
//  664         if(FSMC_Bank == FSMC_Bank2_NAND)
??FSMC_ITConfig_0:
        CMP      R0,#+16
        BNE.N    ??FSMC_ITConfig_4
//  665         {
//  666 
//  667             FSMC_Bank2->SR2 &= (uint32_t)~FSMC_IT;
        LDR.N    R3,??DataTable15_2  ;; 0xa0000064
        LDR      R3,[R3, #+0]
        BICS     R3,R3,R1
        LDR.N    R4,??DataTable15_2  ;; 0xa0000064
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
//  668         }
//  669         /* Disable the selected FSMC_Bank3 interrupts */
//  670         else if (FSMC_Bank == FSMC_Bank3_NAND)
??FSMC_ITConfig_4:
        MOV      R3,#+256
        CMP      R0,R3
        BNE.N    ??FSMC_ITConfig_5
//  671         {
//  672             FSMC_Bank3->SR3 &= (uint32_t)~FSMC_IT;
        LDR.N    R3,??DataTable15_6  ;; 0xa0000084
        LDR      R3,[R3, #+0]
        BICS     R3,R3,R1
        LDR.N    R4,??DataTable15_6  ;; 0xa0000084
        STR      R3,[R4, #+0]
        B.N      ??FSMC_ITConfig_2
//  673         }
//  674         /* Disable the selected FSMC_Bank4 interrupts */
//  675         else
//  676         {
//  677             FSMC_Bank4->SR4 &= (uint32_t)~FSMC_IT;
??FSMC_ITConfig_5:
        LDR.N    R3,??DataTable15_10  ;; 0xa00000a4
        LDR      R3,[R3, #+0]
        BICS     R3,R3,R1
        LDR.N    R4,??DataTable15_10  ;; 0xa00000a4
        STR      R3,[R4, #+0]
//  678         }
//  679     }
//  680 }
??FSMC_ITConfig_2:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  681 
//  682 /**
//  683   * @brief  Checks whether the specified FSMC flag is set or not.
//  684   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  685   *   This parameter can be one of the following values:
//  686   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  687   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  688   *     @arg FSMC_Bank4_PCCARD: FSMC Bank4 PCCARD
//  689   * @param  FSMC_FLAG: specifies the flag to check.
//  690   *   This parameter can be one of the following values:
//  691   *     @arg FSMC_FLAG_RisingEdge: Rising egde detection Flag.
//  692   *     @arg FSMC_FLAG_Level: Level detection Flag.
//  693   *     @arg FSMC_FLAG_FallingEdge: Falling egde detection Flag.
//  694   *     @arg FSMC_FLAG_FEMPT: Fifo empty Flag.
//  695   * @retval The new state of FSMC_FLAG (SET or RESET).
//  696   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function FSMC_GetFlagStatus
          CFI NoCalls
        THUMB
//  697 FlagStatus FSMC_GetFlagStatus(uint32_t FSMC_Bank, uint32_t FSMC_FLAG)
//  698 {
FSMC_GetFlagStatus:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R2,R0
//  699     FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
//  700     uint32_t tmpsr = 0x00000000;
        MOVS     R3,#+0
//  701 
//  702     /* Check the parameters */
//  703     assert_param(IS_FSMC_GETFLAG_BANK(FSMC_Bank));
//  704     assert_param(IS_FSMC_GET_FLAG(FSMC_FLAG));
//  705 
//  706     if(FSMC_Bank == FSMC_Bank2_NAND)
        CMP      R2,#+16
        BNE.N    ??FSMC_GetFlagStatus_0
//  707     {
//  708         tmpsr = FSMC_Bank2->SR2;
        LDR.N    R4,??DataTable15_2  ;; 0xa0000064
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
        B.N      ??FSMC_GetFlagStatus_1
//  709     }
//  710     else if(FSMC_Bank == FSMC_Bank3_NAND)
??FSMC_GetFlagStatus_0:
        MOV      R4,#+256
        CMP      R2,R4
        BNE.N    ??FSMC_GetFlagStatus_2
//  711     {
//  712         tmpsr = FSMC_Bank3->SR3;
        LDR.N    R4,??DataTable15_6  ;; 0xa0000084
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
        B.N      ??FSMC_GetFlagStatus_1
//  713     }
//  714     /* FSMC_Bank4_PCCARD*/
//  715     else
//  716     {
//  717         tmpsr = FSMC_Bank4->SR4;
??FSMC_GetFlagStatus_2:
        LDR.N    R4,??DataTable15_10  ;; 0xa00000a4
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
//  718     }
//  719 
//  720     /* Get the flag status */
//  721     if ((tmpsr & FSMC_FLAG) != (uint16_t)RESET )
??FSMC_GetFlagStatus_1:
        TST      R3,R1
        BEQ.N    ??FSMC_GetFlagStatus_3
//  722     {
//  723         bitstatus = SET;
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??FSMC_GetFlagStatus_4
//  724     }
//  725     else
//  726     {
//  727         bitstatus = RESET;
??FSMC_GetFlagStatus_3:
        MOVS     R4,#+0
        MOVS     R0,R4
//  728     }
//  729     /* Return the flag status */
//  730     return bitstatus;
??FSMC_GetFlagStatus_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  731 }
//  732 
//  733 /**
//  734   * @brief  Clears the FSMC's pending flags.
//  735   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  736   *   This parameter can be one of the following values:
//  737   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  738   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  739   *     @arg FSMC_Bank4_PCCARD: FSMC Bank4 PCCARD
//  740   * @param  FSMC_FLAG: specifies the flag to clear.
//  741   *   This parameter can be any combination of the following values:
//  742   *     @arg FSMC_FLAG_RisingEdge: Rising egde detection Flag.
//  743   *     @arg FSMC_FLAG_Level: Level detection Flag.
//  744   *     @arg FSMC_FLAG_FallingEdge: Falling egde detection Flag.
//  745   * @retval None
//  746   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function FSMC_ClearFlag
          CFI NoCalls
        THUMB
//  747 void FSMC_ClearFlag(uint32_t FSMC_Bank, uint32_t FSMC_FLAG)
//  748 {
//  749     /* Check the parameters */
//  750     assert_param(IS_FSMC_GETFLAG_BANK(FSMC_Bank));
//  751     assert_param(IS_FSMC_CLEAR_FLAG(FSMC_FLAG)) ;
//  752 
//  753     if(FSMC_Bank == FSMC_Bank2_NAND)
FSMC_ClearFlag:
        CMP      R0,#+16
        BNE.N    ??FSMC_ClearFlag_0
//  754     {
//  755         FSMC_Bank2->SR2 &= ~FSMC_FLAG;
        LDR.N    R2,??DataTable15_2  ;; 0xa0000064
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.N    R3,??DataTable15_2  ;; 0xa0000064
        STR      R2,[R3, #+0]
        B.N      ??FSMC_ClearFlag_1
//  756     }
//  757     else if(FSMC_Bank == FSMC_Bank3_NAND)
??FSMC_ClearFlag_0:
        MOV      R2,#+256
        CMP      R0,R2
        BNE.N    ??FSMC_ClearFlag_2
//  758     {
//  759         FSMC_Bank3->SR3 &= ~FSMC_FLAG;
        LDR.N    R2,??DataTable15_6  ;; 0xa0000084
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.N    R3,??DataTable15_6  ;; 0xa0000084
        STR      R2,[R3, #+0]
        B.N      ??FSMC_ClearFlag_1
//  760     }
//  761     /* FSMC_Bank4_PCCARD*/
//  762     else
//  763     {
//  764         FSMC_Bank4->SR4 &= ~FSMC_FLAG;
??FSMC_ClearFlag_2:
        LDR.N    R2,??DataTable15_10  ;; 0xa00000a4
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.N    R3,??DataTable15_10  ;; 0xa00000a4
        STR      R2,[R3, #+0]
//  765     }
//  766 }
??FSMC_ClearFlag_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  767 
//  768 /**
//  769   * @brief  Checks whether the specified FSMC interrupt has occurred or not.
//  770   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  771   *   This parameter can be one of the following values:
//  772   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  773   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  774   *     @arg FSMC_Bank4_PCCARD: FSMC Bank4 PCCARD
//  775   * @param  FSMC_IT: specifies the FSMC interrupt source to check.
//  776   *   This parameter can be one of the following values:
//  777   *     @arg FSMC_IT_RisingEdge: Rising edge detection interrupt.
//  778   *     @arg FSMC_IT_Level: Level edge detection interrupt.
//  779   *     @arg FSMC_IT_FallingEdge: Falling edge detection interrupt.
//  780   * @retval The new state of FSMC_IT (SET or RESET).
//  781   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function FSMC_GetITStatus
          CFI NoCalls
        THUMB
//  782 ITStatus FSMC_GetITStatus(uint32_t FSMC_Bank, uint32_t FSMC_IT)
//  783 {
FSMC_GetITStatus:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOVS     R2,R0
//  784     ITStatus bitstatus = RESET;
        MOVS     R0,#+0
//  785     uint32_t tmpsr = 0x0, itstatus = 0x0, itenable = 0x0;
        MOVS     R3,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
//  786 
//  787     /* Check the parameters */
//  788     assert_param(IS_FSMC_IT_BANK(FSMC_Bank));
//  789     assert_param(IS_FSMC_GET_IT(FSMC_IT));
//  790 
//  791     if(FSMC_Bank == FSMC_Bank2_NAND)
        CMP      R2,#+16
        BNE.N    ??FSMC_GetITStatus_0
//  792     {
//  793         tmpsr = FSMC_Bank2->SR2;
        LDR.N    R6,??DataTable15_2  ;; 0xa0000064
        LDR      R6,[R6, #+0]
        MOVS     R3,R6
        B.N      ??FSMC_GetITStatus_1
//  794     }
//  795     else if(FSMC_Bank == FSMC_Bank3_NAND)
??FSMC_GetITStatus_0:
        MOV      R6,#+256
        CMP      R2,R6
        BNE.N    ??FSMC_GetITStatus_2
//  796     {
//  797         tmpsr = FSMC_Bank3->SR3;
        LDR.N    R6,??DataTable15_6  ;; 0xa0000084
        LDR      R6,[R6, #+0]
        MOVS     R3,R6
        B.N      ??FSMC_GetITStatus_1
//  798     }
//  799     /* FSMC_Bank4_PCCARD*/
//  800     else
//  801     {
//  802         tmpsr = FSMC_Bank4->SR4;
??FSMC_GetITStatus_2:
        LDR.N    R6,??DataTable15_10  ;; 0xa00000a4
        LDR      R6,[R6, #+0]
        MOVS     R3,R6
//  803     }
//  804 
//  805     itstatus = tmpsr & FSMC_IT;
??FSMC_GetITStatus_1:
        ANDS     R6,R1,R3
        MOVS     R4,R6
//  806 
//  807     itenable = tmpsr & (FSMC_IT >> 3);
        ANDS     R6,R3,R1, LSR #+3
        MOVS     R5,R6
//  808     if ((itstatus != (uint32_t)RESET)  && (itenable != (uint32_t)RESET))
        CMP      R4,#+0
        BEQ.N    ??FSMC_GetITStatus_3
        CMP      R5,#+0
        BEQ.N    ??FSMC_GetITStatus_3
//  809     {
//  810         bitstatus = SET;
        MOVS     R6,#+1
        MOVS     R0,R6
        B.N      ??FSMC_GetITStatus_4
//  811     }
//  812     else
//  813     {
//  814         bitstatus = RESET;
??FSMC_GetITStatus_3:
        MOVS     R6,#+0
        MOVS     R0,R6
//  815     }
//  816     return bitstatus;
??FSMC_GetITStatus_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  817 }
//  818 
//  819 /**
//  820   * @brief  Clears the FSMC's interrupt pending bits.
//  821   * @param  FSMC_Bank: specifies the FSMC Bank to be used
//  822   *   This parameter can be one of the following values:
//  823   *     @arg FSMC_Bank2_NAND: FSMC Bank2 NAND
//  824   *     @arg FSMC_Bank3_NAND: FSMC Bank3 NAND
//  825   *     @arg FSMC_Bank4_PCCARD: FSMC Bank4 PCCARD
//  826   * @param  FSMC_IT: specifies the interrupt pending bit to clear.
//  827   *   This parameter can be any combination of the following values:
//  828   *     @arg FSMC_IT_RisingEdge: Rising edge detection interrupt.
//  829   *     @arg FSMC_IT_Level: Level edge detection interrupt.
//  830   *     @arg FSMC_IT_FallingEdge: Falling edge detection interrupt.
//  831   * @retval None
//  832   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function FSMC_ClearITPendingBit
          CFI NoCalls
        THUMB
//  833 void FSMC_ClearITPendingBit(uint32_t FSMC_Bank, uint32_t FSMC_IT)
//  834 {
//  835     /* Check the parameters */
//  836     assert_param(IS_FSMC_IT_BANK(FSMC_Bank));
//  837     assert_param(IS_FSMC_IT(FSMC_IT));
//  838 
//  839     if(FSMC_Bank == FSMC_Bank2_NAND)
FSMC_ClearITPendingBit:
        CMP      R0,#+16
        BNE.N    ??FSMC_ClearITPendingBit_0
//  840     {
//  841         FSMC_Bank2->SR2 &= ~(FSMC_IT >> 3);
        LDR.N    R2,??DataTable15_2  ;; 0xa0000064
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1, LSR #+3
        LDR.N    R3,??DataTable15_2  ;; 0xa0000064
        STR      R2,[R3, #+0]
        B.N      ??FSMC_ClearITPendingBit_1
//  842     }
//  843     else if(FSMC_Bank == FSMC_Bank3_NAND)
??FSMC_ClearITPendingBit_0:
        MOV      R2,#+256
        CMP      R0,R2
        BNE.N    ??FSMC_ClearITPendingBit_2
//  844     {
//  845         FSMC_Bank3->SR3 &= ~(FSMC_IT >> 3);
        LDR.N    R2,??DataTable15_6  ;; 0xa0000084
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1, LSR #+3
        LDR.N    R3,??DataTable15_6  ;; 0xa0000084
        STR      R2,[R3, #+0]
        B.N      ??FSMC_ClearITPendingBit_1
//  846     }
//  847     /* FSMC_Bank4_PCCARD*/
//  848     else
//  849     {
//  850         FSMC_Bank4->SR4 &= ~(FSMC_IT >> 3);
??FSMC_ClearITPendingBit_2:
        LDR.N    R2,??DataTable15_10  ;; 0xa00000a4
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1, LSR #+3
        LDR.N    R3,??DataTable15_10  ;; 0xa00000a4
        STR      R2,[R3, #+0]
//  851     }
//  852 }
??FSMC_ClearITPendingBit_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     0xa0000104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     0xa0000060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     0xa0000064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     0xa0000068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     0xa000006c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     0xa0000080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     0xa0000084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     0xa0000088

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     0xa000008c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DC32     0xa00000a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DC32     0xa00000a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DC32     0xa00000a8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DC32     0xa00000ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DC32     0xa00000b0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_14:
        DC32     0xffffe

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_15:
        DC32     0xffffb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_16:
        DC32     0xfffbf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_17:
        DC32     0xa0000074

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_18:
        DC32     0xa0000094

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  853 
//  854 /**
//  855   * @}
//  856   */
//  857 
//  858 /**
//  859   * @}
//  860   */
//  861 
//  862 /**
//  863   * @}
//  864   */
//  865 
//  866 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 1 666 bytes in section .text
// 
// 1 666 bytes of CODE memory
//
//Errors: none
//Warnings: none
