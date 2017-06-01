#line 1 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Libraries\\STM32F10x_StdPeriph_Driver\\src\\stm32f10x_crc.c"
/**
  ******************************************************************************
  * @file    stm32f10x_crc.c
  * @author  MCD Application Team
  * @version V3.5.0
  * @date    11-March-2011
  * @brief   This file provides all the CRC firmware functions.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#line 1 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\STM32F10x_StdPeriph_Driver\\inc\\stm32f10x_crc.h"
/**
  ******************************************************************************
  * @file    stm32f10x_crc.h
  * @author  MCD Application Team
  * @version V3.5.0
  * @date    11-March-2011
  * @brief   This file contains all the functions prototypes for the CRC firmware
  *          library.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/







    /* Includes ------------------------------------------------------------------*/
#line 1 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"
/**
  ******************************************************************************
  * @file    stm32f10x.h
  * @author  MCD Application Team
  * @version V3.5.0
  * @date    11-March-2011
  * @brief   CMSIS Cortex-M3 Device Peripheral Access Layer Header File.
  *          This file contains all the peripheral register's definitions, bits
  *          definitions and memory mapping for STM32F10x Connectivity line,
  *          High density, High density value line, Medium density,
  *          Medium density Value line, Low density, Low density Value line
  *          and XL-density devices.
  *
  *          The file is the unique include file that the application programmer
  *          is using in the C source code, usually in main.c. This file contains:
  *           - Configuration section that allows to select:
  *              - The device used in the target application
  *              - To use or not the peripheral’s drivers in application code(i.e.
  *                code will be based on direct access to peripheral’s registers
  *                rather than drivers API), this option is controlled by
  *                "#define USE_STDPERIPH_DRIVER"
  *              - To change few application-specific parameters such as the HSE
  *                crystal frequency
  *           - Data structures and the address mapping for all peripherals
  *           - Peripheral's registers declarations and bits definition
  *           - Macros to access peripheral’s registers hardware
  *
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/** @addtogroup CMSIS
  * @{
  */

/** @addtogroup stm32f10x
  * @{
  */








    /** @addtogroup Library_configuration_section
      * @{
      */

    /* Uncomment the line below according to the target STM32 device used in your
       application
      */

#line 75 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"
    /*  Tip: To avoid modifying this file each time you need to switch between these
            devices, you can define the device in your toolchain compiler preprocessor.

     - Low-density devices are STM32F101xx, STM32F102xx and STM32F103xx microcontrollers
       where the Flash memory density ranges between 16 and 32 Kbytes.
     - Low-density value line devices are STM32F100xx microcontrollers where the Flash
       memory density ranges between 16 and 32 Kbytes.
     - Medium-density devices are STM32F101xx, STM32F102xx and STM32F103xx microcontrollers
       where the Flash memory density ranges between 64 and 128 Kbytes.
     - Medium-density value line devices are STM32F100xx microcontrollers where the
       Flash memory density ranges between 64 and 128 Kbytes.
     - High-density devices are STM32F101xx and STM32F103xx microcontrollers where
       the Flash memory density ranges between 256 and 512 Kbytes.
     - High-density value line devices are STM32F100xx microcontrollers where the
       Flash memory density ranges between 256 and 512 Kbytes.
     - XL-density devices are STM32F101xx and STM32F103xx microcontrollers where
       the Flash memory density ranges between 512 and 1024 Kbytes.
     - Connectivity line devices are STM32F105xx and STM32F107xx microcontrollers.
      */





#line 107 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

    /**
     * @brief In the following line adjust the value of External High Speed oscillator (HSE)
       used in your application

       Tip: To avoid modifying this file each time you need to use different HSE, you
            can define the HSE value in your toolchain compiler preprocessor.
      */
#line 122 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"


    /**
     * @brief In the following line adjust the External High Speed oscillator (HSE) Startup
       Timeout value
       */




    /**
     * @brief STM32F10x Standard Peripheral Library version number
       */
#line 143 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

    /**
      * @}
      */

    /** @addtogroup Configuration_section_for_CMSIS
      * @{
      */

    /**
     * @brief Configuration of the Cortex-M3 Processor and Core Peripherals
     */
