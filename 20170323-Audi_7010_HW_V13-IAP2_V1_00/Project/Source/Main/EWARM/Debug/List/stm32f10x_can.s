///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:47 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_can.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_can.c -D USE_STDPERIPH_DRIVER -D               /
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
//                    \Debug\List\stm32f10x_can.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_can

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd

        PUBLIC CAN_CancelTransmit
        PUBLIC CAN_ClearFlag
        PUBLIC CAN_ClearITPendingBit
        PUBLIC CAN_DBGFreeze
        PUBLIC CAN_DeInit
        PUBLIC CAN_FIFORelease
        PUBLIC CAN_FilterInit
        PUBLIC CAN_GetFlagStatus
        PUBLIC CAN_GetITStatus
        PUBLIC CAN_GetLSBTransmitErrorCounter
        PUBLIC CAN_GetLastErrorCode
        PUBLIC CAN_GetReceiveErrorCounter
        PUBLIC CAN_ITConfig
        PUBLIC CAN_Init
        PUBLIC CAN_MessagePending
        PUBLIC CAN_OperatingModeRequest
        PUBLIC CAN_Receive
        PUBLIC CAN_SlaveStartBank
        PUBLIC CAN_Sleep
        PUBLIC CAN_StructInit
        PUBLIC CAN_TTComModeCmd
        PUBLIC CAN_Transmit
        PUBLIC CAN_TransmitStatus
        PUBLIC CAN_WakeUp
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_can.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_can.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the CAN firmware functions.
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
//   23 #include "stm32f10x_can.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup CAN
//   31   * @brief CAN driver modules
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup CAN_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 /** @defgroup CAN_Private_Defines
//   44   * @{
//   45   */
//   46 
//   47 /* CAN Master Control Register bits */
//   48 
//   49 #define MCR_DBF      ((uint32_t)0x00010000) /* software master reset */
//   50 
//   51 /* CAN Mailbox Transmit Request */
//   52 #define TMIDxR_TXRQ  ((uint32_t)0x00000001) /* Transmit mailbox request */
//   53 
//   54 /* CAN Filter Master Register bits */
//   55 #define FMR_FINIT    ((uint32_t)0x00000001) /* Filter init mode */
//   56 
//   57 /* Time out for INAK bit */
//   58 #define INAK_TIMEOUT        ((uint32_t)0x0000FFFF)
//   59 /* Time out for SLAK bit */
//   60 #define SLAK_TIMEOUT        ((uint32_t)0x0000FFFF)
//   61 
//   62 
//   63 
//   64 /* Flags in TSR register */
//   65 #define CAN_FLAGS_TSR              ((uint32_t)0x08000000)
//   66 /* Flags in RF1R register */
//   67 #define CAN_FLAGS_RF1R             ((uint32_t)0x04000000)
//   68 /* Flags in RF0R register */
//   69 #define CAN_FLAGS_RF0R             ((uint32_t)0x02000000)
//   70 /* Flags in MSR register */
//   71 #define CAN_FLAGS_MSR              ((uint32_t)0x01000000)
//   72 /* Flags in ESR register */
//   73 #define CAN_FLAGS_ESR              ((uint32_t)0x00F00000)
//   74 
//   75 /* Mailboxes definition */
//   76 #define CAN_TXMAILBOX_0                   ((uint8_t)0x00)
//   77 #define CAN_TXMAILBOX_1                   ((uint8_t)0x01)
//   78 #define CAN_TXMAILBOX_2                   ((uint8_t)0x02)
//   79 
//   80 
//   81 
//   82 #define CAN_MODE_MASK              ((uint32_t) 0x00000003)
//   83 /**
//   84   * @}
//   85   */
//   86 
//   87 /** @defgroup CAN_Private_Macros
//   88   * @{
//   89   */
//   90 
//   91 /**
//   92   * @}
//   93   */
//   94 
//   95 /** @defgroup CAN_Private_Variables
//   96   * @{
//   97   */
//   98 
//   99 /**
//  100   * @}
//  101   */
//  102 
//  103 /** @defgroup CAN_Private_FunctionPrototypes
//  104   * @{
//  105   */
//  106 
//  107 static ITStatus CheckITStatus(uint32_t CAN_Reg, uint32_t It_Bit);
//  108 
//  109 /**
//  110   * @}
//  111   */
//  112 
//  113 /** @defgroup CAN_Private_Functions
//  114   * @{
//  115   */
//  116 
//  117 /**
//  118   * @brief  Deinitializes the CAN peripheral registers to their default reset values.
//  119   * @param  CANx: where x can be 1 or 2 to select the CAN peripheral.
//  120   * @retval None.
//  121   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function CAN_DeInit
        THUMB
//  122 void CAN_DeInit(CAN_TypeDef *CANx)
//  123 {
CAN_DeInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  124     /* Check the parameters */
//  125     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  126 
//  127     if (CANx == CAN1)
        LDR.W    R0,??DataTable6  ;; 0x40006400
        CMP      R4,R0
        BNE.N    ??CAN_DeInit_0
//  128     {
//  129         /* Enable CAN1 reset state */
//  130         RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN1, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+33554432
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  131         /* Release CAN1 from reset state */
//  132         RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN1, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+33554432
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??CAN_DeInit_1
//  133     }
//  134     else
//  135     {
//  136         /* Enable CAN2 reset state */
//  137         RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN2, ENABLE);
??CAN_DeInit_0:
        MOVS     R1,#+1
        MOVS     R0,#+67108864
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  138         /* Release CAN2 from reset state */
//  139         RCC_APB1PeriphResetCmd(RCC_APB1Periph_CAN2, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+67108864
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  140     }
//  141 }
??CAN_DeInit_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  142 
//  143 /**
//  144   * @brief  Initializes the CAN peripheral according to the specified
//  145   *         parameters in the CAN_InitStruct.
//  146   * @param  CANx:           where x can be 1 or 2 to to select the CAN
//  147   *                         peripheral.
//  148   * @param  CAN_InitStruct: pointer to a CAN_InitTypeDef structure that
//  149   *                         contains the configuration information for the
//  150   *                         CAN peripheral.
//  151   * @retval Constant indicates initialization succeed which will be
//  152   *         CAN_InitStatus_Failed or CAN_InitStatus_Success.
//  153   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function CAN_Init
          CFI NoCalls
        THUMB
//  154 uint8_t CAN_Init(CAN_TypeDef *CANx, CAN_InitTypeDef *CAN_InitStruct)
//  155 {
CAN_Init:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R2,R0
//  156     uint8_t InitStatus = CAN_InitStatus_Failed;
        MOVS     R0,#+0
//  157     uint32_t wait_ack = 0x00000000;
        MOVS     R3,#+0
