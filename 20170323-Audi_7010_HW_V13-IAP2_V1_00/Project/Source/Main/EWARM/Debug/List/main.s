///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:43 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\main. /
//                    c                                                       /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\main. /
//                    c -D USE_STDPERIPH_DRIVER -D USE_STM32100B_EVAL -D      /
//                    STM32F10X_CL -lc F:\软件工程\平台正式代码001\Benze_Main /
//                    Board\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeri /
//                    ph_Template\EWARM\Debug\List\ -lA                       /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\List\ -o F:\软件工程\平台正式代码001\Benze_MainB /
//                    oard\baoma_36\benci_newC_V45\Project\STM32F10x_StdPerip /
//                    h_Template\EWARM\Debug\Obj\ --no_cse --no_unroll        /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
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
//                    \Debug\List\main.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ACC_Detect
        EXTERN AccOnCheck
        EXTERN Adjust_Source
        EXTERN BMW_AuxContrl_Task
        EXTERN BMW_KnobContrl
        EXTERN BackLight
        EXTERN CAN_turner
        EXTERN CanPowerOnCheck
        EXTERN Delay_1ms
        EXTERN GPIO_Configuration
        EXTERN GPIO_ReadInputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN GT911_adr
        EXTERN IWDG_ReloadCounter
        EXTERN InitSystem
        EXTERN LF_CanBus_FetchCmdTask
        EXTERN MCU_Init
        EXTERN MTN5_init
        EXTERN Menu_page_DrawImage
        EXTERN Navi_Cmd_Proc
        EXTERN OSD_LUT_glag
        EXTERN PWR_EnterSTOPMode
        EXTERN RTC_ClearFlag
        EXTERN RTC_GetCounter
        EXTERN RTC_GetFlagStatus
        EXTERN RTC_SetAlarm
        EXTERN RTC_WaitForLastTask
        EXTERN Read_Eerom_Data
        EXTERN Rem_SRC_long_set
        EXTERN Save_Eerom_Data
        EXTERN TW8836_init
        EXTERN Time_Cnt_Opertion
        EXTERN Touch_flag
        EXTERN Touch_on_Click
        EXTERN Touch_status
        EXTERN Touch_valide_count
        EXTERN USART_GetFlagStatus
        EXTERN USART_SendData
        EXTERN User_PositionProcess
        EXTERN User_mouse_moves
        EXTERN X_POS
        EXTERN Y_POS
        EXTERN fRadioReset
        EXTERN fSystemReset
        EXTERN gNaviCnt
        EXTERN gNaviSendFlag
        EXTERN gNaviSystemOn
        EXTERN g_src_flag1
        EXTERN g_src_flag2
        EXTERN init_touch
        EXTERN m_BMW_CAN
        EXTERN source_process_fun
        EXTERN touch_I2C_buff
        EXTERN touch_i2cBurstReadBytes
        EXTERN touch_i2cBurstWriteBytes

        PUBLIC ACC_volt_eeror
        PUBLIC CCR1_Val
        PUBLIC CCR2_Val
        PUBLIC CCR3_Val
        PUBLIC CCR4_Val
        PUBLIC CSYNC_Status
        PUBLIC CVBS_Status
        PUBLIC Can_key_cmd
        PUBLIC Can_key_cmd_meun_mainosd
        PUBLIC Can_key_cmd_meun_request
        PUBLIC Can_key_cmd_meun_subosd
        PUBLIC Canbus_power_on_id
        PUBLIC EEPROM_DATA
        PUBLIC Gps_Send_POS
        PUBLIC IWDG_load_Count
        PUBLIC Init_GlobalVariables
        PUBLIC Init_Poweron_Variables
        PUBLIC JumpAddress
        PUBLIC Jump_To_Application
        PUBLIC MainIsCvbs_ID
        PUBLIC Main_process
        PUBLIC Power_ACC_Off
        PUBLIC Power_Off
        PUBLIC Power_canbuswait_Status
        PUBLIC Power_canbuswait_count
        PUBLIC Power_off_det
        PUBLIC Poweroff_init_Status
        PUBLIC Poweroff_init_count
        PUBLIC Powerstany_Status
        PUBLIC Powerstany_count
        PUBLIC Powerwork_init_Status
        PUBLIC Powerwork_init_count
        PUBLIC PreTouchStatus
        PUBLIC Read_project
        PUBLIC System_Init
        PUBLIC System_Power_Status
        PUBLIC System_init_ok
        PUBLIC System_on
        PUBLIC System_openlogo_init_ok
        PUBLIC System_reset_auto_on
        PUBLIC System_save_ok
        PUBLIC Time_100ms_arrival
        PUBLIC Time_10ms_arrival
        PUBLIC Time_1s_arrival
        PUBLIC Time_300ms_arrival
        PUBLIC Time_500ms_arrival
        PUBLIC Time_50ms_arrival
        PUBLIC Time_5s_arrival
        PUBLIC Time_Bus_Cnt
        PUBLIC Time_minute_arrival
        PUBLIC U8Tiemr_connect_press
        PUBLIC Uart_data_temp
        PUBLIC Wait_System_On
        PUBLIC byTouchStatus
        PUBLIC byTouch_buff
        PUBLIC byTouch_moveStatus
        PUBLIC connect_press
        PUBLIC connect_press_one
        PUBLIC g_stuCurPower
        PUBLIC has_signal_Count
        PUBLIC i2ctest
        PUBLIC i2ctest2
        PUBLIC main
        PUBLIC main_signal_Status
        PUBLIC main_signal_last_Status
        PUBLIC mytest
        PUBLIC no_signal_Count
        PUBLIC pip1_signal_Status
        PUBLIC pip1_signal_last_Status
        PUBLIC pip2_signal_Status
        PUBLIC pip2_signal_last_Status
        PUBLIC sendfg
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_Template\main.c
//    1 
//    2 
//    3 /******************** (C) COPYRIGHT 2011 APTENON ********************
//    4  * File Name          : main.c
//    5  * Author             : edwin kang
//    6  * Version            : V0.0
//    7  * Date               : 09/8/2011
//    8  * Description        : Main  file.
//    9  *******************************************************************************/
//   10 #define __DUB_BACKTRACK__
//   11 #define __MAIN_C__
//   12 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute ACCCNTR g_stuCurPower
g_stuCurPower:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute union EEPROM_unit EEPROM_DATA
EEPROM_DATA:
        DS8 2048

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t System_Power_Status
System_Power_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Powerstany_Status
Powerstany_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Powerwork_init_Status
Powerwork_init_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Poweroff_init_Status
Poweroff_init_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Power_canbuswait_Status
Power_canbuswait_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute uint16_t Powerstany_count
Powerstany_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute uint16_t Powerwork_init_count
Powerwork_init_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute uint16_t Poweroff_init_count
Poweroff_init_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute uint16_t Power_canbuswait_count
Power_canbuswait_count:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t System_init_ok
System_init_ok:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t System_openlogo_init_ok
System_openlogo_init_ok:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t System_save_ok
System_save_ok:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t System_reset_auto_on
System_reset_auto_on:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Canbus_power_on_id
Canbus_power_on_id:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t MainIsCvbs_ID
MainIsCvbs_ID:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t CVBS_Status
CVBS_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t CSYNC_Status
CSYNC_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t main_signal_Status
main_signal_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t pip1_signal_Status
pip1_signal_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t pip2_signal_Status
pip2_signal_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t main_signal_last_Status
main_signal_last_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t pip1_signal_last_Status
pip1_signal_last_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t pip2_signal_last_Status
pip2_signal_last_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t has_signal_Count
has_signal_Count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t no_signal_Count
no_signal_Count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Uart_data_temp
Uart_data_temp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t ACC_volt_eeror
ACC_volt_eeror:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute uint16_t Time_Bus_Cnt
Time_Bus_Cnt:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Time_10ms_arrival
Time_10ms_arrival:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Time_50ms_arrival
Time_50ms_arrival:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Time_100ms_arrival
Time_100ms_arrival:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Time_300ms_arrival
Time_300ms_arrival:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Time_500ms_arrival
Time_500ms_arrival:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Time_1s_arrival
Time_1s_arrival:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Time_5s_arrival
Time_5s_arrival:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Time_minute_arrival
Time_minute_arrival:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t IWDG_load_Count
IWDG_load_Count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t U8Tiemr_connect_press
U8Tiemr_connect_press:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t connect_press_one
connect_press_one:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t connect_press
connect_press:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute vu16 CCR1_Val
CCR1_Val:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute vu16 CCR2_Val
CCR2_Val:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute vu16 CCR3_Val
CCR3_Val:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute vu16 CCR4_Val
CCR4_Val:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t byTouch_buff
byTouch_buff:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t byTouchStatus
byTouchStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t byTouch_moveStatus
byTouch_moveStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t PreTouchStatus
PreTouchStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Can_key_cmd_meun_mainosd
Can_key_cmd_meun_mainosd:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Can_key_cmd_meun_subosd
Can_key_cmd_meun_subosd:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Can_key_cmd
Can_key_cmd:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t Can_key_cmd_meun_request
Can_key_cmd_meun_request:
        DS8 1
