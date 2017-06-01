///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:53 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\CMSIS\CM3\DeviceSupport\ST\STM32 /
//                    F10x\system_stm32f10x.c                                 /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\CMSIS\CM3\DeviceSupport\ST\STM32 /
//                    F10x\system_stm32f10x.c -D USE_STDPERIPH_DRIVER -D      /
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
//                    \Debug\List\system_stm32f10x.s                          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME system_stm32f10x

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN FLASH_PrefetchBufferCmd
        EXTERN FLASH_SetLatency
        EXTERN RCC_DeInit
        EXTERN RCC_GetFlagStatus
        EXTERN RCC_GetSYSCLKSource
        EXTERN RCC_HCLKConfig
        EXTERN RCC_HSEConfig
        EXTERN RCC_PCLK1Config
        EXTERN RCC_PCLK2Config
        EXTERN RCC_PLLCmd
        EXTERN RCC_PLLConfig
        EXTERN RCC_SYSCLKConfig
        EXTERN RCC_WaitForHSEStartUp

        PUBLIC AHBPrescTable
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\CMSIS\CM3\DeviceSupport\ST\STM32F10x\system_stm32f10x.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    system_stm32f10x.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   CMSIS Cortex-M3 Device Peripheral Access Layer System Source File.
//    8   *
//    9   * 1.  This file provides two functions and one global variable to be called from
//   10   *     user application:
//   11   *      - SystemInit(): Setups the system clock (System clock source, PLL Multiplier
//   12   *                      factors, AHB/APBx prescalers and Flash settings).
//   13   *                      This function is called at startup just after reset and
//   14   *                      before branch to main program. This call is made inside
//   15   *                      the "startup_stm32f10x_xx.s" file.
//   16   *
//   17   *      - SystemCoreClock variable: Contains the core clock (HCLK), it can be used
//   18   *                                  by the user application to setup the SysTick
//   19   *                                  timer or configure other parameters.
//   20   *
//   21   *      - SystemCoreClockUpdate(): Updates the variable SystemCoreClock and must
//   22   *                                 be called whenever the core clock is changed
//   23   *                                 during program execution.
//   24   *
//   25   * 2. After each device reset the HSI (8 MHz) is used as system clock source.
//   26   *    Then SystemInit() function is called, in "startup_stm32f10x_xx.s" file, to
//   27   *    configure the system clock before to branch to main program.
//   28   *
//   29   * 3. If the system clock source selected by user fails to startup, the SystemInit()
//   30   *    function will do nothing and HSI still used as system clock source. User can
//   31   *    add some code to deal with this issue inside the SetSysClock() function.
//   32   *
//   33   * 4. The default value of HSE crystal is set to 8 MHz (or 25 MHz, depedning on
//   34   *    the product used), refer to "HSE_VALUE" define in "stm32f10x.h" file.
//   35   *    When HSE is used as system clock source, directly or through PLL, and you
//   36   *    are using different crystal you have to adapt the HSE value to your own
//   37   *    configuration.
//   38   *
//   39   ******************************************************************************
//   40   * @attention
//   41   *
//   42   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   43   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   44   * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
//   45   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   46   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   47   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   48   *
//   49   * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
//   50   ******************************************************************************
//   51   */
//   52 
//   53 /** @addtogroup CMSIS
//   54   * @{
//   55   */
//   56 
//   57 /** @addtogroup stm32f10x_system
//   58   * @{
//   59   */
//   60 
//   61 /** @addtogroup STM32F10x_System_Private_Includes
//   62   * @{
//   63   */
//   64 
//   65 #include "stm32f10x.h"
//   66 
//   67 /**
//   68   * @}
//   69   */
//   70 
//   71 /** @addtogroup STM32F10x_System_Private_TypesDefinitions
//   72   * @{
//   73   */
//   74 
//   75 /**
//   76   * @}
//   77   */
//   78 
//   79 /** @addtogroup STM32F10x_System_Private_Defines
//   80   * @{
//   81   */
//   82 
//   83 /*!< Uncomment the line corresponding to the desired System clock (SYSCLK)
//   84    frequency (after reset the HSI is used as SYSCLK source)
//   85 
//   86    IMPORTANT NOTE:
//   87    ==============
//   88    1. After each device reset the HSI is used as System clock source.
//   89 
//   90    2. Please make sure that the selected System clock doesn't exceed your device's
//   91       maximum frequency.
//   92 
//   93    3. If none of the define below is enabled, the HSI is used as System clock
//   94     source.
//   95 
//   96    4. The System clock configuration functions provided within this file assume that:
//   97         - For Low, Medium and High density Value line devices an external 8MHz
//   98           crystal is used to drive the System clock.
//   99         - For Low, Medium and High density devices an external 8MHz crystal is
//  100           used to drive the System clock.
//  101         - For Connectivity line devices an external 25MHz crystal is used to drive
//  102           the System clock.
//  103      If you are using different crystal you have to adapt those functions accordingly.
//  104     */
//  105 
//  106 #if defined (STM32F10X_LD_VL) || (defined STM32F10X_MD_VL) || (defined STM32F10X_HD_VL)
//  107 /* #define SYSCLK_FREQ_HSE    HSE_VALUE */
//  108 #define SYSCLK_FREQ_24MHz  24000000
//  109 #else
//  110 /* #define SYSCLK_FREQ_HSE    HSE_VALUE */
//  111 /* #define SYSCLK_FREQ_24MHz  24000000 */
//  112 /* #define SYSCLK_FREQ_36MHz  36000000 */
//  113 /* #define SYSCLK_FREQ_48MHz  48000000 */
//  114 /* #define SYSCLK_FREQ_56MHz  56000000 */
//  115 #define SYSCLK_FREQ_72MHz  72000000 //72000000
//  116 #endif
//  117 
//  118 /*!< Uncomment the following line if you need to use external SRAM mounted
//  119      on STM3210E-EVAL board (STM32 High density and XL-density devices) or on
//  120      STM32100E-EVAL board (STM32 High-density value line devices) as data memory */
//  121 #if defined (STM32F10X_HD) || (defined STM32F10X_XL) || (defined STM32F10X_HD_VL)
//  122 /* #define DATA_IN_ExtSRAM */
//  123 #endif
//  124 
//  125 /*!< Uncomment the following line if you need to relocate your vector Table in
//  126      Internal SRAM. */
//  127 /* #define VECT_TAB_SRAM */
//  128 #define VECT_TAB_OFFSET  0x0 /*!< Vector Table base offset field. 
//  129 This value must be a multiple of 0x200. */
//  130 
//  131 
//  132 /**
//  133   * @}
//  134   */
//  135 
//  136 /** @addtogroup STM32F10x_System_Private_Macros
//  137   * @{
//  138   */
//  139 
//  140 /**
//  141   * @}
//  142   */
//  143 
//  144 /** @addtogroup STM32F10x_System_Private_Variables
//  145   * @{
//  146   */
//  147 
//  148 /*******************************************************************************
//  149 *  Clock Definitions
//  150 *******************************************************************************/
//  151 #ifdef SYSCLK_FREQ_HSE
//  152 uint32_t SystemCoreClock         = SYSCLK_FREQ_HSE;        /*!< System Clock Frequency (Core Clock) */
//  153 #elif defined SYSCLK_FREQ_24MHz
//  154 uint32_t SystemCoreClock         = SYSCLK_FREQ_24MHz;        /*!< System Clock Frequency (Core Clock) */
//  155 #elif defined SYSCLK_FREQ_36MHz
//  156 uint32_t SystemCoreClock         = SYSCLK_FREQ_36MHz;        /*!< System Clock Frequency (Core Clock) */
//  157 #elif defined SYSCLK_FREQ_48MHz
//  158 uint32_t SystemCoreClock         = SYSCLK_FREQ_48MHz;        /*!< System Clock Frequency (Core Clock) */
//  159 #elif defined SYSCLK_FREQ_56MHz
//  160 uint32_t SystemCoreClock         = SYSCLK_FREQ_56MHz;        /*!< System Clock Frequency (Core Clock) */
//  161 #elif defined SYSCLK_FREQ_72MHz

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  162 uint32_t SystemCoreClock         = SYSCLK_FREQ_72MHz;        /*!< System Clock Frequency (Core Clock) */
SystemCoreClock:
        DATA
        DC32 72000000