//  158     /* Check the parameters */
//  159     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  160     assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_TTCM));
//  161     assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_ABOM));
//  162     assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_AWUM));
//  163     assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_NART));
//  164     assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_RFLM));
//  165     assert_param(IS_FUNCTIONAL_STATE(CAN_InitStruct->CAN_TXFP));
//  166     assert_param(IS_CAN_MODE(CAN_InitStruct->CAN_Mode));
//  167     assert_param(IS_CAN_SJW(CAN_InitStruct->CAN_SJW));
//  168     assert_param(IS_CAN_BS1(CAN_InitStruct->CAN_BS1));
//  169     assert_param(IS_CAN_BS2(CAN_InitStruct->CAN_BS2));
//  170     assert_param(IS_CAN_PRESCALER(CAN_InitStruct->CAN_Prescaler));
//  171 
//  172     /* Exit from sleep mode */
//  173     CANx->MCR &= (~(uint32_t)CAN_MCR_SLEEP);
        LDR      R4,[R2, #+0]
        BICS     R4,R4,#0x2
        STR      R4,[R2, #+0]
//  174 
//  175     /* Request initialisation */
//  176     CANx->MCR |= CAN_MCR_INRQ ;
        LDR      R4,[R2, #+0]
        ORRS     R4,R4,#0x1
        STR      R4,[R2, #+0]
//  177 
//  178     /* Wait the acknowledge */
//  179     while (((CANx->MSR & CAN_MSR_INAK) != CAN_MSR_INAK) && (wait_ack != INAK_TIMEOUT))
??CAN_Init_0:
        LDR      R4,[R2, #+4]
        LSLS     R4,R4,#+31
        BMI.N    ??CAN_Init_1
        MOVW     R4,#+65535
        CMP      R3,R4
        BEQ.N    ??CAN_Init_1
//  180     {
//  181         wait_ack++;
        ADDS     R3,R3,#+1
        B.N      ??CAN_Init_0
//  182     }
//  183 
//  184     /* Check acknowledge */
//  185     if ((CANx->MSR & CAN_MSR_INAK) != CAN_MSR_INAK)
??CAN_Init_1:
        LDR      R4,[R2, #+4]
        LSLS     R4,R4,#+31
        BMI.N    ??CAN_Init_2
//  186     {
//  187         InitStatus = CAN_InitStatus_Failed;
        MOVS     R4,#+0
        MOVS     R0,R4
        B.N      ??CAN_Init_3
//  188     }
//  189     else
//  190     {
//  191         /* Set the time triggered communication mode */
//  192         if (CAN_InitStruct->CAN_TTCM == ENABLE)
??CAN_Init_2:
        LDRB     R4,[R1, #+6]
        CMP      R4,#+1
        BNE.N    ??CAN_Init_4
//  193         {
//  194             CANx->MCR |= CAN_MCR_TTCM;
        LDR      R4,[R2, #+0]
        ORRS     R4,R4,#0x80
        STR      R4,[R2, #+0]
        B.N      ??CAN_Init_5
//  195         }
//  196         else
//  197         {
//  198             CANx->MCR &= ~(uint32_t)CAN_MCR_TTCM;
??CAN_Init_4:
        LDR      R4,[R2, #+0]
        BICS     R4,R4,#0x80
        STR      R4,[R2, #+0]
//  199         }
//  200 
//  201         /* Set the automatic bus-off management */
//  202         if (CAN_InitStruct->CAN_ABOM == ENABLE)
??CAN_Init_5:
        LDRB     R4,[R1, #+7]
        CMP      R4,#+1
        BNE.N    ??CAN_Init_6
//  203         {
//  204             CANx->MCR |= CAN_MCR_ABOM;
        LDR      R4,[R2, #+0]
        ORRS     R4,R4,#0x40
        STR      R4,[R2, #+0]
        B.N      ??CAN_Init_7
//  205         }
//  206         else
//  207         {
//  208             CANx->MCR &= ~(uint32_t)CAN_MCR_ABOM;
??CAN_Init_6:
        LDR      R4,[R2, #+0]
        BICS     R4,R4,#0x40
        STR      R4,[R2, #+0]
//  209         }
//  210 
//  211         /* Set the automatic wake-up mode */
//  212         if (CAN_InitStruct->CAN_AWUM == ENABLE)
??CAN_Init_7:
        LDRB     R4,[R1, #+8]
        CMP      R4,#+1
        BNE.N    ??CAN_Init_8
//  213         {
//  214             CANx->MCR |= CAN_MCR_AWUM;
        LDR      R4,[R2, #+0]
        ORRS     R4,R4,#0x20
        STR      R4,[R2, #+0]
        B.N      ??CAN_Init_9
//  215         }
//  216         else
//  217         {
//  218             CANx->MCR &= ~(uint32_t)CAN_MCR_AWUM;
??CAN_Init_8:
        LDR      R4,[R2, #+0]
        BICS     R4,R4,#0x20
        STR      R4,[R2, #+0]
//  219         }
//  220 
//  221         /* Set the no automatic retransmission */
//  222         if (CAN_InitStruct->CAN_NART == ENABLE)
??CAN_Init_9:
        LDRB     R4,[R1, #+9]
        CMP      R4,#+1
        BNE.N    ??CAN_Init_10
//  223         {
//  224             CANx->MCR |= CAN_MCR_NART;
        LDR      R4,[R2, #+0]
        ORRS     R4,R4,#0x10
        STR      R4,[R2, #+0]
        B.N      ??CAN_Init_11
//  225         }
//  226         else
//  227         {
//  228             CANx->MCR &= ~(uint32_t)CAN_MCR_NART;
??CAN_Init_10:
        LDR      R4,[R2, #+0]
        BICS     R4,R4,#0x10
        STR      R4,[R2, #+0]
//  229         }
//  230 
//  231         /* Set the receive FIFO locked mode */
//  232         if (CAN_InitStruct->CAN_RFLM == ENABLE)
??CAN_Init_11:
        LDRB     R4,[R1, #+10]
        CMP      R4,#+1
        BNE.N    ??CAN_Init_12
//  233         {
//  234             CANx->MCR |= CAN_MCR_RFLM;
        LDR      R4,[R2, #+0]
        ORRS     R4,R4,#0x8
        STR      R4,[R2, #+0]
        B.N      ??CAN_Init_13
//  235         }
//  236         else
//  237         {
//  238             CANx->MCR &= ~(uint32_t)CAN_MCR_RFLM;
??CAN_Init_12:
        LDR      R4,[R2, #+0]
        BICS     R4,R4,#0x8
        STR      R4,[R2, #+0]
//  239         }
//  240 
//  241         /* Set the transmit FIFO priority */
//  242         if (CAN_InitStruct->CAN_TXFP == ENABLE)
??CAN_Init_13:
        LDRB     R4,[R1, #+11]
        CMP      R4,#+1
        BNE.N    ??CAN_Init_14
//  243         {
//  244             CANx->MCR |= CAN_MCR_TXFP;
        LDR      R4,[R2, #+0]
        ORRS     R4,R4,#0x4
        STR      R4,[R2, #+0]
        B.N      ??CAN_Init_15
//  245         }
//  246         else
//  247         {
//  248             CANx->MCR &= ~(uint32_t)CAN_MCR_TXFP;
??CAN_Init_14:
        LDR      R4,[R2, #+0]
        BICS     R4,R4,#0x4
        STR      R4,[R2, #+0]
//  249         }
//  250 
//  251         /* Set the bit timing register */
//  252         CANx->BTR = (uint32_t)((uint32_t)CAN_InitStruct->CAN_Mode << 30) | \ 
//  253                     ((uint32_t)CAN_InitStruct->CAN_SJW << 24) | \ 
//  254                     ((uint32_t)CAN_InitStruct->CAN_BS1 << 16) | \ 
//  255                     ((uint32_t)CAN_InitStruct->CAN_BS2 << 20) | \ 
//  256                     ((uint32_t)CAN_InitStruct->CAN_Prescaler - 1);
??CAN_Init_15:
        LDRB     R4,[R1, #+2]
        LDRB     R5,[R1, #+3]
        LSLS     R5,R5,#+24
        ORRS     R4,R5,R4, LSL #+30
        LDRB     R5,[R1, #+4]
        ORRS     R4,R4,R5, LSL #+16
        LDRB     R5,[R1, #+5]
        ORRS     R4,R4,R5, LSL #+20
        LDRH     R5,[R1, #+0]
        SUBS     R5,R5,#+1
        ORRS     R4,R5,R4
        STR      R4,[R2, #+28]
//  257 
//  258         /* Request leave initialisation */
//  259         CANx->MCR &= ~(uint32_t)CAN_MCR_INRQ;
        LDR      R4,[R2, #+0]
        LSRS     R4,R4,#+1
        LSLS     R4,R4,#+1
        STR      R4,[R2, #+0]
//  260 
//  261         /* Wait the acknowledge */
//  262         wait_ack = 0;
        MOVS     R4,#+0
        MOVS     R3,R4
//  263 
//  264         while (((CANx->MSR & CAN_MSR_INAK) == CAN_MSR_INAK) && (wait_ack != INAK_TIMEOUT))
??CAN_Init_16:
        LDR      R4,[R2, #+4]
        LSLS     R4,R4,#+31
        BPL.N    ??CAN_Init_17
        MOVW     R4,#+65535
        CMP      R3,R4
        BEQ.N    ??CAN_Init_17
//  265         {
//  266             wait_ack++;
        ADDS     R3,R3,#+1
        B.N      ??CAN_Init_16
//  267         }
//  268 
//  269         /* ...and check acknowledged */
//  270         if ((CANx->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
??CAN_Init_17:
        LDR      R4,[R2, #+4]
        LSLS     R4,R4,#+31
        BPL.N    ??CAN_Init_18
//  271         {
//  272             InitStatus = CAN_InitStatus_Failed;
        MOVS     R4,#+0
        MOVS     R0,R4
        B.N      ??CAN_Init_3
//  273         }
//  274         else
//  275         {
//  276             InitStatus = CAN_InitStatus_Success ;
??CAN_Init_18:
        MOVS     R4,#+1
        MOVS     R0,R4
//  277         }
//  278     }
//  279 
//  280     /* At this step, return the status of initialization */
//  281     return InitStatus;
??CAN_Init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  282 }
//  283 
//  284 /**
//  285   * @brief  Initializes the CAN peripheral according to the specified
//  286   *         parameters in the CAN_FilterInitStruct.
//  287   * @param  CAN_FilterInitStruct: pointer to a CAN_FilterInitTypeDef
//  288   *                               structure that contains the configuration
//  289   *                               information.
//  290   * @retval None.
//  291   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function CAN_FilterInit
          CFI NoCalls
        THUMB
//  292 void CAN_FilterInit(CAN_FilterInitTypeDef *CAN_FilterInitStruct)
//  293 {
CAN_FilterInit:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  294     uint32_t filter_number_bit_pos = 0;
        MOVS     R1,#+0
//  295     /* Check the parameters */
//  296     assert_param(IS_CAN_FILTER_NUMBER(CAN_FilterInitStruct->CAN_FilterNumber));
//  297     assert_param(IS_CAN_FILTER_MODE(CAN_FilterInitStruct->CAN_FilterMode));
//  298     assert_param(IS_CAN_FILTER_SCALE(CAN_FilterInitStruct->CAN_FilterScale));
//  299     assert_param(IS_CAN_FILTER_FIFO(CAN_FilterInitStruct->CAN_FilterFIFOAssignment));
//  300     assert_param(IS_FUNCTIONAL_STATE(CAN_FilterInitStruct->CAN_FilterActivation));
//  301 
//  302     filter_number_bit_pos = ((uint32_t)1) << CAN_FilterInitStruct->CAN_FilterNumber;
        MOVS     R2,#+1
        LDRB     R3,[R0, #+10]
        LSLS     R2,R2,R3
        MOVS     R1,R2
//  303 
//  304     /* Initialisation mode for the filter */
//  305     CAN1->FMR |= FMR_FINIT;
        LDR.W    R2,??DataTable6_1  ;; 0x40006600
        LDR      R2,[R2, #+0]
        ORRS     R2,R2,#0x1
        LDR.W    R3,??DataTable6_1  ;; 0x40006600
        STR      R2,[R3, #+0]
//  306 
//  307     /* Filter Deactivation */
//  308     CAN1->FA1R &= ~(uint32_t)filter_number_bit_pos;
        LDR.W    R2,??DataTable6_2  ;; 0x4000661c
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.W    R3,??DataTable6_2  ;; 0x4000661c
        STR      R2,[R3, #+0]
//  309 
//  310     /* Filter Scale */
//  311     if (CAN_FilterInitStruct->CAN_FilterScale == CAN_FilterScale_16bit)
        LDRB     R2,[R0, #+12]
        CMP      R2,#+0
        BNE.N    ??CAN_FilterInit_0
//  312     {
//  313         /* 16-bit scale for the filter */
//  314         CAN1->FS1R &= ~(uint32_t)filter_number_bit_pos;
        LDR.W    R2,??DataTable6_3  ;; 0x4000660c
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.W    R3,??DataTable6_3  ;; 0x4000660c
        STR      R2,[R3, #+0]
//  315 
//  316         /* First 16-bit identifier and First 16-bit mask */
//  317         /* Or First 16-bit identifier and Second 16-bit identifier */
//  318         CAN1->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR1 =
//  319             ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdLow) << 16) |
//  320             (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdLow);
        LDRH     R2,[R0, #+6]
        LDRH     R3,[R0, #+2]
        ORRS     R2,R3,R2, LSL #+16
        LDRB     R3,[R0, #+10]
        LDR.W    R4,??DataTable6_4  ;; 0x40006640
        STR      R2,[R4, R3, LSL #+3]
//  321 
//  322         /* Second 16-bit identifier and Second 16-bit mask */
//  323         /* Or Third 16-bit identifier and Fourth 16-bit identifier */
//  324         CAN1->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR2 =
//  325             ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdHigh) << 16) |
//  326             (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdHigh);
        LDRB     R2,[R0, #+10]
        LDR.W    R3,??DataTable6_4  ;; 0x40006640
        ADDS     R2,R3,R2, LSL #+3
        LDRH     R3,[R0, #+4]
        LDRH     R4,[R0, #+0]
        ORRS     R3,R4,R3, LSL #+16
        STR      R3,[R2, #+4]
//  327     }
//  328 
//  329     if (CAN_FilterInitStruct->CAN_FilterScale == CAN_FilterScale_32bit)
??CAN_FilterInit_0:
        LDRB     R2,[R0, #+12]
        CMP      R2,#+1
        BNE.N    ??CAN_FilterInit_1
//  330     {
//  331         /* 32-bit scale for the filter */
//  332         CAN1->FS1R |= filter_number_bit_pos;
        LDR.W    R2,??DataTable6_3  ;; 0x4000660c
        LDR      R2,[R2, #+0]
        ORRS     R2,R1,R2
        LDR.W    R3,??DataTable6_3  ;; 0x4000660c
        STR      R2,[R3, #+0]
//  333         /* 32-bit identifier or First 32-bit identifier */
//  334         CAN1->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR1 =
//  335             ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdHigh) << 16) |
//  336             (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterIdLow);
        LDRH     R2,[R0, #+0]
        LDRH     R3,[R0, #+2]
        ORRS     R2,R3,R2, LSL #+16
        LDRB     R3,[R0, #+10]
        LDR.W    R4,??DataTable6_4  ;; 0x40006640
        STR      R2,[R4, R3, LSL #+3]
//  337         /* 32-bit mask or Second 32-bit identifier */
//  338         CAN1->sFilterRegister[CAN_FilterInitStruct->CAN_FilterNumber].FR2 =
//  339             ((0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdHigh) << 16) |
//  340             (0x0000FFFF & (uint32_t)CAN_FilterInitStruct->CAN_FilterMaskIdLow);
        LDRB     R2,[R0, #+10]
        LDR.W    R3,??DataTable6_4  ;; 0x40006640
        ADDS     R2,R3,R2, LSL #+3
        LDRH     R3,[R0, #+4]
        LDRH     R4,[R0, #+6]
        ORRS     R3,R4,R3, LSL #+16
        STR      R3,[R2, #+4]
//  341     }
//  342 
//  343     /* Filter Mode */
//  344     if (CAN_FilterInitStruct->CAN_FilterMode == CAN_FilterMode_IdMask)
??CAN_FilterInit_1:
        LDRB     R2,[R0, #+11]
        CMP      R2,#+0
        BNE.N    ??CAN_FilterInit_2
//  345     {
//  346         /*Id/Mask mode for the filter*/
//  347         CAN1->FM1R &= ~(uint32_t)filter_number_bit_pos;
        LDR.W    R2,??DataTable6_5  ;; 0x40006604
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.W    R3,??DataTable6_5  ;; 0x40006604
        STR      R2,[R3, #+0]
        B.N      ??CAN_FilterInit_3
//  348     }
//  349     else /* CAN_FilterInitStruct->CAN_FilterMode == CAN_FilterMode_IdList */
//  350     {
//  351         /*Identifier list mode for the filter*/
//  352         CAN1->FM1R |= (uint32_t)filter_number_bit_pos;
??CAN_FilterInit_2:
        LDR.W    R2,??DataTable6_5  ;; 0x40006604
        LDR      R2,[R2, #+0]
        ORRS     R2,R1,R2
        LDR.W    R3,??DataTable6_5  ;; 0x40006604
        STR      R2,[R3, #+0]
//  353     }
//  354 
//  355     /* Filter FIFO assignment */
//  356     if (CAN_FilterInitStruct->CAN_FilterFIFOAssignment == CAN_Filter_FIFO0)
??CAN_FilterInit_3:
        LDRH     R2,[R0, #+8]
        CMP      R2,#+0
        BNE.N    ??CAN_FilterInit_4
//  357     {
//  358         /* FIFO 0 assignation for the filter */
//  359         CAN1->FFA1R &= ~(uint32_t)filter_number_bit_pos;
        LDR.W    R2,??DataTable6_6  ;; 0x40006614
        LDR      R2,[R2, #+0]
        BICS     R2,R2,R1
        LDR.W    R3,??DataTable6_6  ;; 0x40006614
        STR      R2,[R3, #+0]
//  360     }
//  361 
//  362     if (CAN_FilterInitStruct->CAN_FilterFIFOAssignment == CAN_Filter_FIFO1)
??CAN_FilterInit_4:
        LDRH     R2,[R0, #+8]
        CMP      R2,#+1
        BNE.N    ??CAN_FilterInit_5
//  363     {
//  364         /* FIFO 1 assignation for the filter */
//  365         CAN1->FFA1R |= (uint32_t)filter_number_bit_pos;
        LDR.W    R2,??DataTable6_6  ;; 0x40006614
        LDR      R2,[R2, #+0]
        ORRS     R2,R1,R2
        LDR.W    R3,??DataTable6_6  ;; 0x40006614
        STR      R2,[R3, #+0]
//  366     }
//  367 
//  368     /* Filter activation */
//  369     if (CAN_FilterInitStruct->CAN_FilterActivation == ENABLE)
??CAN_FilterInit_5:
        LDRB     R2,[R0, #+13]
        CMP      R2,#+1
        BNE.N    ??CAN_FilterInit_6
//  370     {
//  371         CAN1->FA1R |= filter_number_bit_pos;
        LDR.W    R2,??DataTable6_2  ;; 0x4000661c
        LDR      R2,[R2, #+0]
        ORRS     R2,R1,R2
        LDR.W    R3,??DataTable6_2  ;; 0x4000661c
        STR      R2,[R3, #+0]
//  372     }
//  373 
//  374     /* Leave the initialisation mode for the filter */
//  375     CAN1->FMR &= ~FMR_FINIT;
??CAN_FilterInit_6:
        LDR.W    R2,??DataTable6_1  ;; 0x40006600
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        LDR.W    R3,??DataTable6_1  ;; 0x40006600
        STR      R2,[R3, #+0]
//  376 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  377 
//  378 /**
//  379   * @brief  Fills each CAN_InitStruct member with its default value.
//  380   * @param  CAN_InitStruct: pointer to a CAN_InitTypeDef structure which
//  381   *                         will be initialized.
//  382   * @retval None.
//  383   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function CAN_StructInit
          CFI NoCalls
        THUMB
//  384 void CAN_StructInit(CAN_InitTypeDef *CAN_InitStruct)
//  385 {
//  386     /* Reset CAN init structure parameters values */
//  387 
//  388     /* Initialize the time triggered communication mode */
//  389     CAN_InitStruct->CAN_TTCM = DISABLE;
CAN_StructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  390 
//  391     /* Initialize the automatic bus-off management */
//  392     CAN_InitStruct->CAN_ABOM = DISABLE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
//  393 
//  394     /* Initialize the automatic wake-up mode */
//  395     CAN_InitStruct->CAN_AWUM = DISABLE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
//  396 
//  397     /* Initialize the no automatic retransmission */
//  398     CAN_InitStruct->CAN_NART = DISABLE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
//  399 
//  400     /* Initialize the receive FIFO locked mode */
//  401     CAN_InitStruct->CAN_RFLM = DISABLE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
//  402 
//  403     /* Initialize the transmit FIFO priority */
//  404     CAN_InitStruct->CAN_TXFP = DISABLE;
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
//  405 
//  406     /* Initialize the CAN_Mode member */
//  407     CAN_InitStruct->CAN_Mode = CAN_Mode_Normal;
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//  408 
//  409     /* Initialize the CAN_SJW member */
//  410     CAN_InitStruct->CAN_SJW = CAN_SJW_1tq;
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
//  411 
//  412     /* Initialize the CAN_BS1 member */
//  413     CAN_InitStruct->CAN_BS1 = CAN_BS1_4tq;
        MOVS     R1,#+3
        STRB     R1,[R0, #+4]
//  414 
//  415     /* Initialize the CAN_BS2 member */
//  416     CAN_InitStruct->CAN_BS2 = CAN_BS2_3tq;
        MOVS     R1,#+2
        STRB     R1,[R0, #+5]
//  417 
//  418     /* Initialize the CAN_Prescaler member */
//  419     CAN_InitStruct->CAN_Prescaler = 1;
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  420 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  421 
//  422 /**
//  423   * @brief  Select the start bank filter for slave CAN.
//  424   * @note   This function applies only to STM32 Connectivity line devices.
//  425   * @param  CAN_BankNumber: Select the start slave bank filter from 1..27.
//  426   * @retval None.
//  427   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function CAN_SlaveStartBank
          CFI NoCalls
        THUMB
//  428 void CAN_SlaveStartBank(uint8_t CAN_BankNumber)
//  429 {
//  430     /* Check the parameters */
//  431     assert_param(IS_CAN_BANKNUMBER(CAN_BankNumber));
//  432 
//  433     /* Enter Initialisation mode for the filter */
//  434     CAN1->FMR |= FMR_FINIT;
CAN_SlaveStartBank:
        LDR.W    R1,??DataTable6_1  ;; 0x40006600
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.W    R2,??DataTable6_1  ;; 0x40006600
        STR      R1,[R2, #+0]
//  435 
//  436     /* Select the start slave bank */
//  437     CAN1->FMR &= (uint32_t)0xFFFFC0F1 ;
        LDR.W    R1,??DataTable6_1  ;; 0x40006600
        LDR      R1,[R1, #+0]
        LDR.W    R2,??DataTable6_7  ;; 0xffffc0f1
        ANDS     R1,R2,R1
        LDR.W    R2,??DataTable6_1  ;; 0x40006600
        STR      R1,[R2, #+0]
//  438     CAN1->FMR |= (uint32_t)(CAN_BankNumber) << 8;
        LDR.W    R1,??DataTable6_1  ;; 0x40006600
        LDR      R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R1,R1,R0, LSL #+8
        LDR.W    R2,??DataTable6_1  ;; 0x40006600
        STR      R1,[R2, #+0]
//  439 
//  440     /* Leave Initialisation mode for the filter */
//  441     CAN1->FMR &= ~FMR_FINIT;
        LDR.W    R1,??DataTable6_1  ;; 0x40006600
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.W    R2,??DataTable6_1  ;; 0x40006600
        STR      R1,[R2, #+0]
//  442 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  443 
//  444 /**
//  445   * @brief  Enables or disables the DBG Freeze for CAN.
//  446   * @param  CANx:     where x can be 1 or 2 to to select the CAN peripheral.
//  447   * @param  NewState: new state of the CAN peripheral. This parameter can
//  448   *                   be: ENABLE or DISABLE.
//  449   * @retval None.
//  450   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function CAN_DBGFreeze
          CFI NoCalls
        THUMB
//  451 void CAN_DBGFreeze(CAN_TypeDef *CANx, FunctionalState NewState)
//  452 {
//  453     /* Check the parameters */
//  454     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  455     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  456 
//  457     if (NewState != DISABLE)
CAN_DBGFreeze:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??CAN_DBGFreeze_0
//  458     {
//  459         /* Enable Debug Freeze  */
//  460         CANx->MCR |= MCR_DBF;
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,#0x10000
        STR      R2,[R0, #+0]
        B.N      ??CAN_DBGFreeze_1
//  461     }
//  462     else
//  463     {
//  464         /* Disable Debug Freeze */
//  465         CANx->MCR &= ~MCR_DBF;
??CAN_DBGFreeze_0:
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x10000
        STR      R2,[R0, #+0]
//  466     }
//  467 }
??CAN_DBGFreeze_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  468 
//  469 
//  470 /**
//  471   * @brief  Enables or disabes the CAN Time TriggerOperation communication mode.
//  472   * @param  CANx:      where x can be 1 or 2 to to select the CAN peripheral.
//  473   * @param  NewState : Mode new state , can be one of @ref FunctionalState.
//  474   * @note   when enabled, Time stamp (TIME[15:0]) value is sent in the last
//  475   *         two data bytes of the 8-byte message: TIME[7:0] in data byte 6
//  476   *         and TIME[15:8] in data byte 7
//  477   * @note   DLC must be programmed as 8 in order Time Stamp (2 bytes) to be
//  478   *         sent over the CAN bus.
//  479   * @retval None
//  480   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function CAN_TTComModeCmd
          CFI NoCalls
        THUMB
//  481 void CAN_TTComModeCmd(CAN_TypeDef *CANx, FunctionalState NewState)
//  482 {
//  483     /* Check the parameters */
//  484     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  485     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  486     if (NewState != DISABLE)
CAN_TTComModeCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??CAN_TTComModeCmd_0
//  487     {
//  488         /* Enable the TTCM mode */
//  489         CANx->MCR |= CAN_MCR_TTCM;
        LDR      R2,[R0, #+0]
        ORRS     R2,R2,#0x80
        STR      R2,[R0, #+0]
//  490 
//  491         /* Set TGT bits */
//  492         CANx->sTxMailBox[0].TDTR |= ((uint32_t)CAN_TDT0R_TGT);
        LDR      R2,[R0, #+388]
        MOV      R3,#+256
        ORRS     R2,R3,R2
        STR      R2,[R0, #+388]
//  493         CANx->sTxMailBox[1].TDTR |= ((uint32_t)CAN_TDT1R_TGT);
        LDR      R2,[R0, #+404]
        MOV      R3,#+256
        ORRS     R2,R3,R2
        STR      R2,[R0, #+404]
//  494         CANx->sTxMailBox[2].TDTR |= ((uint32_t)CAN_TDT2R_TGT);
        LDR      R2,[R0, #+420]
        MOV      R3,#+256
        ORRS     R2,R3,R2
        STR      R2,[R0, #+420]
        B.N      ??CAN_TTComModeCmd_1
//  495     }
//  496     else
//  497     {
//  498         /* Disable the TTCM mode */
//  499         CANx->MCR &= (uint32_t)(~(uint32_t)CAN_MCR_TTCM);
??CAN_TTComModeCmd_0:
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x80
        STR      R2,[R0, #+0]
//  500 
//  501         /* Reset TGT bits */
//  502         CANx->sTxMailBox[0].TDTR &= ((uint32_t)~CAN_TDT0R_TGT);
        LDR      R2,[R0, #+388]
        BICS     R2,R2,#0x100
        STR      R2,[R0, #+388]
//  503         CANx->sTxMailBox[1].TDTR &= ((uint32_t)~CAN_TDT1R_TGT);
        LDR      R2,[R0, #+404]
        BICS     R2,R2,#0x100
        STR      R2,[R0, #+404]
//  504         CANx->sTxMailBox[2].TDTR &= ((uint32_t)~CAN_TDT2R_TGT);
        LDR      R2,[R0, #+420]
        BICS     R2,R2,#0x100
        STR      R2,[R0, #+420]
//  505     }
//  506 }
??CAN_TTComModeCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  507 /**
//  508   * @brief  Initiates the transmission of a message.
//  509   * @param  CANx:      where x can be 1 or 2 to to select the CAN peripheral.
//  510   * @param  TxMessage: pointer to a structure which contains CAN Id, CAN
//  511   *                    DLC and CAN data.
//  512   * @retval The number of the mailbox that is used for transmission
//  513   *                    or CAN_TxStatus_NoMailBox if there is no empty mailbox.
//  514   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function CAN_Transmit
          CFI NoCalls
        THUMB
//  515 uint8_t CAN_Transmit(CAN_TypeDef *CANx, CanTxMsg *TxMessage)
//  516 {
CAN_Transmit:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R2,R0
//  517     uint8_t transmit_mailbox = 0;
        MOVS     R0,#+0
//  518     /* Check the parameters */
//  519     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  520     assert_param(IS_CAN_IDTYPE(TxMessage->IDE));
//  521     assert_param(IS_CAN_RTR(TxMessage->RTR));
//  522     assert_param(IS_CAN_DLC(TxMessage->DLC));
//  523 
//  524     /* Select one empty transmit mailbox */
//  525     if ((CANx->TSR & CAN_TSR_TME0) == CAN_TSR_TME0)
        LDR      R3,[R2, #+8]
        LSLS     R3,R3,#+5
        BPL.N    ??CAN_Transmit_0
//  526     {
//  527         transmit_mailbox = 0;
        MOVS     R3,#+0
        MOVS     R0,R3
        B.N      ??CAN_Transmit_1
//  528     }
//  529     else if ((CANx->TSR & CAN_TSR_TME1) == CAN_TSR_TME1)
??CAN_Transmit_0:
        LDR      R3,[R2, #+8]
        LSLS     R3,R3,#+4
        BPL.N    ??CAN_Transmit_2
//  530     {
//  531         transmit_mailbox = 1;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CAN_Transmit_1
//  532     }
//  533     else if ((CANx->TSR & CAN_TSR_TME2) == CAN_TSR_TME2)
??CAN_Transmit_2:
        LDR      R3,[R2, #+8]
        LSLS     R3,R3,#+3
        BPL.N    ??CAN_Transmit_3
//  534     {
//  535         transmit_mailbox = 2;
        MOVS     R3,#+2
        MOVS     R0,R3
        B.N      ??CAN_Transmit_1
//  536     }
//  537     else
//  538     {
//  539         transmit_mailbox = CAN_TxStatus_NoMailBox;
??CAN_Transmit_3:
        MOVS     R3,#+4
        MOVS     R0,R3
//  540     }
//  541 
//  542     if (transmit_mailbox != CAN_TxStatus_NoMailBox)
??CAN_Transmit_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BEQ.N    ??CAN_Transmit_4
//  543     {
//  544         /* Set up the Id */
//  545         CANx->sTxMailBox[transmit_mailbox].TIR &= TMIDxR_TXRQ;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R2,R0, LSL #+4
        LDR      R3,[R3, #+384]
        ANDS     R3,R3,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R2,R0, LSL #+4
        STR      R3,[R4, #+384]
//  546         if (TxMessage->IDE == CAN_Id_Standard)
        LDRB     R3,[R1, #+8]
        CMP      R3,#+0
        BNE.N    ??CAN_Transmit_5
//  547         {
//  548             assert_param(IS_CAN_STDID(TxMessage->StdId));
//  549             CANx->sTxMailBox[transmit_mailbox].TIR |= ((TxMessage->StdId << 21) | \ 
//  550                     TxMessage->RTR);
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R2,R0, LSL #+4
        LDR      R3,[R3, #+384]
        LDR      R4,[R1, #+0]
        LDRB     R5,[R1, #+9]
        ORRS     R4,R5,R4, LSL #+21
        ORRS     R3,R4,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R2,R0, LSL #+4
        STR      R3,[R4, #+384]
        B.N      ??CAN_Transmit_6
//  551         }
//  552         else
//  553         {
//  554             assert_param(IS_CAN_EXTID(TxMessage->ExtId));
//  555             CANx->sTxMailBox[transmit_mailbox].TIR |= ((TxMessage->ExtId << 3) | \ 
//  556                     TxMessage->IDE | \ 
//  557                     TxMessage->RTR);
??CAN_Transmit_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R2,R0, LSL #+4
        LDR      R3,[R3, #+384]
        LDR      R4,[R1, #+4]
        LDRB     R5,[R1, #+8]
        ORRS     R4,R5,R4, LSL #+3
        LDRB     R5,[R1, #+9]
        ORRS     R4,R5,R4
        ORRS     R3,R4,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R2,R0, LSL #+4
        STR      R3,[R4, #+384]
//  558         }
//  559 
//  560         /* Set up the DLC */
//  561         TxMessage->DLC &= (uint8_t)0x0000000F;
??CAN_Transmit_6:
        LDRB     R3,[R1, #+10]
        ANDS     R3,R3,#0xF
        STRB     R3,[R1, #+10]
//  562         CANx->sTxMailBox[transmit_mailbox].TDTR &= (uint32_t)0xFFFFFFF0;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R2,R0, LSL #+4
        LDR      R3,[R3, #+388]
        LSRS     R3,R3,#+4
        LSLS     R3,R3,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R2,R0, LSL #+4
        STR      R3,[R4, #+388]
//  563         CANx->sTxMailBox[transmit_mailbox].TDTR |= TxMessage->DLC;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R2,R0, LSL #+4
        LDR      R3,[R3, #+388]
        LDRB     R4,[R1, #+10]
        ORRS     R3,R4,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R2,R0, LSL #+4
        STR      R3,[R4, #+388]
//  564 
//  565         /* Set up the data field */
//  566         CANx->sTxMailBox[transmit_mailbox].TDLR = (((uint32_t)TxMessage->Data[3] << 24) |
//  567                 ((uint32_t)TxMessage->Data[2] << 16) |
//  568                 ((uint32_t)TxMessage->Data[1] << 8) |
//  569                 ((uint32_t)TxMessage->Data[0]));
        LDRB     R3,[R1, #+14]
        LDRB     R4,[R1, #+13]
        LSLS     R4,R4,#+16
        ORRS     R3,R4,R3, LSL #+24
        LDRB     R4,[R1, #+12]
        ORRS     R3,R3,R4, LSL #+8
        LDRB     R4,[R1, #+11]
        ORRS     R3,R4,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R2,R0, LSL #+4
        STR      R3,[R4, #+392]
//  570         CANx->sTxMailBox[transmit_mailbox].TDHR = (((uint32_t)TxMessage->Data[7] << 24) |
//  571                 ((uint32_t)TxMessage->Data[6] << 16) |
//  572                 ((uint32_t)TxMessage->Data[5] << 8) |
//  573                 ((uint32_t)TxMessage->Data[4]));
        LDRB     R3,[R1, #+18]
        LDRB     R4,[R1, #+17]
        LSLS     R4,R4,#+16
        ORRS     R3,R4,R3, LSL #+24
        LDRB     R4,[R1, #+16]
        ORRS     R3,R3,R4, LSL #+8
        LDRB     R4,[R1, #+15]
        ORRS     R3,R4,R3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R2,R0, LSL #+4
        STR      R3,[R4, #+396]
//  574         /* Request transmission */
//  575         CANx->sTxMailBox[transmit_mailbox].TIR |= TMIDxR_TXRQ;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R3,R2,R0, LSL #+4
        LDR      R3,[R3, #+384]
        ORRS     R3,R3,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R4,R2,R0, LSL #+4
        STR      R3,[R4, #+384]
//  576     }
//  577     return transmit_mailbox;
??CAN_Transmit_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  578 }
//  579 
//  580 /**
//  581   * @brief  Checks the transmission of a message.
//  582   * @param  CANx:            where x can be 1 or 2 to to select the
//  583   *                          CAN peripheral.
//  584   * @param  TransmitMailbox: the number of the mailbox that is used for
//  585   *                          transmission.
//  586   * @retval CAN_TxStatus_Ok if the CAN driver transmits the message, CAN_TxStatus_Failed
//  587   *         in an other case.
//  588   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function CAN_TransmitStatus
          CFI NoCalls
        THUMB
//  589 uint8_t CAN_TransmitStatus(CAN_TypeDef *CANx, uint8_t TransmitMailbox)
//  590 {
CAN_TransmitStatus:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R2,R0
//  591     uint32_t state = 0;
        MOVS     R0,#+0
//  592 
//  593     /* Check the parameters */
//  594     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  595     assert_param(IS_CAN_TRANSMITMAILBOX(TransmitMailbox));
//  596 
//  597     switch (TransmitMailbox)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??CAN_TransmitStatus_0
        CMP      R1,#+2
        BEQ.N    ??CAN_TransmitStatus_1
        BCC.N    ??CAN_TransmitStatus_2
        B.N      ??CAN_TransmitStatus_3
//  598     {
//  599     case (CAN_TXMAILBOX_0):
//  600         state =   CANx->TSR &  (CAN_TSR_RQCP0 | CAN_TSR_TXOK0 | CAN_TSR_TME0);
??CAN_TransmitStatus_0:
        LDR      R3,[R2, #+8]
        LDR.W    R4,??DataTable6_8  ;; 0x4000003
        ANDS     R3,R4,R3
        MOVS     R0,R3
//  601         break;
        B.N      ??CAN_TransmitStatus_4
//  602     case (CAN_TXMAILBOX_1):
//  603         state =   CANx->TSR &  (CAN_TSR_RQCP1 | CAN_TSR_TXOK1 | CAN_TSR_TME1);
??CAN_TransmitStatus_2:
        LDR      R3,[R2, #+8]
        LDR.W    R4,??DataTable6_9  ;; 0x8000300
        ANDS     R3,R4,R3
        MOVS     R0,R3
//  604         break;
        B.N      ??CAN_TransmitStatus_4
//  605     case (CAN_TXMAILBOX_2):
//  606         state =   CANx->TSR &  (CAN_TSR_RQCP2 | CAN_TSR_TXOK2 | CAN_TSR_TME2);
??CAN_TransmitStatus_1:
        LDR      R3,[R2, #+8]
        LDR.W    R4,??DataTable6_10  ;; 0x10030000
        ANDS     R3,R4,R3
        MOVS     R0,R3
//  607         break;
        B.N      ??CAN_TransmitStatus_4
//  608     default:
//  609         state = CAN_TxStatus_Failed;
??CAN_TransmitStatus_3:
        MOVS     R3,#+0
        MOVS     R0,R3
//  610         break;
//  611     }
//  612     switch (state)
??CAN_TransmitStatus_4:
        MOVS     R3,R0
        CMP      R3,#+0
        BEQ.N    ??CAN_TransmitStatus_5
        LDR.W    R4,??DataTable6_11  ;; 0x4000001
        SUBS     R3,R3,R4
        BEQ.N    ??CAN_TransmitStatus_6
        SUBS     R3,R3,#+2
        BEQ.N    ??CAN_TransmitStatus_7
        LDR.W    R4,??DataTable6_12  ;; 0x40000fd
        SUBS     R3,R3,R4
        BEQ.N    ??CAN_TransmitStatus_8
        MOV      R4,#+512
        SUBS     R3,R3,R4
        BEQ.N    ??CAN_TransmitStatus_9
        LDR.W    R4,??DataTable6_13  ;; 0x800fd00
        SUBS     R3,R3,R4
        BEQ.N    ??CAN_TransmitStatus_10
        MOVS     R4,#+131072
        SUBS     R3,R3,R4
        BEQ.N    ??CAN_TransmitStatus_11
        B.N      ??CAN_TransmitStatus_12
//  613     {
//  614         /* transmit pending  */
//  615     case (0x0):
//  616         state = CAN_TxStatus_Pending;
??CAN_TransmitStatus_5:
        MOVS     R3,#+2
        MOVS     R0,R3
//  617         break;
        B.N      ??CAN_TransmitStatus_13
//  618         /* transmit failed  */
//  619     case (CAN_TSR_RQCP0 | CAN_TSR_TME0):
//  620         state = CAN_TxStatus_Failed;
??CAN_TransmitStatus_6:
        MOVS     R3,#+0
        MOVS     R0,R3
//  621         break;
        B.N      ??CAN_TransmitStatus_13
//  622     case (CAN_TSR_RQCP1 | CAN_TSR_TME1):
//  623         state = CAN_TxStatus_Failed;
??CAN_TransmitStatus_8:
        MOVS     R3,#+0
        MOVS     R0,R3
//  624         break;
        B.N      ??CAN_TransmitStatus_13
//  625     case (CAN_TSR_RQCP2 | CAN_TSR_TME2):
//  626         state = CAN_TxStatus_Failed;
??CAN_TransmitStatus_10:
        MOVS     R3,#+0
        MOVS     R0,R3
//  627         break;
        B.N      ??CAN_TransmitStatus_13
//  628         /* transmit succeeded  */
//  629     case (CAN_TSR_RQCP0 | CAN_TSR_TXOK0 | CAN_TSR_TME0):
//  630         state = CAN_TxStatus_Ok;
??CAN_TransmitStatus_7:
        MOVS     R3,#+1
        MOVS     R0,R3
//  631         break;
        B.N      ??CAN_TransmitStatus_13
//  632     case (CAN_TSR_RQCP1 | CAN_TSR_TXOK1 | CAN_TSR_TME1):
//  633         state = CAN_TxStatus_Ok;
??CAN_TransmitStatus_9:
        MOVS     R3,#+1
        MOVS     R0,R3
//  634         break;
        B.N      ??CAN_TransmitStatus_13
//  635     case (CAN_TSR_RQCP2 | CAN_TSR_TXOK2 | CAN_TSR_TME2):
//  636         state = CAN_TxStatus_Ok;
??CAN_TransmitStatus_11:
        MOVS     R3,#+1
        MOVS     R0,R3
//  637         break;
        B.N      ??CAN_TransmitStatus_13
//  638     default:
//  639         state = CAN_TxStatus_Failed;
??CAN_TransmitStatus_12:
        MOVS     R3,#+0
        MOVS     R0,R3
//  640         break;
//  641     }
//  642     return (uint8_t) state;
??CAN_TransmitStatus_13:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  643 }
//  644 
//  645 /**
//  646   * @brief  Cancels a transmit request.
//  647   * @param  CANx:     where x can be 1 or 2 to to select the CAN peripheral.
//  648   * @param  Mailbox:  Mailbox number.
//  649   * @retval None.
//  650   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function CAN_CancelTransmit
          CFI NoCalls
        THUMB
//  651 void CAN_CancelTransmit(CAN_TypeDef *CANx, uint8_t Mailbox)
//  652 {
//  653     /* Check the parameters */
//  654     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  655     assert_param(IS_CAN_TRANSMITMAILBOX(Mailbox));
//  656     /* abort transmission */
//  657     switch (Mailbox)
CAN_CancelTransmit:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??CAN_CancelTransmit_0
        CMP      R1,#+2
        BEQ.N    ??CAN_CancelTransmit_1
        BCC.N    ??CAN_CancelTransmit_2
        B.N      ??CAN_CancelTransmit_3
//  658     {
//  659     case (CAN_TXMAILBOX_0):
//  660         CANx->TSR |= CAN_TSR_ABRQ0;
??CAN_CancelTransmit_0:
        LDR      R2,[R0, #+8]
        ORRS     R2,R2,#0x80
        STR      R2,[R0, #+8]
//  661         break;
        B.N      ??CAN_CancelTransmit_4
//  662     case (CAN_TXMAILBOX_1):
//  663         CANx->TSR |= CAN_TSR_ABRQ1;
??CAN_CancelTransmit_2:
        LDR      R2,[R0, #+8]
        ORRS     R2,R2,#0x8000
        STR      R2,[R0, #+8]
//  664         break;
        B.N      ??CAN_CancelTransmit_4
//  665     case (CAN_TXMAILBOX_2):
//  666         CANx->TSR |= CAN_TSR_ABRQ2;
??CAN_CancelTransmit_1:
        LDR      R2,[R0, #+8]
        ORRS     R2,R2,#0x800000
        STR      R2,[R0, #+8]
//  667         break;
        B.N      ??CAN_CancelTransmit_4
//  668     default:
//  669         break;
//  670     }
//  671 }
??CAN_CancelTransmit_3:
??CAN_CancelTransmit_4:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  672 
//  673 
//  674 /**
//  675   * @brief  Receives a message.
//  676   * @param  CANx:       where x can be 1 or 2 to to select the CAN peripheral.
//  677   * @param  FIFONumber: Receive FIFO number, CAN_FIFO0 or CAN_FIFO1.
//  678   * @param  RxMessage:  pointer to a structure receive message which contains
//  679   *                     CAN Id, CAN DLC, CAN datas and FMI number.
//  680   * @retval None.
//  681   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function CAN_Receive
          CFI NoCalls
        THUMB
//  682 void CAN_Receive(CAN_TypeDef *CANx, uint8_t FIFONumber, CanRxMsg *RxMessage)
//  683 {
//  684     /* Check the parameters */
//  685     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  686     assert_param(IS_CAN_FIFO(FIFONumber));
//  687     /* Get the Id */
//  688     RxMessage->IDE = (uint8_t)0x04 & CANx->sFIFOMailBox[FIFONumber].RIR;
CAN_Receive:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+432]
        ANDS     R3,R3,#0x4
        STRB     R3,[R2, #+8]
//  689     if (RxMessage->IDE == CAN_Id_Standard)
        LDRB     R3,[R2, #+8]
        CMP      R3,#+0
        BNE.N    ??CAN_Receive_0
//  690     {
//  691         RxMessage->StdId = (uint32_t)0x000007FF & (CANx->sFIFOMailBox[FIFONumber].RIR >> 21);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+432]
        LSRS     R3,R3,#+21
        STR      R3,[R2, #+0]
        B.N      ??CAN_Receive_1
//  692     }
//  693     else
//  694     {
//  695         RxMessage->ExtId = (uint32_t)0x1FFFFFFF & (CANx->sFIFOMailBox[FIFONumber].RIR >> 3);
??CAN_Receive_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+432]
        LSRS     R3,R3,#+3
        STR      R3,[R2, #+4]
//  696     }
//  697 
//  698     RxMessage->RTR = (uint8_t)0x02 & CANx->sFIFOMailBox[FIFONumber].RIR;
??CAN_Receive_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+432]
        ANDS     R3,R3,#0x2
        STRB     R3,[R2, #+9]
//  699     /* Get the DLC */
//  700     RxMessage->DLC = (uint8_t)0x0F & CANx->sFIFOMailBox[FIFONumber].RDTR;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+436]
        ANDS     R3,R3,#0xF
        STRB     R3,[R2, #+10]
//  701     /* Get the FMI */
//  702     RxMessage->FMI = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDTR >> 8);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+436]
        LSRS     R3,R3,#+8
        STRB     R3,[R2, #+19]
//  703     /* Get the data field */
//  704     RxMessage->Data[0] = (uint8_t)0xFF & CANx->sFIFOMailBox[FIFONumber].RDLR;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+440]
        STRB     R3,[R2, #+11]
//  705     RxMessage->Data[1] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 8);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+440]
        LSRS     R3,R3,#+8
        STRB     R3,[R2, #+12]
//  706     RxMessage->Data[2] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 16);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+440]
        LSRS     R3,R3,#+16
        STRB     R3,[R2, #+13]
//  707     RxMessage->Data[3] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDLR >> 24);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+440]
        LSRS     R3,R3,#+24
        STRB     R3,[R2, #+14]
//  708     RxMessage->Data[4] = (uint8_t)0xFF & CANx->sFIFOMailBox[FIFONumber].RDHR;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+444]
        STRB     R3,[R2, #+15]
//  709     RxMessage->Data[5] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 8);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+444]
        LSRS     R3,R3,#+8
        STRB     R3,[R2, #+16]
//  710     RxMessage->Data[6] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 16);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+444]
        LSRS     R3,R3,#+16
        STRB     R3,[R2, #+17]
//  711     RxMessage->Data[7] = (uint8_t)0xFF & (CANx->sFIFOMailBox[FIFONumber].RDHR >> 24);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+444]
        LSRS     R3,R3,#+24
        STRB     R3,[R2, #+18]
//  712     /* Release the FIFO */
//  713     /* Release FIFO0 */
//  714     if (FIFONumber == CAN_FIFO0)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??CAN_Receive_2
//  715     {
//  716         CANx->RF0R |= CAN_RF0R_RFOM0;
        LDR      R3,[R0, #+12]
        ORRS     R3,R3,#0x20
        STR      R3,[R0, #+12]
        B.N      ??CAN_Receive_3
//  717     }
//  718     /* Release FIFO1 */
//  719     else /* FIFONumber == CAN_FIFO1 */
//  720     {
//  721         CANx->RF1R |= CAN_RF1R_RFOM1;
??CAN_Receive_2:
        LDR      R3,[R0, #+16]
        ORRS     R3,R3,#0x20
        STR      R3,[R0, #+16]
//  722     }
//  723 }
??CAN_Receive_3:
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  724 
//  725 /**
//  726   * @brief  Releases the specified FIFO.
//  727   * @param  CANx:       where x can be 1 or 2 to to select the CAN peripheral.
//  728   * @param  FIFONumber: FIFO to release, CAN_FIFO0 or CAN_FIFO1.
//  729   * @retval None.
//  730   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function CAN_FIFORelease
          CFI NoCalls
        THUMB
//  731 void CAN_FIFORelease(CAN_TypeDef *CANx, uint8_t FIFONumber)
//  732 {
//  733     /* Check the parameters */
//  734     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  735     assert_param(IS_CAN_FIFO(FIFONumber));
//  736     /* Release FIFO0 */
//  737     if (FIFONumber == CAN_FIFO0)
CAN_FIFORelease:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??CAN_FIFORelease_0
//  738     {
//  739         CANx->RF0R |= CAN_RF0R_RFOM0;
        LDR      R2,[R0, #+12]
        ORRS     R2,R2,#0x20
        STR      R2,[R0, #+12]
        B.N      ??CAN_FIFORelease_1
//  740     }
//  741     /* Release FIFO1 */
//  742     else /* FIFONumber == CAN_FIFO1 */
//  743     {
//  744         CANx->RF1R |= CAN_RF1R_RFOM1;
??CAN_FIFORelease_0:
        LDR      R2,[R0, #+16]
        ORRS     R2,R2,#0x20
        STR      R2,[R0, #+16]
//  745     }
//  746 }
??CAN_FIFORelease_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  747 
//  748 /**
//  749   * @brief  Returns the number of pending messages.
//  750   * @param  CANx:       where x can be 1 or 2 to to select the CAN peripheral.
//  751   * @param  FIFONumber: Receive FIFO number, CAN_FIFO0 or CAN_FIFO1.
//  752   * @retval NbMessage : which is the number of pending message.
//  753   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function CAN_MessagePending
          CFI NoCalls
        THUMB
//  754 uint8_t CAN_MessagePending(CAN_TypeDef *CANx, uint8_t FIFONumber)
//  755 {
CAN_MessagePending:
        MOVS     R2,R0
//  756     uint8_t message_pending = 0;
        MOVS     R0,#+0
//  757     /* Check the parameters */
//  758     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  759     assert_param(IS_CAN_FIFO(FIFONumber));
//  760     if (FIFONumber == CAN_FIFO0)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??CAN_MessagePending_0
//  761     {
//  762         message_pending = (uint8_t)(CANx->RF0R & (uint32_t)0x03);
        LDR      R3,[R2, #+12]
        ANDS     R3,R3,#0x3
        MOVS     R0,R3
        B.N      ??CAN_MessagePending_1
//  763     }
//  764     else if (FIFONumber == CAN_FIFO1)
??CAN_MessagePending_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??CAN_MessagePending_2
//  765     {
//  766         message_pending = (uint8_t)(CANx->RF1R & (uint32_t)0x03);
        LDR      R3,[R2, #+16]
        ANDS     R3,R3,#0x3
        MOVS     R0,R3
        B.N      ??CAN_MessagePending_1
//  767     }
//  768     else
//  769     {
//  770         message_pending = 0;
??CAN_MessagePending_2:
        MOVS     R3,#+0
        MOVS     R0,R3
//  771     }
//  772     return message_pending;
??CAN_MessagePending_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  773 }
//  774 
//  775 
//  776 /**
//  777   * @brief   Select the CAN Operation mode.
//  778   * @param CAN_OperatingMode : CAN Operating Mode. This parameter can be one
//  779   *                            of @ref CAN_OperatingMode_TypeDef enumeration.
//  780   * @retval status of the requested mode which can be
//  781   *         - CAN_ModeStatus_Failed    CAN failed entering the specific mode
//  782   *         - CAN_ModeStatus_Success   CAN Succeed entering the specific mode
//  783 
//  784   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function CAN_OperatingModeRequest
          CFI NoCalls
        THUMB
//  785 uint8_t CAN_OperatingModeRequest(CAN_TypeDef *CANx, uint8_t CAN_OperatingMode)
//  786 {
CAN_OperatingModeRequest:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R2,R0
//  787     uint8_t status = CAN_ModeStatus_Failed;
        MOVS     R0,#+0
//  788 
//  789     /* Timeout for INAK or also for SLAK bits*/
//  790     uint32_t timeout = INAK_TIMEOUT;
        MOVW     R3,#+65535
//  791 
//  792     /* Check the parameters */
//  793     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  794     assert_param(IS_CAN_OPERATING_MODE(CAN_OperatingMode));
//  795 
//  796     if (CAN_OperatingMode == CAN_OperatingMode_Initialization)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??CAN_OperatingModeRequest_0
//  797     {
//  798         /* Request initialisation */
//  799         CANx->MCR = (uint32_t)((CANx->MCR & (uint32_t)(~(uint32_t)CAN_MCR_SLEEP)) | CAN_MCR_INRQ);
        LDR      R4,[R2, #+0]
        BICS     R4,R4,#0x2
        ORRS     R4,R4,#0x1
        STR      R4,[R2, #+0]
//  800 
//  801         /* Wait the acknowledge */
//  802         while (((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_INAK) && (timeout != 0))
??CAN_OperatingModeRequest_1:
        LDR      R4,[R2, #+4]
        ANDS     R4,R4,#0x3
        CMP      R4,#+1
        BEQ.N    ??CAN_OperatingModeRequest_2
        CMP      R3,#+0
        BEQ.N    ??CAN_OperatingModeRequest_2
//  803         {
//  804             timeout--;
        SUBS     R3,R3,#+1
        B.N      ??CAN_OperatingModeRequest_1
//  805         }
//  806         if ((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_INAK)
??CAN_OperatingModeRequest_2:
        LDR      R4,[R2, #+4]
        ANDS     R4,R4,#0x3
        CMP      R4,#+1
        BEQ.N    ??CAN_OperatingModeRequest_3
//  807         {
//  808             status = CAN_ModeStatus_Failed;
        MOVS     R4,#+0
        MOVS     R0,R4
        B.N      ??CAN_OperatingModeRequest_4
//  809         }
//  810         else
//  811         {
//  812             status = CAN_ModeStatus_Success;
??CAN_OperatingModeRequest_3:
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??CAN_OperatingModeRequest_4
//  813         }
//  814     }
//  815     else  if (CAN_OperatingMode == CAN_OperatingMode_Normal)
??CAN_OperatingModeRequest_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??CAN_OperatingModeRequest_5
//  816     {
//  817         /* Request leave initialisation and sleep mode  and enter Normal mode */
//  818         CANx->MCR &= (uint32_t)(~(CAN_MCR_SLEEP | CAN_MCR_INRQ));
        LDR      R4,[R2, #+0]
        LSRS     R4,R4,#+2
        LSLS     R4,R4,#+2
        STR      R4,[R2, #+0]
//  819 
//  820         /* Wait the acknowledge */
//  821         while (((CANx->MSR & CAN_MODE_MASK) != 0) && (timeout != 0))
??CAN_OperatingModeRequest_6:
        LDR      R4,[R2, #+4]
        ANDS     R4,R4,#0x3
        CMP      R4,#+0
        BEQ.N    ??CAN_OperatingModeRequest_7
        CMP      R3,#+0
        BEQ.N    ??CAN_OperatingModeRequest_7
//  822         {
//  823             timeout--;
        SUBS     R3,R3,#+1
        B.N      ??CAN_OperatingModeRequest_6
//  824         }
//  825         if ((CANx->MSR & CAN_MODE_MASK) != 0)
??CAN_OperatingModeRequest_7:
        LDR      R4,[R2, #+4]
        ANDS     R4,R4,#0x3
        CMP      R4,#+0
        BEQ.N    ??CAN_OperatingModeRequest_8
//  826         {
//  827             status = CAN_ModeStatus_Failed;
        MOVS     R4,#+0
        MOVS     R0,R4
        B.N      ??CAN_OperatingModeRequest_4
//  828         }
//  829         else
//  830         {
//  831             status = CAN_ModeStatus_Success;
??CAN_OperatingModeRequest_8:
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??CAN_OperatingModeRequest_4
//  832         }
//  833     }
//  834     else  if (CAN_OperatingMode == CAN_OperatingMode_Sleep)
??CAN_OperatingModeRequest_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??CAN_OperatingModeRequest_9
//  835     {
//  836         /* Request Sleep mode */
//  837         CANx->MCR = (uint32_t)((CANx->MCR & (uint32_t)(~(uint32_t)CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
        LDR      R4,[R2, #+0]
        LSRS     R4,R4,#+1
        LSLS     R4,R4,#+1
        ORRS     R4,R4,#0x2
        STR      R4,[R2, #+0]
//  838 
//  839         /* Wait the acknowledge */
//  840         while (((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK) && (timeout != 0))
??CAN_OperatingModeRequest_10:
        LDR      R4,[R2, #+4]
        ANDS     R4,R4,#0x3
        CMP      R4,#+2
        BEQ.N    ??CAN_OperatingModeRequest_11
        CMP      R3,#+0
        BEQ.N    ??CAN_OperatingModeRequest_11
//  841         {
//  842             timeout--;
        SUBS     R3,R3,#+1
        B.N      ??CAN_OperatingModeRequest_10
//  843         }
//  844         if ((CANx->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK)
??CAN_OperatingModeRequest_11:
        LDR      R4,[R2, #+4]
        ANDS     R4,R4,#0x3
        CMP      R4,#+2
        BEQ.N    ??CAN_OperatingModeRequest_12
//  845         {
//  846             status = CAN_ModeStatus_Failed;
        MOVS     R4,#+0
        MOVS     R0,R4
        B.N      ??CAN_OperatingModeRequest_4
//  847         }
//  848         else
//  849         {
//  850             status = CAN_ModeStatus_Success;
??CAN_OperatingModeRequest_12:
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??CAN_OperatingModeRequest_4
//  851         }
//  852     }
//  853     else
//  854     {
//  855         status = CAN_ModeStatus_Failed;
??CAN_OperatingModeRequest_9:
        MOVS     R4,#+0
        MOVS     R0,R4
//  856     }
//  857 
//  858     return  (uint8_t) status;
??CAN_OperatingModeRequest_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  859 }
//  860 
//  861 /**
//  862   * @brief  Enters the low power mode.
//  863   * @param  CANx:   where x can be 1 or 2 to to select the CAN peripheral.
//  864   * @retval status: CAN_Sleep_Ok if sleep entered, CAN_Sleep_Failed in an
//  865   *                 other case.
//  866   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function CAN_Sleep
          CFI NoCalls
        THUMB
//  867 uint8_t CAN_Sleep(CAN_TypeDef *CANx)
//  868 {
CAN_Sleep:
        MOVS     R1,R0
//  869     uint8_t sleepstatus = CAN_Sleep_Failed;
        MOVS     R0,#+0
//  870 
//  871     /* Check the parameters */
//  872     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  873 
//  874     /* Request Sleep mode */
//  875     CANx->MCR = (((CANx->MCR) & (uint32_t)(~(uint32_t)CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
        LDR      R2,[R1, #+0]
        LSRS     R2,R2,#+1
        LSLS     R2,R2,#+1
        ORRS     R2,R2,#0x2
        STR      R2,[R1, #+0]
//  876 
//  877     /* Sleep mode status */
//  878     if ((CANx->MSR & (CAN_MSR_SLAK | CAN_MSR_INAK)) == CAN_MSR_SLAK)
        LDR      R2,[R1, #+4]
        ANDS     R2,R2,#0x3
        CMP      R2,#+2
        BNE.N    ??CAN_Sleep_0
//  879     {
//  880         /* Sleep mode not entered */
//  881         sleepstatus =  CAN_Sleep_Ok;
        MOVS     R2,#+1
        MOVS     R0,R2
//  882     }
//  883     /* return sleep mode status */
//  884     return (uint8_t)sleepstatus;
??CAN_Sleep_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  885 }
//  886 
//  887 /**
//  888   * @brief  Wakes the CAN up.
//  889   * @param  CANx:    where x can be 1 or 2 to to select the CAN peripheral.
//  890   * @retval status:  CAN_WakeUp_Ok if sleep mode left, CAN_WakeUp_Failed in an
//  891   *                  other case.
//  892   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function CAN_WakeUp
          CFI NoCalls
        THUMB
//  893 uint8_t CAN_WakeUp(CAN_TypeDef *CANx)
//  894 {
CAN_WakeUp:
        MOVS     R1,R0
//  895     uint32_t wait_slak = SLAK_TIMEOUT;
        MOVW     R2,#+65535
//  896     uint8_t wakeupstatus = CAN_WakeUp_Failed;
        MOVS     R0,#+0
//  897 
//  898     /* Check the parameters */
//  899     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  900 
//  901     /* Wake up request */
//  902     CANx->MCR &= ~(uint32_t)CAN_MCR_SLEEP;
        LDR      R3,[R1, #+0]
        BICS     R3,R3,#0x2
        STR      R3,[R1, #+0]
//  903 
//  904     /* Sleep mode status */
//  905     while(((CANx->MSR & CAN_MSR_SLAK) == CAN_MSR_SLAK) && (wait_slak != 0x00))
??CAN_WakeUp_0:
        LDR      R3,[R1, #+4]
        LSLS     R3,R3,#+30
        BPL.N    ??CAN_WakeUp_1
        CMP      R2,#+0
        BEQ.N    ??CAN_WakeUp_1
//  906     {
//  907         wait_slak--;
        SUBS     R2,R2,#+1
        B.N      ??CAN_WakeUp_0
//  908     }
//  909     if((CANx->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
??CAN_WakeUp_1:
        LDR      R3,[R1, #+4]
        LSLS     R3,R3,#+30
        BMI.N    ??CAN_WakeUp_2
//  910     {
//  911         /* wake up done : Sleep mode exited */
//  912         wakeupstatus = CAN_WakeUp_Ok;
        MOVS     R3,#+1
        MOVS     R0,R3
//  913     }
//  914     /* return wakeup status */
//  915     return (uint8_t)wakeupstatus;
??CAN_WakeUp_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  916 }
//  917 
//  918 
//  919 /**
//  920   * @brief  Returns the CANx's last error code (LEC).
//  921   * @param  CANx:          where x can be 1 or 2 to to select the CAN peripheral.
//  922   * @retval CAN_ErrorCode: specifies the Error code :
//  923   *                        - CAN_ERRORCODE_NoErr            No Error
//  924   *                        - CAN_ERRORCODE_StuffErr         Stuff Error
//  925   *                        - CAN_ERRORCODE_FormErr          Form Error
//  926   *                        - CAN_ERRORCODE_ACKErr           Acknowledgment Error
//  927   *                        - CAN_ERRORCODE_BitRecessiveErr  Bit Recessive Error
//  928   *                        - CAN_ERRORCODE_BitDominantErr   Bit Dominant Error
//  929   *                        - CAN_ERRORCODE_CRCErr           CRC Error
//  930   *                        - CAN_ERRORCODE_SoftwareSetErr   Software Set Error
//  931   */
//  932 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function CAN_GetLastErrorCode
          CFI NoCalls
        THUMB
//  933 uint8_t CAN_GetLastErrorCode(CAN_TypeDef *CANx)
//  934 {
CAN_GetLastErrorCode:
        MOVS     R1,R0
//  935     uint8_t errorcode = 0;
        MOVS     R0,#+0
//  936 
//  937     /* Check the parameters */
//  938     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  939 
//  940     /* Get the error code*/
//  941     errorcode = (((uint8_t)CANx->ESR) & (uint8_t)CAN_ESR_LEC);
        LDR      R2,[R1, #+24]
        ANDS     R2,R2,#0x70
        MOVS     R0,R2
//  942 
//  943     /* Return the error code*/
//  944     return errorcode;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  945 }
//  946 /**
//  947   * @brief  Returns the CANx Receive Error Counter (REC).
//  948   * @note   In case of an error during reception, this counter is incremented
//  949   *         by 1 or by 8 depending on the error condition as defined by the CAN
//  950   *         standard. After every successful reception, the counter is
//  951   *         decremented by 1 or reset to 120 if its value was higher than 128.
//  952   *         When the counter value exceeds 127, the CAN controller enters the
//  953   *         error passive state.
//  954   * @param  CANx: where x can be 1 or 2 to to select the CAN peripheral.
//  955   * @retval CAN Receive Error Counter.
//  956   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function CAN_GetReceiveErrorCounter
          CFI NoCalls
        THUMB
//  957 uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef *CANx)
//  958 {
CAN_GetReceiveErrorCounter:
        MOVS     R1,R0
//  959     uint8_t counter = 0;
        MOVS     R0,#+0
//  960 
//  961     /* Check the parameters */
//  962     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  963 
//  964     /* Get the Receive Error Counter*/
//  965     counter = (uint8_t)((CANx->ESR & CAN_ESR_REC) >> 24);
        LDR      R2,[R1, #+24]
        LSRS     R2,R2,#+24
        MOVS     R0,R2
//  966 
//  967     /* Return the Receive Error Counter*/
//  968     return counter;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  969 }
//  970 
//  971 
//  972 /**
//  973   * @brief  Returns the LSB of the 9-bit CANx Transmit Error Counter(TEC).
//  974   * @param  CANx:   where x can be 1 or 2 to to select the CAN peripheral.
//  975   * @retval LSB of the 9-bit CAN Transmit Error Counter.
//  976   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function CAN_GetLSBTransmitErrorCounter
          CFI NoCalls
        THUMB
//  977 uint8_t CAN_GetLSBTransmitErrorCounter(CAN_TypeDef *CANx)
//  978 {
CAN_GetLSBTransmitErrorCounter:
        MOVS     R1,R0
//  979     uint8_t counter = 0;
        MOVS     R0,#+0
//  980 
//  981     /* Check the parameters */
//  982     assert_param(IS_CAN_ALL_PERIPH(CANx));
//  983 
//  984     /* Get the LSB of the 9-bit CANx Transmit Error Counter(TEC) */
//  985     counter = (uint8_t)((CANx->ESR & CAN_ESR_TEC) >> 16);
        LDR      R2,[R1, #+24]
        LSRS     R2,R2,#+16
        MOVS     R0,R2
//  986 
//  987     /* Return the LSB of the 9-bit CANx Transmit Error Counter(TEC) */
//  988     return counter;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  989 }
//  990 
//  991 
//  992 /**
//  993   * @brief  Enables or disables the specified CANx interrupts.
//  994   * @param  CANx:   where x can be 1 or 2 to to select the CAN peripheral.
//  995   * @param  CAN_IT: specifies the CAN interrupt sources to be enabled or disabled.
//  996   *                 This parameter can be:
//  997   *                 - CAN_IT_TME,
//  998   *                 - CAN_IT_FMP0,
//  999   *                 - CAN_IT_FF0,
// 1000   *                 - CAN_IT_FOV0,
// 1001   *                 - CAN_IT_FMP1,
// 1002   *                 - CAN_IT_FF1,
// 1003   *                 - CAN_IT_FOV1,
// 1004   *                 - CAN_IT_EWG,
// 1005   *                 - CAN_IT_EPV,
// 1006   *                 - CAN_IT_LEC,
// 1007   *                 - CAN_IT_ERR,
// 1008   *                 - CAN_IT_WKU or
// 1009   *                 - CAN_IT_SLK.
// 1010   * @param  NewState: new state of the CAN interrupts.
// 1011   *                   This parameter can be: ENABLE or DISABLE.
// 1012   * @retval None.
// 1013   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function CAN_ITConfig
          CFI NoCalls
        THUMB
// 1014 void CAN_ITConfig(CAN_TypeDef *CANx, uint32_t CAN_IT, FunctionalState NewState)
// 1015 {
// 1016     /* Check the parameters */
// 1017     assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1018     assert_param(IS_CAN_IT(CAN_IT));
// 1019     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1020 
// 1021     if (NewState != DISABLE)
CAN_ITConfig:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??CAN_ITConfig_0
// 1022     {
// 1023         /* Enable the selected CANx interrupt */
// 1024         CANx->IER |= CAN_IT;
        LDR      R3,[R0, #+20]
        ORRS     R3,R1,R3
        STR      R3,[R0, #+20]
        B.N      ??CAN_ITConfig_1
// 1025     }
// 1026     else
// 1027     {
// 1028         /* Disable the selected CANx interrupt */
// 1029         CANx->IER &= ~CAN_IT;
??CAN_ITConfig_0:
        LDR      R3,[R0, #+20]
        BICS     R3,R3,R1
        STR      R3,[R0, #+20]
// 1030     }
// 1031 }
??CAN_ITConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
// 1032 /**
// 1033   * @brief  Checks whether the specified CAN flag is set or not.
// 1034   * @param  CANx:     where x can be 1 or 2 to to select the CAN peripheral.
// 1035   * @param  CAN_FLAG: specifies the flag to check.
// 1036   *                   This parameter can be one of the following flags:
// 1037   *                  - CAN_FLAG_EWG
// 1038   *                  - CAN_FLAG_EPV
// 1039   *                  - CAN_FLAG_BOF
// 1040   *                  - CAN_FLAG_RQCP0
// 1041   *                  - CAN_FLAG_RQCP1
// 1042   *                  - CAN_FLAG_RQCP2
// 1043   *                  - CAN_FLAG_FMP1
// 1044   *                  - CAN_FLAG_FF1
// 1045   *                  - CAN_FLAG_FOV1
// 1046   *                  - CAN_FLAG_FMP0
// 1047   *                  - CAN_FLAG_FF0
// 1048   *                  - CAN_FLAG_FOV0
// 1049   *                  - CAN_FLAG_WKU
// 1050   *                  - CAN_FLAG_SLAK
// 1051   *                  - CAN_FLAG_LEC
// 1052   * @retval The new state of CAN_FLAG (SET or RESET).
// 1053   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function CAN_GetFlagStatus
          CFI NoCalls
        THUMB
// 1054 FlagStatus CAN_GetFlagStatus(CAN_TypeDef *CANx, uint32_t CAN_FLAG)
// 1055 {
CAN_GetFlagStatus:
        MOVS     R2,R0
// 1056     FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
// 1057 
// 1058     /* Check the parameters */
// 1059     assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1060     assert_param(IS_CAN_GET_FLAG(CAN_FLAG));
// 1061 
// 1062 
// 1063     if((CAN_FLAG & CAN_FLAGS_ESR) != (uint32_t)RESET)
        TST      R1,#0xF00000
        BEQ.N    ??CAN_GetFlagStatus_0
// 1064     {
// 1065         /* Check the status of the specified CAN flag */
// 1066         if ((CANx->ESR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
        LDR      R3,[R2, #+24]
        ANDS     R3,R1,R3
        LSLS     R3,R3,#+12
        BEQ.N    ??CAN_GetFlagStatus_1
// 1067         {
// 1068             /* CAN_FLAG is set */
// 1069             bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1070         }
// 1071         else
// 1072         {
// 1073             /* CAN_FLAG is reset */
// 1074             bitstatus = RESET;
??CAN_GetFlagStatus_1:
        MOVS     R3,#+0
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1075         }
// 1076     }
// 1077     else if((CAN_FLAG & CAN_FLAGS_MSR) != (uint32_t)RESET)
??CAN_GetFlagStatus_0:
        LSLS     R3,R1,#+7
        BPL.N    ??CAN_GetFlagStatus_3
// 1078     {
// 1079         /* Check the status of the specified CAN flag */
// 1080         if ((CANx->MSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
        LDR      R3,[R2, #+4]
        ANDS     R3,R1,R3
        LSLS     R3,R3,#+12
        BEQ.N    ??CAN_GetFlagStatus_4
// 1081         {
// 1082             /* CAN_FLAG is set */
// 1083             bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1084         }
// 1085         else
// 1086         {
// 1087             /* CAN_FLAG is reset */
// 1088             bitstatus = RESET;
??CAN_GetFlagStatus_4:
        MOVS     R3,#+0
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1089         }
// 1090     }
// 1091     else if((CAN_FLAG & CAN_FLAGS_TSR) != (uint32_t)RESET)
??CAN_GetFlagStatus_3:
        LSLS     R3,R1,#+4
        BPL.N    ??CAN_GetFlagStatus_5
// 1092     {
// 1093         /* Check the status of the specified CAN flag */
// 1094         if ((CANx->TSR & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
        LDR      R3,[R2, #+8]
        ANDS     R3,R1,R3
        LSLS     R3,R3,#+12
        BEQ.N    ??CAN_GetFlagStatus_6
// 1095         {
// 1096             /* CAN_FLAG is set */
// 1097             bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1098         }
// 1099         else
// 1100         {
// 1101             /* CAN_FLAG is reset */
// 1102             bitstatus = RESET;
??CAN_GetFlagStatus_6:
        MOVS     R3,#+0
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1103         }
// 1104     }
// 1105     else if((CAN_FLAG & CAN_FLAGS_RF0R) != (uint32_t)RESET)
??CAN_GetFlagStatus_5:
        LSLS     R3,R1,#+6
        BPL.N    ??CAN_GetFlagStatus_7
// 1106     {
// 1107         /* Check the status of the specified CAN flag */
// 1108         if ((CANx->RF0R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
        LDR      R3,[R2, #+12]
        ANDS     R3,R1,R3
        LSLS     R3,R3,#+12
        BEQ.N    ??CAN_GetFlagStatus_8
// 1109         {
// 1110             /* CAN_FLAG is set */
// 1111             bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1112         }
// 1113         else
// 1114         {
// 1115             /* CAN_FLAG is reset */
// 1116             bitstatus = RESET;
??CAN_GetFlagStatus_8:
        MOVS     R3,#+0
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1117         }
// 1118     }
// 1119     else /* If(CAN_FLAG & CAN_FLAGS_RF1R != (uint32_t)RESET) */
// 1120     {
// 1121         /* Check the status of the specified CAN flag */
// 1122         if ((uint32_t)(CANx->RF1R & (CAN_FLAG & 0x000FFFFF)) != (uint32_t)RESET)
??CAN_GetFlagStatus_7:
        LDR      R3,[R2, #+16]
        ANDS     R3,R1,R3
        LSLS     R3,R3,#+12
        BEQ.N    ??CAN_GetFlagStatus_9
// 1123         {
// 1124             /* CAN_FLAG is set */
// 1125             bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CAN_GetFlagStatus_2
// 1126         }
// 1127         else
// 1128         {
// 1129             /* CAN_FLAG is reset */
// 1130             bitstatus = RESET;
??CAN_GetFlagStatus_9:
        MOVS     R3,#+0
        MOVS     R0,R3
// 1131         }
// 1132     }
// 1133     /* Return the CAN_FLAG status */
// 1134     return  bitstatus;
??CAN_GetFlagStatus_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
// 1135 }
// 1136 
// 1137 /**
// 1138   * @brief  Clears the CAN's pending flags.
// 1139   * @param  CANx:     where x can be 1 or 2 to to select the CAN peripheral.
// 1140   * @param  CAN_FLAG: specifies the flag to clear.
// 1141   *                   This parameter can be one of the following flags:
// 1142   *                    - CAN_FLAG_RQCP0
// 1143   *                    - CAN_FLAG_RQCP1
// 1144   *                    - CAN_FLAG_RQCP2
// 1145   *                    - CAN_FLAG_FF1
// 1146   *                    - CAN_FLAG_FOV1
// 1147   *                    - CAN_FLAG_FF0
// 1148   *                    - CAN_FLAG_FOV0
// 1149   *                    - CAN_FLAG_WKU
// 1150   *                    - CAN_FLAG_SLAK
// 1151   *                    - CAN_FLAG_LEC
// 1152   * @retval None.
// 1153   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function CAN_ClearFlag
          CFI NoCalls
        THUMB
// 1154 void CAN_ClearFlag(CAN_TypeDef *CANx, uint32_t CAN_FLAG)
// 1155 {
// 1156     uint32_t flagtmp = 0;
CAN_ClearFlag:
        MOVS     R2,#+0
// 1157     /* Check the parameters */
// 1158     assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1159     assert_param(IS_CAN_CLEAR_FLAG(CAN_FLAG));
// 1160 
// 1161     if (CAN_FLAG == CAN_FLAG_LEC) /* ESR register */
        LDR.N    R3,??DataTable6_14  ;; 0x30f00070
        CMP      R1,R3
        BNE.N    ??CAN_ClearFlag_0
// 1162     {
// 1163         /* Clear the selected CAN flags */
// 1164         CANx->ESR = (uint32_t)RESET;
        MOVS     R3,#+0
        STR      R3,[R0, #+24]
        B.N      ??CAN_ClearFlag_1
// 1165     }
// 1166     else /* MSR or TSR or RF0R or RF1R */
// 1167     {
// 1168         flagtmp = CAN_FLAG & 0x000FFFFF;
??CAN_ClearFlag_0:
        LSLS     R3,R1,#+12       ;; ZeroExtS R3,R1,#+12,#+12
        LSRS     R3,R3,#+12
        MOVS     R2,R3
// 1169 
// 1170         if ((CAN_FLAG & CAN_FLAGS_RF0R) != (uint32_t)RESET)
        LSLS     R3,R1,#+6
        BPL.N    ??CAN_ClearFlag_2
// 1171         {
// 1172             /* Receive Flags */
// 1173             CANx->RF0R = (uint32_t)(flagtmp);
        STR      R2,[R0, #+12]
        B.N      ??CAN_ClearFlag_1
// 1174         }
// 1175         else if ((CAN_FLAG & CAN_FLAGS_RF1R) != (uint32_t)RESET)
??CAN_ClearFlag_2:
        LSLS     R3,R1,#+5
        BPL.N    ??CAN_ClearFlag_3
// 1176         {
// 1177             /* Receive Flags */
// 1178             CANx->RF1R = (uint32_t)(flagtmp);
        STR      R2,[R0, #+16]
        B.N      ??CAN_ClearFlag_1
// 1179         }
// 1180         else if ((CAN_FLAG & CAN_FLAGS_TSR) != (uint32_t)RESET)
??CAN_ClearFlag_3:
        LSLS     R3,R1,#+4
        BPL.N    ??CAN_ClearFlag_4
// 1181         {
// 1182             /* Transmit Flags */
// 1183             CANx->TSR = (uint32_t)(flagtmp);
        STR      R2,[R0, #+8]
        B.N      ??CAN_ClearFlag_1
// 1184         }
// 1185         else /* If((CAN_FLAG & CAN_FLAGS_MSR)!=(uint32_t)RESET) */
// 1186         {
// 1187             /* Operating mode Flags */
// 1188             CANx->MSR = (uint32_t)(flagtmp);
??CAN_ClearFlag_4:
        STR      R2,[R0, #+4]
// 1189         }
// 1190     }
// 1191 }
??CAN_ClearFlag_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
// 1192 
// 1193 /**
// 1194   * @brief  Checks whether the specified CANx interrupt has occurred or not.
// 1195   * @param  CANx:    where x can be 1 or 2 to to select the CAN peripheral.
// 1196   * @param  CAN_IT:  specifies the CAN interrupt source to check.
// 1197   *                  This parameter can be one of the following flags:
// 1198   *                 -  CAN_IT_TME
// 1199   *                 -  CAN_IT_FMP0
// 1200   *                 -  CAN_IT_FF0
// 1201   *                 -  CAN_IT_FOV0
// 1202   *                 -  CAN_IT_FMP1
// 1203   *                 -  CAN_IT_FF1
// 1204   *                 -  CAN_IT_FOV1
// 1205   *                 -  CAN_IT_WKU
// 1206   *                 -  CAN_IT_SLK
// 1207   *                 -  CAN_IT_EWG
// 1208   *                 -  CAN_IT_EPV
// 1209   *                 -  CAN_IT_BOF
// 1210   *                 -  CAN_IT_LEC
// 1211   *                 -  CAN_IT_ERR
// 1212   * @retval The current state of CAN_IT (SET or RESET).
// 1213   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function CAN_GetITStatus
        THUMB
// 1214 ITStatus CAN_GetITStatus(CAN_TypeDef *CANx, uint32_t CAN_IT)
// 1215 {
CAN_GetITStatus:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1216     ITStatus itstatus = RESET;
        MOVS     R6,#+0
// 1217     /* Check the parameters */
// 1218     assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1219     assert_param(IS_CAN_IT(CAN_IT));
// 1220 
// 1221     /* check the enable interrupt bit */
// 1222     if((CANx->IER & CAN_IT) != RESET)
        LDR      R0,[R4, #+20]
        TST      R0,R5
        BEQ.N    ??CAN_GetITStatus_0
// 1223     {
// 1224         /* in case the Interrupt is enabled, .... */
// 1225         switch (CAN_IT)
        MOVS     R0,R5
        CMP      R0,#+1
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R0,#+2
        BEQ.N    ??CAN_GetITStatus_2
        CMP      R0,#+4
        BEQ.N    ??CAN_GetITStatus_3
        CMP      R0,#+8
        BEQ.N    ??CAN_GetITStatus_4
        CMP      R0,#+16
        BEQ.N    ??CAN_GetITStatus_5
        CMP      R0,#+32
        BEQ.N    ??CAN_GetITStatus_6
        CMP      R0,#+64
        BEQ.N    ??CAN_GetITStatus_7
        CMP      R0,#+256
        BEQ.N    ??CAN_GetITStatus_8
        CMP      R0,#+512
        BEQ.N    ??CAN_GetITStatus_9
        CMP      R0,#+1024
        BEQ.N    ??CAN_GetITStatus_10
        CMP      R0,#+2048
        BEQ.N    ??CAN_GetITStatus_11
        CMP      R0,#+32768
        BEQ.N    ??CAN_GetITStatus_12
        CMP      R0,#+65536
        BEQ.N    ??CAN_GetITStatus_13
        CMP      R0,#+131072
        BEQ.N    ??CAN_GetITStatus_14
        B.N      ??CAN_GetITStatus_15
// 1226         {
// 1227         case CAN_IT_TME:
// 1228             /* Check CAN_TSR_RQCPx bits */
// 1229             itstatus = CheckITStatus(CANx->TSR, CAN_TSR_RQCP0 | CAN_TSR_RQCP1 | CAN_TSR_RQCP2);
??CAN_GetITStatus_1:
        LDR.N    R1,??DataTable6_15  ;; 0x10101
        LDR      R0,[R4, #+8]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1230             break;
        B.N      ??CAN_GetITStatus_16
// 1231         case CAN_IT_FMP0:
// 1232             /* Check CAN_RF0R_FMP0 bit */
// 1233             itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FMP0);
??CAN_GetITStatus_2:
        MOVS     R1,#+3
        LDR      R0,[R4, #+12]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1234             break;
        B.N      ??CAN_GetITStatus_16
// 1235         case CAN_IT_FF0:
// 1236             /* Check CAN_RF0R_FULL0 bit */
// 1237             itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FULL0);
??CAN_GetITStatus_3:
        MOVS     R1,#+8
        LDR      R0,[R4, #+12]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1238             break;
        B.N      ??CAN_GetITStatus_16
// 1239         case CAN_IT_FOV0:
// 1240             /* Check CAN_RF0R_FOVR0 bit */
// 1241             itstatus = CheckITStatus(CANx->RF0R, CAN_RF0R_FOVR0);
??CAN_GetITStatus_4:
        MOVS     R1,#+16
        LDR      R0,[R4, #+12]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1242             break;
        B.N      ??CAN_GetITStatus_16
// 1243         case CAN_IT_FMP1:
// 1244             /* Check CAN_RF1R_FMP1 bit */
// 1245             itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FMP1);
??CAN_GetITStatus_5:
        MOVS     R1,#+3
        LDR      R0,[R4, #+16]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1246             break;
        B.N      ??CAN_GetITStatus_16
// 1247         case CAN_IT_FF1:
// 1248             /* Check CAN_RF1R_FULL1 bit */
// 1249             itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FULL1);
??CAN_GetITStatus_6:
        MOVS     R1,#+8
        LDR      R0,[R4, #+16]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1250             break;
        B.N      ??CAN_GetITStatus_16
// 1251         case CAN_IT_FOV1:
// 1252             /* Check CAN_RF1R_FOVR1 bit */
// 1253             itstatus = CheckITStatus(CANx->RF1R, CAN_RF1R_FOVR1);
??CAN_GetITStatus_7:
        MOVS     R1,#+16
        LDR      R0,[R4, #+16]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1254             break;
        B.N      ??CAN_GetITStatus_16
// 1255         case CAN_IT_WKU:
// 1256             /* Check CAN_MSR_WKUI bit */
// 1257             itstatus = CheckITStatus(CANx->MSR, CAN_MSR_WKUI);
??CAN_GetITStatus_13:
        MOVS     R1,#+8
        LDR      R0,[R4, #+4]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1258             break;
        B.N      ??CAN_GetITStatus_16
// 1259         case CAN_IT_SLK:
// 1260             /* Check CAN_MSR_SLAKI bit */
// 1261             itstatus = CheckITStatus(CANx->MSR, CAN_MSR_SLAKI);
??CAN_GetITStatus_14:
        MOVS     R1,#+16
        LDR      R0,[R4, #+4]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1262             break;
        B.N      ??CAN_GetITStatus_16
// 1263         case CAN_IT_EWG:
// 1264             /* Check CAN_ESR_EWGF bit */
// 1265             itstatus = CheckITStatus(CANx->ESR, CAN_ESR_EWGF);
??CAN_GetITStatus_8:
        MOVS     R1,#+1
        LDR      R0,[R4, #+24]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1266             break;
        B.N      ??CAN_GetITStatus_16
// 1267         case CAN_IT_EPV:
// 1268             /* Check CAN_ESR_EPVF bit */
// 1269             itstatus = CheckITStatus(CANx->ESR, CAN_ESR_EPVF);
??CAN_GetITStatus_9:
        MOVS     R1,#+2
        LDR      R0,[R4, #+24]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1270             break;
        B.N      ??CAN_GetITStatus_16
// 1271         case CAN_IT_BOF:
// 1272             /* Check CAN_ESR_BOFF bit */
// 1273             itstatus = CheckITStatus(CANx->ESR, CAN_ESR_BOFF);
??CAN_GetITStatus_10:
        MOVS     R1,#+4
        LDR      R0,[R4, #+24]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1274             break;
        B.N      ??CAN_GetITStatus_16
// 1275         case CAN_IT_LEC:
// 1276             /* Check CAN_ESR_LEC bit */
// 1277             itstatus = CheckITStatus(CANx->ESR, CAN_ESR_LEC);
??CAN_GetITStatus_11:
        MOVS     R1,#+112
        LDR      R0,[R4, #+24]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1278             break;
        B.N      ??CAN_GetITStatus_16
// 1279         case CAN_IT_ERR:
// 1280             /* Check CAN_MSR_ERRI bit */
// 1281             itstatus = CheckITStatus(CANx->MSR, CAN_MSR_ERRI);
??CAN_GetITStatus_12:
        MOVS     R1,#+4
        LDR      R0,[R4, #+4]
          CFI FunCall CheckITStatus
        BL       CheckITStatus
        MOVS     R6,R0
// 1282             break;
        B.N      ??CAN_GetITStatus_16
// 1283         default :
// 1284             /* in case of error, return RESET */
// 1285             itstatus = RESET;
??CAN_GetITStatus_15:
        MOVS     R0,#+0
        MOVS     R6,R0
// 1286             break;
        B.N      ??CAN_GetITStatus_16
// 1287         }
// 1288     }
// 1289     else
// 1290     {
// 1291         /* in case the Interrupt is not enabled, return RESET */
// 1292         itstatus  = RESET;
??CAN_GetITStatus_0:
        MOVS     R0,#+0
        MOVS     R6,R0
// 1293     }
// 1294 
// 1295     /* Return the CAN_IT status */
// 1296     return  itstatus;
??CAN_GetITStatus_16:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock22
// 1297 }
// 1298 
// 1299 /**
// 1300   * @brief  Clears the CANx's interrupt pending bits.
// 1301   * @param  CANx:    where x can be 1 or 2 to to select the CAN peripheral.
// 1302   * @param  CAN_IT: specifies the interrupt pending bit to clear.
// 1303   *                  -  CAN_IT_TME
// 1304   *                  -  CAN_IT_FF0
// 1305   *                  -  CAN_IT_FOV0
// 1306   *                  -  CAN_IT_FF1
// 1307   *                  -  CAN_IT_FOV1
// 1308   *                  -  CAN_IT_WKU
// 1309   *                  -  CAN_IT_SLK
// 1310   *                  -  CAN_IT_EWG
// 1311   *                  -  CAN_IT_EPV
// 1312   *                  -  CAN_IT_BOF
// 1313   *                  -  CAN_IT_LEC
// 1314   *                  -  CAN_IT_ERR
// 1315   * @retval None.
// 1316   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function CAN_ClearITPendingBit
          CFI NoCalls
        THUMB
// 1317 void CAN_ClearITPendingBit(CAN_TypeDef *CANx, uint32_t CAN_IT)
// 1318 {
// 1319     /* Check the parameters */
// 1320     assert_param(IS_CAN_ALL_PERIPH(CANx));
// 1321     assert_param(IS_CAN_CLEAR_IT(CAN_IT));
// 1322 
// 1323     switch (CAN_IT)
CAN_ClearITPendingBit:
        MOVS     R2,R1
        CMP      R2,#+1
        BEQ.N    ??CAN_ClearITPendingBit_0
        CMP      R2,#+4
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R2,#+8
        BEQ.N    ??CAN_ClearITPendingBit_2
        CMP      R2,#+32
        BEQ.N    ??CAN_ClearITPendingBit_3
        CMP      R2,#+64
        BEQ.N    ??CAN_ClearITPendingBit_4
        CMP      R2,#+256
        BEQ.N    ??CAN_ClearITPendingBit_5
        CMP      R2,#+512
        BEQ.N    ??CAN_ClearITPendingBit_6
        CMP      R2,#+1024
        BEQ.N    ??CAN_ClearITPendingBit_7
        CMP      R2,#+2048
        BEQ.N    ??CAN_ClearITPendingBit_8
        CMP      R2,#+32768
        BEQ.N    ??CAN_ClearITPendingBit_9
        CMP      R2,#+65536
        BEQ.N    ??CAN_ClearITPendingBit_10
        CMP      R2,#+131072
        BEQ.N    ??CAN_ClearITPendingBit_11
        B.N      ??CAN_ClearITPendingBit_12
// 1324     {
// 1325     case CAN_IT_TME:
// 1326         /* Clear CAN_TSR_RQCPx (rc_w1)*/
// 1327         CANx->TSR = CAN_TSR_RQCP0 | CAN_TSR_RQCP1 | CAN_TSR_RQCP2;
??CAN_ClearITPendingBit_0:
        LDR.N    R2,??DataTable6_15  ;; 0x10101
        STR      R2,[R0, #+8]
// 1328         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1329     case CAN_IT_FF0:
// 1330         /* Clear CAN_RF0R_FULL0 (rc_w1)*/
// 1331         CANx->RF0R = CAN_RF0R_FULL0;
??CAN_ClearITPendingBit_1:
        MOVS     R2,#+8
        STR      R2,[R0, #+12]
// 1332         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1333     case CAN_IT_FOV0:
// 1334         /* Clear CAN_RF0R_FOVR0 (rc_w1)*/
// 1335         CANx->RF0R = CAN_RF0R_FOVR0;
??CAN_ClearITPendingBit_2:
        MOVS     R2,#+16
        STR      R2,[R0, #+12]
// 1336         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1337     case CAN_IT_FF1:
// 1338         /* Clear CAN_RF1R_FULL1 (rc_w1)*/
// 1339         CANx->RF1R = CAN_RF1R_FULL1;
??CAN_ClearITPendingBit_3:
        MOVS     R2,#+8
        STR      R2,[R0, #+16]
// 1340         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1341     case CAN_IT_FOV1:
// 1342         /* Clear CAN_RF1R_FOVR1 (rc_w1)*/
// 1343         CANx->RF1R = CAN_RF1R_FOVR1;
??CAN_ClearITPendingBit_4:
        MOVS     R2,#+16
        STR      R2,[R0, #+16]
// 1344         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1345     case CAN_IT_WKU:
// 1346         /* Clear CAN_MSR_WKUI (rc_w1)*/
// 1347         CANx->MSR = CAN_MSR_WKUI;
??CAN_ClearITPendingBit_10:
        MOVS     R2,#+8
        STR      R2,[R0, #+4]
// 1348         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1349     case CAN_IT_SLK:
// 1350         /* Clear CAN_MSR_SLAKI (rc_w1)*/
// 1351         CANx->MSR = CAN_MSR_SLAKI;
??CAN_ClearITPendingBit_11:
        MOVS     R2,#+16
        STR      R2,[R0, #+4]
// 1352         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1353     case CAN_IT_EWG:
// 1354         /* Clear CAN_MSR_ERRI (rc_w1) */
// 1355         CANx->MSR = CAN_MSR_ERRI;
??CAN_ClearITPendingBit_5:
        MOVS     R2,#+4
        STR      R2,[R0, #+4]
// 1356         /* Note : the corresponding Flag is cleared by hardware depending
// 1357                   of the CAN Bus status*/
// 1358         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1359     case CAN_IT_EPV:
// 1360         /* Clear CAN_MSR_ERRI (rc_w1) */
// 1361         CANx->MSR = CAN_MSR_ERRI;
??CAN_ClearITPendingBit_6:
        MOVS     R2,#+4
        STR      R2,[R0, #+4]
// 1362         /* Note : the corresponding Flag is cleared by hardware depending
// 1363                   of the CAN Bus status*/
// 1364         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1365     case CAN_IT_BOF:
// 1366         /* Clear CAN_MSR_ERRI (rc_w1) */
// 1367         CANx->MSR = CAN_MSR_ERRI;
??CAN_ClearITPendingBit_7:
        MOVS     R2,#+4
        STR      R2,[R0, #+4]
// 1368         /* Note : the corresponding Flag is cleared by hardware depending
// 1369                   of the CAN Bus status*/
// 1370         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1371     case CAN_IT_LEC:
// 1372         /*  Clear LEC bits */
// 1373         CANx->ESR = RESET;
??CAN_ClearITPendingBit_8:
        MOVS     R2,#+0
        STR      R2,[R0, #+24]
// 1374         /* Clear CAN_MSR_ERRI (rc_w1) */
// 1375         CANx->MSR = CAN_MSR_ERRI;
        MOVS     R2,#+4
        STR      R2,[R0, #+4]
// 1376         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1377     case CAN_IT_ERR:
// 1378         /*Clear LEC bits */
// 1379         CANx->ESR = RESET;
??CAN_ClearITPendingBit_9:
        MOVS     R2,#+0
        STR      R2,[R0, #+24]
// 1380         /* Clear CAN_MSR_ERRI (rc_w1) */
// 1381         CANx->MSR = CAN_MSR_ERRI;
        MOVS     R2,#+4
        STR      R2,[R0, #+4]
// 1382         /* Note : BOFF, EPVF and EWGF Flags are cleared by hardware depending
// 1383                 of the CAN Bus status*/
// 1384         break;
        B.N      ??CAN_ClearITPendingBit_13
// 1385     default :
// 1386         break;
// 1387     }
// 1388 }
??CAN_ClearITPendingBit_12:
??CAN_ClearITPendingBit_13:
        BX       LR               ;; return
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40006400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40006600

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x4000661c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x4000660c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x40006640

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x40006604

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x40006614

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0xffffc0f1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x4000003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x8000300

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x10030000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0x4000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x40000fd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x800fd00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x30f00070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     0x10101
// 1389 
// 1390 /**
// 1391   * @brief  Checks whether the CAN interrupt has occurred or not.
// 1392   * @param  CAN_Reg: specifies the CAN interrupt register to check.
// 1393   * @param  It_Bit:  specifies the interrupt source bit to check.
// 1394   * @retval The new state of the CAN Interrupt (SET or RESET).
// 1395   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function CheckITStatus
          CFI NoCalls
        THUMB
// 1396 static ITStatus CheckITStatus(uint32_t CAN_Reg, uint32_t It_Bit)
// 1397 {
CheckITStatus:
        MOVS     R2,R0
// 1398     ITStatus pendingbitstatus = RESET;
        MOVS     R0,#+0
// 1399 
// 1400     if ((CAN_Reg & It_Bit) != (uint32_t)RESET)
        TST      R2,R1
        BEQ.N    ??CheckITStatus_0
// 1401     {
// 1402         /* CAN_IT is set */
// 1403         pendingbitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CheckITStatus_1
// 1404     }
// 1405     else
// 1406     {
// 1407         /* CAN_IT is reset */
// 1408         pendingbitstatus = RESET;
??CheckITStatus_0:
        MOVS     R3,#+0
        MOVS     R0,R3
// 1409     }
// 1410     return pendingbitstatus;
??CheckITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
// 1411 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1412 
// 1413 
// 1414 /**
// 1415   * @}
// 1416   */
// 1417 
// 1418 /**
// 1419   * @}
// 1420   */
// 1421 
// 1422 /**
// 1423   * @}
// 1424   */
// 1425 
// 1426 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 2 674 bytes in section .text
// 
// 2 674 bytes of CODE memory
//
//Errors: none
//Warnings: none