//   13 //#include "Arm.h"
//   14 //#include "menu.h"
//   15 
//   16 
//   17 #if 0
//   18 #define __CAN1_USED__
//   19 /* #define __CAN2_USED__*/
//   20 
//   21 
//   22 #define RCC_APB2Periph_GPIO_CAN1	RCC_APB2Periph_GPIOA
//   23 #define GPIO_Remapping_CAN1 		GPIO_Remap1_CAN1
//   24 #define GPIO_CAN1					GPIOA
//   25 #define GPIO_Pin_CAN1_RX			GPIO_Pin_11
//   26 #define GPIO_Pin_CAN1_TX			GPIO_Pin_12
//   27 
//   28 #ifdef  __CAN1_USED__
//   29   #define CANx                       CAN1
//   30   #define GPIO_CAN                   GPIO_CAN1
//   31   #define GPIO_Remapping_CAN         GPIO_Remapping_CAN1
//   32   #define GPIO_CAN                   GPIO_CAN1
//   33   #define GPIO_Pin_CAN_RX            GPIO_Pin_CAN1_RX
//   34   #define GPIO_Pin_CAN_TX            GPIO_Pin_CAN1_TX
//   35 #else /*__CAN2_USED__*/
//   36   #define CANx                       CAN2
//   37   #define GPIO_CAN                   GPIO_CAN2
//   38   #define GPIO_Remapping_CAN             GPIO_Remap_CAN2
//   39   #define GPIO_CAN                   GPIO_CAN2
//   40   #define GPIO_Pin_CAN_RX            GPIO_Pin_CAN2_RX
//   41   #define GPIO_Pin_CAN_TX            GPIO_Pin_CAN2_TX
//   42 #endif  /* __CAN1_USED__ */
//   43 
//   44 #define KEY_PRESSED     0x01
//   45 #define KEY_NOT_PRESSED 0x00
//   46 
//   47 /* Private macro -------------------------------------------------------------*/
//   48 /* Private variables ---------------------------------------------------------*/
//   49 CAN_InitTypeDef        CAN_InitStructure;
//   50 CAN_FilterInitTypeDef  CAN_FilterInitStructure;
//   51 CanTxMsg TxMessage;
//   52 BYTE  KeyNumber = 0x0;
//   53 
//   54 /* Private function prototypes -----------------------------------------------*/
//   55 void NVIC_Config(void);
//   56 void CAN_Config(void);
//   57 
//   58 void Init_RxMes(CanRxMsg *RxMessage);
//   59 void Delay(void);
//   60 
//   61 /* Private functions ---------------------------------------------------------*/
//   62 
//   63 /**
//   64   * @brief  Main program.
//   65   * @param  None
//   66   * @retval None
//   67   */
//   68   BYTE gCanStatus=255;
//   69 int main(void)
//   70 {
//   71   /*!< At this stage the microcontroller clock setting is already configured, 
//   72        this is done through SystemInit() function which is called from startup
//   73        file (startup_stm32f10x_xx.s) before to branch to application main.
//   74        To reconfigure the default setting of SystemInit() function, refer to
//   75        system_stm32f10x.c file
//   76      */     
//   77        
//   78   /* NVIC configuration */
//   79   NVIC_Config();
//   80 
//   81   /* Configures LED 1..4 */
//   82 
//   83   
//   84   /* Configure Push button key */
//   85   //STM_EVAL_PBInit(BUTTON_KEY, BUTTON_MODE_GPIO); 
//   86    
//   87   /* CAN configuration */
//   88   CAN_Config();
//   89   
//   90   CAN_ITConfig(CANx, CAN_IT_FMP0, ENABLE);
//   91 
//   92   /* turn off all leds*/
//   93 
//   94     CAN_STB_SET();
//   95 
//   96 	 CAN_EN_SET();
//   97   /* Infinite loop */
//   98   while(1)
//   99   {
//  100          if(KeyNumber)
//  101          {
//  102                   TxMessage.Data[0] = KeyNumber;
//  103                  CAN_Transmit(CANx, &TxMessage);
//  104                  Delay();
//  105 		//KeyNumber = 0;
//  106 	 }
//  107   }
//  108 }
//  109 
//  110 /**
//  111   * @brief  Configures the CAN.
//  112   * @param  None
//  113   * @retval None
//  114   */
//  115 void CAN_Config(void)
//  116 {
//  117   GPIO_InitTypeDef  GPIO_InitStructure;
//  118   
//  119   /* GPIO clock enable */
//  120   RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
//  121 #ifdef  __CAN1_USED__
//  122   RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIO_CAN1, ENABLE);
//  123 #else /*__CAN2_USED__*/
//  124   RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIO_CAN1, ENABLE);
//  125   RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIO_CAN2, ENABLE);
//  126 #endif  /* __CAN1_USED__ */
//  127   /* Configure CAN pin: RX */
//  128   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_CAN_RX;
//  129   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
//  130   GPIO_Init(GPIO_CAN, &GPIO_InitStructure);
//  131   
//  132   /* Configure CAN pin: TX */
//  133   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_CAN_TX;
//  134   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
//  135   GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//  136   GPIO_Init(GPIO_CAN, &GPIO_InitStructure);
//  137   
//  138   //GPIO_PinRemapConfig(GPIO_Remapping_CAN , ENABLE);
//  139   
//  140   /* CANx Periph clock enable */
//  141 #ifdef  __CAN1_USED__
//  142   RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);
//  143 #else /*__CAN2_USED__*/
//  144   RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN1, ENABLE);
//  145   RCC_APB1PeriphClockCmd(RCC_APB1Periph_CAN2, ENABLE);
//  146 #endif  /* __CAN1_USED__ */
//  147   
//  148   
//  149   /* CAN register init */
//  150   CAN_DeInit(CANx);
//  151   CAN_StructInit(&CAN_InitStructure);
//  152 
//  153   /* CAN cell init */
//  154   CAN_InitStructure.CAN_TTCM = DISABLE;
//  155   CAN_InitStructure.CAN_ABOM = DISABLE;
//  156   CAN_InitStructure.CAN_AWUM = DISABLE;
//  157   CAN_InitStructure.CAN_NART = DISABLE;
//  158   CAN_InitStructure.CAN_RFLM = DISABLE;
//  159   CAN_InitStructure.CAN_TXFP = DISABLE;
//  160   CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;//CAN_Mode_Normal;//CAN_Mode_LoopBack;
//  161   
//  162   /* CAN Baudrate = 1MBps*/
//  163   CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
//  164   CAN_InitStructure.CAN_BS1 = CAN_BS1_13tq;
//  165   CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq;
//  166   CAN_InitStructure.CAN_Prescaler = 4;
//  167   gCanStatus=CAN_Init(CANx, &CAN_InitStructure);
//  168 
//  169   /* CAN filter init */
//  170 #ifdef  __CAN1_USED__
//  171   CAN_FilterInitStructure.CAN_FilterNumber = 0;
//  172 #else /*__CAN2_USED__*/
//  173   CAN_FilterInitStructure.CAN_FilterNumber = 14;
//  174 #endif  /* __CAN1_USED__ */
//  175   CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
//  176   CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
//  177   CAN_FilterInitStructure.CAN_FilterIdHigh = 0x0000;
//  178   CAN_FilterInitStructure.CAN_FilterIdLow = 0x0000;
//  179   CAN_FilterInitStructure.CAN_FilterMaskIdHigh = 0x0000;
//  180   CAN_FilterInitStructure.CAN_FilterMaskIdLow = 0x0000;
//  181   CAN_FilterInitStructure.CAN_FilterFIFOAssignment = 0;
//  182   CAN_FilterInitStructure.CAN_FilterActivation = ENABLE;
//  183   CAN_FilterInit(&CAN_FilterInitStructure);
//  184   
//  185   /* Transmit */
//  186   TxMessage.StdId = 0x321;
//  187   TxMessage.ExtId = 0x01;
//  188   TxMessage.RTR = CAN_RTR_DATA;
//  189   TxMessage.IDE = CAN_ID_STD;
//  190   TxMessage.DLC = 1;
//  191 
//  192 
//  193       GPIO_InitStructure.GPIO_Pin = CAN_EN_PIN;
//  194     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
//  195     GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
//  196     GPIO_Init(CAN_EN_PORT, &GPIO_InitStructure);
//  197     GPIO_InitStructure.GPIO_Pin = CAN_STB_PIN;
//  198     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
//  199     GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
//  200     GPIO_Init(CAN_STB_PORT, &GPIO_InitStructure);
//  201    
//  202 }
//  203 
//  204 /**
//  205   * @brief  Configures the NVIC for CAN.
//  206   * @param  None
//  207   * @retval None
//  208   */
//  209 void NVIC_Config(void)
//  210 {
//  211   NVIC_InitTypeDef  NVIC_InitStructure;
//  212 
//  213   NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);
//  214   
//  215 #ifndef STM32F10X_CL
//  216 #ifdef  __CAN1_USED__
//  217   NVIC_InitStructure.NVIC_IRQChannel = USB_LP_CAN1_RX0_IRQn;
//  218 #else  /*__CAN2_USED__*/
//  219   /* CAN2 is not implemented in the device */
//  220    #error "CAN2 is implemented only in Connectivity line devices"
//  221 #endif /*__CAN1_USED__*/
//  222 #else
//  223 #ifdef  __CAN1_USED__ 
//  224   NVIC_InitStructure.NVIC_IRQChannel = CAN1_RX0_IRQn;
//  225 #else  /*__CAN2_USED__*/
//  226   NVIC_InitStructure.NVIC_IRQChannel = CAN2_RX0_IRQn;
//  227 #endif /*__CAN1_USED__*/
//  228 
//  229 #endif /* STM32F10X_CL*/
//  230   NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0;
//  231   NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x0;
//  232   NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//  233   NVIC_Init(&NVIC_InitStructure);
//  234 }
//  235 
//  236 /**
//  237   * @brief  Initializes a Rx Message.
//  238   * @param  CanRxMsg *RxMessage
//  239   * @retval None
//  240   */
//  241 void Init_RxMes(CanRxMsg *RxMessage)
//  242 {
//  243   BYTE i = 0;
//  244 
//  245   RxMessage->StdId = 0x00;
//  246   RxMessage->ExtId = 0x00;
//  247   RxMessage->IDE = CAN_ID_STD;
//  248   RxMessage->DLC = 0;
//  249   RxMessage->FMI = 0;
//  250   for (i = 0;i < 8;i++)
//  251   {
//  252     RxMessage->Data[i] = 0x00;
//  253   }
//  254 }
//  255 
//  256 
//  257 
//  258 /**
//  259   * @brief  Delay
//  260   * @param  None
//  261   * @retval None
//  262   */
//  263 void Delay(void)
//  264 {
//  265   WORD  nTime = 0x0000;
//  266 
//  267   for(nTime = 0; nTime <0xFFF; nTime++)
//  268   {
//  269   }
//  270 }
//  271 
//  272 
//  273 #else
//  274 //#include "TW8836.h"
//  275 /*lint -e830 -e831 -e534 */ //return val
//  276 /*lint  -e525 -e725 -e539 */ //shuojin
//  277 /* Private typedef -----------------------------------------------------------*/
//  278 /* Private define ------------------------------------------------------------*/
//  279 /* Private macro -------------------------------------------------------------*/
//  280 /* Private variables ---------------------------------------------------------*/
//  281 #define ADC1_DR_Address     0x4001244C
//  282 #define USART1_DR_Base      0x40013804
//  283 #define USART2_DR_Base      0x40004404
//  284 #define I2C1_SLAVE_ADDRESS7 0xa2
//  285 
//  286 /* Private function prototypes -----------------------------------------------*/
//  287 /* Private functions ---------------------------------------------------------*/
//  288 /*******************************************************************************
//  289  * Function Name  : main
//  290  * Description    : Main program.
//  291  * Input          : None
//  292  * Output         : None
//  293  * Return         : None.
//  294  *******************************************************************************/
//  295 //BYTE System_Status;
//  296 typedef  void (*pFunction)(void);

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  297 pFunction Jump_To_Application;
Jump_To_Application:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  298 u32 JumpAddress;
JumpAddress:
        DS8 4
//  299 
//  300 #define ApplicationAddress   ((u32)0x8000000) //((u32)0x8007800)// iap size  30K

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  301 BYTE i2ctest,i2ctest2,sendfg;
i2ctest:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
i2ctest2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
sendfg:
        DS8 1
//  302 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function main
        THUMB
//  303 main(void)
//  304 {
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  305        #if 0 //miller.tao20150716
//  306 	System_Normal_ClkSetup();
//  307 	GPIO_Configuration();                                                                                                                                                             
//  308 	Main_SysTick_Config();
//  309 	TIMER_Configuration();
//  310 	//I2C_Configuration();
//  311 	#endif
//  312 	//======check wehter power on or off,S========
//  313        //Acc_PwrEnterStandyMode();
//  314        //======check wehter power on or off,E========
//  315 	MCU_Init();
          CFI FunCall MCU_Init
        BL       MCU_Init
//  316 	Read_project();
          CFI FunCall Read_project
        BL       Read_project
//  317 	System_Init();
          CFI FunCall System_Init
        BL       System_Init
//  318 
//  319 	//=====test=======
//  320 	//SYS_PowerOn() ;
//  321 	
//  322 	//CAN_PowerOn();
//  323         while(1)
//  324 	{
//  325 
//  326          IWDG_ReloadCounter();//清狗
??main_0:
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
//  327          IWDG_load_Count=0;
        LDR.W    R0,??DataTable9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  328    		//ARM_data_Process();
//  329 
//  330 
//  331 		    if(!Sys.wKnobAuxContrlTimer)
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+72]
        CMP      R0,#+0
        BNE.W    ??main_1
//  332             {
//  333              
//  334 			   if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??main_2
//  335 			  	{
//  336 			  		if(CAN_turner.flag)
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??main_3
//  337 			  			{
//  338 			  			CAN_turner.flag=0;
        LDR.W    R0,??DataTable9_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//  339 						//BMW_KnobContrl(1);
//  340 						//m_BMW_CAN.uAuxSendSn=__SN0_;
//  341 			  			}
//  342 			  	
//  343 			  		if (m_BMW_CAN.uKeyID2==BENZE_KEY_ALL_BOUNCED)
??main_3:
        LDR.W    R0,??DataTable7
        LDRH     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??main_1
//  344 					{
//  345 			  	if(CAN_turner.count>0x80)
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+129
        BCC.N    ??main_4
//  346 			  		{
//  347 			  		BMW_KnobContrl(1);
        MOVS     R0,#+1
          CFI FunCall BMW_KnobContrl
        BL       BMW_KnobContrl
//  348 					BMW_KnobContrl(2);
        MOVS     R0,#+2
          CFI FunCall BMW_KnobContrl
        BL       BMW_KnobContrl