#line 162 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

    /**
     * @brief STM32F10x Interrupt Number Definition, according to the selected device
     *        in @ref Library_configuration_section
     */
    typedef enum IRQn
    {
        /******  Cortex-M3 Processor Exceptions Numbers ***************************************************/
        NonMaskableInt_IRQn         = -14,    /*!< 2 Non Maskable Interrupt                             */
        MemoryManagement_IRQn       = -12,    /*!< 4 Cortex-M3 Memory Management Interrupt              */
        BusFault_IRQn               = -11,    /*!< 5 Cortex-M3 Bus Fault Interrupt                      */
        UsageFault_IRQn             = -10,    /*!< 6 Cortex-M3 Usage Fault Interrupt                    */
        SVCall_IRQn                 = -5,     /*!< 11 Cortex-M3 SV Call Interrupt                       */
        DebugMonitor_IRQn           = -4,     /*!< 12 Cortex-M3 Debug Monitor Interrupt                 */
        PendSV_IRQn                 = -2,     /*!< 14 Cortex-M3 Pend SV Interrupt                       */
        SysTick_IRQn                = -1,     /*!< 15 Cortex-M3 System Tick Interrupt                   */

        /******  STM32 specific Interrupt Numbers *********************************************************/
        WWDG_IRQn                   = 0,      /*!< Window WatchDog Interrupt                            */
        PVD_IRQn                    = 1,      /*!< PVD through EXTI Line detection Interrupt            */
        TAMPER_IRQn                 = 2,      /*!< Tamper Interrupt                                     */
        RTC_IRQn                    = 3,      /*!< RTC global Interrupt                                 */
        FLASH_IRQn                  = 4,      /*!< FLASH global Interrupt                               */
        RCC_IRQn                    = 5,      /*!< RCC global Interrupt                                 */
        EXTI0_IRQn                  = 6,      /*!< EXTI Line0 Interrupt                                 */
        EXTI1_IRQn                  = 7,      /*!< EXTI Line1 Interrupt                                 */
        EXTI2_IRQn                  = 8,      /*!< EXTI Line2 Interrupt                                 */
        EXTI3_IRQn                  = 9,      /*!< EXTI Line3 Interrupt                                 */
        EXTI4_IRQn                  = 10,     /*!< EXTI Line4 Interrupt                                 */
        DMA1_Channel1_IRQn          = 11,     /*!< DMA1 Channel 1 global Interrupt                      */
        DMA1_Channel2_IRQn          = 12,     /*!< DMA1 Channel 2 global Interrupt                      */
        DMA1_Channel3_IRQn          = 13,     /*!< DMA1 Channel 3 global Interrupt                      */
        DMA1_Channel4_IRQn          = 14,     /*!< DMA1 Channel 4 global Interrupt                      */
        DMA1_Channel5_IRQn          = 15,     /*!< DMA1 Channel 5 global Interrupt                      */
        DMA1_Channel6_IRQn          = 16,     /*!< DMA1 Channel 6 global Interrupt                      */
        DMA1_Channel7_IRQn          = 17,     /*!< DMA1 Channel 7 global Interrupt                      */

#line 221 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 242 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 270 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 296 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 341 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 381 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"

#line 426 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Project\\STM32F10x_StdPeriph_Template\\EWARM\\..\\..\\..\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\stm32f10x.h"


                                                                                      ADC1_2_IRQn                 = 18,     /*!< ADC1 and ADC2 global Interrupt                       */
                                                                                      CAN1_TX_IRQn                = 19,     /*!< USB Device High Priority or CAN1 TX Interrupts       */
                                                                                      CAN1_RX0_IRQn               = 20,     /*!< USB Device Low Priority or CAN1 RX0 Interrupts       */
                                                                                      CAN1_RX1_IRQn               = 21,     /*!< CAN1 RX1 Interrupt                                   */
                                                                                      CAN1_SCE_IRQn               = 22,     /*!< CAN1 SCE Interrupt                                   */
                                                                                      EXTI9_5_IRQn                = 23,     /*!< External Line[9:5] Interrupts                        */
                                                                                      TIM1_BRK_IRQn               = 24,     /*!< TIM1 Break Interrupt                                 */
                                                                                      TIM1_UP_IRQn                = 25,     /*!< TIM1 Update Interrupt                                */
                                                                                      TIM1_TRG_COM_IRQn           = 26,     /*!< TIM1 Trigger and Commutation Interrupt               */
                                                                                      TIM1_CC_IRQn                = 27,     /*!< TIM1 Capture Compare Interrupt                       */
                                                                                      TIM2_IRQn                   = 28,     /*!< TIM2 global Interrupt                                */
                                                                                      TIM3_IRQn                   = 29,     /*!< TIM3 global Interrupt                                */
                                                                                      TIM4_IRQn                   = 30,     /*!< TIM4 global Interrupt                                */
                                                                                      I2C1_EV_IRQn                = 31,     /*!< I2C1 Event Interrupt                                 */
                                                                                      I2C1_ER_IRQn                = 32,     /*!< I2C1 Error Interrupt                                 */
                                                                                      I2C2_EV_IRQn                = 33,     /*!< I2C2 Event Interrupt                                 */
                                                                                      I2C2_ER_IRQn                = 34,     /*!< I2C2 Error Interrupt                                 */
                                                                                      SPI1_IRQn                   = 35,     /*!< SPI1 global Interrupt                                */
                                                                                      SPI2_IRQn                   = 36,     /*!< SPI2 global Interrupt                                */
                                                                                      USART1_IRQn                 = 37,     /*!< USART1 global Interrupt                              */
                                                                                      USART2_IRQn                 = 38,     /*!< USART2 global Interrupt                              */
                                                                                      USART3_IRQn                 = 39,     /*!< USART3 global Interrupt                              */
                                                                                      EXTI15_10_IRQn              = 40,     /*!< External Line[15:10] Interrupts                      */
                                                                                      RTCAlarm_IRQn               = 41,     /*!< RTC Alarm through EXTI Line Interrupt                */
                                                                                      OTG_FS_WKUP_IRQn            = 42,     /*!< USB OTG FS WakeUp from suspend through EXTI Line Interrupt */
                                                                                      TIM5_IRQn                   = 50,     /*!< TIM5 global Interrupt                                */
                                                                                      SPI3_IRQn                   = 51,     /*!< SPI3 global Interrupt                                */
                                                                                      UART4_IRQn                  = 52,     /*!< UART4 global Interrupt                               */
                                                                                      UART5_IRQn                  = 53,     /*!< UART5 global Interrupt                               */
                                                                                      TIM6_IRQn                   = 54,     /*!< TIM6 global Interrupt                                */
                                                                                      TIM7_IRQn                   = 55,     /*!< TIM7 global Interrupt                                */
                                                                                      DMA2_Channel1_IRQn          = 56,     /*!< DMA2 Channel 1 global Interrupt                      */
                                                                                      DMA2_Channel2_IRQn          = 57,     /*!< DMA2 Channel 2 global Interrupt                      */
                                                                                      DMA2_Channel3_IRQn          = 58,     /*!< DMA2 Channel 3 global Interrupt                      */
                                                                                      DMA2_Channel4_IRQn          = 59,     /*!< DMA2 Channel 4 global Interrupt                      */
                                                                                      DMA2_Channel5_IRQn          = 60,     /*!< DMA2 Channel 5 global Interrupt                      */
                                                                                      ETH_IRQn                    = 61,     /*!< Ethernet global Interrupt                            */
                                                                                      ETH_WKUP_IRQn               = 62,     /*!< Ethernet Wakeup through EXTI line Interrupt          */
                                                                                      CAN2_TX_IRQn                = 63,     /*!< CAN2 TX Interrupt                                    */
                                                                                      CAN2_RX0_IRQn               = 64,     /*!< CAN2 RX0 Interrupt                                   */
                                                                                      CAN2_RX1_IRQn               = 65,     /*!< CAN2 RX1 Interrupt                                   */
                                                                                      CAN2_SCE_IRQn               = 66,     /*!< CAN2 SCE Interrupt                                   */
                                                                                      OTG_FS_IRQn                 = 67      /*!< USB OTG FS global Interrupt                          */

                                                                                          }
                                                                                          IRQn_Type;

    /**
      * @}
      */

