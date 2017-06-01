///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:47 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_cec.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_cec.c -D USE_STDPERIPH_DRIVER -D               /
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
//                    \Debug\List\stm32f10x_cec.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_cec

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd

        PUBLIC CEC_ClearFlag
        PUBLIC CEC_ClearITPendingBit
        PUBLIC CEC_Cmd
        PUBLIC CEC_DeInit
        PUBLIC CEC_EndOfMessageCmd
        PUBLIC CEC_GetFlagStatus
        PUBLIC CEC_GetITStatus
        PUBLIC CEC_ITConfig
        PUBLIC CEC_Init
        PUBLIC CEC_OwnAddressConfig
        PUBLIC CEC_ReceiveDataByte
        PUBLIC CEC_SendDataByte
        PUBLIC CEC_SetPrescaler
        PUBLIC CEC_StartOfMessage
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_cec.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_cec.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the CEC firmware functions.
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
//   23 #include "stm32f10x_cec.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup CEC
//   31   * @brief CEC driver modules
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup CEC_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 
//   44 /** @defgroup CEC_Private_Defines
//   45   * @{
//   46   */
//   47 
//   48 /* ------------ CEC registers bit address in the alias region ----------- */
//   49 #define CEC_OFFSET                (CEC_BASE - PERIPH_BASE)
//   50 
//   51 /* --- CFGR Register ---*/
//   52 
//   53 /* Alias word address of PE bit */
//   54 #define CFGR_OFFSET                 (CEC_OFFSET + 0x00)
//   55 #define PE_BitNumber                0x00
//   56 #define CFGR_PE_BB                  (PERIPH_BB_BASE + (CFGR_OFFSET * 32) + (PE_BitNumber * 4))
//   57 
//   58 /* Alias word address of IE bit */
//   59 #define IE_BitNumber                0x01
//   60 #define CFGR_IE_BB                  (PERIPH_BB_BASE + (CFGR_OFFSET * 32) + (IE_BitNumber * 4))
//   61 
//   62 /* --- CSR Register ---*/
//   63 
//   64 /* Alias word address of TSOM bit */
//   65 #define CSR_OFFSET                  (CEC_OFFSET + 0x10)
//   66 #define TSOM_BitNumber              0x00
//   67 #define CSR_TSOM_BB                 (PERIPH_BB_BASE + (CSR_OFFSET * 32) + (TSOM_BitNumber * 4))
//   68 
//   69 /* Alias word address of TEOM bit */
//   70 #define TEOM_BitNumber              0x01
//   71 #define CSR_TEOM_BB                 (PERIPH_BB_BASE + (CSR_OFFSET * 32) + (TEOM_BitNumber * 4))
//   72 
//   73 #define CFGR_CLEAR_Mask            (uint8_t)(0xF3)        /* CFGR register Mask */
//   74 #define FLAG_Mask                  ((uint32_t)0x00FFFFFF) /* CEC FLAG mask */
//   75 
//   76 /**
//   77   * @}
//   78   */
//   79 
//   80 
//   81 /** @defgroup CEC_Private_Macros
//   82   * @{
//   83   */
//   84 
//   85 /**
//   86   * @}
//   87   */
//   88 
//   89 
//   90 /** @defgroup CEC_Private_Variables
//   91   * @{
//   92   */
//   93 
//   94 /**
//   95   * @}
//   96   */
//   97 
//   98 
//   99 /** @defgroup CEC_Private_FunctionPrototypes
//  100   * @{
//  101   */
//  102 
//  103 /**
//  104   * @}
//  105   */
//  106 
//  107 
//  108 /** @defgroup CEC_Private_Functions
//  109   * @{
//  110   */
//  111 
//  112 /**
//  113   * @brief  Deinitializes the CEC peripheral registers to their default reset
//  114   *         values.
//  115   * @param  None
//  116   * @retval None
//  117   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function CEC_DeInit
        THUMB
//  118 void CEC_DeInit(void)
//  119 {
CEC_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  120     /* Enable CEC reset state */
//  121     RCC_APB1PeriphResetCmd(RCC_APB1Periph_CEC, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1073741824
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  122     /* Release CEC from reset state */
//  123     RCC_APB1PeriphResetCmd(RCC_APB1Periph_CEC, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+1073741824
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  124 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//  125 
//  126 
//  127 /**
//  128   * @brief  Initializes the CEC peripheral according to the specified
//  129   *         parameters in the CEC_InitStruct.
//  130   * @param  CEC_InitStruct: pointer to an CEC_InitTypeDef structure that
//  131   *         contains the configuration information for the specified
//  132   *         CEC peripheral.
//  133   * @retval None
//  134   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function CEC_Init
          CFI NoCalls
        THUMB
