///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:50 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_pwr.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_pwr.c -D USE_STDPERIPH_DRIVER -D               /
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
//                    \Debug\List\stm32f10x_pwr.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_pwr

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd

        PUBLIC PWR_BackupAccessCmd
        PUBLIC PWR_ClearFlag
        PUBLIC PWR_DeInit
        PUBLIC PWR_EnterSTANDBYMode
        PUBLIC PWR_EnterSTOPMode
        PUBLIC PWR_GetFlagStatus
        PUBLIC PWR_PVDCmd
        PUBLIC PWR_PVDLevelConfig
        PUBLIC PWR_WakeUpPinCmd
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_pwr.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_pwr.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the PWR firmware functions.
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
//   23 #include "stm32f10x_pwr.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup PWR
//   31   * @brief PWR driver modules
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup PWR_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 /** @defgroup PWR_Private_Defines
//   44   * @{
//   45   */
//   46 
//   47 /* --------- PWR registers bit address in the alias region ---------- */
//   48 #define PWR_OFFSET               (PWR_BASE - PERIPH_BASE)
//   49 
//   50 /* --- CR Register ---*/
//   51 
//   52 /* Alias word address of DBP bit */
//   53 #define CR_OFFSET                (PWR_OFFSET + 0x00)
//   54 #define DBP_BitNumber            0x08
//   55 #define CR_DBP_BB                (PERIPH_BB_BASE + (CR_OFFSET * 32) + (DBP_BitNumber * 4))
//   56 
//   57 /* Alias word address of PVDE bit */
//   58 #define PVDE_BitNumber           0x04
//   59 #define CR_PVDE_BB               (PERIPH_BB_BASE + (CR_OFFSET * 32) + (PVDE_BitNumber * 4))
//   60 
//   61 /* --- CSR Register ---*/
//   62 
//   63 /* Alias word address of EWUP bit */
//   64 #define CSR_OFFSET               (PWR_OFFSET + 0x04)
//   65 #define EWUP_BitNumber           0x08
//   66 #define CSR_EWUP_BB              (PERIPH_BB_BASE + (CSR_OFFSET * 32) + (EWUP_BitNumber * 4))
//   67 
//   68 /* ------------------ PWR registers bit mask ------------------------ */
//   69 
//   70 /* CR register bit mask */
//   71 #define CR_DS_MASK               ((uint32_t)0xFFFFFFFC)
//   72 #define CR_PLS_MASK              ((uint32_t)0xFFFFFF1F)
//   73 
//   74 
//   75 /**
//   76   * @}
//   77   */
//   78 
//   79 /** @defgroup PWR_Private_Macros
//   80   * @{
//   81   */
//   82 
//   83 /**
//   84   * @}
//   85   */
//   86 
//   87 /** @defgroup PWR_Private_Variables
//   88   * @{
//   89   */
//   90 
//   91 /**
//   92   * @}
//   93   */
//   94 
//   95 /** @defgroup PWR_Private_FunctionPrototypes
//   96   * @{
//   97   */
//   98 
//   99 /**
//  100   * @}
//  101   */
//  102 
//  103 /** @defgroup PWR_Private_Functions
//  104   * @{
//  105   */
//  106 
//  107 /**
//  108   * @brief  Deinitializes the PWR peripheral registers to their default reset values.
//  109   * @param  None
//  110   * @retval None
//  111   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function PWR_DeInit
        THUMB
