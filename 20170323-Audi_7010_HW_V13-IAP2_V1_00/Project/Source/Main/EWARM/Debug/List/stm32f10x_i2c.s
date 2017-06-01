///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:49 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_i2c.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_i2c.c -D USE_STDPERIPH_DRIVER -D               /
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
//                    \Debug\List\stm32f10x_i2c.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_i2c

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_GetClocksFreq

        PUBLIC I2C_ARPCmd
        PUBLIC I2C_AcknowledgeConfig
        PUBLIC I2C_CalculatePEC
        PUBLIC I2C_CheckEvent
        PUBLIC I2C_ClearFlag
        PUBLIC I2C_ClearITPendingBit
        PUBLIC I2C_Cmd
        PUBLIC I2C_DMACmd
        PUBLIC I2C_DMALastTransferCmd
        PUBLIC I2C_DeInit
        PUBLIC I2C_DualAddressCmd
        PUBLIC I2C_FastModeDutyCycleConfig
        PUBLIC I2C_GeneralCallCmd
        PUBLIC I2C_GenerateSTART
        PUBLIC I2C_GenerateSTOP
        PUBLIC I2C_GetFlagStatus
        PUBLIC I2C_GetITStatus
        PUBLIC I2C_GetLastEvent
        PUBLIC I2C_GetPEC
        PUBLIC I2C_ITConfig
        PUBLIC I2C_Init
        PUBLIC I2C_NACKPositionConfig
        PUBLIC I2C_OwnAddress2Config
        PUBLIC I2C_PECPositionConfig
        PUBLIC I2C_ReadRegister
        PUBLIC I2C_ReceiveData
        PUBLIC I2C_SMBusAlertConfig
        PUBLIC I2C_Send7bitAddress
        PUBLIC I2C_SendData
        PUBLIC I2C_SoftwareResetCmd
        PUBLIC I2C_StretchClockCmd
        PUBLIC I2C_StructInit
        PUBLIC I2C_TransmitPEC
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_i2c.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_i2c.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the I2C firmware functions.
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
//   23 #include "stm32f10x_i2c.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 
//   27 /** @addtogroup STM32F10x_StdPeriph_Driver
//   28   * @{
//   29   */
//   30 
//   31 /** @defgroup I2C
//   32   * @brief I2C driver modules
//   33   * @{
//   34   */
//   35 
//   36 /** @defgroup I2C_Private_TypesDefinitions
//   37   * @{
//   38   */
//   39 
//   40 /**
//   41   * @}
//   42   */
//   43 
//   44 /** @defgroup I2C_Private_Defines
//   45   * @{
//   46   */
//   47 
//   48 /* I2C SPE mask */
//   49 #define CR1_PE_Set              ((uint16_t)0x0001)
//   50 #define CR1_PE_Reset            ((uint16_t)0xFFFE)
//   51 
//   52 /* I2C START mask */
//   53 #define CR1_START_Set           ((uint16_t)0x0100)
//   54 #define CR1_START_Reset         ((uint16_t)0xFEFF)
//   55 
//   56 /* I2C STOP mask */
//   57 #define CR1_STOP_Set            ((uint16_t)0x0200)
//   58 #define CR1_STOP_Reset          ((uint16_t)0xFDFF)
//   59 
//   60 /* I2C ACK mask */
//   61 #define CR1_ACK_Set             ((uint16_t)0x0400)
//   62 #define CR1_ACK_Reset           ((uint16_t)0xFBFF)
//   63 
//   64 /* I2C ENGC mask */
//   65 #define CR1_ENGC_Set            ((uint16_t)0x0040)
//   66 #define CR1_ENGC_Reset          ((uint16_t)0xFFBF)
//   67 
//   68 /* I2C SWRST mask */
//   69 #define CR1_SWRST_Set           ((uint16_t)0x8000)
//   70 #define CR1_SWRST_Reset         ((uint16_t)0x7FFF)
//   71 
//   72 /* I2C PEC mask */
//   73 #define CR1_PEC_Set             ((uint16_t)0x1000)
//   74 #define CR1_PEC_Reset           ((uint16_t)0xEFFF)
//   75 
//   76 /* I2C ENPEC mask */
//   77 #define CR1_ENPEC_Set           ((uint16_t)0x0020)
//   78 #define CR1_ENPEC_Reset         ((uint16_t)0xFFDF)
//   79 
//   80 /* I2C ENARP mask */
//   81 #define CR1_ENARP_Set           ((uint16_t)0x0010)
//   82 #define CR1_ENARP_Reset         ((uint16_t)0xFFEF)
//   83 
//   84 /* I2C NOSTRETCH mask */
//   85 #define CR1_NOSTRETCH_Set       ((uint16_t)0x0080)
//   86 #define CR1_NOSTRETCH_Reset     ((uint16_t)0xFF7F)
//   87 
//   88 /* I2C registers Masks */
//   89 #define CR1_CLEAR_Mask          ((uint16_t)0xFBF5)
//   90 
//   91 /* I2C DMAEN mask */
//   92 #define CR2_DMAEN_Set           ((uint16_t)0x0800)
//   93 #define CR2_DMAEN_Reset         ((uint16_t)0xF7FF)
//   94 
//   95 /* I2C LAST mask */
//   96 #define CR2_LAST_Set            ((uint16_t)0x1000)
//   97 #define CR2_LAST_Reset          ((uint16_t)0xEFFF)
//   98 
//   99 /* I2C FREQ mask */
//  100 #define CR2_FREQ_Reset          ((uint16_t)0xFFC0)
//  101 
//  102 /* I2C ADD0 mask */
//  103 #define OAR1_ADD0_Set           ((uint16_t)0x0001)
//  104 #define OAR1_ADD0_Reset         ((uint16_t)0xFFFE)
//  105 
//  106 /* I2C ENDUAL mask */
//  107 #define OAR2_ENDUAL_Set         ((uint16_t)0x0001)
//  108 #define OAR2_ENDUAL_Reset       ((uint16_t)0xFFFE)
//  109 
//  110 /* I2C ADD2 mask */
//  111 #define OAR2_ADD2_Reset         ((uint16_t)0xFF01)
//  112 
//  113 /* I2C F/S mask */
//  114 #define CCR_FS_Set              ((uint16_t)0x8000)
//  115 
//  116 /* I2C CCR mask */
//  117 #define CCR_CCR_Set             ((uint16_t)0x0FFF)
//  118 
//  119 /* I2C FLAG mask */
//  120 #define FLAG_Mask               ((uint32_t)0x00FFFFFF)
//  121 
//  122 /* I2C Interrupt Enable mask */
//  123 #define ITEN_Mask               ((uint32_t)0x07000000)
//  124 
//  125 /**
//  126   * @}
//  127   */
//  128 
//  129 /** @defgroup I2C_Private_Macros
//  130   * @{
//  131   */
//  132 
//  133 /**
//  134   * @}
//  135   */
//  136 
//  137 /** @defgroup I2C_Private_Variables
//  138   * @{
//  139   */
//  140 
//  141 /**
//  142   * @}
//  143   */
//  144 
//  145 /** @defgroup I2C_Private_FunctionPrototypes
//  146   * @{
//  147   */
//  148 
//  149 /**
//  150   * @}
//  151   */
//  152 
//  153 /** @defgroup I2C_Private_Functions
//  154   * @{
//  155   */
//  156 
//  157 /**
//  158   * @brief  Deinitializes the I2Cx peripheral registers to their default reset values.
//  159   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  160   * @retval None
//  161   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function I2C_DeInit
        THUMB
//  162 void I2C_DeInit(I2C_TypeDef *I2Cx)
//  163 {
I2C_DeInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  164     /* Check the parameters */
//  165     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  166 
//  167     if (I2Cx == I2C1)
        LDR.N    R0,??DataTable1  ;; 0x40005400
        CMP      R4,R0
        BNE.N    ??I2C_DeInit_0
//  168     {
//  169         /* Enable I2C1 reset state */
//  170         RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C1, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+2097152
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  171         /* Release I2C1 from reset state */
//  172         RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C1, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+2097152
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??I2C_DeInit_1
//  173     }
//  174     else
//  175     {
//  176         /* Enable I2C2 reset state */
//  177         RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C2, ENABLE);
??I2C_DeInit_0:
        MOVS     R1,#+1
        MOVS     R0,#+4194304
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  178         /* Release I2C2 from reset state */
//  179         RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C2, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+4194304
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  180     }
//  181 }
??I2C_DeInit_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  182 
//  183 /**
//  184   * @brief  Initializes the I2Cx peripheral according to the specified
//  185   *   parameters in the I2C_InitStruct.
//  186   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  187   * @param  I2C_InitStruct: pointer to a I2C_InitTypeDef structure that
//  188   *   contains the configuration information for the specified I2C peripheral.
//  189   * @retval None
//  190   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function I2C_Init
        THUMB