//  163 #else /*!< HSI Selected as System Clock source */
//  164 uint32_t SystemCoreClock         = HSI_VALUE;        /*!< System Clock Frequency (Core Clock) */
//  165 #endif
//  166 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  167 __I uint8_t AHBPrescTable[16] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};
AHBPrescTable:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9
//  168 /**
//  169   * @}
//  170   */
//  171 
//  172 /** @addtogroup STM32F10x_System_Private_FunctionPrototypes
//  173   * @{
//  174   */
//  175 
//  176 static void SetSysClock(void);
//  177 
//  178 #ifdef SYSCLK_FREQ_HSE
//  179 static void SetSysClockToHSE(void);
//  180 #elif defined SYSCLK_FREQ_24MHz
//  181 static void SetSysClockTo24(void);
//  182 #elif defined SYSCLK_FREQ_36MHz
//  183 static void SetSysClockTo36(void);
//  184 #elif defined SYSCLK_FREQ_48MHz
//  185 static void SetSysClockTo48(void);
//  186 #elif defined SYSCLK_FREQ_56MHz
//  187 static void SetSysClockTo56(void);
//  188 #elif defined SYSCLK_FREQ_72MHz
//  189 static void SetSysClockTo72(void);
//  190 #endif
//  191 
//  192 #ifdef DATA_IN_ExtSRAM
//  193 static void SystemInit_ExtMemCtl(void);
//  194 #endif /* DATA_IN_ExtSRAM */
//  195 
//  196 /**
//  197   * @}
//  198   */
//  199 
//  200 /** @addtogroup STM32F10x_System_Private_Functions
//  201   * @{
//  202   */
//  203 
//  204 /**
//  205   * @brief  Setup the microcontroller system
//  206   *         Initialize the Embedded Flash Interface, the PLL and update the
//  207   *         SystemCoreClock variable.
//  208   * @note   This function should be used only after reset.
//  209   * @param  None
//  210   * @retval None
//  211   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SystemInit
        THUMB