//  135 void CEC_Init(CEC_InitTypeDef *CEC_InitStruct)
//  136 {
//  137     uint16_t tmpreg = 0;
CEC_Init:
        MOVS     R1,#+0
//  138 
//  139     /* Check the parameters */
//  140     assert_param(IS_CEC_BIT_TIMING_ERROR_MODE(CEC_InitStruct->CEC_BitTimingMode));
//  141     assert_param(IS_CEC_BIT_PERIOD_ERROR_MODE(CEC_InitStruct->CEC_BitPeriodMode));
//  142 
//  143     /*---------------------------- CEC CFGR Configuration -----------------*/
//  144     /* Get the CEC CFGR value */
//  145     tmpreg = CEC->CFGR;
        LDR.N    R2,??DataTable12  ;; 0x40007800
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  146 
//  147     /* Clear BTEM and BPEM bits */
//  148     tmpreg &= CFGR_CLEAR_Mask;
        ANDS     R1,R1,#0xF3
//  149 
//  150     /* Configure CEC: Bit Timing Error and Bit Period Error */
//  151     tmpreg |= (uint16_t)(CEC_InitStruct->CEC_BitTimingMode | CEC_InitStruct->CEC_BitPeriodMode);
        LDRH     R2,[R0, #+0]
        LDRH     R3,[R0, #+2]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
//  152 
//  153     /* Write to CEC CFGR  register*/
//  154     CEC->CFGR = tmpreg;
        LDR.N    R2,??DataTable12  ;; 0x40007800
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R2, #+0]
//  155 
//  156 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  157 
//  158 /**
//  159   * @brief  Enables or disables the specified CEC peripheral.
//  160   * @param  NewState: new state of the CEC peripheral.
//  161   *     This parameter can be: ENABLE or DISABLE.
//  162   * @retval None
//  163   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function CEC_Cmd
          CFI NoCalls
        THUMB
//  164 void CEC_Cmd(FunctionalState NewState)
//  165 {
//  166     /* Check the parameters */
//  167     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  168 
//  169     *(__IO uint32_t *) CFGR_PE_BB = (uint32_t)NewState;
CEC_Cmd:
        LDR.N    R1,??DataTable12_1  ;; 0x420f0000
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  170 
//  171     if(NewState == DISABLE)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??CEC_Cmd_0
//  172     {
//  173         /* Wait until the PE bit is cleared by hardware (Idle Line detected) */
//  174         while((CEC->CFGR & CEC_CFGR_PE) != (uint32_t)RESET)
??CEC_Cmd_1:
        LDR.N    R1,??DataTable12  ;; 0x40007800
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BMI.N    ??CEC_Cmd_1
//  175         {
//  176         }
//  177     }
//  178 }
??CEC_Cmd_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  179 
//  180 /**
//  181   * @brief  Enables or disables the CEC interrupt.
//  182   * @param  NewState: new state of the CEC interrupt.
//  183   *   This parameter can be: ENABLE or DISABLE.
//  184   * @retval None
//  185   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function CEC_ITConfig
          CFI NoCalls
        THUMB
//  186 void CEC_ITConfig(FunctionalState NewState)
//  187 {
//  188     /* Check the parameters */
//  189     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  190 
//  191     *(__IO uint32_t *) CFGR_IE_BB = (uint32_t)NewState;
CEC_ITConfig:
        LDR.N    R1,??DataTable12_2  ;; 0x420f0004
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  192 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  193 
//  194 /**
//  195   * @brief  Defines the Own Address of the CEC device.
//  196   * @param  CEC_OwnAddress: The CEC own address
//  197   * @retval None
//  198   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function CEC_OwnAddressConfig
          CFI NoCalls
        THUMB
//  199 void CEC_OwnAddressConfig(uint8_t CEC_OwnAddress)
//  200 {
//  201     /* Check the parameters */
//  202     assert_param(IS_CEC_ADDRESS(CEC_OwnAddress));
//  203 
//  204     /* Set the CEC own address */
//  205     CEC->OAR = CEC_OwnAddress;
CEC_OwnAddressConfig:
        LDR.N    R1,??DataTable12_3  ;; 0x40007804
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  206 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  207 
//  208 /**
//  209   * @brief  Sets the CEC prescaler value.
//  210   * @param  CEC_Prescaler: CEC prescaler new value
//  211   * @retval None
//  212   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function CEC_SetPrescaler
          CFI NoCalls
        THUMB
//  213 void CEC_SetPrescaler(uint16_t CEC_Prescaler)
//  214 {
//  215     /* Check the parameters */
//  216     assert_param(IS_CEC_PRESCALER(CEC_Prescaler));
//  217 
//  218     /* Set the  Prescaler value*/
//  219     CEC->PRES = CEC_Prescaler;
CEC_SetPrescaler:
        LDR.N    R1,??DataTable12_4  ;; 0x40007808
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[R1, #+0]
//  220 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  221 
//  222 /**
//  223   * @brief  Transmits single data through the CEC peripheral.
//  224   * @param  Data: the data to transmit.
//  225   * @retval None
//  226   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function CEC_SendDataByte
          CFI NoCalls
        THUMB
//  227 void CEC_SendDataByte(uint8_t Data)
//  228 {
//  229     /* Transmit Data */
//  230     CEC->TXD = Data ;
CEC_SendDataByte:
        LDR.N    R1,??DataTable12_5  ;; 0x40007814
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  231 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  232 
//  233 
//  234 /**
//  235   * @brief  Returns the most recent received data by the CEC peripheral.
//  236   * @param  None
//  237   * @retval The received data.
//  238   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function CEC_ReceiveDataByte
          CFI NoCalls
        THUMB
//  239 uint8_t CEC_ReceiveDataByte(void)
//  240 {
//  241     /* Receive Data */
//  242     return (uint8_t)(CEC->RXD);
CEC_ReceiveDataByte:
        LDR.N    R0,??DataTable12_6  ;; 0x40007818
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  243 }
//  244 
//  245 /**
//  246   * @brief  Starts a new message.
//  247   * @param  None
//  248   * @retval None
//  249   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function CEC_StartOfMessage
          CFI NoCalls
        THUMB
//  250 void CEC_StartOfMessage(void)
//  251 {
//  252     /* Starts of new message */
//  253     *(__IO uint32_t *) CSR_TSOM_BB = (uint32_t)0x1;
CEC_StartOfMessage:
        LDR.N    R0,??DataTable12_7  ;; 0x420f0200
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  254 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  255 
//  256 /**
//  257   * @brief  Transmits message with or without an EOM bit.
//  258   * @param  NewState: new state of the CEC Tx End Of Message.
//  259   *     This parameter can be: ENABLE or DISABLE.
//  260   * @retval None
//  261   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function CEC_EndOfMessageCmd
          CFI NoCalls
        THUMB
//  262 void CEC_EndOfMessageCmd(FunctionalState NewState)
//  263 {
//  264     /* Check the parameters */
//  265     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  266 
//  267     /* The data byte will be transmitted with or without an EOM bit*/
//  268     *(__IO uint32_t *) CSR_TEOM_BB = (uint32_t)NewState;
CEC_EndOfMessageCmd:
        LDR.N    R1,??DataTable12_8  ;; 0x420f0204
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  269 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  270 
//  271 /**
//  272   * @brief  Gets the CEC flag status
//  273   * @param  CEC_FLAG: specifies the CEC flag to check.
//  274   *   This parameter can be one of the following values:
//  275   *     @arg CEC_FLAG_BTE: Bit Timing Error
//  276   *     @arg CEC_FLAG_BPE: Bit Period Error
//  277   *     @arg CEC_FLAG_RBTFE: Rx Block Transfer Finished Error
//  278   *     @arg CEC_FLAG_SBE: Start Bit Error
//  279   *     @arg CEC_FLAG_ACKE: Block Acknowledge Error
//  280   *     @arg CEC_FLAG_LINE: Line Error
//  281   *     @arg CEC_FLAG_TBTFE: Tx Block Transfer Finished Error
//  282   *     @arg CEC_FLAG_TEOM: Tx End Of Message
//  283   *     @arg CEC_FLAG_TERR: Tx Error
//  284   *     @arg CEC_FLAG_TBTRF: Tx Byte Transfer Request or Block Transfer Finished
//  285   *     @arg CEC_FLAG_RSOM: Rx Start Of Message
//  286   *     @arg CEC_FLAG_REOM: Rx End Of Message
//  287   *     @arg CEC_FLAG_RERR: Rx Error
//  288   *     @arg CEC_FLAG_RBTF: Rx Byte/Block Transfer Finished
//  289   * @retval The new state of CEC_FLAG (SET or RESET)
//  290   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function CEC_GetFlagStatus
          CFI NoCalls
        THUMB
//  291 FlagStatus CEC_GetFlagStatus(uint32_t CEC_FLAG)
//  292 {
CEC_GetFlagStatus:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R1,R0
//  293     FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
//  294     uint32_t cecreg = 0, cecbase = 0;
        MOVS     R2,#+0
        MOVS     R3,#+0
//  295 
//  296     /* Check the parameters */
//  297     assert_param(IS_CEC_GET_FLAG(CEC_FLAG));
//  298 
//  299     /* Get the CEC peripheral base address */
//  300     cecbase = (uint32_t)(CEC_BASE);
        LDR.N    R4,??DataTable12  ;; 0x40007800
        MOVS     R3,R4
//  301 
//  302     /* Read flag register index */
//  303     cecreg = CEC_FLAG >> 28;
        LSRS     R4,R1,#+28
        MOVS     R2,R4
//  304 
//  305     /* Get bit[23:0] of the flag */
//  306     CEC_FLAG &= FLAG_Mask;
        LSLS     R1,R1,#+8        ;; ZeroExtS R1,R1,#+8,#+8
        LSRS     R1,R1,#+8
//  307 
//  308     if(cecreg != 0)
        CMP      R2,#+0
        BEQ.N    ??CEC_GetFlagStatus_0
//  309     {
//  310         /* Flag in CEC ESR Register */
//  311         CEC_FLAG = (uint32_t)(CEC_FLAG >> 16);
        LSRS     R1,R1,#+16
//  312 
//  313         /* Get the CEC ESR register address */
//  314         cecbase += 0xC;
        ADDS     R3,R3,#+12
        B.N      ??CEC_GetFlagStatus_1
//  315     }
//  316     else
//  317     {
//  318         /* Get the CEC CSR register address */
//  319         cecbase += 0x10;
??CEC_GetFlagStatus_0:
        ADDS     R3,R3,#+16
//  320     }
//  321 
//  322     if(((*(__IO uint32_t *)cecbase) & CEC_FLAG) != (uint32_t)RESET)
??CEC_GetFlagStatus_1:
        LDR      R4,[R3, #+0]
        TST      R4,R1
        BEQ.N    ??CEC_GetFlagStatus_2
//  323     {
//  324         /* CEC_FLAG is set */
//  325         bitstatus = SET;
        MOVS     R4,#+1
        MOVS     R0,R4
        B.N      ??CEC_GetFlagStatus_3
//  326     }
//  327     else
//  328     {
//  329         /* CEC_FLAG is reset */
//  330         bitstatus = RESET;
??CEC_GetFlagStatus_2:
        MOVS     R4,#+0
        MOVS     R0,R4
//  331     }
//  332 
//  333     /* Return the CEC_FLAG status */
//  334     return  bitstatus;
??CEC_GetFlagStatus_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  335 }
//  336 
//  337 /**
//  338   * @brief  Clears the CEC's pending flags.
//  339   * @param  CEC_FLAG: specifies the flag to clear.
//  340   *   This parameter can be any combination of the following values:
//  341   *     @arg CEC_FLAG_TERR: Tx Error
//  342   *     @arg CEC_FLAG_TBTRF: Tx Byte Transfer Request or Block Transfer Finished
//  343   *     @arg CEC_FLAG_RSOM: Rx Start Of Message
//  344   *     @arg CEC_FLAG_REOM: Rx End Of Message
//  345   *     @arg CEC_FLAG_RERR: Rx Error
//  346   *     @arg CEC_FLAG_RBTF: Rx Byte/Block Transfer Finished
//  347   * @retval None
//  348   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function CEC_ClearFlag
          CFI NoCalls
        THUMB
//  349 void CEC_ClearFlag(uint32_t CEC_FLAG)
//  350 {
//  351     uint32_t tmp = 0x0;
CEC_ClearFlag:
        MOVS     R1,#+0
//  352 
//  353     /* Check the parameters */
//  354     assert_param(IS_CEC_CLEAR_FLAG(CEC_FLAG));
//  355 
//  356     tmp = CEC->CSR & 0x2;
        LDR.N    R2,??DataTable12_9  ;; 0x40007810
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x2
        MOVS     R1,R2
//  357 
//  358     /* Clear the selected CEC flags */
//  359     CEC->CSR &= (uint32_t)(((~(uint32_t)CEC_FLAG) & 0xFFFFFFFC) | tmp);
        LDR.N    R2,??DataTable12_9  ;; 0x40007810
        LDR      R2,[R2, #+0]
        MVNS     R3,R0
        LSRS     R3,R3,#+2
        LSLS     R3,R3,#+2
        ORRS     R3,R1,R3
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable12_9  ;; 0x40007810
        STR      R2,[R3, #+0]
//  360 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  361 
//  362 /**
//  363   * @brief  Checks whether the specified CEC interrupt has occurred or not.
//  364   * @param  CEC_IT: specifies the CEC interrupt source to check.
//  365   *   This parameter can be one of the following values:
//  366   *     @arg CEC_IT_TERR: Tx Error
//  367   *     @arg CEC_IT_TBTF: Tx Block Transfer Finished
//  368   *     @arg CEC_IT_RERR: Rx Error
//  369   *     @arg CEC_IT_RBTF: Rx Block Transfer Finished
//  370   * @retval The new state of CEC_IT (SET or RESET).
//  371   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function CEC_GetITStatus
          CFI NoCalls
        THUMB
//  372 ITStatus CEC_GetITStatus(uint8_t CEC_IT)
//  373 {
CEC_GetITStatus:
        MOVS     R1,R0
//  374     ITStatus bitstatus = RESET;
        MOVS     R0,#+0
//  375     uint32_t enablestatus = 0;
        MOVS     R2,#+0
//  376 
//  377     /* Check the parameters */
//  378     assert_param(IS_CEC_GET_IT(CEC_IT));
//  379 
//  380     /* Get the CEC IT enable bit status */
//  381     enablestatus = (CEC->CFGR & (uint8_t)CEC_CFGR_IE) ;
        LDR.N    R3,??DataTable12  ;; 0x40007800
        LDR      R3,[R3, #+0]
        ANDS     R3,R3,#0x2
        MOVS     R2,R3
//  382 
//  383     /* Check the status of the specified CEC interrupt */
//  384     if (((CEC->CSR & CEC_IT) != (uint32_t)RESET) && enablestatus)
        LDR.N    R3,??DataTable12_9  ;; 0x40007810
        LDR      R3,[R3, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        TST      R3,R1
        BEQ.N    ??CEC_GetITStatus_0
        CMP      R2,#+0
        BEQ.N    ??CEC_GetITStatus_0
//  385     {
//  386         /* CEC_IT is set */
//  387         bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CEC_GetITStatus_1
//  388     }
//  389     else
//  390     {
//  391         /* CEC_IT is reset */
//  392         bitstatus = RESET;
??CEC_GetITStatus_0:
        MOVS     R3,#+0
        MOVS     R0,R3
//  393     }
//  394     /* Return the CEC_IT status */
//  395     return  bitstatus;
??CEC_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  396 }
//  397 
//  398 /**
//  399   * @brief  Clears the CEC's interrupt pending bits.
//  400   * @param  CEC_IT: specifies the CEC interrupt pending bit to clear.
//  401   *   This parameter can be any combination of the following values:
//  402   *     @arg CEC_IT_TERR: Tx Error
//  403   *     @arg CEC_IT_TBTF: Tx Block Transfer Finished
//  404   *     @arg CEC_IT_RERR: Rx Error
//  405   *     @arg CEC_IT_RBTF: Rx Block Transfer Finished
//  406   * @retval None
//  407   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function CEC_ClearITPendingBit
          CFI NoCalls
        THUMB
//  408 void CEC_ClearITPendingBit(uint16_t CEC_IT)
//  409 {
//  410     uint32_t tmp = 0x0;
CEC_ClearITPendingBit:
        MOVS     R1,#+0
//  411 
//  412     /* Check the parameters */
//  413     assert_param(IS_CEC_GET_IT(CEC_IT));
//  414 
//  415     tmp = CEC->CSR & 0x2;
        LDR.N    R2,??DataTable12_9  ;; 0x40007810
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x2
        MOVS     R1,R2
//  416 
//  417     /* Clear the selected CEC interrupt pending bits */
//  418     CEC->CSR &= (uint32_t)(((~(uint32_t)CEC_IT) & 0xFFFFFFFC) | tmp);
        LDR.N    R2,??DataTable12_9  ;; 0x40007810
        LDR      R2,[R2, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MVNS     R3,R0
        LSRS     R3,R3,#+2
        LSLS     R3,R3,#+2
        ORRS     R3,R1,R3
        ANDS     R2,R3,R2
        LDR.N    R3,??DataTable12_9  ;; 0x40007810
        STR      R2,[R3, #+0]
//  419 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     0x40007800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x420f0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x420f0004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x40007804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40007808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x40007814

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x40007818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x420f0200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     0x420f0204

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x40007810

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  420 
//  421 /**
//  422   * @}
//  423   */
//  424 
//  425 /**
//  426   * @}
//  427   */
//  428 
//  429 /**
//  430   * @}
//  431   */
//  432 
//  433 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 336 bytes in section .text
// 
// 336 bytes of CODE memory
//
//Errors: none
//Warnings: none