//  191 void I2C_Init(I2C_TypeDef *I2Cx, I2C_InitTypeDef *I2C_InitStruct)
//  192 {
I2C_Init:
        PUSH     {R4-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+28
        SUB      SP,SP,#+20
          CFI CFA R13+48
        MOVS     R4,R0
        MOVS     R5,R1
//  193     uint16_t tmpreg = 0, freqrange = 0;
        MOVS     R9,#+0
        MOVS     R6,#+0
//  194     uint16_t result = 0x04;
        MOVS     R7,#+4
//  195     uint32_t pclk1 = 8000000;
        LDR.W    R8,??DataTable1_1  ;; 0x7a1200
//  196     RCC_ClocksTypeDef  rcc_clocks;
//  197     /* Check the parameters */
//  198     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  199     assert_param(IS_I2C_CLOCK_SPEED(I2C_InitStruct->I2C_ClockSpeed));
//  200     assert_param(IS_I2C_MODE(I2C_InitStruct->I2C_Mode));
//  201     assert_param(IS_I2C_DUTY_CYCLE(I2C_InitStruct->I2C_DutyCycle));
//  202     assert_param(IS_I2C_OWN_ADDRESS1(I2C_InitStruct->I2C_OwnAddress1));
//  203     assert_param(IS_I2C_ACK_STATE(I2C_InitStruct->I2C_Ack));
//  204     assert_param(IS_I2C_ACKNOWLEDGE_ADDRESS(I2C_InitStruct->I2C_AcknowledgedAddress));
//  205 
//  206     /*---------------------------- I2Cx CR2 Configuration ------------------------*/
//  207     /* Get the I2Cx CR2 value */
//  208     tmpreg = I2Cx->CR2;
        LDRH     R0,[R4, #+4]
        MOV      R9,R0
//  209     /* Clear frequency FREQ[5:0] bits */
//  210     tmpreg &= CR2_FREQ_Reset;
        MOVW     R0,#+65472
        ANDS     R9,R0,R9
//  211     /* Get pclk1 frequency value */
//  212     RCC_GetClocksFreq(&rcc_clocks);
        ADD      R0,SP,#+0
          CFI FunCall RCC_GetClocksFreq
        BL       RCC_GetClocksFreq
//  213     pclk1 = rcc_clocks.PCLK1_Frequency;
        LDR      R0,[SP, #+8]
        MOV      R8,R0
//  214     /* Set frequency bits depending on pclk1 value */
//  215     freqrange = (uint16_t)(pclk1 / 1000000);
        LDR.N    R0,??DataTable1_2  ;; 0xf4240
        UDIV     R0,R8,R0
        MOVS     R6,R0
//  216     tmpreg |= freqrange;
        ORRS     R9,R6,R9
//  217     /* Write to I2Cx CR2 */
//  218     I2Cx->CR2 = tmpreg;
        STRH     R9,[R4, #+4]
//  219 
//  220     /*---------------------------- I2Cx CCR Configuration ------------------------*/
//  221     /* Disable the selected I2C peripheral to configure TRISE */
//  222     I2Cx->CR1 &= CR1_PE_Reset;
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65534
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
//  223     /* Reset tmpreg value */
//  224     /* Clear F/S, DUTY and CCR[11:0] bits */
//  225     tmpreg = 0;
        MOVS     R0,#+0
        MOV      R9,R0
//  226 
//  227     /* Configure speed in standard mode */
//  228     if (I2C_InitStruct->I2C_ClockSpeed <= 100000)
        LDR      R0,[R5, #+0]
        LDR.N    R1,??DataTable1_3  ;; 0x186a1
        CMP      R0,R1
        BCS.N    ??I2C_Init_0
//  229     {
//  230         /* Standard mode speed calculate */
//  231         result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed << 1));
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+1
        UDIV     R0,R8,R0
        MOVS     R7,R0
//  232         /* Test if CCR value is under 0x4*/
//  233         if (result < 0x04)
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+4
        BCS.N    ??I2C_Init_1
//  234         {
//  235             /* Set minimum allowed value */
//  236             result = 0x04;
        MOVS     R0,#+4
        MOVS     R7,R0
//  237         }
//  238         /* Set speed value for standard mode */
//  239         tmpreg |= result;
??I2C_Init_1:
        ORRS     R9,R7,R9
//  240         /* Set Maximum Rise Time for standard mode */
//  241         I2Cx->TRISE = freqrange + 1;
        ADDS     R0,R6,#+1
        STRH     R0,[R4, #+32]
        B.N      ??I2C_Init_2
//  242     }
//  243     /* Configure speed in fast mode */
//  244     else /*(I2C_InitStruct->I2C_ClockSpeed <= 400000)*/
//  245     {
//  246         if (I2C_InitStruct->I2C_DutyCycle == I2C_DutyCycle_2)
??I2C_Init_0:
        LDRH     R0,[R5, #+6]
        MOVW     R1,#+49151
        CMP      R0,R1
        BNE.N    ??I2C_Init_3
//  247         {
//  248             /* Fast mode speed calculate: Tlow/Thigh = 2 */
//  249             result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed * 3));
        LDR      R0,[R5, #+0]
        MOVS     R1,#+3
        MULS     R0,R1,R0
        UDIV     R0,R8,R0
        MOVS     R7,R0
        B.N      ??I2C_Init_4
//  250         }
//  251         else /*I2C_InitStruct->I2C_DutyCycle == I2C_DutyCycle_16_9*/
//  252         {
//  253             /* Fast mode speed calculate: Tlow/Thigh = 16/9 */
//  254             result = (uint16_t)(pclk1 / (I2C_InitStruct->I2C_ClockSpeed * 25));
??I2C_Init_3:
        LDR      R0,[R5, #+0]
        MOVS     R1,#+25
        MULS     R0,R1,R0
        UDIV     R0,R8,R0
        MOVS     R7,R0
//  255             /* Set DUTY bit */
//  256             result |= I2C_DutyCycle_16_9;
        ORRS     R7,R7,#0x4000
//  257         }
//  258 
//  259         /* Test if CCR value is under 0x1*/
//  260         if ((result & CCR_CCR_Set) == 0)
??I2C_Init_4:
        LSLS     R0,R7,#+20
        BNE.N    ??I2C_Init_5
//  261         {
//  262             /* Set minimum allowed value */
//  263             result |= (uint16_t)0x0001;
        ORRS     R7,R7,#0x1
//  264         }
//  265         /* Set speed value and set F/S bit for fast mode */
//  266         tmpreg |= (uint16_t)(result | CCR_FS_Set);
??I2C_Init_5:
        ORRS     R0,R7,#0x8000
        ORRS     R9,R0,R9
//  267         /* Set Maximum Rise Time for fast mode */
//  268         I2Cx->TRISE = (uint16_t)(((freqrange * (uint16_t)300) / (uint16_t)1000) + (uint16_t)1);
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOV      R0,#+300
        MUL      R0,R0,R6
        MOV      R1,#+1000
        SDIV     R0,R0,R1
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+32]
//  269     }
//  270 
//  271     /* Write to I2Cx CCR */
//  272     I2Cx->CCR = tmpreg;
??I2C_Init_2:
        STRH     R9,[R4, #+28]
//  273     /* Enable the selected I2C peripheral */
//  274     I2Cx->CR1 |= CR1_PE_Set;
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+0]
//  275 
//  276     /*---------------------------- I2Cx CR1 Configuration ------------------------*/
//  277     /* Get the I2Cx CR1 value */
//  278     tmpreg = I2Cx->CR1;
        LDRH     R0,[R4, #+0]
        MOV      R9,R0
//  279     /* Clear ACK, SMBTYPE and  SMBUS bits */
//  280     tmpreg &= CR1_CLEAR_Mask;
        MOVW     R0,#+64501
        ANDS     R9,R0,R9
//  281     /* Configure I2Cx: mode and acknowledgement */
//  282     /* Set SMBTYPE and SMBUS bits according to I2C_Mode value */
//  283     /* Set ACK bit according to I2C_Ack value */
//  284     tmpreg |= (uint16_t)((uint32_t)I2C_InitStruct->I2C_Mode | I2C_InitStruct->I2C_Ack);
        LDRH     R0,[R5, #+4]
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        ORRS     R9,R0,R9
//  285     /* Write to I2Cx CR1 */
//  286     I2Cx->CR1 = tmpreg;
        STRH     R9,[R4, #+0]
//  287 
//  288     /*---------------------------- I2Cx OAR1 Configuration -----------------------*/
//  289     /* Set I2Cx Own Address1 and acknowledged address */
//  290     I2Cx->OAR1 = (I2C_InitStruct->I2C_AcknowledgedAddress | I2C_InitStruct->I2C_OwnAddress1);
        LDRH     R0,[R5, #+12]
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+8]
//  291 }
        ADD      SP,SP,#+20
          CFI CFA R13+28
        POP      {R4-R9,PC}       ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x186a1
//  292 
//  293 /**
//  294   * @brief  Fills each I2C_InitStruct member with its default value.
//  295   * @param  I2C_InitStruct: pointer to an I2C_InitTypeDef structure which will be initialized.
//  296   * @retval None
//  297   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function I2C_StructInit
          CFI NoCalls
        THUMB
//  298 void I2C_StructInit(I2C_InitTypeDef *I2C_InitStruct)
//  299 {
//  300     /*---------------- Reset I2C init structure parameters values ----------------*/
//  301     /* initialize the I2C_ClockSpeed member */
//  302     I2C_InitStruct->I2C_ClockSpeed = 5000;
I2C_StructInit:
        MOVW     R1,#+5000
        STR      R1,[R0, #+0]
//  303     /* Initialize the I2C_Mode member */
//  304     I2C_InitStruct->I2C_Mode = I2C_Mode_I2C;
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  305     /* Initialize the I2C_DutyCycle member */
//  306     I2C_InitStruct->I2C_DutyCycle = I2C_DutyCycle_2;
        MOVW     R1,#+49151
        STRH     R1,[R0, #+6]
//  307     /* Initialize the I2C_OwnAddress1 member */
//  308     I2C_InitStruct->I2C_OwnAddress1 = 0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
//  309     /* Initialize the I2C_Ack member */
//  310     I2C_InitStruct->I2C_Ack = I2C_Ack_Disable;
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
//  311     /* Initialize the I2C_AcknowledgedAddress member */
//  312     I2C_InitStruct->I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
        MOV      R1,#+16384
        STRH     R1,[R0, #+12]
//  313 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  314 
//  315 /**
//  316   * @brief  Enables or disables the specified I2C peripheral.
//  317   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  318   * @param  NewState: new state of the I2Cx peripheral.
//  319   *   This parameter can be: ENABLE or DISABLE.
//  320   * @retval None
//  321   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function I2C_Cmd
          CFI NoCalls
        THUMB
//  322 void I2C_Cmd(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  323 {
//  324     /* Check the parameters */
//  325     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  326     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  327     if (NewState != DISABLE)
I2C_Cmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_Cmd_0
//  328     {
//  329         /* Enable the selected I2C peripheral */
//  330         I2Cx->CR1 |= CR1_PE_Set;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x1
        STRH     R2,[R0, #+0]
        B.N      ??I2C_Cmd_1
//  331     }
//  332     else
//  333     {
//  334         /* Disable the selected I2C peripheral */
//  335         I2Cx->CR1 &= CR1_PE_Reset;
??I2C_Cmd_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65534
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  336     }
//  337 }
??I2C_Cmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  338 
//  339 /**
//  340   * @brief  Enables or disables the specified I2C DMA requests.
//  341   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  342   * @param  NewState: new state of the I2C DMA transfer.
//  343   *   This parameter can be: ENABLE or DISABLE.
//  344   * @retval None
//  345   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function I2C_DMACmd
          CFI NoCalls
        THUMB
//  346 void I2C_DMACmd(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  347 {
//  348     /* Check the parameters */
//  349     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  350     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  351     if (NewState != DISABLE)
I2C_DMACmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_DMACmd_0
//  352     {
//  353         /* Enable the selected I2C DMA requests */
//  354         I2Cx->CR2 |= CR2_DMAEN_Set;
        LDRH     R2,[R0, #+4]
        ORRS     R2,R2,#0x800
        STRH     R2,[R0, #+4]
        B.N      ??I2C_DMACmd_1
//  355     }
//  356     else
//  357     {
//  358         /* Disable the selected I2C DMA requests */
//  359         I2Cx->CR2 &= CR2_DMAEN_Reset;
??I2C_DMACmd_0:
        LDRH     R2,[R0, #+4]
        MOVW     R3,#+63487
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+4]
//  360     }
//  361 }
??I2C_DMACmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  362 
//  363 /**
//  364   * @brief  Specifies if the next DMA transfer will be the last one.
//  365   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  366   * @param  NewState: new state of the I2C DMA last transfer.
//  367   *   This parameter can be: ENABLE or DISABLE.
//  368   * @retval None
//  369   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function I2C_DMALastTransferCmd
          CFI NoCalls
        THUMB
//  370 void I2C_DMALastTransferCmd(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  371 {
//  372     /* Check the parameters */
//  373     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  374     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  375     if (NewState != DISABLE)
I2C_DMALastTransferCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_DMALastTransferCmd_0
//  376     {
//  377         /* Next DMA transfer is the last transfer */
//  378         I2Cx->CR2 |= CR2_LAST_Set;
        LDRH     R2,[R0, #+4]
        ORRS     R2,R2,#0x1000
        STRH     R2,[R0, #+4]
        B.N      ??I2C_DMALastTransferCmd_1
//  379     }
//  380     else
//  381     {
//  382         /* Next DMA transfer is not the last transfer */
//  383         I2Cx->CR2 &= CR2_LAST_Reset;
??I2C_DMALastTransferCmd_0:
        LDRH     R2,[R0, #+4]
        MOVW     R3,#+61439
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+4]
//  384     }
//  385 }
??I2C_DMALastTransferCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  386 
//  387 /**
//  388   * @brief  Generates I2Cx communication START condition.
//  389   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  390   * @param  NewState: new state of the I2C START condition generation.
//  391   *   This parameter can be: ENABLE or DISABLE.
//  392   * @retval None.
//  393   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function I2C_GenerateSTART
          CFI NoCalls
        THUMB
//  394 void I2C_GenerateSTART(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  395 {
//  396     /* Check the parameters */
//  397     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  398     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  399     if (NewState != DISABLE)
I2C_GenerateSTART:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_GenerateSTART_0
//  400     {
//  401         /* Generate a START condition */
//  402         I2Cx->CR1 |= CR1_START_Set;
        LDRH     R2,[R0, #+0]
        MOV      R3,#+256
        ORRS     R2,R3,R2
        STRH     R2,[R0, #+0]
        B.N      ??I2C_GenerateSTART_1
//  403     }
//  404     else
//  405     {
//  406         /* Disable the START condition generation */
//  407         I2Cx->CR1 &= CR1_START_Reset;
??I2C_GenerateSTART_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65279
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  408     }
//  409 }
??I2C_GenerateSTART_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  410 
//  411 /**
//  412   * @brief  Generates I2Cx communication STOP condition.
//  413   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  414   * @param  NewState: new state of the I2C STOP condition generation.
//  415   *   This parameter can be: ENABLE or DISABLE.
//  416   * @retval None.
//  417   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function I2C_GenerateSTOP
          CFI NoCalls
        THUMB
//  418 void I2C_GenerateSTOP(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  419 {
//  420     /* Check the parameters */
//  421     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  422     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  423     if (NewState != DISABLE)
I2C_GenerateSTOP:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_GenerateSTOP_0
//  424     {
//  425         /* Generate a STOP condition */
//  426         I2Cx->CR1 |= CR1_STOP_Set;
        LDRH     R2,[R0, #+0]
        MOV      R3,#+512
        ORRS     R2,R3,R2
        STRH     R2,[R0, #+0]
        B.N      ??I2C_GenerateSTOP_1
//  427     }
//  428     else
//  429     {
//  430         /* Disable the STOP condition generation */
//  431         I2Cx->CR1 &= CR1_STOP_Reset;
??I2C_GenerateSTOP_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65023
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  432     }
//  433 }
??I2C_GenerateSTOP_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  434 
//  435 /**
//  436   * @brief  Enables or disables the specified I2C acknowledge feature.
//  437   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  438   * @param  NewState: new state of the I2C Acknowledgement.
//  439   *   This parameter can be: ENABLE or DISABLE.
//  440   * @retval None.
//  441   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function I2C_AcknowledgeConfig
          CFI NoCalls
        THUMB
//  442 void I2C_AcknowledgeConfig(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  443 {
//  444     /* Check the parameters */
//  445     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  446     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  447     if (NewState != DISABLE)
I2C_AcknowledgeConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_AcknowledgeConfig_0
//  448     {
//  449         /* Enable the acknowledgement */
//  450         I2Cx->CR1 |= CR1_ACK_Set;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x400
        STRH     R2,[R0, #+0]
        B.N      ??I2C_AcknowledgeConfig_1
//  451     }
//  452     else
//  453     {
//  454         /* Disable the acknowledgement */
//  455         I2Cx->CR1 &= CR1_ACK_Reset;
??I2C_AcknowledgeConfig_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+64511
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  456     }
//  457 }
??I2C_AcknowledgeConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  458 
//  459 /**
//  460   * @brief  Configures the specified I2C own address2.
//  461   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  462   * @param  Address: specifies the 7bit I2C own address2.
//  463   * @retval None.
//  464   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function I2C_OwnAddress2Config
          CFI NoCalls
        THUMB
//  465 void I2C_OwnAddress2Config(I2C_TypeDef *I2Cx, uint8_t Address)
//  466 {
//  467     uint16_t tmpreg = 0;
I2C_OwnAddress2Config:
        MOVS     R2,#+0
//  468 
//  469     /* Check the parameters */
//  470     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  471 
//  472     /* Get the old register value */
//  473     tmpreg = I2Cx->OAR2;
        LDRH     R3,[R0, #+12]
        MOVS     R2,R3
//  474 
//  475     /* Reset I2Cx Own address2 bit [7:1] */
//  476     tmpreg &= OAR2_ADD2_Reset;
        MOVW     R3,#+65281
        ANDS     R2,R3,R2
//  477 
//  478     /* Set I2Cx Own address2 */
//  479     tmpreg |= (uint16_t)((uint16_t)Address & (uint16_t)0x00FE);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R3,R1,#0xFE
        ORRS     R2,R3,R2
//  480 
//  481     /* Store the new register value */
//  482     I2Cx->OAR2 = tmpreg;
        STRH     R2,[R0, #+12]
//  483 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  484 
//  485 /**
//  486   * @brief  Enables or disables the specified I2C dual addressing mode.
//  487   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  488   * @param  NewState: new state of the I2C dual addressing mode.
//  489   *   This parameter can be: ENABLE or DISABLE.
//  490   * @retval None
//  491   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function I2C_DualAddressCmd
          CFI NoCalls
        THUMB
//  492 void I2C_DualAddressCmd(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  493 {
//  494     /* Check the parameters */
//  495     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  496     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  497     if (NewState != DISABLE)
I2C_DualAddressCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_DualAddressCmd_0
//  498     {
//  499         /* Enable dual addressing mode */
//  500         I2Cx->OAR2 |= OAR2_ENDUAL_Set;
        LDRH     R2,[R0, #+12]
        ORRS     R2,R2,#0x1
        STRH     R2,[R0, #+12]
        B.N      ??I2C_DualAddressCmd_1
//  501     }
//  502     else
//  503     {
//  504         /* Disable dual addressing mode */
//  505         I2Cx->OAR2 &= OAR2_ENDUAL_Reset;
??I2C_DualAddressCmd_0:
        LDRH     R2,[R0, #+12]
        MOVW     R3,#+65534
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+12]
//  506     }
//  507 }
??I2C_DualAddressCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  508 
//  509 /**
//  510   * @brief  Enables or disables the specified I2C general call feature.
//  511   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  512   * @param  NewState: new state of the I2C General call.
//  513   *   This parameter can be: ENABLE or DISABLE.
//  514   * @retval None
//  515   */
//  516 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function I2C_GeneralCallCmd
          CFI NoCalls
        THUMB
//  517 void I2C_GeneralCallCmd(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  518 {
//  519     /* Check the parameters */
//  520     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  521     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  522     if (NewState != DISABLE)
I2C_GeneralCallCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_GeneralCallCmd_0
//  523     {
//  524         /* Enable generall call */
//  525         I2Cx->CR1 |= CR1_ENGC_Set;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x40
        STRH     R2,[R0, #+0]
        B.N      ??I2C_GeneralCallCmd_1
//  526     }
//  527     else
//  528     {
//  529         /* Disable generall call */
//  530         I2Cx->CR1 &= CR1_ENGC_Reset;
??I2C_GeneralCallCmd_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65471
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  531     }
//  532 }
??I2C_GeneralCallCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  533 
//  534 /**
//  535   * @brief  Enables or disables the specified I2C interrupts.
//  536   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  537   * @param  I2C_IT: specifies the I2C interrupts sources to be enabled or disabled.
//  538   *   This parameter can be any combination of the following values:
//  539   *     @arg I2C_IT_BUF: Buffer interrupt mask
//  540   *     @arg I2C_IT_EVT: Event interrupt mask
//  541   *     @arg I2C_IT_ERR: Error interrupt mask
//  542   * @param  NewState: new state of the specified I2C interrupts.
//  543   *   This parameter can be: ENABLE or DISABLE.
//  544   * @retval None
//  545   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function I2C_ITConfig
          CFI NoCalls
        THUMB
//  546 void I2C_ITConfig(I2C_TypeDef *I2Cx, uint16_t I2C_IT, FunctionalState NewState)
//  547 {
//  548     /* Check the parameters */
//  549     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  550     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  551     assert_param(IS_I2C_CONFIG_IT(I2C_IT));
//  552 
//  553     if (NewState != DISABLE)
I2C_ITConfig:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??I2C_ITConfig_0
//  554     {
//  555         /* Enable the selected I2C interrupts */
//  556         I2Cx->CR2 |= I2C_IT;
        LDRH     R3,[R0, #+4]
        ORRS     R3,R1,R3
        STRH     R3,[R0, #+4]
        B.N      ??I2C_ITConfig_1
//  557     }
//  558     else
//  559     {
//  560         /* Disable the selected I2C interrupts */
//  561         I2Cx->CR2 &= (uint16_t)~I2C_IT;
??I2C_ITConfig_0:
        LDRH     R3,[R0, #+4]
        BICS     R3,R3,R1
        STRH     R3,[R0, #+4]
//  562     }
//  563 }
??I2C_ITConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  564 
//  565 /**
//  566   * @brief  Sends a data byte through the I2Cx peripheral.
//  567   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  568   * @param  Data: Byte to be transmitted..
//  569   * @retval None
//  570   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function I2C_SendData
          CFI NoCalls
        THUMB
//  571 void I2C_SendData(I2C_TypeDef *I2Cx, uint8_t Data)
//  572 {
//  573     /* Check the parameters */
//  574     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  575     /* Write in the DR register the data to be sent */
//  576     I2Cx->DR = Data;
I2C_SendData:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STRH     R1,[R0, #+16]
//  577 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  578 
//  579 /**
//  580   * @brief  Returns the most recent received data by the I2Cx peripheral.
//  581   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  582   * @retval The value of the received data.
//  583   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function I2C_ReceiveData
          CFI NoCalls
        THUMB
//  584 uint8_t I2C_ReceiveData(I2C_TypeDef *I2Cx)
//  585 {
//  586     /* Check the parameters */
//  587     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  588     /* Return the data in the DR register */
//  589     return (uint8_t)I2Cx->DR;
I2C_ReceiveData:
        LDRH     R0,[R0, #+16]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  590 }
//  591 
//  592 /**
//  593   * @brief  Transmits the address byte to select the slave device.
//  594   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  595   * @param  Address: specifies the slave address which will be transmitted
//  596   * @param  I2C_Direction: specifies whether the I2C device will be a
//  597   *   Transmitter or a Receiver. This parameter can be one of the following values
//  598   *     @arg I2C_Direction_Transmitter: Transmitter mode
//  599   *     @arg I2C_Direction_Receiver: Receiver mode
//  600   * @retval None.
//  601   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function I2C_Send7bitAddress
          CFI NoCalls
        THUMB
//  602 void I2C_Send7bitAddress(I2C_TypeDef *I2Cx, uint8_t Address, uint8_t I2C_Direction)
//  603 {
//  604     /* Check the parameters */
//  605     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  606     assert_param(IS_I2C_DIRECTION(I2C_Direction));
//  607     /* Test on the direction to set/reset the read/write bit */
//  608     if (I2C_Direction != I2C_Direction_Transmitter)
I2C_Send7bitAddress:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??I2C_Send7bitAddress_0
//  609     {
//  610         /* Set the address bit0 for read */
//  611         Address |= OAR1_ADD0_Set;
        ORRS     R1,R1,#0x1
        B.N      ??I2C_Send7bitAddress_1
//  612     }
//  613     else
//  614     {
//  615         /* Reset the address bit0 for write */
//  616         Address &= OAR1_ADD0_Reset;
??I2C_Send7bitAddress_0:
        ANDS     R1,R1,#0xFE
//  617     }
//  618     /* Send the address */
//  619     I2Cx->DR = Address;
??I2C_Send7bitAddress_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STRH     R1,[R0, #+16]
//  620 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  621 
//  622 /**
//  623   * @brief  Reads the specified I2C register and returns its value.
//  624   * @param  I2C_Register: specifies the register to read.
//  625   *   This parameter can be one of the following values:
//  626   *     @arg I2C_Register_CR1:  CR1 register.
//  627   *     @arg I2C_Register_CR2:   CR2 register.
//  628   *     @arg I2C_Register_OAR1:  OAR1 register.
//  629   *     @arg I2C_Register_OAR2:  OAR2 register.
//  630   *     @arg I2C_Register_DR:    DR register.
//  631   *     @arg I2C_Register_SR1:   SR1 register.
//  632   *     @arg I2C_Register_SR2:   SR2 register.
//  633   *     @arg I2C_Register_CCR:   CCR register.
//  634   *     @arg I2C_Register_TRISE: TRISE register.
//  635   * @retval The value of the read register.
//  636   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function I2C_ReadRegister
          CFI NoCalls
        THUMB
//  637 uint16_t I2C_ReadRegister(I2C_TypeDef *I2Cx, uint8_t I2C_Register)
//  638 {
I2C_ReadRegister:
        SUB      SP,SP,#+4
          CFI CFA R13+4
        MOVS     R2,R0
//  639     __IO uint32_t tmp = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  640 
//  641     /* Check the parameters */
//  642     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  643     assert_param(IS_I2C_REGISTER(I2C_Register));
//  644 
//  645     tmp = (uint32_t) I2Cx;
        STR      R2,[SP, #+0]
//  646     tmp += I2C_Register;
        LDR      R0,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R1,R0
        STR      R0,[SP, #+0]
//  647 
//  648     /* Return the selected register value */
//  649     return (*(__IO uint16_t *) tmp);
        LDR      R0,[SP, #+0]
        LDRH     R0,[R0, #+0]
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  650 }
//  651 
//  652 /**
//  653   * @brief  Enables or disables the specified I2C software reset.
//  654   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  655   * @param  NewState: new state of the I2C software reset.
//  656   *   This parameter can be: ENABLE or DISABLE.
//  657   * @retval None
//  658   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function I2C_SoftwareResetCmd
          CFI NoCalls
        THUMB
//  659 void I2C_SoftwareResetCmd(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  660 {
//  661     /* Check the parameters */
//  662     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  663     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  664     if (NewState != DISABLE)
I2C_SoftwareResetCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_SoftwareResetCmd_0
//  665     {
//  666         /* Peripheral under reset */
//  667         I2Cx->CR1 |= CR1_SWRST_Set;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x8000
        STRH     R2,[R0, #+0]
        B.N      ??I2C_SoftwareResetCmd_1
//  668     }
//  669     else
//  670     {
//  671         /* Peripheral not under reset */
//  672         I2Cx->CR1 &= CR1_SWRST_Reset;
??I2C_SoftwareResetCmd_0:
        LDRH     R2,[R0, #+0]
        LSLS     R2,R2,#+17       ;; ZeroExtS R2,R2,#+17,#+17
        LSRS     R2,R2,#+17
        STRH     R2,[R0, #+0]
//  673     }
//  674 }
??I2C_SoftwareResetCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  675 
//  676 /**
//  677   * @brief  Selects the specified I2C NACK position in master receiver mode.
//  678   *         This function is useful in I2C Master Receiver mode when the number
//  679   *         of data to be received is equal to 2. In this case, this function
//  680   *         should be called (with parameter I2C_NACKPosition_Next) before data
//  681   *         reception starts,as described in the 2-byte reception procedure
//  682   *         recommended in Reference Manual in Section: Master receiver.
//  683   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  684   * @param  I2C_NACKPosition: specifies the NACK position.
//  685   *   This parameter can be one of the following values:
//  686   *     @arg I2C_NACKPosition_Next: indicates that the next byte will be the last
//  687   *          received byte.
//  688   *     @arg I2C_NACKPosition_Current: indicates that current byte is the last
//  689   *          received byte.
//  690   *
//  691   * @note    This function configures the same bit (POS) as I2C_PECPositionConfig()
//  692   *          but is intended to be used in I2C mode while I2C_PECPositionConfig()
//  693   *          is intended to used in SMBUS mode.
//  694   *
//  695   * @retval None
//  696   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function I2C_NACKPositionConfig
          CFI NoCalls
        THUMB
//  697 void I2C_NACKPositionConfig(I2C_TypeDef *I2Cx, uint16_t I2C_NACKPosition)
//  698 {
//  699     /* Check the parameters */
//  700     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  701     assert_param(IS_I2C_NACK_POSITION(I2C_NACKPosition));
//  702 
//  703     /* Check the input parameter */
//  704     if (I2C_NACKPosition == I2C_NACKPosition_Next)
I2C_NACKPositionConfig:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+2048
        BNE.N    ??I2C_NACKPositionConfig_0
//  705     {
//  706         /* Next byte in shift register is the last received byte */
//  707         I2Cx->CR1 |= I2C_NACKPosition_Next;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x800
        STRH     R2,[R0, #+0]
        B.N      ??I2C_NACKPositionConfig_1
//  708     }
//  709     else
//  710     {
//  711         /* Current byte in shift register is the last received byte */
//  712         I2Cx->CR1 &= I2C_NACKPosition_Current;
??I2C_NACKPositionConfig_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+63487
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  713     }
//  714 }
??I2C_NACKPositionConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  715 
//  716 /**
//  717   * @brief  Drives the SMBusAlert pin high or low for the specified I2C.
//  718   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  719   * @param  I2C_SMBusAlert: specifies SMBAlert pin level.
//  720   *   This parameter can be one of the following values:
//  721   *     @arg I2C_SMBusAlert_Low: SMBAlert pin driven low
//  722   *     @arg I2C_SMBusAlert_High: SMBAlert pin driven high
//  723   * @retval None
//  724   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function I2C_SMBusAlertConfig
          CFI NoCalls
        THUMB
//  725 void I2C_SMBusAlertConfig(I2C_TypeDef *I2Cx, uint16_t I2C_SMBusAlert)
//  726 {
//  727     /* Check the parameters */
//  728     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  729     assert_param(IS_I2C_SMBUS_ALERT(I2C_SMBusAlert));
//  730     if (I2C_SMBusAlert == I2C_SMBusAlert_Low)
I2C_SMBusAlertConfig:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+8192
        BNE.N    ??I2C_SMBusAlertConfig_0
//  731     {
//  732         /* Drive the SMBusAlert pin Low */
//  733         I2Cx->CR1 |= I2C_SMBusAlert_Low;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x2000
        STRH     R2,[R0, #+0]
        B.N      ??I2C_SMBusAlertConfig_1
//  734     }
//  735     else
//  736     {
//  737         /* Drive the SMBusAlert pin High  */
//  738         I2Cx->CR1 &= I2C_SMBusAlert_High;
??I2C_SMBusAlertConfig_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+57343
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  739     }
//  740 }
??I2C_SMBusAlertConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
//  741 
//  742 /**
//  743   * @brief  Enables or disables the specified I2C PEC transfer.
//  744   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  745   * @param  NewState: new state of the I2C PEC transmission.
//  746   *   This parameter can be: ENABLE or DISABLE.
//  747   * @retval None
//  748   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function I2C_TransmitPEC
          CFI NoCalls
        THUMB
//  749 void I2C_TransmitPEC(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  750 {
//  751     /* Check the parameters */
//  752     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  753     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  754     if (NewState != DISABLE)
I2C_TransmitPEC:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_TransmitPEC_0
//  755     {
//  756         /* Enable the selected I2C PEC transmission */
//  757         I2Cx->CR1 |= CR1_PEC_Set;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x1000
        STRH     R2,[R0, #+0]
        B.N      ??I2C_TransmitPEC_1
//  758     }
//  759     else
//  760     {
//  761         /* Disable the selected I2C PEC transmission */
//  762         I2Cx->CR1 &= CR1_PEC_Reset;
??I2C_TransmitPEC_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+61439
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  763     }
//  764 }
??I2C_TransmitPEC_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  765 
//  766 /**
//  767   * @brief  Selects the specified I2C PEC position.
//  768   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  769   * @param  I2C_PECPosition: specifies the PEC position.
//  770   *   This parameter can be one of the following values:
//  771   *     @arg I2C_PECPosition_Next: indicates that the next byte is PEC
//  772   *     @arg I2C_PECPosition_Current: indicates that current byte is PEC
//  773   *
//  774   * @note    This function configures the same bit (POS) as I2C_NACKPositionConfig()
//  775   *          but is intended to be used in SMBUS mode while I2C_NACKPositionConfig()
//  776   *          is intended to used in I2C mode.
//  777   *
//  778   * @retval None
//  779   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function I2C_PECPositionConfig
          CFI NoCalls
        THUMB
//  780 void I2C_PECPositionConfig(I2C_TypeDef *I2Cx, uint16_t I2C_PECPosition)
//  781 {
//  782     /* Check the parameters */
//  783     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  784     assert_param(IS_I2C_PEC_POSITION(I2C_PECPosition));
//  785     if (I2C_PECPosition == I2C_PECPosition_Next)
I2C_PECPositionConfig:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+2048
        BNE.N    ??I2C_PECPositionConfig_0
//  786     {
//  787         /* Next byte in shift register is PEC */
//  788         I2Cx->CR1 |= I2C_PECPosition_Next;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x800
        STRH     R2,[R0, #+0]
        B.N      ??I2C_PECPositionConfig_1
//  789     }
//  790     else
//  791     {
//  792         /* Current byte in shift register is PEC */
//  793         I2Cx->CR1 &= I2C_PECPosition_Current;
??I2C_PECPositionConfig_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+63487
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  794     }
//  795 }
??I2C_PECPositionConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  796 
//  797 /**
//  798   * @brief  Enables or disables the PEC value calculation of the transferred bytes.
//  799   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  800   * @param  NewState: new state of the I2Cx PEC value calculation.
//  801   *   This parameter can be: ENABLE or DISABLE.
//  802   * @retval None
//  803   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function I2C_CalculatePEC
          CFI NoCalls
        THUMB
//  804 void I2C_CalculatePEC(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  805 {
//  806     /* Check the parameters */
//  807     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  808     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  809     if (NewState != DISABLE)
I2C_CalculatePEC:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_CalculatePEC_0
//  810     {
//  811         /* Enable the selected I2C PEC calculation */
//  812         I2Cx->CR1 |= CR1_ENPEC_Set;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x20
        STRH     R2,[R0, #+0]
        B.N      ??I2C_CalculatePEC_1
//  813     }
//  814     else
//  815     {
//  816         /* Disable the selected I2C PEC calculation */
//  817         I2Cx->CR1 &= CR1_ENPEC_Reset;
??I2C_CalculatePEC_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65503
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  818     }
//  819 }
??I2C_CalculatePEC_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
//  820 
//  821 /**
//  822   * @brief  Returns the PEC value for the specified I2C.
//  823   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  824   * @retval The PEC value.
//  825   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function I2C_GetPEC
          CFI NoCalls
        THUMB
//  826 uint8_t I2C_GetPEC(I2C_TypeDef *I2Cx)
//  827 {
//  828     /* Check the parameters */
//  829     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  830     /* Return the selected I2C PEC value */
//  831     return ((I2Cx->SR2) >> 8);
I2C_GetPEC:
        LDRH     R0,[R0, #+24]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  832 }
//  833 
//  834 /**
//  835   * @brief  Enables or disables the specified I2C ARP.
//  836   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  837   * @param  NewState: new state of the I2Cx ARP.
//  838   *   This parameter can be: ENABLE or DISABLE.
//  839   * @retval None
//  840   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function I2C_ARPCmd
          CFI NoCalls
        THUMB
//  841 void I2C_ARPCmd(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  842 {
//  843     /* Check the parameters */
//  844     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  845     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  846     if (NewState != DISABLE)
I2C_ARPCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??I2C_ARPCmd_0
//  847     {
//  848         /* Enable the selected I2C ARP */
//  849         I2Cx->CR1 |= CR1_ENARP_Set;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x10
        STRH     R2,[R0, #+0]
        B.N      ??I2C_ARPCmd_1
//  850     }
//  851     else
//  852     {
//  853         /* Disable the selected I2C ARP */
//  854         I2Cx->CR1 &= CR1_ENARP_Reset;
??I2C_ARPCmd_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65519
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  855     }
//  856 }
??I2C_ARPCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  857 
//  858 /**
//  859   * @brief  Enables or disables the specified I2C Clock stretching.
//  860   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  861   * @param  NewState: new state of the I2Cx Clock stretching.
//  862   *   This parameter can be: ENABLE or DISABLE.
//  863   * @retval None
//  864   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function I2C_StretchClockCmd
          CFI NoCalls
        THUMB
//  865 void I2C_StretchClockCmd(I2C_TypeDef *I2Cx, FunctionalState NewState)
//  866 {
//  867     /* Check the parameters */
//  868     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  869     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  870     if (NewState == DISABLE)
I2C_StretchClockCmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??I2C_StretchClockCmd_0
//  871     {
//  872         /* Enable the selected I2C Clock stretching */
//  873         I2Cx->CR1 |= CR1_NOSTRETCH_Set;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x80
        STRH     R2,[R0, #+0]
        B.N      ??I2C_StretchClockCmd_1
//  874     }
//  875     else
//  876     {
//  877         /* Disable the selected I2C Clock stretching */
//  878         I2Cx->CR1 &= CR1_NOSTRETCH_Reset;
??I2C_StretchClockCmd_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65407
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  879     }
//  880 }
??I2C_StretchClockCmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
//  881 
//  882 /**
//  883   * @brief  Selects the specified I2C fast mode duty cycle.
//  884   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
//  885   * @param  I2C_DutyCycle: specifies the fast mode duty cycle.
//  886   *   This parameter can be one of the following values:
//  887   *     @arg I2C_DutyCycle_2: I2C fast mode Tlow/Thigh = 2
//  888   *     @arg I2C_DutyCycle_16_9: I2C fast mode Tlow/Thigh = 16/9
//  889   * @retval None
//  890   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function I2C_FastModeDutyCycleConfig
          CFI NoCalls
        THUMB
//  891 void I2C_FastModeDutyCycleConfig(I2C_TypeDef *I2Cx, uint16_t I2C_DutyCycle)
//  892 {
//  893     /* Check the parameters */
//  894     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
//  895     assert_param(IS_I2C_DUTY_CYCLE(I2C_DutyCycle));
//  896     if (I2C_DutyCycle != I2C_DutyCycle_16_9)
I2C_FastModeDutyCycleConfig:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+16384
        BEQ.N    ??I2C_FastModeDutyCycleConfig_0
//  897     {
//  898         /* I2C fast mode Tlow/Thigh=2 */
//  899         I2Cx->CCR &= I2C_DutyCycle_2;
        LDRH     R2,[R0, #+28]
        MOVW     R3,#+49151
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+28]
        B.N      ??I2C_FastModeDutyCycleConfig_1
//  900     }
//  901     else
//  902     {
//  903         /* I2C fast mode Tlow/Thigh=16/9 */
//  904         I2Cx->CCR |= I2C_DutyCycle_16_9;
??I2C_FastModeDutyCycleConfig_0:
        LDRH     R2,[R0, #+28]
        ORRS     R2,R2,#0x4000
        STRH     R2,[R0, #+28]
//  905     }
//  906 }
??I2C_FastModeDutyCycleConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  907 
//  908 
//  909 
//  910 /**
//  911  * @brief
//  912  ****************************************************************************************
//  913  *
//  914  *                         I2C State Monitoring Functions
//  915  *
//  916  ****************************************************************************************
//  917  * This I2C driver provides three different ways for I2C state monitoring
//  918  *  depending on the application requirements and constraints:
//  919  *
//  920  *
//  921  * 1) Basic state monitoring:
//  922  *    Using I2C_CheckEvent() function:
//  923  *    It compares the status registers (SR1 and SR2) content to a given event
//  924  *    (can be the combination of one or more flags).
//  925  *    It returns SUCCESS if the current status includes the given flags
//  926  *    and returns ERROR if one or more flags are missing in the current status.
//  927  *    - When to use:
//  928  *      - This function is suitable for most applications as well as for startup
//  929  *      activity since the events are fully described in the product reference manual
//  930  *      (RM0008).
//  931  *      - It is also suitable for users who need to define their own events.
//  932  *    - Limitations:
//  933  *      - If an error occurs (ie. error flags are set besides to the monitored flags),
//  934  *        the I2C_CheckEvent() function may return SUCCESS despite the communication
//  935  *        hold or corrupted real state.
//  936  *        In this case, it is advised to use error interrupts to monitor the error
//  937  *        events and handle them in the interrupt IRQ handler.
//  938  *
//  939  *        @note
//  940  *        For error management, it is advised to use the following functions:
//  941  *          - I2C_ITConfig() to configure and enable the error interrupts (I2C_IT_ERR).
//  942  *          - I2Cx_ER_IRQHandler() which is called when the error interrupt occurs.
//  943  *            Where x is the peripheral instance (I2C1, I2C2 ...)
//  944  *          - I2C_GetFlagStatus() or I2C_GetITStatus() to be called into I2Cx_ER_IRQHandler()
//  945  *            in order to determine which error occured.
//  946  *          - I2C_ClearFlag() or I2C_ClearITPendingBit() and/or I2C_SoftwareResetCmd()
//  947  *            and/or I2C_GenerateStop() in order to clear the error flag and source,
//  948  *            and return to correct communication status.
//  949  *
//  950  *
//  951  *  2) Advanced state monitoring:
//  952  *     Using the function I2C_GetLastEvent() which returns the image of both status
//  953  *     registers in a single word (uint32_t) (Status Register 2 value is shifted left
//  954  *     by 16 bits and concatenated to Status Register 1).
//  955  *     - When to use:
//  956  *       - This function is suitable for the same applications above but it allows to
//  957  *         overcome the mentioned limitation of I2C_GetFlagStatus() function.
//  958  *         The returned value could be compared to events already defined in the
//  959  *         library (stm32f10x_i2c.h) or to custom values defined by user.
//  960  *       - This function is suitable when multiple flags are monitored at the same time.
//  961  *       - At the opposite of I2C_CheckEvent() function, this function allows user to
//  962  *         choose when an event is accepted (when all events flags are set and no
//  963  *         other flags are set or just when the needed flags are set like
//  964  *         I2C_CheckEvent() function).
//  965  *     - Limitations:
//  966  *       - User may need to define his own events.
//  967  *       - Same remark concerning the error management is applicable for this
//  968  *         function if user decides to check only regular communication flags (and
//  969  *         ignores error flags).
//  970  *
//  971  *
//  972  *  3) Flag-based state monitoring:
//  973  *     Using the function I2C_GetFlagStatus() which simply returns the status of
//  974  *     one single flag (ie. I2C_FLAG_RXNE ...).
//  975  *     - When to use:
//  976  *        - This function could be used for specific applications or in debug phase.
//  977  *        - It is suitable when only one flag checking is needed (most I2C events
//  978  *          are monitored through multiple flags).
//  979  *     - Limitations:
//  980  *        - When calling this function, the Status register is accessed. Some flags are
//  981  *          cleared when the status register is accessed. So checking the status
//  982  *          of one Flag, may clear other ones.
//  983  *        - Function may need to be called twice or more in order to monitor one
//  984  *          single event.
//  985  *
//  986  *  For detailed description of Events, please refer to section I2C_Events in
//  987  *  stm32f10x_i2c.h file.
//  988  *
//  989  */
//  990 
//  991 /**
//  992  *
//  993  *  1) Basic state monitoring
//  994  *******************************************************************************
//  995  */
//  996 
//  997 /**
//  998   * @brief  Checks whether the last I2Cx Event is equal to the one passed
//  999   *   as parameter.
// 1000   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1001   * @param  I2C_EVENT: specifies the event to be checked.
// 1002   *   This parameter can be one of the following values:
// 1003   *     @arg I2C_EVENT_SLAVE_TRANSMITTER_ADDRESS_MATCHED           : EV1
// 1004   *     @arg I2C_EVENT_SLAVE_RECEIVER_ADDRESS_MATCHED              : EV1
// 1005   *     @arg I2C_EVENT_SLAVE_TRANSMITTER_SECONDADDRESS_MATCHED     : EV1
// 1006   *     @arg I2C_EVENT_SLAVE_RECEIVER_SECONDADDRESS_MATCHED        : EV1
// 1007   *     @arg I2C_EVENT_SLAVE_GENERALCALLADDRESS_MATCHED            : EV1
// 1008   *     @arg I2C_EVENT_SLAVE_BYTE_RECEIVED                         : EV2
// 1009   *     @arg (I2C_EVENT_SLAVE_BYTE_RECEIVED | I2C_FLAG_DUALF)      : EV2
// 1010   *     @arg (I2C_EVENT_SLAVE_BYTE_RECEIVED | I2C_FLAG_GENCALL)    : EV2
// 1011   *     @arg I2C_EVENT_SLAVE_BYTE_TRANSMITTED                      : EV3
// 1012   *     @arg (I2C_EVENT_SLAVE_BYTE_TRANSMITTED | I2C_FLAG_DUALF)   : EV3
// 1013   *     @arg (I2C_EVENT_SLAVE_BYTE_TRANSMITTED | I2C_FLAG_GENCALL) : EV3
// 1014   *     @arg I2C_EVENT_SLAVE_ACK_FAILURE                           : EV3_2
// 1015   *     @arg I2C_EVENT_SLAVE_STOP_DETECTED                         : EV4
// 1016   *     @arg I2C_EVENT_MASTER_MODE_SELECT                          : EV5
// 1017   *     @arg I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED            : EV6
// 1018   *     @arg I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED               : EV6
// 1019   *     @arg I2C_EVENT_MASTER_BYTE_RECEIVED                        : EV7
// 1020   *     @arg I2C_EVENT_MASTER_BYTE_TRANSMITTING                    : EV8
// 1021   *     @arg I2C_EVENT_MASTER_BYTE_TRANSMITTED                     : EV8_2
// 1022   *     @arg I2C_EVENT_MASTER_MODE_ADDRESS10                       : EV9
// 1023   *
// 1024   * @note: For detailed description of Events, please refer to section
// 1025   *    I2C_Events in stm32f10x_i2c.h file.
// 1026   *
// 1027   * @retval An ErrorStatus enumeration value:
// 1028   * - SUCCESS: Last event is equal to the I2C_EVENT
// 1029   * - ERROR: Last event is different from the I2C_EVENT
// 1030   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function I2C_CheckEvent
          CFI NoCalls
        THUMB
// 1031 ErrorStatus I2C_CheckEvent(I2C_TypeDef *I2Cx, uint32_t I2C_EVENT)
// 1032 {
I2C_CheckEvent:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOVS     R2,R0
// 1033     uint32_t lastevent = 0;
        MOVS     R3,#+0
// 1034     uint32_t flag1 = 0, flag2 = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
// 1035     ErrorStatus status = ERROR;
        MOVS     R0,#+0
// 1036 
// 1037     /* Check the parameters */
// 1038     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1039     assert_param(IS_I2C_EVENT(I2C_EVENT));
// 1040 
// 1041     /* Read the I2Cx status register */
// 1042     flag1 = I2Cx->SR1;
        LDRH     R6,[R2, #+20]
        MOVS     R4,R6
// 1043     flag2 = I2Cx->SR2;
        LDRH     R6,[R2, #+24]
        MOVS     R5,R6
// 1044     flag2 = flag2 << 16;
        LSLS     R5,R5,#+16
// 1045 
// 1046     /* Get the last event value from I2C status register */
// 1047     lastevent = (flag1 | flag2) & FLAG_Mask;
        ORRS     R6,R5,R4
        LSLS     R6,R6,#+8        ;; ZeroExtS R6,R6,#+8,#+8
        LSRS     R6,R6,#+8
        MOVS     R3,R6
// 1048 
// 1049     /* Check whether the last event contains the I2C_EVENT */
// 1050     if ((lastevent & I2C_EVENT) == I2C_EVENT)
        ANDS     R6,R1,R3
        CMP      R6,R1
        BNE.N    ??I2C_CheckEvent_0
// 1051     {
// 1052         /* SUCCESS: last event is equal to I2C_EVENT */
// 1053         status = SUCCESS;
        MOVS     R6,#+1
        MOVS     R0,R6
        B.N      ??I2C_CheckEvent_1
// 1054     }
// 1055     else
// 1056     {
// 1057         /* ERROR: last event is different from I2C_EVENT */
// 1058         status = ERROR;
??I2C_CheckEvent_0:
        MOVS     R6,#+0
        MOVS     R0,R6
// 1059     }
// 1060     /* Return status */
// 1061     return status;
??I2C_CheckEvent_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
// 1062 }
// 1063 
// 1064 /**
// 1065  *
// 1066  *  2) Advanced state monitoring
// 1067  *******************************************************************************
// 1068  */
// 1069 
// 1070 /**
// 1071   * @brief  Returns the last I2Cx Event.
// 1072   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1073   *
// 1074   * @note: For detailed description of Events, please refer to section
// 1075   *    I2C_Events in stm32f10x_i2c.h file.
// 1076   *
// 1077   * @retval The last event
// 1078   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function I2C_GetLastEvent
          CFI NoCalls
        THUMB
// 1079 uint32_t I2C_GetLastEvent(I2C_TypeDef *I2Cx)
// 1080 {
I2C_GetLastEvent:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R1,R0
// 1081     uint32_t lastevent = 0;
        MOVS     R0,#+0
// 1082     uint32_t flag1 = 0, flag2 = 0;
        MOVS     R2,#+0
        MOVS     R3,#+0
// 1083 
// 1084     /* Check the parameters */
// 1085     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1086 
// 1087     /* Read the I2Cx status register */
// 1088     flag1 = I2Cx->SR1;
        LDRH     R4,[R1, #+20]
        MOVS     R2,R4
// 1089     flag2 = I2Cx->SR2;
        LDRH     R4,[R1, #+24]
        MOVS     R3,R4
// 1090     flag2 = flag2 << 16;
        LSLS     R3,R3,#+16
// 1091 
// 1092     /* Get the last event value from I2C status register */
// 1093     lastevent = (flag1 | flag2) & FLAG_Mask;
        ORRS     R4,R3,R2
        LSLS     R4,R4,#+8        ;; ZeroExtS R4,R4,#+8,#+8
        LSRS     R4,R4,#+8
        MOVS     R0,R4
// 1094 
// 1095     /* Return status */
// 1096     return lastevent;
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 1097 }
// 1098 
// 1099 /**
// 1100  *
// 1101  *  3) Flag-based state monitoring
// 1102  *******************************************************************************
// 1103  */
// 1104 
// 1105 /**
// 1106   * @brief  Checks whether the specified I2C flag is set or not.
// 1107   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1108   * @param  I2C_FLAG: specifies the flag to check.
// 1109   *   This parameter can be one of the following values:
// 1110   *     @arg I2C_FLAG_DUALF: Dual flag (Slave mode)
// 1111   *     @arg I2C_FLAG_SMBHOST: SMBus host header (Slave mode)
// 1112   *     @arg I2C_FLAG_SMBDEFAULT: SMBus default header (Slave mode)
// 1113   *     @arg I2C_FLAG_GENCALL: General call header flag (Slave mode)
// 1114   *     @arg I2C_FLAG_TRA: Transmitter/Receiver flag
// 1115   *     @arg I2C_FLAG_BUSY: Bus busy flag
// 1116   *     @arg I2C_FLAG_MSL: Master/Slave flag
// 1117   *     @arg I2C_FLAG_SMBALERT: SMBus Alert flag
// 1118   *     @arg I2C_FLAG_TIMEOUT: Timeout or Tlow error flag
// 1119   *     @arg I2C_FLAG_PECERR: PEC error in reception flag
// 1120   *     @arg I2C_FLAG_OVR: Overrun/Underrun flag (Slave mode)
// 1121   *     @arg I2C_FLAG_AF: Acknowledge failure flag
// 1122   *     @arg I2C_FLAG_ARLO: Arbitration lost flag (Master mode)
// 1123   *     @arg I2C_FLAG_BERR: Bus error flag
// 1124   *     @arg I2C_FLAG_TXE: Data register empty flag (Transmitter)
// 1125   *     @arg I2C_FLAG_RXNE: Data register not empty (Receiver) flag
// 1126   *     @arg I2C_FLAG_STOPF: Stop detection flag (Slave mode)
// 1127   *     @arg I2C_FLAG_ADD10: 10-bit header sent flag (Master mode)
// 1128   *     @arg I2C_FLAG_BTF: Byte transfer finished flag
// 1129   *     @arg I2C_FLAG_ADDR: Address sent flag (Master mode) "ADSL"
// 1130   *   Address matched flag (Slave mode)"ENDA"
// 1131   *     @arg I2C_FLAG_SB: Start bit flag (Master mode)
// 1132   * @retval The new state of I2C_FLAG (SET or RESET).
// 1133   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function I2C_GetFlagStatus
          CFI NoCalls
        THUMB
// 1134 FlagStatus I2C_GetFlagStatus(I2C_TypeDef *I2Cx, uint32_t I2C_FLAG)
// 1135 {
I2C_GetFlagStatus:
        SUB      SP,SP,#+8
          CFI CFA R13+8
        MOVS     R2,R0
// 1136     FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
// 1137     __IO uint32_t i2creg = 0, i2cxbase = 0;
        MOVS     R3,#+0
        STR      R3,[SP, #+4]
        MOVS     R3,#+0
        STR      R3,[SP, #+0]
// 1138 
// 1139     /* Check the parameters */
// 1140     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1141     assert_param(IS_I2C_GET_FLAG(I2C_FLAG));
// 1142 
// 1143     /* Get the I2Cx peripheral base address */
// 1144     i2cxbase = (uint32_t)I2Cx;
        STR      R2,[SP, #+0]
// 1145 
// 1146     /* Read flag register index */
// 1147     i2creg = I2C_FLAG >> 28;
        LSRS     R3,R1,#+28
        STR      R3,[SP, #+4]
// 1148 
// 1149     /* Get bit[23:0] of the flag */
// 1150     I2C_FLAG &= FLAG_Mask;
        LSLS     R1,R1,#+8        ;; ZeroExtS R1,R1,#+8,#+8
        LSRS     R1,R1,#+8
// 1151 
// 1152     if(i2creg != 0)
        LDR      R3,[SP, #+4]
        CMP      R3,#+0
        BEQ.N    ??I2C_GetFlagStatus_0
// 1153     {
// 1154         /* Get the I2Cx SR1 register address */
// 1155         i2cxbase += 0x14;
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+20
        STR      R3,[SP, #+0]
        B.N      ??I2C_GetFlagStatus_1
// 1156     }
// 1157     else
// 1158     {
// 1159         /* Flag in I2Cx SR2 Register */
// 1160         I2C_FLAG = (uint32_t)(I2C_FLAG >> 16);
??I2C_GetFlagStatus_0:
        LSRS     R1,R1,#+16
// 1161         /* Get the I2Cx SR2 register address */
// 1162         i2cxbase += 0x18;
        LDR      R3,[SP, #+0]
        ADDS     R3,R3,#+24
        STR      R3,[SP, #+0]
// 1163     }
// 1164 
// 1165     if(((*(__IO uint32_t *)i2cxbase) & I2C_FLAG) != (uint32_t)RESET)
??I2C_GetFlagStatus_1:
        LDR      R3,[SP, #+0]
        LDR      R3,[R3, #+0]
        TST      R3,R1
        BEQ.N    ??I2C_GetFlagStatus_2
// 1166     {
// 1167         /* I2C_FLAG is set */
// 1168         bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??I2C_GetFlagStatus_3
// 1169     }
// 1170     else
// 1171     {
// 1172         /* I2C_FLAG is reset */
// 1173         bitstatus = RESET;
??I2C_GetFlagStatus_2:
        MOVS     R3,#+0
        MOVS     R0,R3
// 1174     }
// 1175 
// 1176     /* Return the I2C_FLAG status */
// 1177     return  bitstatus;
??I2C_GetFlagStatus_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+8
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
// 1178 }
// 1179 
// 1180 
// 1181 
// 1182 /**
// 1183   * @brief  Clears the I2Cx's pending flags.
// 1184   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1185   * @param  I2C_FLAG: specifies the flag to clear.
// 1186   *   This parameter can be any combination of the following values:
// 1187   *     @arg I2C_FLAG_SMBALERT: SMBus Alert flag
// 1188   *     @arg I2C_FLAG_TIMEOUT: Timeout or Tlow error flag
// 1189   *     @arg I2C_FLAG_PECERR: PEC error in reception flag
// 1190   *     @arg I2C_FLAG_OVR: Overrun/Underrun flag (Slave mode)
// 1191   *     @arg I2C_FLAG_AF: Acknowledge failure flag
// 1192   *     @arg I2C_FLAG_ARLO: Arbitration lost flag (Master mode)
// 1193   *     @arg I2C_FLAG_BERR: Bus error flag
// 1194   *
// 1195   * @note
// 1196   *   - STOPF (STOP detection) is cleared by software sequence: a read operation
// 1197   *     to I2C_SR1 register (I2C_GetFlagStatus()) followed by a write operation
// 1198   *     to I2C_CR1 register (I2C_Cmd() to re-enable the I2C peripheral).
// 1199   *   - ADD10 (10-bit header sent) is cleared by software sequence: a read
// 1200   *     operation to I2C_SR1 (I2C_GetFlagStatus()) followed by writing the
// 1201   *     second byte of the address in DR register.
// 1202   *   - BTF (Byte Transfer Finished) is cleared by software sequence: a read
// 1203   *     operation to I2C_SR1 register (I2C_GetFlagStatus()) followed by a
// 1204   *     read/write to I2C_DR register (I2C_SendData()).
// 1205   *   - ADDR (Address sent) is cleared by software sequence: a read operation to
// 1206   *     I2C_SR1 register (I2C_GetFlagStatus()) followed by a read operation to
// 1207   *     I2C_SR2 register ((void)(I2Cx->SR2)).
// 1208   *   - SB (Start Bit) is cleared software sequence: a read operation to I2C_SR1
// 1209   *     register (I2C_GetFlagStatus()) followed by a write operation to I2C_DR
// 1210   *     register  (I2C_SendData()).
// 1211   * @retval None
// 1212   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function I2C_ClearFlag
          CFI NoCalls
        THUMB
// 1213 void I2C_ClearFlag(I2C_TypeDef *I2Cx, uint32_t I2C_FLAG)
// 1214 {
// 1215     uint32_t flagpos = 0;
I2C_ClearFlag:
        MOVS     R2,#+0
// 1216     /* Check the parameters */
// 1217     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1218     assert_param(IS_I2C_CLEAR_FLAG(I2C_FLAG));
// 1219     /* Get the I2C flag position */
// 1220     flagpos = I2C_FLAG & FLAG_Mask;
        LSLS     R3,R1,#+8        ;; ZeroExtS R3,R1,#+8,#+8
        LSRS     R3,R3,#+8
        MOVS     R2,R3
// 1221     /* Clear the selected I2C flag */
// 1222     I2Cx->SR1 = (uint16_t)~flagpos;
        MVNS     R3,R2
        STRH     R3,[R0, #+20]
// 1223 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
// 1224 
// 1225 /**
// 1226   * @brief  Checks whether the specified I2C interrupt has occurred or not.
// 1227   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1228   * @param  I2C_IT: specifies the interrupt source to check.
// 1229   *   This parameter can be one of the following values:
// 1230   *     @arg I2C_IT_SMBALERT: SMBus Alert flag
// 1231   *     @arg I2C_IT_TIMEOUT: Timeout or Tlow error flag
// 1232   *     @arg I2C_IT_PECERR: PEC error in reception flag
// 1233   *     @arg I2C_IT_OVR: Overrun/Underrun flag (Slave mode)
// 1234   *     @arg I2C_IT_AF: Acknowledge failure flag
// 1235   *     @arg I2C_IT_ARLO: Arbitration lost flag (Master mode)
// 1236   *     @arg I2C_IT_BERR: Bus error flag
// 1237   *     @arg I2C_IT_TXE: Data register empty flag (Transmitter)
// 1238   *     @arg I2C_IT_RXNE: Data register not empty (Receiver) flag
// 1239   *     @arg I2C_IT_STOPF: Stop detection flag (Slave mode)
// 1240   *     @arg I2C_IT_ADD10: 10-bit header sent flag (Master mode)
// 1241   *     @arg I2C_IT_BTF: Byte transfer finished flag
// 1242   *     @arg I2C_IT_ADDR: Address sent flag (Master mode) "ADSL"
// 1243   *                       Address matched flag (Slave mode)"ENDAD"
// 1244   *     @arg I2C_IT_SB: Start bit flag (Master mode)
// 1245   * @retval The new state of I2C_IT (SET or RESET).
// 1246   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function I2C_GetITStatus
          CFI NoCalls
        THUMB
// 1247 ITStatus I2C_GetITStatus(I2C_TypeDef *I2Cx, uint32_t I2C_IT)
// 1248 {
I2C_GetITStatus:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R2,R0
// 1249     ITStatus bitstatus = RESET;
        MOVS     R0,#+0
// 1250     uint32_t enablestatus = 0;
        MOVS     R3,#+0
// 1251 
// 1252     /* Check the parameters */
// 1253     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1254     assert_param(IS_I2C_GET_IT(I2C_IT));
// 1255 
// 1256     /* Check if the interrupt source is enabled or not */
// 1257     enablestatus = (uint32_t)(((I2C_IT & ITEN_Mask) >> 16) & (I2Cx->CR2)) ;
        LDRH     R4,[R2, #+4]
        ANDS     R4,R4,R1, LSR #+16
        ANDS     R4,R4,#0x700
        MOVS     R3,R4
// 1258 
// 1259     /* Get bit[23:0] of the flag */
// 1260     I2C_IT &= FLAG_Mask;
        LSLS     R1,R1,#+8        ;; ZeroExtS R1,R1,#+8,#+8
        LSRS     R1,R1,#+8
// 1261 
// 1262     /* Check the status of the specified I2C flag */
// 1263     if (((I2Cx->SR1 & I2C_IT) != (uint32_t)RESET) && enablestatus)
        LDRH     R4,[R2, #+20]
        TST      R4,R1
        BEQ.N    ??I2C_GetITStatus_0
        CMP      R3,#+0
        BEQ.N    ??I2C_GetITStatus_0
// 1264     {
// 1265         /* I2C_IT is set */
// 1266         bitstatus = SET;
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??I2C_GetITStatus_1
// 1267     }
// 1268     else
// 1269     {
// 1270         /* I2C_IT is reset */
// 1271         bitstatus = RESET;
??I2C_GetITStatus_0:
        MOVS     R4,#+0
        MOVS     R0,R4
// 1272     }
// 1273     /* Return the I2C_IT status */
// 1274     return  bitstatus;
??I2C_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock31
// 1275 }
// 1276 
// 1277 /**
// 1278   * @brief  Clears the I2Cx抯 interrupt pending bits.
// 1279   * @param  I2Cx: where x can be 1 or 2 to select the I2C peripheral.
// 1280   * @param  I2C_IT: specifies the interrupt pending bit to clear.
// 1281   *   This parameter can be any combination of the following values:
// 1282   *     @arg I2C_IT_SMBALERT: SMBus Alert interrupt
// 1283   *     @arg I2C_IT_TIMEOUT: Timeout or Tlow error interrupt
// 1284   *     @arg I2C_IT_PECERR: PEC error in reception  interrupt
// 1285   *     @arg I2C_IT_OVR: Overrun/Underrun interrupt (Slave mode)
// 1286   *     @arg I2C_IT_AF: Acknowledge failure interrupt
// 1287   *     @arg I2C_IT_ARLO: Arbitration lost interrupt (Master mode)
// 1288   *     @arg I2C_IT_BERR: Bus error interrupt
// 1289   *
// 1290   * @note
// 1291   *   - STOPF (STOP detection) is cleared by software sequence: a read operation
// 1292   *     to I2C_SR1 register (I2C_GetITStatus()) followed by a write operation to
// 1293   *     I2C_CR1 register (I2C_Cmd() to re-enable the I2C peripheral).
// 1294   *   - ADD10 (10-bit header sent) is cleared by software sequence: a read
// 1295   *     operation to I2C_SR1 (I2C_GetITStatus()) followed by writing the second
// 1296   *     byte of the address in I2C_DR register.
// 1297   *   - BTF (Byte Transfer Finished) is cleared by software sequence: a read
// 1298   *     operation to I2C_SR1 register (I2C_GetITStatus()) followed by a
// 1299   *     read/write to I2C_DR register (I2C_SendData()).
// 1300   *   - ADDR (Address sent) is cleared by software sequence: a read operation to
// 1301   *     I2C_SR1 register (I2C_GetITStatus()) followed by a read operation to
// 1302   *     I2C_SR2 register ((void)(I2Cx->SR2)).
// 1303   *   - SB (Start Bit) is cleared by software sequence: a read operation to
// 1304   *     I2C_SR1 register (I2C_GetITStatus()) followed by a write operation to
// 1305   *     I2C_DR register (I2C_SendData()).
// 1306   * @retval None
// 1307   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function I2C_ClearITPendingBit
          CFI NoCalls
        THUMB
// 1308 void I2C_ClearITPendingBit(I2C_TypeDef *I2Cx, uint32_t I2C_IT)
// 1309 {
// 1310     uint32_t flagpos = 0;
I2C_ClearITPendingBit:
        MOVS     R2,#+0
// 1311     /* Check the parameters */
// 1312     assert_param(IS_I2C_ALL_PERIPH(I2Cx));
// 1313     assert_param(IS_I2C_CLEAR_IT(I2C_IT));
// 1314     /* Get the I2C flag position */
// 1315     flagpos = I2C_IT & FLAG_Mask;
        LSLS     R3,R1,#+8        ;; ZeroExtS R3,R1,#+8,#+8
        LSRS     R3,R3,#+8
        MOVS     R2,R3
// 1316     /* Clear the selected I2C flag */
// 1317     I2Cx->SR1 = (uint16_t)~flagpos;
        MVNS     R3,R2
        STRH     R3,[R0, #+20]
// 1318 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock32

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1319 
// 1320 /**
// 1321   * @}
// 1322   */
// 1323 
// 1324 /**
// 1325   * @}
// 1326   */
// 1327 
// 1328 /**
// 1329   * @}
// 1330   */
// 1331 
// 1332 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 1 184 bytes in section .text
// 
// 1 184 bytes of CODE memory
//
//Errors: none
//Warnings: none