//  212 void SystemInit (void)
//  213 {
SystemInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  214     /* Reset the RCC clock configuration to the default reset state(for debug purpose) */
//  215     /* Set HSION bit */
//  216     RCC->CR |= (uint32_t)0x00000001;
        LDR.N    R0,??DataTable1  ;; 0x40021000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable1  ;; 0x40021000
        STR      R0,[R1, #+0]
//  217 
//  218     /* Reset SW, HPRE, PPRE1, PPRE2, ADCPRE and MCO bits */
//  219 #ifndef STM32F10X_CL
//  220     RCC->CFGR &= (uint32_t)0xF8FF0000;
//  221 #else
//  222     RCC->CFGR &= (uint32_t)0xF0FF0000;
        LDR.N    R0,??DataTable1_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_2  ;; 0xf0ff0000
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1_1  ;; 0x40021004
        STR      R0,[R1, #+0]
//  223 #endif /* STM32F10X_CL */
//  224 
//  225     /* Reset HSEON, CSSON and PLLON bits */
//  226     RCC->CR &= (uint32_t)0xFEF6FFFF;
        LDR.N    R0,??DataTable1  ;; 0x40021000
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_3  ;; 0xfef6ffff
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable1  ;; 0x40021000
        STR      R0,[R1, #+0]
//  227 
//  228     /* Reset HSEBYP bit */
//  229     RCC->CR &= (uint32_t)0xFFFBFFFF;
        LDR.N    R0,??DataTable1  ;; 0x40021000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40000
        LDR.N    R1,??DataTable1  ;; 0x40021000
        STR      R0,[R1, #+0]
//  230 
//  231     /* Reset PLLSRC, PLLXTPRE, PLLMUL and USBPRE/OTGFSPRE bits */
//  232     RCC->CFGR &= (uint32_t)0xFF80FFFF;
        LDR.N    R0,??DataTable1_1  ;; 0x40021004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x7F0000
        LDR.N    R1,??DataTable1_1  ;; 0x40021004
        STR      R0,[R1, #+0]
//  233 
//  234 #ifdef STM32F10X_CL
//  235     /* Reset PLL2ON and PLL3ON bits */
//  236     RCC->CR &= (uint32_t)0xEBFFFFFF;
        LDR.N    R0,??DataTable1  ;; 0x40021000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x14000000
        LDR.N    R1,??DataTable1  ;; 0x40021000
        STR      R0,[R1, #+0]
//  237 
//  238     /* Disable all interrupts and clear pending bits  */
//  239     RCC->CIR = 0x00FF0000;
        LDR.N    R0,??DataTable1_4  ;; 0x40021008
        MOVS     R1,#+16711680
        STR      R1,[R0, #+0]
//  240 
//  241     /* Reset CFGR2 register */
//  242     RCC->CFGR2 = 0x00000000;
        LDR.N    R0,??DataTable1_5  ;; 0x4002102c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  243 #elif defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || (defined STM32F10X_HD_VL)
//  244     /* Disable all interrupts and clear pending bits  */
//  245     RCC->CIR = 0x009F0000;
//  246 
//  247     /* Reset CFGR2 register */
//  248     RCC->CFGR2 = 0x00000000;
//  249 #else
//  250     /* Disable all interrupts and clear pending bits  */
//  251     RCC->CIR = 0x009F0000;
//  252 #endif /* STM32F10X_CL */
//  253 
//  254 #if defined (STM32F10X_HD) || (defined STM32F10X_XL) || (defined STM32F10X_HD_VL)
//  255 #ifdef DATA_IN_ExtSRAM
//  256     SystemInit_ExtMemCtl();
//  257 #endif /* DATA_IN_ExtSRAM */
//  258 #endif
//  259 
//  260     /* Configure the System clock frequency, HCLK, PCLK2 and PCLK1 prescalers */
//  261     /* Configure the Flash Latency cycles and enable prefetch buffer */
//  262     SetSysClock();
          CFI FunCall SetSysClock
        BL       SetSysClock
//  263 
//  264 #ifdef VECT_TAB_SRAM
//  265     SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM. */
//  266 #else
//  267     SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH. */
        LDR.N    R0,??DataTable1_6  ;; 0xe000ed08
        MOVS     R1,#+134217728
        STR      R1,[R0, #+0]
//  268 #endif
//  269 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//  270 
//  271 /**
//  272   * @brief  Update SystemCoreClock variable according to Clock Register Values.
//  273   *         The SystemCoreClock variable contains the core clock (HCLK), it can
//  274   *         be used by the user application to setup the SysTick timer or configure
//  275   *         other parameters.
//  276   *
//  277   * @note   Each time the core clock (HCLK) changes, this function must be called
//  278   *         to update SystemCoreClock variable value. Otherwise, any configuration
//  279   *         based on this variable will be incorrect.
//  280   *
//  281   * @note   - The system frequency computed by this function is not the real
//  282   *           frequency in the chip. It is calculated based on the predefined
//  283   *           constant and the selected clock source:
//  284   *
//  285   *           - If SYSCLK source is HSI, SystemCoreClock will contain the HSI_VALUE(*)
//  286   *
//  287   *           - If SYSCLK source is HSE, SystemCoreClock will contain the HSE_VALUE(**)
//  288   *
//  289   *           - If SYSCLK source is PLL, SystemCoreClock will contain the HSE_VALUE(**)
//  290   *             or HSI_VALUE(*) multiplied by the PLL factors.
//  291   *
//  292   *         (*) HSI_VALUE is a constant defined in stm32f1xx.h file (default value
//  293   *             8 MHz) but the real value may vary depending on the variations
//  294   *             in voltage and temperature.
//  295   *
//  296   *         (**) HSE_VALUE is a constant defined in stm32f1xx.h file (default value
//  297   *              8 MHz or 25 MHz, depedning on the product used), user has to ensure
//  298   *              that HSE_VALUE is same as the real frequency of the crystal used.
//  299   *              Otherwise, this function may have wrong result.
//  300   *
//  301   *         - The result of this function could be not correct when using fractional
//  302   *           value for HSE crystal.
//  303   * @param  None
//  304   * @retval None
//  305   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SystemCoreClockUpdate
          CFI NoCalls
        THUMB
//  306 void SystemCoreClockUpdate (void)
//  307 {
SystemCoreClockUpdate:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  308     uint32_t tmp = 0, pllmull = 0, pllsource = 0;
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
//  309 
//  310 #ifdef  STM32F10X_CL
//  311     uint32_t prediv1source = 0, prediv1factor = 0, prediv2factor = 0, pll2mull = 0;
        MOVS     R3,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
//  312 #endif /* STM32F10X_CL */
//  313 
//  314 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || (defined STM32F10X_HD_VL)
//  315     uint32_t prediv1factor = 0;
//  316 #endif /* STM32F10X_LD_VL or STM32F10X_MD_VL or STM32F10X_HD_VL */
//  317 
//  318     /* Get SYSCLK source -------------------------------------------------------*/
//  319     tmp = RCC->CFGR & RCC_CFGR_SWS;
        LDR.N    R7,??DataTable1_1  ;; 0x40021004
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0xC
        MOVS     R0,R7
//  320 
//  321     switch (tmp)
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??SystemCoreClockUpdate_0
        CMP      R7,#+4
        BEQ.N    ??SystemCoreClockUpdate_1
        CMP      R7,#+8
        BEQ.N    ??SystemCoreClockUpdate_2
        B.N      ??SystemCoreClockUpdate_3
//  322     {
//  323     case 0x00:  /* HSI used as system clock */
//  324         SystemCoreClock = HSI_VALUE;
??SystemCoreClockUpdate_0:
        LDR.N    R7,??DataTable1_7
        LDR.W    R12,??DataTable1_8  ;; 0x7a1200
        STR      R12,[R7, #+0]
//  325         break;
        B.N      ??SystemCoreClockUpdate_4
//  326     case 0x04:  /* HSE used as system clock */
//  327         SystemCoreClock = HSE_VALUE;
??SystemCoreClockUpdate_1:
        LDR.N    R7,??DataTable1_7
        LDR.W    R12,??DataTable1_8  ;; 0x7a1200
        STR      R12,[R7, #+0]
//  328         break;
        B.N      ??SystemCoreClockUpdate_4
//  329     case 0x08:  /* PLL used as system clock */
//  330 
//  331         /* Get PLL clock source and multiplication factor ----------------------*/
//  332         pllmull = RCC->CFGR & RCC_CFGR_PLLMULL;
??SystemCoreClockUpdate_2:
        LDR.N    R7,??DataTable1_1  ;; 0x40021004
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0x3C0000
        MOVS     R1,R7
//  333         pllsource = RCC->CFGR & RCC_CFGR_PLLSRC;
        LDR.N    R7,??DataTable1_1  ;; 0x40021004
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0x10000
        MOVS     R2,R7
//  334 
//  335 #ifndef STM32F10X_CL
//  336         pllmull = ( pllmull >> 18) + 2;
//  337 
//  338         if (pllsource == 0x00)
//  339         {
//  340             /* HSI oscillator clock divided by 2 selected as PLL clock entry */
//  341             SystemCoreClock = (HSI_VALUE >> 1) * pllmull;
//  342         }
//  343         else
//  344         {
//  345 #if defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || (defined STM32F10X_HD_VL)
//  346             prediv1factor = (RCC->CFGR2 & RCC_CFGR2_PREDIV1) + 1;
//  347             /* HSE oscillator clock selected as PREDIV1 clock entry */
//  348             SystemCoreClock = (HSE_VALUE / prediv1factor) * pllmull;
//  349 #else
//  350             /* HSE selected as PLL clock entry */
//  351             if ((RCC->CFGR & RCC_CFGR_PLLXTPRE) != (uint32_t)RESET)
//  352             {
//  353                 /* HSE oscillator clock divided by 2 */
//  354                 SystemCoreClock = (HSE_VALUE >> 1) * pllmull;
//  355             }
//  356             else
//  357             {
//  358                 SystemCoreClock = HSE_VALUE * pllmull;
//  359             }
//  360 #endif
//  361         }
//  362 #else
//  363         pllmull = pllmull >> 18;
        LSRS     R1,R1,#+18
//  364 
//  365         if (pllmull != 0x0D)
        CMP      R1,#+13
        BEQ.N    ??SystemCoreClockUpdate_5
//  366         {
//  367             pllmull += 2;
        ADDS     R1,R1,#+2
        B.N      ??SystemCoreClockUpdate_6
//  368         }
//  369         else
//  370         {
//  371             /* PLL multiplication factor = PLL input clock * 6.5 */
//  372             pllmull = 13 / 2;
??SystemCoreClockUpdate_5:
        MOVS     R7,#+6
        MOVS     R1,R7
//  373         }
//  374 
//  375         if (pllsource == 0x00)
??SystemCoreClockUpdate_6:
        CMP      R2,#+0
        BNE.N    ??SystemCoreClockUpdate_7
//  376         {
//  377             /* HSI oscillator clock divided by 2 selected as PLL clock entry */
//  378             SystemCoreClock = (HSI_VALUE >> 1) * pllmull;
        LDR.N    R7,??DataTable1_9  ;; 0x3d0900
        MUL      R7,R7,R1
        LDR.W    R12,??DataTable1_7
        STR      R7,[R12, #+0]
        B.N      ??SystemCoreClockUpdate_8
//  379         }
//  380         else
//  381         {
//  382             /* PREDIV1 selected as PLL clock entry */
//  383 
//  384             /* Get PREDIV1 clock source and division factor */
//  385             prediv1source = RCC->CFGR2 & RCC_CFGR2_PREDIV1SRC;
??SystemCoreClockUpdate_7:
        LDR.N    R7,??DataTable1_5  ;; 0x4002102c
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0x10000
        MOVS     R3,R7
//  386             prediv1factor = (RCC->CFGR2 & RCC_CFGR2_PREDIV1) + 1;
        LDR.N    R7,??DataTable1_5  ;; 0x4002102c
        LDR      R7,[R7, #+0]
        ANDS     R7,R7,#0xF
        ADDS     R7,R7,#+1
        MOVS     R4,R7
//  387 
//  388             if (prediv1source == 0)
        CMP      R3,#+0
        BNE.N    ??SystemCoreClockUpdate_9
//  389             {
//  390                 /* HSE oscillator clock selected as PREDIV1 clock entry */
//  391                 SystemCoreClock = (HSE_VALUE / prediv1factor) * pllmull;
        LDR.N    R7,??DataTable1_8  ;; 0x7a1200
        UDIV     R7,R7,R4
        MULS     R7,R1,R7
        LDR.W    R12,??DataTable1_7
        STR      R7,[R12, #+0]
        B.N      ??SystemCoreClockUpdate_8
//  392             }
//  393             else
//  394             {
//  395                 /* PLL2 clock selected as PREDIV1 clock entry */
//  396 
//  397                 /* Get PREDIV2 division factor and PLL2 multiplication factor */
//  398                 prediv2factor = ((RCC->CFGR2 & RCC_CFGR2_PREDIV2) >> 4) + 1;
??SystemCoreClockUpdate_9:
        LDR.N    R7,??DataTable1_5  ;; 0x4002102c
        LDR      R7,[R7, #+0]
        UBFX     R7,R7,#+4,#+4
        ADDS     R7,R7,#+1
        MOVS     R5,R7
//  399                 pll2mull = ((RCC->CFGR2 & RCC_CFGR2_PLL2MUL) >> 8 ) + 2;
        LDR.N    R7,??DataTable1_5  ;; 0x4002102c
        LDR      R7,[R7, #+0]
        UBFX     R7,R7,#+8,#+4
        ADDS     R7,R7,#+2
        MOVS     R6,R7
//  400                 SystemCoreClock = (((HSE_VALUE / prediv2factor) * pll2mull) / prediv1factor) * pllmull;
        LDR.N    R7,??DataTable1_8  ;; 0x7a1200
        UDIV     R7,R7,R5
        MULS     R7,R6,R7
        UDIV     R7,R7,R4
        MULS     R7,R1,R7
        LDR.W    R12,??DataTable1_7
        STR      R7,[R12, #+0]
//  401             }
//  402         }
//  403 #endif /* STM32F10X_CL */
//  404         break;
??SystemCoreClockUpdate_8:
        B.N      ??SystemCoreClockUpdate_4
//  405 
//  406     default:
//  407         SystemCoreClock = HSI_VALUE;
??SystemCoreClockUpdate_3:
        LDR.N    R7,??DataTable1_7
        LDR.W    R12,??DataTable1_8  ;; 0x7a1200
        STR      R12,[R7, #+0]
//  408         break;
//  409     }
//  410 
//  411     /* Compute HCLK clock frequency ----------------*/
//  412     /* Get HCLK prescaler */
//  413     tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
??SystemCoreClockUpdate_4:
        LDR.N    R7,??DataTable1_1  ;; 0x40021004
        LDR      R7,[R7, #+0]
        UBFX     R7,R7,#+4,#+4
        LDR.W    R12,??DataTable1_10
        LDRB     R7,[R7, R12]
        MOVS     R0,R7
//  414     /* HCLK clock frequency */
//  415     SystemCoreClock >>= tmp;
        LDR.N    R7,??DataTable1_7
        LDR      R7,[R7, #+0]
        LSRS     R7,R7,R0
        LDR.W    R12,??DataTable1_7
        STR      R7,[R12, #+0]
//  416 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40021004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0xf0ff0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0xfef6ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x40021008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x4002102c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x7a1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x3d0900

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     AHBPrescTable
//  417 
//  418 /**
//  419   * @brief  Configures the System clock frequency, HCLK, PCLK2 and PCLK1 prescalers.
//  420   * @param  None
//  421   * @retval None
//  422   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function SetSysClock
        THUMB
//  423 static void SetSysClock(void)
//  424 {
SetSysClock:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  425 #ifdef SYSCLK_FREQ_HSE
//  426     SetSysClockToHSE();
//  427 #elif defined SYSCLK_FREQ_24MHz
//  428     SetSysClockTo24();
//  429 #elif defined SYSCLK_FREQ_36MHz
//  430     SetSysClockTo36();
//  431 #elif defined SYSCLK_FREQ_48MHz
//  432     SetSysClockTo48();
//  433 #elif defined SYSCLK_FREQ_56MHz
//  434     SetSysClockTo56();
//  435 #elif defined SYSCLK_FREQ_72MHz
//  436     SetSysClockTo72();
          CFI FunCall SetSysClockTo72
        BL       SetSysClockTo72
//  437 #endif
//  438 
//  439     /* If none of the define above is enabled, the HSI is used as System clock
//  440        source (default after reset) */
//  441 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
//  442 
//  443 /**
//  444   * @brief  Setup the external memory controller. Called in startup_stm32f10x.s
//  445   *          before jump to __main
//  446   * @param  None
//  447   * @retval None
//  448   */
//  449 #ifdef DATA_IN_ExtSRAM
//  450 /**
//  451   * @brief  Setup the external memory controller.
//  452   *         Called in startup_stm32f10x_xx.s/.c before jump to main.
//  453   * 	      This function configures the external SRAM mounted on STM3210E-EVAL
//  454   *         board (STM32 High density devices). This SRAM will be used as program
//  455   *         data memory (including heap and stack).
//  456   * @param  None
//  457   * @retval None
//  458   */
//  459 void SystemInit_ExtMemCtl(void)
//  460 {
//  461     /*!< FSMC Bank1 NOR/SRAM3 is used for the STM3210E-EVAL, if another Bank is
//  462       required, then adjust the Register Addresses */
//  463 
//  464     /* Enable FSMC clock */
//  465     RCC->AHBENR = 0x00000114;
//  466 
//  467     /* Enable GPIOD, GPIOE, GPIOF and GPIOG clocks */
//  468     RCC->APB2ENR = 0x000001E0;
//  469 
//  470     /* ---------------  SRAM Data lines, NOE and NWE configuration ---------------*/
//  471     /*----------------  SRAM Address lines configuration -------------------------*/
//  472     /*----------------  NOE and NWE configuration --------------------------------*/
//  473     /*----------------  NE3 configuration ----------------------------------------*/
//  474     /*----------------  NBL0, NBL1 configuration ---------------------------------*/
//  475 
//  476     GPIOD->CRL = 0x44BB44BB;
//  477     GPIOD->CRH = 0xBBBBBBBB;
//  478 
//  479     GPIOE->CRL = 0xB44444BB;
//  480     GPIOE->CRH = 0xBBBBBBBB;
//  481 
//  482     GPIOF->CRL = 0x44BBBBBB;
//  483     GPIOF->CRH = 0xBBBB4444;
//  484 
//  485     GPIOG->CRL = 0x44BBBBBB;
//  486     GPIOG->CRH = 0x44444B44;
//  487 
//  488     /*----------------  FSMC Configuration ---------------------------------------*/
//  489     /*----------------  Enable FSMC Bank1_SRAM Bank ------------------------------*/
//  490 
//  491     FSMC_Bank1->BTCR[4] = 0x00001011;
//  492     FSMC_Bank1->BTCR[5] = 0x00000200;
//  493 }
//  494 #endif /* DATA_IN_ExtSRAM */
//  495 
//  496 #ifdef SYSCLK_FREQ_HSE
//  497 /**
//  498   * @brief  Selects HSE as System clock source and configure HCLK, PCLK2
//  499   *         and PCLK1 prescalers.
//  500   * @note   This function should be used only after reset.
//  501   * @param  None
//  502   * @retval None
//  503   */
//  504 static void SetSysClockToHSE(void)
//  505 {
//  506     __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
//  507 
//  508     /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/
//  509     /* Enable HSE */
//  510     RCC->CR |= ((uint32_t)RCC_CR_HSEON);
//  511 
//  512     /* Wait till HSE is ready and if Time out is reached exit */
//  513     do
//  514     {
//  515         HSEStatus = RCC->CR & RCC_CR_HSERDY;
//  516         StartUpCounter++;
//  517     }
//  518     while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
//  519 
//  520     if ((RCC->CR & RCC_CR_HSERDY) != RESET)
//  521     {
//  522         HSEStatus = (uint32_t)0x01;
//  523     }
//  524     else
//  525     {
//  526         HSEStatus = (uint32_t)0x00;
//  527     }
//  528 
//  529     if (HSEStatus == (uint32_t)0x01)
//  530     {
//  531 
//  532 #if !defined STM32F10X_LD_VL && !defined STM32F10X_MD_VL && !defined STM32F10X_HD_VL
//  533         /* Enable Prefetch Buffer */
//  534         FLASH->ACR |= FLASH_ACR_PRFTBE;
//  535 
//  536         /* Flash 0 wait state */
//  537         FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
//  538 
//  539 #ifndef STM32F10X_CL
//  540         FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_0;
//  541 #else
//  542         if (HSE_VALUE <= 24000000)
//  543         {
//  544             FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_0;
//  545         }
//  546         else
//  547         {
//  548             FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_1;
//  549         }
//  550 #endif /* STM32F10X_CL */
//  551 #endif
//  552 
//  553         /* HCLK = SYSCLK */
//  554         RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
//  555 
//  556         /* PCLK2 = HCLK */
//  557         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
//  558 
//  559         /* PCLK1 = HCLK */
//  560         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV1;
//  561 
//  562         /* Select HSE as system clock source */
//  563         RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
//  564         RCC->CFGR |= (uint32_t)RCC_CFGR_SW_HSE;
//  565 
//  566         /* Wait till HSE is used as system clock source */
//  567         while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x04)
//  568         {
//  569         }
//  570     }
//  571     else
//  572     {
//  573         /* If HSE fails to start-up, the application will have wrong clock
//  574              configuration. User can add here some code to deal with this error */
//  575     }
//  576 }
//  577 #elif defined SYSCLK_FREQ_24MHz
//  578 /**
//  579   * @brief  Sets System clock frequency to 24MHz and configure HCLK, PCLK2
//  580   *         and PCLK1 prescalers.
//  581   * @note   This function should be used only after reset.
//  582   * @param  None
//  583   * @retval None
//  584   */
//  585 static void SetSysClockTo24(void)
//  586 {
//  587     __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
//  588 
//  589     /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/
//  590     /* Enable HSE */
//  591     RCC->CR |= ((uint32_t)RCC_CR_HSEON);
//  592 
//  593     /* Wait till HSE is ready and if Time out is reached exit */
//  594     do
//  595     {
//  596         HSEStatus = RCC->CR & RCC_CR_HSERDY;
//  597         StartUpCounter++;
//  598     }
//  599     while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
//  600 
//  601     if ((RCC->CR & RCC_CR_HSERDY) != RESET)
//  602     {
//  603         HSEStatus = (uint32_t)0x01;
//  604     }
//  605     else
//  606     {
//  607         HSEStatus = (uint32_t)0x00;
//  608     }
//  609 
//  610     if (HSEStatus == (uint32_t)0x01)
//  611     {
//  612 #if !defined STM32F10X_LD_VL && !defined STM32F10X_MD_VL && !defined STM32F10X_HD_VL
//  613         /* Enable Prefetch Buffer */
//  614         FLASH->ACR |= FLASH_ACR_PRFTBE;
//  615 
//  616         /* Flash 0 wait state */
//  617         FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
//  618         FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_0;
//  619 #endif
//  620 
//  621         /* HCLK = SYSCLK */
//  622         RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
//  623 
//  624         /* PCLK2 = HCLK */
//  625         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
//  626 
//  627         /* PCLK1 = HCLK */
//  628         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV1;
//  629 
//  630 #ifdef STM32F10X_CL
//  631         /* Configure PLLs ------------------------------------------------------*/
//  632         /* PLL configuration: PLLCLK = PREDIV1 * 6 = 24 MHz */
//  633         RCC->CFGR &= (uint32_t)~(RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL);
//  634         RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLXTPRE_PREDIV1 | RCC_CFGR_PLLSRC_PREDIV1 |
//  635                                 RCC_CFGR_PLLMULL6);
//  636 
//  637         /* PLL2 configuration: PLL2CLK = (HSE / 5) * 8 = 40 MHz */
//  638         /* PREDIV1 configuration: PREDIV1CLK = PLL2 / 10 = 4 MHz */
//  639         RCC->CFGR2 &= (uint32_t)~(RCC_CFGR2_PREDIV2 | RCC_CFGR2_PLL2MUL |
//  640                                   RCC_CFGR2_PREDIV1 | RCC_CFGR2_PREDIV1SRC);
//  641         RCC->CFGR2 |= (uint32_t)(RCC_CFGR2_PREDIV2_DIV5 | RCC_CFGR2_PLL2MUL8 |
//  642                                  RCC_CFGR2_PREDIV1SRC_PLL2 | RCC_CFGR2_PREDIV1_DIV10);
//  643 
//  644         /* Enable PLL2 */
//  645         RCC->CR |= RCC_CR_PLL2ON;
//  646         /* Wait till PLL2 is ready */
//  647         while((RCC->CR & RCC_CR_PLL2RDY) == 0)
//  648         {
//  649         }
//  650 #elif defined (STM32F10X_LD_VL) || defined (STM32F10X_MD_VL) || defined (STM32F10X_HD_VL)
//  651 /*  PLL configuration:  = (HSE / 2) * 6 = 24 MHz */
//  652 RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLMULL));
//  653 RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_PREDIV1 | RCC_CFGR_PLLXTPRE_PREDIV1_Div2 | RCC_CFGR_PLLMULL6);
//  654 #else
//  655 /*  PLL configuration:  = (HSE / 2) * 6 = 24 MHz */
//  656 RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLMULL));
//  657 RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSE | RCC_CFGR_PLLXTPRE_HSE_Div2 | RCC_CFGR_PLLMULL6);
//  658 #endif /* STM32F10X_CL */
//  659 
//  660         /* Enable PLL */
//  661         RCC->CR |= RCC_CR_PLLON;
//  662 
//  663         /* Wait till PLL is ready */
//  664         while((RCC->CR & RCC_CR_PLLRDY) == 0)
//  665         {
//  666         }
//  667 
//  668         /* Select PLL as system clock source */
//  669         RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
//  670         RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;
//  671 
//  672         /* Wait till PLL is used as system clock source */
//  673         while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
//  674         {
//  675         }
//  676     }
//  677     else
//  678     {
//  679         /* If HSE fails to start-up, the application will have wrong clock
//  680              configuration. User can add here some code to deal with this error */
//  681     }
//  682 }
//  683 #elif defined SYSCLK_FREQ_36MHz
//  684 /**
//  685   * @brief  Sets System clock frequency to 36MHz and configure HCLK, PCLK2
//  686   *         and PCLK1 prescalers.
//  687   * @note   This function should be used only after reset.
//  688   * @param  None
//  689   * @retval None
//  690   */
//  691 static void SetSysClockTo36(void)
//  692 {
//  693     __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
//  694 
//  695     /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/
//  696     /* Enable HSE */
//  697     RCC->CR |= ((uint32_t)RCC_CR_HSEON);
//  698 
//  699     /* Wait till HSE is ready and if Time out is reached exit */
//  700     do
//  701     {
//  702         HSEStatus = RCC->CR & RCC_CR_HSERDY;
//  703         StartUpCounter++;
//  704     }
//  705     while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
//  706 
//  707     if ((RCC->CR & RCC_CR_HSERDY) != RESET)
//  708     {
//  709         HSEStatus = (uint32_t)0x01;
//  710     }
//  711     else
//  712     {
//  713         HSEStatus = (uint32_t)0x00;
//  714     }
//  715 
//  716     if (HSEStatus == (uint32_t)0x01)
//  717     {
//  718         /* Enable Prefetch Buffer */
//  719         FLASH->ACR |= FLASH_ACR_PRFTBE;
//  720 
//  721         /* Flash 1 wait state */
//  722         FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
//  723         FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_1;
//  724 
//  725         /* HCLK = SYSCLK */
//  726         RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
//  727 
//  728         /* PCLK2 = HCLK */
//  729         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
//  730 
//  731         /* PCLK1 = HCLK */
//  732         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV1;
//  733 
//  734 #ifdef STM32F10X_CL
//  735         /* Configure PLLs ------------------------------------------------------*/
//  736 
//  737         /* PLL configuration: PLLCLK = PREDIV1 * 9 = 36 MHz */
//  738         RCC->CFGR &= (uint32_t)~(RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL);
//  739         RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLXTPRE_PREDIV1 | RCC_CFGR_PLLSRC_PREDIV1 |
//  740                                 RCC_CFGR_PLLMULL9);
//  741 
//  742         /*!< PLL2 configuration: PLL2CLK = (HSE / 5) * 8 = 40 MHz */
//  743         /* PREDIV1 configuration: PREDIV1CLK = PLL2 / 10 = 4 MHz */
//  744 
//  745         RCC->CFGR2 &= (uint32_t)~(RCC_CFGR2_PREDIV2 | RCC_CFGR2_PLL2MUL |
//  746                                   RCC_CFGR2_PREDIV1 | RCC_CFGR2_PREDIV1SRC);
//  747         RCC->CFGR2 |= (uint32_t)(RCC_CFGR2_PREDIV2_DIV5 | RCC_CFGR2_PLL2MUL8 |
//  748                                  RCC_CFGR2_PREDIV1SRC_PLL2 | RCC_CFGR2_PREDIV1_DIV10);
//  749 
//  750         /* Enable PLL2 */
//  751         RCC->CR |= RCC_CR_PLL2ON;
//  752         /* Wait till PLL2 is ready */
//  753         while((RCC->CR & RCC_CR_PLL2RDY) == 0)
//  754         {
//  755         }
//  756 
//  757 #else
//  758 /*  PLL configuration: PLLCLK = (HSE / 2) * 9 = 36 MHz */
//  759 RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLMULL));
//  760 RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSE | RCC_CFGR_PLLXTPRE_HSE_Div2 | RCC_CFGR_PLLMULL9);
//  761 #endif /* STM32F10X_CL */
//  762 
//  763         /* Enable PLL */
//  764         RCC->CR |= RCC_CR_PLLON;
//  765 
//  766         /* Wait till PLL is ready */
//  767         while((RCC->CR & RCC_CR_PLLRDY) == 0)
//  768         {
//  769         }
//  770 
//  771         /* Select PLL as system clock source */
//  772         RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
//  773         RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;
//  774 
//  775         /* Wait till PLL is used as system clock source */
//  776         while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
//  777         {
//  778         }
//  779     }
//  780     else
//  781     {
//  782         /* If HSE fails to start-up, the application will have wrong clock
//  783              configuration. User can add here some code to deal with this error */
//  784     }
//  785 }
//  786 #elif defined SYSCLK_FREQ_48MHz
//  787 /**
//  788   * @brief  Sets System clock frequency to 48MHz and configure HCLK, PCLK2
//  789   *         and PCLK1 prescalers.
//  790   * @note   This function should be used only after reset.
//  791   * @param  None
//  792   * @retval None
//  793   */
//  794 static void SetSysClockTo48(void)
//  795 {
//  796     __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
//  797 
//  798     /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/
//  799     /* Enable HSE */
//  800     RCC->CR |= ((uint32_t)RCC_CR_HSEON);
//  801 
//  802     /* Wait till HSE is ready and if Time out is reached exit */
//  803     do
//  804     {
//  805         HSEStatus = RCC->CR & RCC_CR_HSERDY;
//  806         StartUpCounter++;
//  807     }
//  808     while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
//  809 
//  810     if ((RCC->CR & RCC_CR_HSERDY) != RESET)
//  811     {
//  812         HSEStatus = (uint32_t)0x01;
//  813     }
//  814     else
//  815     {
//  816         HSEStatus = (uint32_t)0x00;
//  817     }
//  818 
//  819     if (HSEStatus == (uint32_t)0x01)
//  820     {
//  821         /* Enable Prefetch Buffer */
//  822         FLASH->ACR |= FLASH_ACR_PRFTBE;
//  823 
//  824         /* Flash 1 wait state */
//  825         FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
//  826         FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_1;
//  827 
//  828         /* HCLK = SYSCLK */
//  829         RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
//  830 
//  831         /* PCLK2 = HCLK */
//  832         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
//  833 
//  834         /* PCLK1 = HCLK */
//  835         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV2;
//  836 
//  837 #ifdef STM32F10X_CL
//  838         /* Configure PLLs ------------------------------------------------------*/
//  839         /* PLL2 configuration: PLL2CLK = (HSE / 5) * 8 = 40 MHz */
//  840         /* PREDIV1 configuration: PREDIV1CLK = PLL2 / 5 = 8 MHz */
//  841 
//  842         RCC->CFGR2 &= (uint32_t)~(RCC_CFGR2_PREDIV2 | RCC_CFGR2_PLL2MUL |
//  843                                   RCC_CFGR2_PREDIV1 | RCC_CFGR2_PREDIV1SRC);
//  844         RCC->CFGR2 |= (uint32_t)(RCC_CFGR2_PREDIV2_DIV5 | RCC_CFGR2_PLL2MUL8 |
//  845                                  RCC_CFGR2_PREDIV1SRC_PLL2 | RCC_CFGR2_PREDIV1_DIV5);
//  846 
//  847         /* Enable PLL2 */
//  848         RCC->CR |= RCC_CR_PLL2ON;
//  849         /* Wait till PLL2 is ready */
//  850         while((RCC->CR & RCC_CR_PLL2RDY) == 0)
//  851         {
//  852         }
//  853 
//  854 
//  855         /* PLL configuration: PLLCLK = PREDIV1 * 6 = 48 MHz */
//  856         RCC->CFGR &= (uint32_t)~(RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL);
//  857         RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLXTPRE_PREDIV1 | RCC_CFGR_PLLSRC_PREDIV1 |
//  858                                 RCC_CFGR_PLLMULL6);
//  859 #else
//  860 /*  PLL configuration: PLLCLK = HSE * 6 = 48 MHz */
//  861 RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLMULL));
//  862 RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSE | RCC_CFGR_PLLMULL6);
//  863 #endif /* STM32F10X_CL */
//  864 
//  865         /* Enable PLL */
//  866         RCC->CR |= RCC_CR_PLLON;
//  867 
//  868         /* Wait till PLL is ready */
//  869         while((RCC->CR & RCC_CR_PLLRDY) == 0)
//  870         {
//  871         }
//  872 
//  873         /* Select PLL as system clock source */
//  874         RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
//  875         RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;
//  876 
//  877         /* Wait till PLL is used as system clock source */
//  878         while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
//  879         {
//  880         }
//  881     }
//  882     else
//  883     {
//  884         /* If HSE fails to start-up, the application will have wrong clock
//  885              configuration. User can add here some code to deal with this error */
//  886     }
//  887 }
//  888 
//  889 #elif defined SYSCLK_FREQ_56MHz
//  890 /**
//  891   * @brief  Sets System clock frequency to 56MHz and configure HCLK, PCLK2
//  892   *         and PCLK1 prescalers.
//  893   * @note   This function should be used only after reset.
//  894   * @param  None
//  895   * @retval None
//  896   */
//  897 static void SetSysClockTo56(void)
//  898 {
//  899     __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
//  900 
//  901     /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/
//  902     /* Enable HSE */
//  903     RCC->CR |= ((uint32_t)RCC_CR_HSEON);
//  904 
//  905     /* Wait till HSE is ready and if Time out is reached exit */
//  906     do
//  907     {
//  908         HSEStatus = RCC->CR & RCC_CR_HSERDY;
//  909         StartUpCounter++;
//  910     }
//  911     while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
//  912 
//  913     if ((RCC->CR & RCC_CR_HSERDY) != RESET)
//  914     {
//  915         HSEStatus = (uint32_t)0x01;
//  916     }
//  917     else
//  918     {
//  919         HSEStatus = (uint32_t)0x00;
//  920     }
//  921 
//  922     if (HSEStatus == (uint32_t)0x01)
//  923     {
//  924         /* Enable Prefetch Buffer */
//  925         FLASH->ACR |= FLASH_ACR_PRFTBE;
//  926 
//  927         /* Flash 2 wait state */
//  928         FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
//  929         FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_2;
//  930 
//  931         /* HCLK = SYSCLK */
//  932         RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
//  933 
//  934         /* PCLK2 = HCLK */
//  935         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
//  936 
//  937         /* PCLK1 = HCLK */
//  938         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV2;
//  939 
//  940 #ifdef STM32F10X_CL
//  941         /* Configure PLLs ------------------------------------------------------*/
//  942         /* PLL2 configuration: PLL2CLK = (HSE / 5) * 8 = 40 MHz */
//  943         /* PREDIV1 configuration: PREDIV1CLK = PLL2 / 5 = 8 MHz */
//  944 
//  945         RCC->CFGR2 &= (uint32_t)~(RCC_CFGR2_PREDIV2 | RCC_CFGR2_PLL2MUL |
//  946                                   RCC_CFGR2_PREDIV1 | RCC_CFGR2_PREDIV1SRC);
//  947         RCC->CFGR2 |= (uint32_t)(RCC_CFGR2_PREDIV2_DIV5 | RCC_CFGR2_PLL2MUL8 |
//  948                                  RCC_CFGR2_PREDIV1SRC_PLL2 | RCC_CFGR2_PREDIV1_DIV5);
//  949 
//  950         /* Enable PLL2 */
//  951         RCC->CR |= RCC_CR_PLL2ON;
//  952         /* Wait till PLL2 is ready */
//  953         while((RCC->CR & RCC_CR_PLL2RDY) == 0)
//  954         {
//  955         }
//  956 
//  957 
//  958         /* PLL configuration: PLLCLK = PREDIV1 * 7 = 56 MHz */
//  959         RCC->CFGR &= (uint32_t)~(RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL);
//  960         RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLXTPRE_PREDIV1 | RCC_CFGR_PLLSRC_PREDIV1 |
//  961                                 RCC_CFGR_PLLMULL7);
//  962 #else
//  963 /* PLL configuration: PLLCLK = HSE * 7 = 56 MHz */
//  964 RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLMULL));
//  965 RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSE | RCC_CFGR_PLLMULL7);
//  966 
//  967 #endif /* STM32F10X_CL */
//  968 
//  969         /* Enable PLL */
//  970         RCC->CR |= RCC_CR_PLLON;
//  971 
//  972         /* Wait till PLL is ready */
//  973         while((RCC->CR & RCC_CR_PLLRDY) == 0)
//  974         {
//  975         }
//  976 
//  977         /* Select PLL as system clock source */
//  978         RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
//  979         RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;
//  980 
//  981         /* Wait till PLL is used as system clock source */
//  982         while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
//  983         {
//  984         }
//  985     }
//  986     else
//  987     {
//  988         /* If HSE fails to start-up, the application will have wrong clock
//  989              configuration. User can add here some code to deal with this error */
//  990     }
//  991 }
//  992 
//  993 #elif defined SYSCLK_FREQ_72MHz
//  994 /**
//  995   * @brief  Sets System clock frequency to 72MHz and configure HCLK, PCLK2
//  996   *         and PCLK1 prescalers.
//  997   * @note   This function should be used only after reset.
//  998   * @param  None
//  999   * @retval None
// 1000   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function SetSysClockTo72
        THUMB
// 1001 static void SetSysClockTo72(void)
// 1002 {
SetSysClockTo72:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1003     #if 0//miller.tao20150721
// 1004     __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
// 1005 
// 1006     /* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/
// 1007     /* Enable HSE */
// 1008     RCC->CR |= ((uint32_t)RCC_CR_HSEON);
// 1009 
// 1010     /* Wait till HSE is ready and if Time out is reached exit */
// 1011     do
// 1012     {
// 1013         HSEStatus = RCC->CR & RCC_CR_HSERDY;
// 1014         StartUpCounter++;
// 1015     }
// 1016     while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
// 1017 
// 1018     if ((RCC->CR & RCC_CR_HSERDY) != RESET)
// 1019     {
// 1020         HSEStatus = (uint32_t)0x01;
// 1021     }
// 1022     else
// 1023     {
// 1024         HSEStatus = (uint32_t)0x00;
// 1025     }
// 1026 
// 1027     if (HSEStatus == (uint32_t)0x01)
// 1028     {
// 1029         /* Enable Prefetch Buffer */
// 1030         FLASH->ACR |= FLASH_ACR_PRFTBE;
// 1031 
// 1032         /* Flash 2 wait state */
// 1033         FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
// 1034         FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_2;
// 1035 
// 1036 
// 1037         /* HCLK = SYSCLK */
// 1038         RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
// 1039 
// 1040         /* PCLK2 = HCLK */
// 1041         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
// 1042 
// 1043         /* PCLK1 = HCLK */
// 1044         RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV2;
// 1045 
// 1046 #ifdef STM32F10X_CL
// 1047         /* Configure PLLs ------------------------------------------------------*/
// 1048         /* PLL2 configuration: PLL2CLK = (HSE / 5) * 8 = 40 MHz */
// 1049         /* PREDIV1 configuration: PREDIV1CLK = PLL2 / 5 = 8 MHz */
// 1050 
// 1051         RCC->CFGR2 &= (uint32_t)~(RCC_CFGR2_PREDIV2 | RCC_CFGR2_PLL2MUL |
// 1052                                   RCC_CFGR2_PREDIV1 | RCC_CFGR2_PREDIV1SRC);
// 1053         RCC->CFGR2 |= (uint32_t)(RCC_CFGR2_PREDIV2_DIV5 | RCC_CFGR2_PLL2MUL8 |
// 1054                                  RCC_CFGR2_PREDIV1SRC_PLL2 | RCC_CFGR2_PREDIV1_DIV5);
// 1055 
// 1056         /* Enable PLL2 */
// 1057         RCC->CR |= RCC_CR_PLL2ON;
// 1058         /* Wait till PLL2 is ready */
// 1059         while((RCC->CR & RCC_CR_PLL2RDY) == 0)
// 1060         {
// 1061         }
// 1062 
// 1063 
// 1064         /* PLL configuration: PLLCLK = PREDIV1 * 9 = 72 MHz */
// 1065         RCC->CFGR &= (uint32_t)~(RCC_CFGR_PLLXTPRE | RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL);
// 1066         RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLXTPRE_PREDIV1 | RCC_CFGR_PLLSRC_PREDIV1 |
// 1067                                 RCC_CFGR_PLLMULL9);
// 1068 #else
// 1069 /*  PLL configuration: PLLCLK = HSE * 9 = 72 MHz */
// 1070 RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE |
// 1071                                     RCC_CFGR_PLLMULL));
// 1072 RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC_HSE | RCC_CFGR_PLLMULL9);
// 1073 #endif /* STM32F10X_CL */
// 1074 
// 1075         /* Enable PLL */
// 1076         RCC->CR |= RCC_CR_PLLON;
// 1077 
// 1078         /* Wait till PLL is ready */
// 1079         while((RCC->CR & RCC_CR_PLLRDY) == 0)
// 1080         {
// 1081         }
// 1082 
// 1083         /* Select PLL as system clock source */
// 1084         RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
// 1085         RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;
// 1086 
// 1087         /* Wait till PLL is used as system clock source */
// 1088         while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
// 1089         {
// 1090         }
// 1091     }
// 1092     else
// 1093     {
// 1094         /* If HSE fails to start-up, the application will have wrong clock
// 1095              configuration. User can add here some code to deal with this error */
// 1096     }
// 1097    #else
// 1098        ErrorStatus HSEStartUpStatus;
// 1099     /* RCC system reset(for debug purpose) */
// 1100     RCC_DeInit();
          CFI FunCall RCC_DeInit
        BL       RCC_DeInit
// 1101     /* Enable HSE */
// 1102     RCC_HSEConfig(RCC_HSE_ON);
        MOVS     R0,#+65536
          CFI FunCall RCC_HSEConfig
        BL       RCC_HSEConfig
// 1103     /* Wait till HSE is ready */
// 1104     HSEStartUpStatus = RCC_WaitForHSEStartUp();
          CFI FunCall RCC_WaitForHSEStartUp
        BL       RCC_WaitForHSEStartUp
        MOVS     R4,R0
// 1105     if (HSEStartUpStatus == SUCCESS)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??SetSysClockTo72_0
// 1106     {
// 1107         /* Enable Prefetch Buffer */
// 1108         FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);
        MOVS     R0,#+16
          CFI FunCall FLASH_PrefetchBufferCmd
        BL       FLASH_PrefetchBufferCmd
// 1109         /* Flash 2 wait state */
// 1110         FLASH_SetLatency(FLASH_Latency_2);
        MOVS     R0,#+2
          CFI FunCall FLASH_SetLatency
        BL       FLASH_SetLatency
// 1111         /* HCLK = SYSCLK */
// 1112         RCC_HCLKConfig(RCC_SYSCLK_Div1); //AHB CLK
        MOVS     R0,#+0
          CFI FunCall RCC_HCLKConfig
        BL       RCC_HCLKConfig
// 1113         /* PCLK2 = HCLK */
// 1114         RCC_PCLK2Config(RCC_HCLK_Div1);
        MOVS     R0,#+0
          CFI FunCall RCC_PCLK2Config
        BL       RCC_PCLK2Config
// 1115         /* PCLK1 = HCLK/2 */
// 1116         RCC_PCLK1Config(RCC_HCLK_Div2);
        MOV      R0,#+1024
          CFI FunCall RCC_PCLK1Config
        BL       RCC_PCLK1Config
// 1117         /* PLLCLK = 8MHz * 8 = 64 MHz */
// 1118         RCC_PLLConfig(RCC_PLLSource_HSE_Div1, RCC_PLLMul_9);
        MOVS     R1,#+1835008
        MOVS     R0,#+65536
          CFI FunCall RCC_PLLConfig
        BL       RCC_PLLConfig
// 1119 	 //RCC_PLLConfig(RCC_PLLSource_PREDIV1, RCC_PLLMul_4);
// 1120         /* Enable PLL */
// 1121         RCC_PLLCmd(ENABLE);
        MOVS     R0,#+1
          CFI FunCall RCC_PLLCmd
        BL       RCC_PLLCmd
// 1122         /* Wait till PLL is ready */
// 1123         while (RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET) {}
??SetSysClockTo72_1:
        MOVS     R0,#+57
          CFI FunCall RCC_GetFlagStatus
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SetSysClockTo72_1
// 1124         /* Select PLL as system clock source */
// 1125         RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);
        MOVS     R0,#+2
          CFI FunCall RCC_SYSCLKConfig
        BL       RCC_SYSCLKConfig
// 1126         /* Wait till PLL is used as system clock source */
// 1127         while (RCC_GetSYSCLKSource() != 0x08) {}
??SetSysClockTo72_2:
          CFI FunCall RCC_GetSYSCLKSource
        BL       RCC_GetSYSCLKSource
        CMP      R0,#+8
        BNE.N    ??SetSysClockTo72_2
// 1128 
// 1129         //RCC_MCOConfig(RCC_MCO_PLLCLK_Div2);
// 1130     }
// 1131    #endif
// 1132 }
??SetSysClockTo72_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1133 #endif
// 1134 
// 1135 /**
// 1136   * @}
// 1137   */
// 1138 
// 1139 /**
// 1140   * @}
// 1141   */
// 1142 
// 1143 /**
// 1144   * @}
// 1145   */
// 1146 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
//  20 bytes in section .data
// 514 bytes in section .text
// 
// 514 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