//  349 					CAN_turner.count--;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R1, #+0]
//  350 					m_BMW_CAN.uAuxSendSn=__SN0_;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
//  351 					Sys.wKnobAuxContrlTimer=2;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+2
        STR      R1,[R0, #+72]
        B.N      ??main_5
//  352 			  		}
//  353 				else if(CAN_turner.count<0x80)
??main_4:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BCS.N    ??main_5
//  354 					{
//  355 					BMW_KnobContrl(1);
        MOVS     R0,#+1
          CFI FunCall BMW_KnobContrl
        BL       BMW_KnobContrl
//  356 					BMW_KnobContrl(3);
        MOVS     R0,#+3
          CFI FunCall BMW_KnobContrl
        BL       BMW_KnobContrl
//  357 					CAN_turner.count++;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R1, #+0]
//  358 					m_BMW_CAN.uAuxSendSn=__SN0_;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
//  359 					Sys.wKnobAuxContrlTimer=2;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+2
        STR      R1,[R0, #+72]
//  360 			  		}
//  361 			  	if(CAN_turner.count2>0x80)
??main_5:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+129
        BCC.N    ??main_6
//  362 			  		{
//  363 			  		BMW_KnobContrl(1);
        MOVS     R0,#+1
          CFI FunCall BMW_KnobContrl
        BL       BMW_KnobContrl
//  364 					BMW_KnobContrl(4);
        MOVS     R0,#+4
          CFI FunCall BMW_KnobContrl
        BL       BMW_KnobContrl
//  365 					CAN_turner.count2--;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R1, #+1]
//  366 					m_BMW_CAN.uAuxSendSn=__SN0_;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
//  367 					Sys.wKnobAuxContrlTimer=2;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+2
        STR      R1,[R0, #+72]
        B.N      ??main_1
//  368 			  		}
//  369 				else if(CAN_turner.count2<0x80)
??main_6:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+128
        BCS.N    ??main_1
//  370 					{
//  371 					BMW_KnobContrl(1);
        MOVS     R0,#+1
          CFI FunCall BMW_KnobContrl
        BL       BMW_KnobContrl
//  372 					BMW_KnobContrl(5);
        MOVS     R0,#+5
          CFI FunCall BMW_KnobContrl
        BL       BMW_KnobContrl
//  373 					CAN_turner.count2++;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable9_2
        STRB     R0,[R1, #+1]
//  374 					m_BMW_CAN.uAuxSendSn=__SN0_;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
//  375 					Sys.wKnobAuxContrlTimer=2;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+2
        STR      R1,[R0, #+72]
        B.N      ??main_1
//  376 			  		}
//  377 			  			}
//  378 			  	}
//  379 			  else if(m_BMW_CAN.uAuxSendSn!=__SN_END_)
??main_2:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+11]
        CMP      R0,#+30
        BEQ.N    ??main_1
//  380               {
//  381                 BMW_AuxContrl_Task();
          CFI FunCall BMW_AuxContrl_Task
        BL       BMW_AuxContrl_Task
//  382 				//BMW_KnobContrl(1);
//  383 				Sys.wKnobAuxContrlTimer=10;//50ms
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+10
        STR      R1,[R0, #+72]
//  384               }
//  385             }
//  386 	           switch(System_Power_Status)
??main_1:
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_7
        CMP      R0,#+2
        BEQ.N    ??main_8
        BCC.N    ??main_9
        CMP      R0,#+4
        BEQ.N    ??main_10
        BCC.N    ??main_11
        B.N      ??main_0
//  387 	          {
//  388 				case Power_acc_off:
//  389 					//Power_ACC_Off();
//  390 					System_Power_Status=Powerstanby;
??main_7:
        LDR.W    R0,??DataTable9_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  391 					break;
        B.N      ??main_0
//  392 				case Powerstanby:
//  393 					Wait_System_On();
??main_9:
          CFI FunCall Wait_System_On
        BL       Wait_System_On
//  394 					break;
        B.N      ??main_0
//  395 				case Powerwork_init:
//  396 					System_on();					
??main_8:
          CFI FunCall System_on
        BL       System_on
//  397 					break;
        B.N      ??main_0
//  398 				case Powerwork:
//  399 					Main_process();								
??main_11:
          CFI FunCall Main_process
        BL       Main_process
//  400 					break;
        B.N      ??main_0
//  401 				#if 0//miller.tao20150730
//  402 				case Power_canbuswait_init:
//  403 											
//  404 					break;
//  405 				#endif
//  406 				case Poweroff_init:
//  407 					Power_Off();
??main_10:
          CFI FunCall Power_Off
        BL       Power_Off
//  408 					break;
        B.N      ??main_0
          CFI EndBlock cfiBlock0
//  409 			}
//  410 
//  411 
//  412 
//  413 	  };
//  414 }
//  415 
//  416 ///////////////////////////////////////////////////////////////////
//  417 ///////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Power_off_det
        THUMB
//  418 void Power_off_det(void)
//  419 {
Power_off_det:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  420 
//  421 		if(!ACC_PIN_STATUS())//(1)// 
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??Power_off_det_0
//  422 		{
//  423 			m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+2
        STRB     R1,[R0, #+57]
//  424 			m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+2
        STRB     R1,[R0, #+58]
//  425 			m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+2
        STRB     R1,[R0, #+59]
        B.N      ??Power_off_det_1
//  426 		}
//  427 		else
//  428 		{
//  429 			if(!Sys.wPowerOnByCanTimer2)
??Power_off_det_0:
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+60]
        CMP      R0,#+0
        BNE.N    ??Power_off_det_2
//  430 			{
//  431 				if(m_BMW_CAN.AccPwr == SYSTEM_POWER_ON)
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+59]
        CMP      R0,#+2
        BNE.N    ??Power_off_det_2
//  432 				{
//  433 				   //m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
//  434 				   m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+58]
//  435 				   m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+59]
//  436 				}
//  437 			}
//  438 			
//  439 			if(!Sys.wPowerOnByCanTimer)
??Power_off_det_2:
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+56]
        CMP      R0,#+0
        BNE.N    ??Power_off_det_1
//  440 			{
//  441 				if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+57]
        CMP      R0,#+2
        BNE.N    ??Power_off_det_1
//  442 				{
//  443 				  m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
//  444 				  m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+58]
//  445 				  //m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
//  446 				}
//  447 			}
//  448 		}
//  449 		
//  450 		if(Sys.u8can_back_status==CAM_ON_from_can)
??Power_off_det_1:
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+13]
        CMP      R0,#+1
        BEQ.N    ??Power_off_det_3
//  451 			;
//  452 		else
//  453 			{
//  454 				if(m_BMW_CAN.AudioPwr == SYSTEM_POWER_OFF&&(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON))
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+58]
        CMP      R0,#+1
        BNE.N    ??Power_off_det_4
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+57]
        CMP      R0,#+2
        BNE.N    ??Power_off_det_4
//  455 				{
//  456 					System_Power_Status=Powerwork_init;
        LDR.W    R0,??DataTable9_3
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  457 					Powerwork_init_Status=Powerwork_init_wait;
        LDR.W    R0,??DataTable9_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Power_off_det_3
//  458 				}
//  459 				else if(m_BMW_CAN.AudioPwr == SYSTEM_POWER_OFF&&m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_OFF)
??Power_off_det_4:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+58]
        CMP      R0,#+1
        BNE.N    ??Power_off_det_3
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+57]
        CMP      R0,#+1
        BNE.N    ??Power_off_det_3
//  460 				{
//  461 					System_Power_Status=Poweroff_init;
        LDR.W    R0,??DataTable9_3
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  462 					Poweroff_init_Status=Poweroff_init_start;
        LDR.W    R0,??DataTable10
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  463 				}
//  464 			}
//  465 }
??Power_off_det_3:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//  466 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  467 BYTE mytest=0;
mytest:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function Main_process
        THUMB
//  468 void Main_process(void)
//  469 {
Main_process:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+8
          CFI CFA R13+32
//  470 
//  471     	//GPIO_WriteBit(GPIOB, P_PEC_CLK, (BitAction)(1-GPIO_ReadOutputDataBit(GPIOB, P_PEC_CLK)));
//  472 		//主循环时间140us  0329
//  473 	
//  474 	Time_Cnt_Opertion();
          CFI FunCall Time_Cnt_Opertion
        BL       Time_Cnt_Opertion
//  475 		
//  476 	LF_CanBus_FetchCmdTask();
          CFI FunCall LF_CanBus_FetchCmdTask
        BL       LF_CanBus_FetchCmdTask
//  477 	/*
//  478 	if(mytest)
//  479 	{
//  480             LF_FrontContrl(0,Touch_status,X_POS,Y_POS);
//  481 	    mytest =0;
//  482 	}*/
//  483 	
//  484 	if(Touch_flag)//(GPIO_ReadInputDataBit(CTOUCH_INT_PORT,CTOUCH_INT_PIN))//
        LDR.W    R0,??DataTable9_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Main_process_0
//  485 	  {
//  486 	//GPIO_WriteHigh(TFT_TOUCH_IN_PORT,MCU_TFT_PWM_pin);
//  487 	  touch_i2cBurstReadBytes(GT911_adr,0x81,0x4e, touch_I2C_buff, 6);
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        LDR.W    R3,??DataTable9_7
        MOVS     R2,#+78
        MOVS     R1,#+129
        LDR.W    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
          CFI FunCall touch_i2cBurstReadBytes
        BL       touch_i2cBurstReadBytes
