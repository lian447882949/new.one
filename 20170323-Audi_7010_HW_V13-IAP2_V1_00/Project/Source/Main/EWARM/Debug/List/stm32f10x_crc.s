///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:47 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_crc.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_crc.c -D USE_STDPERIPH_DRIVER -D               /
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
//                    \Debug\List\stm32f10x_crc.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_crc

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC CRC_CalcBlockCRC
        PUBLIC CRC_CalcCRC
        PUBLIC CRC_GetCRC
        PUBLIC CRC_GetIDRegister
        PUBLIC CRC_ResetDR
        PUBLIC CRC_SetIDRegister
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_crc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_crc.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the CRC firmware functions.
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
//   23 #include "stm32f10x_crc.h"
//   24 
//   25 /** @addtogroup STM32F10x_StdPeriph_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup CRC
//   30   * @brief CRC driver modules
//   31   * @{
//   32   */
//   33 
//   34 /** @defgroup CRC_Private_TypesDefinitions
//   35   * @{
//   36   */
//   37 
//   38 /**
//   39   * @}
//   40   */
//   41 
//   42 /** @defgroup CRC_Private_Defines
//   43   * @{
//   44   */
//   45 
//   46 /**
//   47   * @}
//   48   */
//   49 
//   50 /** @defgroup CRC_Private_Macros
//   51   * @{
//   52   */
//   53 
//   54 /**
//   55   * @}
//   56   */
//   57 
//   58 /** @defgroup CRC_Private_Variables
//   59   * @{
//   60   */
//   61 
//   62 /**
//   63   * @}
//   64   */
//   65 
//   66 /** @defgroup CRC_Private_FunctionPrototypes
//   67   * @{
//   68   */
//   69 
//   70 /**
//   71   * @}
//   72   */
//   73 
//   74 /** @defgroup CRC_Private_Functions
//   75   * @{
//   76   */
//   77 
//   78 /**
//   79   * @brief  Resets the CRC Data register (DR).
//   80   * @param  None
//   81   * @retval None
//   82   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function CRC_ResetDR
          CFI NoCalls
        THUMB
//   83 void CRC_ResetDR(void)
//   84 {
//   85     /* Reset CRC generator */
//   86     CRC->CR = CRC_CR_RESET;
CRC_ResetDR:
        LDR.N    R0,??DataTable5  ;; 0x40023008
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//   87 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   88 
//   89 /**
//   90   * @brief  Computes the 32-bit CRC of a given data word(32-bit).
//   91   * @param  Data: data word(32-bit) to compute its CRC
//   92   * @retval 32-bit CRC
//   93   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function CRC_CalcCRC
          CFI NoCalls
        THUMB
//   94 uint32_t CRC_CalcCRC(uint32_t Data)
//   95 {
CRC_CalcCRC:
        MOVS     R1,R0
//   96     CRC->DR = Data;
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        STR      R1,[R0, #+0]
//   97 
//   98     return (CRC->DR);
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   99 }
//  100 
//  101 /**
//  102   * @brief  Computes the 32-bit CRC of a given buffer of data word(32-bit).
//  103   * @param  pBuffer: pointer to the buffer containing the data to be computed
//  104   * @param  BufferLength: length of the buffer to be computed
//  105   * @retval 32-bit CRC
//  106   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function CRC_CalcBlockCRC
          CFI NoCalls
        THUMB
//  107 uint32_t CRC_CalcBlockCRC(uint32_t pBuffer[], uint32_t BufferLength)
//  108 {
CRC_CalcBlockCRC:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R2,R0
//  109     uint32_t index = 0;
        MOVS     R3,#+0
//  110 
//  111     for(index = 0; index < BufferLength; index++)
        MOVS     R0,#+0
        MOVS     R3,R0
??CRC_CalcBlockCRC_0:
        CMP      R3,R1
        BCS.N    ??CRC_CalcBlockCRC_1
//  112     {
//  113         CRC->DR = pBuffer[index];
        LDR      R0,[R2, R3, LSL #+2]
        LDR.N    R4,??DataTable5_1  ;; 0x40023000
        STR      R0,[R4, #+0]
//  114     }
        ADDS     R3,R3,#+1
        B.N      ??CRC_CalcBlockCRC_0
//  115     return (CRC->DR);
??CRC_CalcBlockCRC_1:
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        LDR      R0,[R0, #+0]
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  116 }
//  117 
//  118 /**
//  119   * @brief  Returns the current CRC value.
//  120   * @param  None
//  121   * @retval 32-bit CRC
//  122   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function CRC_GetCRC
          CFI NoCalls
        THUMB
//  123 uint32_t CRC_GetCRC(void)
//  124 {
//  125     return (CRC->DR);
CRC_GetCRC:
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  126 }
//  127 
//  128 /**
//  129   * @brief  Stores a 8-bit data in the Independent Data(ID) register.
//  130   * @param  IDValue: 8-bit value to be stored in the ID register
//  131   * @retval None
//  132   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function CRC_SetIDRegister
          CFI NoCalls
        THUMB
//  133 void CRC_SetIDRegister(uint8_t IDValue)
//  134 {
//  135     CRC->IDR = IDValue;
CRC_SetIDRegister:
        LDR.N    R1,??DataTable5_2  ;; 0x40023004
        STRB     R0,[R1, #+0]
//  136 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  137 
//  138 /**
//  139   * @brief  Returns the 8-bit data stored in the Independent Data(ID) register
//  140   * @param  None
//  141   * @retval 8-bit value of the ID register
//  142   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function CRC_GetIDRegister
          CFI NoCalls
        THUMB
//  143 uint8_t CRC_GetIDRegister(void)
//  144 {
//  145     return (CRC->IDR);
CRC_GetIDRegister:
        LDR.N    R0,??DataTable5_2  ;; 0x40023004
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  146 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40023008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40023000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40023004

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  147 
//  148 /**
//  149   * @}
//  150   */
//  151 
//  152 /**
//  153   * @}
//  154   */
//  155 
//  156 /**
//  157   * @}
//  158   */
//  159 
//  160 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 86 bytes in section .text
// 
// 86 bytes of CODE memory
//
//Errors: none
//Warnings: none
