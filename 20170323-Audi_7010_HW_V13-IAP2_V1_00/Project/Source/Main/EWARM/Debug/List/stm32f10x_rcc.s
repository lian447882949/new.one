///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:50 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_rcc.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_rcc.c -D USE_STDPERIPH_DRIVER -D               /
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
//                    \Debug\List\stm32f10x_rcc.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_rcc

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC RCC_ADCCLKConfig
        PUBLIC RCC_AHBPeriphClockCmd
        PUBLIC RCC_AHBPeriphResetCmd
        PUBLIC RCC_APB1PeriphClockCmd
        PUBLIC RCC_APB1PeriphResetCmd
        PUBLIC RCC_APB2PeriphClockCmd
        PUBLIC RCC_APB2PeriphResetCmd
        PUBLIC RCC_AdjustHSICalibrationValue
        PUBLIC RCC_BackupResetCmd
        PUBLIC RCC_ClearFlag
        PUBLIC RCC_ClearITPendingBit
        PUBLIC RCC_ClockSecuritySystemCmd
        PUBLIC RCC_DeInit
        PUBLIC RCC_GetClocksFreq
        PUBLIC RCC_GetFlagStatus
        PUBLIC RCC_GetITStatus
        PUBLIC RCC_GetSYSCLKSource
        PUBLIC RCC_HCLKConfig
        PUBLIC RCC_HSEConfig
        PUBLIC RCC_HSICmd
        PUBLIC RCC_I2S2CLKConfig
        PUBLIC RCC_I2S3CLKConfig
        PUBLIC RCC_ITConfig
        PUBLIC RCC_LSEConfig
        PUBLIC RCC_LSICmd
        PUBLIC RCC_MCOConfig
        PUBLIC RCC_OTGFSCLKConfig
        PUBLIC RCC_PCLK1Config
        PUBLIC RCC_PCLK2Config
        PUBLIC RCC_PLL2Cmd
        PUBLIC RCC_PLL2Config
        PUBLIC RCC_PLL3Cmd
        PUBLIC RCC_PLL3Config
        PUBLIC RCC_PLLCmd
        PUBLIC RCC_PLLConfig
        PUBLIC RCC_PREDIV1Config
        PUBLIC RCC_PREDIV2Config
        PUBLIC RCC_RTCCLKCmd
        PUBLIC RCC_RTCCLKConfig
        PUBLIC RCC_SYSCLKConfig
        PUBLIC RCC_WaitForHSEStartUp
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_rcc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_rcc.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the RCC firmware functions.
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
//   23 #include "stm32f10x_rcc.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup RCC
//   30   * @brief RCC driver modules
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup RCC_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup RCC_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 /* ------------ RCC registers bit address in the alias region ----------- */
//   47 #define RCC_OFFSET                (RCC_BASE - PERIPH_BASE)
//   48 
//   49 /* --- CR Register ---*/
//   50 
//   51 /* Alias word address of HSION bit */
//   52 #define CR_OFFSET                 (RCC_OFFSET + 0x00)
//   53 #define HSION_BitNumber           0x00
//   54 #define CR_HSION_BB               (PERIPH_BB_BASE + (CR_OFFSET * 32) + (HSION_BitNumber * 4))
//   55 
//   56 /* Alias word address of PLLON bit */
//   57 #define PLLON_BitNumber           0x18
//   58 #define CR_PLLON_BB               (PERIPH_BB_BASE + (CR_OFFSET * 32) + (PLLON_BitNumber * 4))
//   59 
//   60 #ifdef STM32F10X_CL
//   61 /* Alias word address of PLL2ON bit */
//   62 #define PLL2ON_BitNumber          0x1A
//   63 #define CR_PLL2ON_BB              (PERIPH_BB_BASE + (CR_OFFSET * 32) + (PLL2ON_BitNumber * 4))
//   64 
//   65 /* Alias word address of PLL3ON bit */
//   66 #define PLL3ON_BitNumber          0x1C
//   67 #define CR_PLL3ON_BB              (PERIPH_BB_BASE + (CR_OFFSET * 32) + (PLL3ON_BitNumber * 4))
//   68 #endif /* STM32F10X_CL */
//   69 
//   70 /* Alias word address of CSSON bit */
//   71 #define CSSON_BitNumber           0x13
//   72 #define CR_CSSON_BB               (PERIPH_BB_BASE + (CR_OFFSET * 32) + (CSSON_BitNumber * 4))
//   73 
//   74 /* --- CFGR Register ---*/
//   75 
//   76 /* Alias word address of USBPRE bit */
//   77 #define CFGR_OFFSET               (RCC_OFFSET + 0x04)
//   78 
//   79 #ifndef STM32F10X_CL
//   80 #define USBPRE_BitNumber          0x16
//   81 #define CFGR_USBPRE_BB            (PERIPH_BB_BASE + (CFGR_OFFSET * 32) + (USBPRE_BitNumber * 4))
//   82 #else
//   83 #define OTGFSPRE_BitNumber        0x16
//   84 #define CFGR_OTGFSPRE_BB          (PERIPH_BB_BASE + (CFGR_OFFSET * 32) + (OTGFSPRE_BitNumber * 4))
//   85 #endif /* STM32F10X_CL */
//   86 
//   87 /* --- BDCR Register ---*/
//   88 
//   89 /* Alias word address of RTCEN bit */
//   90 #define BDCR_OFFSET               (RCC_OFFSET + 0x20)
//   91 #define RTCEN_BitNumber           0x0F
//   92 #define BDCR_RTCEN_BB             (PERIPH_BB_BASE + (BDCR_OFFSET * 32) + (RTCEN_BitNumber * 4))
//   93 
//   94 /* Alias word address of BDRST bit */
//   95 #define BDRST_BitNumber           0x10
//   96 #define BDCR_BDRST_BB             (PERIPH_BB_BASE + (BDCR_OFFSET * 32) + (BDRST_BitNumber * 4))
//   97 
//   98 /* --- CSR Register ---*/
//   99 
//  100 /* Alias word address of LSION bit */
//  101 #define CSR_OFFSET                (RCC_OFFSET + 0x24)
//  102 #define LSION_BitNumber           0x00
//  103 #define CSR_LSION_BB              (PERIPH_BB_BASE + (CSR_OFFSET * 32) + (LSION_BitNumber * 4))
//  104 
//  105 #ifdef STM32F10X_CL
//  106 /* --- CFGR2 Register ---*/
//  107 
//  108 /* Alias word address of I2S2SRC bit */
//  109 #define CFGR2_OFFSET              (RCC_OFFSET + 0x2C)
//  110 #define I2S2SRC_BitNumber         0x11
//  111 #define CFGR2_I2S2SRC_BB          (PERIPH_BB_BASE + (CFGR2_OFFSET * 32) + (I2S2SRC_BitNumber * 4))
//  112 
//  113 /* Alias word address of I2S3SRC bit */
//  114 #define I2S3SRC_BitNumber         0x12
//  115 #define CFGR2_I2S3SRC_BB          (PERIPH_BB_BASE + (CFGR2_OFFSET * 32) + (I2S3SRC_BitNumber * 4))
//  116 #endif /* STM32F10X_CL */
//  117 
//  118 /* ---------------------- RCC registers bit mask ------------------------ */
//  119 
//  120 /* CR register bit mask */
//  121 #define CR_HSEBYP_Reset           ((uint32_t)0xFFFBFFFF)
//  122 #define CR_HSEBYP_Set             ((uint32_t)0x00040000)
//  123 #define CR_HSEON_Reset            ((uint32_t)0xFFFEFFFF)
//  124 #define CR_HSEON_Set              ((uint32_t)0x00010000)
//  125 #define CR_HSITRIM_Mask           ((uint32_t)0xFFFFFF07)
//  126 
//  127 /* CFGR register bit mask */
//  128 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL) || defined (STM32F10X_CL)
//  129 #define CFGR_PLL_Mask            ((uint32_t)0xFFC2FFFF)
//  130 #else
//  131 #define CFGR_PLL_Mask            ((uint32_t)0xFFC0FFFF)
//  132 #endif /* STM32F10X_CL */
//  133 
//  134 #define CFGR_PLLMull_Mask         ((uint32_t)0x003C0000)
//  135 #define CFGR_PLLSRC_Mask          ((uint32_t)0x00010000)
//  136 #define CFGR_PLLXTPRE_Mask        ((uint32_t)0x00020000)
//  137 #define CFGR_SWS_Mask             ((uint32_t)0x0000000C)
//  138 #define CFGR_SW_Mask              ((uint32_t)0xFFFFFFFC)
//  139 #define CFGR_HPRE_Reset_Mask      ((uint32_t)0xFFFFFF0F)
//  140 #define CFGR_HPRE_Set_Mask        ((uint32_t)0x000000F0)
//  141 #define CFGR_PPRE1_Reset_Mask     ((uint32_t)0xFFFFF8FF)
//  142 #define CFGR_PPRE1_Set_Mask       ((uint32_t)0x00000700)
//  143 #define CFGR_PPRE2_Reset_Mask     ((uint32_t)0xFFFFC7FF)
//  144 #define CFGR_PPRE2_Set_Mask       ((uint32_t)0x00003800)
//  145 #define CFGR_ADCPRE_Reset_Mask    ((uint32_t)0xFFFF3FFF)
//  146 #define CFGR_ADCPRE_Set_Mask      ((uint32_t)0x0000C000)
//  147 
//  148 /* CSR register bit mask */
//  149 #define CSR_RMVF_Set              ((uint32_t)0x01000000)
//  150 
//  151 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL) || defined (STM32F10X_CL)
//  152 /* CFGR2 register bit mask */
//  153 #define CFGR2_PREDIV1SRC         ((uint32_t)0x00010000)
//  154 #define CFGR2_PREDIV1            ((uint32_t)0x0000000F)
//  155 #endif
//  156 #ifdef STM32F10X_CL
//  157 #define CFGR2_PREDIV2            ((uint32_t)0x000000F0)
//  158 #define CFGR2_PLL2MUL            ((uint32_t)0x00000F00)
//  159 #define CFGR2_PLL3MUL            ((uint32_t)0x0000F000)
//  160 #endif /* STM32F10X_CL */
//  161 
//  162 /* RCC Flag Mask */
//  163 #define FLAG_Mask                 ((uint8_t)0x1F)
//  164 
//  165 /* CIR register byte 2 (Bits[15:8]) base address */
//  166 #define CIR_BYTE2_ADDRESS         ((uint32_t)0x40021009)
//  167 
//  168 /* CIR register byte 3 (Bits[23:16]) base address */
//  169 #define CIR_BYTE3_ADDRESS         ((uint32_t)0x4002100A)
//  170 
//  171 /* CFGR register byte 4 (Bits[31:24]) base address */
//  172 #define CFGR_BYTE4_ADDRESS        ((uint32_t)0x40021007)
//  173 
//  174 /* BDCR register base address */
//  175 #define BDCR_ADDRESS              (PERIPH_BASE + BDCR_OFFSET)
//  176 
//  177 /**
//  178   * @}
//  179   */
//  180 
//  181 /** @defgroup RCC_Private_Macros
//  182   * @{
//  183   */
//  184 
//  185 /**
//  186   * @}
//  187   */
//  188 
//  189 /** @defgroup RCC_Private_Variables
//  190   * @{
//  191   */
//  192 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  193 static __I uint8_t APBAHBPrescTable[16] = {0, 0, 0, 0, 1, 2, 3, 4, 1, 2, 3, 4, 6, 7, 8, 9};
APBAHBPrescTable:
        DATA
        DC8 0, 0, 0, 0, 1, 2, 3, 4, 1, 2, 3, 4, 6, 7, 8, 9

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  194 static __I uint8_t ADCPrescTable[4] = {2, 4, 6, 8};
ADCPrescTable:
        DATA
        DC8 2, 4, 6, 8
//  195 
//  196 /**
//  197   * @}
//  198   */
//  199 
//  200 /** @defgroup RCC_Private_FunctionPrototypes
//  201   * @{
//  202   */
//  203 
//  204 /**
//  205   * @}
//  206   */
//  207 
//  208 /** @defgroup RCC_Private_Functions
//  209   * @{
//  210   */
//  211 
//  212 /**
//  213   * @brief  Resets the RCC clock configuration to the default reset state.
//  214   * @param  None
//  215   * @retval None
//  216   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function RCC_DeInit
          CFI NoCalls
        THUMB