//  112 void PWR_DeInit(void)
//  113 {
PWR_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  114     RCC_APB1PeriphResetCmd(RCC_APB1Periph_PWR, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+268435456
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  115     RCC_APB1PeriphResetCmd(RCC_APB1Periph_PWR, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+268435456
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  116 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//  117 
//  118 /**
//  119   * @brief  Enables or disables access to the RTC and backup registers.
//  120   * @param  NewState: new state of the access to the RTC and backup registers.
//  121   *   This parameter can be: ENABLE or DISABLE.
//  122   * @retval None
//  123   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function PWR_BackupAccessCmd
          CFI NoCalls
        THUMB
//  124 void PWR_BackupAccessCmd(FunctionalState NewState)
//  125 {
//  126     /* Check the parameters */
//  127     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  128     *(__IO uint32_t *) CR_DBP_BB = (uint32_t)NewState;
PWR_BackupAccessCmd:
        LDR.N    R1,??DataTable7  ;; 0x420e0020
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  129 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  130 
//  131 /**
//  132   * @brief  Enables or disables the Power Voltage Detector(PVD).
//  133   * @param  NewState: new state of the PVD.
//  134   *   This parameter can be: ENABLE or DISABLE.
//  135   * @retval None
//  136   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function PWR_PVDCmd
          CFI NoCalls
        THUMB
//  137 void PWR_PVDCmd(FunctionalState NewState)
//  138 {
//  139     /* Check the parameters */
//  140     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  141     *(__IO uint32_t *) CR_PVDE_BB = (uint32_t)NewState;
PWR_PVDCmd:
        LDR.N    R1,??DataTable7_1  ;; 0x420e0010
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  142 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  143 
//  144 /**
//  145   * @brief  Configures the voltage threshold detected by the Power Voltage Detector(PVD).
//  146   * @param  PWR_PVDLevel: specifies the PVD detection level
//  147   *   This parameter can be one of the following values:
//  148   *     @arg PWR_PVDLevel_2V2: PVD detection level set to 2.2V
//  149   *     @arg PWR_PVDLevel_2V3: PVD detection level set to 2.3V
//  150   *     @arg PWR_PVDLevel_2V4: PVD detection level set to 2.4V
//  151   *     @arg PWR_PVDLevel_2V5: PVD detection level set to 2.5V
//  152   *     @arg PWR_PVDLevel_2V6: PVD detection level set to 2.6V
//  153   *     @arg PWR_PVDLevel_2V7: PVD detection level set to 2.7V
//  154   *     @arg PWR_PVDLevel_2V8: PVD detection level set to 2.8V
//  155   *     @arg PWR_PVDLevel_2V9: PVD detection level set to 2.9V
//  156   * @retval None
//  157   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function PWR_PVDLevelConfig
          CFI NoCalls
        THUMB
//  158 void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel)
//  159 {
//  160     uint32_t tmpreg = 0;
PWR_PVDLevelConfig:
        MOVS     R1,#+0
//  161     /* Check the parameters */
//  162     assert_param(IS_PWR_PVD_LEVEL(PWR_PVDLevel));
//  163     tmpreg = PWR->CR;
        LDR.N    R2,??DataTable7_2  ;; 0x40007000
        LDR      R2,[R2, #+0]
        MOVS     R1,R2
//  164     /* Clear PLS[7:5] bits */
//  165     tmpreg &= CR_PLS_MASK;
        BICS     R1,R1,#0xE0
//  166     /* Set PLS[7:5] bits according to PWR_PVDLevel value */
//  167     tmpreg |= PWR_PVDLevel;
        ORRS     R1,R0,R1
//  168     /* Store the new value */
//  169     PWR->CR = tmpreg;
        LDR.N    R2,??DataTable7_2  ;; 0x40007000
        STR      R1,[R2, #+0]
//  170 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  171 
//  172 /**
//  173   * @brief  Enables or disables the WakeUp Pin functionality.
//  174   * @param  NewState: new state of the WakeUp Pin functionality.
//  175   *   This parameter can be: ENABLE or DISABLE.
//  176   * @retval None
//  177   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function PWR_WakeUpPinCmd
          CFI NoCalls
        THUMB
//  178 void PWR_WakeUpPinCmd(FunctionalState NewState)
//  179 {
//  180     /* Check the parameters */
//  181     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  182     *(__IO uint32_t *) CSR_EWUP_BB = (uint32_t)NewState;
PWR_WakeUpPinCmd:
        LDR.N    R1,??DataTable7_3  ;; 0x420e00a0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//  183 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  184 
//  185 /**
//  186   * @brief  Enters STOP mode.
//  187   * @param  PWR_Regulator: specifies the regulator state in STOP mode.
//  188   *   This parameter can be one of the following values:
//  189   *     @arg PWR_Regulator_ON: STOP mode with regulator ON
//  190   *     @arg PWR_Regulator_LowPower: STOP mode with regulator in low power mode
//  191   * @param  PWR_STOPEntry: specifies if STOP mode in entered with WFI or WFE instruction.
//  192   *   This parameter can be one of the following values:
//  193   *     @arg PWR_STOPEntry_WFI: enter STOP mode with WFI instruction
//  194   *     @arg PWR_STOPEntry_WFE: enter STOP mode with WFE instruction
//  195   * @retval None
//  196   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function PWR_EnterSTOPMode
          CFI NoCalls
        THUMB
//  197 void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry)
//  198 {
PWR_EnterSTOPMode:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  199     uint32_t tmpreg = 0;
        MOVS     R2,#+0
//  200     /* Check the parameters */
//  201     assert_param(IS_PWR_REGULATOR(PWR_Regulator));
//  202     assert_param(IS_PWR_STOP_ENTRY(PWR_STOPEntry));
//  203 
//  204     /* Select the regulator state in STOP mode ---------------------------------*/
//  205     tmpreg = PWR->CR;
        LDR.N    R3,??DataTable7_2  ;; 0x40007000
        LDR      R3,[R3, #+0]
        MOVS     R2,R3
//  206     /* Clear PDDS and LPDS bits */
//  207     tmpreg &= CR_DS_MASK;
        LSRS     R2,R2,#+2
        LSLS     R2,R2,#+2
//  208     /* Set LPDS bit according to PWR_Regulator value */
//  209     tmpreg |= PWR_Regulator;
        ORRS     R2,R0,R2
//  210     /* Store the new value */
//  211     PWR->CR = tmpreg;
        LDR.N    R3,??DataTable7_2  ;; 0x40007000
        STR      R2,[R3, #+0]
//  212     /* Set SLEEPDEEP bit of Cortex System Control Register */
//  213     SCB->SCR |= SCB_SCR_SLEEPDEEP;
        LDR.N    R3,??DataTable7_4  ;; 0xe000ed10
        LDR      R3,[R3, #+0]
        ORRS     R3,R3,#0x4
        LDR.N    R4,??DataTable7_4  ;; 0xe000ed10
        STR      R3,[R4, #+0]
//  214 
//  215     /* Select STOP mode entry --------------------------------------------------*/
//  216     if(PWR_STOPEntry == PWR_STOPEntry_WFI)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??PWR_EnterSTOPMode_0
//  217     {
//  218         /* Request Wait For Interrupt */
//  219         __WFI();
        WFI      
        B.N      ??PWR_EnterSTOPMode_1
//  220     }
//  221     else
//  222     {
//  223         /* Request Wait For Event */
//  224         __WFE();
??PWR_EnterSTOPMode_0:
        WFE      
//  225     }
//  226 
//  227     /* Reset SLEEPDEEP bit of Cortex System Control Register */
//  228     SCB->SCR &= (uint32_t)~((uint32_t)SCB_SCR_SLEEPDEEP);
??PWR_EnterSTOPMode_1:
        LDR.N    R3,??DataTable7_4  ;; 0xe000ed10
        LDR      R3,[R3, #+0]
        BICS     R3,R3,#0x4
        LDR.N    R4,??DataTable7_4  ;; 0xe000ed10
        STR      R3,[R4, #+0]
//  229 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  230 
//  231 /**
//  232   * @brief  Enters STANDBY mode.
//  233   * @param  None
//  234   * @retval None
//  235   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function PWR_EnterSTANDBYMode
          CFI NoCalls
        THUMB
//  236 void PWR_EnterSTANDBYMode(void)
//  237 {
//  238     /* Clear Wake-up flag */
//  239     PWR->CR |= PWR_CR_CWUF;
PWR_EnterSTANDBYMode:
        LDR.N    R0,??DataTable7_2  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_2  ;; 0x40007000
        STR      R0,[R1, #+0]
//  240     /* Select STANDBY mode */
//  241     PWR->CR |= PWR_CR_PDDS;
        LDR.N    R0,??DataTable7_2  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_2  ;; 0x40007000
        STR      R0,[R1, #+0]
//  242     /* Set SLEEPDEEP bit of Cortex System Control Register */
//  243     SCB->SCR |= SCB_SCR_SLEEPDEEP;
        LDR.N    R0,??DataTable7_4  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_4  ;; 0xe000ed10
        STR      R0,[R1, #+0]
//  244     /* This option is used to ensure that store operations are completed */
//  245 #if defined ( __CC_ARM   )
//  246     __force_stores();
//  247 #endif
//  248     /* Request Wait For Interrupt */
//  249     __WFI();
        WFI      
//  250 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  251 
//  252 /**
//  253   * @brief  Checks whether the specified PWR flag is set or not.
//  254   * @param  PWR_FLAG: specifies the flag to check.
//  255   *   This parameter can be one of the following values:
//  256   *     @arg PWR_FLAG_WU: Wake Up flag
//  257   *     @arg PWR_FLAG_SB: StandBy flag
//  258   *     @arg PWR_FLAG_PVDO: PVD Output
//  259   * @retval The new state of PWR_FLAG (SET or RESET).
//  260   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function PWR_GetFlagStatus
          CFI NoCalls
        THUMB
//  261 FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG)
//  262 {
PWR_GetFlagStatus:
        MOVS     R1,R0
//  263     FlagStatus bitstatus = RESET;
        MOVS     R0,#+0
//  264     /* Check the parameters */
//  265     assert_param(IS_PWR_GET_FLAG(PWR_FLAG));
//  266 
//  267     if ((PWR->CSR & PWR_FLAG) != (uint32_t)RESET)
        LDR.N    R2,??DataTable7_5  ;; 0x40007004
        LDR      R2,[R2, #+0]
        TST      R2,R1
        BEQ.N    ??PWR_GetFlagStatus_0
//  268     {
//  269         bitstatus = SET;
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??PWR_GetFlagStatus_1
//  270     }
//  271     else
//  272     {
//  273         bitstatus = RESET;
??PWR_GetFlagStatus_0:
        MOVS     R2,#+0
        MOVS     R0,R2
//  274     }
//  275     /* Return the flag status */
//  276     return bitstatus;
??PWR_GetFlagStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  277 }
//  278 
//  279 /**
//  280   * @brief  Clears the PWR's pending flags.
//  281   * @param  PWR_FLAG: specifies the flag to clear.
//  282   *   This parameter can be one of the following values:
//  283   *     @arg PWR_FLAG_WU: Wake Up flag
//  284   *     @arg PWR_FLAG_SB: StandBy flag
//  285   * @retval None
//  286   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function PWR_ClearFlag
          CFI NoCalls
        THUMB
//  287 void PWR_ClearFlag(uint32_t PWR_FLAG)
//  288 {
//  289     /* Check the parameters */
//  290     assert_param(IS_PWR_CLEAR_FLAG(PWR_FLAG));
//  291 
//  292     PWR->CR |=  PWR_FLAG << 2;
PWR_ClearFlag:
        LDR.N    R1,??DataTable7_2  ;; 0x40007000
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,R0, LSL #+2
        LDR.N    R2,??DataTable7_2  ;; 0x40007000
        STR      R1,[R2, #+0]
//  293 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x420e0020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x420e0010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x420e00a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x40007004

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  294 
//  295 /**
//  296   * @}
//  297   */
//  298 
//  299 /**
//  300   * @}
//  301   */
//  302 
//  303 /**
//  304   * @}
//  305   */
//  306 
//  307 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 232 bytes in section .text
// 
// 232 bytes of CODE memory
//
//Errors: none
//Warnings: none