//  488 	  //x_count=buff[2]|(buff[3]<<8);
//  489 	  //X_pos=x_count*800/2056;
//  490 	  //Y_count=buff[4]|(buff[5]<<8);
//  491 	  //Y_pos=Y_count*300/2056;
//  492 	 // byTouchStatus=touch_I2C_buff[0];
//  493 	  touch_I2C_buff[1]=byTouch_buff=touch_I2C_buff[0];
        LDR.W    R0,??DataTable9_7
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable9_9
        STRB     R0,[R1, #+0]
        LDR.W    R1,??DataTable9_7
        STRB     R0,[R1, #+1]
//  494 	 
//  495 		touch_I2C_buff[0]=0;//0x7f;//
        LDR.W    R0,??DataTable9_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  496 	touch_i2cBurstWriteBytes(GT911_adr,0x81,0x4e, &touch_I2C_buff[0], 1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR.W    R3,??DataTable9_7
        MOVS     R2,#+78
        MOVS     R1,#+129
        LDR.W    R0,??DataTable9_8
        LDRB     R0,[R0, #+0]
          CFI FunCall touch_i2cBurstWriteBytes
        BL       touch_i2cBurstWriteBytes
//  497 
//  498 #if 1
//  499 		{
//  500 		static WORD X_POS_count=0xffff;
//  501 		static WORD Y_POS_count=0xffff;
//  502 		BYTE x_dir=0,y_dir=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  503 		BYTE x_value=0,y_value=0;
        MOVS     R6,#+0
        MOVS     R7,#+0
//  504 		BYTE move_press=0;
        MOVS     R8,#+0
//  505 			X_POS=touch_I2C_buff[3]<<8|touch_I2C_buff[2];
        LDR.W    R0,??DataTable9_7
        LDRB     R0,[R0, #+3]
        LDR.W    R1,??DataTable9_7
        LDRB     R1,[R1, #+2]
        ORRS     R0,R1,R0, LSL #+8
        LDR.W    R1,??DataTable10_1
        STRH     R0,[R1, #+0]
//  506 			Y_POS= (touch_I2C_buff[5]<<8|touch_I2C_buff[4])*6/10;
        LDR.W    R0,??DataTable9_7
        LDRB     R0,[R0, #+5]
        LDR.W    R1,??DataTable9_7
        LDRB     R1,[R1, #+4]
        ORRS     R0,R1,R0, LSL #+8
        MOVS     R1,#+6
        MULS     R0,R1,R0
        MOVS     R1,#+10
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable10_2
        STRH     R0,[R1, #+0]
//  507 	if((byTouch_buff==0))
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Main_process_1
//  508 	 byTouchStatus=MSG_ACTION_BOUNCE;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Main_process_2
//  509 	else if(byTouch_buff==128&&(PreTouchStatus==MSG_ACTION_KEEP))
??Main_process_1:
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BNE.N    ??Main_process_3
        LDR.W    R0,??DataTable10_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Main_process_3
//  510 	byTouchStatus=MSG_ACTION_BOUNCE;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Main_process_2
//  511 	//else if(byTouch_buff==128&&(PreTouchStatus==MSG_ACTION_BOUNCE))
//  512 	//byTouchStatus=MSG_ACTION_PRESSED;
//  513 	else if(byTouch_buff==129&&(PreTouchStatus==MSG_ACTION_BOUNCE))//if(byTouchStatus==PreTouchStatus)
??Main_process_3:
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+129
        BNE.N    ??Main_process_4
        LDR.W    R0,??DataTable10_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Main_process_4
//  514 		{
//  515 	 byTouchStatus=MSG_ACTION_PRESSED;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  516 	 X_POS_count=X_POS;
        LDR.W    R0,??DataTable10_5
        LDR.W    R1,??DataTable10_1
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
//  517 	 Y_POS_count=Y_POS;
        LDR.W    R0,??DataTable10_6
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        STRH     R1,[R0, #+0]
        B.N      ??Main_process_2
//  518 		}
//  519 	else if(byTouch_buff==129)//if(byTouchStatus==PreTouchStatus)
??Main_process_4:
        LDR.W    R0,??DataTable9_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+129
        BNE.N    ??Main_process_5
//  520 		{
//  521 	 byTouchStatus=MSG_ACTION_KEEP;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B.N      ??Main_process_2
//  522 		}
//  523 	else
//  524 		{
//  525 		byTouchStatus=MSG_ACTION_BOUNCE;
??Main_process_5:
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  526 		}
//  527 #if 1
//  528 	if(byTouchStatus==MSG_ACTION_BOUNCE||byTouchStatus==MSG_ACTION_KEEP)
??Main_process_2:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Main_process_6
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.W    ??Main_process_7
//  529 		{
//  530 	if(Sys.Main_Source==SRC_CarMedia)
??Main_process_6:
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+18
        BNE.W    ??Main_process_7
//  531 		{
//  532 		if(X_POS_count!=0xffff)
        LDR.W    R0,??DataTable10_5
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65535
        CMP      R0,R1
        BEQ.W    ??Main_process_7
//  533 			{
//  534 		if(X_POS>X_POS_count)
        LDR.W    R0,??DataTable10_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_1
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??Main_process_8
//  535 			{
//  536 			if((X_POS-X_POS_count)>40)
        LDR.W    R0,??DataTable10_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_5
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+41
        BLT.N    ??Main_process_9
//  537 				{
//  538 			x_dir=TOUCHMOVERIGHT;
        MOVS     R0,#+14
        MOVS     R4,R0
//  539 			x_value=X_POS-X_POS_count;
        LDR.W    R0,??DataTable10_1
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_5
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R6,R0
        B.N      ??Main_process_9
//  540 				}
//  541 			}
//  542 		else if((X_POS_count-X_POS)>40)
??Main_process_8:
        LDR.W    R0,??DataTable10_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+41
        BLT.N    ??Main_process_9
//  543 			{
//  544 			x_dir=TOUCHMOVELEFT;
        MOVS     R0,#+13
        MOVS     R4,R0
//  545 			x_value=X_POS_count-X_POS;
        LDR.W    R0,??DataTable10_5
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_1
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R6,R0
//  546 			}
//  547 	
//  548 			if(Y_POS>Y_POS_count)
??Main_process_9:
        LDR.W    R0,??DataTable10_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??Main_process_10
//  549 			{
//  550 			if((Y_POS-Y_POS_count)>30)
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_6
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+31
        BLT.N    ??Main_process_11
//  551 				{
//  552 			y_dir=TOUCHMOVEDOWN;
        MOVS     R0,#+12
        MOVS     R5,R0
//  553 			y_value=Y_POS-Y_POS_count;
        LDR.W    R0,??DataTable10_2
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_6
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R7,R0
        B.N      ??Main_process_11
//  554 				}
//  555 			}
//  556 		else if((Y_POS_count-Y_POS)>30)
??Main_process_10:
        LDR.W    R0,??DataTable10_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+31
        BLT.N    ??Main_process_11
//  557 			{
//  558 			y_dir=TOUCHMOVEUP;
        MOVS     R0,#+11
        MOVS     R5,R0
//  559 			y_value=Y_POS_count-Y_POS;
        LDR.W    R0,??DataTable10_6
        LDRH     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_2
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R7,R0
//  560 			}
//  561 	
//  562 		if(x_dir)
??Main_process_11:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??Main_process_12
//  563 			{
//  564 			if(y_dir)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Main_process_13
//  565 				{
//  566 				if(x_value>(y_value+10))
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     R0,R7,#+10
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R0,R6
        BGE.N    ??Main_process_14
//  567 					{
//  568 					byTouch_moveStatus=x_dir;
        LDR.W    R0,??DataTable10_7
        STRB     R4,[R0, #+0]
//  569 					move_press=1;
        MOVS     R0,#+1
        MOV      R8,R0
        B.N      ??Main_process_15
//  570 					}
//  571 				else
//  572 					{
//  573 					byTouch_moveStatus=y_dir;
??Main_process_14:
        LDR.W    R0,??DataTable10_7
        STRB     R5,[R0, #+0]
//  574 					move_press=1;
        MOVS     R0,#+1
        MOV      R8,R0
        B.N      ??Main_process_15
//  575 					}
//  576 				}
//  577 			else
//  578 				{
//  579 				byTouch_moveStatus=x_dir;
??Main_process_13:
        LDR.W    R0,??DataTable10_7
        STRB     R4,[R0, #+0]
//  580 				move_press=1;
        MOVS     R0,#+1
        MOV      R8,R0
        B.N      ??Main_process_15
//  581 				}
//  582 			}
//  583 		else
//  584 			{
//  585 			if(y_dir)
??Main_process_12:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Main_process_15
//  586 				{
//  587 			byTouch_moveStatus=y_dir;
        LDR.W    R0,??DataTable10_7
        STRB     R5,[R0, #+0]
//  588 			move_press=1;
        MOVS     R0,#+1
        MOV      R8,R0
//  589 				}
//  590 			}
//  591 	if(!((byTouchStatus==MSG_ACTION_KEEP)&&(move_press==0)))
??Main_process_15:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Main_process_16
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??Main_process_7
//  592 		{
//  593 		X_POS_count=0xffff;
??Main_process_16:
        LDR.W    R0,??DataTable10_5
        MOVW     R1,#+65535
        STRH     R1,[R0, #+0]
//  594 		Y_POS_count=0xffff;
        LDR.W    R0,??DataTable10_6
        MOVW     R1,#+65535
        STRH     R1,[R0, #+0]
//  595 		}
//  596 			}
//  597 		}
//  598 		}
//  599 	#endif
//  600 
//  601 
//  602 	if(PreTouchStatus!=byTouchStatus)
??Main_process_7:
        LDR.W    R0,??DataTable10_4
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable10_3
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??Main_process_17
//  603 		{
//  604 			Touch_on_Click=1;
        LDR.W    R0,??DataTable10_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  605 			PreTouchStatus=byTouchStatus;
        LDR.W    R0,??DataTable10_4
        LDR.W    R1,??DataTable10_3
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//  606 			if(byTouchStatus==MSG_ACTION_PRESSED)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Main_process_18
//  607 			{
//  608 				if(!U8Tiemr_connect_press)
        LDR.W    R0,??DataTable10_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Main_process_19
//  609 					{
//  610 				U8Tiemr_connect_press=250;
        LDR.W    R0,??DataTable10_9
        MOVS     R1,#+250
        STRB     R1,[R0, #+0]
//  611 				connect_press_one=1;
        LDR.W    R0,??DataTable10_10
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Main_process_18
//  612 					}
//  613 				else
//  614 					{
//  615 					connect_press=1;
??Main_process_19:
        LDR.W    R0,??DataTable10_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  616 					byTouch_moveStatus=TOUCHPRESSEDDB;
        LDR.W    R0,??DataTable10_7
        MOVS     R1,#+15
        STRB     R1,[R0, #+0]
//  617 					U8Tiemr_connect_press=0;
        LDR.W    R0,??DataTable10_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  618 					connect_press_one=0;
        LDR.W    R0,??DataTable10_10
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Main_process_18
//  619 					}
//  620 					
//  621 			}
//  622 		}
//  623 	else if(byTouchStatus==MSG_ACTION_KEEP)
??Main_process_17:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Main_process_18
//  624 		{
//  625 		Touch_on_Click=1;
        LDR.W    R0,??DataTable10_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  626 
//  627 		}
//  628 /*
//  629 	if((PreTouchStatus==MSG_ACTION_BOUNCE)&&(byTouchStatus==MSG_ACTION_KEEP))
//  630 		{
//  631 	Gps_Send_POS(touch_I2C_buff[3]<<8|touch_I2C_buff[2], touch_I2C_buff[5]<<8|touch_I2C_buff[4],MSG_ACTION_PRESSED);
//  632 	Gps_Send_POS(touch_I2C_buff[3]<<8|touch_I2C_buff[2], touch_I2C_buff[5]<<8|touch_I2C_buff[4],MSG_ACTION_KEEP);
//  633 		}
//  634 	else*/
//  635 	if(Sys.Main_Source==SRC_NAVI)//&&Sys.main_osd==main_page_OSD_none)
??Main_process_18:
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??Main_process_20
//  636 		if(Sys.main_osd==main_page_OSD_font_rada||Sys.main_osd==main_page_OSD_door_info||Sys.FS_select.NAV_setup_show)
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BEQ.N    ??Main_process_21
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+52]
        CMP      R0,#+4
        BEQ.N    ??Main_process_21
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+49]
        CMP      R0,#+0
        BEQ.N    ??Main_process_22
//  637 			{
//  638 			if((touch_I2C_buff[3]<<8|touch_I2C_buff[2])>480)
??Main_process_21:
        LDR.W    R0,??DataTable9_7
        LDRB     R0,[R0, #+3]
        LDR.W    R1,??DataTable9_7
        LDRB     R1,[R1, #+2]
        ORRS     R0,R1,R0, LSL #+8
        MOVW     R1,#+481
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,R1
        BCC.N    ??Main_process_20
//  639 		Gps_Send_POS(((touch_I2C_buff[3]<<8|touch_I2C_buff[2])-480)*128/80, touch_I2C_buff[5]<<8|touch_I2C_buff[4],byTouchStatus);
        LDR.W    R0,??DataTable10_3
        LDRB     R2,[R0, #+0]
        LDR.W    R0,??DataTable9_7
        LDRB     R0,[R0, #+5]
        LDR.W    R1,??DataTable9_7
        LDRB     R1,[R1, #+4]
        ORRS     R1,R1,R0, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable9_7
        LDRB     R0,[R0, #+3]
        LDR.W    R3,??DataTable9_7
        LDRB     R3,[R3, #+2]
        ORRS     R0,R3,R0, LSL #+8
        SUBS     R0,R0,#+480
        MOVS     R3,#+128
        MULS     R0,R3,R0
        MOVS     R3,#+80
        SDIV     R0,R0,R3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall Gps_Send_POS
        BL       Gps_Send_POS
        B.N      ??Main_process_20
//  640 			}
//  641 		else
//  642 		Gps_Send_POS(touch_I2C_buff[3]<<8|touch_I2C_buff[2], touch_I2C_buff[5]<<8|touch_I2C_buff[4],byTouchStatus);
??Main_process_22:
        LDR.W    R0,??DataTable10_3
        LDRB     R2,[R0, #+0]
        LDR.W    R0,??DataTable9_7
        LDRB     R0,[R0, #+5]
        LDR.W    R1,??DataTable9_7
        LDRB     R1,[R1, #+4]
        ORRS     R1,R1,R0, LSL #+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable9_7
        LDRB     R0,[R0, #+3]
        LDR.W    R3,??DataTable9_7
        LDRB     R3,[R3, #+2]
        ORRS     R0,R3,R0, LSL #+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall Gps_Send_POS
        BL       Gps_Send_POS
//  643 
//  644 
//  645 	
//  646 	Touch_flag=0;
??Main_process_20:
        LDR.W    R0,??DataTable9_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  647 	}
//  648 #endif
//  649 	  }
//  650 	if(Touch_on_Click)//(!((PreTouchStatus==MSG_ACTION_BOUNCE)&&(byTouchStatus==MSG_ACTION_BOUNCE)))
??Main_process_0:
        LDR.W    R0,??DataTable10_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Main_process_23
//  651 		{
//  652 		//if((PreTouchStatus==MSG_ACTION_BOUNCE)&&(byTouchStatus==MSG_ACTION_KEEP))
//  653 		//	User_PositionProcess(X_POS,Y_POS,MSG_ACTION_PRESSED);
//  654 		//else
//  655 			User_PositionProcess(X_POS,Y_POS,byTouchStatus);
        LDR.W    R0,??DataTable10_3
        LDRB     R2,[R0, #+0]
        LDR.W    R0,??DataTable10_2
        LDRH     R1,[R0, #+0]
        LDR.W    R0,??DataTable10_1
        LDRH     R0,[R0, #+0]
          CFI FunCall User_PositionProcess
        BL       User_PositionProcess
//  656 	Touch_on_Click=0;
        LDR.W    R0,??DataTable10_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  657 		}
//  658 	
//  659 			User_mouse_moves();
??Main_process_23:
          CFI FunCall User_mouse_moves
        BL       User_mouse_moves
//  660 #if 0
//  661 {
//  662 	static BYTE count_byte=0;
//  663 	extern menu_sitem_info_t menu_logo_page_items[];
//  664 	//if(count_byte)
//  665 		{
//  666 		
//  667 		IR_HD_StartIrSend(0x02);
//  668 		//MTN5_i2c_SendByte(count_byte);
//  669 		Delay_1ms(2000);
//  670 		//count_byte=0;
//  671 	
//  672 		}
//  673 #if 0
//  674 	switch(count_byte)
//  675 		{
//  676 		case 1:
//  677 			count_byte=0;
//  678 			Menu_page_DrawImage(main_page_OSD_Home,1);
//  679 	//MenuDemo(menu_logo_page_items[0]);
//  680 	break;
//  681 	case 2:
//  682 	//MenuDemo(menu_logo_page_items[1]);
//  683 	count_byte=0;
//  684 	//Menu_page_DrawImage(main_page_OSD_Home,2);
//  685 	Menu_page_DrawImage(main_page_OSD_door_info,sub_page_OSD_back_lid);
//  686 	//MenuDemo_noLUT(menu_logo_page_items[10]);
//  687 	break;
//  688 		case 3:
//  689 	//MenuDemo(menu_logo_page_items[1]);
//  690 	count_byte=0;
//  691 	Menu_page_DrawImage(main_page_OSD_air_info,0);
//  692 	//MenuDemo_noLUT(menu_logo_page_items[10]);
//  693 	break;
//  694 		case 4:
//  695 	//MenuDemo(menu_logo_page_items[1]);
//  696 	count_byte=0;
//  697 	Menu_page_DrawImage(main_page_OSD_back_rada,0);
//  698 	//MenuDemo_noLUT(menu_logo_page_items[10]);
//  699 	break;
//  700 		case 5:
//  701 	//MenuDemo(menu_logo_page_items[1]);
//  702 	count_byte=0;
//  703 	Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup1_main);
//  704 	//MenuDemo_noLUT(menu_logo_page_items[10]);
//  705 	break;
//  706 		case 6:
//  707 	//MenuDemo(menu_logo_page_items[1]);
//  708 	count_byte=0;
//  709 	Menu_page_DrawImage(main_page_OSD_logo,0);
//  710 	//MenuDemo_noLUT(menu_logo_page_items[10]);
//  711 	break;
//  712 		case 7:
//  713 	//MenuDemo(menu_logo_page_items[1]);
//  714 	count_byte=0;
//  715 	Menu_page_DrawImage(main_page_OSD_door_info,sub_page_OSD_LR_door);
//  716 	//MenuDemo_noLUT(menu_logo_page_items[10]);
//  717 	break;
//  718 		}
//  719 	
//  720 #endif
//  721 }
//  722 #endif
//  723 
//  724 	source_process_fun();
          CFI FunCall source_process_fun
        BL       source_process_fun
//  725 
//  726 	Power_off_det();
          CFI FunCall Power_off_det
        BL       Power_off_det
//  727     Navi_Cmd_Proc();
          CFI FunCall Navi_Cmd_Proc
        BL       Navi_Cmd_Proc
//  728 		
//  729 }
        POP      {R0,R1,R4-R8,PC}  ;; return
          CFI EndBlock cfiBlock2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
??X_POS_count:
        DATA
        DC16 65535

        SECTION `.data`:DATA:REORDER:NOROOT(1)
??Y_POS_count:
        DATA
        DC16 65535

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Power_ACC_Off
        THUMB
//  730 void Power_ACC_Off(void)
//  731 {	
Power_ACC_Off:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  732 
//  733 	
//  734 	if(AccOnCheck()==TRUE)
          CFI FunCall AccOnCheck
        BL       AccOnCheck
        CMP      R0,#+1
        BNE.N    ??Power_ACC_Off_0
//  735 	{
//  736 		IWDG_ReloadCounter();//清狗
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
//  737 		//MCU_Init();
//  738 		//ACC_Detect();
//  739 		//Delay_1ms(3000);//
//  740 		/*RemValue=NULL;
//  741 		for(i=0;i<200;i++)
//  742 		{
//  743 			key_scan();
//  744 			Delay_1ms(50);
//  745 			if(RemValue!=NULL)
//  746 				break;
//  747 		}*/
//  748 		//WaveDataLength=0;
//  749 		 //SysTick_ITConfig(ENABLE);
//  750 		 if(System_Power_Status==Powerwork)
        LDR.W    R0,??DataTable9_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??Power_ACC_Off_1
//  751 		 	Canbus_power_on_id=0;
        LDR.W    R0,??DataTable10_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  752 		 
//  753 		System_Power_Status=Powerstanby;
??Power_ACC_Off_1:
        LDR.W    R0,??DataTable9_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  754 		Powerstany_Status=Powerstanby_start;
        LDR.W    R0,??DataTable10_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Power_ACC_Off_2
//  755 	}	
//  756 	else
//  757 	{
//  758 		//UART_VCR_PosCmd_Send(SEND_VCR_GETPOS_STOP);//(SEND_VCR_GETPOS_GET);		//	LZS	2012-9-17
//  759 		//Cambox_UartSend(Cambox_Key, STOP_RECORD);			//	LZS
//  760 		Delay_1ms(10);
??Power_ACC_Off_0:
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  761 		//Cambox_UartSend(Cambox_Key, STOP_RECORD);
//  762 
//  763 		//RCC_Close();
//  764 		//GPIO_Off_Init();
//  765                #if 0//miller.tao20150709
//  766 		EXIT_Control(INT_CANBUS_UART1,disable);
//  767 		EXIT_Control(INT_DTVGOD_UART2,disable);
//  768 		EXIT_Control(INT_TMC_UART3,disable);
//  769 		EXIT_Control(INT_ARM_UART4,disable);
//  770 		EXIT_Control(INT_DVD_UART5,disable);
//  771 		EXIT_Control(INT_RDS_CLK,disable);
//  772 		EXIT_Control(INT_REMOTE,disable);
//  773 		EXIT_Control(INT_CANBUS_IR,disable);
//  774 		EXIT_Control(INT_ENCODE,disable);
//  775 		#endif
//  776 		//需要关闭ADC DAC
//  777 
//  778 		fSystemReset=0;
        LDR.W    R0,??DataTable10_14
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  779 		fRadioReset=0;
        LDR.W    R0,??DataTable10_15
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  780                //=========miller.tao add 20150730,S===========
//  781                m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
//  782 	       m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_OFF;//Miller.Tao20141104
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+60]
//  783 	       m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+58]
//  784 	       m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
        LDR.W    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+59]
//  785 	    //==========miller.tao add 20150730,E===========
//  786 		while(1)
//  787 		{
//  788 			    /* Wait till RTC Second event occurs */
//  789 			    RTC_ClearFlag(RTC_FLAG_SEC);
??Power_ACC_Off_3:
        MOVS     R0,#+1
          CFI FunCall RTC_ClearFlag
        BL       RTC_ClearFlag
//  790 			    while(RTC_GetFlagStatus(RTC_FLAG_SEC) == RESET);
??Power_ACC_Off_4:
        MOVS     R0,#+1
          CFI FunCall RTC_GetFlagStatus
        BL       RTC_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Power_ACC_Off_4
//  791 
//  792 			    /* Alarm in 3 second */
//  793 			    RTC_SetAlarm(RTC_GetCounter()+ 1);
          CFI FunCall RTC_GetCounter
        BL       RTC_GetCounter
        ADDS     R0,R0,#+1
          CFI FunCall RTC_SetAlarm
        BL       RTC_SetAlarm
//  794 			    /* Wait until last write operation on RTC registers has finished */
//  795 			    RTC_WaitForLastTask();
          CFI FunCall RTC_WaitForLastTask
        BL       RTC_WaitForLastTask
//  796 			   IWDG_ReloadCounter();//清狗
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
//  797 
//  798 				 /* Request to enter STOP mode with regulator in low power mode*/
//  799 				PWR_EnterSTOPMode(PWR_Regulator_LowPower, PWR_STOPEntry_WFI);	//miller.tao20150801
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall PWR_EnterSTOPMode
        BL       PWR_EnterSTOPMode
//  800 			
//  801 		 	 //SysTick_ITConfig(DISABLE);
//  802 			  /* Request to enter STANDBY mode (Wake Up flag is cleared in PWR_EnterSTANDBYMode function) */
//  803 			// PWR_EnterSTANDBYMode();
//  804 	  	  	/* Request to enter STANDBY mode (Wake Up flag is cleared in PWR_EnterSTANDBYMode function) */
//  805 	  	  	//PWR_EnterSTANDBYMode();
//  806 
//  807 			 #if 0 //miller.tao20150730
//  808 			 /////////////////////////////////////////////////
//  809 			   CAN_PowerOn();
//  810 			    g_stuCurPower.wPowerWamkeupTimer = 1000;
//  811 			     while(1)
//  812                             {
//  813       
//  814       
//  815       
//  816 				        //CAN_STB_SET();
//  817 				        //CAN_EN_SET();
//  818 				        
//  819 				        if(CAN_GetFlagStatus(CAN1, CAN_FLAG_FMP0) == SET || CAN_GetFlagStatus(CAN1, CAN_FLAG_FF0) == SET)
//  820 				        {
//  821 					            CAN_Receive(CAN1, CAN_FIFO0, &RxMessage);
//  822 								
//  823 						    LF_CanBus_PowerOn(RxMessage);
//  824 
//  825 					            CAN_ClearFlag(CAN1, CAN_FLAG_FMP0);
//  826 					            CAN_ClearFlag(CAN1, CAN_FLAG_FF0);
//  827 
//  828 				        }
//  829 				        if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
//  830 				            break;
//  831 
//  832 				        if(!g_stuCurPower.wPowerWamkeupTimer)
//  833 				            break;
//  834 
//  835 			   }
//  836 
//  837 			  if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
//  838 				            break;
//  839                          /////////////////////////////////////////////////
//  840 			 #endif
//  841 
//  842 			//if((ACC_Detect()==TRUE)&&(BatResetMode==BAT_NORMAL))
//  843 			if((ACC_Detect()==TRUE))
          CFI FunCall ACC_Detect
        BL       ACC_Detect
        CMP      R0,#+1
        BNE.N    ??Power_ACC_Off_3
//  844 			 	break;
//  845 		}
//  846 	        IWDG_ReloadCounter();//清狗
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
//  847 		//SYSCLKConfig_STOP();
//  848 		GPIO_Configuration();
          CFI FunCall GPIO_Configuration
        BL       GPIO_Configuration
//  849 		//GPIO_On_Init();
//  850 		//========miller.tao20150731=================
//  851 	       if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+57]
        CMP      R0,#+2
        BNE.N    ??Power_ACC_Off_5
//  852 	       	{
//  853                        		System_Power_Status=Powerstanby;
        LDR.W    R0,??DataTable9_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  854 		               Powerstany_Status=Powerstanby_start;
        LDR.W    R0,??DataTable10_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  855 		 }
//  856 		fSystemReset=0;
??Power_ACC_Off_5:
        LDR.W    R0,??DataTable10_14
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  857 		fRadioReset=0;
        LDR.W    R0,??DataTable10_15
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  858 	}
//  859     	//GPIO_WriteBit(GPIOB, P_PEC_CLK, (BitAction)(1-GPIO_ReadOutputDataBit(GPIOB, P_PEC_CLK)));//TEST
//  860 	//PWR_EnterSTOPMode(PWR_Regulator_LowPower, PWR_STOPEntry_WFI);
//  861 				
//  862 }
??Power_ACC_Off_2:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Wait_System_On
        THUMB
//  863 void Wait_System_On(void)
//  864 {	
Wait_System_On:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  865 	//BYTE i;
//  866 
//  867 	switch(Powerstany_Status)
        LDR.W    R0,??DataTable10_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Wait_System_On_0
        CMP      R0,#+2
        BEQ.N    ??Wait_System_On_1
        BCC.N    ??Wait_System_On_2
        B.N      ??Wait_System_On_3
//  868 	{
//  869 		case Powerstanby_start:
//  870 			//GPIO_Off_Init();
//  871 			
//  872 			CAN_STB_SET() ;
??Wait_System_On_0:
        MOV      R1,#+512
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  873 			CAN_EN_SET();
        MOV      R1,#+1024
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  874 			g_stuCurPower.wPowerWamkeupTimer=2000;
        LDR.W    R0,??DataTable10_16
        MOV      R1,#+2000
        STRH     R1,[R0, #+14]
//  875 
//  876 			#if 1//miller.tao20150801
//  877                         //SYS_PowerOff() ;
//  878 			BackLight(0);
        MOVS     R0,#+0
          CFI FunCall BackLight
        BL       BackLight
//  879 			#endif
//  880 			System_init_ok=0;
        LDR.W    R0,??DataTable10_17
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  881 			Powerstany_Status=Powerstanby_ok;
        LDR.W    R0,??DataTable10_13
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  882 			Delay_1ms(1000);
        MOV      R0,#+1000
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  883 			//RemValue=NULL;			
//  884 			break;
        B.N      ??Wait_System_On_3
//  885 		case Powerstanby_ok:
//  886 			 while(1)
//  887     			{
//  888     			
//  889 				if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
??Wait_System_On_2:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+57]
        CMP      R0,#+2
        BEQ.N    ??Wait_System_On_4
//  890 					break;
//  891 			if(!g_stuCurPower.wPowerWamkeupTimer)
??Wait_System_On_5:
        LDR.W    R0,??DataTable10_16
        LDRH     R0,[R0, #+14]
        CMP      R0,#+0
        BEQ.N    ??Wait_System_On_4
//  892 				break;
//  893 			if(!ACC_PIN_STATUS())
??Wait_System_On_6:
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??Wait_System_On_2
//  894 				break;
//  895 			 	}
//  896 
//  897 
//  898 					System_Power_Status=Powerwork_init;
??Wait_System_On_4:
        LDR.W    R0,??DataTable9_3
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  899 					Powerwork_init_Status=Powerwork_init_start;
        LDR.W    R0,??DataTable9_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  900 
//  901 					if(!ACC_PIN_STATUS())
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??Wait_System_On_7
//  902 						return;
//  903 
//  904 			if(m_BMW_CAN.benze_Pwr_acc != SYSTEM_POWER_ON)
??Wait_System_On_8:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+57]
        CMP      R0,#+2
        BEQ.N    ??Wait_System_On_9
//  905 			 {
//  906 				 //----------------------------before  enter standby to close clk
//  907 				 //System_Standby_Reset_ClkSetup();
//  908 				 //SYS_PowerOff();
//  909 				 //GPIO_DeInit(GPIOA);
//  910 				 //GPIO_DeInit(GPIOB);
//  911 				 //GPIO_DeInit(GPIOC);
//  912 				// GPIO_DeInit(GPIOD);
//  913 				 //GPIO_DeInit(GPIOE);//Miller.Tao
//  914 				 //GPIO_DeInit(GPIOF);
//  915 				 //GPIO_DeInit(GPIOG);
//  916 				// CAN_STB_RESET();
//  917 				// CAN_EN_RESET();
//  918 
//  919 				 
//  920         #if 1
//  921 			CAN_STB_SET();
        MOV      R1,#+512
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  922 			CAN_EN_SET();
        MOV      R1,#+1024
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  923 			Delay_1ms(100);
        MOVS     R0,#+100
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  924 			CAN_EN_RESET();
        MOV      R1,#+1024
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  925 			CAN_STB_RESET();
        MOV      R1,#+512
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  926 			Delay_1ms(100);
        MOVS     R0,#+100
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  927 			CAN_EN_SET();
        MOV      R1,#+1024
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  928 			Delay_1ms(50);
        MOVS     R0,#+50
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  929 			CAN_EN_RESET();
        MOV      R1,#+1024
        LDR.W    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  930 #endif
//  931 				 //-----------------------------
//  932 			 
//  933 				// PWR_EnterSTANDBYMode();
//  934 			 }
//  935 									
//  936 			break;
??Wait_System_On_9:
        B.N      ??Wait_System_On_3
//  937 		case Powerstanby_exit:
//  938 			break;
//  939 	}
//  940 }
??Wait_System_On_1:
??Wait_System_On_3:
??Wait_System_On_7:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Power_Off
        THUMB
//  941 void Power_Off(void)
//  942 {
Power_Off:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  943 	//BYTE i;
//  944 
//  945 	switch(Poweroff_init_Status)
        LDR.W    R0,??DataTable10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Power_Off_0
        CMP      R0,#+2
        BEQ.N    ??Power_Off_1
        BCC.N    ??Power_Off_2
        B.N      ??Power_Off_3
//  946 	{
//  947 		case Poweroff_init_start:
//  948 			//HARD_MUTE_ON();
//  949 			//WavePlayer_Warning(warn_off_type);			
//  950 
//  951 			System_save_ok=0;
??Power_Off_0:
        LDR.W    R0,??DataTable10_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  952 			//UART_arm_ACC_Send(ACC_ON,POWER_OFF);
//  953 			
//  954 			//HARD_STANBY_ON();
//  955 
//  956 			//UART_SRC_MENU_Send(Sys.Main_Source,Poweroff_Page);							
//  957 			//WritePannelData(Pannel_DTV_888_type);	
//  958 			//Clear_all_OSD_PIP();	
//  959 			//if(Sys.canbus_type==benz_b200_cantype)
//  960 			//Canbus_send_data(canbus_Disp_poweroff," ");
//  961 			
//  962 			//Draw_offMenu();
//  963 	
//  964 			/*if(Sys.can_type!=tuguan_cantype)	
//  965 			{
//  966 				Delay_1ms(200);	
//  967 				Canbus_send_data(canbus_off,"off");
//  968 				Delay_1ms(200);	
//  969 				Canbus_send_data(canbus_off,"off");	
//  970 			}*/
//  971 			Poweroff_init_Status=Poweroff_init_exit;
        LDR.W    R0,??DataTable10
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  972 			Poweroff_init_count=1;//等待ARM记忆			
        LDR.W    R0,??DataTable10_19
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
//  973 			break;
        B.N      ??Power_Off_3
//  974 		case Poweroff_init_ok:		
//  975 			if(Poweroff_init_count==0)
??Power_Off_2:
        LDR.W    R0,??DataTable10_19
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Power_Off_4
//  976 				Poweroff_init_Status=Poweroff_init_exit;
        LDR.W    R0,??DataTable10
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B.N      ??Power_Off_5
//  977 			else if(System_save_ok==1)
??Power_Off_4:
        LDR.W    R0,??DataTable10_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Power_Off_5
//  978 				Poweroff_init_Status=Poweroff_init_exit;			
        LDR.W    R0,??DataTable10
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  979 			break;
??Power_Off_5:
        B.N      ??Power_Off_3
//  980 		case Poweroff_init_exit:
//  981 			
//  982 			Save_Eerom_Data();	
??Power_Off_1:
          CFI FunCall Save_Eerom_Data
        BL       Save_Eerom_Data
//  983             BackLight(0);
        MOVS     R0,#+0
          CFI FunCall BackLight
        BL       BackLight
//  984 			Delay_1ms(100);//关屏后延时3秒关电，以保证系统的数据保存 20121105
        MOVS     R0,#+100
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  985 			//IWDG_ReloadCounter();//清狗
//  986 			//NVIC_SystemReset();
//  987 			//GPIO_ResetBits(GPIOC, P_DISP_PWR);
//  988 			 //GPIO_SetBits(GPIOB, P_ARM_RST);	 
//  989 			//#ifdef	ADAU1401_EN
//  990 			//GPIO_SetBits(GPIOC, P_MAIN_PWR);
//  991 			//#else
//  992 			//GPIO_ResetBits(GPIOC, P_MAIN_PWR);
//  993 			//#endif
//  994 			// GPIO_SetBits(GPIOD, P_TW8823_RST);
//  995 			System_Power_Status=Powerstanby;
        LDR.N    R0,??DataTable9_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  996 			Powerstany_Status=Powerstanby_start;	
        LDR.W    R0,??DataTable10_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  997 			//EXIT_Control(INT_RDS_CLK,DISABLE);
//  998 			//EXIT_Control(INT_ENCODE,DISABLE);
//  999 			
// 1000 
// 1001 			
// 1002 			//EXIT_Control(INT_DTVGOD_UART2,DISABLE);
// 1003 			//EXIT_Control(INT_TMC_UART3,DISABLE);
// 1004 			//EXIT_Control(INT_ARM_UART4,DISABLE);
// 1005 			//EXIT_Control(INT_DVD_UART5,DISABLE);	
// 1006 
// 1007 			break;
// 1008 	}	
// 1009 
// 1010 }
??Power_Off_3:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function System_on
        THUMB
// 1011 void  System_on(void)
// 1012 {
System_on:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1013 	WORD i;
// 1014 	//Byte light;
// 1015 
// 1016 	//light=0;
// 1017 	switch(Powerwork_init_Status)
        LDR.N    R0,??DataTable9_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??System_on_0
        CMP      R0,#+2
        BEQ.W    ??System_on_1
        BCC.N    ??System_on_2
        CMP      R0,#+4
        BEQ.W    ??System_on_3
        BCC.W    ??System_on_4
        B.N      ??System_on_5
// 1018 	{
// 1019 		case Powerwork_init_start:
// 1020 			//HARD_MUTE_ON();
// 1021 			// GPIO_SetBits(GPIOD, P_TW8823_RST);//test
// 1022 			//Delay_1ms(2000);
// 1023 			//EXIT_Control(INT_ARM_UART4,ENABLE);
// 1024 			//GPIO_On_Init();		
// 1025 	
// 1026 			
// 1027 			//Init_Poweron_Variables();	
// 1028 			//PANEL_TYPE=Panelhannstar07_DT;	 //test
// 1029 			//Pannel_include();			
// 1030 			 //GPIO_SetBits(GPIOD, P_STBY);
// 1031 			// GPIO_SetBits(GPIOD, P_MUTE_ZONE);
// 1032 			// GPIO_ResetBits(GPIOD, P_MUTE);
// 1033 			 #if 1 //miller.tao20150801
// 1034 		         SYS_PowerOn() ;
??System_on_0:
        MOV      R1,#+8192
        LDR.W    R0,??DataTable10_20  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
// 1035 			 CAN_STB_SET() ;
        MOV      R1,#+512
        LDR.N    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
// 1036 			 CAN_EN_SET();
        MOV      R1,#+1024
        LDR.N    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
// 1037 			 TW8836_PowerOff();
        MOVS     R1,#+32
        LDR.W    R0,??DataTable10_21  ;; 0x40010c00
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
// 1038 			 Delay_1ms(50);
        MOVS     R0,#+50
          CFI FunCall Delay_1ms
        BL       Delay_1ms
// 1039 			 TW8836_PowerOn();
        MOVS     R1,#+32
        LDR.W    R0,??DataTable10_21  ;; 0x40010c00
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
// 1040 			 POWER_CarRecOn();//miller.tao20160324
        MOVS     R1,#+64
        LDR.W    R0,??DataTable10_20  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
// 1041 			#endif
// 1042 			 //Delay_1ms(1000);
// 1043 			System_openlogo_init_ok=0;
        LDR.W    R0,??DataTable10_22
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1044 			
// 1045 			 
// 1046 			//Sys.canbus_type=tuguan_cantype;//tuguan_cantype;//test
// 1047 
// 1048 						 
// 1049 			
// 1050 			Delay_1ms(500);
        MOV      R0,#+500
          CFI FunCall Delay_1ms
        BL       Delay_1ms
// 1051 			 init_touch();
          CFI FunCall init_touch
        BL       init_touch
// 1052 			 IWDG_ReloadCounter();//清狗
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
// 1053 			 IWDG_load_Count=0;
        LDR.N    R0,??DataTable9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1054 			 TW8836_init();
          CFI FunCall TW8836_init
        BL       TW8836_init
// 1055 			 MTN5_init();
          CFI FunCall MTN5_init
        BL       MTN5_init
// 1056 			 InitSystem();
          CFI FunCall InitSystem
        BL       InitSystem
// 1057 
// 1058 			// Adjust_Source(SRC_NAVI);
// 1059 			if(System_openlogo_init_ok == 1)
// 1060 			{//等待ARM LOGO初始化完成
// 1061 
// 1062 			}	
// 1063 			//Source_init(SRC_Radio);//倒车无图像的问题；
// 1064 			//HIT_Startup_Seq();//tiger 0910
// 1065 //#ifdef HIT2_TUNER
// 1066 
// 1067 			//Delay_1ms(1000);	
// 1068 			IWDG_ReloadCounter();//清狗
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
// 1069 			IWDG_load_Count=0;
        LDR.N    R0,??DataTable9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1070 //#else
// 1071 			//hit_startup_fsm=HIT_STARTUP_REQ;
// 1072 			//HIT_Startup_Seq_Func();//tiger 0910
// 1073 			//HIT_Set_IIC_Adress();
// 1074 //#endif			
// 1075 
// 1076 
// 1077 			
// 1078 				//  BackLight(1);
// 1079 
// 1080 	              //  key_color_function(Sys.key_color);
// 1081 				//	Menu_page_DrawImage(0,0);
// 1082 			//	OSD_LUT_glag=1;
// 1083 				//	Menu_page_DrawImage(main_page_OSD_logo,0);
// 1084 					
// 1085 					IWDG_ReloadCounter();//清狗
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
// 1086 					IWDG_load_Count=0;
        LDR.N    R0,??DataTable9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1087 				  //Delay_1ms(1000);	
// 1088 			//	  Menu_page_DrawImage(main_page_OSD_Home,0);
// 1089 				 // Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_main);
// 1090 				 // OSD_LUT_glag=0;
// 1091 				//  Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_car);
// 1092 				  
// 1093 				  
// 1094 				// Menu_page_DrawImage(main_page_OSD_back_rada,0);
// 1095 				  
// 1096 				//  Menu_page_DrawImage(main_page_OSD_door_info,sub_page_OSD_back_lid);
// 1097 				  
// 1098 				 // Menu_page_DrawImage(main_page_OSD_door_info,sub_page_OSD_font_lid);
// 1099 				  
// 1100 				 // Menu_page_DrawImage(main_page_OSD_door_info,sub_page_OSD_LR_door);
// 1101 				//  Menu_page_DrawImage(main_page_OSD_air_info,0);
// 1102 
// 1103 				  
// 1104 
// 1105                     // MenuDemo(menu_audio_page_items[0]);//miller.tao20150829
// 1106                     // MenuDemo(7,0);//miller.tao20150829
// 1107                      // proc_menu_bg();
// 1108                      //SpiOsdPixelAlphaAttr(5,0x4f);
// 1109 			System_init_ok=0;
        LDR.W    R0,??DataTable10_17
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1110 
// 1111 #if 0
// 1112 			for(i=0;i<100;i++)
// 1113 			{
// 1114 				if(System_openlogo_init_ok == 1)
// 1115 				{//等待ARM LOGO初始化完成
// 1116 
// 1117 				Delay_1ms(50);//(50);
// 1118 				IWDG_ReloadCounter();//清狗
// 1119 					}
// 1120 			}
// 1121 			#endif
// 1122 			//if(i>=100)
// 1123 				//BackLight(1);//test
// 1124 		//	IWDG_ReloadCounter();//清狗
// 1125 			//InitOSD();
// 1126 			//Delay_1ms(1000);
// 1127 			//UART_arm_check_Send();
// 1128 			//WriteRadioFM(0x00,0x20);
// 1129 			//i2ctest =0;
// 1130                         //i2ctest=ReadRadioFM(0x07);
// 1131 
// 1132 			//TW8836_init();
// 1133                 //         radio_fm_init();
// 1134 			#if 0 //for test fm,miller.tao20150730
// 1135                         while(1)
// 1136                         {
// 1137                                if(sendfg)
// 1138                                	{
// 1139                                	     sendfg = 0;
// 1140 				    WriteRadioFM(0x00,0x03);
// 1141 
// 1142 				}
// 1143 
// 1144 			}
// 1145 			#endif
// 1146 			////////////////////////////////////////////////////////
// 1147                        #if 0 //miller.tao20150709
// 1148 			SPI_ReadData2Reg( 12 ,0x702, 1 );
// 1149 			Flash_version_buf[0] = ReadTW88_Page(0x702);	
// 1150 			SPI_ReadData2Reg( 13, 0x702, 1 );
// 1151 			Flash_version_buf[1] = ReadTW88_Page(0x702);	
// 1152 			SPI_ReadData2Reg( 14, 0x702, 1 );
// 1153 			Flash_version_buf[2] = ReadTW88_Page(0x702);	
// 1154 			SPI_ReadData2Reg( 15, 0x702, 1 );
// 1155 			Flash_version_buf[3] = ReadTW88_Page(0x702);
// 1156 			WriteTW88_Page(0x702,0);
// 1157 			#endif
// 1158 			////////////////////////////////////////////////////////
// 1159 			/*SPI_ReadData2Reg( 12 ,0x99, 1 );
// 1160 			Flash_version_buf[0] = ReadTW88_Page(0x99);	
// 1161 			SPI_ReadData2Reg( 13, 0x99, 1 );
// 1162 			Flash_version_buf[1] = ReadTW88_Page(0x99);	
// 1163 			SPI_ReadData2Reg( 14, 0x99, 1 );
// 1164 			Flash_version_buf[2] = ReadTW88_Page(0x99);	
// 1165 			SPI_ReadData2Reg( 15, 0x99, 1 );
// 1166 			Flash_version_buf[3] = ReadTW88_Page(0x99);
// 1167 			WriteTW88_Page(0x99,0);*/
// 1168 
// 1169 			if(CanPowerOnCheck()==2)
          CFI FunCall CanPowerOnCheck
        BL       CanPowerOnCheck
        CMP      R0,#+2
        BNE.N    ??System_on_6
// 1170 			{
// 1171 				Powerwork_init_Status=Powerwork_init_process;
        LDR.N    R0,??DataTable9_5
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
// 1172 				Powerwork_init_count=200;
        LDR.W    R0,??DataTable10_23
        MOVS     R1,#+200
        STRH     R1,[R0, #+0]
        B.N      ??System_on_7
// 1173               }
// 1174 			else
// 1175 			{
// 1176 				Powerwork_init_Status=Powerwork_init_wait;
??System_on_6:
        LDR.N    R0,??DataTable9_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1177 				Powerwork_init_count=200;//300;//等待ARM初始化
        LDR.W    R0,??DataTable10_23
        MOVS     R1,#+200
        STRH     R1,[R0, #+0]
// 1178 			}
// 1179                         break;
??System_on_7:
        B.N      ??System_on_5
// 1180 		case	Powerwork_init_wait:
// 1181 			if(ACC_PIN_STATUS()==1)//guan ACC
??System_on_2:
        MOVS     R1,#+2
        LDR.N    R0,??DataTable9_4  ;; 0x40010800
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??System_on_8
// 1182 			{		
// 1183 				 if(CanPowerOnCheck()==2)
          CFI FunCall CanPowerOnCheck
        BL       CanPowerOnCheck
        CMP      R0,#+2
        BNE.N    ??System_on_9
// 1184 				 {
// 1185 					 Powerwork_init_Status=Powerwork_init_ok;
        LDR.N    R0,??DataTable9_5
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 1186 					 Powerwork_init_count=200;
        LDR.W    R0,??DataTable10_23
        MOVS     R1,#+200
        STRH     R1,[R0, #+0]
        B.N      ??System_on_10
// 1187 				 }
// 1188 				 else if(Sys.u8can_back_status==CAM_ON_from_can&&Sys.FS_select.cam_type_onoff_id!=0)
??System_on_9:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+13]
        CMP      R0,#+1
        BNE.N    ??System_on_11
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BEQ.N    ??System_on_11
// 1189 				 {
// 1190 					 Powerwork_init_Status=Powerwork_init_ok;
        LDR.N    R0,??DataTable9_5
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 1191 					 Powerwork_init_count=200;
        LDR.W    R0,??DataTable10_23
        MOVS     R1,#+200
        STRH     R1,[R0, #+0]
        B.N      ??System_on_10
// 1192 				 }
// 1193 				 else if(CanPowerOnCheck())//等待
??System_on_11:
          CFI FunCall CanPowerOnCheck
        BL       CanPowerOnCheck
        CMP      R0,#+0
        BEQ.N    ??System_on_12
// 1194 				 	BackLight(0);
        MOVS     R0,#+0
          CFI FunCall BackLight
        BL       BackLight
        B.N      ??System_on_10
// 1195 				else
// 1196 				{
// 1197 				      System_Power_Status=Poweroff_init;
??System_on_12:
        LDR.N    R0,??DataTable9_3
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
// 1198 				     Poweroff_init_Status=Poweroff_init_exit;//直接关电不需要记忆
        LDR.W    R0,??DataTable10
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B.N      ??System_on_10
// 1199 				}
// 1200 			}	
// 1201 			else
// 1202 			{
// 1203 				Powerwork_init_Status=Powerwork_init_process;
??System_on_8:
        LDR.N    R0,??DataTable9_5
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
// 1204 				Powerwork_init_count=200;
        LDR.W    R0,??DataTable10_23
        MOVS     R1,#+200
        STRH     R1,[R0, #+0]
// 1205 			}
// 1206 				
// 1207 			 break;
??System_on_10:
        B.N      ??System_on_5
// 1208 		case	 Powerwork_init_process:
// 1209 			  BackLight(1);
??System_on_1:
        MOVS     R0,#+1
          CFI FunCall BackLight
        BL       BackLight
// 1210 			OSD_LUT_glag=1;
        LDR.W    R0,??DataTable10_24
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1211 			if(!Sys.FS_select.logo_type_onoff_id)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+35]
        CMP      R0,#+0
        BNE.N    ??System_on_13
// 1212 				Menu_page_DrawImage(main_page_OSD_logo,0);
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
// 1213 					//Delay_1ms(300);
// 1214 				Powerwork_init_Status=Powerwork_init_ok;
??System_on_13:
        LDR.N    R0,??DataTable9_5
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 1215 				Powerwork_init_count=200;
        LDR.W    R0,??DataTable10_23
        MOVS     R1,#+200
        STRH     R1,[R0, #+0]
// 1216 			break;
        B.N      ??System_on_5
// 1217 		case Powerwork_init_ok:
// 1218 
// 1219 			m_BMW_CAN.benze_air_Disp=0;
??System_on_4:
        LDR.N    R0,??DataTable7
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
// 1220 			#if 0
// 1221 			 Adjust_Source(SRC_NAVI);
// 1222 			#else
// 1223 			if(Sys.u8can_back_status==CAM_ON_from_can)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+13]
        CMP      R0,#+1
        BNE.N    ??System_on_14
// 1224 				Adjust_Source(SRC_CAM);
        MOVS     R0,#+11
          CFI FunCall Adjust_Source
        BL       Adjust_Source
        B.N      ??System_on_15
// 1225 			else
// 1226 				{
// 1227 			 if(Sys.Main_Source==SRC_CarMedia||Sys.Main_Source==SRC_NAVI)
??System_on_14:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+18
        BEQ.N    ??System_on_16
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??System_on_17
// 1228 			 	 Adjust_Source(Sys.Main_Source);
??System_on_16:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
        B.N      ??System_on_15
// 1229 			 else
// 1230 			 Adjust_Source(SRC_CarMedia);
??System_on_17:
        MOVS     R0,#+18
          CFI FunCall Adjust_Source
        BL       Adjust_Source
// 1231 				}
// 1232 			 #endif
// 1233 			
// 1234 
// 1235 			if(System_openlogo_init_ok == 1)
??System_on_15:
        LDR.W    R0,??DataTable10_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??System_on_18
// 1236 			{//等待ARM LOGO初始化完成
// 1237 				//if(Canbus_power_on_id==0)
// 1238 					BackLight(1);			
        MOVS     R0,#+1
          CFI FunCall BackLight
        BL       BackLight
// 1239 			}			
// 1240 
// 1241 		       //if(((System_init_ok==1)||(Powerwork_init_count==0))&&(BackOKID==0))
// 1242 		      //if(((System_init_ok==1)&&(Powerwork_init_count==0)))//Miller.tao20150801 for test
// 1243 			//{//如果在倒车状态，要先等退出出倒车状态
// 1244 				//if(Canbus_power_on_id==0)
// 1245 					BackLight(1);
??System_on_18:
        MOVS     R0,#+1
          CFI FunCall BackLight
        BL       BackLight
// 1246 
// 1247 				//UART_arm_ACC_Send(ACC_ON,POWER_ON);
// 1248 				//ASCII_Display_Init();
// 1249 			        //VolumeMenu_Init();
// 1250 				//UART_Init_Send();
// 1251 
// 1252 
// 1253 
// 1254 
// 1255 
// 1256    				//ARM_data_Process();	 
// 1257 				
// 1258 				//System_reset_auto_on=0;
// 1259 				//Adjust_Source(Sys.Main_Source);//20121017 delete			
// 1260 				 System_Power_Status=Powerwork;	 				
        LDR.N    R0,??DataTable9_3
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 1261 		//	}			
// 1262 							
// 1263 			break;
        B.N      ??System_on_5
// 1264 		case Powerwork_init_exit:			
// 1265 			break;
// 1266 	}	
// 1267 	
// 1268 	/*
// 1269 	if(ACC_volt_eeror==1)
// 1270 	{Byte i;
// 1271 	
// 1272 		ACC_volt_eeror=0;
// 1273 		Sys.ACC_auto_on=1;//Acc On Auto Open
// 1274 		Volt_low_Off();
// 1275 		System_Power_Status=Poweroff;	
// 1276 
// 1277 		for(i=0;i<100;i++)	
// 1278 		{
// 1279 			if(Volt_detect()==TRUE)
// 1280 				break;
// 1281 			Delay_1ms(20);					
// 1282 		}
// 1283 		if(i>=100)
// 1284 			Volt_low_close();
// 1285 		//判断是关ACC  收屏等处理
// 1286 	}*/	
// 1287 //}
// 1288 }
??System_on_3:
??System_on_5:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function System_Init
        THUMB
// 1289 void System_Init(void)
// 1290 {
System_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 1291 	
// 1292 	
// 1293 	Init_GlobalVariables();
          CFI FunCall Init_GlobalVariables
        BL       Init_GlobalVariables
// 1294 	
// 1295 			
// 1296 
// 1297 	 Read_Eerom_Data();
          CFI FunCall Read_Eerom_Data
        BL       Read_Eerom_Data
// 1298 
// 1299 	// Sys.Main_Source=SRC_CarMedia;
// 1300 	// if(Sys.canbus_type!=No_cantype)     //lxg20130621 add	 
// 1301 	      //   Init_Canbus_Variables();        //lxg20130621 add	 	
// 1302 
// 1303 	System_Power_Status=Powerstanby;//Powerwork_init;//Powerstanby;	 
        LDR.N    R0,??DataTable9_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1304 	Powerstany_Status=Powerstanby_start;
        LDR.W    R0,??DataTable10_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1305 	Powerwork_init_Status=Powerwork_init_start;
        LDR.N    R0,??DataTable9_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1306 	Poweroff_init_Status=Poweroff_init_start;
        LDR.W    R0,??DataTable10
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1307 	Power_canbuswait_Status=Power_canbuswait_start;
        LDR.W    R0,??DataTable10_25
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1308 		
// 1309 	Powerstany_count=0;//==1  100MS
        LDR.W    R0,??DataTable10_26
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1310 	Powerwork_init_count=0;//==1  100MS
        LDR.W    R0,??DataTable10_23
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1311 	Poweroff_init_count=0;//==1  100MS	
        LDR.W    R0,??DataTable10_19
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1312 	
// 1313 	//System_reset_auto_on=1;
// 1314        Sys.lcd_type = Panelhannstar09_DT;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+7
        STRB     R1,[R0, #+12]
// 1315 	Sys.u8can_back_status = CAM_off_id;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
// 1316 	Sys.u8IO_back_status = CAM_off_id;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
// 1317 	Sys.u8back_status = CAM_OFF;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
// 1318 
// 1319 	    m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
        LDR.N    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+57]
// 1320 	m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_OFF;//Miller.Tao20141104
        LDR.N    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+60]
// 1321 	m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
        LDR.N    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+58]
// 1322 	m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
        LDR.N    R0,??DataTable7
        MOVS     R1,#+1
        STRB     R1,[R0, #+59]
// 1323 	Sys.WVedio_show_timer=0;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
// 1324 	Sys.u8back_exit_auto=0;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
// 1325 	Sys.show_TFT_p=0xff;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+255
        STRB     R1,[R0, #+24]
// 1326 
// 1327 	m_BMW_CAN.benze_Steering_angle[0]=0x2000;
        LDR.N    R0,??DataTable7
        MOV      R1,#+8192
        STRH     R1,[R0, #+50]
// 1328 
// 1329 	 byTouchStatus=0;
        LDR.N    R0,??DataTable10_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1330 	 PreTouchStatus=0xff;
        LDR.N    R0,??DataTable10_4
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
// 1331 	IWDG_load_Count=0;
        LDR.N    R0,??DataTable9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1332 	for(int i=0;i<sizeof(touch_I2C_buff)/sizeof(touch_I2C_buff[0]);i++)
        MOVS     R0,#+0
??System_Init_0:
        CMP      R0,#+10
        BCS.N    ??System_Init_1
// 1333 	touch_I2C_buff[i]=0;
        LDR.N    R1,??DataTable9_7
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
        ADDS     R0,R0,#+1
        B.N      ??System_Init_0
// 1334 
// 1335 	Can_key_cmd=key_null;
??System_Init_1:
        LDR.N    R0,??DataTable10_27
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1336 	//Sys.FS_select.cam_type_onoff_id=1;
// 1337 	CAN_turner.count=0x80;
        LDR.N    R0,??DataTable9_2
        MOVS     R1,#+128
        STRB     R1,[R0, #+0]
// 1338 	CAN_turner.count2=0x80;
        LDR.N    R0,??DataTable9_2
        MOVS     R1,#+128
        STRB     R1,[R0, #+1]
// 1339 	Sys.main_osd=0xff;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+255
        STRB     R1,[R0, #+52]
// 1340 	Sys.sub_osd=0xff;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+255
        STRB     R1,[R0, #+53]
// 1341 
// 1342 	gNaviSystemOn = 1;
        LDR.N    R0,??DataTable10_28
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1343 	gNaviCnt = 0;
        LDR.N    R0,??DataTable10_29
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1344 	gNaviSendFlag = 0;
        LDR.N    R0,??DataTable10_30
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1345 	Touch_flag=0;
        LDR.N    R0,??DataTable9_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1346 
// 1347 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     m_BMW_CAN
// 1348 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function Init_Poweron_Variables
          CFI NoCalls
        THUMB
// 1349 void Init_Poweron_Variables(void)
// 1350 {
// 1351 	
// 1352 	
// 1353 	g_src_flag1.char_field=0;//初始化标志
Init_Poweron_Variables:
        LDR.N    R0,??DataTable10_31
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1354 	g_src_flag2.char_field=0;//初始化标志	
        LDR.N    R0,??DataTable10_32
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1355 	
// 1356 	Touch_status=0xff;
        LDR.N    R0,??DataTable10_33
        MOVS     R1,#+255
        STRH     R1,[R0, #+0]
// 1357 	Touch_valide_count=0;
        LDR.N    R0,??DataTable10_34
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1358 	ACC_volt_eeror=0;	
        LDR.N    R0,??DataTable10_35
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1359 	Rem_SRC_long_set=0;
        LDR.N    R0,??DataTable10_36
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1360 	System_openlogo_init_ok=0;	
        LDR.N    R0,??DataTable10_22
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1361 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
// 1362 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function Init_GlobalVariables
          CFI NoCalls
        THUMB
// 1363 void Init_GlobalVariables(void)
// 1364 {
// 1365 Sys.FS_select.cam_type_onoff_id=0x01;
Init_GlobalVariables:
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+31]
// 1366 };
        BX       LR               ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     IWDG_load_Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     EEPROM_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     CAN_turner

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     System_Power_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     Powerwork_init_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     Touch_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     touch_I2C_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     GT911_adr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     byTouch_buff
// 1367 
// 1368 
// 1369 #endif
// 1370 /**************************************************************************/
// 1371 /*                                                                        */
// 1372 /**************************************************************************/
// 1373 /*********************************************
// 1374 Function:		Gps_Send_POS
// 1375 Description:
// 1376 Write/Modify:	edwin
// 1377 Time:		2011-12-8
// 1378  *********************************************/
// 1379  
// 1380 #if 1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function Gps_Send_POS
        THUMB
// 1381 void Gps_Send_POS(WORD X, WORD Y, BYTE status)
// 1382 {
Gps_Send_POS:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1383     U32 tempX;
// 1384     U32 tempY;
// 1385     BYTE checksum = 0;
        MOVS     R9,#+0
// 1386     tempX = X;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MOVS     R7,R4
// 1387     tempY = Y;
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOV      R8,R5
// 1388 
// 1389     if (status == MSG_ACTION_BOUNCE)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??Gps_Send_POS_0
// 1390     {
// 1391         USART_SendData(USART3, 0xe1);
        MOVS     R1,#+225
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1392         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_1:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_1
// 1393             ;
// 1394         // SysDelay(GPS_SEND_DELAY);
// 1395         USART_SendData(USART3, tempX & 0xFF);
        ANDS     R1,R7,#0xFF
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1396         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_2:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_2
// 1397             ;
// 1398         // SysDelay(GPS_SEND_DELAY);
// 1399         USART_SendData(USART3, (tempX >> 8) & 0xFF);
        UBFX     R1,R7,#+8,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1400         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_3:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_3
// 1401             ;
// 1402         // SysDelay(GPS_SEND_DELAY);
// 1403         USART_SendData(USART3, tempY & 0xFF);
        ANDS     R1,R8,#0xFF
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1404         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_4:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_4
// 1405             ;
// 1406         // SysDelay(GPS_SEND_DELAY);
// 1407         USART_SendData(USART3, (tempY >> 8) & 0xFF);
        UBFX     R1,R8,#+8,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1408         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_5:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_5
// 1409             ;
// 1410         checksum = 0xe1 + ((BYTE)(tempX & 0xFF)) + ((BYTE)((tempX >> 8) & 0xFF)) + ((BYTE)(tempY & 0xFF)) + ((BYTE)((tempY >> 8) & 0xFF));
        LSRS     R0,R7,#+8
        ADDS     R0,R0,R7
        ADDS     R0,R8,R0
        LSRS     R1,R8,#+8
        ADDS     R0,R1,R0
        SUBS     R0,R0,#+31
        MOV      R9,R0
// 1411         checksum = ~checksum;
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MVNS     R9,R9
// 1412         USART_SendData(USART3, checksum);
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R1,R9
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1413         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_6:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BNE.W    ??Gps_Send_POS_7
        B.N      ??Gps_Send_POS_6
// 1414             ;
// 1415     }
// 1416     else if (status == MSG_ACTION_KEEP)
??Gps_Send_POS_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BNE.N    ??Gps_Send_POS_8
// 1417     {
// 1418         USART_SendData(USART3, 0xa1);
        MOVS     R1,#+161
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1419         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_9:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_9
// 1420             ;
// 1421         // SysDelay(GPS_SEND_DELAY);
// 1422         USART_SendData(USART3, tempX & 0xFF);
        ANDS     R1,R7,#0xFF
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1423         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_10:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_10
// 1424             ;
// 1425         // SysDelay(GPS_SEND_DELAY);
// 1426         USART_SendData(USART3, (tempX >> 8) & 0xFF);
        UBFX     R1,R7,#+8,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1427         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_11:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_11
// 1428             ;
// 1429         //SysDelay(GPS_SEND_DELAY);
// 1430         USART_SendData(USART3, tempY & 0xFF);
        ANDS     R1,R8,#0xFF
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1431         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_12:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_12
// 1432             ;
// 1433         //SysDelay(GPS_SEND_DELAY);
// 1434         USART_SendData(USART3, (tempY >> 8) & 0xFF);
        UBFX     R1,R8,#+8,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1435         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_13:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_13
// 1436             ;
// 1437         checksum = 0xa1 + ((BYTE)(tempX & 0xFF)) + ((BYTE)((tempX >> 8) & 0xFF)) + ((BYTE)(tempY & 0xFF)) + ((BYTE)((tempY >> 8) & 0xFF));
        LSRS     R0,R7,#+8
        ADDS     R0,R0,R7
        ADDS     R0,R8,R0
        LSRS     R1,R8,#+8
        ADDS     R0,R1,R0
        SUBS     R0,R0,#+95
        MOV      R9,R0
// 1438         checksum = ~checksum;
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MVNS     R9,R9
// 1439         USART_SendData(USART3, checksum);
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R1,R9
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1440         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_14:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BNE.N    ??Gps_Send_POS_7
        B.N      ??Gps_Send_POS_14
// 1441             ;
// 1442     }
// 1443     else
// 1444     {
// 1445 
// 1446         //SWITC_GPS_ON();
// 1447         USART_SendData(USART3, 0x61);
??Gps_Send_POS_8:
        MOVS     R1,#+97
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1448         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
??Gps_Send_POS_15:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_15
// 1449         //SysDelay(GPS_SEND_DELAY);
// 1450         USART_SendData(USART3, tempX & 0xFF);
        ANDS     R1,R7,#0xFF
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1451         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
??Gps_Send_POS_16:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_16
// 1452         //SysDelay(GPS_SEND_DELAY);
// 1453         USART_SendData(USART3, (tempX >> 8) & 0xFF);
        UBFX     R1,R7,#+8,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1454         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_17:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_17
// 1455             ;
// 1456         //SysDelay(GPS_SEND_DELAY);
// 1457         USART_SendData(USART3, tempY & 0xFF);
        ANDS     R1,R8,#0xFF
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1458         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_18:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_18
// 1459             ;
// 1460         //SysDelay(GPS_SEND_DELAY);
// 1461         USART_SendData(USART3, (tempY >> 8) & 0xFF);
        UBFX     R1,R8,#+8,#+8
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1462         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_19:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_19
// 1463             ;
// 1464         checksum = 0x61 + ((BYTE)(tempX & 0xFF)) + ((BYTE)((tempX >> 8) & 0xFF)) + ((BYTE)(tempY & 0xFF)) + ((BYTE)((tempY >> 8) & 0xFF));
        LSRS     R0,R7,#+8
        ADDS     R0,R0,R7
        ADDS     R0,R8,R0
        LSRS     R1,R8,#+8
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+97
        MOV      R9,R0
// 1465         checksum = ~checksum;
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MVNS     R9,R9
// 1466         USART_SendData(USART3, checksum);
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R1,R9
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
// 1467         while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
??Gps_Send_POS_20:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable10_37  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Gps_Send_POS_20
// 1468             ;
// 1469 
// 1470     }
// 1471 }
??Gps_Send_POS_7:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     Poweroff_init_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     X_POS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     Y_POS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     byTouchStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     PreTouchStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     ??X_POS_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     ??Y_POS_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     byTouch_moveStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     Touch_on_Click

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     U8Tiemr_connect_press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     connect_press_one

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_11:
        DC32     connect_press

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_12:
        DC32     Canbus_power_on_id

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_13:
        DC32     Powerstany_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_14:
        DC32     fSystemReset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_15:
        DC32     fRadioReset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_16:
        DC32     g_stuCurPower

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_17:
        DC32     System_init_ok

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_18:
        DC32     System_save_ok

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_19:
        DC32     Poweroff_init_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_20:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_21:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_22:
        DC32     System_openlogo_init_ok

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_23:
        DC32     Powerwork_init_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_24:
        DC32     OSD_LUT_glag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_25:
        DC32     Power_canbuswait_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_26:
        DC32     Powerstany_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_27:
        DC32     Can_key_cmd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_28:
        DC32     gNaviSystemOn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_29:
        DC32     gNaviCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_30:
        DC32     gNaviSendFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_31:
        DC32     g_src_flag1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_32:
        DC32     g_src_flag2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_33:
        DC32     Touch_status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_34:
        DC32     Touch_valide_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_35:
        DC32     ACC_volt_eeror

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_36:
        DC32     Rem_SRC_long_set

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_37:
        DC32     0x40004800
// 1472 
// 1473 #endif
// 1474 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Read_project
          CFI NoCalls
        THUMB
// 1475 void Read_project(void)
// 1476 {
// 1477   #ifdef _ENABL_CES
// 1478 
// 1479 	FlagStatus flashstatus = RESET;;
// 1480 
// 1481 	//if(Sys.code_protected==0)
// 1482 	{
// 1483 		//flashstatus=FLASH_EnableWriteProtection(FLASH_WRProt_Pages0to3);
// 1484 		
// 1485 		//FLASH_ReadOutProtection(ENABLE);
// 1486 		//Sys.code_protected = 1;
// 1487 		/* Unlock the Flash Program Erase controller */  
// 1488 	   flashstatus = FLASH_GetReadOutProtectionStatus();
// 1489 	   if(!flashstatus)
// 1490 	   {
// 1491 	   FLASH_Unlock();
// 1492 		 /* Erase all the option Bytes */
// 1493 		 flashstatus = FLASH_EraseOptionBytes();
// 1494 		 Delay_1ms(10);
// 1495 		 flashstatus=FLASH_ReadOutProtection(ENABLE);
// 1496 		 NVIC_SystemReset();
// 1497 	   }
// 1498 	   //FLASH_Lock();
// 1499 	}
// 1500 #endif
// 1501 }
Read_project:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1502 
// 1503 
// 1504 #ifdef DEBUG
// 1505 /*******************************************************************************
// 1506  * Function Name  : assert_failed
// 1507  * Description    : Reports the name of the source file and the source line number
// 1508  *                  where the assert_param error has occurred.
// 1509  * Input          : - file: pointer to the source file name
// 1510  *                  - line: assert_param error line source number
// 1511  * Output         : None
// 1512  * Return         : None
// 1513  *******************************************************************************/
// 1514 void assert_failed(u8 *file, u32 line)
// 1515 {
// 1516     /* User can add his own implementation to report the file name and line number,
// 1517     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
// 1518     /* Infinite loop */
// 1519     while (1) {}
// 1520 }
// 1521 #endif
// 1522 
// 1523 
// 1524 #undef __MAIN_C__
// 1525 /******************* (C) COPYRIGHT 2008 STMicroelectronics *****END OF
// 1526      FILE****/
// 1527 
// 
// 2 137 bytes in section .bss
//     4 bytes in section .data
// 3 702 bytes in section .text
// 
// 3 702 bytes of CODE memory
// 2 141 bytes of DATA memory
//
//Errors: none
//Warnings: 1