//  217 void RCC_DeInit(void)
//  218 {
//  219     /* Set HSION bit */
//  220     RCC->CR |= (uint32_t)0x00000001;
RCC_DeInit:
        LDR.W    R0,??DataTable39  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable39  ;; 0x40021000
        STR      R0,[R1, #+0]
//  221 
//  222     /* Reset SW, HPRE, PPRE1, PPRE2, ADCPRE and MCO bits */
//  223 #ifndef STM32F10X_CL
//  224     RCC->CFGR &= (uint32_t)0xF8FF0000;
//  225 #else
//  226     RCC->CFGR &= (uint32_t)0xF0FF0000;
        LDR.W    R0,??DataTable39_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable39_2  ;; 0xf0ff0000
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable39_1  ;; 0x40021004
        STR      R0,[R1, #+0]
//  227 #endif /* STM32F10X_CL */
//  228 
//  229     /* Reset HSEON, CSSON and PLLON bits */
//  230     RCC->CR &= (uint32_t)0xFEF6FFFF;
        LDR.W    R0,??DataTable39  ;; 0x40021000
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable39_3  ;; 0xfef6ffff
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable39  ;; 0x40021000
        STR      R0,[R1, #+0]
//  231 
//  232     /* Reset HSEBYP bit */
//  233     RCC->CR &= (uint32_t)0xFFFBFFFF;
        LDR.W    R0,??DataTable39  ;; 0x40021000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.W    R1,??DataTable39  ;; 0x40021000
        STR      R0,[R1, #+0]
//  234 
//  235     /* Reset PLLSRC, PLLXTPRE, PLLMUL and USBPRE/OTGFSPRE bits */
//  236     RCC->CFGR &= (uint32_t)0xFF80FFFF;
        LDR.W    R0,??DataTable39_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x7F0000
        LDR.W    R1,??DataTable39_1  ;; 0x40021004
        STR      R0,[R1, #+0]
//  237 
//  238 #ifdef STM32F10X_CL
//  239     /* Reset PLL2ON and PLL3ON bits */
//  240     RCC->CR &= (uint32_t)0xEBFFFFFF;
        LDR.W    R0,??DataTable39  ;; 0x40021000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x14000000
        LDR.W    R1,??DataTable39  ;; 0x40021000
        STR      R0,[R1, #+0]
//  241 
//  242     /* Disable all interrupts and clear pending bits  */
//  243     RCC->CIR = 0x00FF0000;
        LDR.W    R0,??DataTable39_4  ;; 0x40021008
        MOVS     R1,#+16711680
        STR      R1,[R0, #+0]
//  244 
//  245     /* Reset CFGR2 register */
//  246     RCC->CFGR2 = 0x00000000;
        LDR.W    R0,??DataTable39_5  ;; 0x4002102c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  247 #elif defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  248     /* Disable all interrupts and clear pending bits  */
//  249     RCC->CIR = 0x009F0000;
//  250 
//  251     /* Reset CFGR2 register */
//  252     RCC->CFGR2 = 0x00000000;
//  253 #else
//  254     /* Disable all interrupts and clear pending bits  */
//  255     RCC->CIR = 0x009F0000;
//  256 #endif /* STM32F10X_CL */
//  257 
//  258 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  259 
//  260 /**
//  261   * @brief  Configures the External High Speed oscillator (HSE).
//  262   * @note   HSE can not be stopped if it is used directly or through the PLL as system clock.
//  263   * @param  RCC_HSE: specifies the new state of the HSE.
//  264   *   This parameter can be one of the following values:
//  265   *     @arg RCC_HSE_OFF: HSE oscillator OFF
//  266   *     @arg RCC_HSE_ON: HSE oscillator ON
//  267   *     @arg RCC_HSE_Bypass: HSE oscillator bypassed with external clock
//  268   * @retval None
//  269   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function RCC_HSEConfig
          CFI NoCalls
        THUMB
//  270 void RCC_HSEConfig(uint32_t RCC_HSE)
//  271 {
//  272     /* Check the parameters */
//  273     assert_param(IS_RCC_HSE(RCC_HSE));
//  274     /* Reset HSEON and HSEBYP bits before configuring the HSE ------------------*/
//  275     /* Reset HSEON bit */
//  276     RCC->CR &= CR_HSEON_Reset;
RCC_HSEConfig:
        LDR.W    R1,??DataTable39  ;; 0x40021000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x10000
        LDR.W    R2,??DataTable39  ;; 0x40021000
        STR      R1,[R2, #+0]
//  277     /* Reset HSEBYP bit */
//  278     RCC->CR &= CR_HSEBYP_Reset;
        LDR.W    R1,??DataTable39  ;; 0x40021000
        LDR      R1,[R1, #+0]
        BICS     R1,R1,#0x40000
        LDR.W    R2,??DataTable39  ;; 0x40021000
        STR      R1,[R2, #+0]
//  279     /* Configure HSE (RCC_HSE_OFF is already covered by the code section above) */
//  280     switch(RCC_HSE)
        MOVS     R1,R0
        CMP      R1,#+65536
        BEQ.N    ??RCC_HSEConfig_0
        CMP      R1,#+262144
        BEQ.N    ??RCC_HSEConfig_1
        B.N      ??RCC_HSEConfig_2
//  281     {
//  282     case RCC_HSE_ON:
//  283         /* Set HSEON bit */
//  284         RCC->CR |= CR_HSEON_Set;
??RCC_HSEConfig_0:
        LDR.W    R1,??DataTable39  ;; 0x40021000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x10000
        LDR.W    R2,??DataTable39  ;; 0x40021000
        STR      R1,[R2, #+0]
//  285         break;
        B.N      ??RCC_HSEConfig_3
//  286 
//  287     case RCC_HSE_Bypass:
//  288         /* Set HSEBYP and HSEON bits */
//  289         RCC->CR |= CR_HSEBYP_Set | CR_HSEON_Set;
??RCC_HSEConfig_1:
        LDR.W    R1,??DataTable39  ;; 0x40021000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x50000
        LDR.W    R2,??DataTable39  ;; 0x40021000
        STR      R1,[R2, #+0]
//  290         break;
        B.N      ??RCC_HSEConfig_3
//  291 
//  292     default:
//  293         break;
//  294     }
//  295 }
??RCC_HSEConfig_2:
??RCC_HSEConfig_3:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  296 
//  297 /**
//  298   * @brief  Waits for HSE start-up.
//  299   * @param  None
//  300   * @retval An ErrorStatus enumuration value:
//  301   * - SUCCESS: HSE oscillator is stable and ready to use
//  302   * - ERROR: HSE oscillator not yet ready
//  303   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function RCC_WaitForHSEStartUp
        THUMB
//  304 ErrorStatus RCC_WaitForHSEStartUp(void)
//  305 {
RCC_WaitForHSEStartUp:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  306     __IO uint32_t StartUpCounter = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  307     ErrorStatus status = ERROR;
        MOVS     R4,#+0
//  308     FlagStatus HSEStatus = RESET;
        MOVS     R5,#+0
//  309 
//  310     /* Wait till HSE is ready and if Time out is reached exit */
//  311     do
//  312     {
//  313         HSEStatus = RCC_GetFlagStatus(RCC_FLAG_HSERDY);
??RCC_WaitForHSEStartUp_0:
        MOVS     R0,#+49
          CFI FunCall RCC_GetFlagStatus
        BL       RCC_GetFlagStatus
        MOVS     R5,R0
//  314         StartUpCounter++;
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
//  315     }
//  316     while((StartUpCounter != HSE_STARTUP_TIMEOUT) && (HSEStatus == RESET));
        LDR      R0,[SP, #+0]
        CMP      R0,#+1280
        BEQ.N    ??RCC_WaitForHSEStartUp_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RCC_WaitForHSEStartUp_0
//  317 
//  318     if (RCC_GetFlagStatus(RCC_FLAG_HSERDY) != RESET)
??RCC_WaitForHSEStartUp_1:
        MOVS     R0,#+49
          CFI FunCall RCC_GetFlagStatus
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??RCC_WaitForHSEStartUp_2
//  319     {
//  320         status = SUCCESS;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??RCC_WaitForHSEStartUp_3
//  321     }
//  322     else
//  323     {
//  324         status = ERROR;
??RCC_WaitForHSEStartUp_2:
        MOVS     R0,#+0
        MOVS     R4,R0
//  325     }
//  326     return (status);
??RCC_WaitForHSEStartUp_3:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//  327 }
//  328 
//  329 /**
//  330   * @brief  Adjusts the Internal High Speed oscillator (HSI) calibration value.
//  331   * @param  HSICalibrationValue: specifies the calibration trimming value.
//  332   *   This parameter must be a number between 0 and 0x1F.
//  333   * @retval None
//  334   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function RCC_AdjustHSICalibrationValue
          CFI NoCalls
        THUMB
//  335 void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue)
//  336 {
//  337     uint32_t tmpreg = 0;
RCC_AdjustHSICalibrationValue:
        MOVS     R1,#+0
//  338     /* Check the parameters */
//  339     assert_param(IS_RCC_CALIBRATION_VALUE(HSICalibrationValue));
//  340     tmpreg = RCC->CR;
        LDR.W    R2,??DataTable39  ;; 0x40021000
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  341     /* Clear HSITRIM[4:0] bits */
//  342     tmpreg &= CR_HSITRIM_Mask;
        BICS     R1,R1,#0xF8
//  343     /* Set the HSITRIM[4:0] bits according to HSICalibrationValue value */
//  344     tmpreg |= (uint32_t)HSICalibrationValue << 3;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R1,R1,R0, LSL #+3
//  345     /* Store the new value */
//  346     RCC->CR = tmpreg;
        LDR.W    R2,??DataTable39  ;; 0x40021000
        STR      R1,[R2, #+0]
//  347 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  348 
//  349 /**
//  350   * @brief  Enables or disables the Internal High Speed oscillator (HSI).
//  351   * @note   HSI can not be stopped if it is used directly or through the PLL as system clock.
//  352   * @param  NewState: new state of the HSI. This parameter can be: ENABLE or DISABLE.
//  353   * @retval None
//  354   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function RCC_HSICmd
          CFI NoCalls
        THUMB
//  355 void RCC_HSICmd(FunctionalState NewState)
//  356 {
//  357     /* Check the parameters */
//  358     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  359     *(__IO uint32_t *) CR_HSION_BB = (uint32_t)NewState;
RCC_HSICmd:
        LDR.W    R1,??DataTable39_6  ;; 0x42420000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  360 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  361 
//  362 /**
//  363   * @brief  Configures the PLL clock source and multiplication factor.
//  364   * @note   This function must be used only when the PLL is disabled.
//  365   * @param  RCC_PLLSource: specifies the PLL entry clock source.
//  366   *   For @b STM32_Connectivity_line_devices or @b STM32_Value_line_devices,
//  367   *   this parameter can be one of the following values:
//  368   *     @arg RCC_PLLSource_HSI_Div2: HSI oscillator clock divided by 2 selected as PLL clock entry
//  369   *     @arg RCC_PLLSource_PREDIV1: PREDIV1 clock selected as PLL clock entry
//  370   *   For @b other_STM32_devices, this parameter can be one of the following values:
//  371   *     @arg RCC_PLLSource_HSI_Div2: HSI oscillator clock divided by 2 selected as PLL clock entry
//  372   *     @arg RCC_PLLSource_HSE_Div1: HSE oscillator clock selected as PLL clock entry
//  373   *     @arg RCC_PLLSource_HSE_Div2: HSE oscillator clock divided by 2 selected as PLL clock entry
//  374   * @param  RCC_PLLMul: specifies the PLL multiplication factor.
//  375   *   For @b STM32_Connectivity_line_devices, this parameter can be RCC_PLLMul_x where x:{[4,9], 6_5}
//  376   *   For @b other_STM32_devices, this parameter can be RCC_PLLMul_x where x:[2,16]
//  377   * @retval None
//  378   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function RCC_PLLConfig
          CFI NoCalls
        THUMB
//  379 void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul)
//  380 {
//  381     uint32_t tmpreg = 0;
RCC_PLLConfig:
        MOVS     R2,#+0
//  382 
//  383     /* Check the parameters */
//  384     assert_param(IS_RCC_PLL_SOURCE(RCC_PLLSource));
//  385     assert_param(IS_RCC_PLL_MUL(RCC_PLLMul));
//  386 
//  387     tmpreg = RCC->CFGR;
        LDR.W    R3,??DataTable39_1  ;; 0x40021004
        LDR      R3,[R3, #+0]
        MOVS     R2,R3
//  388     /* Clear PLLSRC, PLLXTPRE and PLLMUL[3:0] bits */
//  389     tmpreg &= CFGR_PLL_Mask;
        BICS     R2,R2,#0x3D0000
//  390     /* Set the PLL configuration bits */
//  391     tmpreg |= RCC_PLLSource | RCC_PLLMul;
        ORRS     R3,R1,R0
        ORRS     R2,R3,R2
//  392     /* Store the new value */
//  393     RCC->CFGR = tmpreg;
        LDR.W    R3,??DataTable39_1  ;; 0x40021004
        STR      R2,[R3, #+0]
//  394 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  395 
//  396 /**
//  397   * @brief  Enables or disables the PLL.
//  398   * @note   The PLL can not be disabled if it is used as system clock.
//  399   * @param  NewState: new state of the PLL. This parameter can be: ENABLE or DISABLE.
//  400   * @retval None
//  401   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function RCC_PLLCmd
          CFI NoCalls
        THUMB
//  402 void RCC_PLLCmd(FunctionalState NewState)
//  403 {
//  404     /* Check the parameters */
//  405     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  406 
//  407     *(__IO uint32_t *) CR_PLLON_BB = (uint32_t)NewState;
RCC_PLLCmd:
        LDR.W    R1,??DataTable39_7  ;; 0x42420060
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  408 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  409 
//  410 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL) || defined (STM32F10X_CL)
//  411 /**
//  412   * @brief  Configures the PREDIV1 division factor.
//  413   * @note
//  414   *   - This function must be used only when the PLL is disabled.
//  415   *   - This function applies only to STM32 Connectivity line and Value line
//  416   *     devices.
//  417   * @param  RCC_PREDIV1_Source: specifies the PREDIV1 clock source.
//  418   *   This parameter can be one of the following values:
//  419   *     @arg RCC_PREDIV1_Source_HSE: HSE selected as PREDIV1 clock
//  420   *     @arg RCC_PREDIV1_Source_PLL2: PLL2 selected as PREDIV1 clock
//  421   * @note
//  422   *   For @b STM32_Value_line_devices this parameter is always RCC_PREDIV1_Source_HSE
//  423   * @param  RCC_PREDIV1_Div: specifies the PREDIV1 clock division factor.
//  424   *   This parameter can be RCC_PREDIV1_Divx where x:[1,16]
//  425   * @retval None
//  426   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function RCC_PREDIV1Config
          CFI NoCalls
        THUMB
//  427 void RCC_PREDIV1Config(uint32_t RCC_PREDIV1_Source, uint32_t RCC_PREDIV1_Div)
//  428 {
//  429     uint32_t tmpreg = 0;
RCC_PREDIV1Config:
        MOVS     R2,#+0
//  430 
//  431     /* Check the parameters */
//  432     assert_param(IS_RCC_PREDIV1_SOURCE(RCC_PREDIV1_Source));
//  433     assert_param(IS_RCC_PREDIV1(RCC_PREDIV1_Div));
//  434 
//  435     tmpreg = RCC->CFGR2;
        LDR.W    R3,??DataTable39_5  ;; 0x4002102c
        LDR      R3,[R3, #+0]
        MOVS     R2,R3
//  436     /* Clear PREDIV1[3:0] and PREDIV1SRC bits */
//  437     tmpreg &= ~(CFGR2_PREDIV1 | CFGR2_PREDIV1SRC);
        LDR.W    R3,??DataTable39_8  ;; 0xfffefff0
        ANDS     R2,R3,R2
//  438     /* Set the PREDIV1 clock source and division factor */
//  439     tmpreg |= RCC_PREDIV1_Source | RCC_PREDIV1_Div ;
        ORRS     R3,R1,R0
        ORRS     R2,R3,R2
//  440     /* Store the new value */
//  441     RCC->CFGR2 = tmpreg;
        LDR.W    R3,??DataTable39_5  ;; 0x4002102c
        STR      R2,[R3, #+0]
//  442 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  443 #endif
//  444 
//  445 #ifdef STM32F10X_CL
//  446 /**
//  447   * @brief  Configures the PREDIV2 division factor.
//  448   * @note
//  449   *   - This function must be used only when both PLL2 and PLL3 are disabled.
//  450   *   - This function applies only to STM32 Connectivity line devices.
//  451   * @param  RCC_PREDIV2_Div: specifies the PREDIV2 clock division factor.
//  452   *   This parameter can be RCC_PREDIV2_Divx where x:[1,16]
//  453   * @retval None
//  454   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function RCC_PREDIV2Config
          CFI NoCalls
        THUMB
//  455 void RCC_PREDIV2Config(uint32_t RCC_PREDIV2_Div)
//  456 {
//  457     uint32_t tmpreg = 0;
RCC_PREDIV2Config:
        MOVS     R1,#+0
//  458 
//  459     /* Check the parameters */
//  460     assert_param(IS_RCC_PREDIV2(RCC_PREDIV2_Div));
//  461 
//  462     tmpreg = RCC->CFGR2;
        LDR.W    R2,??DataTable39_5  ;; 0x4002102c
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  463     /* Clear PREDIV2[3:0] bits */
//  464     tmpreg &= ~CFGR2_PREDIV2;
        BICS     R1,R1,#0xF0
//  465     /* Set the PREDIV2 division factor */
//  466     tmpreg |= RCC_PREDIV2_Div;
        ORRS     R1,R0,R1
//  467     /* Store the new value */
//  468     RCC->CFGR2 = tmpreg;
        LDR.W    R2,??DataTable39_5  ;; 0x4002102c
        STR      R1,[R2, #+0]
//  469 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  470 
//  471 /**
//  472   * @brief  Configures the PLL2 multiplication factor.
//  473   * @note
//  474   *   - This function must be used only when the PLL2 is disabled.
//  475   *   - This function applies only to STM32 Connectivity line devices.
//  476   * @param  RCC_PLL2Mul: specifies the PLL2 multiplication factor.
//  477   *   This parameter can be RCC_PLL2Mul_x where x:{[8,14], 16, 20}
//  478   * @retval None
//  479   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function RCC_PLL2Config
          CFI NoCalls
        THUMB
//  480 void RCC_PLL2Config(uint32_t RCC_PLL2Mul)
//  481 {
//  482     uint32_t tmpreg = 0;
RCC_PLL2Config:
        MOVS     R1,#+0
//  483 
//  484     /* Check the parameters */
//  485     assert_param(IS_RCC_PLL2_MUL(RCC_PLL2Mul));
//  486 
//  487     tmpreg = RCC->CFGR2;
        LDR.W    R2,??DataTable39_5  ;; 0x4002102c
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  488     /* Clear PLL2Mul[3:0] bits */
//  489     tmpreg &= ~CFGR2_PLL2MUL;
        BICS     R1,R1,#0xF00
//  490     /* Set the PLL2 configuration bits */
//  491     tmpreg |= RCC_PLL2Mul;
        ORRS     R1,R0,R1
//  492     /* Store the new value */
//  493     RCC->CFGR2 = tmpreg;
        LDR.W    R2,??DataTable39_5  ;; 0x4002102c
        STR      R1,[R2, #+0]
//  494 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  495 
//  496 
//  497 /**
//  498   * @brief  Enables or disables the PLL2.
//  499   * @note
//  500   *   - The PLL2 can not be disabled if it is used indirectly as system clock
//  501   *     (i.e. it is used as PLL clock entry that is used as System clock).
//  502   *   - This function applies only to STM32 Connectivity line devices.
//  503   * @param  NewState: new state of the PLL2. This parameter can be: ENABLE or DISABLE.
//  504   * @retval None
//  505   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function RCC_PLL2Cmd
          CFI NoCalls
        THUMB
//  506 void RCC_PLL2Cmd(FunctionalState NewState)
//  507 {
//  508     /* Check the parameters */
//  509     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  510 
//  511     *(__IO uint32_t *) CR_PLL2ON_BB = (uint32_t)NewState;
RCC_PLL2Cmd:
        LDR.W    R1,??DataTable39_9  ;; 0x42420068
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  512 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  513 
//  514 
//  515 /**
//  516   * @brief  Configures the PLL3 multiplication factor.
//  517   * @note
//  518   *   - This function must be used only when the PLL3 is disabled.
//  519   *   - This function applies only to STM32 Connectivity line devices.
//  520   * @param  RCC_PLL3Mul: specifies the PLL3 multiplication factor.
//  521   *   This parameter can be RCC_PLL3Mul_x where x:{[8,14], 16, 20}
//  522   * @retval None
//  523   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function RCC_PLL3Config
          CFI NoCalls
        THUMB
//  524 void RCC_PLL3Config(uint32_t RCC_PLL3Mul)
//  525 {
//  526     uint32_t tmpreg = 0;
RCC_PLL3Config:
        MOVS     R1,#+0
//  527 
//  528     /* Check the parameters */
//  529     assert_param(IS_RCC_PLL3_MUL(RCC_PLL3Mul));
//  530 
//  531     tmpreg = RCC->CFGR2;
        LDR.W    R2,??DataTable39_5  ;; 0x4002102c
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  532     /* Clear PLL3Mul[3:0] bits */
//  533     tmpreg &= ~CFGR2_PLL3MUL;
        BICS     R1,R1,#0xF000
//  534     /* Set the PLL3 configuration bits */
//  535     tmpreg |= RCC_PLL3Mul;
        ORRS     R1,R0,R1
//  536     /* Store the new value */
//  537     RCC->CFGR2 = tmpreg;
        LDR.W    R2,??DataTable39_5  ;; 0x4002102c
        STR      R1,[R2, #+0]
//  538 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  539 
//  540 
//  541 /**
//  542   * @brief  Enables or disables the PLL3.
//  543   * @note   This function applies only to STM32 Connectivity line devices.
//  544   * @param  NewState: new state of the PLL3. This parameter can be: ENABLE or DISABLE.
//  545   * @retval None
//  546   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function RCC_PLL3Cmd
          CFI NoCalls
        THUMB
//  547 void RCC_PLL3Cmd(FunctionalState NewState)
//  548 {
//  549     /* Check the parameters */
//  550 
//  551     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  552     *(__IO uint32_t *) CR_PLL3ON_BB = (uint32_t)NewState;
RCC_PLL3Cmd:
        LDR.W    R1,??DataTable39_10  ;; 0x42420070
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  553 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  554 #endif /* STM32F10X_CL */
//  555 
//  556 /**
//  557   * @brief  Configures the system clock (SYSCLK).
//  558   * @param  RCC_SYSCLKSource: specifies the clock source used as system clock.
//  559   *   This parameter can be one of the following values:
//  560   *     @arg RCC_SYSCLKSource_HSI: HSI selected as system clock
//  561   *     @arg RCC_SYSCLKSource_HSE: HSE selected as system clock
//  562   *     @arg RCC_SYSCLKSource_PLLCLK: PLL selected as system clock
//  563   * @retval None
//  564   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function RCC_SYSCLKConfig
          CFI NoCalls
        THUMB
//  565 void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource)
//  566 {
//  567     uint32_t tmpreg = 0;
RCC_SYSCLKConfig:
        MOVS     R1,#+0
//  568     /* Check the parameters */
//  569     assert_param(IS_RCC_SYSCLK_SOURCE(RCC_SYSCLKSource));
//  570     tmpreg = RCC->CFGR;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  571     /* Clear SW[1:0] bits */
//  572     tmpreg &= CFGR_SW_Mask;
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
//  573     /* Set SW[1:0] bits according to RCC_SYSCLKSource value */
//  574     tmpreg |= RCC_SYSCLKSource;
        ORRS     R1,R0,R1
//  575     /* Store the new value */
//  576     RCC->CFGR = tmpreg;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        STR      R1,[R2, #+0]
//  577 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  578 
//  579 /**
//  580   * @brief  Returns the clock source used as system clock.
//  581   * @param  None
//  582   * @retval The clock source used as system clock. The returned value can
//  583   *   be one of the following:
//  584   *     - 0x00: HSI used as system clock
//  585   *     - 0x04: HSE used as system clock
//  586   *     - 0x08: PLL used as system clock
//  587   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function RCC_GetSYSCLKSource
          CFI NoCalls
        THUMB
//  588 uint8_t RCC_GetSYSCLKSource(void)
//  589 {
//  590     return ((uint8_t)(RCC->CFGR & CFGR_SWS_Mask));
RCC_GetSYSCLKSource:
        LDR.W    R0,??DataTable39_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  591 }
//  592 
//  593 /**
//  594   * @brief  Configures the AHB clock (HCLK).
//  595   * @param  RCC_SYSCLK: defines the AHB clock divider. This clock is derived from
//  596   *   the system clock (SYSCLK).
//  597   *   This parameter can be one of the following values:
//  598   *     @arg RCC_SYSCLK_Div1: AHB clock = SYSCLK
//  599   *     @arg RCC_SYSCLK_Div2: AHB clock = SYSCLK/2
//  600   *     @arg RCC_SYSCLK_Div4: AHB clock = SYSCLK/4
//  601   *     @arg RCC_SYSCLK_Div8: AHB clock = SYSCLK/8
//  602   *     @arg RCC_SYSCLK_Div16: AHB clock = SYSCLK/16
//  603   *     @arg RCC_SYSCLK_Div64: AHB clock = SYSCLK/64
//  604   *     @arg RCC_SYSCLK_Div128: AHB clock = SYSCLK/128
//  605   *     @arg RCC_SYSCLK_Div256: AHB clock = SYSCLK/256
//  606   *     @arg RCC_SYSCLK_Div512: AHB clock = SYSCLK/512
//  607   * @retval None
//  608   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function RCC_HCLKConfig
          CFI NoCalls
        THUMB
//  609 void RCC_HCLKConfig(uint32_t RCC_SYSCLK)
//  610 {
//  611     uint32_t tmpreg = 0;
RCC_HCLKConfig:
        MOVS     R1,#+0
//  612     /* Check the parameters */
//  613     assert_param(IS_RCC_HCLK(RCC_SYSCLK));
//  614     tmpreg = RCC->CFGR;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  615     /* Clear HPRE[3:0] bits */
//  616     tmpreg &= CFGR_HPRE_Reset_Mask;
        BICS     R1,R1,#0xF0
//  617     /* Set HPRE[3:0] bits according to RCC_SYSCLK value */
//  618     tmpreg |= RCC_SYSCLK;
        ORRS     R1,R0,R1
//  619     /* Store the new value */
//  620     RCC->CFGR = tmpreg;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        STR      R1,[R2, #+0]
//  621 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  622 
//  623 /**
//  624   * @brief  Configures the Low Speed APB clock (PCLK1).
//  625   * @param  RCC_HCLK: defines the APB1 clock divider. This clock is derived from
//  626   *   the AHB clock (HCLK).
//  627   *   This parameter can be one of the following values:
//  628   *     @arg RCC_HCLK_Div1: APB1 clock = HCLK
//  629   *     @arg RCC_HCLK_Div2: APB1 clock = HCLK/2
//  630   *     @arg RCC_HCLK_Div4: APB1 clock = HCLK/4
//  631   *     @arg RCC_HCLK_Div8: APB1 clock = HCLK/8
//  632   *     @arg RCC_HCLK_Div16: APB1 clock = HCLK/16
//  633   * @retval None
//  634   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function RCC_PCLK1Config
          CFI NoCalls
        THUMB
//  635 void RCC_PCLK1Config(uint32_t RCC_HCLK)
//  636 {
//  637     uint32_t tmpreg = 0;
RCC_PCLK1Config:
        MOVS     R1,#+0
//  638     /* Check the parameters */
//  639     assert_param(IS_RCC_PCLK(RCC_HCLK));
//  640     tmpreg = RCC->CFGR;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  641     /* Clear PPRE1[2:0] bits */
//  642     tmpreg &= CFGR_PPRE1_Reset_Mask;
        BICS     R1,R1,#0x700
//  643     /* Set PPRE1[2:0] bits according to RCC_HCLK value */
//  644     tmpreg |= RCC_HCLK;
        ORRS     R1,R0,R1
//  645     /* Store the new value */
//  646     RCC->CFGR = tmpreg;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        STR      R1,[R2, #+0]
//  647 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  648 
//  649 /**
//  650   * @brief  Configures the High Speed APB clock (PCLK2).
//  651   * @param  RCC_HCLK: defines the APB2 clock divider. This clock is derived from
//  652   *   the AHB clock (HCLK).
//  653   *   This parameter can be one of the following values:
//  654   *     @arg RCC_HCLK_Div1: APB2 clock = HCLK
//  655   *     @arg RCC_HCLK_Div2: APB2 clock = HCLK/2
//  656   *     @arg RCC_HCLK_Div4: APB2 clock = HCLK/4
//  657   *     @arg RCC_HCLK_Div8: APB2 clock = HCLK/8
//  658   *     @arg RCC_HCLK_Div16: APB2 clock = HCLK/16
//  659   * @retval None
//  660   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function RCC_PCLK2Config
          CFI NoCalls
        THUMB
//  661 void RCC_PCLK2Config(uint32_t RCC_HCLK)
//  662 {
//  663     uint32_t tmpreg = 0;
RCC_PCLK2Config:
        MOVS     R1,#+0
//  664     /* Check the parameters */
//  665     assert_param(IS_RCC_PCLK(RCC_HCLK));
//  666     tmpreg = RCC->CFGR;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  667     /* Clear PPRE2[2:0] bits */
//  668     tmpreg &= CFGR_PPRE2_Reset_Mask;
        BICS     R1,R1,#0x3800
//  669     /* Set PPRE2[2:0] bits according to RCC_HCLK value */
//  670     tmpreg |= RCC_HCLK << 3;
        ORRS     R1,R1,R0, LSL #+3
//  671     /* Store the new value */
//  672     RCC->CFGR = tmpreg;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        STR      R1,[R2, #+0]
//  673 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  674 
//  675 /**
//  676   * @brief  Enables or disables the specified RCC interrupts.
//  677   * @param  RCC_IT: specifies the RCC interrupt sources to be enabled or disabled.
//  678   *
//  679   *   For @b STM32_Connectivity_line_devices, this parameter can be any combination
//  680   *   of the following values
//  681   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
//  682   *     @arg RCC_IT_LSERDY: LSE ready interrupt
//  683   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
//  684   *     @arg RCC_IT_HSERDY: HSE ready interrupt
//  685   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
//  686   *     @arg RCC_IT_PLL2RDY: PLL2 ready interrupt
//  687   *     @arg RCC_IT_PLL3RDY: PLL3 ready interrupt
//  688   *
//  689   *   For @b other_STM32_devices, this parameter can be any combination of the
//  690   *   following values
//  691   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
//  692   *     @arg RCC_IT_LSERDY: LSE ready interrupt
//  693   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
//  694   *     @arg RCC_IT_HSERDY: HSE ready interrupt
//  695   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
//  696   *
//  697   * @param  NewState: new state of the specified RCC interrupts.
//  698   *   This parameter can be: ENABLE or DISABLE.
//  699   * @retval None
//  700   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function RCC_ITConfig
          CFI NoCalls
        THUMB
//  701 void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState)
//  702 {
//  703     /* Check the parameters */
//  704     assert_param(IS_RCC_IT(RCC_IT));
//  705     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  706     if (NewState != DISABLE)
RCC_ITConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??RCC_ITConfig_0
//  707     {
//  708         /* Perform Byte access to RCC_CIR bits to enable the selected interrupts */
//  709         *(__IO uint8_t *) CIR_BYTE2_ADDRESS |= RCC_IT;
        LDR.W    R2,??DataTable39_11  ;; 0x40021009
        LDRB     R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.W    R3,??DataTable39_11  ;; 0x40021009
        STRB     R2,[R3, #+0]
        B.N      ??RCC_ITConfig_1
//  710     }
//  711     else
//  712     {
//  713         /* Perform Byte access to RCC_CIR bits to disable the selected interrupts */
//  714         *(__IO uint8_t *) CIR_BYTE2_ADDRESS &= (uint8_t)~RCC_IT;
??RCC_ITConfig_0:
        LDR.W    R2,??DataTable39_11  ;; 0x40021009
        LDRB     R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.W    R3,??DataTable39_11  ;; 0x40021009
        STRB     R2,[R3, #+0]
//  715     }
//  716 }
??RCC_ITConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  717 
//  718 #ifndef STM32F10X_CL
//  719 /**
//  720   * @brief  Configures the USB clock (USBCLK).
//  721   * @param  RCC_USBCLKSource: specifies the USB clock source. This clock is
//  722   *   derived from the PLL output.
//  723   *   This parameter can be one of the following values:
//  724   *     @arg RCC_USBCLKSource_PLLCLK_1Div5: PLL clock divided by 1,5 selected as USB
//  725   *                                     clock source
//  726   *     @arg RCC_USBCLKSource_PLLCLK_Div1: PLL clock selected as USB clock source
//  727   * @retval None
//  728   */
//  729 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource)
//  730 {
//  731     /* Check the parameters */
//  732     assert_param(IS_RCC_USBCLK_SOURCE(RCC_USBCLKSource));
//  733 
//  734     *(__IO uint32_t *) CFGR_USBPRE_BB = RCC_USBCLKSource;
//  735 }
//  736 #else
//  737 /**
//  738   * @brief  Configures the USB OTG FS clock (OTGFSCLK).
//  739   *   This function applies only to STM32 Connectivity line devices.
//  740   * @param  RCC_OTGFSCLKSource: specifies the USB OTG FS clock source.
//  741   *   This clock is derived from the PLL output.
//  742   *   This parameter can be one of the following values:
//  743   *     @arg  RCC_OTGFSCLKSource_PLLVCO_Div3: PLL VCO clock divided by 2 selected as USB OTG FS clock source
//  744   *     @arg  RCC_OTGFSCLKSource_PLLVCO_Div2: PLL VCO clock divided by 2 selected as USB OTG FS clock source
//  745   * @retval None
//  746   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function RCC_OTGFSCLKConfig
          CFI NoCalls
        THUMB
//  747 void RCC_OTGFSCLKConfig(uint32_t RCC_OTGFSCLKSource)
//  748 {
//  749     /* Check the parameters */
//  750     assert_param(IS_RCC_OTGFSCLK_SOURCE(RCC_OTGFSCLKSource));
//  751 
//  752     *(__IO uint32_t *) CFGR_OTGFSPRE_BB = RCC_OTGFSCLKSource;
RCC_OTGFSCLKConfig:
        LDR.W    R1,??DataTable39_12  ;; 0x424200d8
        STR      R0,[R1, #+0]
//  753 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
//  754 #endif /* STM32F10X_CL */
//  755 
//  756 /**
//  757   * @brief  Configures the ADC clock (ADCCLK).
//  758   * @param  RCC_PCLK2: defines the ADC clock divider. This clock is derived from
//  759   *   the APB2 clock (PCLK2).
//  760   *   This parameter can be one of the following values:
//  761   *     @arg RCC_PCLK2_Div2: ADC clock = PCLK2/2
//  762   *     @arg RCC_PCLK2_Div4: ADC clock = PCLK2/4
//  763   *     @arg RCC_PCLK2_Div6: ADC clock = PCLK2/6
//  764   *     @arg RCC_PCLK2_Div8: ADC clock = PCLK2/8
//  765   * @retval None
//  766   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function RCC_ADCCLKConfig
          CFI NoCalls
        THUMB
//  767 void RCC_ADCCLKConfig(uint32_t RCC_PCLK2)
//  768 {
//  769     uint32_t tmpreg = 0;
RCC_ADCCLKConfig:
        MOVS     R1,#+0
//  770     /* Check the parameters */
//  771     assert_param(IS_RCC_ADCCLK(RCC_PCLK2));
//  772     tmpreg = RCC->CFGR;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  773     /* Clear ADCPRE[1:0] bits */
//  774     tmpreg &= CFGR_ADCPRE_Reset_Mask;
        BICS     R1,R1,#0xC000
//  775     /* Set ADCPRE[1:0] bits according to RCC_PCLK2 value */
//  776     tmpreg |= RCC_PCLK2;
        ORRS     R1,R0,R1
//  777     /* Store the new value */
//  778     RCC->CFGR = tmpreg;
        LDR.W    R2,??DataTable39_1  ;; 0x40021004
        STR      R1,[R2, #+0]
//  779 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  780 
//  781 #ifdef STM32F10X_CL
//  782 /**
//  783   * @brief  Configures the I2S2 clock source(I2S2CLK).
//  784   * @note
//  785   *   - This function must be called before enabling I2S2 APB clock.
//  786   *   - This function applies only to STM32 Connectivity line devices.
//  787   * @param  RCC_I2S2CLKSource: specifies the I2S2 clock source.
//  788   *   This parameter can be one of the following values:
//  789   *     @arg RCC_I2S2CLKSource_SYSCLK: system clock selected as I2S2 clock entry
//  790   *     @arg RCC_I2S2CLKSource_PLL3_VCO: PLL3 VCO clock selected as I2S2 clock entry
//  791   * @retval None
//  792   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function RCC_I2S2CLKConfig
          CFI NoCalls
        THUMB
//  793 void RCC_I2S2CLKConfig(uint32_t RCC_I2S2CLKSource)
//  794 {
//  795     /* Check the parameters */
//  796     assert_param(IS_RCC_I2S2CLK_SOURCE(RCC_I2S2CLKSource));
//  797 
//  798     *(__IO uint32_t *) CFGR2_I2S2SRC_BB = RCC_I2S2CLKSource;
RCC_I2S2CLKConfig:
        LDR.W    R1,??DataTable39_13  ;; 0x424205c4
        STR      R0,[R1, #+0]
//  799 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  800 
//  801 /**
//  802   * @brief  Configures the I2S3 clock source(I2S2CLK).
//  803   * @note
//  804   *   - This function must be called before enabling I2S3 APB clock.
//  805   *   - This function applies only to STM32 Connectivity line devices.
//  806   * @param  RCC_I2S3CLKSource: specifies the I2S3 clock source.
//  807   *   This parameter can be one of the following values:
//  808   *     @arg RCC_I2S3CLKSource_SYSCLK: system clock selected as I2S3 clock entry
//  809   *     @arg RCC_I2S3CLKSource_PLL3_VCO: PLL3 VCO clock selected as I2S3 clock entry
//  810   * @retval None
//  811   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function RCC_I2S3CLKConfig
          CFI NoCalls
        THUMB
//  812 void RCC_I2S3CLKConfig(uint32_t RCC_I2S3CLKSource)
//  813 {
//  814     /* Check the parameters */
//  815     assert_param(IS_RCC_I2S3CLK_SOURCE(RCC_I2S3CLKSource));
//  816 
//  817     *(__IO uint32_t *) CFGR2_I2S3SRC_BB = RCC_I2S3CLKSource;
RCC_I2S3CLKConfig:
        LDR.W    R1,??DataTable39_14  ;; 0x424205c8
        STR      R0,[R1, #+0]
//  818 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
//  819 #endif /* STM32F10X_CL */
//  820 
//  821 /**
//  822   * @brief  Configures the External Low Speed oscillator (LSE).
//  823   * @param  RCC_LSE: specifies the new state of the LSE.
//  824   *   This parameter can be one of the following values:
//  825   *     @arg RCC_LSE_OFF: LSE oscillator OFF
//  826   *     @arg RCC_LSE_ON: LSE oscillator ON
//  827   *     @arg RCC_LSE_Bypass: LSE oscillator bypassed with external clock
//  828   * @retval None
//  829   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function RCC_LSEConfig
          CFI NoCalls
        THUMB
//  830 void RCC_LSEConfig(uint8_t RCC_LSE)
//  831 {
//  832     /* Check the parameters */
//  833     assert_param(IS_RCC_LSE(RCC_LSE));
//  834     /* Reset LSEON and LSEBYP bits before configuring the LSE ------------------*/
//  835     /* Reset LSEON bit */
//  836     *(__IO uint8_t *) BDCR_ADDRESS = RCC_LSE_OFF;
RCC_LSEConfig:
        LDR.W    R1,??DataTable39_15  ;; 0x40021020
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//  837     /* Reset LSEBYP bit */
//  838     *(__IO uint8_t *) BDCR_ADDRESS = RCC_LSE_OFF;
        LDR.W    R1,??DataTable39_15  ;; 0x40021020
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//  839     /* Configure LSE (RCC_LSE_OFF is already covered by the code section above) */
//  840     switch(RCC_LSE)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,R0
        CMP      R1,#+1
        BEQ.N    ??RCC_LSEConfig_0
        CMP      R1,#+4
        BEQ.N    ??RCC_LSEConfig_1
        B.N      ??RCC_LSEConfig_2
//  841     {
//  842     case RCC_LSE_ON:
//  843         /* Set LSEON bit */
//  844         *(__IO uint8_t *) BDCR_ADDRESS = RCC_LSE_ON;
??RCC_LSEConfig_0:
        LDR.W    R1,??DataTable39_15  ;; 0x40021020
        MOVS     R2,#+1
        STRB     R2,[R1, #+0]
//  845         break;
        B.N      ??RCC_LSEConfig_3
//  846 
//  847     case RCC_LSE_Bypass:
//  848         /* Set LSEBYP and LSEON bits */
//  849         *(__IO uint8_t *) BDCR_ADDRESS = RCC_LSE_Bypass | RCC_LSE_ON;
??RCC_LSEConfig_1:
        LDR.W    R1,??DataTable39_15  ;; 0x40021020
        MOVS     R2,#+5
        STRB     R2,[R1, #+0]
//  850         break;
        B.N      ??RCC_LSEConfig_3
//  851 
//  852     default:
//  853         break;
//  854     }
//  855 }
??RCC_LSEConfig_2:
??RCC_LSEConfig_3:
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  856 
//  857 /**
//  858   * @brief  Enables or disables the Internal Low Speed oscillator (LSI).
//  859   * @note   LSI can not be disabled if the IWDG is running.
//  860   * @param  NewState: new state of the LSI. This parameter can be: ENABLE or DISABLE.
//  861   * @retval None
//  862   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function RCC_LSICmd
          CFI NoCalls
        THUMB
//  863 void RCC_LSICmd(FunctionalState NewState)
//  864 {
//  865     /* Check the parameters */
//  866     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  867     *(__IO uint32_t *) CSR_LSION_BB = (uint32_t)NewState;
RCC_LSICmd:
        LDR.W    R1,??DataTable39_16  ;; 0x42420480
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  868 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  869 
//  870 /**
//  871   * @brief  Configures the RTC clock (RTCCLK).
//  872   * @note   Once the RTC clock is selected it can't be changed unless the Backup domain is reset.
//  873   * @param  RCC_RTCCLKSource: specifies the RTC clock source.
//  874   *   This parameter can be one of the following values:
//  875   *     @arg RCC_RTCCLKSource_LSE: LSE selected as RTC clock
//  876   *     @arg RCC_RTCCLKSource_LSI: LSI selected as RTC clock
//  877   *     @arg RCC_RTCCLKSource_HSE_Div128: HSE clock divided by 128 selected as RTC clock
//  878   * @retval None
//  879   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function RCC_RTCCLKConfig
          CFI NoCalls
        THUMB
//  880 void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource)
//  881 {
//  882     /* Check the parameters */
//  883     assert_param(IS_RCC_RTCCLK_SOURCE(RCC_RTCCLKSource));
//  884     /* Select the RTC clock source */
//  885     RCC->BDCR |= RCC_RTCCLKSource;
RCC_RTCCLKConfig:
        LDR.N    R1,??DataTable39_15  ;; 0x40021020
        LDR      R1,[R1, #+0]
        ORRS     R1,R0,R1
        LDR.N    R2,??DataTable39_15  ;; 0x40021020
        STR      R1,[R2, #+0]
//  886 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
//  887 
//  888 /**
//  889   * @brief  Enables or disables the RTC clock.
//  890   * @note   This function must be used only after the RTC clock was selected using the RCC_RTCCLKConfig function.
//  891   * @param  NewState: new state of the RTC clock. This parameter can be: ENABLE or DISABLE.
//  892   * @retval None
//  893   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function RCC_RTCCLKCmd
          CFI NoCalls
        THUMB
//  894 void RCC_RTCCLKCmd(FunctionalState NewState)
//  895 {
//  896     /* Check the parameters */
//  897     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  898     *(__IO uint32_t *) BDCR_RTCEN_BB = (uint32_t)NewState;
RCC_RTCCLKCmd:
        LDR.N    R1,??DataTable39_17  ;; 0x4242043c
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  899 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  900 
//  901 /**
//  902   * @brief  Returns the frequencies of different on chip clocks.
//  903   * @param  RCC_Clocks: pointer to a RCC_ClocksTypeDef structure which will hold
//  904   *         the clocks frequencies.
//  905   * @note   The result of this function could be not correct when using
//  906   *         fractional value for HSE crystal.
//  907   * @retval None
//  908   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function RCC_GetClocksFreq
          CFI NoCalls
        THUMB
//  909 void RCC_GetClocksFreq(RCC_ClocksTypeDef *RCC_Clocks)
//  910 {
RCC_GetClocksFreq:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
//  911     uint32_t tmp = 0, pllmull = 0, pllsource = 0, presc = 0;
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R4,#+0
//  912 
//  913 #ifdef  STM32F10X_CL
//  914     uint32_t prediv1source = 0, prediv1factor = 0, prediv2factor = 0, pll2mull = 0;
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R12,#+0
//  915 #endif /* STM32F10X_CL */
//  916 
//  917 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  918     uint32_t prediv1factor = 0;
//  919 #endif
//  920 
//  921     /* Get SYSCLK source -------------------------------------------------------*/
//  922     tmp = RCC->CFGR & CFGR_SWS_Mask;
        LDR.W    LR,??DataTable39_1  ;; 0x40021004
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0xC
        MOV      R1,LR
//  923 
//  924     switch (tmp)
        MOV      LR,R1
        CMP      LR,#+0
        BEQ.N    ??RCC_GetClocksFreq_0
        CMP      LR,#+4
        BEQ.N    ??RCC_GetClocksFreq_1
        CMP      LR,#+8
        BEQ.N    ??RCC_GetClocksFreq_2
        B.N      ??RCC_GetClocksFreq_3
//  925     {
//  926     case 0x00:  /* HSI used as system clock */
//  927         RCC_Clocks->SYSCLK_Frequency = HSI_VALUE;
??RCC_GetClocksFreq_0:
        LDR.W    LR,??DataTable39_18  ;; 0x7a1200
        STR      LR,[R0, #+0]
//  928         break;
        B.N      ??RCC_GetClocksFreq_4
//  929     case 0x04:  /* HSE used as system clock */
//  930         RCC_Clocks->SYSCLK_Frequency = HSE_VALUE;
??RCC_GetClocksFreq_1:
        LDR.W    LR,??DataTable39_18  ;; 0x7a1200
        STR      LR,[R0, #+0]
//  931         break;
        B.N      ??RCC_GetClocksFreq_4
//  932     case 0x08:  /* PLL used as system clock */
//  933 
//  934         /* Get PLL clock source and multiplication factor ----------------------*/
//  935         pllmull = RCC->CFGR & CFGR_PLLMull_Mask;
??RCC_GetClocksFreq_2:
        LDR.W    LR,??DataTable39_1  ;; 0x40021004
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0x3C0000
        MOV      R2,LR
//  936         pllsource = RCC->CFGR & CFGR_PLLSRC_Mask;
        LDR.W    LR,??DataTable39_1  ;; 0x40021004
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0x10000
        MOV      R3,LR
//  937 
//  938 #ifndef STM32F10X_CL
//  939         pllmull = ( pllmull >> 18) + 2;
//  940 
//  941         if (pllsource == 0x00)
//  942         {
//  943             /* HSI oscillator clock divided by 2 selected as PLL clock entry */
//  944             RCC_Clocks->SYSCLK_Frequency = (HSI_VALUE >> 1) * pllmull;
//  945         }
//  946         else
//  947         {
//  948 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  949             prediv1factor = (RCC->CFGR2 & CFGR2_PREDIV1) + 1;
//  950             /* HSE oscillator clock selected as PREDIV1 clock entry */
//  951             RCC_Clocks->SYSCLK_Frequency = (HSE_VALUE / prediv1factor) * pllmull;
//  952 #else
//  953             /* HSE selected as PLL clock entry */
//  954             if ((RCC->CFGR & CFGR_PLLXTPRE_Mask) != (uint32_t)RESET)
//  955             {
//  956                 /* HSE oscillator clock divided by 2 */
//  957                 RCC_Clocks->SYSCLK_Frequency = (HSE_VALUE >> 1) * pllmull;
//  958             }
//  959             else
//  960             {
//  961                 RCC_Clocks->SYSCLK_Frequency = HSE_VALUE * pllmull;
//  962             }
//  963 #endif
//  964         }
//  965 #else
//  966         pllmull = pllmull >> 18;
        LSRS     R2,R2,#+18
//  967 
//  968         if (pllmull != 0x0D)
        CMP      R2,#+13
        BEQ.N    ??RCC_GetClocksFreq_5
//  969         {
//  970             pllmull += 2;
        ADDS     R2,R2,#+2
        B.N      ??RCC_GetClocksFreq_6
//  971         }
//  972         else
//  973         {
//  974             /* PLL multiplication factor = PLL input clock * 6.5 */
//  975             pllmull = 13 / 2;
??RCC_GetClocksFreq_5:
        MOVS     LR,#+6
        MOV      R2,LR
//  976         }
//  977 
//  978         if (pllsource == 0x00)
??RCC_GetClocksFreq_6:
        CMP      R3,#+0
        BNE.N    ??RCC_GetClocksFreq_7
//  979         {
//  980             /* HSI oscillator clock divided by 2 selected as PLL clock entry */
//  981             RCC_Clocks->SYSCLK_Frequency = (HSI_VALUE >> 1) * pllmull;
        LDR.W    LR,??DataTable39_19  ;; 0x3d0900
        MUL      LR,LR,R2
        STR      LR,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_8
//  982         }
//  983         else
//  984         {
//  985             /* PREDIV1 selected as PLL clock entry */
//  986 
//  987             /* Get PREDIV1 clock source and division factor */
//  988             prediv1source = RCC->CFGR2 & CFGR2_PREDIV1SRC;
??RCC_GetClocksFreq_7:
        LDR.W    LR,??DataTable39_5  ;; 0x4002102c
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0x10000
        MOV      R5,LR
//  989             prediv1factor = (RCC->CFGR2 & CFGR2_PREDIV1) + 1;
        LDR.W    LR,??DataTable39_5  ;; 0x4002102c
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0xF
        ADDS     LR,LR,#+1
        MOV      R6,LR
//  990 
//  991             if (prediv1source == 0)
        CMP      R5,#+0
        BNE.N    ??RCC_GetClocksFreq_9
//  992             {
//  993                 /* HSE oscillator clock selected as PREDIV1 clock entry */
//  994                 RCC_Clocks->SYSCLK_Frequency = (HSE_VALUE / prediv1factor) * pllmull;
        LDR.W    LR,??DataTable39_18  ;; 0x7a1200
        UDIV     LR,LR,R6
        MUL      LR,R2,LR
        STR      LR,[R0, #+0]
        B.N      ??RCC_GetClocksFreq_8
//  995             }
//  996             else
//  997             {
//  998                 /* PLL2 clock selected as PREDIV1 clock entry */
//  999 
// 1000                 /* Get PREDIV2 division factor and PLL2 multiplication factor */
// 1001                 prediv2factor = ((RCC->CFGR2 & CFGR2_PREDIV2) >> 4) + 1;
??RCC_GetClocksFreq_9:
        LDR.W    LR,??DataTable39_5  ;; 0x4002102c
        LDR      LR,[LR, #+0]
        UBFX     LR,LR,#+4,#+4
        ADDS     LR,LR,#+1
        MOV      R7,LR
// 1002                 pll2mull = ((RCC->CFGR2 & CFGR2_PLL2MUL) >> 8 ) + 2;
        LDR.W    LR,??DataTable39_5  ;; 0x4002102c
        LDR      LR,[LR, #+0]
        UBFX     LR,LR,#+8,#+4
        ADDS     LR,LR,#+2
        MOV      R12,LR
// 1003                 RCC_Clocks->SYSCLK_Frequency = (((HSE_VALUE / prediv2factor) * pll2mull) / prediv1factor) * pllmull;
        LDR.W    LR,??DataTable39_18  ;; 0x7a1200
        UDIV     LR,LR,R7
        MUL      LR,R12,LR
        UDIV     LR,LR,R6
        MUL      LR,R2,LR
        STR      LR,[R0, #+0]
// 1004             }
// 1005         }
// 1006 #endif /* STM32F10X_CL */
// 1007         break;
??RCC_GetClocksFreq_8:
        B.N      ??RCC_GetClocksFreq_4
// 1008 
// 1009     default:
// 1010         RCC_Clocks->SYSCLK_Frequency = HSI_VALUE;
??RCC_GetClocksFreq_3:
        LDR.W    LR,??DataTable39_18  ;; 0x7a1200
        STR      LR,[R0, #+0]
// 1011         break;
// 1012     }
// 1013 
// 1014     /* Compute HCLK, PCLK1, PCLK2 and ADCCLK clocks frequencies ----------------*/
// 1015     /* Get HCLK prescaler */
// 1016     tmp = RCC->CFGR & CFGR_HPRE_Set_Mask;
??RCC_GetClocksFreq_4:
        LDR.W    LR,??DataTable39_1  ;; 0x40021004
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0xF0
        MOV      R1,LR
// 1017     tmp = tmp >> 4;
        LSRS     R1,R1,#+4
// 1018     presc = APBAHBPrescTable[tmp];
        LDR.W    LR,??DataTable39_20
        LDRB     LR,[R1, LR]
        MOV      R4,LR
// 1019     /* HCLK clock frequency */
// 1020     RCC_Clocks->HCLK_Frequency = RCC_Clocks->SYSCLK_Frequency >> presc;
        LDR      LR,[R0, #+0]
        LSRS     LR,LR,R4
        STR      LR,[R0, #+4]
// 1021     /* Get PCLK1 prescaler */
// 1022     tmp = RCC->CFGR & CFGR_PPRE1_Set_Mask;
        LDR.W    LR,??DataTable39_1  ;; 0x40021004
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0x700
        MOV      R1,LR
// 1023     tmp = tmp >> 8;
        LSRS     R1,R1,#+8
// 1024     presc = APBAHBPrescTable[tmp];
        LDR.W    LR,??DataTable39_20
        LDRB     LR,[R1, LR]
        MOV      R4,LR
// 1025     /* PCLK1 clock frequency */
// 1026     RCC_Clocks->PCLK1_Frequency = RCC_Clocks->HCLK_Frequency >> presc;
        LDR      LR,[R0, #+4]
        LSRS     LR,LR,R4
        STR      LR,[R0, #+8]
// 1027     /* Get PCLK2 prescaler */
// 1028     tmp = RCC->CFGR & CFGR_PPRE2_Set_Mask;
        LDR.W    LR,??DataTable39_1  ;; 0x40021004
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0x3800
        MOV      R1,LR
// 1029     tmp = tmp >> 11;
        LSRS     R1,R1,#+11
// 1030     presc = APBAHBPrescTable[tmp];
        LDR.W    LR,??DataTable39_20
        LDRB     LR,[R1, LR]
        MOV      R4,LR
// 1031     /* PCLK2 clock frequency */
// 1032     RCC_Clocks->PCLK2_Frequency = RCC_Clocks->HCLK_Frequency >> presc;
        LDR      LR,[R0, #+4]
        LSRS     LR,LR,R4
        STR      LR,[R0, #+12]
// 1033     /* Get ADCCLK prescaler */
// 1034     tmp = RCC->CFGR & CFGR_ADCPRE_Set_Mask;
        LDR.W    LR,??DataTable39_1  ;; 0x40021004
        LDR      LR,[LR, #+0]
        ANDS     LR,LR,#0xC000
        MOV      R1,LR
// 1035     tmp = tmp >> 14;
        LSRS     R1,R1,#+14
// 1036     presc = ADCPrescTable[tmp];
        LDR.W    LR,??DataTable39_21
        LDRB     LR,[R1, LR]
        MOV      R4,LR
// 1037     /* ADCCLK clock frequency */
// 1038     RCC_Clocks->ADCCLK_Frequency = RCC_Clocks->PCLK2_Frequency / presc;
        LDR      LR,[R0, #+12]
        UDIV     LR,LR,R4
        STR      LR,[R0, #+16]
// 1039 }
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock27
// 1040 
// 1041 /**
// 1042   * @brief  Enables or disables the AHB peripheral clock.
// 1043   * @param  RCC_AHBPeriph: specifies the AHB peripheral to gates its clock.
// 1044   *
// 1045   *   For @b STM32_Connectivity_line_devices, this parameter can be any combination
// 1046   *   of the following values:
// 1047   *     @arg RCC_AHBPeriph_DMA1
// 1048   *     @arg RCC_AHBPeriph_DMA2
// 1049   *     @arg RCC_AHBPeriph_SRAM
// 1050   *     @arg RCC_AHBPeriph_FLITF
// 1051   *     @arg RCC_AHBPeriph_CRC
// 1052   *     @arg RCC_AHBPeriph_OTG_FS
// 1053   *     @arg RCC_AHBPeriph_ETH_MAC
// 1054   *     @arg RCC_AHBPeriph_ETH_MAC_Tx
// 1055   *     @arg RCC_AHBPeriph_ETH_MAC_Rx
// 1056   *
// 1057   *   For @b other_STM32_devices, this parameter can be any combination of the
// 1058   *   following values:
// 1059   *     @arg RCC_AHBPeriph_DMA1
// 1060   *     @arg RCC_AHBPeriph_DMA2
// 1061   *     @arg RCC_AHBPeriph_SRAM
// 1062   *     @arg RCC_AHBPeriph_FLITF
// 1063   *     @arg RCC_AHBPeriph_CRC
// 1064   *     @arg RCC_AHBPeriph_FSMC
// 1065   *     @arg RCC_AHBPeriph_SDIO
// 1066   *
// 1067   * @note SRAM and FLITF clock can be disabled only during sleep mode.
// 1068   * @param  NewState: new state of the specified peripheral clock.
// 1069   *   This parameter can be: ENABLE or DISABLE.
// 1070   * @retval None
// 1071   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function RCC_AHBPeriphClockCmd
          CFI NoCalls
        THUMB
// 1072 void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState)
// 1073 {
// 1074     /* Check the parameters */
// 1075     assert_param(IS_RCC_AHB_PERIPH(RCC_AHBPeriph));
// 1076     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1077 
// 1078     if (NewState != DISABLE)
RCC_AHBPeriphClockCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??RCC_AHBPeriphClockCmd_0
// 1079     {
// 1080         RCC->AHBENR |= RCC_AHBPeriph;
        LDR.N    R2,??DataTable39_22  ;; 0x40021014
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable39_22  ;; 0x40021014
        STR      R2,[R3, #+0]
        B.N      ??RCC_AHBPeriphClockCmd_1
// 1081     }
// 1082     else
// 1083     {
// 1084         RCC->AHBENR &= ~RCC_AHBPeriph;
??RCC_AHBPeriphClockCmd_0:
        LDR.N    R2,??DataTable39_22  ;; 0x40021014
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable39_22  ;; 0x40021014
        STR      R2,[R3, #+0]
// 1085     }
// 1086 }
??RCC_AHBPeriphClockCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 1087 
// 1088 /**
// 1089   * @brief  Enables or disables the High Speed APB (APB2) peripheral clock.
// 1090   * @param  RCC_APB2Periph: specifies the APB2 peripheral to gates its clock.
// 1091   *   This parameter can be any combination of the following values:
// 1092   *     @arg RCC_APB2Periph_AFIO, RCC_APB2Periph_GPIOA, RCC_APB2Periph_GPIOB,
// 1093   *          RCC_APB2Periph_GPIOC, RCC_APB2Periph_GPIOD, RCC_APB2Periph_GPIOE,
// 1094   *          RCC_APB2Periph_GPIOF, RCC_APB2Periph_GPIOG, RCC_APB2Periph_ADC1,
// 1095   *          RCC_APB2Periph_ADC2, RCC_APB2Periph_TIM1, RCC_APB2Periph_SPI1,
// 1096   *          RCC_APB2Periph_TIM8, RCC_APB2Periph_USART1, RCC_APB2Periph_ADC3,
// 1097   *          RCC_APB2Periph_TIM15, RCC_APB2Periph_TIM16, RCC_APB2Periph_TIM17,
// 1098   *          RCC_APB2Periph_TIM9, RCC_APB2Periph_TIM10, RCC_APB2Periph_TIM11
// 1099   * @param  NewState: new state of the specified peripheral clock.
// 1100   *   This parameter can be: ENABLE or DISABLE.
// 1101   * @retval None
// 1102   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function RCC_APB2PeriphClockCmd
          CFI NoCalls
        THUMB
// 1103 void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
// 1104 {
// 1105     /* Check the parameters */
// 1106     assert_param(IS_RCC_APB2_PERIPH(RCC_APB2Periph));
// 1107     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1108     if (NewState != DISABLE)
RCC_APB2PeriphClockCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??RCC_APB2PeriphClockCmd_0
// 1109     {
// 1110         RCC->APB2ENR |= RCC_APB2Periph;
        LDR.N    R2,??DataTable39_23  ;; 0x40021018
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable39_23  ;; 0x40021018
        STR      R2,[R3, #+0]
        B.N      ??RCC_APB2PeriphClockCmd_1
// 1111     }
// 1112     else
// 1113     {
// 1114         RCC->APB2ENR &= ~RCC_APB2Periph;
??RCC_APB2PeriphClockCmd_0:
        LDR.N    R2,??DataTable39_23  ;; 0x40021018
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable39_23  ;; 0x40021018
        STR      R2,[R3, #+0]
// 1115     }
// 1116 }
??RCC_APB2PeriphClockCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
// 1117 
// 1118 /**
// 1119   * @brief  Enables or disables the Low Speed APB (APB1) peripheral clock.
// 1120   * @param  RCC_APB1Periph: specifies the APB1 peripheral to gates its clock.
// 1121   *   This parameter can be any combination of the following values:
// 1122   *     @arg RCC_APB1Periph_TIM2, RCC_APB1Periph_TIM3, RCC_APB1Periph_TIM4,
// 1123   *          RCC_APB1Periph_TIM5, RCC_APB1Periph_TIM6, RCC_APB1Periph_TIM7,
// 1124   *          RCC_APB1Periph_WWDG, RCC_APB1Periph_SPI2, RCC_APB1Periph_SPI3,
// 1125   *          RCC_APB1Periph_USART2, RCC_APB1Periph_USART3, RCC_APB1Periph_USART4,
// 1126   *          RCC_APB1Periph_USART5, RCC_APB1Periph_I2C1, RCC_APB1Periph_I2C2,
// 1127   *          RCC_APB1Periph_USB, RCC_APB1Periph_CAN1, RCC_APB1Periph_BKP,
// 1128   *          RCC_APB1Periph_PWR, RCC_APB1Periph_DAC, RCC_APB1Periph_CEC,
// 1129   *          RCC_APB1Periph_TIM12, RCC_APB1Periph_TIM13, RCC_APB1Periph_TIM14
// 1130   * @param  NewState: new state of the specified peripheral clock.
// 1131   *   This parameter can be: ENABLE or DISABLE.
// 1132   * @retval None
// 1133   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function RCC_APB1PeriphClockCmd
          CFI NoCalls
        THUMB
// 1134 void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState)
// 1135 {
// 1136     /* Check the parameters */
// 1137     assert_param(IS_RCC_APB1_PERIPH(RCC_APB1Periph));
// 1138     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1139     if (NewState != DISABLE)
RCC_APB1PeriphClockCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??RCC_APB1PeriphClockCmd_0
// 1140     {
// 1141         RCC->APB1ENR |= RCC_APB1Periph;
        LDR.N    R2,??DataTable39_24  ;; 0x4002101c
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable39_24  ;; 0x4002101c
        STR      R2,[R3, #+0]
        B.N      ??RCC_APB1PeriphClockCmd_1
// 1142     }
// 1143     else
// 1144     {
// 1145         RCC->APB1ENR &= ~RCC_APB1Periph;
??RCC_APB1PeriphClockCmd_0:
        LDR.N    R2,??DataTable39_24  ;; 0x4002101c
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable39_24  ;; 0x4002101c
        STR      R2,[R3, #+0]
// 1146     }
// 1147 }
??RCC_APB1PeriphClockCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
// 1148 
// 1149 #ifdef STM32F10X_CL
// 1150 /**
// 1151   * @brief  Forces or releases AHB peripheral reset.
// 1152   * @note   This function applies only to STM32 Connectivity line devices.
// 1153   * @param  RCC_AHBPeriph: specifies the AHB peripheral to reset.
// 1154   *   This parameter can be any combination of the following values:
// 1155   *     @arg RCC_AHBPeriph_OTG_FS
// 1156   *     @arg RCC_AHBPeriph_ETH_MAC
// 1157   * @param  NewState: new state of the specified peripheral reset.
// 1158   *   This parameter can be: ENABLE or DISABLE.
// 1159   * @retval None
// 1160   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function RCC_AHBPeriphResetCmd
          CFI NoCalls
        THUMB
// 1161 void RCC_AHBPeriphResetCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState)
// 1162 {
// 1163     /* Check the parameters */
// 1164     assert_param(IS_RCC_AHB_PERIPH_RESET(RCC_AHBPeriph));
// 1165     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1166 
// 1167     if (NewState != DISABLE)
RCC_AHBPeriphResetCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??RCC_AHBPeriphResetCmd_0
// 1168     {
// 1169         RCC->AHBRSTR |= RCC_AHBPeriph;
        LDR.N    R2,??DataTable39_25  ;; 0x40021028
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable39_25  ;; 0x40021028
        STR      R2,[R3, #+0]
        B.N      ??RCC_AHBPeriphResetCmd_1
// 1170     }
// 1171     else
// 1172     {
// 1173         RCC->AHBRSTR &= ~RCC_AHBPeriph;
??RCC_AHBPeriphResetCmd_0:
        LDR.N    R2,??DataTable39_25  ;; 0x40021028
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable39_25  ;; 0x40021028
        STR      R2,[R3, #+0]
// 1174     }
// 1175 }
??RCC_AHBPeriphResetCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock31
// 1176 #endif /* STM32F10X_CL */
// 1177 
// 1178 /**
// 1179   * @brief  Forces or releases High Speed APB (APB2) peripheral reset.
// 1180   * @param  RCC_APB2Periph: specifies the APB2 peripheral to reset.
// 1181   *   This parameter can be any combination of the following values:
// 1182   *     @arg RCC_APB2Periph_AFIO, RCC_APB2Periph_GPIOA, RCC_APB2Periph_GPIOB,
// 1183   *          RCC_APB2Periph_GPIOC, RCC_APB2Periph_GPIOD, RCC_APB2Periph_GPIOE,
// 1184   *          RCC_APB2Periph_GPIOF, RCC_APB2Periph_GPIOG, RCC_APB2Periph_ADC1,
// 1185   *          RCC_APB2Periph_ADC2, RCC_APB2Periph_TIM1, RCC_APB2Periph_SPI1,
// 1186   *          RCC_APB2Periph_TIM8, RCC_APB2Periph_USART1, RCC_APB2Periph_ADC3,
// 1187   *          RCC_APB2Periph_TIM15, RCC_APB2Periph_TIM16, RCC_APB2Periph_TIM17,
// 1188   *          RCC_APB2Periph_TIM9, RCC_APB2Periph_TIM10, RCC_APB2Periph_TIM11
// 1189   * @param  NewState: new state of the specified peripheral reset.
// 1190   *   This parameter can be: ENABLE or DISABLE.
// 1191   * @retval None
// 1192   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function RCC_APB2PeriphResetCmd
          CFI NoCalls
        THUMB
// 1193 void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
// 1194 {
// 1195     /* Check the parameters */
// 1196     assert_param(IS_RCC_APB2_PERIPH(RCC_APB2Periph));
// 1197     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1198     if (NewState != DISABLE)
RCC_APB2PeriphResetCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??RCC_APB2PeriphResetCmd_0
// 1199     {
// 1200         RCC->APB2RSTR |= RCC_APB2Periph;
        LDR.N    R2,??DataTable39_26  ;; 0x4002100c
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable39_26  ;; 0x4002100c
        STR      R2,[R3, #+0]
        B.N      ??RCC_APB2PeriphResetCmd_1
// 1201     }
// 1202     else
// 1203     {
// 1204         RCC->APB2RSTR &= ~RCC_APB2Periph;
??RCC_APB2PeriphResetCmd_0:
        LDR.N    R2,??DataTable39_26  ;; 0x4002100c
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable39_26  ;; 0x4002100c
        STR      R2,[R3, #+0]
// 1205     }
// 1206 }
??RCC_APB2PeriphResetCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock32
// 1207 
// 1208 /**
// 1209   * @brief  Forces or releases Low Speed APB (APB1) peripheral reset.
// 1210   * @param  RCC_APB1Periph: specifies the APB1 peripheral to reset.
// 1211   *   This parameter can be any combination of the following values:
// 1212   *     @arg RCC_APB1Periph_TIM2, RCC_APB1Periph_TIM3, RCC_APB1Periph_TIM4,
// 1213   *          RCC_APB1Periph_TIM5, RCC_APB1Periph_TIM6, RCC_APB1Periph_TIM7,
// 1214   *          RCC_APB1Periph_WWDG, RCC_APB1Periph_SPI2, RCC_APB1Periph_SPI3,
// 1215   *          RCC_APB1Periph_USART2, RCC_APB1Periph_USART3, RCC_APB1Periph_USART4,
// 1216   *          RCC_APB1Periph_USART5, RCC_APB1Periph_I2C1, RCC_APB1Periph_I2C2,
// 1217   *          RCC_APB1Periph_USB, RCC_APB1Periph_CAN1, RCC_APB1Periph_BKP,
// 1218   *          RCC_APB1Periph_PWR, RCC_APB1Periph_DAC, RCC_APB1Periph_CEC,
// 1219   *          RCC_APB1Periph_TIM12, RCC_APB1Periph_TIM13, RCC_APB1Periph_TIM14
// 1220   * @param  NewState: new state of the specified peripheral clock.
// 1221   *   This parameter can be: ENABLE or DISABLE.
// 1222   * @retval None
// 1223   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function RCC_APB1PeriphResetCmd
          CFI NoCalls
        THUMB
// 1224 void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState)
// 1225 {
// 1226     /* Check the parameters */
// 1227     assert_param(IS_RCC_APB1_PERIPH(RCC_APB1Periph));
// 1228     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1229     if (NewState != DISABLE)
RCC_APB1PeriphResetCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??RCC_APB1PeriphResetCmd_0
// 1230     {
// 1231         RCC->APB1RSTR |= RCC_APB1Periph;
        LDR.N    R2,??DataTable39_27  ;; 0x40021010
        LDR      R2,[R2, #+0]
        ORRS     R2,R0,R2
        LDR.N    R3,??DataTable39_27  ;; 0x40021010
        STR      R2,[R3, #+0]
        B.N      ??RCC_APB1PeriphResetCmd_1
// 1232     }
// 1233     else
// 1234     {
// 1235         RCC->APB1RSTR &= ~RCC_APB1Periph;
??RCC_APB1PeriphResetCmd_0:
        LDR.N    R2,??DataTable39_27  ;; 0x40021010
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R0
        LDR.N    R3,??DataTable39_27  ;; 0x40021010
        STR      R2,[R3, #+0]
// 1236     }
// 1237 }
??RCC_APB1PeriphResetCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock33
// 1238 
// 1239 /**
// 1240   * @brief  Forces or releases the Backup domain reset.
// 1241   * @param  NewState: new state of the Backup domain reset.
// 1242   *   This parameter can be: ENABLE or DISABLE.
// 1243   * @retval None
// 1244   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function RCC_BackupResetCmd
          CFI NoCalls
        THUMB
// 1245 void RCC_BackupResetCmd(FunctionalState NewState)
// 1246 {
// 1247     /* Check the parameters */
// 1248     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1249     *(__IO uint32_t *) BDCR_BDRST_BB = (uint32_t)NewState;
RCC_BackupResetCmd:
        LDR.N    R1,??DataTable39_28  ;; 0x42420440
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
// 1250 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock34
// 1251 
// 1252 /**
// 1253   * @brief  Enables or disables the Clock Security System.
// 1254   * @param  NewState: new state of the Clock Security System..
// 1255   *   This parameter can be: ENABLE or DISABLE.
// 1256   * @retval None
// 1257   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function RCC_ClockSecuritySystemCmd
          CFI NoCalls
        THUMB
// 1258 void RCC_ClockSecuritySystemCmd(FunctionalState NewState)
// 1259 {
// 1260     /* Check the parameters */
// 1261     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1262     *(__IO uint32_t *) CR_CSSON_BB = (uint32_t)NewState;
RCC_ClockSecuritySystemCmd:
        LDR.N    R1,??DataTable39_29  ;; 0x4242004c
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
// 1263 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock35
// 1264 
// 1265 /**
// 1266   * @brief  Selects the clock source to output on MCO pin.
// 1267   * @param  RCC_MCO: specifies the clock source to output.
// 1268   *
// 1269   *   For @b STM32_Connectivity_line_devices, this parameter can be one of the
// 1270   *   following values:
// 1271   *     @arg RCC_MCO_NoClock: No clock selected
// 1272   *     @arg RCC_MCO_SYSCLK: System clock selected
// 1273   *     @arg RCC_MCO_HSI: HSI oscillator clock selected
// 1274   *     @arg RCC_MCO_HSE: HSE oscillator clock selected
// 1275   *     @arg RCC_MCO_PLLCLK_Div2: PLL clock divided by 2 selected
// 1276   *     @arg RCC_MCO_PLL2CLK: PLL2 clock selected
// 1277   *     @arg RCC_MCO_PLL3CLK_Div2: PLL3 clock divided by 2 selected
// 1278   *     @arg RCC_MCO_XT1: External 3-25 MHz oscillator clock selected
// 1279   *     @arg RCC_MCO_PLL3CLK: PLL3 clock selected
// 1280   *
// 1281   *   For  @b other_STM32_devices, this parameter can be one of the following values:
// 1282   *     @arg RCC_MCO_NoClock: No clock selected
// 1283   *     @arg RCC_MCO_SYSCLK: System clock selected
// 1284   *     @arg RCC_MCO_HSI: HSI oscillator clock selected
// 1285   *     @arg RCC_MCO_HSE: HSE oscillator clock selected
// 1286   *     @arg RCC_MCO_PLLCLK_Div2: PLL clock divided by 2 selected
// 1287   *
// 1288   * @retval None
// 1289   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function RCC_MCOConfig
          CFI NoCalls
        THUMB
// 1290 void RCC_MCOConfig(uint8_t RCC_MCO)
// 1291 {
// 1292     /* Check the parameters */
// 1293     assert_param(IS_RCC_MCO(RCC_MCO));
// 1294 
// 1295     /* Perform Byte access to MCO bits to select the MCO source */
// 1296     *(__IO uint8_t *) CFGR_BYTE4_ADDRESS = RCC_MCO;
RCC_MCOConfig:
        LDR.N    R1,??DataTable39_30  ;; 0x40021007
        STRB     R0,[R1, #+0]
// 1297 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock36
// 1298 
// 1299 /**
// 1300   * @brief  Checks whether the specified RCC flag is set or not.
// 1301   * @param  RCC_FLAG: specifies the flag to check.
// 1302   *
// 1303   *   For @b STM32_Connectivity_line_devices, this parameter can be one of the
// 1304   *   following values:
// 1305   *     @arg RCC_FLAG_HSIRDY: HSI oscillator clock ready
// 1306   *     @arg RCC_FLAG_HSERDY: HSE oscillator clock ready
// 1307   *     @arg RCC_FLAG_PLLRDY: PLL clock ready
// 1308   *     @arg RCC_FLAG_PLL2RDY: PLL2 clock ready
// 1309   *     @arg RCC_FLAG_PLL3RDY: PLL3 clock ready
// 1310   *     @arg RCC_FLAG_LSERDY: LSE oscillator clock ready
// 1311   *     @arg RCC_FLAG_LSIRDY: LSI oscillator clock ready
// 1312   *     @arg RCC_FLAG_PINRST: Pin reset
// 1313   *     @arg RCC_FLAG_PORRST: POR/PDR reset
// 1314   *     @arg RCC_FLAG_SFTRST: Software reset
// 1315   *     @arg RCC_FLAG_IWDGRST: Independent Watchdog reset
// 1316   *     @arg RCC_FLAG_WWDGRST: Window Watchdog reset
// 1317   *     @arg RCC_FLAG_LPWRRST: Low Power reset
// 1318   *
// 1319   *   For @b other_STM32_devices, this parameter can be one of the following values:
// 1320   *     @arg RCC_FLAG_HSIRDY: HSI oscillator clock ready
// 1321   *     @arg RCC_FLAG_HSERDY: HSE oscillator clock ready
// 1322   *     @arg RCC_FLAG_PLLRDY: PLL clock ready
// 1323   *     @arg RCC_FLAG_LSERDY: LSE oscillator clock ready
// 1324   *     @arg RCC_FLAG_LSIRDY: LSI oscillator clock ready
// 1325   *     @arg RCC_FLAG_PINRST: Pin reset
// 1326   *     @arg RCC_FLAG_PORRST: POR/PDR reset
// 1327   *     @arg RCC_FLAG_SFTRST: Software reset
// 1328   *     @arg RCC_FLAG_IWDGRST: Independent Watchdog reset
// 1329   *     @arg RCC_FLAG_WWDGRST: Window Watchdog reset
// 1330   *     @arg RCC_FLAG_LPWRRST: Low Power reset
// 1331   *
// 1332   * @retval The new state of RCC_FLAG (SET or RESET).
// 1333   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function RCC_GetFlagStatus
          CFI NoCalls
        THUMB
// 1334 FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG)
// 1335 {
RCC_GetFlagStatus:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R1,R0
// 1336     uint32_t tmp = 0;
        MOVS     R2,#+0
// 1337     uint32_t statusreg = 0;
        MOVS     R3,#+0
// 1338     FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
// 1339     /* Check the parameters */
// 1340     assert_param(IS_RCC_FLAG(RCC_FLAG));
// 1341 
// 1342     /* Get the RCC register index */
// 1343     tmp = RCC_FLAG >> 5;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R4,R1,#+5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,R4
// 1344     if (tmp == 1)               /* The flag to check is in CR register */
        CMP      R2,#+1
        BNE.N    ??RCC_GetFlagStatus_0
// 1345     {
// 1346         statusreg = RCC->CR;
        LDR.N    R4,??DataTable39  ;; 0x40021000
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
        B.N      ??RCC_GetFlagStatus_1
// 1347     }
// 1348     else if (tmp == 2)          /* The flag to check is in BDCR register */
??RCC_GetFlagStatus_0:
        CMP      R2,#+2
        BNE.N    ??RCC_GetFlagStatus_2
// 1349     {
// 1350         statusreg = RCC->BDCR;
        LDR.N    R4,??DataTable39_15  ;; 0x40021020
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
        B.N      ??RCC_GetFlagStatus_1
// 1351     }
// 1352     else                       /* The flag to check is in CSR register */
// 1353     {
// 1354         statusreg = RCC->CSR;
??RCC_GetFlagStatus_2:
        LDR.N    R4,??DataTable39_31  ;; 0x40021024
        LDR      R4,[R4, #+0]
        MOVS     R3,R4
// 1355     }
// 1356 
// 1357     /* Get the flag position */
// 1358     tmp = RCC_FLAG & FLAG_Mask;
??RCC_GetFlagStatus_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R4,R1,#0x1F
        MOVS     R2,R4
// 1359     if ((statusreg & ((uint32_t)1 << tmp)) != (uint32_t)RESET)
        MOVS     R4,#+1
        LSLS     R4,R4,R2
        TST      R3,R4
        BEQ.N    ??RCC_GetFlagStatus_3
// 1360     {
// 1361         bitstatus = SET;
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??RCC_GetFlagStatus_4
// 1362     }
// 1363     else
// 1364     {
// 1365         bitstatus = RESET;
??RCC_GetFlagStatus_3:
        MOVS     R4,#+0
        MOVS     R0,R4
// 1366     }
// 1367 
// 1368     /* Return the flag status */
// 1369     return bitstatus;
??RCC_GetFlagStatus_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock37
// 1370 }
// 1371 
// 1372 /**
// 1373   * @brief  Clears the RCC reset flags.
// 1374   * @note   The reset flags are: RCC_FLAG_PINRST, RCC_FLAG_PORRST, RCC_FLAG_SFTRST,
// 1375   *   RCC_FLAG_IWDGRST, RCC_FLAG_WWDGRST, RCC_FLAG_LPWRRST
// 1376   * @param  None
// 1377   * @retval None
// 1378   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function RCC_ClearFlag
          CFI NoCalls
        THUMB
// 1379 void RCC_ClearFlag(void)
// 1380 {
// 1381     /* Set RMVF bit to clear the reset flags */
// 1382     RCC->CSR |= CSR_RMVF_Set;
RCC_ClearFlag:
        LDR.N    R0,??DataTable39_31  ;; 0x40021024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable39_31  ;; 0x40021024
        STR      R0,[R1, #+0]
// 1383 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock38
// 1384 
// 1385 /**
// 1386   * @brief  Checks whether the specified RCC interrupt has occurred or not.
// 1387   * @param  RCC_IT: specifies the RCC interrupt source to check.
// 1388   *
// 1389   *   For @b STM32_Connectivity_line_devices, this parameter can be one of the
// 1390   *   following values:
// 1391   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
// 1392   *     @arg RCC_IT_LSERDY: LSE ready interrupt
// 1393   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
// 1394   *     @arg RCC_IT_HSERDY: HSE ready interrupt
// 1395   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
// 1396   *     @arg RCC_IT_PLL2RDY: PLL2 ready interrupt
// 1397   *     @arg RCC_IT_PLL3RDY: PLL3 ready interrupt
// 1398   *     @arg RCC_IT_CSS: Clock Security System interrupt
// 1399   *
// 1400   *   For @b other_STM32_devices, this parameter can be one of the following values:
// 1401   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
// 1402   *     @arg RCC_IT_LSERDY: LSE ready interrupt
// 1403   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
// 1404   *     @arg RCC_IT_HSERDY: HSE ready interrupt
// 1405   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
// 1406   *     @arg RCC_IT_CSS: Clock Security System interrupt
// 1407   *
// 1408   * @retval The new state of RCC_IT (SET or RESET).
// 1409   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function RCC_GetITStatus
          CFI NoCalls
        THUMB
// 1410 ITStatus RCC_GetITStatus(uint8_t RCC_IT)
// 1411 {
RCC_GetITStatus:
        MOVS     R1,R0
// 1412     ITStatus bitstatus = RESET;
        MOVS     R0,#+0
// 1413     /* Check the parameters */
// 1414     assert_param(IS_RCC_GET_IT(RCC_IT));
// 1415 
// 1416     /* Check the status of the specified RCC interrupt */
// 1417     if ((RCC->CIR & RCC_IT) != (uint32_t)RESET)
        LDR.N    R2,??DataTable39_4  ;; 0x40021008
        LDR      R2,[R2, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        TST      R2,R1
        BEQ.N    ??RCC_GetITStatus_0
// 1418     {
// 1419         bitstatus = SET;
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??RCC_GetITStatus_1
// 1420     }
// 1421     else
// 1422     {
// 1423         bitstatus = RESET;
??RCC_GetITStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
// 1424     }
// 1425 
// 1426     /* Return the RCC_IT status */
// 1427     return  bitstatus;
??RCC_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock39
// 1428 }
// 1429 
// 1430 /**
// 1431   * @brief  Clears the RCC's interrupt pending bits.
// 1432   * @param  RCC_IT: specifies the interrupt pending bit to clear.
// 1433   *
// 1434   *   For @b STM32_Connectivity_line_devices, this parameter can be any combination
// 1435   *   of the following values:
// 1436   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
// 1437   *     @arg RCC_IT_LSERDY: LSE ready interrupt
// 1438   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
// 1439   *     @arg RCC_IT_HSERDY: HSE ready interrupt
// 1440   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
// 1441   *     @arg RCC_IT_PLL2RDY: PLL2 ready interrupt
// 1442   *     @arg RCC_IT_PLL3RDY: PLL3 ready interrupt
// 1443   *     @arg RCC_IT_CSS: Clock Security System interrupt
// 1444   *
// 1445   *   For @b other_STM32_devices, this parameter can be any combination of the
// 1446   *   following values:
// 1447   *     @arg RCC_IT_LSIRDY: LSI ready interrupt
// 1448   *     @arg RCC_IT_LSERDY: LSE ready interrupt
// 1449   *     @arg RCC_IT_HSIRDY: HSI ready interrupt
// 1450   *     @arg RCC_IT_HSERDY: HSE ready interrupt
// 1451   *     @arg RCC_IT_PLLRDY: PLL ready interrupt
// 1452   *
// 1453   *     @arg RCC_IT_CSS: Clock Security System interrupt
// 1454   * @retval None
// 1455   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function RCC_ClearITPendingBit
          CFI NoCalls
        THUMB
// 1456 void RCC_ClearITPendingBit(uint8_t RCC_IT)
// 1457 {
// 1458     /* Check the parameters */
// 1459     assert_param(IS_RCC_CLEAR_IT(RCC_IT));
// 1460 
// 1461     /* Perform Byte access to RCC_CIR[23:16] bits to clear the selected interrupt
// 1462        pending bits */
// 1463     *(__IO uint8_t *) CIR_BYTE3_ADDRESS = RCC_IT;
RCC_ClearITPendingBit:
        LDR.N    R1,??DataTable39_32  ;; 0x4002100a
        STRB     R0,[R1, #+0]
// 1464 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_1:
        DC32     0x40021004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_2:
        DC32     0xf0ff0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_3:
        DC32     0xfef6ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_4:
        DC32     0x40021008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_5:
        DC32     0x4002102c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_6:
        DC32     0x42420000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_7:
        DC32     0x42420060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_8:
        DC32     0xfffefff0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_9:
        DC32     0x42420068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_10:
        DC32     0x42420070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_11:
        DC32     0x40021009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_12:
        DC32     0x424200d8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_13:
        DC32     0x424205c4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_14:
        DC32     0x424205c8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_15:
        DC32     0x40021020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_16:
        DC32     0x42420480

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_17:
        DC32     0x4242043c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_18:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_19:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_20:
        DC32     APBAHBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_21:
        DC32     ADCPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_22:
        DC32     0x40021014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_23:
        DC32     0x40021018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_24:
        DC32     0x4002101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_25:
        DC32     0x40021028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_26:
        DC32     0x4002100c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_27:
        DC32     0x40021010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_28:
        DC32     0x42420440

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_29:
        DC32     0x4242004c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_30:
        DC32     0x40021007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_31:
        DC32     0x40021024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_32:
        DC32     0x4002100a

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1465 
// 1466 /**
// 1467   * @}
// 1468   */
// 1469 
// 1470 /**
// 1471   * @}
// 1472   */
// 1473 
// 1474 /**
// 1475   * @}
// 1476   */
// 1477 
// 1478 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
//    20 bytes in section .data
// 1 624 bytes in section .text
// 
// 1 624 bytes of CODE memory
//    20 bytes of DATA memory
//
//Errors: none
//Warnings: none