#line 1 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\core_cm3.h"
/**************************************************************************//**
 * @file     core_cm3.h
 * @brief    CMSIS Cortex-M3 Core Peripheral Access Layer Header File
 * @version  V3.01
 * @date     22. March 2012
 *
 * @note
 * Copyright (C) 2009-2012 ARM Limited. All rights reserved.
 *
 * @par
 * ARM Limited (ARM) is supplying this software for use with Cortex-M
 * processor based microcontrollers.  This file can be freely distributed
 * within development tools that are supporting such ARM based processors.
 *
 * @par
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * ARM SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 ******************************************************************************/

 #pragma system_include  /* treat file as system include file for MISRA check */









/** \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  CMSIS violates the following MISRA-C:2004 rules:

   \li Required Rule 8.5, object/function definition in header file.<br>
     Function definitions in header files are used to allow 'inlining'.

   \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
     Unions are used for effective representation of core registers.

   \li Advisory Rule 19.7, Function-like macro defined.<br>
     Function-like macros are used to allow more efficient code.
 */


/*******************************************************************************
 *                 CMSIS definitions
 ******************************************************************************/
/** \ingroup Cortex_M3
  @{
 */

/*  CMSIS CM3 definitions */








#line 73 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\core_cm3.h"

#line 89 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\core_cm3.h"

/** __FPU_USED indicates whether an FPU is used or not. This core does not support an FPU at all
*/


#line 103 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\core_cm3.h"

#line 119 "C:\\Users\\xiao\\Desktop\\\320\302\275\250\316\304\274\376\274\320\\Libraries\\CMSIS\\CM3\\DeviceSupport\\ST\\STM32F10x\\core_cm3.h"

