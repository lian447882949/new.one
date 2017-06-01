///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:42 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\CAN\canbus.c                       /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\CAN\canbus.c -D                    /
//                    USE_STDPERIPH_DRIVER -D USE_STM32100B_EVAL -D           /
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
//                    \Debug\List\canbus.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME canbus

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN CAN_DeInit
        EXTERN CAN_FilterInit
        EXTERN CAN_ITConfig
        EXTERN CAN_Init
        EXTERN CAN_SlaveStartBank
        EXTERN CAN_StructInit
        EXTERN CAN_Transmit
        EXTERN Can_key_cmd
        EXTERN EEPROM_DATA
        EXTERN __aeabi_memcpy4

        PUBLIC AudiCanBus_FetchCmdTask
        PUBLIC AudiCanBus_SendControlCmd
        PUBLIC AudiCan_FetchCmd
        PUBLIC AudiCan_FetchStallsInfo
        PUBLIC AudiCan_FetchStallsInfo_Q3
        PUBLIC Audi_CanBus_InputSource_data_analytic
        PUBLIC Audi_CanBus_work_data_analytic
        PUBLIC BMW_AuxContrl_Task
        PUBLIC BMW_KnobContrl
        PUBLIC BMW_OptionKey_Task
        PUBLIC Benci_newC_CanBus_Config
        PUBLIC Benci_newC_CanBus_FetchCmdTask
        PUBLIC Benci_newC_CanBus_FetchSteerAngleInfo
        PUBLIC Benci_newC_CanBus_FetchSteerKeyInfo_Type1
        PUBLIC Benci_newC_CanBus_FetchSteerKeyInfo_Type2
        PUBLIC Benci_newC_CanBus_mid_control_key2_fun
        PUBLIC Benci_newC_CanBus_mid_control_key_fun
        PUBLIC Benci_newC_CanBus_work_data_analytic
        PUBLIC Benci_newC_Can_FetchStallsInfo
        PUBLIC Benci_newC_Power_On
        PUBLIC CAN1_USER_HANDLER
        PUBLIC CAN2_USER_HANDLER
        PUBLIC CAN_turner
        PUBLIC Can_FetchSteerKeyInfo_Type1
        PUBLIC Can_FetchSteerKeyInfo_Type2
        PUBLIC Can_FetchSteerKeyInfo_Type3
        PUBLIC Can_FetchSteerKeyInfo_Type4
        PUBLIC Can_Tx
        PUBLIC LF_BENCI_KEY_SEND_FUN
        PUBLIC LF_BENCI_SEND_FUN
        PUBLIC LF_CANBus_Knob_Task
        PUBLIC LF_CANBus_Stalls_Task
        PUBLIC LF_CanBus_Config
        PUBLIC LF_CanBus_Contrl_Task
        PUBLIC LF_CanBus_FetchCmd
        PUBLIC LF_CanBus_FetchCmdTask
        PUBLIC LF_CanBus_InitVar
        PUBLIC LF_CanBus_PowerOn
        PUBLIC LF_CanBus_SendControlCmd
        PUBLIC LF_CanBus_SteerKey_Task
        PUBLIC LF_CanBus_work_data_analytic
        PUBLIC LF_FrontContrl
        PUBLIC Sys_CAN_light
        PUBLIC can_door_last_statu
        PUBLIC door_index
        PUBLIC door_show_buff
        PUBLIC m_AUDI_CAN_PowerOn
        PUBLIC m_BMW_CAN
        PUBLIC m_CarDoorInfo
        PUBLIC m_CarDoorInfo_last
        PUBLIC m_CarMilesInfo
        PUBLIC m_CarSpeedInfo
        PUBLIC m_RADAR
        PUBLIC m_RADAR_last_buff
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\CAN\canbus.c
//    1 /* 这份源代码文件已被未注册的SourceFormatX格式化过 */
//    2 /* 如果您想不再添加此类信息，请您注册这个共享软件  */
//    3 /* 更多相关信息请访问网站: http://cn.textrush.com  */
//    4 
//    5 /******************** (C) COPYRIGHT 2011 APTENON ********************
//    6  * File Name          : canbus.c
//    7  * Author             : miller.tao
//    8  * Version            : V0.0
//    9  * Date               : 07/13/2015
//   10  * Description        : canbus  file.
//   11  *******************************************************************************/
//   12 #define _BENZE_BUS_C_
//   13 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute uint8_t m_RADAR_last_buff[2]
m_RADAR_last_buff:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute LIGHT_CAN Sys_CAN_light
Sys_CAN_light:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CARTURNER CAN_turner
CAN_turner:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute RADAR m_RADAR
m_RADAR:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute BMW_CAN m_BMW_CAN
m_BMW_CAN:
        DS8 116

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t volatile m_AUDI_CAN_PowerOn
m_AUDI_CAN_PowerOn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t can_door_last_statu
can_door_last_statu:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CARDOORINFO m_CarDoorInfo
m_CarDoorInfo:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CARDOORINFO m_CarDoorInfo_last
m_CarDoorInfo_last:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute uint8_t door_show_buff[3]
door_show_buff:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t door_index
door_index:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CARSPEEDINFO m_CarSpeedInfo
m_CarSpeedInfo:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute CARMILEINFO m_CarMilesInfo
m_CarMilesInfo:
        DS8 8
//   14 //#include "can_config.h"
//   15 
//   16 /******************************************************************
//   17 速度 1000   500  250  125  100  50     20    10
//   18 距离 40     130  270  530  620  1300   3300	  6700
//   19 CIA推荐值
//   20 75% when 波特率 》800K
//   21 80% when 波特率 》500K
//   22 87.5% when 波特率 < 500K
//   23  *******************************************************************/
//   24 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   25 const static  CanTxMsg  BENCI_keyTab[]=
BENCI_keyTab:
        DATA
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 2, 134, 0, 0, 119, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 32, 134, 0, 0, 119, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 128, 134, 0, 0, 119, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 8, 134, 0, 0, 119, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 1, 134, 0, 0, 119, 0, 0
//   26 {
//   27 /*
//   28         uint32_t StdId;  
//   29 
//   30         uint32_t ExtId;  
//   31 
//   32         uint8_t IDE;     
//   33 
//   34         uint8_t RTR;     
//   35 
//   36         uint8_t DLC;     
//   37 
//   38         uint8_t Data[8];
//   39   */
//   40   
//   41 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x02,0x86,0x00,0x00,0x77,0x00}},//konb ok
//   42 	
//   43 {0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x20,0x86,0x00,0x00,0x77,0x00}},//konb ok
//   44 
//   45 {0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x80,0x86,0x00,0x00,0x77,0x00}},//konb ok
//   46 
//   47 {0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x08,0x86,0x00,0x00,0x77,0x00}},//konb ok
//   48 
//   49 {0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x01,0x86,0x00,0x00,0x77,0x00}},//konb ok
//   50 
//   51 };
//   52 #if 1 //Miller.Tao20150123,kang's

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   53 const static  CanTxMsg  KnobCntrTab2[]=
KnobCntrTab2:
        DATA
        DC32 499, 0
        DC8 0, 0, 8, 16, 0, 0, 134, 0, 0, 247, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 128, 166, 0, 0, 247, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 8, 166, 0, 0, 247, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 2, 166, 0, 0, 247, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 32, 166, 0, 0, 247, 0, 0
//   54 {
//   55 /*
//   56         uint32_t StdId;  
//   57 
//   58         uint32_t ExtId;  
//   59 
//   60         uint8_t IDE;     
//   61 
//   62         uint8_t RTR;     
//   63 
//   64         uint8_t DLC;     
//   65 
//   66         uint8_t Data[8];
//   67   */
//   68   
//   69 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x10,0x00,0x00,0x86,0x00,0x00,0xf7,0x00}},//konb ok
//   70 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x80,0xa6,0x00,0x00,0xf7,0x00}},//konb ok
//   71 	
//   72 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x08,0xa6,0x00,0x00,0xf7,0x00}},//konb ok
//   73 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x02,0xa6,0x00,0x00,0xf7,0x00}},//konb ok
//   74 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x20,0xa6,0x00,0x00,0xf7,0x00}},//konb ok
//   75 };

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   76 const static  CanTxMsg  KnobCntrTab[]=
KnobCntrTab:
        DATA
        DC32 499, 0
        DC8 0, 0, 8, 16, 0, 0, 134, 0, 0, 247, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 0, 166, 0, 0, 247, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 128, 0, 0, 134, 0, 0, 247, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 0, 166, 0, 0, 247, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 0, 182, 0, 0, 119, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 0, 166, 0, 0, 119, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 0, 150, 0, 0, 119, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 0, 134, 0, 0, 119, 0, 0
        DC32 499, 0
        DC8 0, 0, 8, 0, 0, 0, 134, 0, 0, 119, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 229, 1, 192, 16, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 229, 1, 192, 16, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 230, 0, 192, 16, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 230, 0, 192, 16, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 229, 1, 192, 16, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 229, 1, 192, 16, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 230, 0, 192, 16, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 230, 0, 192, 16, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 228, 0, 192, 1, 0, 0, 0
        DC32 612, 0
        DC8 0, 0, 6, 225, 253, 125, 0, 128, 30, 0, 0, 0
        DC32 612, 0
        DC8 0, 0, 6, 225, 253, 126, 4, 128, 30, 0, 0, 0
        DC32 612, 0
        DC8 0, 0, 6, 225, 253, 127, 3, 128, 30, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 229, 1, 222, 1, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 229, 1, 222, 1, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 230, 0, 222, 1, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 230, 0, 222, 1, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 229, 1, 192, 4, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 229, 1, 192, 4, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 230, 0, 192, 4, 0, 0, 0
        DC32 615, 0
        DC8 0, 0, 6, 225, 253, 230, 0, 192, 4, 0, 0, 0
        DC32 612, 0
        DC8 0, 0, 6, 225, 253, 124, 0, 128, 30, 0, 0, 0
        DC32 612, 0
        DC8 0, 0, 6, 225, 253, 125, 1, 128, 30, 0, 0, 0
        DC32 612, 0
        DC8 0, 0, 6, 225, 253, 126, 2, 128, 30, 0, 0, 0
//   77 {
//   78 /*
//   79         uint32_t StdId;  
//   80 
//   81         uint32_t ExtId;  
//   82 
//   83         uint8_t IDE;     
//   84 
//   85         uint8_t RTR;     
//   86 
//   87         uint8_t DLC;     
//   88 
//   89         uint8_t Data[8];
//   90   */
//   91   
//   92 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x10,0x00,0x00,0x86,0x00,0x00,0xf7,0x00}},//konb ok
//   93 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x00,0xa6,0x00,0x00,0xf7,0x00}},//konb ok
//   94 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x80,0x00,0x00,0x86,0x00,0x00,0xf7,0x00}},//konb ok
//   95 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x00,0xa6,0x00,0x00,0xf7,0x00}},//konb ok
//   96   
//   97   {0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x00,0xb6,0x00,0x00,0x77,0x00}},//konb ok
//   98   
//   99   {0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x00,0xa6,0x00,0x00,0x77,0x00}},//konb ok
//  100   {0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x00,0x96,0x00,0x00,0x77,0x00}},//konb ok
//  101   
//  102 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x00,0x86,0x00,0x00,0x77,0x00}},//konb ok
//  103 	{0x01f3,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x00,0x00,0x86,0x00,0x00,0x77,0x00}},//konb ok
//  104   
//  105   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn1
//  106   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn0
//  107   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn1
//  108   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn2
//  109   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn3
//  110   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn4
//  111   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn5
//  112   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn6
//  113   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE4,0x00,0xC0,0x01}},//Syn Sn7
//  114   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7D,0x00,0x80,0x1E}},//Syn Sn8
//  115   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7E,0x04,0x80,0x1E}},//Syn Sn9
//  116   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7F,0x03,0x80,0x1E}},//Syn Sn10
//  117   
//  118   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xDE,0x01}},//Syn Sn11
//  119   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xDE,0x01}},//Syn Sn12
//  120   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDE,0x01}},//Syn Sn13
//  121   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDE,0x01}},//17,Syn Sn14
//  122   
//  123   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x04}},//option pressed
//  124   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x04}},//option pressed
//  125   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x04}},//option bounce
//  126   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x04}},//option bounce
//  127   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7C,0x00,0x80,0x1E}},//Syn Sn8
//  128   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7D,0x01,0x80,0x1E}},//Syn Sn9
//  129   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7E,0x02,0x80,0x1E}},//Syn Sn9
//  130 };
//  131 #else
//  132 const static  CanTxMsg  KnobCntrTab[]=
//  133 {
//  134 /*
//  135         uint32_t StdId;  
//  136 
//  137         uint32_t ExtId;  
//  138 
//  139         uint8_t IDE;     
//  140 
//  141         uint8_t RTR;     
//  142 
//  143         uint8_t DLC;     
//  144 
//  145         uint8_t Data[8];
//  146   */
//  147   {0x0273,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x1D,0xE1,0x00,0xF0,0xFF,0x7F,0xDE,0x30}},//konb ok
//  148   {0x0273,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x1D,0xE1,0x01,0xF0,0x00,0x00,0xDE,0x30}},//knob fail
//  149   
//  150   
//  151   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn1
//  152   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x00,0xC0,0x10}},//Syn Sn0
//  153   
//  154   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn1
//  155   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn2
//  156   
//  157   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn3
//  158   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x00,0xC0,0x10}},//Syn Sn4
//  159   
//  160   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn5
//  161   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn6
//  162   
//  163   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE4,0x00,0xC0,0x01}},//Syn Sn7
//  164   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7C,0x00,0x80,0x1E}},//Syn Sn8
//  165   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7D,0x01,0x80,0x1E}},//Syn Sn9
//  166   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7E,0x02,0x80,0x1E}},//Syn Sn10
//  167   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7F,0x03,0x80,0x1E}},//Syn Sn10
//  168   
//  169   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xDE,0x01}},//Syn Sn11
//  170   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDE,0x01}},//Syn Sn13
//  171    
//  172   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x81,0xDD,0x01}},//Syn Sn11
//  173   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x81,0xDD,0x01}},//Syn Sn11,//////////////
//  174   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDD,0x01}},//Syn Sn11
//  175   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDD,0x01}},//Syn Sn11///////////////
//  176 
//  177 
//  178   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7C,0x03,0x80,0x1E}},//Syn Sn8
//  179   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7D,0x02,0x80,0x1E}},//Syn Sn9
//  180   
//  181   
//  182 
//  183   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xDE,0x01}},//Syn Sn12
//  184  
//  185   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDE,0x01}},//Syn Sn14
//  186 
//  187   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7C,0x00,0x80,0x1E}},//Syn Sn8
//  188   {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7D,0x01,0x80,0x1E}},//Syn Sn9
//  189   
//  190   
//  191 
//  192   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xDE,0x01}},//Syn Sn12
//  193  
//  194   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDE,0x01}},//Syn Sn14
//  195   
//  196   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x04}},//option pressed
//  197   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x04}},//option pressed
//  198   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x04}},//option bounce
//  199   {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x04}},//option bounce
//  200   
//  201   
//  202 };
//  203 
//  204 #endif
//  205 
//  206 
//  207 /**************************************************************************/
//  208 /*                                                                        */
//  209 /**************************************************************************/
//  210 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Can_Tx
        THUMB
//  211 void Can_Tx(CAN_TypeDef *CANx, CanTxMsg *TxMessage)
//  212 {
Can_Tx:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  213 #if 0
//  214     U32 i;
//  215     u8 TransmitMailbox;
//  216     
//  217 
//  218     //---------------------------------------
//  219     TransmitMailbox = CAN_Transmit(CANx, TxMessage);
//  220     i = 0;
//  221     while((CAN_TransmitStatus(CANx, TransmitMailbox) != CANTXOK) && (i != 0xFFFF))
//  222     {
//  223         i++;
//  224     }
//  225 #endif
//  226     CAN_Transmit(CANx, TxMessage);
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall CAN_Transmit
        BL       CAN_Transmit
//  227 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function BMW_KnobContrl
        THUMB
//  228 void BMW_KnobContrl(BYTE bEn)
//  229 {
BMW_KnobContrl:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
        MOVS     R4,R0
//  230   CanTxMsg gTxMessage;
//  231   static BYTE IndexCntr=0;
//  232   switch(bEn)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??BMW_KnobContrl_0
        BCC.W    ??BMW_KnobContrl_1
        CMP      R4,#+3
        BEQ.W    ??BMW_KnobContrl_2
        BCC.N    ??BMW_KnobContrl_3
        CMP      R4,#+5
        BEQ.W    ??BMW_KnobContrl_4
        BCC.W    ??BMW_KnobContrl_5
        B.N      ??BMW_KnobContrl_1
//  233   {
//  234   case 1:
//  235    gTxMessage.DLC=KnobCntrTab2[0].DLC;
??BMW_KnobContrl_0:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+10]
        STRB     R0,[SP, #+10]
//  236    gTxMessage.StdId=KnobCntrTab2[0].StdId;
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
//  237    gTxMessage.IDE=KnobCntrTab2[0].IDE;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+8]
        STRB     R0,[SP, #+8]
//  238    gTxMessage.RTR=KnobCntrTab2[0].RTR;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+9]
        STRB     R0,[SP, #+9]
//  239    gTxMessage.Data[0]=KnobCntrTab2[0].Data[0];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+11]
        STRB     R0,[SP, #+11]
//  240    gTxMessage.Data[1]=KnobCntrTab2[0].Data[1];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+12]
        STRB     R0,[SP, #+12]
//  241    gTxMessage.Data[2]=KnobCntrTab2[0].Data[2];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+13]
        STRB     R0,[SP, #+13]
//  242    gTxMessage.Data[3]=KnobCntrTab2[0].Data[3];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+14]
        STRB     R0,[SP, #+14]
//  243    gTxMessage.Data[4]=KnobCntrTab2[0].Data[4];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+15]
        STRB     R0,[SP, #+15]
//  244    gTxMessage.Data[5]=KnobCntrTab2[0].Data[5];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+16]
        STRB     R0,[SP, #+16]
//  245    gTxMessage.Data[6]=KnobCntrTab2[0].Data[6];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+17]
        STRB     R0,[SP, #+17]
//  246    gTxMessage.Data[7]=KnobCntrTab2[0].Data[7];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+18]
        STRB     R0,[SP, #+18]
//  247    
//  248    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  249    //m_BMW_CAN.uAuxSendSn=__SN_END_;
//  250    break;
        B.N      ??BMW_KnobContrl_1
//  251 case 2:
//  252 	gTxMessage.DLC=KnobCntrTab2[1].DLC;
??BMW_KnobContrl_3:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+30]
        STRB     R0,[SP, #+10]
//  253    gTxMessage.StdId=KnobCntrTab2[1].StdId;
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+20]
        STR      R0,[SP, #+0]
//  254    gTxMessage.IDE=KnobCntrTab2[1].IDE;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+28]
        STRB     R0,[SP, #+8]
//  255    gTxMessage.RTR=KnobCntrTab2[1].RTR;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+29]
        STRB     R0,[SP, #+9]
//  256    gTxMessage.Data[0]=KnobCntrTab2[1].Data[0];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+31]
        STRB     R0,[SP, #+11]
//  257    gTxMessage.Data[1]=KnobCntrTab2[1].Data[1];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+32]
        STRB     R0,[SP, #+12]
//  258    gTxMessage.Data[2]=KnobCntrTab2[1].Data[2];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+33]
        STRB     R0,[SP, #+13]
//  259    gTxMessage.Data[3]=KnobCntrTab2[1].Data[3];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+34]
        STRB     R0,[SP, #+14]
//  260    gTxMessage.Data[4]=KnobCntrTab2[1].Data[4];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+35]
        STRB     R0,[SP, #+15]
//  261    gTxMessage.Data[5]=KnobCntrTab2[1].Data[5];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+36]
        STRB     R0,[SP, #+16]
//  262    gTxMessage.Data[6]=KnobCntrTab2[1].Data[6];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+37]
        STRB     R0,[SP, #+17]
//  263    gTxMessage.Data[7]=KnobCntrTab2[1].Data[7];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+38]
        STRB     R0,[SP, #+18]
//  264    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  265 	break;
        B.N      ??BMW_KnobContrl_1
//  266 case 3:
//  267 	gTxMessage.DLC=KnobCntrTab2[2].DLC;
??BMW_KnobContrl_2:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+50]
        STRB     R0,[SP, #+10]
//  268    gTxMessage.StdId=KnobCntrTab2[2].StdId;
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+40]
        STR      R0,[SP, #+0]
//  269    gTxMessage.IDE=KnobCntrTab2[2].IDE;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+48]
        STRB     R0,[SP, #+8]
//  270    gTxMessage.RTR=KnobCntrTab2[2].RTR;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+49]
        STRB     R0,[SP, #+9]
//  271    gTxMessage.Data[0]=KnobCntrTab2[2].Data[0];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+51]
        STRB     R0,[SP, #+11]
//  272    gTxMessage.Data[1]=KnobCntrTab2[2].Data[1];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+52]
        STRB     R0,[SP, #+12]
//  273    gTxMessage.Data[2]=KnobCntrTab2[2].Data[2];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+53]
        STRB     R0,[SP, #+13]
//  274    gTxMessage.Data[3]=KnobCntrTab2[2].Data[3];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+54]
        STRB     R0,[SP, #+14]
//  275    gTxMessage.Data[4]=KnobCntrTab2[2].Data[4];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+55]
        STRB     R0,[SP, #+15]
//  276    gTxMessage.Data[5]=KnobCntrTab2[2].Data[5];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+56]
        STRB     R0,[SP, #+16]
//  277    gTxMessage.Data[6]=KnobCntrTab2[2].Data[6];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+57]
        STRB     R0,[SP, #+17]
//  278    gTxMessage.Data[7]=KnobCntrTab2[2].Data[7];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+58]
        STRB     R0,[SP, #+18]
//  279    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  280 	break;	
        B.N      ??BMW_KnobContrl_1
//  281 case 4:
//  282 	gTxMessage.DLC=KnobCntrTab2[3].DLC;
??BMW_KnobContrl_5:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+70]
        STRB     R0,[SP, #+10]
//  283    gTxMessage.StdId=KnobCntrTab2[3].StdId;
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+60]
        STR      R0,[SP, #+0]
//  284    gTxMessage.IDE=KnobCntrTab2[3].IDE;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+68]
        STRB     R0,[SP, #+8]
//  285    gTxMessage.RTR=KnobCntrTab2[3].RTR;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+69]
        STRB     R0,[SP, #+9]
//  286    gTxMessage.Data[0]=KnobCntrTab2[3].Data[0];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+71]
        STRB     R0,[SP, #+11]
//  287    gTxMessage.Data[1]=KnobCntrTab2[3].Data[1];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+72]
        STRB     R0,[SP, #+12]
//  288    gTxMessage.Data[2]=KnobCntrTab2[3].Data[2];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+73]
        STRB     R0,[SP, #+13]
//  289    gTxMessage.Data[3]=KnobCntrTab2[3].Data[3];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+74]
        STRB     R0,[SP, #+14]
//  290    gTxMessage.Data[4]=KnobCntrTab2[3].Data[4];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+75]
        STRB     R0,[SP, #+15]
//  291    gTxMessage.Data[5]=KnobCntrTab2[3].Data[5];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+76]
        STRB     R0,[SP, #+16]
//  292    gTxMessage.Data[6]=KnobCntrTab2[3].Data[6];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+77]
        STRB     R0,[SP, #+17]
//  293    gTxMessage.Data[7]=KnobCntrTab2[3].Data[7];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+78]
        STRB     R0,[SP, #+18]
//  294    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  295 	break;	
        B.N      ??BMW_KnobContrl_1
//  296 case 5:
//  297 	gTxMessage.DLC=KnobCntrTab2[4].DLC;
??BMW_KnobContrl_4:
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+90]
        STRB     R0,[SP, #+10]
//  298    gTxMessage.StdId=KnobCntrTab2[4].StdId;
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+80]
        STR      R0,[SP, #+0]
//  299    gTxMessage.IDE=KnobCntrTab2[4].IDE;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+88]
        STRB     R0,[SP, #+8]
//  300    gTxMessage.RTR=KnobCntrTab2[4].RTR;
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+89]
        STRB     R0,[SP, #+9]
//  301    gTxMessage.Data[0]=KnobCntrTab2[4].Data[0];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+91]
        STRB     R0,[SP, #+11]
//  302    gTxMessage.Data[1]=KnobCntrTab2[4].Data[1];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+92]
        STRB     R0,[SP, #+12]
//  303    gTxMessage.Data[2]=KnobCntrTab2[4].Data[2];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+93]
        STRB     R0,[SP, #+13]
//  304    gTxMessage.Data[3]=KnobCntrTab2[4].Data[3];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+94]
        STRB     R0,[SP, #+14]
//  305    gTxMessage.Data[4]=KnobCntrTab2[4].Data[4];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+95]
        STRB     R0,[SP, #+15]
//  306    gTxMessage.Data[5]=KnobCntrTab2[4].Data[5];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+96]
        STRB     R0,[SP, #+16]
//  307    gTxMessage.Data[6]=KnobCntrTab2[4].Data[6];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+97]
        STRB     R0,[SP, #+17]
//  308    gTxMessage.Data[7]=KnobCntrTab2[4].Data[7];
        LDR.W    R0,??DataTable7
        LDRB     R0,[R0, #+98]
        STRB     R0,[SP, #+18]
//  309    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  310 	break;		
//  311   	}
//  312 }
??BMW_KnobContrl_1:
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//  313 /*=======================
//  314 Function:
//  315 
//  316 
//  317 ========================*/

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  318 const static  CanTxMsg	FrontCntrTab[]=
FrontCntrTab:
        DATA
        DC32 0, 305419904
        DC8 4, 0, 6, 225, 253, 229, 1, 192, 0, 0, 0, 0
//  319 {
//  320       {0,0x12345680,CAN_Id_Extended,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x00}},
//  321 	  	//{0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},
//  322 };//===17330A10===
//  323 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function LF_FrontContrl
        THUMB
//  324 void LF_FrontContrl(BYTE cantype,BYTE state,WORD x,WORD y)
//  325 {
LF_FrontContrl:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+20
          CFI CFA R13+40
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  326   CanTxMsg gTxMessage;
//  327 
//  328 
//  329    gTxMessage.DLC=FrontCntrTab[0].DLC;
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+10]
        STRB     R0,[SP, #+10]
//  330    gTxMessage.StdId=FrontCntrTab[0].StdId;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
//  331    gTxMessage.ExtId=FrontCntrTab[0].ExtId;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+4]
        STR      R0,[SP, #+4]
//  332    gTxMessage.IDE=FrontCntrTab[0].IDE;
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+8]
        STRB     R0,[SP, #+8]
//  333    gTxMessage.RTR=FrontCntrTab[0].RTR;
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+9]
        STRB     R0,[SP, #+9]
//  334    gTxMessage.Data[0]=state;//FrontCntrTab[0].Data[0];
        STRB     R5,[SP, #+11]
//  335    gTxMessage.Data[1]=x>>8;//FrontCntrTab[0].Data[1];
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+12]
//  336    gTxMessage.Data[2]=x;//FrontCntrTab[0].Data[2];
        MOVS     R0,R6
        STRB     R0,[SP, #+13]
//  337    gTxMessage.Data[3]=y>>8;//KnobCntrTab[0].Data[3];
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LSRS     R0,R7,#+8
        STRB     R0,[SP, #+14]
//  338    gTxMessage.Data[4]=y;//FrontCntrTab[0].Data[4];
        MOVS     R0,R7
        STRB     R0,[SP, #+15]
//  339    gTxMessage.Data[5]=FrontCntrTab[0].Data[5];
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+16]
        STRB     R0,[SP, #+16]
//  340    //gTxMessage.Data[6]=FrontCntrTab[0].Data[6];
//  341    //gTxMessage.Data[7]=FrontCntrTab[0].Data[7];
//  342   if(cantype)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??LF_FrontContrl_0
//  343   {
//  344 
//  345         Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
        B.N      ??LF_FrontContrl_1
//  346   }
//  347   else
//  348   {
//  349 
//  350         Can_Tx(CAN1, &gTxMessage);
??LF_FrontContrl_0:
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable8  ;; 0x40006400
          CFI FunCall Can_Tx
        BL       Can_Tx
//  351   }
//  352 }
??LF_FrontContrl_1:
        ADD      SP,SP,#+20
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock2
//  353 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function LF_BENCI_KEY_SEND_FUN
        THUMB
//  354 void LF_BENCI_KEY_SEND_FUN(CAN_TypeDef *cantype,BYTE statu)
//  355 {
LF_BENCI_KEY_SEND_FUN:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+12
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
//  356 	switch(statu)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??LF_BENCI_KEY_SEND_FUN_0
        CMP      R5,#+2
        BEQ.N    ??LF_BENCI_KEY_SEND_FUN_1
        BCC.N    ??LF_BENCI_KEY_SEND_FUN_2
        CMP      R5,#+4
        BEQ.N    ??LF_BENCI_KEY_SEND_FUN_3
        BCC.N    ??LF_BENCI_KEY_SEND_FUN_4
        B.N      ??LF_BENCI_KEY_SEND_FUN_5
//  357 	{
//  358 		case benci_send_key_up:
//  359 			LF_BENCI_SEND_FUN(cantype,BENCI_keyTab[0]);
??LF_BENCI_KEY_SEND_FUN_0:
        LDR.W    R1,??DataTable8_1
        SUB      SP,SP,#+12
          CFI CFA R13+36
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R1-R3}
          CFI CFA R13+24
        MOVS     R0,R4
          CFI FunCall LF_BENCI_SEND_FUN
        BL       LF_BENCI_SEND_FUN
//  360 			break;
        B.N      ??LF_BENCI_KEY_SEND_FUN_5
//  361 		case benci_send_key_down:
//  362 			LF_BENCI_SEND_FUN(cantype,BENCI_keyTab[1]);
??LF_BENCI_KEY_SEND_FUN_2:
        LDR.W    R1,??DataTable8_2
        SUB      SP,SP,#+12
          CFI CFA R13+36
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R1-R3}
          CFI CFA R13+24
        MOVS     R0,R4
          CFI FunCall LF_BENCI_SEND_FUN
        BL       LF_BENCI_SEND_FUN
//  363 			break;
        B.N      ??LF_BENCI_KEY_SEND_FUN_5
//  364 		case benci_send_key_left:
//  365 			LF_BENCI_SEND_FUN(cantype,BENCI_keyTab[2]);
??LF_BENCI_KEY_SEND_FUN_1:
        LDR.W    R1,??DataTable8_3
        SUB      SP,SP,#+12
          CFI CFA R13+36
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R1-R3}
          CFI CFA R13+24
        MOVS     R0,R4
          CFI FunCall LF_BENCI_SEND_FUN
        BL       LF_BENCI_SEND_FUN
//  366 			break;
        B.N      ??LF_BENCI_KEY_SEND_FUN_5
//  367 		case benci_send_key_right:
//  368 			LF_BENCI_SEND_FUN(cantype,BENCI_keyTab[3]);
??LF_BENCI_KEY_SEND_FUN_4:
        LDR.W    R1,??DataTable8_4
        SUB      SP,SP,#+12
          CFI CFA R13+36
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R1-R3}
          CFI CFA R13+24
        MOVS     R0,R4
          CFI FunCall LF_BENCI_SEND_FUN
        BL       LF_BENCI_SEND_FUN
//  369 			break;	
        B.N      ??LF_BENCI_KEY_SEND_FUN_5
//  370 		case benci_send_key_enter:
//  371 			LF_BENCI_SEND_FUN(cantype,BENCI_keyTab[4]);
??LF_BENCI_KEY_SEND_FUN_3:
        LDR.W    R1,??DataTable9
        SUB      SP,SP,#+12
          CFI CFA R13+36
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R1-R3}
          CFI CFA R13+24
        MOVS     R0,R4
          CFI FunCall LF_BENCI_SEND_FUN
        BL       LF_BENCI_SEND_FUN
//  372 			break;				
//  373 			
//  374 	}
//  375 }
??LF_BENCI_KEY_SEND_FUN_5:
        POP      {R0-R2,R4,R5,PC}  ;; return
          CFI EndBlock cfiBlock3
//  376 
//  377 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function LF_BENCI_SEND_FUN
        THUMB
//  378 void LF_BENCI_SEND_FUN(CAN_TypeDef *cantype,CanTxMsg buff)//,Byte statu)
//  379 {
LF_BENCI_SEND_FUN:
        PUSH     {R1-R3}
          CFI CFA R13+12
        PUSH     {R3,R4,LR}
          CFI R14 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  380   //CanTxMsg gTxMessage;
//  381 
//  382 
//  383 
//  384   if(cantype)
        CMP      R4,#+0
        BEQ.N    ??LF_BENCI_SEND_FUN_0
//  385   {
//  386 
//  387         Can_Tx(CAN2, &buff);
        ADD      R1,SP,#+12
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
        B.N      ??LF_BENCI_SEND_FUN_1
//  388   }
//  389   else
//  390   {
//  391 
//  392         Can_Tx(CAN1, &buff);
??LF_BENCI_SEND_FUN_0:
        ADD      R1,SP,#+12
        LDR.W    R0,??DataTable8  ;; 0x40006400
          CFI FunCall Can_Tx
        BL       Can_Tx
//  393   }
//  394 }
??LF_BENCI_SEND_FUN_1:
        POP      {R0,R4}
          CFI R4 SameValue
          CFI CFA R13+16
        LDR      PC,[SP], #+16    ;; return
          CFI EndBlock cfiBlock4
//  395 
//  396 
//  397 #if 1 //kang's function

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function BMW_AuxContrl_Task
        THUMB
//  398 void BMW_AuxContrl_Task(void)
//  399 {
BMW_AuxContrl_Task:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
//  400   CanTxMsg gTxMessage;
//  401   
//  402   switch(m_BMW_CAN.uAuxSendSn)
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+11]
        CMP      R0,#+1
        BEQ.N    ??BMW_AuxContrl_Task_0
        BCC.W    ??BMW_AuxContrl_Task_1
        CMP      R0,#+3
        BEQ.W    ??BMW_AuxContrl_Task_2
        BCC.N    ??BMW_AuxContrl_Task_3
        CMP      R0,#+5
        BEQ.W    ??BMW_AuxContrl_Task_4
        BCC.W    ??BMW_AuxContrl_Task_5
        B.N      ??BMW_AuxContrl_Task_1
//  403   {
//  404   case __SN0_:
//  405    gTxMessage.DLC=KnobCntrTab[2].DLC;
??BMW_AuxContrl_Task_0:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+50]
        STRB     R0,[SP, #+10]
//  406    gTxMessage.StdId=KnobCntrTab[2].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+40]
        STR      R0,[SP, #+0]
//  407    gTxMessage.IDE=KnobCntrTab[2].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+48]
        STRB     R0,[SP, #+8]
//  408    gTxMessage.RTR=KnobCntrTab[2].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+49]
        STRB     R0,[SP, #+9]
//  409    gTxMessage.Data[0]=KnobCntrTab[2].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+51]
        STRB     R0,[SP, #+11]
//  410    gTxMessage.Data[1]=KnobCntrTab[2].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+52]
        STRB     R0,[SP, #+12]
//  411    gTxMessage.Data[2]=KnobCntrTab[2].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+53]
        STRB     R0,[SP, #+13]
//  412    gTxMessage.Data[3]=KnobCntrTab[2].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+54]
        STRB     R0,[SP, #+14]
//  413    gTxMessage.Data[4]=KnobCntrTab[2].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+55]
        STRB     R0,[SP, #+15]
//  414    gTxMessage.Data[5]=KnobCntrTab[2].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+56]
        STRB     R0,[SP, #+16]
//  415    gTxMessage.Data[6]=KnobCntrTab[2].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+57]
        STRB     R0,[SP, #+17]
//  416    gTxMessage.Data[7]=KnobCntrTab[2].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+58]
        STRB     R0,[SP, #+18]
//  417      
//  418    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  419    m_BMW_CAN.uAuxSendSn=__SN1_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+11]
//  420     break;
        B.N      ??BMW_AuxContrl_Task_6
//  421   case __SN1_:
//  422     gTxMessage.DLC=KnobCntrTab[3].DLC;
??BMW_AuxContrl_Task_3:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+70]
        STRB     R0,[SP, #+10]
//  423    gTxMessage.StdId=KnobCntrTab[3].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+60]
        STR      R0,[SP, #+0]
//  424    gTxMessage.IDE=KnobCntrTab[3].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+68]
        STRB     R0,[SP, #+8]
//  425    gTxMessage.RTR=KnobCntrTab[3].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+69]
        STRB     R0,[SP, #+9]
//  426    gTxMessage.Data[0]=KnobCntrTab[3].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+71]
        STRB     R0,[SP, #+11]
//  427    gTxMessage.Data[1]=KnobCntrTab[3].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+72]
        STRB     R0,[SP, #+12]
//  428    gTxMessage.Data[2]=KnobCntrTab[3].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+73]
        STRB     R0,[SP, #+13]
//  429    gTxMessage.Data[3]=KnobCntrTab[3].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+74]
        STRB     R0,[SP, #+14]
//  430    gTxMessage.Data[4]=KnobCntrTab[3].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+75]
        STRB     R0,[SP, #+15]
//  431    gTxMessage.Data[5]=KnobCntrTab[3].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+76]
        STRB     R0,[SP, #+16]
//  432    gTxMessage.Data[6]=KnobCntrTab[3].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+77]
        STRB     R0,[SP, #+17]
//  433    gTxMessage.Data[7]=KnobCntrTab[3].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+78]
        STRB     R0,[SP, #+18]
//  434     Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  435    m_BMW_CAN.uAuxSendSn=__SN2_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+3
        STRB     R1,[R0, #+11]
//  436     break;
        B.N      ??BMW_AuxContrl_Task_6
//  437   case __SN2_:
//  438    gTxMessage.DLC=KnobCntrTab[4].DLC;
??BMW_AuxContrl_Task_2:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+90]
        STRB     R0,[SP, #+10]
//  439    gTxMessage.StdId=KnobCntrTab[4].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+80]
        STR      R0,[SP, #+0]
//  440    gTxMessage.IDE=KnobCntrTab[4].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+88]
        STRB     R0,[SP, #+8]
//  441    gTxMessage.RTR=KnobCntrTab[4].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+89]
        STRB     R0,[SP, #+9]
//  442    gTxMessage.Data[0]=KnobCntrTab[4].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+91]
        STRB     R0,[SP, #+11]
//  443    gTxMessage.Data[1]=KnobCntrTab[4].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+92]
        STRB     R0,[SP, #+12]
//  444    gTxMessage.Data[2]=KnobCntrTab[4].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+93]
        STRB     R0,[SP, #+13]
//  445    gTxMessage.Data[3]=KnobCntrTab[4].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+94]
        STRB     R0,[SP, #+14]
//  446    gTxMessage.Data[4]=KnobCntrTab[4].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+95]
        STRB     R0,[SP, #+15]
//  447    gTxMessage.Data[5]=KnobCntrTab[4].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+96]
        STRB     R0,[SP, #+16]
//  448    gTxMessage.Data[6]=KnobCntrTab[4].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+97]
        STRB     R0,[SP, #+17]
//  449    gTxMessage.Data[7]=KnobCntrTab[4].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+98]
        STRB     R0,[SP, #+18]
//  450      
//  451    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  452    m_BMW_CAN.uAuxSendSn=__SN3_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+4
        STRB     R1,[R0, #+11]
//  453     break;
        B.N      ??BMW_AuxContrl_Task_6
//  454   case __SN3_:
//  455    gTxMessage.DLC=KnobCntrTab[5].DLC;
??BMW_AuxContrl_Task_5:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+110]
        STRB     R0,[SP, #+10]
//  456    gTxMessage.StdId=KnobCntrTab[5].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+100]
        STR      R0,[SP, #+0]
//  457    gTxMessage.IDE=KnobCntrTab[5].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+108]
        STRB     R0,[SP, #+8]
//  458    gTxMessage.RTR=KnobCntrTab[5].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+109]
        STRB     R0,[SP, #+9]
//  459    gTxMessage.Data[0]=KnobCntrTab[5].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+111]
        STRB     R0,[SP, #+11]
//  460    gTxMessage.Data[1]=KnobCntrTab[5].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+112]
        STRB     R0,[SP, #+12]
//  461    gTxMessage.Data[2]=KnobCntrTab[5].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+113]
        STRB     R0,[SP, #+13]
//  462    gTxMessage.Data[3]=KnobCntrTab[5].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+114]
        STRB     R0,[SP, #+14]
//  463    gTxMessage.Data[4]=KnobCntrTab[5].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+115]
        STRB     R0,[SP, #+15]
//  464    gTxMessage.Data[5]=KnobCntrTab[5].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+116]
        STRB     R0,[SP, #+16]
//  465    gTxMessage.Data[6]=KnobCntrTab[5].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+117]
        STRB     R0,[SP, #+17]
//  466    gTxMessage.Data[7]=KnobCntrTab[5].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+118]
        STRB     R0,[SP, #+18]
//  467      
//  468    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  469    m_BMW_CAN.uAuxSendSn=__SN4_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+5
        STRB     R1,[R0, #+11]
//  470     break;
        B.N      ??BMW_AuxContrl_Task_6
//  471   case __SN4_:
//  472    gTxMessage.DLC=KnobCntrTab[6].DLC;
??BMW_AuxContrl_Task_4:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+130]
        STRB     R0,[SP, #+10]
//  473    gTxMessage.StdId=KnobCntrTab[6].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+120]
        STR      R0,[SP, #+0]
//  474    gTxMessage.IDE=KnobCntrTab[6].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+128]
        STRB     R0,[SP, #+8]
//  475    gTxMessage.RTR=KnobCntrTab[6].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+129]
        STRB     R0,[SP, #+9]
//  476    gTxMessage.Data[0]=KnobCntrTab[6].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+131]
        STRB     R0,[SP, #+11]
//  477    gTxMessage.Data[1]=KnobCntrTab[6].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+132]
        STRB     R0,[SP, #+12]
//  478    gTxMessage.Data[2]=KnobCntrTab[6].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+133]
        STRB     R0,[SP, #+13]
//  479    gTxMessage.Data[3]=KnobCntrTab[6].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+134]
        STRB     R0,[SP, #+14]
//  480    gTxMessage.Data[4]=KnobCntrTab[6].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+135]
        STRB     R0,[SP, #+15]
//  481    gTxMessage.Data[5]=KnobCntrTab[6].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+136]
        STRB     R0,[SP, #+16]
//  482    gTxMessage.Data[6]=KnobCntrTab[6].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+137]
        STRB     R0,[SP, #+17]
//  483    gTxMessage.Data[7]=KnobCntrTab[6].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+138]
        STRB     R0,[SP, #+18]
//  484      
//  485    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  486    m_BMW_CAN.uAuxSendSn=__SN_END_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+30
        STRB     R1,[R0, #+11]
//  487     break;
        B.N      ??BMW_AuxContrl_Task_6
//  488 	#if 0
//  489   case __SN5_:
//  490    gTxMessage.DLC=KnobCntrTab[7].DLC;
//  491    gTxMessage.StdId=KnobCntrTab[7].StdId;
//  492    gTxMessage.IDE=KnobCntrTab[7].IDE;
//  493    gTxMessage.RTR=KnobCntrTab[7].RTR;
//  494    gTxMessage.Data[0]=KnobCntrTab[7].Data[0];
//  495    gTxMessage.Data[1]=KnobCntrTab[7].Data[1];
//  496    gTxMessage.Data[2]=KnobCntrTab[7].Data[2];
//  497    gTxMessage.Data[3]=KnobCntrTab[7].Data[3];
//  498    gTxMessage.Data[4]=KnobCntrTab[7].Data[4];
//  499    gTxMessage.Data[5]=KnobCntrTab[7].Data[5];
//  500    gTxMessage.Data[6]=KnobCntrTab[7].Data[6];
//  501    gTxMessage.Data[7]=KnobCntrTab[7].Data[7];
//  502      
//  503    Can_Tx(CAN2, &gTxMessage);
//  504    m_BMW_CAN.uAuxSendSn=__SN6_;
//  505     break;
//  506   case __SN6_:
//  507    gTxMessage.DLC=KnobCntrTab[8].DLC;
//  508    gTxMessage.StdId=KnobCntrTab[8].StdId;
//  509    gTxMessage.IDE=KnobCntrTab[8].IDE;
//  510    gTxMessage.RTR=KnobCntrTab[8].RTR;
//  511    gTxMessage.Data[0]=KnobCntrTab[8].Data[0];
//  512    gTxMessage.Data[1]=KnobCntrTab[8].Data[1];
//  513    gTxMessage.Data[2]=KnobCntrTab[8].Data[2];
//  514    gTxMessage.Data[3]=KnobCntrTab[8].Data[3];
//  515    gTxMessage.Data[4]=KnobCntrTab[8].Data[4];
//  516    gTxMessage.Data[5]=KnobCntrTab[8].Data[5];
//  517    gTxMessage.Data[6]=KnobCntrTab[8].Data[6];
//  518    gTxMessage.Data[7]=KnobCntrTab[8].Data[7];
//  519      
//  520    Can_Tx(CAN2, &gTxMessage);
//  521    m_BMW_CAN.uAuxSendSn=__SN7_;
//  522     break;
//  523   case __SN7_:
//  524    gTxMessage.DLC=KnobCntrTab[9].DLC;
//  525    gTxMessage.StdId=KnobCntrTab[9].StdId;
//  526    gTxMessage.IDE=KnobCntrTab[9].IDE;
//  527    gTxMessage.RTR=KnobCntrTab[9].RTR;
//  528    gTxMessage.Data[0]=KnobCntrTab[9].Data[0];
//  529    gTxMessage.Data[1]=KnobCntrTab[9].Data[1];
//  530    gTxMessage.Data[2]=KnobCntrTab[9].Data[2];
//  531    gTxMessage.Data[3]=KnobCntrTab[9].Data[3];
//  532    gTxMessage.Data[4]=KnobCntrTab[9].Data[4];
//  533    gTxMessage.Data[5]=KnobCntrTab[9].Data[5];
//  534    gTxMessage.Data[6]=KnobCntrTab[9].Data[6];
//  535    gTxMessage.Data[7]=KnobCntrTab[9].Data[7];
//  536      
//  537    Can_Tx(CAN2, &gTxMessage);
//  538    m_BMW_CAN.uAuxSendSn=__SN8_;
//  539     break;
//  540   case __SN8_:
//  541    gTxMessage.DLC=KnobCntrTab[10].DLC;
//  542    gTxMessage.StdId=KnobCntrTab[10].StdId;
//  543    gTxMessage.IDE=KnobCntrTab[10].IDE;
//  544    gTxMessage.RTR=KnobCntrTab[10].RTR;
//  545    gTxMessage.Data[0]=KnobCntrTab[10].Data[0];
//  546    gTxMessage.Data[1]=KnobCntrTab[10].Data[1];
//  547    gTxMessage.Data[2]=KnobCntrTab[10].Data[2];
//  548    gTxMessage.Data[3]=KnobCntrTab[10].Data[3];
//  549    gTxMessage.Data[4]=KnobCntrTab[10].Data[4];
//  550    gTxMessage.Data[5]=KnobCntrTab[10].Data[5];
//  551    gTxMessage.Data[6]=KnobCntrTab[10].Data[6];
//  552    gTxMessage.Data[7]=KnobCntrTab[10].Data[7];
//  553      
//  554    Can_Tx(CAN2, &gTxMessage);
//  555    m_BMW_CAN.uAuxSendSn=__SN9_;
//  556     break;
//  557   case __SN9_:
//  558    gTxMessage.DLC=KnobCntrTab[11].DLC;
//  559    gTxMessage.StdId=KnobCntrTab[11].StdId;
//  560    gTxMessage.IDE=KnobCntrTab[11].IDE;
//  561    gTxMessage.RTR=KnobCntrTab[11].RTR;
//  562    gTxMessage.Data[0]=KnobCntrTab[11].Data[0];
//  563    gTxMessage.Data[1]=KnobCntrTab[11].Data[1];
//  564    gTxMessage.Data[2]=KnobCntrTab[11].Data[2];
//  565    gTxMessage.Data[3]=KnobCntrTab[11].Data[3];
//  566    gTxMessage.Data[4]=KnobCntrTab[11].Data[4];
//  567    gTxMessage.Data[5]=KnobCntrTab[11].Data[5];
//  568    gTxMessage.Data[6]=KnobCntrTab[11].Data[6];
//  569    gTxMessage.Data[7]=KnobCntrTab[11].Data[7];
//  570      
//  571    Can_Tx(CAN2, &gTxMessage);
//  572    m_BMW_CAN.uAuxSendSn=__SN10_;
//  573     break;
//  574   case __SN10_:
//  575    gTxMessage.DLC=KnobCntrTab[12].DLC;
//  576    gTxMessage.StdId=KnobCntrTab[12].StdId;
//  577    gTxMessage.IDE=KnobCntrTab[12].IDE;
//  578    gTxMessage.RTR=KnobCntrTab[12].RTR;
//  579    gTxMessage.Data[0]=KnobCntrTab[12].Data[0];
//  580    gTxMessage.Data[1]=KnobCntrTab[12].Data[1];
//  581    gTxMessage.Data[2]=KnobCntrTab[12].Data[2];
//  582    gTxMessage.Data[3]=KnobCntrTab[12].Data[3];
//  583    gTxMessage.Data[4]=KnobCntrTab[12].Data[4];
//  584    gTxMessage.Data[5]=KnobCntrTab[12].Data[5];
//  585    gTxMessage.Data[6]=KnobCntrTab[12].Data[6];
//  586    gTxMessage.Data[7]=KnobCntrTab[12].Data[7];
//  587      
//  588    Can_Tx(CAN2, &gTxMessage);
//  589    m_BMW_CAN.uAuxSendSn=__SN11_;
//  590     break;
//  591   case __SN11_:
//  592    gTxMessage.DLC=KnobCntrTab[13].DLC;
//  593    gTxMessage.StdId=KnobCntrTab[13].StdId;
//  594    gTxMessage.IDE=KnobCntrTab[13].IDE;
//  595    gTxMessage.RTR=KnobCntrTab[13].RTR;
//  596    gTxMessage.Data[0]=KnobCntrTab[13].Data[0];
//  597    gTxMessage.Data[1]=KnobCntrTab[13].Data[1];
//  598    gTxMessage.Data[2]=KnobCntrTab[13].Data[2];
//  599    gTxMessage.Data[3]=KnobCntrTab[13].Data[3];
//  600    gTxMessage.Data[4]=KnobCntrTab[13].Data[4];
//  601    gTxMessage.Data[5]=KnobCntrTab[13].Data[5];
//  602    gTxMessage.Data[6]=KnobCntrTab[13].Data[6];
//  603    gTxMessage.Data[7]=KnobCntrTab[13].Data[7];
//  604      
//  605    Can_Tx(CAN2, &gTxMessage);
//  606    m_BMW_CAN.uAuxSendSn=__SN12_;
//  607     break;
//  608 
//  609   case __SN12_:
//  610    gTxMessage.DLC=KnobCntrTab[14].DLC;
//  611    gTxMessage.StdId=KnobCntrTab[14].StdId;
//  612    gTxMessage.IDE=KnobCntrTab[14].IDE;
//  613    gTxMessage.RTR=KnobCntrTab[14].RTR;
//  614    gTxMessage.Data[0]=KnobCntrTab[14].Data[0];
//  615    gTxMessage.Data[1]=KnobCntrTab[14].Data[1];
//  616    gTxMessage.Data[2]=KnobCntrTab[14].Data[2];
//  617    gTxMessage.Data[3]=KnobCntrTab[14].Data[3];
//  618    gTxMessage.Data[4]=KnobCntrTab[14].Data[4];
//  619    gTxMessage.Data[5]=KnobCntrTab[14].Data[5];
//  620    gTxMessage.Data[6]=KnobCntrTab[14].Data[6];
//  621    gTxMessage.Data[7]=KnobCntrTab[14].Data[7];
//  622      
//  623    Can_Tx(CAN2, &gTxMessage);
//  624    m_BMW_CAN.uAuxSendSn=__SN13_;
//  625     break;
//  626   case __SN13_:
//  627    gTxMessage.DLC=KnobCntrTab[15].DLC;
//  628    gTxMessage.StdId=KnobCntrTab[15].StdId;
//  629    gTxMessage.IDE=KnobCntrTab[15].IDE;
//  630    gTxMessage.RTR=KnobCntrTab[15].RTR;
//  631    gTxMessage.Data[0]=KnobCntrTab[15].Data[0];
//  632    gTxMessage.Data[1]=KnobCntrTab[15].Data[1];
//  633    gTxMessage.Data[2]=KnobCntrTab[15].Data[2];
//  634    gTxMessage.Data[3]=KnobCntrTab[15].Data[3];
//  635    gTxMessage.Data[4]=KnobCntrTab[15].Data[4];
//  636    gTxMessage.Data[5]=KnobCntrTab[15].Data[5];
//  637    gTxMessage.Data[6]=KnobCntrTab[15].Data[6];
//  638    gTxMessage.Data[7]=KnobCntrTab[15].Data[7];
//  639      
//  640    Can_Tx(CAN2, &gTxMessage);
//  641    m_BMW_CAN.uAuxSendSn=__SN14_;
//  642     break;
//  643   case __SN14_:
//  644    gTxMessage.DLC=KnobCntrTab[16].DLC;
//  645    gTxMessage.StdId=KnobCntrTab[16].StdId;
//  646    gTxMessage.IDE=KnobCntrTab[16].IDE;
//  647    gTxMessage.RTR=KnobCntrTab[16].RTR;
//  648    gTxMessage.Data[0]=KnobCntrTab[16].Data[0];
//  649    gTxMessage.Data[1]=KnobCntrTab[16].Data[1];
//  650    gTxMessage.Data[2]=KnobCntrTab[16].Data[2];
//  651    gTxMessage.Data[3]=KnobCntrTab[16].Data[3];
//  652    gTxMessage.Data[4]=KnobCntrTab[16].Data[4];
//  653    gTxMessage.Data[5]=KnobCntrTab[16].Data[5];
//  654    gTxMessage.Data[6]=KnobCntrTab[16].Data[6];
//  655    gTxMessage.Data[7]=KnobCntrTab[16].Data[7];
//  656      
//  657    Can_Tx(CAN2, &gTxMessage);
//  658    m_BMW_CAN.uAuxSendSn=__SN15_;
//  659     break;
//  660   case __SN15_:
//  661    gTxMessage.DLC=KnobCntrTab[17].DLC;
//  662    gTxMessage.StdId=KnobCntrTab[17].StdId;
//  663    gTxMessage.IDE=KnobCntrTab[17].IDE;
//  664    gTxMessage.RTR=KnobCntrTab[17].RTR;
//  665    gTxMessage.Data[0]=KnobCntrTab[17].Data[0];
//  666    gTxMessage.Data[1]=KnobCntrTab[17].Data[1];
//  667    gTxMessage.Data[2]=KnobCntrTab[17].Data[2];
//  668    gTxMessage.Data[3]=KnobCntrTab[17].Data[3];
//  669    gTxMessage.Data[4]=KnobCntrTab[17].Data[4];
//  670    gTxMessage.Data[5]=KnobCntrTab[17].Data[5];
//  671    gTxMessage.Data[6]=KnobCntrTab[17].Data[6];
//  672    gTxMessage.Data[7]=KnobCntrTab[17].Data[7];
//  673      
//  674    Can_Tx(CAN2, &gTxMessage);
//  675    m_BMW_CAN.uAuxSendSn=__SN16_;
//  676     break;
//  677    case __SN16_:
//  678    gTxMessage.DLC=KnobCntrTab[22].DLC;
//  679    gTxMessage.StdId=KnobCntrTab[22].StdId;
//  680    gTxMessage.IDE=KnobCntrTab[22].IDE;
//  681    gTxMessage.RTR=KnobCntrTab[22].RTR;
//  682    gTxMessage.Data[0]=KnobCntrTab[22].Data[0];
//  683    gTxMessage.Data[1]=KnobCntrTab[22].Data[1];
//  684    gTxMessage.Data[2]=KnobCntrTab[22].Data[2];
//  685    gTxMessage.Data[3]=KnobCntrTab[22].Data[3];
//  686    gTxMessage.Data[4]=KnobCntrTab[22].Data[4];
//  687    gTxMessage.Data[5]=KnobCntrTab[22].Data[5];
//  688    gTxMessage.Data[6]=KnobCntrTab[22].Data[6];
//  689    gTxMessage.Data[7]=KnobCntrTab[22].Data[7];
//  690      
//  691    Can_Tx(CAN2, &gTxMessage);
//  692    m_BMW_CAN.uAuxSendSn=__SN17_;
//  693     break;
//  694  case __SN17_:
//  695    gTxMessage.DLC=KnobCntrTab[23].DLC;
//  696    gTxMessage.StdId=KnobCntrTab[23].StdId;
//  697    gTxMessage.IDE=KnobCntrTab[23].IDE;
//  698    gTxMessage.RTR=KnobCntrTab[23].RTR;
//  699    gTxMessage.Data[0]=KnobCntrTab[23].Data[0];
//  700    gTxMessage.Data[1]=KnobCntrTab[23].Data[1];
//  701    gTxMessage.Data[2]=KnobCntrTab[23].Data[2];
//  702    gTxMessage.Data[3]=KnobCntrTab[23].Data[3];
//  703    gTxMessage.Data[4]=KnobCntrTab[23].Data[4];
//  704    gTxMessage.Data[5]=KnobCntrTab[23].Data[5];
//  705    gTxMessage.Data[6]=KnobCntrTab[23].Data[6];
//  706    gTxMessage.Data[7]=KnobCntrTab[23].Data[7];
//  707      
//  708    Can_Tx(CAN2, &gTxMessage);
//  709    m_BMW_CAN.uAuxSendSn=__SN18_;
//  710     break;  
//  711 case __SN18_:
//  712 	gTxMessage.DLC=KnobCntrTab[24].DLC;
//  713 	gTxMessage.StdId=KnobCntrTab[24].StdId;
//  714 	gTxMessage.IDE=KnobCntrTab[24].IDE;
//  715 	gTxMessage.RTR=KnobCntrTab[24].RTR;
//  716 	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
//  717 	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
//  718 	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
//  719 	gTxMessage.Data[3]=KnobCntrTab[24].Data[3];
//  720 	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
//  721 	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
//  722 	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
//  723 	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
//  724 	  
//  725 	Can_Tx(CAN2, &gTxMessage);
//  726 	m_BMW_CAN.uAuxSendSn=__SN19_;
//  727 	 break; 
//  728 
//  729 case __SN19_:
//  730    gTxMessage.DLC=KnobCntrTab[14].DLC;
//  731    gTxMessage.StdId=KnobCntrTab[14].StdId;
//  732    gTxMessage.IDE=KnobCntrTab[14].IDE;
//  733    gTxMessage.RTR=KnobCntrTab[14].RTR;
//  734    gTxMessage.Data[0]=KnobCntrTab[14].Data[0];
//  735    gTxMessage.Data[1]=KnobCntrTab[14].Data[1];
//  736    gTxMessage.Data[2]=KnobCntrTab[14].Data[2];
//  737    gTxMessage.Data[3]=KnobCntrTab[14].Data[3];
//  738    gTxMessage.Data[4]=KnobCntrTab[14].Data[4];
//  739    gTxMessage.Data[5]=KnobCntrTab[14].Data[5];
//  740    gTxMessage.Data[6]=KnobCntrTab[14].Data[6];
//  741    gTxMessage.Data[7]=KnobCntrTab[14].Data[7];
//  742      
//  743    Can_Tx(CAN2, &gTxMessage);
//  744    m_BMW_CAN.uAuxSendSn=__SN20_;
//  745     break;
//  746   case __SN20_:
//  747    gTxMessage.DLC=KnobCntrTab[14].DLC;
//  748    gTxMessage.StdId=KnobCntrTab[14].StdId;
//  749    gTxMessage.IDE=KnobCntrTab[14].IDE;
//  750    gTxMessage.RTR=KnobCntrTab[14].RTR;
//  751    gTxMessage.Data[0]=KnobCntrTab[14].Data[0];
//  752    gTxMessage.Data[1]=KnobCntrTab[14].Data[1];
//  753    gTxMessage.Data[2]=KnobCntrTab[14].Data[2];
//  754    gTxMessage.Data[3]=KnobCntrTab[14].Data[3];
//  755    gTxMessage.Data[4]=KnobCntrTab[14].Data[4];
//  756    gTxMessage.Data[5]=KnobCntrTab[14].Data[5];
//  757    gTxMessage.Data[6]=KnobCntrTab[14].Data[6];
//  758    gTxMessage.Data[7]=KnobCntrTab[14].Data[7];
//  759      
//  760    Can_Tx(CAN2, &gTxMessage);
//  761    m_BMW_CAN.uAuxSendSn=__SN21_;
//  762     break;
//  763   case __SN21_:
//  764 	  gTxMessage.DLC=KnobCntrTab[16].DLC;
//  765 	  gTxMessage.StdId=KnobCntrTab[16].StdId;
//  766 	  gTxMessage.IDE=KnobCntrTab[16].IDE;
//  767 	  gTxMessage.RTR=KnobCntrTab[16].RTR;
//  768 	  gTxMessage.Data[0]=KnobCntrTab[16].Data[0];
//  769 	  gTxMessage.Data[1]=KnobCntrTab[16].Data[1];
//  770 	  gTxMessage.Data[2]=KnobCntrTab[16].Data[2];
//  771 	  gTxMessage.Data[3]=KnobCntrTab[16].Data[3];
//  772 	  gTxMessage.Data[4]=KnobCntrTab[16].Data[4];
//  773 	  gTxMessage.Data[5]=KnobCntrTab[16].Data[5];
//  774 	  gTxMessage.Data[6]=KnobCntrTab[16].Data[6];
//  775 	  gTxMessage.Data[7]=KnobCntrTab[16].Data[7];
//  776 
//  777      
//  778    Can_Tx(CAN2, &gTxMessage);
//  779    m_BMW_CAN.uAuxSendSn=__SN22_;
//  780     break;
//  781   case __SN22_:
//  782 	  gTxMessage.DLC=KnobCntrTab[16].DLC;
//  783 	  gTxMessage.StdId=KnobCntrTab[16].StdId;
//  784 	  gTxMessage.IDE=KnobCntrTab[16].IDE;
//  785 	  gTxMessage.RTR=KnobCntrTab[16].RTR;
//  786 	  gTxMessage.Data[0]=KnobCntrTab[16].Data[0];
//  787 	  gTxMessage.Data[1]=KnobCntrTab[16].Data[1];
//  788 	  gTxMessage.Data[2]=KnobCntrTab[16].Data[2];
//  789 	  gTxMessage.Data[3]=KnobCntrTab[16].Data[3];
//  790 	  gTxMessage.Data[4]=KnobCntrTab[16].Data[4];
//  791 	  gTxMessage.Data[5]=KnobCntrTab[16].Data[5];
//  792 	  gTxMessage.Data[6]=KnobCntrTab[16].Data[6];
//  793 	  gTxMessage.Data[7]=KnobCntrTab[16].Data[7];
//  794 
//  795      
//  796    Can_Tx(CAN2, &gTxMessage);
//  797    m_BMW_CAN.uAuxSendSn=__SN_END_;
//  798    
//  799     break;
//  800 	#endif
//  801   default:
//  802     m_BMW_CAN.uAuxSendSn=__SN_END_;
??BMW_AuxContrl_Task_1:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+30
        STRB     R1,[R0, #+11]
//  803     break;
//  804     
//  805     
//  806   }
//  807 }
??BMW_AuxContrl_Task_6:
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock5
//  808 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function BMW_OptionKey_Task
        THUMB
//  809 void BMW_OptionKey_Task(void)
//  810 {
BMW_OptionKey_Task:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+20
          CFI CFA R13+24
//  811   CanTxMsg gTxMessage;
//  812   
//  813   switch(m_BMW_CAN.uOptionSendSn)
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+12]
        CMP      R0,#+1
        BEQ.N    ??BMW_OptionKey_Task_0
        BCC.W    ??BMW_OptionKey_Task_1
        CMP      R0,#+3
        BEQ.W    ??BMW_OptionKey_Task_2
        BCC.N    ??BMW_OptionKey_Task_3
        CMP      R0,#+4
        BEQ.W    ??BMW_OptionKey_Task_4
        B.N      ??BMW_OptionKey_Task_1
//  814   {
//  815   case __SN0_:
//  816    gTxMessage.DLC=KnobCntrTab[18].DLC;
??BMW_OptionKey_Task_0:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+370]
        STRB     R0,[SP, #+10]
//  817    gTxMessage.StdId=KnobCntrTab[18].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+360]
        STR      R0,[SP, #+0]
//  818    gTxMessage.IDE=KnobCntrTab[18].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+368]
        STRB     R0,[SP, #+8]
//  819    gTxMessage.RTR=KnobCntrTab[18].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+369]
        STRB     R0,[SP, #+9]
//  820    gTxMessage.Data[0]=KnobCntrTab[18].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+371]
        STRB     R0,[SP, #+11]
//  821    gTxMessage.Data[1]=KnobCntrTab[18].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+372]
        STRB     R0,[SP, #+12]
//  822    gTxMessage.Data[2]=KnobCntrTab[18].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+373]
        STRB     R0,[SP, #+13]
//  823    gTxMessage.Data[3]=KnobCntrTab[18].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+374]
        STRB     R0,[SP, #+14]
//  824    gTxMessage.Data[4]=KnobCntrTab[18].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+375]
        STRB     R0,[SP, #+15]
//  825    gTxMessage.Data[5]=KnobCntrTab[18].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+376]
        STRB     R0,[SP, #+16]
//  826    gTxMessage.Data[6]=KnobCntrTab[18].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+377]
        STRB     R0,[SP, #+17]
//  827    gTxMessage.Data[7]=KnobCntrTab[18].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+378]
        STRB     R0,[SP, #+18]
//  828      
//  829    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  830    m_BMW_CAN.uOptionSendSn=__SN1_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+12]
//  831     break;
        B.N      ??BMW_OptionKey_Task_5
//  832   case __SN1_:
//  833     gTxMessage.DLC=KnobCntrTab[19].DLC;
??BMW_OptionKey_Task_3:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+390]
        STRB     R0,[SP, #+10]
//  834    gTxMessage.StdId=KnobCntrTab[19].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+380]
        STR      R0,[SP, #+0]
//  835    gTxMessage.IDE=KnobCntrTab[19].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+388]
        STRB     R0,[SP, #+8]
//  836    gTxMessage.RTR=KnobCntrTab[19].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+389]
        STRB     R0,[SP, #+9]
//  837    gTxMessage.Data[0]=KnobCntrTab[19].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+391]
        STRB     R0,[SP, #+11]
//  838    gTxMessage.Data[1]=KnobCntrTab[19].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+392]
        STRB     R0,[SP, #+12]
//  839    gTxMessage.Data[2]=KnobCntrTab[19].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+393]
        STRB     R0,[SP, #+13]
//  840    gTxMessage.Data[3]=KnobCntrTab[19].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+394]
        STRB     R0,[SP, #+14]
//  841    gTxMessage.Data[4]=KnobCntrTab[19].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+395]
        STRB     R0,[SP, #+15]
//  842    gTxMessage.Data[5]=KnobCntrTab[19].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+396]
        STRB     R0,[SP, #+16]
//  843    gTxMessage.Data[6]=KnobCntrTab[19].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+397]
        STRB     R0,[SP, #+17]
//  844    gTxMessage.Data[7]=KnobCntrTab[19].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+398]
        STRB     R0,[SP, #+18]
//  845     Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  846    m_BMW_CAN.uOptionSendSn=__SN2_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+3
        STRB     R1,[R0, #+12]
//  847     break;
        B.N      ??BMW_OptionKey_Task_5
//  848   case __SN2_:
//  849    gTxMessage.DLC=KnobCntrTab[20].DLC;
??BMW_OptionKey_Task_2:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+410]
        STRB     R0,[SP, #+10]
//  850    gTxMessage.StdId=KnobCntrTab[20].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+400]
        STR      R0,[SP, #+0]
//  851    gTxMessage.IDE=KnobCntrTab[20].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+408]
        STRB     R0,[SP, #+8]
//  852    gTxMessage.RTR=KnobCntrTab[20].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+409]
        STRB     R0,[SP, #+9]
//  853    gTxMessage.Data[0]=KnobCntrTab[20].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+411]
        STRB     R0,[SP, #+11]
//  854    gTxMessage.Data[1]=KnobCntrTab[20].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+412]
        STRB     R0,[SP, #+12]
//  855    gTxMessage.Data[2]=KnobCntrTab[20].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+413]
        STRB     R0,[SP, #+13]
//  856    gTxMessage.Data[3]=KnobCntrTab[20].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+414]
        STRB     R0,[SP, #+14]
//  857    gTxMessage.Data[4]=KnobCntrTab[20].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+415]
        STRB     R0,[SP, #+15]
//  858    gTxMessage.Data[5]=KnobCntrTab[20].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+416]
        STRB     R0,[SP, #+16]
//  859    gTxMessage.Data[6]=KnobCntrTab[20].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+417]
        STRB     R0,[SP, #+17]
//  860    gTxMessage.Data[7]=KnobCntrTab[20].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+418]
        STRB     R0,[SP, #+18]
//  861      
//  862    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  863    m_BMW_CAN.uOptionSendSn=__SN3_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+4
        STRB     R1,[R0, #+12]
//  864     break;
        B.N      ??BMW_OptionKey_Task_5
//  865   case __SN3_:
//  866    gTxMessage.DLC=KnobCntrTab[21].DLC;
??BMW_OptionKey_Task_4:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+430]
        STRB     R0,[SP, #+10]
//  867    gTxMessage.StdId=KnobCntrTab[21].StdId;
        LDR.W    R0,??DataTable9_2
        LDR      R0,[R0, #+420]
        STR      R0,[SP, #+0]
//  868    gTxMessage.IDE=KnobCntrTab[21].IDE;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+428]
        STRB     R0,[SP, #+8]
//  869    gTxMessage.RTR=KnobCntrTab[21].RTR;
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+429]
        STRB     R0,[SP, #+9]
//  870    gTxMessage.Data[0]=KnobCntrTab[21].Data[0];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+431]
        STRB     R0,[SP, #+11]
//  871    gTxMessage.Data[1]=KnobCntrTab[21].Data[1];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+432]
        STRB     R0,[SP, #+12]
//  872    gTxMessage.Data[2]=KnobCntrTab[21].Data[2];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+433]
        STRB     R0,[SP, #+13]
//  873    gTxMessage.Data[3]=KnobCntrTab[21].Data[3];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+434]
        STRB     R0,[SP, #+14]
//  874    gTxMessage.Data[4]=KnobCntrTab[21].Data[4];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+435]
        STRB     R0,[SP, #+15]
//  875    gTxMessage.Data[5]=KnobCntrTab[21].Data[5];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+436]
        STRB     R0,[SP, #+16]
//  876    gTxMessage.Data[6]=KnobCntrTab[21].Data[6];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+437]
        STRB     R0,[SP, #+17]
//  877    gTxMessage.Data[7]=KnobCntrTab[21].Data[7];
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+438]
        STRB     R0,[SP, #+18]
//  878      
//  879    Can_Tx(CAN2, &gTxMessage);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable7_1  ;; 0x40006800
          CFI FunCall Can_Tx
        BL       Can_Tx
//  880    m_BMW_CAN.uOptionSendSn=__SN0_;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//  881     break;
        B.N      ??BMW_OptionKey_Task_5
//  882   
//  883   default:
//  884     m_BMW_CAN.uOptionSendSn=__SN0_;
??BMW_OptionKey_Task_1:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//  885     break;
//  886     
//  887     
//  888   }
//  889 }
??BMW_OptionKey_Task_5:
        ADD      SP,SP,#+20
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock6
//  890 #else//Miller.Tao20150123
//  891 void BMW_AuxContrl_Task(void)
//  892 {
//  893   CanTxMsg gTxMessage;
//  894   
//  895   switch(m_BMW_CAN.uAuxSendSn)
//  896   {
//  897   case __SN0_:
//  898    gTxMessage.DLC=KnobCntrTab[2].DLC;
//  899    gTxMessage.StdId=KnobCntrTab[2].StdId;
//  900    gTxMessage.IDE=KnobCntrTab[2].IDE;
//  901    gTxMessage.RTR=KnobCntrTab[2].RTR;
//  902    gTxMessage.Data[0]=KnobCntrTab[2].Data[0];
//  903    gTxMessage.Data[1]=KnobCntrTab[2].Data[1];
//  904    gTxMessage.Data[2]=KnobCntrTab[2].Data[2];
//  905    gTxMessage.Data[3]=KnobCntrTab[2].Data[3];
//  906    gTxMessage.Data[4]=KnobCntrTab[2].Data[4];
//  907    gTxMessage.Data[5]=KnobCntrTab[2].Data[5];
//  908    gTxMessage.Data[6]=KnobCntrTab[2].Data[6];
//  909    gTxMessage.Data[7]=KnobCntrTab[2].Data[7];
//  910 	 
//  911    Can_Tx(CAN2, &gTxMessage);
//  912    m_BMW_CAN.uAuxSendSn=__SN1_;//__SN4_;//__SN1_;
//  913 	break;
//  914   case __SN1_:
//  915 	gTxMessage.DLC=KnobCntrTab[3].DLC;
//  916    gTxMessage.StdId=KnobCntrTab[3].StdId;
//  917    gTxMessage.IDE=KnobCntrTab[3].IDE;
//  918    gTxMessage.RTR=KnobCntrTab[3].RTR;
//  919    gTxMessage.Data[0]=KnobCntrTab[3].Data[0];
//  920    gTxMessage.Data[1]=KnobCntrTab[3].Data[1];
//  921    gTxMessage.Data[2]=KnobCntrTab[3].Data[2];
//  922    gTxMessage.Data[3]=KnobCntrTab[3].Data[3];
//  923    gTxMessage.Data[4]=KnobCntrTab[3].Data[4];
//  924    gTxMessage.Data[5]=KnobCntrTab[3].Data[5];
//  925    gTxMessage.Data[6]=KnobCntrTab[3].Data[6];
//  926    gTxMessage.Data[7]=KnobCntrTab[3].Data[7];
//  927 	Can_Tx(CAN2, &gTxMessage);
//  928    m_BMW_CAN.uAuxSendSn=__SN4_;//__SN2_
//  929 	break;
//  930   case __SN2_:
//  931    gTxMessage.DLC=KnobCntrTab[4].DLC;
//  932    gTxMessage.StdId=KnobCntrTab[4].StdId;
//  933    gTxMessage.IDE=KnobCntrTab[4].IDE;
//  934    gTxMessage.RTR=KnobCntrTab[4].RTR;
//  935    gTxMessage.Data[0]=KnobCntrTab[4].Data[0];
//  936    gTxMessage.Data[1]=KnobCntrTab[4].Data[1];
//  937    gTxMessage.Data[2]=KnobCntrTab[4].Data[2];
//  938    gTxMessage.Data[3]=KnobCntrTab[4].Data[3];
//  939    gTxMessage.Data[4]=KnobCntrTab[4].Data[4];
//  940    gTxMessage.Data[5]=KnobCntrTab[4].Data[5];
//  941    gTxMessage.Data[6]=KnobCntrTab[4].Data[6];
//  942    gTxMessage.Data[7]=KnobCntrTab[4].Data[7];
//  943 	 
//  944   // Can_Tx(CAN2, &gTxMessage);
//  945    m_BMW_CAN.uAuxSendSn=__SN3_;
//  946 	break;
//  947   case __SN3_:
//  948    gTxMessage.DLC=KnobCntrTab[5].DLC;
//  949    gTxMessage.StdId=KnobCntrTab[5].StdId;
//  950    gTxMessage.IDE=KnobCntrTab[5].IDE;
//  951    gTxMessage.RTR=KnobCntrTab[5].RTR;
//  952    gTxMessage.Data[0]=KnobCntrTab[5].Data[0];
//  953    gTxMessage.Data[1]=KnobCntrTab[5].Data[1];
//  954    gTxMessage.Data[2]=KnobCntrTab[5].Data[2];
//  955    gTxMessage.Data[3]=KnobCntrTab[5].Data[3];
//  956    gTxMessage.Data[4]=KnobCntrTab[5].Data[4];
//  957    gTxMessage.Data[5]=KnobCntrTab[5].Data[5];
//  958    gTxMessage.Data[6]=KnobCntrTab[5].Data[6];
//  959    gTxMessage.Data[7]=KnobCntrTab[5].Data[7];
//  960 	 
//  961  //  Can_Tx(CAN2, &gTxMessage);
//  962    m_BMW_CAN.uAuxSendSn=__SN4_;
//  963 	break;
//  964   case __SN4_:
//  965    gTxMessage.DLC=KnobCntrTab[6].DLC;
//  966    gTxMessage.StdId=KnobCntrTab[6].StdId;
//  967    gTxMessage.IDE=KnobCntrTab[6].IDE;
//  968    gTxMessage.RTR=KnobCntrTab[6].RTR;
//  969    gTxMessage.Data[0]=KnobCntrTab[6].Data[0];
//  970    gTxMessage.Data[1]=KnobCntrTab[6].Data[1];
//  971    gTxMessage.Data[2]=KnobCntrTab[6].Data[2];
//  972    gTxMessage.Data[3]=KnobCntrTab[6].Data[3];
//  973    gTxMessage.Data[4]=KnobCntrTab[6].Data[4];
//  974    gTxMessage.Data[5]=KnobCntrTab[6].Data[5];
//  975    gTxMessage.Data[6]=KnobCntrTab[6].Data[6];
//  976    gTxMessage.Data[7]=KnobCntrTab[6].Data[7];
//  977 	 
//  978    Can_Tx(CAN2, &gTxMessage);
//  979    m_BMW_CAN.uAuxSendSn=__SN5_;
//  980 	break;
//  981   case __SN5_:
//  982    gTxMessage.DLC=KnobCntrTab[7].DLC;
//  983    gTxMessage.StdId=KnobCntrTab[7].StdId;
//  984    gTxMessage.IDE=KnobCntrTab[7].IDE;
//  985    gTxMessage.RTR=KnobCntrTab[7].RTR;
//  986    gTxMessage.Data[0]=KnobCntrTab[7].Data[0];
//  987    gTxMessage.Data[1]=KnobCntrTab[7].Data[1];
//  988    gTxMessage.Data[2]=KnobCntrTab[7].Data[2];
//  989    gTxMessage.Data[3]=KnobCntrTab[7].Data[3];
//  990    gTxMessage.Data[4]=KnobCntrTab[7].Data[4];
//  991    gTxMessage.Data[5]=KnobCntrTab[7].Data[5];
//  992    gTxMessage.Data[6]=KnobCntrTab[7].Data[6];
//  993    gTxMessage.Data[7]=KnobCntrTab[7].Data[7];
//  994 	 
//  995    Can_Tx(CAN2, &gTxMessage);
//  996    m_BMW_CAN.uAuxSendSn=__SN8_;//__SN6_
//  997 	break;
//  998   case __SN6_:
//  999    gTxMessage.DLC=KnobCntrTab[8].DLC;
// 1000    gTxMessage.StdId=KnobCntrTab[8].StdId;
// 1001    gTxMessage.IDE=KnobCntrTab[8].IDE;
// 1002    gTxMessage.RTR=KnobCntrTab[8].RTR;
// 1003    gTxMessage.Data[0]=KnobCntrTab[8].Data[0];
// 1004    gTxMessage.Data[1]=KnobCntrTab[8].Data[1];
// 1005    gTxMessage.Data[2]=KnobCntrTab[8].Data[2];
// 1006    gTxMessage.Data[3]=KnobCntrTab[8].Data[3];
// 1007    gTxMessage.Data[4]=KnobCntrTab[8].Data[4];
// 1008    gTxMessage.Data[5]=KnobCntrTab[8].Data[5];
// 1009    gTxMessage.Data[6]=KnobCntrTab[8].Data[6];
// 1010    gTxMessage.Data[7]=KnobCntrTab[8].Data[7];
// 1011 	 
// 1012   // Can_Tx(CAN2, &gTxMessage);
// 1013    m_BMW_CAN.uAuxSendSn=__SN7_;
// 1014 	break;
// 1015   case __SN7_:
// 1016    gTxMessage.DLC=KnobCntrTab[9].DLC;
// 1017    gTxMessage.StdId=KnobCntrTab[9].StdId;
// 1018    gTxMessage.IDE=KnobCntrTab[9].IDE;
// 1019    gTxMessage.RTR=KnobCntrTab[9].RTR;
// 1020    gTxMessage.Data[0]=KnobCntrTab[9].Data[0];
// 1021    gTxMessage.Data[1]=KnobCntrTab[9].Data[1];
// 1022    gTxMessage.Data[2]=KnobCntrTab[9].Data[2];
// 1023    gTxMessage.Data[3]=KnobCntrTab[9].Data[3];
// 1024    gTxMessage.Data[4]=KnobCntrTab[9].Data[4];
// 1025    gTxMessage.Data[5]=KnobCntrTab[9].Data[5];
// 1026    gTxMessage.Data[6]=KnobCntrTab[9].Data[6];
// 1027    gTxMessage.Data[7]=KnobCntrTab[9].Data[7];
// 1028 	 
// 1029    //Can_Tx(CAN2, &gTxMessage);
// 1030    m_BMW_CAN.uAuxSendSn=__SN8_;
// 1031 	break;
// 1032   case __SN8_:
// 1033    gTxMessage.DLC=KnobCntrTab[10].DLC;
// 1034    gTxMessage.StdId=KnobCntrTab[10].StdId;
// 1035    gTxMessage.IDE=KnobCntrTab[10].IDE;
// 1036    gTxMessage.RTR=KnobCntrTab[10].RTR;
// 1037    gTxMessage.Data[0]=KnobCntrTab[10].Data[0];
// 1038    gTxMessage.Data[1]=KnobCntrTab[10].Data[1];
// 1039    gTxMessage.Data[2]=KnobCntrTab[10].Data[2];
// 1040    gTxMessage.Data[3]=KnobCntrTab[10].Data[3];
// 1041    gTxMessage.Data[4]=KnobCntrTab[10].Data[4];
// 1042    gTxMessage.Data[5]=KnobCntrTab[10].Data[5];
// 1043    gTxMessage.Data[6]=KnobCntrTab[10].Data[6];
// 1044    gTxMessage.Data[7]=KnobCntrTab[10].Data[7];
// 1045 	 
// 1046    Can_Tx(CAN2, &gTxMessage);
// 1047    m_BMW_CAN.uAuxSendSn=__SN9_;
// 1048 	break;
// 1049   case __SN9_:
// 1050    gTxMessage.DLC=KnobCntrTab[11].DLC;
// 1051    gTxMessage.StdId=KnobCntrTab[11].StdId;
// 1052    gTxMessage.IDE=KnobCntrTab[11].IDE;
// 1053    gTxMessage.RTR=KnobCntrTab[11].RTR;
// 1054    gTxMessage.Data[0]=KnobCntrTab[11].Data[0];
// 1055    gTxMessage.Data[1]=KnobCntrTab[11].Data[1];
// 1056    gTxMessage.Data[2]=KnobCntrTab[11].Data[2];
// 1057    gTxMessage.Data[3]=KnobCntrTab[11].Data[3];
// 1058    gTxMessage.Data[4]=KnobCntrTab[11].Data[4];
// 1059    gTxMessage.Data[5]=KnobCntrTab[11].Data[5];
// 1060    gTxMessage.Data[6]=KnobCntrTab[11].Data[6];
// 1061    gTxMessage.Data[7]=KnobCntrTab[11].Data[7];
// 1062 	 
// 1063    //Can_Tx(CAN2, &gTxMessage);
// 1064    m_BMW_CAN.uAuxSendSn=__SN10_;
// 1065 	break;
// 1066   case __SN10_:
// 1067    gTxMessage.DLC=KnobCntrTab[12].DLC;
// 1068    gTxMessage.StdId=KnobCntrTab[12].StdId;
// 1069    gTxMessage.IDE=KnobCntrTab[12].IDE;
// 1070    gTxMessage.RTR=KnobCntrTab[12].RTR;
// 1071    gTxMessage.Data[0]=KnobCntrTab[12].Data[0];
// 1072    gTxMessage.Data[1]=KnobCntrTab[12].Data[1];
// 1073    gTxMessage.Data[2]=KnobCntrTab[12].Data[2];
// 1074    gTxMessage.Data[3]=KnobCntrTab[12].Data[3];
// 1075    gTxMessage.Data[4]=KnobCntrTab[12].Data[4];
// 1076    gTxMessage.Data[5]=KnobCntrTab[12].Data[5];
// 1077    gTxMessage.Data[6]=KnobCntrTab[12].Data[6];
// 1078    gTxMessage.Data[7]=KnobCntrTab[12].Data[7];
// 1079 	 
// 1080    Can_Tx(CAN2, &gTxMessage);
// 1081    m_BMW_CAN.uAuxSendSn=__SN11_;
// 1082 	break;
// 1083   case __SN11_:
// 1084    gTxMessage.DLC=KnobCntrTab[13].DLC;
// 1085    gTxMessage.StdId=KnobCntrTab[13].StdId;
// 1086    gTxMessage.IDE=KnobCntrTab[13].IDE;
// 1087    gTxMessage.RTR=KnobCntrTab[13].RTR;
// 1088    gTxMessage.Data[0]=KnobCntrTab[13].Data[0];
// 1089    gTxMessage.Data[1]=KnobCntrTab[13].Data[1];
// 1090    gTxMessage.Data[2]=KnobCntrTab[13].Data[2];
// 1091    gTxMessage.Data[3]=KnobCntrTab[13].Data[3];
// 1092    gTxMessage.Data[4]=KnobCntrTab[13].Data[4];
// 1093    gTxMessage.Data[5]=KnobCntrTab[13].Data[5];
// 1094    gTxMessage.Data[6]=KnobCntrTab[13].Data[6];
// 1095    gTxMessage.Data[7]=KnobCntrTab[13].Data[7];
// 1096 	 
// 1097    Can_Tx(CAN2, &gTxMessage);
// 1098    m_BMW_CAN.uAuxSendSn=__SN12_;
// 1099 	break;
// 1100 
// 1101   case __SN12_:
// 1102    gTxMessage.DLC=KnobCntrTab[14].DLC;
// 1103    gTxMessage.StdId=KnobCntrTab[14].StdId;
// 1104    gTxMessage.IDE=KnobCntrTab[14].IDE;
// 1105    gTxMessage.RTR=KnobCntrTab[14].RTR;
// 1106    gTxMessage.Data[0]=KnobCntrTab[14].Data[0];
// 1107    gTxMessage.Data[1]=KnobCntrTab[14].Data[1];
// 1108    gTxMessage.Data[2]=KnobCntrTab[14].Data[2];
// 1109    gTxMessage.Data[3]=KnobCntrTab[14].Data[3];
// 1110    gTxMessage.Data[4]=KnobCntrTab[14].Data[4];
// 1111    gTxMessage.Data[5]=KnobCntrTab[14].Data[5];
// 1112    gTxMessage.Data[6]=KnobCntrTab[14].Data[6];
// 1113    gTxMessage.Data[7]=KnobCntrTab[14].Data[7];
// 1114 	 
// 1115    Can_Tx(CAN2, &gTxMessage);
// 1116    m_BMW_CAN.uAuxSendSn=__SN13_;
// 1117 	break;
// 1118   case __SN13_:
// 1119    gTxMessage.DLC=KnobCntrTab[15].DLC;
// 1120    gTxMessage.StdId=KnobCntrTab[15].StdId;
// 1121    gTxMessage.IDE=KnobCntrTab[15].IDE;
// 1122    gTxMessage.RTR=KnobCntrTab[15].RTR;
// 1123    gTxMessage.Data[0]=KnobCntrTab[15].Data[0];
// 1124    gTxMessage.Data[1]=KnobCntrTab[15].Data[1];
// 1125    gTxMessage.Data[2]=KnobCntrTab[15].Data[2];
// 1126    gTxMessage.Data[3]=KnobCntrTab[15].Data[3];
// 1127    gTxMessage.Data[4]=KnobCntrTab[15].Data[4];
// 1128    gTxMessage.Data[5]=KnobCntrTab[15].Data[5];
// 1129    gTxMessage.Data[6]=KnobCntrTab[15].Data[6];
// 1130    gTxMessage.Data[7]=KnobCntrTab[15].Data[7];
// 1131 	 
// 1132    Can_Tx(CAN2, &gTxMessage);
// 1133    m_BMW_CAN.uAuxSendSn=__SN14_;
// 1134 	break;
// 1135   case __SN14_:
// 1136    gTxMessage.DLC=KnobCntrTab[16].DLC;
// 1137    gTxMessage.StdId=KnobCntrTab[16].StdId;
// 1138    gTxMessage.IDE=KnobCntrTab[16].IDE;
// 1139    gTxMessage.RTR=KnobCntrTab[16].RTR;
// 1140    gTxMessage.Data[0]=KnobCntrTab[16].Data[0];
// 1141    gTxMessage.Data[1]=KnobCntrTab[16].Data[1];
// 1142    gTxMessage.Data[2]=KnobCntrTab[16].Data[2];
// 1143    gTxMessage.Data[3]=KnobCntrTab[16].Data[3];
// 1144    gTxMessage.Data[4]=KnobCntrTab[16].Data[4];
// 1145    gTxMessage.Data[5]=KnobCntrTab[16].Data[5];
// 1146    gTxMessage.Data[6]=KnobCntrTab[16].Data[6];
// 1147    gTxMessage.Data[7]=KnobCntrTab[16].Data[7];
// 1148 	 
// 1149    Can_Tx(CAN2, &gTxMessage);
// 1150    m_BMW_CAN.uAuxSendSn=__SN15_;
// 1151 	break;
// 1152   case __SN15_:
// 1153    gTxMessage.DLC=KnobCntrTab[17].DLC;
// 1154    gTxMessage.StdId=KnobCntrTab[17].StdId;
// 1155    gTxMessage.IDE=KnobCntrTab[17].IDE;
// 1156    gTxMessage.RTR=KnobCntrTab[17].RTR;
// 1157    gTxMessage.Data[0]=KnobCntrTab[17].Data[0];
// 1158    gTxMessage.Data[1]=KnobCntrTab[17].Data[1];
// 1159    gTxMessage.Data[2]=KnobCntrTab[17].Data[2];
// 1160    gTxMessage.Data[3]=KnobCntrTab[17].Data[3];
// 1161    gTxMessage.Data[4]=KnobCntrTab[17].Data[4];
// 1162    gTxMessage.Data[5]=KnobCntrTab[17].Data[5];
// 1163    gTxMessage.Data[6]=KnobCntrTab[17].Data[6];
// 1164    gTxMessage.Data[7]=KnobCntrTab[17].Data[7];
// 1165 	 
// 1166    Can_Tx(CAN2, &gTxMessage);
// 1167    m_BMW_CAN.uAuxSendSn=__SN16_;
// 1168 	break;
// 1169 	case __SN16_:
// 1170 	 gTxMessage.DLC=KnobCntrTab[18].DLC;
// 1171 	 gTxMessage.StdId=KnobCntrTab[18].StdId;
// 1172 	 gTxMessage.IDE=KnobCntrTab[18].IDE;
// 1173 	 gTxMessage.RTR=KnobCntrTab[18].RTR;
// 1174 	 gTxMessage.Data[0]=KnobCntrTab[18].Data[0];
// 1175 	 gTxMessage.Data[1]=KnobCntrTab[18].Data[1];
// 1176 	 gTxMessage.Data[2]=KnobCntrTab[18].Data[2];
// 1177 	 gTxMessage.Data[3]=KnobCntrTab[18].Data[3];
// 1178 	 gTxMessage.Data[4]=KnobCntrTab[18].Data[4];
// 1179 	 gTxMessage.Data[5]=KnobCntrTab[18].Data[5];
// 1180 	 gTxMessage.Data[6]=KnobCntrTab[18].Data[6];
// 1181 	 gTxMessage.Data[7]=KnobCntrTab[18].Data[7];
// 1182 	   
// 1183 	 Can_Tx(CAN2, &gTxMessage);
// 1184 	 m_BMW_CAN.uAuxSendSn=__SN17_;
// 1185 	  break;
// 1186     case __SN17_:
// 1187    gTxMessage.DLC=KnobCntrTab[19].DLC;
// 1188    gTxMessage.StdId=KnobCntrTab[19].StdId;
// 1189    gTxMessage.IDE=KnobCntrTab[19].IDE;
// 1190    gTxMessage.RTR=KnobCntrTab[19].RTR;
// 1191    gTxMessage.Data[0]=KnobCntrTab[19].Data[0];
// 1192    gTxMessage.Data[1]=KnobCntrTab[19].Data[1];
// 1193    gTxMessage.Data[2]=KnobCntrTab[19].Data[2];
// 1194    gTxMessage.Data[3]=KnobCntrTab[19].Data[3];
// 1195    gTxMessage.Data[4]=KnobCntrTab[19].Data[4];
// 1196    gTxMessage.Data[5]=KnobCntrTab[19].Data[5];
// 1197    gTxMessage.Data[6]=KnobCntrTab[19].Data[6];
// 1198    gTxMessage.Data[7]=KnobCntrTab[19].Data[7];
// 1199 	 
// 1200    Can_Tx(CAN2, &gTxMessage);
// 1201    m_BMW_CAN.uAuxSendSn=__SN18_;
// 1202 	break;
// 1203 	case __SN18_:
// 1204 	 gTxMessage.DLC=KnobCntrTab[20].DLC;
// 1205 	 gTxMessage.StdId=KnobCntrTab[20].StdId;
// 1206 	 gTxMessage.IDE=KnobCntrTab[20].IDE;
// 1207 	 gTxMessage.RTR=KnobCntrTab[20].RTR;
// 1208 	 gTxMessage.Data[0]=KnobCntrTab[20].Data[0];
// 1209 	 gTxMessage.Data[1]=KnobCntrTab[20].Data[1];
// 1210 	 gTxMessage.Data[2]=KnobCntrTab[20].Data[2];
// 1211 	 gTxMessage.Data[3]=KnobCntrTab[20].Data[3];
// 1212 	 gTxMessage.Data[4]=KnobCntrTab[20].Data[4];
// 1213 	 gTxMessage.Data[5]=KnobCntrTab[20].Data[5];
// 1214 	 gTxMessage.Data[6]=KnobCntrTab[20].Data[6];
// 1215 	 gTxMessage.Data[7]=KnobCntrTab[20].Data[7];
// 1216 	   
// 1217 	 Can_Tx(CAN2, &gTxMessage);
// 1218 	 m_BMW_CAN.uAuxSendSn=__SN19_;
// 1219 	  break;
// 1220     case __SN19_:
// 1221    gTxMessage.DLC=KnobCntrTab[21].DLC;
// 1222    gTxMessage.StdId=KnobCntrTab[21].StdId;
// 1223    gTxMessage.IDE=KnobCntrTab[21].IDE;
// 1224    gTxMessage.RTR=KnobCntrTab[21].RTR;
// 1225    gTxMessage.Data[0]=KnobCntrTab[21].Data[0];
// 1226    gTxMessage.Data[1]=KnobCntrTab[21].Data[1];
// 1227    gTxMessage.Data[2]=KnobCntrTab[21].Data[2];
// 1228    gTxMessage.Data[3]=KnobCntrTab[21].Data[3];
// 1229    gTxMessage.Data[4]=KnobCntrTab[21].Data[4];
// 1230    gTxMessage.Data[5]=KnobCntrTab[21].Data[5];
// 1231    gTxMessage.Data[6]=KnobCntrTab[21].Data[6];
// 1232    gTxMessage.Data[7]=KnobCntrTab[21].Data[7];
// 1233 	 
// 1234    Can_Tx(CAN2, &gTxMessage);
// 1235    m_BMW_CAN.uAuxSendSn=__SN20_;
// 1236 	break;
// 1237 	case __SN20_:
// 1238    gTxMessage.DLC=KnobCntrTab[22].DLC;
// 1239    gTxMessage.StdId=KnobCntrTab[22].StdId;
// 1240    gTxMessage.IDE=KnobCntrTab[22].IDE;
// 1241    gTxMessage.RTR=KnobCntrTab[22].RTR;
// 1242    gTxMessage.Data[0]=KnobCntrTab[22].Data[0];
// 1243    gTxMessage.Data[1]=KnobCntrTab[22].Data[1];
// 1244    gTxMessage.Data[2]=KnobCntrTab[22].Data[2];
// 1245    gTxMessage.Data[3]=KnobCntrTab[22].Data[3];
// 1246    gTxMessage.Data[4]=KnobCntrTab[22].Data[4];
// 1247    gTxMessage.Data[5]=KnobCntrTab[22].Data[5];
// 1248    gTxMessage.Data[6]=KnobCntrTab[22].Data[6];
// 1249    gTxMessage.Data[7]=KnobCntrTab[22].Data[7];
// 1250 	 
// 1251    Can_Tx(CAN2, &gTxMessage);
// 1252    m_BMW_CAN.uAuxSendSn=__SN21_;
// 1253 	break;
// 1254 	case __SN21_:
// 1255    gTxMessage.DLC=KnobCntrTab[23].DLC;
// 1256    gTxMessage.StdId=KnobCntrTab[23].StdId;
// 1257    gTxMessage.IDE=KnobCntrTab[23].IDE;
// 1258    gTxMessage.RTR=KnobCntrTab[23].RTR;
// 1259    gTxMessage.Data[0]=KnobCntrTab[23].Data[0];
// 1260    gTxMessage.Data[1]=KnobCntrTab[23].Data[1];
// 1261    gTxMessage.Data[2]=KnobCntrTab[23].Data[2];
// 1262    gTxMessage.Data[3]=KnobCntrTab[23].Data[3];
// 1263    gTxMessage.Data[4]=KnobCntrTab[23].Data[4];
// 1264    gTxMessage.Data[5]=KnobCntrTab[23].Data[5];
// 1265    gTxMessage.Data[6]=KnobCntrTab[23].Data[6];
// 1266    gTxMessage.Data[7]=KnobCntrTab[23].Data[7];
// 1267 	 
// 1268    Can_Tx(CAN2, &gTxMessage);
// 1269    m_BMW_CAN.uAuxSendSn=__SN22_;
// 1270 	break;
// 1271 case __SN22_:
// 1272    gTxMessage.DLC=KnobCntrTab[24].DLC;
// 1273    gTxMessage.StdId=KnobCntrTab[24].StdId;
// 1274    gTxMessage.IDE=KnobCntrTab[24].IDE;
// 1275    gTxMessage.RTR=KnobCntrTab[24].RTR;
// 1276    gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
// 1277    gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
// 1278    gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
// 1279    gTxMessage.Data[3]=KnobCntrTab[24].Data[3];
// 1280    gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
// 1281    gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
// 1282    gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
// 1283    gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
// 1284 	 
// 1285    Can_Tx(CAN2, &gTxMessage);
// 1286    m_BMW_CAN.uAuxSendSn=__SN23_;
// 1287 	break;
// 1288  case __SN23_:
// 1289    gTxMessage.DLC=KnobCntrTab[25].DLC;
// 1290    gTxMessage.StdId=KnobCntrTab[25].StdId;
// 1291    gTxMessage.IDE=KnobCntrTab[25].IDE;
// 1292    gTxMessage.RTR=KnobCntrTab[25].RTR;
// 1293    gTxMessage.Data[0]=KnobCntrTab[25].Data[0];
// 1294    gTxMessage.Data[1]=KnobCntrTab[25].Data[1];
// 1295    gTxMessage.Data[2]=KnobCntrTab[25].Data[2];
// 1296    gTxMessage.Data[3]=KnobCntrTab[25].Data[3];
// 1297    gTxMessage.Data[4]=KnobCntrTab[25].Data[4];
// 1298    gTxMessage.Data[5]=KnobCntrTab[25].Data[5];
// 1299    gTxMessage.Data[6]=KnobCntrTab[25].Data[6];
// 1300    gTxMessage.Data[7]=KnobCntrTab[25].Data[7];
// 1301 	 
// 1302    Can_Tx(CAN2, &gTxMessage);
// 1303    m_BMW_CAN.uAuxSendSn=__SN24_;
// 1304 	break;
// 1305   case __SN24_:
// 1306    gTxMessage.DLC=KnobCntrTab[26].DLC;
// 1307    gTxMessage.StdId=KnobCntrTab[26].StdId;
// 1308    gTxMessage.IDE=KnobCntrTab[26].IDE;
// 1309    gTxMessage.RTR=KnobCntrTab[26].RTR;
// 1310    gTxMessage.Data[0]=KnobCntrTab[26].Data[0];
// 1311    gTxMessage.Data[1]=KnobCntrTab[26].Data[1];
// 1312    gTxMessage.Data[2]=KnobCntrTab[26].Data[2];
// 1313    gTxMessage.Data[3]=KnobCntrTab[26].Data[3];
// 1314    gTxMessage.Data[4]=KnobCntrTab[26].Data[4];
// 1315    gTxMessage.Data[5]=KnobCntrTab[26].Data[5];
// 1316    gTxMessage.Data[6]=KnobCntrTab[26].Data[6];
// 1317    gTxMessage.Data[7]=KnobCntrTab[26].Data[7];
// 1318 	 
// 1319    Can_Tx(CAN2, &gTxMessage);
// 1320    m_BMW_CAN.uAuxSendSn=__SN25_;
// 1321 	break;
// 1322    case __SN25_:
// 1323    gTxMessage.DLC=KnobCntrTab[27].DLC;
// 1324    gTxMessage.StdId=KnobCntrTab[27].StdId;
// 1325    gTxMessage.IDE=KnobCntrTab[27].IDE;
// 1326    gTxMessage.RTR=KnobCntrTab[27].RTR;
// 1327    gTxMessage.Data[0]=KnobCntrTab[27].Data[0];
// 1328    gTxMessage.Data[1]=KnobCntrTab[27].Data[1];
// 1329    gTxMessage.Data[2]=KnobCntrTab[27].Data[2];
// 1330    gTxMessage.Data[3]=KnobCntrTab[27].Data[3];
// 1331    gTxMessage.Data[4]=KnobCntrTab[27].Data[4];
// 1332    gTxMessage.Data[5]=KnobCntrTab[27].Data[5];
// 1333    gTxMessage.Data[6]=KnobCntrTab[27].Data[6];
// 1334    gTxMessage.Data[7]=KnobCntrTab[27].Data[7];
// 1335 	 
// 1336    Can_Tx(CAN2, &gTxMessage);
// 1337    m_BMW_CAN.uAuxSendSn=__SN26_;
// 1338 	break;
// 1339     case __SN26_:
// 1340    gTxMessage.DLC=KnobCntrTab[28].DLC;
// 1341    gTxMessage.StdId=KnobCntrTab[28].StdId;
// 1342    gTxMessage.IDE=KnobCntrTab[28].IDE;
// 1343    gTxMessage.RTR=KnobCntrTab[28].RTR;
// 1344    gTxMessage.Data[0]=KnobCntrTab[28].Data[0];
// 1345    gTxMessage.Data[1]=KnobCntrTab[28].Data[1];
// 1346    gTxMessage.Data[2]=KnobCntrTab[28].Data[2];
// 1347    gTxMessage.Data[3]=KnobCntrTab[28].Data[3];
// 1348    gTxMessage.Data[4]=KnobCntrTab[28].Data[4];
// 1349    gTxMessage.Data[5]=KnobCntrTab[28].Data[5];
// 1350    gTxMessage.Data[6]=KnobCntrTab[28].Data[6];
// 1351    gTxMessage.Data[7]=KnobCntrTab[28].Data[7];
// 1352 	 
// 1353    Can_Tx(CAN2, &gTxMessage);
// 1354    m_BMW_CAN.uAuxSendSn=__SN_END_;
// 1355 	break;
// 1356   default:
// 1357 	m_BMW_CAN.uAuxSendSn=__SN_END_;
// 1358 	break;
// 1359 	
// 1360 	
// 1361   }
// 1362 }
// 1363 void BMW_OptionKey_Task(void)
// 1364 {
// 1365   CanTxMsg gTxMessage;
// 1366   
// 1367   switch(m_BMW_CAN.uOptionSendSn)
// 1368   {
// 1369   case __SN0_:
// 1370    gTxMessage.DLC=KnobCntrTab[29].DLC;
// 1371    gTxMessage.StdId=KnobCntrTab[29].StdId;
// 1372    gTxMessage.IDE=KnobCntrTab[29].IDE;
// 1373    gTxMessage.RTR=KnobCntrTab[29].RTR;
// 1374    gTxMessage.Data[0]=KnobCntrTab[29].Data[0];
// 1375    gTxMessage.Data[1]=KnobCntrTab[29].Data[1];
// 1376    gTxMessage.Data[2]=KnobCntrTab[29].Data[2];
// 1377    gTxMessage.Data[3]=KnobCntrTab[29].Data[3];
// 1378    gTxMessage.Data[4]=KnobCntrTab[29].Data[4];
// 1379    gTxMessage.Data[5]=KnobCntrTab[29].Data[5];
// 1380    gTxMessage.Data[6]=KnobCntrTab[29].Data[6];
// 1381    gTxMessage.Data[7]=KnobCntrTab[29].Data[7];
// 1382      
// 1383    Can_Tx(CAN2, &gTxMessage);
// 1384    m_BMW_CAN.uOptionSendSn=__SN1_;
// 1385     break;
// 1386   case __SN1_:
// 1387     gTxMessage.DLC=KnobCntrTab[30].DLC;
// 1388    gTxMessage.StdId=KnobCntrTab[30].StdId;
// 1389    gTxMessage.IDE=KnobCntrTab[30].IDE;
// 1390    gTxMessage.RTR=KnobCntrTab[30].RTR;
// 1391    gTxMessage.Data[0]=KnobCntrTab[30].Data[0];
// 1392    gTxMessage.Data[1]=KnobCntrTab[30].Data[1];
// 1393    gTxMessage.Data[2]=KnobCntrTab[30].Data[2];
// 1394    gTxMessage.Data[3]=KnobCntrTab[30].Data[3];
// 1395    gTxMessage.Data[4]=KnobCntrTab[30].Data[4];
// 1396    gTxMessage.Data[5]=KnobCntrTab[30].Data[5];
// 1397    gTxMessage.Data[6]=KnobCntrTab[30].Data[6];
// 1398    gTxMessage.Data[7]=KnobCntrTab[30].Data[7];
// 1399     Can_Tx(CAN2, &gTxMessage);
// 1400    m_BMW_CAN.uOptionSendSn=__SN2_;
// 1401     break;
// 1402   case __SN2_:
// 1403    gTxMessage.DLC=KnobCntrTab[31].DLC;
// 1404    gTxMessage.StdId=KnobCntrTab[31].StdId;
// 1405    gTxMessage.IDE=KnobCntrTab[31].IDE;
// 1406    gTxMessage.RTR=KnobCntrTab[31].RTR;
// 1407    gTxMessage.Data[0]=KnobCntrTab[31].Data[0];
// 1408    gTxMessage.Data[1]=KnobCntrTab[31].Data[1];
// 1409    gTxMessage.Data[2]=KnobCntrTab[31].Data[2];
// 1410    gTxMessage.Data[3]=KnobCntrTab[31].Data[3];
// 1411    gTxMessage.Data[4]=KnobCntrTab[31].Data[4];
// 1412    gTxMessage.Data[5]=KnobCntrTab[31].Data[5];
// 1413    gTxMessage.Data[6]=KnobCntrTab[31].Data[6];
// 1414    gTxMessage.Data[7]=KnobCntrTab[31].Data[7];
// 1415      
// 1416    Can_Tx(CAN2, &gTxMessage);
// 1417    m_BMW_CAN.uOptionSendSn=__SN3_;
// 1418     break;
// 1419   case __SN3_:
// 1420    gTxMessage.DLC=KnobCntrTab[32].DLC;
// 1421    gTxMessage.StdId=KnobCntrTab[32].StdId;
// 1422    gTxMessage.IDE=KnobCntrTab[32].IDE;
// 1423    gTxMessage.RTR=KnobCntrTab[32].RTR;
// 1424    gTxMessage.Data[0]=KnobCntrTab[32].Data[0];
// 1425    gTxMessage.Data[1]=KnobCntrTab[32].Data[1];
// 1426    gTxMessage.Data[2]=KnobCntrTab[32].Data[2];
// 1427    gTxMessage.Data[3]=KnobCntrTab[32].Data[3];
// 1428    gTxMessage.Data[4]=KnobCntrTab[32].Data[4];
// 1429    gTxMessage.Data[5]=KnobCntrTab[32].Data[5];
// 1430    gTxMessage.Data[6]=KnobCntrTab[32].Data[6];
// 1431    gTxMessage.Data[7]=KnobCntrTab[32].Data[7];
// 1432      
// 1433    Can_Tx(CAN2, &gTxMessage);
// 1434    m_BMW_CAN.uOptionSendSn=__SN0_;
// 1435     break;
// 1436   
// 1437   default:
// 1438     m_BMW_CAN.uOptionSendSn=__SN0_;
// 1439     break;
// 1440     
// 1441     
// 1442   }
// 1443 }
// 1444 
// 1445 
// 1446 #endif

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function AudiCanBus_SendControlCmd
          CFI NoCalls
        THUMB
// 1447 void AudiCanBus_SendControlCmd(BYTE cmd)
// 1448 {
// 1449     m_BMW_CAN.uCanSendCmdIndex++;
AudiCanBus_SendControlCmd:
        LDR.W    R1,??DataTable9_1
        LDRB     R1,[R1, #+28]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable9_1
        STRB     R1,[R2, #+28]
// 1450     if (m_BMW_CAN.uCanSendCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
        LDR.W    R1,??DataTable9_1
        LDRB     R1,[R1, #+28]
        CMP      R1,#+15
        BCC.N    ??AudiCanBus_SendControlCmd_0
// 1451     {
// 1452         m_BMW_CAN.uCanSendCmdIndex = 0;
        LDR.W    R1,??DataTable9_1
        MOVS     R2,#+0
        STRB     R2,[R1, #+28]
// 1453     }
// 1454     m_BMW_CAN.uCanSendCmdBuf[m_BMW_CAN.uCanSendCmdIndex] = cmd;
??AudiCanBus_SendControlCmd_0:
        LDR.W    R1,??DataTable9_1
        LDRB     R1,[R1, #+28]
        LDR.W    R2,??DataTable9_1
        ADDS     R1,R1,R2
        STRB     R0,[R1, #+13]
// 1455 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
// 1456 
// 1457 /**************************************************************************/
// 1458 /*                                                                        */
// 1459 /**************************************************************************/
// 1460 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function AudiCan_FetchCmd
          CFI NoCalls
        THUMB
// 1461  BYTE AudiCan_FetchCmd(void)
// 1462 {
// 1463     BYTE temp;
// 1464     if (m_BMW_CAN.uCanFetchCmdIndex != m_BMW_CAN.uCanSendCmdIndex)
AudiCan_FetchCmd:
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+29]
        LDR.W    R2,??DataTable9_1
        LDRB     R2,[R2, #+28]
        CMP      R0,R2
        BEQ.N    ??AudiCan_FetchCmd_0
// 1465     {
// 1466 
// 1467         m_BMW_CAN.uCanFetchCmdIndex++;
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+29]
        ADDS     R0,R0,#+1
        LDR.W    R2,??DataTable9_1
        STRB     R0,[R2, #+29]
// 1468         if (m_BMW_CAN.uCanFetchCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+29]
        CMP      R0,#+15
        BCC.N    ??AudiCan_FetchCmd_1
// 1469         {
// 1470             m_BMW_CAN.uCanFetchCmdIndex = 0;
        LDR.W    R0,??DataTable9_1
        MOVS     R2,#+0
        STRB     R2,[R0, #+29]
// 1471         }
// 1472         temp = m_BMW_CAN.uCanFetchCmdIndex;
??AudiCan_FetchCmd_1:
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+29]
        MOVS     R1,R0
// 1473 
// 1474         return m_BMW_CAN.uCanSendCmdBuf[temp];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable9_1
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+13]
        B.N      ??AudiCan_FetchCmd_2
// 1475 
// 1476 
// 1477     }
// 1478     else
// 1479     {
// 1480         return BENZE_CMD_NULL;
??AudiCan_FetchCmd_0:
        MOVS     R0,#+255
??AudiCan_FetchCmd_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
// 1481     }
// 1482 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     KnobCntrTab2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x40006800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     FrontCntrTab
// 1483 
// 1484 
// 1485 /**************************************************************************/
// 1486 /*                                                                        */
// 1487 /**************************************************************************/
// 1488 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function Can_FetchSteerKeyInfo_Type4
        THUMB
// 1489 void Can_FetchSteerKeyInfo_Type4(CanRxMsg RxMessage)
// 1490 {
Can_FetchSteerKeyInfo_Type4:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 1491     static vu8 uCKeepFlag = 0;
// 1492     static vu8 uRetKeepFlag = 0;
// 1493     static vu16 wBounceCnt = 0;
// 1494    
// 1495 
// 1496     if (!(RxMessage.StdId == BWM_CAN_STEER_KEY_STD__TYPE4_ID && RxMessage.DLC == 6))
        LDR      R0,[SP, #+8]
        MOVW     R1,#+615
        CMP      R0,R1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_0
        LDRB     R0,[SP, #+18]
        CMP      R0,#+6
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_1
// 1497     {
// 1498         return ;
??Can_FetchSteerKeyInfo_Type4_0:
        B.N      ??Can_FetchSteerKeyInfo_Type4_2
// 1499     }
// 1500     
// 1501     //initial
// 1502     m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
??Can_FetchSteerKeyInfo_Type4_1:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1503     //
// 1504     /**************************FIrst pressed ************************************/
// 1505     
// 1506     if ((RxMessage.Data[3]==0x21&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x22&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
        LDRB     R0,[SP, #+22]
        CMP      R0,#+33
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_3
        LDRB     R0,[SP, #+23]
        CMP      R0,#+221
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_3
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_4
??Can_FetchSteerKeyInfo_Type4_3:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+34
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_5
        LDRB     R0,[SP, #+23]
        CMP      R0,#+221
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_5
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_5
// 1507         //knob right
// 1508     {
// 1509         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBRT_PRESSED;
??Can_FetchSteerKeyInfo_Type4_4:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+96
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1510     }
// 1511     else if ((RxMessage.Data[3]==0x81&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x82&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
??Can_FetchSteerKeyInfo_Type4_5:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+129
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_7
        LDRB     R0,[SP, #+23]
        CMP      R0,#+221
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_7
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_8
??Can_FetchSteerKeyInfo_Type4_7:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+130
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_9
        LDRB     R0,[SP, #+23]
        CMP      R0,#+221
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_9
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_9
// 1512         //knob left
// 1513     {
// 1514         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBLT_PRESSED;
??Can_FetchSteerKeyInfo_Type4_8:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+97
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1515     }
// 1516     else if( (RxMessage.Data[3]==0x11&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x12&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
??Can_FetchSteerKeyInfo_Type4_9:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+17
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_10
        LDRB     R0,[SP, #+23]
        CMP      R0,#+221
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_10
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_11
??Can_FetchSteerKeyInfo_Type4_10:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+18
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_12
        LDRB     R0,[SP, #+23]
        CMP      R0,#+221
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_12
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_12
// 1517         //knob up
// 1518     {
// 1519         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBUP_PRESSED;
??Can_FetchSteerKeyInfo_Type4_11:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+98
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1520     }
// 1521     else if ((RxMessage.Data[3]==0x41&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x42&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
??Can_FetchSteerKeyInfo_Type4_12:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+65
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_13
        LDRB     R0,[SP, #+23]
        CMP      R0,#+221
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_13
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_14
??Can_FetchSteerKeyInfo_Type4_13:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+66
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_15
        LDRB     R0,[SP, #+23]
        CMP      R0,#+221
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_15
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_15
// 1522         //knob dn
// 1523     {
// 1524         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBDN_PRESSED;
??Can_FetchSteerKeyInfo_Type4_14:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+99
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1525     }
// 1526     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xDE&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xDE&&RxMessage.Data[5]==0x01))
??Can_FetchSteerKeyInfo_Type4_15:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_16
        LDRB     R0,[SP, #+23]
        CMP      R0,#+222
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_16
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_17
??Can_FetchSteerKeyInfo_Type4_16:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_18
        LDRB     R0,[SP, #+23]
        CMP      R0,#+222
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_18
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_18
// 1527         //knob enter
// 1528     {
// 1529         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBENTER_PRESSED;
??Can_FetchSteerKeyInfo_Type4_17:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+100
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1530     }
// 1531     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x04)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x04))
??Can_FetchSteerKeyInfo_Type4_18:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_19
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_19
        LDRB     R0,[SP, #+24]
        CMP      R0,#+4
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_20
??Can_FetchSteerKeyInfo_Type4_19:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_21
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_21
        LDRB     R0,[SP, #+24]
        CMP      R0,#+4
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_21
// 1532         //option
// 1533     {
// 1534         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_OPTION_PRESSED;
??Can_FetchSteerKeyInfo_Type4_20:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+101
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1535     }
// 1536     
// 1537     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x02)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x02))
??Can_FetchSteerKeyInfo_Type4_21:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_22
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_22
        LDRB     R0,[SP, #+24]
        CMP      R0,#+2
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_23
??Can_FetchSteerKeyInfo_Type4_22:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_24
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_24
        LDRB     R0,[SP, #+24]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_24
// 1538         //back
// 1539     {
// 1540         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_BACK_PRESSED;
??Can_FetchSteerKeyInfo_Type4_23:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+102
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1541     }
// 1542     
// 1543     
// 1544     else if( (RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x08)||(RxMessage.Data[3]==0x02&&RxMessage.Data[3]==0xC0&&RxMessage.Data[3]==0x08))
??Can_FetchSteerKeyInfo_Type4_24:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_25
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_25
        LDRB     R0,[SP, #+24]
        CMP      R0,#+8
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_26
??Can_FetchSteerKeyInfo_Type4_25:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_27
        LDRB     R0,[SP, #+22]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_27
        LDRB     R0,[SP, #+22]
        CMP      R0,#+8
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_27
// 1545         //radio
// 1546     {
// 1547         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_RADIO_PRESSED;
??Can_FetchSteerKeyInfo_Type4_26:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+103
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1548     }
// 1549     else if( (RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x10)||(RxMessage.Data[3]==0x02&&RxMessage.Data[3]==0xC0&&RxMessage.Data[3]==0x10))
??Can_FetchSteerKeyInfo_Type4_27:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_28
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_28
        LDRB     R0,[SP, #+24]
        CMP      R0,#+16
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_29
??Can_FetchSteerKeyInfo_Type4_28:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_30
        LDRB     R0,[SP, #+22]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_30
        LDRB     R0,[SP, #+22]
        CMP      R0,#+16
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_30
// 1550         //media
// 1551     {
// 1552         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MEDIA_PRESSED;
??Can_FetchSteerKeyInfo_Type4_29:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+104
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1553     }
// 1554     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x01))
??Can_FetchSteerKeyInfo_Type4_30:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_31
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_31
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_31
// 1555         //menu
// 1556     {
// 1557         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MENU_PRESSED;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+105
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1558     }
// 1559     else if ((RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x01))
??Can_FetchSteerKeyInfo_Type4_31:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_32
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_32
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_32
// 1560         //menu keep
// 1561     {
// 1562         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_BACK_KEEP;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+246
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1563     }
// 1564     
// 1565     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x40)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x40))
??Can_FetchSteerKeyInfo_Type4_32:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_33
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_33
        LDRB     R0,[SP, #+24]
        CMP      R0,#+64
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_34
??Can_FetchSteerKeyInfo_Type4_33:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_35
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_35
        LDRB     R0,[SP, #+24]
        CMP      R0,#+64
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_35
// 1566         //tel
// 1567     {
// 1568         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_TEL_PRESSED;
??Can_FetchSteerKeyInfo_Type4_34:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+106
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1569     }
// 1570     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x20)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x20))
??Can_FetchSteerKeyInfo_Type4_35:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_36
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_36
        LDRB     R0,[SP, #+24]
        CMP      R0,#+32
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_37
??Can_FetchSteerKeyInfo_Type4_36:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+2
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_38
        LDRB     R0,[SP, #+23]
        CMP      R0,#+192
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_38
        LDRB     R0,[SP, #+24]
        CMP      R0,#+32
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_38
// 1571         //map
// 1572     {
// 1573         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MAP_PRESSED;
??Can_FetchSteerKeyInfo_Type4_37:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+107
        STRB     R1,[R0, #+0]
        B.N      ??Can_FetchSteerKeyInfo_Type4_6
// 1574     }
// 1575     
// 1576     else
// 1577     {
// 1578 
// 1579         //-------------------------------------------------------
// 1580         wBounceCnt++;
??Can_FetchSteerKeyInfo_Type4_38:
        LDR.W    R0,??DataTable14
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable14
        STRH     R0,[R1, #+0]
// 1581         if (wBounceCnt >= 2)
        LDR.W    R0,??DataTable14
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_39
// 1582         {
// 1583             uCKeepFlag = 0;
        LDR.W    R0,??DataTable14_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1584             uRetKeepFlag = 0;
        LDR.W    R0,??DataTable14_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1585             m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1586             wBounceCnt = 0;
        LDR.W    R0,??DataTable14
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1587         }
// 1588         m_BMW_CAN.uKeyKeepCnt = 0;
??Can_FetchSteerKeyInfo_Type4_39:
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
// 1589         m_BMW_CAN.uKeyKeepInDepCnt=0;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
// 1590         m_BMW_CAN.bKeyKeepOneTime = 0;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
// 1591 
// 1592     }
// 1593 
// 1594 
// 1595     switch (m_BMW_CAN.uKeyID)
??Can_FetchSteerKeyInfo_Type4_6:
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_40
        CMP      R0,#+96
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_41
        CMP      R0,#+97
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_42
        CMP      R0,#+98
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_43
        CMP      R0,#+99
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_44
        CMP      R0,#+100
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_45
        CMP      R0,#+101
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_46
        CMP      R0,#+102
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_47
        CMP      R0,#+103
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_48
        CMP      R0,#+104
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_49
        CMP      R0,#+105
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_50
        CMP      R0,#+106
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_51
        CMP      R0,#+107
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_52
        CMP      R0,#+246
        BEQ.W    ??Can_FetchSteerKeyInfo_Type4_53
        B.N      ??Can_FetchSteerKeyInfo_Type4_54
// 1596     {
// 1597     case BENZE_KEY_ALL_BOUNCED:
// 1598         uCKeepFlag = 0;
??Can_FetchSteerKeyInfo_Type4_40:
        LDR.W    R0,??DataTable14_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1599         uRetKeepFlag = 0;
        LDR.W    R0,??DataTable14_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1600         m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1601         wBounceCnt = 0;
        LDR.W    R0,??DataTable14
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1602         m_BMW_CAN.uKeyKeepCnt = 0;
        LDR.W    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
// 1603         m_BMW_CAN.bKeyKeepOneTime = 0;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
// 1604         break;
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1605     /********************Process first pressed**********************************/
// 1606     case BENZE_KEY_KnobAround_KEY_KNOBRT_PRESSED:
// 1607         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_41:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1608         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_56
// 1609             //bounce
// 1610         {
// 1611             //process first pressed data
// 1612             AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);
        MOVS     R0,#+4
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_57
// 1613         }
// 1614         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_56:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_57
// 1615             //keep
// 1616         {
// 1617             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1618             //process keep data
// 1619             
// 1620         }
// 1621         break;
??Can_FetchSteerKeyInfo_Type4_57:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1622     
// 1623 
// 1624     case BENZE_KEY_KnobAround_KEY_KNOBLT_PRESSED:
// 1625         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_42:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1626         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_58
// 1627             //bounce
// 1628         {
// 1629             //process first pressed data
// 1630             AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
        MOVS     R0,#+3
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_59
// 1631         }
// 1632         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_58:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_59
// 1633             //keep
// 1634         {
// 1635             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1636             //process keep data
// 1637         }
// 1638         break;
??Can_FetchSteerKeyInfo_Type4_59:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1639     case BENZE_KEY_KnobAround_KEY_KNOBUP_PRESSED:
// 1640         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_43:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1641         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_60
// 1642             //bounce
// 1643         {
// 1644             //process first pressed data
// 1645             AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
        MOVS     R0,#+1
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_61
// 1646         }
// 1647         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_60:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_61
// 1648             //keep
// 1649         {
// 1650             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1651             //process keep data
// 1652         }
// 1653         break;
??Can_FetchSteerKeyInfo_Type4_61:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1654     case BENZE_KEY_KnobAround_KEY_KNOBDN_PRESSED:
// 1655         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_44:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1656         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_62
// 1657             //bounce
// 1658         {
// 1659             //process first pressed data
// 1660             AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
        MOVS     R0,#+2
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_63
// 1661         }
// 1662         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_62:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_63
// 1663             //keep
// 1664         {
// 1665             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1666             //process keep data
// 1667         }
// 1668         break;
??Can_FetchSteerKeyInfo_Type4_63:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1669 		
// 1670     case BENZE_KEY_KnobAround_KEY_KNOBENTER_PRESSED:
// 1671         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_45:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1672         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_64
// 1673             //bounce
// 1674         {
// 1675             //process first pressed data
// 1676             AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
        MOVS     R0,#+5
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_65
// 1677         }
// 1678         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_64:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_65
// 1679             //keep
// 1680         {
// 1681             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1682             //process keep data
// 1683         }
// 1684         break;
??Can_FetchSteerKeyInfo_Type4_65:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1685     
// 1686     case BENZE_KEY_KnobAround_KEY_OPTION_PRESSED:
// 1687         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_46:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1688         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??Can_FetchSteerKeyInfo_Type4_66
// 1689             //bounce
// 1690         {
// 1691             //process first pressed data
// 1692             //AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 1693         }
// 1694         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_66
// 1695             //keep
// 1696         {
// 1697             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1698             //process keep data
// 1699         }
// 1700         break;
??Can_FetchSteerKeyInfo_Type4_66:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1701     case BENZE_KEY_KnobAround_KEY_BACK_PRESSED:
// 1702         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_47:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1703         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_67
// 1704             //bounce
// 1705         {
// 1706             //process first pressed data
// 1707             //AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_RET_PRESSED);
// 1708           AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_68
// 1709         }
// 1710         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_67:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_68
// 1711             //keep
// 1712         {
// 1713             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1714             //process keep data
// 1715         }
// 1716         break;
??Can_FetchSteerKeyInfo_Type4_68:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1717     
// 1718     case BENZE_KEY_KnobAround_KEY_BACK_KEEP:
// 1719         m_BMW_CAN.uKeyKeepInDepCnt++;
??Can_FetchSteerKeyInfo_Type4_53:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+2]
// 1720         if (m_BMW_CAN.uKeyKeepInDepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_69
// 1721             //bounce
// 1722         {
// 1723             //process first pressed data
// 1724             AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_RET_KEEP);
        MOVS     R0,#+228
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_70
// 1725         
// 1726         }
// 1727         else if (m_BMW_CAN.uKeyKeepInDepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_69:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_70
// 1728             //keep
// 1729         {
// 1730             m_BMW_CAN.uKeyKeepInDepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
// 1731             //process keep data
// 1732         }
// 1733         break;
??Can_FetchSteerKeyInfo_Type4_70:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1734       
// 1735     case BENZE_KEY_KnobAround_KEY_RADIO_PRESSED:
// 1736         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_48:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1737         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_71
// 1738             //bounce
// 1739         {
// 1740             //process first pressed data
// 1741             AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_72
// 1742         }
// 1743         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_71:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_72
// 1744             //keep
// 1745         {
// 1746             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1747             //process keep data
// 1748         }
// 1749         break;
??Can_FetchSteerKeyInfo_Type4_72:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1750     case BENZE_KEY_KnobAround_KEY_MEDIA_PRESSED: //
// 1751         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_49:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1752         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_73
// 1753             //bounce
// 1754         {
// 1755             //process first pressed data
// 1756             AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_74
// 1757         }
// 1758         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_73:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_74
// 1759             //keep
// 1760         {
// 1761             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1762             //process keep data
// 1763         }
// 1764         break;
??Can_FetchSteerKeyInfo_Type4_74:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1765     case BENZE_KEY_KnobAround_KEY_MENU_PRESSED:
// 1766         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_50:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1767         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_75
// 1768             //bounce
// 1769         {
// 1770             //process first pressed data
// 1771             AudiCanBus_SendControlCmd(BENZE_CMD_MENU_PRESSED);//
        MOVS     R0,#+93
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_76
// 1772         }
// 1773         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_75:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_76
// 1774             //keep
// 1775         {
// 1776             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1777             //process keep data
// 1778         }
// 1779         break;
??Can_FetchSteerKeyInfo_Type4_76:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1780     case BENZE_KEY_KnobAround_KEY_TEL_PRESSED:
// 1781         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_51:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1782         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_77
// 1783             //bounce
// 1784         {
// 1785             //process first pressed data
// 1786             AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_78
// 1787         }
// 1788         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_77:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_78
// 1789             //keep
// 1790         {
// 1791             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1792             //process keep data
// 1793         }
// 1794         break;
??Can_FetchSteerKeyInfo_Type4_78:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1795     case BENZE_KEY_KnobAround_KEY_MAP_PRESSED:
// 1796         m_BMW_CAN.uKeyKeepCnt++;
??Can_FetchSteerKeyInfo_Type4_52:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+1]
// 1797         if (m_BMW_CAN.uKeyKeepCnt == 1)
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type4_79
// 1798             //bounce
// 1799         {
// 1800             //process first pressed data
// 1801             AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
        MOVS     R0,#+32
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type4_80
// 1802         }
// 1803         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
??Can_FetchSteerKeyInfo_Type4_79:
        LDR.N    R0,??DataTable9_1
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type4_80
// 1804             //keep
// 1805         {
// 1806             m_BMW_CAN.uKeyKeepCnt = 2;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+1]
// 1807             //process keep data
// 1808         }
// 1809         break;
??Can_FetchSteerKeyInfo_Type4_80:
        B.N      ??Can_FetchSteerKeyInfo_Type4_55
// 1810     
// 1811     /********************Process keep pressed**********************************/
// 1812         
// 1813     default:
// 1814         m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
??Can_FetchSteerKeyInfo_Type4_54:
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1815         m_BMW_CAN.uKeyKeepCnt = 0;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
// 1816         m_BMW_CAN.bKeyKeepOneTime = 0;
        LDR.N    R0,??DataTable9_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
// 1817         break;
// 1818     }
// 1819 }
??Can_FetchSteerKeyInfo_Type4_55:
??Can_FetchSteerKeyInfo_Type4_2:
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40006400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     BENCI_keyTab

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     BENCI_keyTab+0x14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     BENCI_keyTab+0x28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     BENCI_keyTab+0x3C

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uCKeepFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uRetKeepFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
??wBounceCnt:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function Can_FetchSteerKeyInfo_Type3
        THUMB
// 1820 void Can_FetchSteerKeyInfo_Type3(CanRxMsg RxMessage)
// 1821 {
Can_FetchSteerKeyInfo_Type3:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 1822     static vu8 uPreAction = 0;
// 1823     static vu8 uPreVal = 0;
// 1824     
// 1825     if (!(RxMessage.StdId == BWM_CAN_STEER_KEY_STD__TYPE3_ID && RxMessage.DLC == 6))
        LDR      R0,[SP, #+8]
        MOV      R1,#+612
        CMP      R0,R1
        BNE.N    ??Can_FetchSteerKeyInfo_Type3_0
        LDRB     R0,[SP, #+18]
        CMP      R0,#+6
        BEQ.N    ??Can_FetchSteerKeyInfo_Type3_1
// 1826     {
// 1827         return ;
??Can_FetchSteerKeyInfo_Type3_0:
        B.N      ??Can_FetchSteerKeyInfo_Type3_2
// 1828     }
// 1829     //initial
// 1830     if(uPreAction==RxMessage.Data[2])//no action
??Can_FetchSteerKeyInfo_Type3_1:
        LDR.W    R0,??DataTable16
        LDRB     R0,[R0, #+0]
        LDRB     R1,[SP, #+21]
        CMP      R0,R1
        BEQ.N    ??Can_FetchSteerKeyInfo_Type3_2
// 1831     {
// 1832         return ;
// 1833     }  
// 1834     //
// 1835     if ((RxMessage.Data[3]>uPreVal)||(RxMessage.Data[3]==0x00&&uPreVal==0xFF))
??Can_FetchSteerKeyInfo_Type3_3:
        LDR.W    R0,??DataTable16_1
        LDRB     R0,[R0, #+0]
        LDRB     R1,[SP, #+22]
        CMP      R0,R1
        BCC.N    ??Can_FetchSteerKeyInfo_Type3_4
        LDRB     R0,[SP, #+22]
        CMP      R0,#+0
        BNE.N    ??Can_FetchSteerKeyInfo_Type3_5
        LDR.W    R0,??DataTable16_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BNE.N    ??Can_FetchSteerKeyInfo_Type3_5
// 1836         //add
// 1837     {
// 1838         AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEINC_PRESSED);
??Can_FetchSteerKeyInfo_Type3_4:
        MOVS     R0,#+7
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type3_6
// 1839     }
// 1840     else if ((RxMessage.Data[3] <uPreVal)||(RxMessage.Data[3]==0xFF&&uPreVal==0x00))
??Can_FetchSteerKeyInfo_Type3_5:
        LDRB     R0,[SP, #+22]
        LDR.W    R1,??DataTable16_1
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??Can_FetchSteerKeyInfo_Type3_7
        LDRB     R0,[SP, #+22]
        CMP      R0,#+255
        BNE.N    ??Can_FetchSteerKeyInfo_Type3_6
        LDR.W    R0,??DataTable16_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Can_FetchSteerKeyInfo_Type3_6
// 1841         //sub
// 1842     {
// 1843         AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
??Can_FetchSteerKeyInfo_Type3_7:
        MOVS     R0,#+6
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
// 1844     }
// 1845     
// 1846     uPreAction=RxMessage.Data[2];
??Can_FetchSteerKeyInfo_Type3_6:
        LDRB     R0,[SP, #+21]
        LDR.W    R1,??DataTable16
        STRB     R0,[R1, #+0]
// 1847     uPreVal=RxMessage.Data[3];
        LDRB     R0,[SP, #+22]
        LDR.W    R1,??DataTable16_1
        STRB     R0,[R1, #+0]
// 1848     
// 1849 }
??Can_FetchSteerKeyInfo_Type3_2:
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     BENCI_keyTab+0x50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     m_BMW_CAN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     KnobCntrTab

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uPreAction:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uPreVal:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Can_FetchSteerKeyInfo_Type2
        THUMB
// 1850 void Can_FetchSteerKeyInfo_Type2(CanRxMsg RxMessage)
// 1851 {
Can_FetchSteerKeyInfo_Type2:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 1852     if (!(RxMessage.StdId == BWM_CAN_STEER_KEY_STD__TYPE2_ID && RxMessage.DLC == 2))
        LDR      R0,[SP, #+8]
        MOVW     R1,#+503
        CMP      R0,R1
        BNE.N    ??Can_FetchSteerKeyInfo_Type2_0
        LDRB     R0,[SP, #+18]
        CMP      R0,#+2
        BEQ.N    ??Can_FetchSteerKeyInfo_Type2_1
// 1853     {
// 1854         return ;
??Can_FetchSteerKeyInfo_Type2_0:
        B.N      ??Can_FetchSteerKeyInfo_Type2_2
// 1855     }
// 1856 
// 1857     //initial
// 1858     
// 1859     //
// 1860     if (RxMessage.Data[0] ==0x80)
??Can_FetchSteerKeyInfo_Type2_1:
        LDRB     R0,[SP, #+19]
        CMP      R0,#+128
        BNE.N    ??Can_FetchSteerKeyInfo_Type2_3
// 1861         //tune up
// 1862     {
// 1863         AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEINC_PRESSED);
        MOVS     R0,#+7
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type2_4
// 1864     }
// 1865     else if (RxMessage.Data[0] ==0x7E)
??Can_FetchSteerKeyInfo_Type2_3:
        LDRB     R0,[SP, #+19]
        CMP      R0,#+126
        BNE.N    ??Can_FetchSteerKeyInfo_Type2_5
// 1866         //tune dn
// 1867     {
// 1868         AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
        MOVS     R0,#+6
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type2_4
// 1869     }
// 1870     else if (RxMessage.Data[0] ==0x7F)
??Can_FetchSteerKeyInfo_Type2_5:
        LDRB     R0,[SP, #+19]
        CMP      R0,#+127
        BNE.N    ??Can_FetchSteerKeyInfo_Type2_4
// 1871         //enter
// 1872     {
// 1873         AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
        MOVS     R0,#+5
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
// 1874     }
// 1875 
// 1876 }
??Can_FetchSteerKeyInfo_Type2_4:
??Can_FetchSteerKeyInfo_Type2_2:
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function Can_FetchSteerKeyInfo_Type1
        THUMB
// 1877 void Can_FetchSteerKeyInfo_Type1(CanRxMsg RxMessage)
// 1878 {
Can_FetchSteerKeyInfo_Type1:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
// 1879     static vu8 uCKeepFlag = 0;
// 1880     static vu8 uRetKeepFlag = 0;
// 1881     static vu16 wBounceCnt = 0;
// 1882     BYTE i;
// 1883 
// 1884     m_BMW_CAN.RxMessage.DLC = RxMessage.DLC;
        LDR.W    R0,??DataTable17
        LDRB     R1,[SP, #+18]
        STRB     R1,[R0, #+86]
// 1885     if (!(RxMessage.StdId == BWM_CAN_STEER_KEY_STD__TYPE1_ID && RxMessage.DLC == 2))
        LDR      R0,[SP, #+8]
        CMP      R0,#+470
        BNE.N    ??Can_FetchSteerKeyInfo_Type1_0
        LDRB     R0,[SP, #+18]
        CMP      R0,#+2
        BEQ.N    ??Can_FetchSteerKeyInfo_Type1_1
// 1886     {
// 1887         return ;
??Can_FetchSteerKeyInfo_Type1_0:
        B.N      ??Can_FetchSteerKeyInfo_Type1_2
// 1888     }
// 1889     for(i = 0; i < 2; i++)
??Can_FetchSteerKeyInfo_Type1_1:
        MOVS     R0,#+0
        MOVS     R4,R0
??Can_FetchSteerKeyInfo_Type1_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BCS.N    ??Can_FetchSteerKeyInfo_Type1_4
// 1890         m_BMW_CAN.RxMessage.Data[i] = RxMessage.Data[i];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable17
        ADDS     R0,R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R1,SP,#+8
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+11]
        STRB     R1,[R0, #+87]
        ADDS     R4,R4,#+1
        B.N      ??Can_FetchSteerKeyInfo_Type1_3
// 1891     //initial
// 1892     m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
??Can_FetchSteerKeyInfo_Type1_4:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 1893     //
// 1894     if (RxMessage.Data[1] & 0x10)
        LDRB     R0,[SP, #+20]
        LSLS     R0,R0,#+27
        BPL.N    ??Can_FetchSteerKeyInfo_Type1_5
// 1895         //mode
// 1896     {
// 1897         m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_MODE_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+87
        STRH     R1,[R0, #+4]
        B.N      ??Can_FetchSteerKeyInfo_Type1_6
// 1898     }
// 1899     else if (RxMessage.Data[1] & 0x01)
??Can_FetchSteerKeyInfo_Type1_5:
        LDRB     R0,[SP, #+20]
        LSLS     R0,R0,#+31
        BPL.N    ??Can_FetchSteerKeyInfo_Type1_7
// 1900         //voice
// 1901     {
// 1902         m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+81
        STRH     R1,[R0, #+4]
        B.N      ??Can_FetchSteerKeyInfo_Type1_6
// 1903     }
// 1904     else if (RxMessage.Data[0] & 0x01)
??Can_FetchSteerKeyInfo_Type1_7:
        LDRB     R0,[SP, #+19]
        LSLS     R0,R0,#+31
        BPL.N    ??Can_FetchSteerKeyInfo_Type1_8
// 1905         //bt
// 1906     {
// 1907         m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_BT_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+86
        STRH     R1,[R0, #+4]
        B.N      ??Can_FetchSteerKeyInfo_Type1_6
// 1908     }
// 1909     
// 1910     else
// 1911     {
// 1912 
// 1913         //-------------------------------------------------------
// 1914         wBounceCnt++;
??Can_FetchSteerKeyInfo_Type1_8:
        LDR.W    R0,??DataTable17_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17_1
        STRH     R0,[R1, #+0]
// 1915         if (wBounceCnt >= 2)
        LDR.W    R0,??DataTable17_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2
        BCC.N    ??Can_FetchSteerKeyInfo_Type1_9
// 1916         {
// 1917             uCKeepFlag = 0;
        LDR.W    R0,??DataTable17_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1918             uRetKeepFlag = 0;
        LDR.W    R0,??DataTable17_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1919             m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 1920             wBounceCnt = 0;
        LDR.W    R0,??DataTable17_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1921         }
// 1922         m_BMW_CAN.uKeyKeepCnt2 = 0;
??Can_FetchSteerKeyInfo_Type1_9:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
// 1923         m_BMW_CAN.bKeyKeepOneTime2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 1924 
// 1925     }
// 1926 
// 1927 
// 1928     switch (m_BMW_CAN.uKeyID2)
??Can_FetchSteerKeyInfo_Type1_6:
        LDR.W    R0,??DataTable17
        LDRH     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??Can_FetchSteerKeyInfo_Type1_10
        CMP      R0,#+81
        BEQ.N    ??Can_FetchSteerKeyInfo_Type1_11
        CMP      R0,#+86
        BEQ.N    ??Can_FetchSteerKeyInfo_Type1_12
        CMP      R0,#+87
        BEQ.N    ??Can_FetchSteerKeyInfo_Type1_13
        B.N      ??Can_FetchSteerKeyInfo_Type1_14
// 1929     {
// 1930     case BENZE_KEY_ALL_BOUNCED:
// 1931         uCKeepFlag = 0;
??Can_FetchSteerKeyInfo_Type1_10:
        LDR.W    R0,??DataTable17_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1932         uRetKeepFlag = 0;
        LDR.W    R0,??DataTable17_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1933         m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 1934         wBounceCnt = 0;
        LDR.W    R0,??DataTable17_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 1935         m_BMW_CAN.uKeyKeepCnt2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
// 1936         m_BMW_CAN.bKeyKeepOneTime2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 1937         break;
        B.N      ??Can_FetchSteerKeyInfo_Type1_15
// 1938     case BENZE_KEY_STEERING_RIGHT_KEY_MODE_PRESSED:
// 1939         m_BMW_CAN.uKeyKeepCnt2++;
??Can_FetchSteerKeyInfo_Type1_13:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 1940         if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type1_16
// 1941             //bounce
// 1942         {
// 1943             //process first pressed data
// 1944             AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type1_17
// 1945         }
// 1946         else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Can_FetchSteerKeyInfo_Type1_16:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type1_17
// 1947             //keep
// 1948         {
// 1949             m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 1950             //process keep data
// 1951             
// 1952         }
// 1953         break;
??Can_FetchSteerKeyInfo_Type1_17:
        B.N      ??Can_FetchSteerKeyInfo_Type1_15
// 1954     
// 1955 
// 1956     case BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED:
// 1957         m_BMW_CAN.uKeyKeepCnt2++;
??Can_FetchSteerKeyInfo_Type1_11:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 1958         if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type1_18
// 1959             //bounce
// 1960         {
// 1961             //process first pressed data
// 1962             AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type1_19
// 1963         }
// 1964         else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Can_FetchSteerKeyInfo_Type1_18:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type1_19
// 1965             //keep
// 1966         {
// 1967             m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 1968             //process keep data
// 1969         }
// 1970         break;
??Can_FetchSteerKeyInfo_Type1_19:
        B.N      ??Can_FetchSteerKeyInfo_Type1_15
// 1971     case BENZE_KEY_STEERING_RIGHT_KEY_BT_PRESSED:
// 1972         m_BMW_CAN.uKeyKeepCnt2++;
??Can_FetchSteerKeyInfo_Type1_12:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 1973         if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Can_FetchSteerKeyInfo_Type1_20
// 1974             //bounce
// 1975         {
// 1976             //process first pressed data
// 1977             AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall AudiCanBus_SendControlCmd
        BL       AudiCanBus_SendControlCmd
        B.N      ??Can_FetchSteerKeyInfo_Type1_21
// 1978         }
// 1979         else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Can_FetchSteerKeyInfo_Type1_20:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Can_FetchSteerKeyInfo_Type1_21
// 1980             //keep
// 1981         {
// 1982             m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 1983             //process keep data
// 1984         }
// 1985         break;
??Can_FetchSteerKeyInfo_Type1_21:
        B.N      ??Can_FetchSteerKeyInfo_Type1_15
// 1986     
// 1987     default:
// 1988         m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
??Can_FetchSteerKeyInfo_Type1_14:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 1989         m_BMW_CAN.uKeyKeepCnt2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
// 1990         m_BMW_CAN.bKeyKeepOneTime2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 1991         break;
// 1992     }
// 1993 }
??Can_FetchSteerKeyInfo_Type1_15:
??Can_FetchSteerKeyInfo_Type1_2:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uCKeepFlag_1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uRetKeepFlag_1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
??wBounceCnt_1:
        DS8 2
// 1994 
// 1995 /**************************************************************************/
// 1996 /*                                                                        */
// 1997 /**************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function AudiCan_FetchStallsInfo
          CFI NoCalls
        THUMB
// 1998 void AudiCan_FetchStallsInfo(CanRxMsg RxMessage)
// 1999 {}
AudiCan_FetchStallsInfo:
        PUSH     {R0-R3}
          CFI CFA R13+16
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
// 2000 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function AudiCan_FetchStallsInfo_Q3
          CFI NoCalls
        THUMB
// 2001 void AudiCan_FetchStallsInfo_Q3(CanRxMsg RxMessage)
// 2002 {
AudiCan_FetchStallsInfo_Q3:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 2003 
// 2004 
// 2005 }
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
// 2006 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function AudiCanBus_FetchCmdTask
          CFI NoCalls
        THUMB
// 2007 void AudiCanBus_FetchCmdTask(void)
// 2008 {}
AudiCanBus_FetchCmdTask:
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
// 2009 //get input source info

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function Audi_CanBus_InputSource_data_analytic
          CFI NoCalls
        THUMB
// 2010 void Audi_CanBus_InputSource_data_analytic(CanRxMsg RxMessage)
// 2011 {
Audi_CanBus_InputSource_data_analytic:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 2012     static vu8 uTxtInfoBuf[30];
// 2013     static vu8 uTxtIndex = 0;
// 2014    
// 2015 
// 2016 
// 2017 
// 2018     if (RxMessage.StdId == BMW_CAN_SOURCE2_STD_ID && RxMessage.DLC == 1) //list info
        LDR      R0,[SP, #+0]
        CMP      R0,#+1
        BNE.W    ??Audi_CanBus_InputSource_data_analytic_0
        LDRB     R0,[SP, #+10]
        CMP      R0,#+1
        BNE.W    ??Audi_CanBus_InputSource_data_analytic_0
// 2019     {
// 2020         uTxtIndex = 0;
        LDR.W    R0,??DataTable17_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 2021         //------------------------------------------------------------------
// 2022         if(uTxtInfoBuf[5] == 'A' && uTxtInfoBuf[6] == 'U' && uTxtInfoBuf[7] == 'X')
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+5]
        CMP      R0,#+65
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_1
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+6]
        CMP      R0,#+85
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_1
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+7]
        CMP      R0,#+88
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_1
// 2023         {
// 2024             m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_AUX;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+71]
        B.N      ??Audi_CanBus_InputSource_data_analytic_2
// 2025 
// 2026         }
// 2027         else if(uTxtInfoBuf[5] == 'E' && uTxtInfoBuf[6] == 'x' && uTxtInfoBuf[7] == 't')
??Audi_CanBus_InputSource_data_analytic_1:
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+5]
        CMP      R0,#+69
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_2
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+6]
        CMP      R0,#+120
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_2
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+7]
        CMP      R0,#+116
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_2
// 2028         {
// 2029             m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_AUX;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+71]
// 2030 
// 2031         }
// 2032         //-------------------------------------------------------------------
// 2033         if(uTxtInfoBuf[5] == 'F' && uTxtInfoBuf[6] == 'M')
??Audi_CanBus_InputSource_data_analytic_2:
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+5]
        CMP      R0,#+70
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_3
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+6]
        CMP      R0,#+77
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_3
// 2034         {
// 2035             m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRB     R1,[R0, #+71]
        B.N      ??Audi_CanBus_InputSource_data_analytic_0
// 2036 
// 2037         }
// 2038         else if(uTxtInfoBuf[5] == 'R' && uTxtInfoBuf[6] == 'a' && uTxtInfoBuf[7] == 'd')
??Audi_CanBus_InputSource_data_analytic_3:
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+5]
        CMP      R0,#+82
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_4
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+6]
        CMP      R0,#+97
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_4
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+7]
        CMP      R0,#+100
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_4
// 2039         {
// 2040             m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRB     R1,[R0, #+71]
        B.N      ??Audi_CanBus_InputSource_data_analytic_0
// 2041 
// 2042         }
// 2043         else if(uTxtInfoBuf[5] == 'A' && uTxtInfoBuf[6] == 'M')
??Audi_CanBus_InputSource_data_analytic_4:
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+5]
        CMP      R0,#+65
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_5
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+6]
        CMP      R0,#+77
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_5
// 2044         {
// 2045             m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRB     R1,[R0, #+71]
        B.N      ??Audi_CanBus_InputSource_data_analytic_0
// 2046 
// 2047         }
// 2048         else if(uTxtInfoBuf[5] == 'C' && uTxtInfoBuf[6] == 'D')
??Audi_CanBus_InputSource_data_analytic_5:
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+5]
        CMP      R0,#+67
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_6
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+6]
        CMP      R0,#+68
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_6
// 2049         {
// 2050             m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+71]
        B.N      ??Audi_CanBus_InputSource_data_analytic_0
// 2051 
// 2052         }
// 2053         else if(uTxtInfoBuf[5] == 'S' && uTxtInfoBuf[6] == 'D')
??Audi_CanBus_InputSource_data_analytic_6:
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+5]
        CMP      R0,#+83
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_7
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+6]
        CMP      R0,#+68
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_7
// 2054         {
// 2055             m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+71]
        B.N      ??Audi_CanBus_InputSource_data_analytic_0
// 2056 
// 2057         }
// 2058         else if(uTxtInfoBuf[5] == 'T' && uTxtInfoBuf[6] == 'r' && uTxtInfoBuf[7] == 'a')
??Audi_CanBus_InputSource_data_analytic_7:
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+5]
        CMP      R0,#+84
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_0
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+6]
        CMP      R0,#+114
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_0
        LDR.W    R0,??DataTable17_5
        LDRB     R0,[R0, #+7]
        CMP      R0,#+97
        BNE.N    ??Audi_CanBus_InputSource_data_analytic_0
// 2059         {
// 2060             m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+71]
// 2061 
// 2062         }
// 2063         //--------------------------------------------------------------------
// 2064 
// 2065 
// 2066 
// 2067 
// 2068 
// 2069     }
// 2070 
// 2071 
// 2072 
// 2073 }
??Audi_CanBus_InputSource_data_analytic_0:
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??uTxtInfoBuf:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uTxtIndex:
        DS8 1
// 2074 //工作信息

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function Audi_CanBus_work_data_analytic
          CFI NoCalls
        THUMB
// 2075 void Audi_CanBus_work_data_analytic(CanRxMsg RxMessage)
// 2076 {}
Audi_CanBus_work_data_analytic:
        PUSH     {R0-R3}
          CFI CFA R13+16
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
// 2077 
// 2078 
// 2079 /////Audi Q3
// 2080 
// 2081 
// 2082 
// 2083 #if LF_CAN_TYPE == BWM5SCAN
// 2084 void BWM_5S_CanBus_Config(void)
// 2085 	{
// 2086 	
// 2087 		CAN_InitTypeDef CAN_InitStructure;
// 2088 		CAN_FilterInitTypeDef CAN_FilterInitStructure;
// 2089 		/* CAN register init */
// 2090 		// CAN_DeInit();
// 2091 		/* CAN1 and CAN2 register init */
// 2092 		CAN_DeInit(CAN1);
// 2093 		CAN_DeInit(CAN2);
// 2094 	
// 2095 	
// 2096 		/* Struct init*/
// 2097 		CAN_StructInit(&CAN_InitStructure);
// 2098 	
// 2099 		
// 2100 		/*************************************************************
// 2101 		
// 2102 		主机CAN配置
// 2103 		
// 2104 		*************************************************************/
// 2105 	
// 2106 	
// 2107 		/* CAN cell init */
// 2108 		CAN_InitStructure.CAN_TTCM = DISABLE; //禁止时间触发通信模式
// 2109 		CAN_InitStructure.CAN_ABOM = DISABLE;
// 2110 		CAN_InitStructure.CAN_AWUM = DISABLE;
// 2111 		CAN_InitStructure.CAN_NART = DISABLE;
// 2112 		//CAN报文只被发送1次，不管发送的结果如何（成功、出错或仲裁丢失）
// 2113 		CAN_InitStructure.CAN_RFLM = DISABLE;
// 2114 		CAN_InitStructure.CAN_TXFP = DISABLE;
// 2115 		CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;
// 2116 	
// 2117 		CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
// 2118 		CAN_InitStructure.CAN_BS1 = CAN_BS1_15tq; //1--16
// 2119 		CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8
// 2120 		CAN_InitStructure.CAN_Prescaler = 16;
// 2121 		////(pclk1/((1+8+7)*16)) = 32Mhz/16/16 = 125Kbits
// 2122 		//CAN_Init(&CAN_InitStructure);
// 2123 	
// 2124 		/*Initializes the CAN1	and CAN2 */
// 2125 		CAN_Init(CAN1, &CAN_InitStructure);
// 2126 	
// 2127 	
// 2128 		/* CAN cell init */
// 2129 		CAN_InitStructure.CAN_TTCM = DISABLE; //禁止时间触发通信模式
// 2130 		CAN_InitStructure.CAN_ABOM = DISABLE;
// 2131 		CAN_InitStructure.CAN_AWUM = DISABLE;
// 2132 		CAN_InitStructure.CAN_NART = DISABLE;
// 2133 		//CAN报文只被发送1次，不管发送的结果如何（成功、出错或仲裁丢失）
// 2134 		CAN_InitStructure.CAN_RFLM = DISABLE;
// 2135 		CAN_InitStructure.CAN_TXFP = DISABLE;
// 2136 		CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;
// 2137 	
// 2138 		CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
// 2139 		CAN_InitStructure.CAN_BS1 = CAN_BS1_15tq; //1--16
// 2140 		CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8
// 2141 		CAN_InitStructure.CAN_Prescaler = 16;
// 2142 		////(pclk1/((1+8+7)*16)) = 32Mhz/16/16 = 125Kbits
// 2143 		CAN_Init(CAN2, &CAN_InitStructure);
// 2144 		
// 2145 		CAN_FilterInitStructure.CAN_FilterNumber = 1; //选择过滤器7
// 2146 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2147 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2148 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_AIR_INFO1_STD_ID << 5;
// 2149 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2150 	
// 2151 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2152 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2153 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2154 	
// 2155 		
// 2156 		CAN_FilterInitStructure.CAN_FilterNumber = 2; //选择过滤器7
// 2157 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2158 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2159 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_AIR_INFO2_STD_ID << 5;
// 2160 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2161 	
// 2162 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2163 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2164 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2165 		
// 2166 		CAN_FilterInitStructure.CAN_FilterNumber = 3; //选择过滤器7
// 2167 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2168 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2169 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_AIR_INFO3_STD_ID << 5;
// 2170 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2171 	
// 2172 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2173 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2174 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2175 		
// 2176 		CAN_FilterInitStructure.CAN_FilterNumber = 4; //选择过滤器7
// 2177 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2178 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2179 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_STEERING_1_STD_ID << 5;
// 2180 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2181 	
// 2182 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2183 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2184 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2185 		
// 2186 		CAN_FilterInitStructure.CAN_FilterNumber = 5; //选择过滤器7
// 2187 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2188 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2189 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_STEERING_2_STD_ID << 5;
// 2190 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2191 	
// 2192 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2193 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2194 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2195 		
// 2196 		CAN_FilterInitStructure.CAN_FilterNumber = 6; //选择过滤器7
// 2197 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2198 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2199 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_STEERINGANGLE_STD_ID << 5;
// 2200 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2201 	
// 2202 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2203 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2204 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2205 		
// 2206 		CAN_FilterInitStructure.CAN_FilterNumber = 7; //选择过滤器7
// 2207 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2208 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2209 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_ACC_STD_ID << 5;
// 2210 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2211 	
// 2212 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2213 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2214 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2215 	
// 2216 		
// 2217 		CAN_FilterInitStructure.CAN_FilterNumber = 8; //选择过滤器7
// 2218 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2219 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2220 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_TIMER_STD_ID << 5;
// 2221 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2222 	
// 2223 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2224 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2225 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2226 		
// 2227 		CAN_FilterInitStructure.CAN_FilterNumber = 9; //选择过滤器7
// 2228 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2229 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2230 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_STALLS_STD_ID << 5;
// 2231 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2232 	
// 2233 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2234 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2235 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2236 		
// 2237 		CAN_FilterInitStructure.CAN_FilterNumber = 10; //选择过滤器7
// 2238 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2239 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2240 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_MUTE_STD_ID << 5;
// 2241 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2242 	
// 2243 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2244 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2245 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2246 		
// 2247 		CAN_FilterInitStructure.CAN_FilterNumber = 11; //选择过滤器7
// 2248 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2249 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2250 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_POWER_STD_ID << 5;
// 2251 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2252 	
// 2253 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2254 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2255 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2256 		
// 2257 		CAN_FilterInitStructure.CAN_FilterNumber = 12; //选择过滤器7
// 2258 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2259 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2260 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_MEDIA_SYSTEM_STD_ID << 5;
// 2261 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2262 	
// 2263 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2264 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2265 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2266 	
// 2267 		/*************************************************************
// 2268 		
// 2269 		原车屏板CAN配置
// 2270 		
// 2271 		*************************************************************/
// 2272 		CAN_FilterInitStructure.CAN_FilterNumber = 14; //选择过滤器7
// 2273 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2274 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2275 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_KNOB_STD_ID << 5;
// 2276 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2277 	
// 2278 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2279 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2280 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2281 	
// 2282 		CAN_FilterInitStructure.CAN_FilterNumber = 15; //选择过滤器7
// 2283 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2284 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2285 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_MEDIA_SYSTEM_STD_ID << 5;
// 2286 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2287 	
// 2288 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2289 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2290 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2291 		
// 2292 		CAN_FilterInitStructure.CAN_FilterNumber = 16; //选择过滤器7
// 2293 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2294 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2295 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_KNOB_TUNE_ID << 5;
// 2296 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2297 	
// 2298 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2299 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2300 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2301 	
// 2302 		CAN_FilterInitStructure.CAN_FilterNumber = 17; //选择过滤器7
// 2303 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2304 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2305 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_TIMER_STD_ID << 5;
// 2306 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2307 	
// 2308 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2309 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2310 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 2311 	
// 2312 	
// 2313 		CAN_FilterInitStructure.CAN_FilterNumber = 18; //选择过滤器7
// 2314 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 2315 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 2316 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_POWER_STD_ID << 5;
// 2317 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 2318 	
// 2319 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 2320 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 2321 		CAN_FilterInit(&CAN_FilterInitStructure);
// 2322 		CAN_SlaveStartBank(13);//Miller.Tao
// 2323 		//-------------------------------------------------------------
// 2324 	
// 2325 		/* CAN FIFO0 message pending interrupt enable */
// 2326 		CAN_ITConfig(CAN1, CAN_IT_FMP0 | CAN_IT_FF0, ENABLE);
// 2327 		/* CAN FIFO0 message pending interrupt enable */
// 2328 		CAN_ITConfig(CAN2, CAN_IT_FMP0 | CAN_IT_FF0, ENABLE);
// 2329 	}
// 2330 
// 2331 
// 2332 /*
// 2333 *********************************************************
// 2334 *fun:void BWM_X1_Can_FetchStallsInfo(CanRxMsg RxMessage)
// 2335 *description:处理档位信息
// 2336 *
// 2337 *
// 2338 *Author:Miller.Tao,2014-09-10
// 2339 *
// 2340 *********************************************************
// 2341 */
// 2342 
// 2343 void BWM_5S_Can_FetchStallsInfo(CanRxMsg RxMessage)
// 2344 {}
// 2345 
// 2346 #if 0 //Miller.Tao20150113
// 2347 void BWM_5S_CanBus_FetchSteerKeyInfo_Type5(CanRxMsg RxMessage)
// 2348 {
// 2349 	static vu8 uCKeepFlag = 0;
// 2350 	static vu8 uRetKeepFlag = 0;
// 2351 	static vu16 wBounceCnt = 0;
// 2352 	BYTE i;
// 2353 
// 2354 	if(g_stuSYSINFO.FS_select.car_type_onoff_id==1)
// 2355 		return;
// 2356 
// 2357 	m_BMW_CAN.RxMessage.DLC = RxMessage.DLC;
// 2358 	if (!(RxMessage.StdId == BWM5S_CAN_STEER_KEY_STD__TYPE5_ID && RxMessage.DLC == 2))
// 2359 	{
// 2360 		return ;
// 2361 	}
// 2362 	for(i = 0; i < 2; i++)
// 2363 		m_BMW_CAN.RxMessage.Data[i] = RxMessage.Data[i];
// 2364 	//initial
// 2365 	m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
// 2366 	//
// 2367 	if (RxMessage.Data[0]==0x01)
// 2368 		//navi
// 2369 	{
// 2370 		m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_NAVI_PRESSED;
// 2371 	}
// 2372 	else if (RxMessage.Data[0]==0x04)
// 2373 		//dvd
// 2374 	{
// 2375 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_DVD;
// 2376 	}
// 2377 	else if (RxMessage.Data[0] == 0x10)
// 2378 		//vedio
// 2379 	{
// 2380 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_vedio;
// 2381 	}
// 2382 	else if (RxMessage.Data[0] == 0x40)
// 2383 		//music
// 2384 	{
// 2385 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_music;
// 2386 	}	
// 2387 	else if (RxMessage.Data[1] == 0x01)
// 2388 		//tv
// 2389 	{
// 2390 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_TV;
// 2391 	}		
// 2392 	else
// 2393 	{
// 2394 
// 2395 		//-------------------------------------------------------
// 2396 		wBounceCnt++;
// 2397 		if (wBounceCnt >= 2)
// 2398 		{
// 2399 			uCKeepFlag = 0;
// 2400 			uRetKeepFlag = 0;
// 2401 			m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
// 2402 			wBounceCnt = 0;
// 2403 		}
// 2404 		m_BMW_CAN.uKeyKeepCnt2 = 0;
// 2405 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
// 2406 
// 2407 	}
// 2408 
// 2409 
// 2410 	switch (m_BMW_CAN.uKeyID2)
// 2411 	{
// 2412 	case BENZE_KEY_ALL_BOUNCED:
// 2413 		uCKeepFlag = 0;
// 2414 		uRetKeepFlag = 0;
// 2415 		m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
// 2416 		wBounceCnt = 0;
// 2417 		m_BMW_CAN.uKeyKeepCnt2 = 0;
// 2418 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
// 2419 		break;
// 2420 	case BENZE_KEY_STEERING_RIGHT_KEY_NAVI_PRESSED:
// 2421 		m_BMW_CAN.uKeyKeepCnt2++;
// 2422 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
// 2423 			//bounce
// 2424 		{
// 2425 			//process first pressed data
// 2426 			LF_CanBus_SendControlCmd(BENZE_KEY_STEERING_RIGHT_KEY_NAVI_PRESSED);
// 2427 		}
// 2428 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
// 2429 			//keep
// 2430 		{
// 2431 			m_BMW_CAN.uKeyKeepCnt2 = 2;
// 2432 			//process keep data
// 2433 			
// 2434 		}
// 2435 		break;
// 2436 	case BENZE_CMD_KNOB_DVD:
// 2437 		m_BMW_CAN.uKeyKeepCnt2++;
// 2438 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
// 2439 			//bounce
// 2440 		{
// 2441 			//process first pressed data
// 2442 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_DVD);
// 2443 		}
// 2444 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
// 2445 			//keep
// 2446 		{
// 2447 			m_BMW_CAN.uKeyKeepCnt2 = 2;
// 2448 			//process keep data
// 2449 			
// 2450 		}
// 2451 		break;
// 2452 	case BENZE_CMD_KNOB_vedio:
// 2453 		m_BMW_CAN.uKeyKeepCnt2++;
// 2454 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
// 2455 			//bounce
// 2456 		{
// 2457 			//process first pressed data
// 2458 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_vedio);
// 2459 		}
// 2460 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
// 2461 			//keep
// 2462 		{
// 2463 			m_BMW_CAN.uKeyKeepCnt2 = 2;
// 2464 			//process keep data
// 2465 			
// 2466 		}
// 2467 		break;
// 2468 	case BENZE_CMD_KNOB_music:
// 2469 		m_BMW_CAN.uKeyKeepCnt2++;
// 2470 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
// 2471 			//bounce
// 2472 		{
// 2473 			//process first pressed data
// 2474 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_music);
// 2475 		}
// 2476 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
// 2477 			//keep
// 2478 		{
// 2479 			m_BMW_CAN.uKeyKeepCnt2 = 2;
// 2480 			//process keep data
// 2481 			
// 2482 		}
// 2483 		break;
// 2484 	case BENZE_CMD_KNOB_TV:
// 2485 		m_BMW_CAN.uKeyKeepCnt2++;
// 2486 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
// 2487 			//bounce
// 2488 		{
// 2489 			//process first pressed data
// 2490 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TV);
// 2491 		}
// 2492 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
// 2493 			//keep
// 2494 		{
// 2495 			m_BMW_CAN.uKeyKeepCnt2 = 2;
// 2496 			//process keep data
// 2497 			
// 2498 		}
// 2499 		break;	
// 2500 
// 2501 
// 2502 	
// 2503 	default:
// 2504 		m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
// 2505 		m_BMW_CAN.uKeyKeepCnt2 = 0;
// 2506 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
// 2507 		break;
// 2508 	}
// 2509 }
// 2510 #endif
// 2511 /*
// 2512 ******************************************************
// 2513 方向盘按键
// 2514 ******************************************************
// 2515 */
// 2516 void BWM_5S_CanBus_FetchSteerKeyInfo_Type4(CanRxMsg RxMessage)
// 2517 
// 2518 {
// 2519     static vu8 uCKeepFlag = 0;
// 2520     static vu8 uRetKeepFlag = 0;
// 2521     static vu16 wBounceCnt = 0;
// 2522    
// 2523 
// 2524     if (!(RxMessage.StdId == BWM5S_CAN_STEER_KEY_STD__TYPE4_ID && RxMessage.DLC == 6))
// 2525     {
// 2526         return ;
// 2527     }
// 2528     
// 2529 
// 2530     //initial
// 2531     m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
// 2532     //
// 2533     /**************************FIrst pressed ************************************/
// 2534     
// 2535     if ((RxMessage.Data[3]==0x21&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x21&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x00)||(RxMessage.Data[3]==0x22&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
// 2536         //knob right
// 2537     {
// 2538         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBRT_PRESSED;
// 2539     }
// 2540     else if ((RxMessage.Data[3]==0x81&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x81&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x00)||(RxMessage.Data[3]==0x82&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
// 2541         //knob left
// 2542     {
// 2543         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBLT_PRESSED;
// 2544     }
// 2545     else if( (RxMessage.Data[3]==0x11&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x12&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
// 2546         //knob up
// 2547     {
// 2548         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBUP_PRESSED;
// 2549     }
// 2550     else if ((RxMessage.Data[3]==0x41&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x42&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
// 2551         //knob dn
// 2552     {
// 2553         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBDN_PRESSED;
// 2554     }
// 2555     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xDE&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xDE&&RxMessage.Data[5]==0x01))
// 2556         //knob enter
// 2557     {
// 2558         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBENTER_PRESSED;
// 2559     }
// 2560     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x04)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x04))
// 2561         //option
// 2562     {
// 2563         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_OPTION_PRESSED;
// 2564     }
// 2565     
// 2566     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x02)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x02))
// 2567         //back
// 2568     {
// 2569         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_BACK_PRESSED;
// 2570     }
// 2571     
// 2572     
// 2573     else if( (RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x08)||(RxMessage.Data[3]==0x02&&RxMessage.Data[3]==0xC0&&RxMessage.Data[3]==0x08))
// 2574         //radio
// 2575     {
// 2576         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_RADIO_PRESSED;
// 2577     }
// 2578     else if( (RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x10)||(RxMessage.Data[3]==0x02&&RxMessage.Data[3]==0xC0&&RxMessage.Data[3]==0x10))
// 2579         //media
// 2580     {
// 2581         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MEDIA_PRESSED;
// 2582     }
// 2583     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x01))
// 2584         //menu
// 2585     {
// 2586         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MENU_PRESSED;
// 2587     }
// 2588     else if ((RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x01))
// 2589         //menu keep
// 2590     {
// 2591         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_BACK_KEEP;
// 2592     }
// 2593     
// 2594     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x40)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x40))
// 2595         //tel
// 2596     {
// 2597         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_TEL_PRESSED;
// 2598     }
// 2599     else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x20)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x20))
// 2600         //map
// 2601     {
// 2602         m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MAP_PRESSED;
// 2603     }
// 2604     
// 2605     else
// 2606     {
// 2607 
// 2608         //-------------------------------------------------------
// 2609         wBounceCnt++;
// 2610         if (wBounceCnt >= 2)
// 2611         {
// 2612             uCKeepFlag = 0;
// 2613             uRetKeepFlag = 0;
// 2614             m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
// 2615             wBounceCnt = 0;
// 2616         }
// 2617         m_BMW_CAN.uKeyKeepCnt = 0;
// 2618         m_BMW_CAN.uKeyKeepInDepCnt=0;
// 2619         m_BMW_CAN.bKeyKeepOneTime = 0;
// 2620 
// 2621     }
// 2622 
// 2623 
// 2624     switch (m_BMW_CAN.uKeyID)
// 2625     {
// 2626     case BENZE_KEY_ALL_BOUNCED:
// 2627         uCKeepFlag = 0;
// 2628         uRetKeepFlag = 0;
// 2629         m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
// 2630         wBounceCnt = 0;
// 2631         m_BMW_CAN.uKeyKeepCnt = 0;
// 2632         m_BMW_CAN.bKeyKeepOneTime = 0;
// 2633         break;
// 2634     /********************Process first pressed**********************************/
// 2635     case BENZE_KEY_KnobAround_KEY_KNOBRT_PRESSED:
// 2636         m_BMW_CAN.uKeyKeepCnt++;
// 2637         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2638             //bounce
// 2639         {
// 2640             //process first pressed data
// 2641             LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);
// 2642         }
// 2643         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2644             //keep
// 2645         {
// 2646             m_BMW_CAN.uKeyKeepCnt = 2;
// 2647             //process keep data
// 2648             
// 2649         }
// 2650         break;
// 2651     
// 2652 
// 2653     case BENZE_KEY_KnobAround_KEY_KNOBLT_PRESSED:
// 2654         m_BMW_CAN.uKeyKeepCnt++;
// 2655         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2656             //bounce
// 2657         {
// 2658             //process first pressed data
// 2659             LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
// 2660         }
// 2661         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2662             //keep
// 2663         {
// 2664             m_BMW_CAN.uKeyKeepCnt = 2;
// 2665             //process keep data
// 2666         }
// 2667         break;
// 2668     case BENZE_KEY_KnobAround_KEY_KNOBUP_PRESSED:
// 2669         m_BMW_CAN.uKeyKeepCnt++;
// 2670         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2671             //bounce
// 2672         {
// 2673             //process first pressed data
// 2674             LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
// 2675         }
// 2676         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2677             //keep
// 2678         {
// 2679             m_BMW_CAN.uKeyKeepCnt = 2;
// 2680             //process keep data
// 2681         }
// 2682         break;
// 2683     case BENZE_KEY_KnobAround_KEY_KNOBDN_PRESSED:
// 2684         m_BMW_CAN.uKeyKeepCnt++;
// 2685         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2686             //bounce
// 2687         {
// 2688             //process first pressed data
// 2689             LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
// 2690         }
// 2691         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2692             //keep
// 2693         {
// 2694             m_BMW_CAN.uKeyKeepCnt = 2;
// 2695             //process keep data
// 2696         }
// 2697         break;
// 2698 		
// 2699     case BENZE_KEY_KnobAround_KEY_KNOBENTER_PRESSED:
// 2700         m_BMW_CAN.uKeyKeepCnt++;
// 2701         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2702             //bounce
// 2703         {
// 2704             //process first pressed data
// 2705             LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
// 2706         }
// 2707         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2708             //keep
// 2709         {
// 2710             m_BMW_CAN.uKeyKeepCnt = 2;
// 2711             //process keep data
// 2712         }
// 2713         break;
// 2714     
// 2715     case BENZE_KEY_KnobAround_KEY_OPTION_PRESSED:
// 2716         m_BMW_CAN.uKeyKeepCnt++;
// 2717         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2718             //bounce
// 2719         {
// 2720             //process first pressed data
// 2721             //AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 2722         }
// 2723         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2724             //keep
// 2725         {
// 2726             m_BMW_CAN.uKeyKeepCnt = 2;
// 2727             //process keep data
// 2728         }
// 2729         break;
// 2730     case BENZE_KEY_KnobAround_KEY_BACK_PRESSED:
// 2731         m_BMW_CAN.uKeyKeepCnt++;
// 2732         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2733             //bounce
// 2734         {
// 2735             //process first pressed data
// 2736             //AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_RET_PRESSED);
// 2737           LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 2738         }
// 2739         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2740             //keep
// 2741         {
// 2742             m_BMW_CAN.uKeyKeepCnt = 2;
// 2743 			LF_CanBus_SendControlCmd(BENZE_KEY_STEERING_RIGHT_KEY_NAVI_PRESSED);
// 2744             //process keep data
// 2745         }
// 2746         break;
// 2747     
// 2748     case BENZE_KEY_KnobAround_KEY_BACK_KEEP:
// 2749         m_BMW_CAN.uKeyKeepInDepCnt++;
// 2750         if (m_BMW_CAN.uKeyKeepInDepCnt == 1)
// 2751             //bounce
// 2752         {
// 2753             //process first pressed data
// 2754             LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_RET_KEEP);
// 2755         
// 2756         }
// 2757         else if (m_BMW_CAN.uKeyKeepInDepCnt >= 10)
// 2758             //keep
// 2759         {
// 2760             m_BMW_CAN.uKeyKeepInDepCnt = 2;
// 2761             //process keep data
// 2762         }
// 2763         break;
// 2764       
// 2765     case BENZE_KEY_KnobAround_KEY_RADIO_PRESSED:
// 2766         m_BMW_CAN.uKeyKeepCnt++;
// 2767         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2768             //bounce
// 2769         {
// 2770             //process first pressed data
// 2771             LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 2772         }
// 2773         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2774             //keep
// 2775         {
// 2776             m_BMW_CAN.uKeyKeepCnt = 2;
// 2777             //process keep data
// 2778         }
// 2779         break;
// 2780     case BENZE_KEY_KnobAround_KEY_MEDIA_PRESSED: //
// 2781         m_BMW_CAN.uKeyKeepCnt++;
// 2782         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2783             //bounce
// 2784         {
// 2785             //process first pressed data
// 2786             LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 2787         }
// 2788         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2789             //keep
// 2790         {
// 2791             m_BMW_CAN.uKeyKeepCnt = 2;
// 2792             //process keep data
// 2793         }
// 2794         break;
// 2795     case BENZE_KEY_KnobAround_KEY_MENU_PRESSED:
// 2796         m_BMW_CAN.uKeyKeepCnt++;
// 2797         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2798             //bounce
// 2799         {
// 2800             //process first pressed data
// 2801             //if(g_stuSYSINFO.sys_main.uMainMode != SYSTEM_MODE_IN_CAR_MEDIA)
// 2802                LF_CanBus_SendControlCmd(BENZE_CMD_MENU_PRESSED);//
// 2803         }
// 2804         else if (m_BMW_CAN.uKeyKeepCnt >= 4)// 10
// 2805             //keep
// 2806         {
// 2807            // if(g_stuSYSINFO.sys_main.uMainMode == SYSTEM_MODE_IN_CAR_MEDIA)
// 2808               LF_CanBus_SendControlCmd(BENZE_CMD_MENU_PRESSED);//
// 2809             m_BMW_CAN.uKeyKeepCnt = 2;
// 2810             //process keep data
// 2811         }
// 2812         break;
// 2813     case BENZE_KEY_KnobAround_KEY_TEL_PRESSED:
// 2814         m_BMW_CAN.uKeyKeepCnt++;
// 2815         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2816             //bounce
// 2817         {
// 2818             //process first pressed data
// 2819             LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 2820         }
// 2821         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2822             //keep
// 2823         {
// 2824             m_BMW_CAN.uKeyKeepCnt = 2;
// 2825             //process keep data
// 2826         }
// 2827         break;
// 2828     case BENZE_KEY_KnobAround_KEY_MAP_PRESSED:
// 2829         m_BMW_CAN.uKeyKeepCnt++;
// 2830         if (m_BMW_CAN.uKeyKeepCnt == 1)
// 2831             //bounce
// 2832         {
// 2833             //process first pressed data
// 2834             LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
// 2835         }
// 2836         else if (m_BMW_CAN.uKeyKeepCnt >= 10)
// 2837             //keep
// 2838         {
// 2839             m_BMW_CAN.uKeyKeepCnt = 2;
// 2840             //process keep data
// 2841         }
// 2842         break;
// 2843     
// 2844     /********************Process keep pressed**********************************/
// 2845         
// 2846     default:
// 2847         m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
// 2848         m_BMW_CAN.uKeyKeepCnt = 0;
// 2849         m_BMW_CAN.bKeyKeepOneTime = 0;
// 2850         break;
// 2851     }
// 2852 }
// 2853 void BWM_5S_CanBus_FetchSteerKeyInfo_Type3(CanRxMsg RxMessage)
// 2854 {
// 2855     static vu8 uPreAction = 0;
// 2856     static vu8 uPreVal = 0;
// 2857     
// 2858     if (!(RxMessage.StdId == BWM5S_CAN_STEER_KEY_STD__TYPE3_ID && RxMessage.DLC == 6))
// 2859     {
// 2860         return ;
// 2861     }
// 2862     //initial
// 2863     if(uPreAction==RxMessage.Data[2])//no action
// 2864     {
// 2865         return ;
// 2866     }  
// 2867     //
// 2868 
// 2869     if ((RxMessage.Data[3]>uPreVal)||(RxMessage.Data[3]==0x00&&uPreVal==0xFF))
// 2870         //add
// 2871     {
// 2872         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEINC_PRESSED);
// 2873     }
// 2874     else if ((RxMessage.Data[3] <uPreVal)||(RxMessage.Data[3]==0xFF&&uPreVal==0x00))
// 2875         //sub
// 2876     {
// 2877         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
// 2878     }
// 2879     
// 2880     uPreAction=RxMessage.Data[2];
// 2881     uPreVal=RxMessage.Data[3];
// 2882     
// 2883 }
// 2884 
// 2885 void BWM_5S_CanBus_FetchSteerKeyInfo_Type2(CanRxMsg RxMessage)
// 2886 {
// 2887     if (!(RxMessage.StdId == BWM5S_CAN_STEER_KEY_STD__TYPE2_ID && RxMessage.DLC == 2))
// 2888     {
// 2889         return ;
// 2890     }
// 2891 
// 2892     //initial
// 2893     
// 2894 
// 2895     if (RxMessage.Data[0] ==0x80)
// 2896         //tune up
// 2897     {
// 2898         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEINC_PRESSED);
// 2899     }
// 2900     else if (RxMessage.Data[0] ==0x7E)
// 2901         //tune dn
// 2902     {
// 2903         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
// 2904     }
// 2905     else if (RxMessage.Data[0] ==0x7F)
// 2906         //enter
// 2907     {
// 2908         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
// 2909     }
// 2910 
// 2911 }
// 2912 
// 2913 void BWM_5S_CanBus_FetchSteerKeyInfo_Type1(CanRxMsg RxMessage)
// 2914 {
// 2915 	static vu8 uCKeepFlag = 0;
// 2916 	static vu8 uRetKeepFlag = 0;
// 2917 	static vu16 wBounceCnt = 0;
// 2918 	BYTE i;
// 2919 
// 2920 	m_BMW_CAN.RxMessage.DLC = RxMessage.DLC;
// 2921 	if (!(RxMessage.StdId == BWM5S_CAN_STEER_KEY_STD__TYPE1_ID && RxMessage.DLC == 2))
// 2922 	{
// 2923 		return ;
// 2924 	}
// 2925 	for(i = 0; i < 2; i++)
// 2926 		m_BMW_CAN.RxMessage.Data[i] = RxMessage.Data[i];
// 2927 	//initial
// 2928 	m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
// 2929 	//
// 2930 	if (RxMessage.Data[1] & 0x10)//0x40
// 2931 		//mode,source
// 2932 	{
// 2933 		m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_MODE_PRESSED;
// 2934 	}
// 2935 	else if (RxMessage.Data[1] & 0x01)
// 2936 		//voice
// 2937 	{
// 2938 		m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED;
// 2939 	}
// 2940 	else if (RxMessage.Data[0] & 0x01)
// 2941 		//bt
// 2942 	{
// 2943 		m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_BT_PRESSED;
// 2944 	}
// 2945 	
// 2946 	else
// 2947 	{
// 2948 
// 2949 		//-------------------------------------------------------
// 2950 		wBounceCnt++;
// 2951 		if (wBounceCnt >= 2)
// 2952 		{
// 2953 			uCKeepFlag = 0;
// 2954 			uRetKeepFlag = 0;
// 2955 			m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
// 2956 			wBounceCnt = 0;
// 2957 		}
// 2958 		m_BMW_CAN.uKeyKeepCnt2 = 0;
// 2959 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
// 2960 
// 2961 	}
// 2962 
// 2963 
// 2964 	switch (m_BMW_CAN.uKeyID2)
// 2965 	{
// 2966 	case BENZE_KEY_ALL_BOUNCED:
// 2967 		uCKeepFlag = 0;
// 2968 		uRetKeepFlag = 0;
// 2969 		m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
// 2970 		wBounceCnt = 0;
// 2971 		m_BMW_CAN.uKeyKeepCnt2 = 0;
// 2972 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
// 2973 		break;
// 2974 	case BENZE_KEY_STEERING_RIGHT_KEY_MODE_PRESSED:
// 2975 		m_BMW_CAN.uKeyKeepCnt2++;
// 2976 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
// 2977 			//bounce
// 2978 		{
// 2979 			//process first pressed data
// 2980 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 2981 		}
// 2982 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
// 2983 			//keep
// 2984 		{
// 2985 			m_BMW_CAN.uKeyKeepCnt2 = 2;
// 2986 			//process keep data
// 2987 			
// 2988 		}
// 2989 		break;
// 2990 	
// 2991 
// 2992 	case BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED:
// 2993 		m_BMW_CAN.uKeyKeepCnt2++;
// 2994 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
// 2995 			//bounce
// 2996 		{
// 2997 			//process first pressed data
// 2998 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 2999 		}
// 3000 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
// 3001 			//keep
// 3002 		{
// 3003 			m_BMW_CAN.uKeyKeepCnt2 = 2;
// 3004 			//process keep data
// 3005 		}
// 3006 		break;
// 3007 	case BENZE_KEY_STEERING_RIGHT_KEY_BT_PRESSED:
// 3008 		m_BMW_CAN.uKeyKeepCnt2++;
// 3009 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
// 3010 			//bounce
// 3011 		{
// 3012 			//process first pressed data
// 3013 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 3014 		}
// 3015 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
// 3016 			//keep
// 3017 		{
// 3018 			m_BMW_CAN.uKeyKeepCnt2 = 2;
// 3019 			//process keep data
// 3020 		}
// 3021 		break;
// 3022 	
// 3023 	default:
// 3024 		m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
// 3025 		m_BMW_CAN.uKeyKeepCnt2 = 0;
// 3026 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
// 3027 		break;
// 3028 	}
// 3029 }
// 3030 
// 3031 /*
// 3032 ********************************************************
// 3033 方向盘转角
// 3034 ********************************************************
// 3035 */
// 3036 void BWM_5S_CanBus_FetchSteerAngleInfo(CanRxMsg RxMessage)
// 3037 {
// 3038 
// 3039    {
// 3040 	     if (RxMessage.StdId == BWM5S_CAN_STEERINGANGLE_STD_ID && RxMessage.DLC == 8)
// 3041 	    {
// 3042 	        m_BMW_CAN.benze_Steering_angle =(((RxMessage.Data[1] & 0xFF) << 8) | RxMessage.Data[0]); //方向盘角度信息
// 3043 	    }
// 3044    }
// 3045 }
// 3046 /*
// 3047 ***********************************************************
// 3048 *handle the CMD from CAN BUS
// 3049 *
// 3050 ***********************************************************
// 3051 */
// 3052 
// 3053 void BWM_5S_CanBus_FetchCmdTask(void)
// 3054 {
// 3055     BYTE action = 0;
// 3056 
// 3057     
// 3058     if (!m_BMW_CAN.wLoopTimer)
// 3059     {
// 3060         switch (LF_CanBus_FetchCmd())
// 3061         {
// 3062         case BENZE_CMD_KNOB_LEFT_PRESSED:
// 3063             action |= JOY_SHIFT_LEFT;
// 3064             //IPC_SendKeyMessage_MouseAction(action);
// 3065           break;
// 3066         case BENZE_CMD_KNOB_RIGHT_PRESSED:
// 3067             action |= JOY_SHIFT_RIGHT;
// 3068            // IPC_SendKeyMessage_MouseAction(action);
// 3069           break;
// 3070         case BENZE_CMD_KNOB_TUNEDEC_PRESSED:
// 3071         
// 3072   
// 3073             action |= JOY_SHIFT_UP;
// 3074            // IPC_SendKeyMessage_MouseAction(action);
// 3075 			//IPC_SendKeyMessage_ShortCuts(0x01,MSG_ACTION_PRESSED);
// 3076             //IPC_SendKeyMessage_ShortCuts(CMD_KEY_LEFT_UP,MSG_ACTION_PRESSED);
// 3077             break;
// 3078         case BENZE_CMD_KNOB_TUNEINC_PRESSED:
// 3079         
// 3080        
// 3081             action |= JOY_SHIFT_DN;
// 3082            // IPC_SendKeyMessage_MouseAction(action);
// 3083 			//IPC_SendKeyMessage_ShortCuts(0x02,MSG_ACTION_PRESSED);
// 3084 			//IPC_SendKeyMessage_ShortCuts(CMD_KEY_LEFT_DN,MSG_ACTION_PRESSED);
// 3085 
// 3086             break;
// 3087         case BENZE_CMD_KNOB_UP_PRESSED:
// 3088             action |= JOY_SHIFT_UP;
// 3089             //IPC_SendKeyMessage_MouseAction(action);
// 3090 			//IPC_SendKeyMessage_ShortCuts(CMD_KEY_LEFT_UP,MSG_ACTION_PRESSED);
// 3091             break;
// 3092             
// 3093         case BENZE_CMD_KNOB_DN_PRESSED:
// 3094             action |= JOY_SHIFT_DN;
// 3095            // IPC_SendKeyMessage_MouseAction(action);
// 3096 			//IPC_SendKeyMessage_ShortCuts(CMD_KEY_LEFT_DN,MSG_ACTION_PRESSED);
// 3097             
// 3098             break;
// 3099         
// 3100         case BENZE_CMD_KNOB_ENTER_PRESSED:
// 3101 
// 3102           //if(g_stuSYSINFO.uOSDMainMode!=MAIN_OSD_MODE_IN_CAR_AUX)//Miller.Tao20150123
// 3103            // IPC_SendKeyMessage_ENTER(MSG_ACTION_BOUNCE);
// 3104 			//IPC_SendKeyMessage_ShortCuts(0x15,MSG_ACTION_PRESSED);
// 3105             
// 3106             break;
// 3107         case BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED:
// 3108         
// 3109             //if(g_stuSYSINFO.sys_main.uMainMode!=SYSTEM_MODE_IN_CAR_MEDIA)//miller.tao20150706
// 3110              //IPC_SendKeyMessage_ShortCuts(0x09,MSG_ACTION_BOUNCE);
// 3111 			//IPC_SendKeyMessage_Media(MSG_ACTION_BOUNCE);
// 3112             break;
// 3113         case BENZE_CMD_STEERING_RIGHT_KEY_RET_KEEP:
// 3114             //IPC_SendKeyMessage_Menu(MSG_ACTION_PRESSED);
// 3115             //IPC_SendKeyMessage_Media_Sw(MSG_ACTION_PRESSED);
// 3116             break;
// 3117         case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED:
// 3118            // IPC_SendKeyMessage_NAVI(MSG_ACTION_PRESSED);
// 3119 			//IPC_SendKeyMessage_ShortCuts(0x11,MSG_ACTION_PRESSED);
// 3120             break;
// 3121         
// 3122         case BENZE_CMD_MENU_PRESSED:
// 3123            //if(g_stuSYSINFO.uOSDMainMode==MAIN_OSD_MODE_IN_DISAPP)//solve small screen can not show menu
// 3124            {
// 3125             //IPC_SendKeyMessage_Menu(MSG_ACTION_PRESSED);
// 3126 			//IPC_SendKeyMessage_ShortCuts(0x10,MSG_ACTION_PRESSED);
// 3127            }
// 3128            
// 3129             break;
// 3130 
// 3131         default:
// 3132             break;
// 3133         }
// 3134         m_BMW_CAN.wLoopTimer = 10;
// 3135     }
// 3136 }
// 3137 
// 3138 //工作信息
// 3139 void BWM_5S_CanBus_work_data_analytic(CanRxMsg RxMessage)
// 3140 {
// 3141     static u8 uPreMediaStatus, uPrePreMediaStatus;
// 3142     static u8 uPreAirStatus, uPrePreAirStatus;
// 3143     uPreMediaStatus = uPreMediaStatus;
// 3144     uPrePreMediaStatus = uPrePreMediaStatus;
// 3145     uPreAirStatus = uPreAirStatus;
// 3146     uPrePreAirStatus = uPrePreAirStatus;
// 3147     if (RxMessage.StdId == BWM5S_CAN_POWER_STD_ID && RxMessage.DLC == 8) //ACC INFO
// 3148     {
// 3149             #if 0 //Miller.Tao20141014
// 3150 			if(RxMessage.Data[1]&0x01)
// 3151             {
// 3152                //off
// 3153                
// 3154                #if 0 //Miller.tao
// 3155 			   m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
// 3156 			   m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_ON;
// 3157 			   m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3158 			   g_stuSYSINFO.wPowerOnByCanTimer=2000;
// 3159 			   #else
// 3160 			   
// 3161                #endif
// 3162 			}
// 3163 			else 
// 3164 			#endif
// 3165 			{
// 3166 			    //on
// 3167 			    #if 0 //Miller.tao
// 3168                m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
// 3169                 m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
// 3170                 m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3171                 g_stuSYSINFO.wPowerOnByCanTimer=2000;//2000
// 3172 				#else
// 3173 				
// 3174 				#endif
// 3175 			}
// 3176             
// 3177 
// 3178     }
// 3179 
// 3180 	if (RxMessage.StdId == BWM5S_CAN_POWER2_STD_ID && RxMessage.DLC == 8) //ACC INFO
// 3181     {
// 3182             #if 0 //Miller.Tao20141014
// 3183 			if(RxMessage.Data[1]&0x01)
// 3184             {
// 3185                //off
// 3186                
// 3187                #if 0 //Miller.tao
// 3188 			   m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
// 3189 			   m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_ON;
// 3190 			   m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3191 			   g_stuSYSINFO.wPowerOnByCanTimer=2000;
// 3192 			   #else
// 3193 			   
// 3194                #endif
// 3195 			}
// 3196 			else 
// 3197 			#endif
// 3198 			{
// 3199 			    //on
// 3200 			    #if 0 //Miller.tao,总开关
// 3201                 
// 3202                 m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;//车上电
// 3203                 //m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3204                 g_stuSYSINFO.wPowerOnByCanTimerAux=2000;
// 3205 				#else
// 3206 				
// 3207 				#endif
// 3208 			}
// 3209             
// 3210 
// 3211     }
// 3212 
// 3213 #if 0
// 3214 	if(RxMessage.StdId == BWM5S_CAN_POWER3_STD_ID && RxMessage.DLC == 2)
// 3215 	{
// 3216        if(RxMessage.Data[0]&0x04)
// 3217        	{
// 3218            if(m_BMW_CAN.benze_Pwr_acc_Aux == SYSTEM_POWER_ON)//acc on
// 3219            {
// 3220                //m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
// 3221 			   m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_OFF;
// 3222 		   }
// 3223 		   else if(m_BMW_CAN.benze_Pwr_acc_Aux == SYSTEM_POWER_OFF)
// 3224 		   {
// 3225                //m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
// 3226 			    m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_ON;
// 3227 		   }
// 3228 		   gSYSOpenMode = 1;
// 3229 	    }
// 3230 #endif
// 3231 	// if(RxMessage.StdId == BWM5S_CAN_POWER4_STD_ID && RxMessage.DLC == 8)
// 3232 	 if((RxMessage.StdId == BWM5S_CAN_POWER4_STD_ID)&&( RxMessage.DLC == 6))
// 3233 	 {
// 3234         #if 1 //millertao20150317
// 3235 		if(RxMessage.Data[0]==0x0C)
// 3236 			;//m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3237 		//else if(RxMessage.Data[2]==0x01)
// 3238 		//	m_BMW_CAN.AudioPwr =SYSTEM_POWER_OFF;
// 3239 
// 3240 		#endif
// 3241 
// 3242 	    #if 0 //millertao20150317
// 3243 		if(RxMessage.Data[0]==0x27)
// 3244 			m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3245 		else if(RxMessage.Data[0]==0x08)
// 3246 			m_BMW_CAN.AudioPwr =SYSTEM_POWER_OFF;
// 3247 
// 3248 		#endif
// 3249 	#if 0
// 3250 		 m_BMW_CAN.AudioPwr=SYSTEM_POWER_ON;
// 3251 			if(m_BMW_CAN.benze_Pwr_acc_Aux == SYSTEM_POWER_ON)//acc on
// 3252 			{
// 3253 				//m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
// 3254 				m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_OFF;
// 3255 			}
// 3256 			else if(m_BMW_CAN.benze_Pwr_acc_Aux == SYSTEM_POWER_OFF)
// 3257 			{
// 3258 				//m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
// 3259 				 m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_ON;
// 3260 			}
// 3261 			
// 3262 		 m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;//车上电
// 3263 		 m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3264 	#endif
// 3265 	}
// 3266 	// else
// 3267 	 if((RxMessage.StdId == BWM5S_CAN_POWER3_STD_ID) && (RxMessage.DLC == 2))
// 3268 	 {
// 3269          if(RxMessage.Data[0]==0x04)
// 3270 	    {
// 3271 			 //if(m_BMW_CAN.AudioPwr == SYSTEM_POWER_ON)
// 3272 			 //	m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
// 3273 			// else
// 3274 			 //	m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3275 			 	
// 3276          }
// 3277 	 }
// 3278 
// 3279      if (RxMessage.StdId == BMW5S_CAN_CarDoor_STD_ID && RxMessage.DLC == 8) //radar INFO
// 3280     {
// 3281             #if 0
// 3282             m_RADAR.uRear_Left    =(RxMessage.Data[4]>>4)&0x0F;
// 3283             m_RADAR.uRear_MidLeft =(RxMessage.Data[3]>>4)&0x0F;
// 3284             m_RADAR.uRear_MidRight=(RxMessage.Data[2]>>4)&0x0F;
// 3285             m_RADAR.uRear_Right   =(RxMessage.Data[1]>>4)&0x0F;
// 3286 			#else
// 3287 			m_CarDoorInfo.uFront_Left    =(RxMessage.Data[2]&0x01);
// 3288             m_CarDoorInfo.uFront_Right =((RxMessage.Data[2])&0x10)>>4;
// 3289             m_CarDoorInfo.uRear_Left=(RxMessage.Data[2]&0x04)>>2;
// 3290             m_CarDoorInfo.uRear_Right   =(RxMessage.Data[2]&0x40)>>6;
// 3291 			m_CarDoorInfo.rear =(RxMessage.Data[4]);
// 3292 			m_CarDoorInfo.SendFlag = 1;
// 3293             #endif
// 3294             
// 3295 
// 3296     }
// 3297 
// 3298 	 if (RxMessage.StdId == BMW5S_CAN_CarSpeed_STD_ID && RxMessage.DLC == 7) //radar INFO
// 3299 	 {
// 3300 
// 3301          m_CarSpeedInfo.Hi_Speed = (RxMessage.Data[3]&0x0F);
// 3302 		 m_CarSpeedInfo.Lo_Speed = RxMessage.Data[2];
// 3303 		 m_CarSpeedInfo.SendFlag = 1;
// 3304 	 }
// 3305 
// 3306 
// 3307 	if (RxMessage.StdId == BMW5S_CAN_CarMiles_STD_ID && RxMessage.DLC == 8) //radar INFO
// 3308 	 {
// 3309            m_CarMilesInfo.Mile1Byte = RxMessage.Data[0];
// 3310 		   m_CarMilesInfo.Mile2Byte = RxMessage.Data[1];
// 3311 		   m_CarMilesInfo.Mile3Byte = 0;
// 3312 		   m_CarMilesInfo.Mile4Byte = 0;
// 3313 		   m_CarMilesInfo.SendFlag = 1;
// 3314 		   
// 3315 	 }
// 3316 	
// 3317     if (RxMessage.StdId == BWM5S_CAN_RADAR_VAL_STD_ID && RxMessage.DLC == 6) //radar INFO
// 3318     {
// 3319             #if 0
// 3320             m_RADAR.uRear_Left    =(RxMessage.Data[4]>>4)&0x0F;
// 3321             m_RADAR.uRear_MidLeft =(RxMessage.Data[3]>>4)&0x0F;
// 3322             m_RADAR.uRear_MidRight=(RxMessage.Data[2]>>4)&0x0F;
// 3323             m_RADAR.uRear_Right   =(RxMessage.Data[1]>>4)&0x0F;
// 3324 			#else
// 3325 			m_RADAR.uRear_Left    =(RxMessage.Data[4]>>4)&0x0F;
// 3326             m_RADAR.uRear_MidLeft =(RxMessage.Data[3]>>4)&0x0F;
// 3327             m_RADAR.uRear_MidRight=(RxMessage.Data[2]>>4)&0x0F;
// 3328             m_RADAR.uRear_Right   =(RxMessage.Data[1]>>4)&0x0F;
// 3329             #endif
// 3330             
// 3331 
// 3332     }
// 3333 
// 3334    if (RxMessage.StdId == BWM5S_CAN_RADAR_VAL_Front_STD_ID && RxMessage.DLC == 6) //radar INFO
// 3335     {
// 3336             #if 0
// 3337             m_RADAR.uRear_Left    =(RxMessage.Data[4]>>4)&0x0F;
// 3338             m_RADAR.uRear_MidLeft =(RxMessage.Data[3]>>4)&0x0F;
// 3339             m_RADAR.uRear_MidRight=(RxMessage.Data[2]>>4)&0x0F;
// 3340             m_RADAR.uRear_Right   =(RxMessage.Data[1]>>4)&0x0F;
// 3341 			#else
// 3342 			m_RADAR.uFront_Left    =(RxMessage.Data[4]>>4)&0x0F;
// 3343             m_RADAR.uFront_MidLeft =(RxMessage.Data[3]>>4)&0x0F;
// 3344             m_RADAR.uFront_MidRight=(RxMessage.Data[2]>>4)&0x0F;
// 3345             m_RADAR.uFront_Right   =(RxMessage.Data[1]>>4)&0x0F;
// 3346             #endif
// 3347             
// 3348 
// 3349     }
// 3350 
// 3351 	#if 1//Miller.Tao2014-09-10
// 3352     if (RxMessage.StdId == BWM5S_CAN_RADAR_DISP_STD_ID && RxMessage.DLC == 2)
// 3353     {
// 3354         //ID:001
// 3355         //DCL:
// 3356         m_BMW_CAN.RxMessage.Data[0]=RxMessage.Data[0];
// 3357         m_BMW_CAN.RxMessage.Data[1]=RxMessage.Data[1];
// 3358         m_BMW_CAN.RxMessage.Data[2]=RxMessage.Data[2];
// 3359         m_BMW_CAN.RxMessage.Data[3]=RxMessage.Data[3];
// 3360         m_BMW_CAN.RxMessage.Data[4]=RxMessage.Data[4];
// 3361         m_BMW_CAN.RxMessage.Data[5]=RxMessage.Data[5];
// 3362         m_BMW_CAN.RxMessage.Data[6]=RxMessage.Data[6];
// 3363         m_BMW_CAN.RxMessage.Data[7]=RxMessage.Data[7];
// 3364         
// 3365         if (RxMessage.Data[0] & 0x02)
// 3366         {
// 3367             #if !COMPILE_BACK_BY_STALL
// 3368             //g_stuBACKCNTR.u8CurState = CAM_OFF;
// 3369             //g_stuPARKCNTR.u8CurState = PARK_OFF;
// 3370             //POWER_RearVideoOff();
// 3371             #endif
// 3372             m_RADAR.fDisp = 0;
// 3373 
// 3374         }
// 3375         else
// 3376         {
// 3377           #if !COMPILE_BACK_BY_STALL
// 3378             //g_stuBACKCNTR.u8CurState = CAM_ON;
// 3379            // g_stuPARKCNTR.u8CurState = PARK_OFF;
// 3380            // POWER_RearVideoOn();
// 3381           #endif
// 3382             m_RADAR.fDisp = 1;
// 3383 
// 3384         }
// 3385 
// 3386 
// 3387 
// 3388     }
// 3389     #endif
// 3390 #if !COMPILE_SYS_TIMER_BY_GPS
// 3391     if (RxMessage.StdId == BMW5S_CAN_TIMER_STD_ID)
// 3392     {
// 3393         //ID:39F
// 3394         //DCL:
// 3395         m_BMW_CAN.Hour_data = RxMessage.Data[0]; //hour
// 3396         m_BMW_CAN.Minute_data = RxMessage.Data[1]; //时间数据
// 3397         m_BMW_CAN.Sec_data = RxMessage.Data[2]; //时间数据
// 3398 
// 3399     }
// 3400 #endif
// 3401 
// 3402     if (RxMessage.StdId == BMW5S_CAN_CarPhone_STD_ID&& RxMessage.DLC == 8)
// 3403     {
// 3404 
// 3405 		  
// 3406 }
// 3407 
// 3408 
// 3409 
// 3410 
// 3411 }
// 3412 void BMW_5S_Power_On(CanRxMsg RxMessage)
// 3413 {
// 3414 	if (RxMessage.StdId == BWM5S_CAN_POWER_STD_ID && RxMessage.DLC == 8)
// 3415 	{
// 3416 		m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
// 3417 		//m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3418 		//m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
// 3419 
// 3420 	}
// 3421 	else if (RxMessage.StdId == BWM5S_CAN_POWER2_STD_ID && RxMessage.DLC == 8) //ACC INFO
// 3422 	
// 3423 	{
// 3424 		m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
// 3425 		//m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 3426 		m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
// 3427 		
// 3428 	}
// 3429 }
// 3430 #endif
// 3431 
// 3432 #if LF_CAN_TYPE == Benci_newC

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function Benci_newC_CanBus_Config
        THUMB
// 3433 void Benci_newC_CanBus_Config(void)
// 3434 	{
Benci_newC_CanBus_Config:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+28
          CFI CFA R13+32
// 3435 	
// 3436 		CAN_InitTypeDef CAN_InitStructure;
// 3437 		CAN_FilterInitTypeDef CAN_FilterInitStructure;
// 3438 		/* CAN register init */
// 3439 		// CAN_DeInit();
// 3440 		/* CAN1 and CAN2 register init */
// 3441 		CAN_DeInit(CAN1);
        LDR.W    R0,??DataTable17_6  ;; 0x40006400
          CFI FunCall CAN_DeInit
        BL       CAN_DeInit
// 3442 		CAN_DeInit(CAN2);
        LDR.W    R0,??DataTable17_7  ;; 0x40006800
          CFI FunCall CAN_DeInit
        BL       CAN_DeInit
// 3443 	
// 3444 	
// 3445 		/* Struct init*/
// 3446 		CAN_StructInit(&CAN_InitStructure);
        ADD      R0,SP,#+0
          CFI FunCall CAN_StructInit
        BL       CAN_StructInit
// 3447 	
// 3448 		
// 3449 		/*************************************************************
// 3450 		
// 3451 		主机CAN配置
// 3452 		
// 3453 		*************************************************************/
// 3454 	
// 3455 	
// 3456 		/* CAN cell init */
// 3457 		CAN_InitStructure.CAN_TTCM = DISABLE; //禁止时间触发通信模式
        MOVS     R0,#+0
        STRB     R0,[SP, #+6]
// 3458 		CAN_InitStructure.CAN_ABOM = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+7]
// 3459 		CAN_InitStructure.CAN_AWUM = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
// 3460 		CAN_InitStructure.CAN_NART = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
// 3461 		//CAN报文只被发送1次，不管发送的结果如何（成功、出错或仲裁丢失）
// 3462 		CAN_InitStructure.CAN_RFLM = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
// 3463 		CAN_InitStructure.CAN_TXFP = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+11]
// 3464 		CAN_InitStructure.CAN_Mode = CAN_Mode_Silent;
        MOVS     R0,#+2
        STRB     R0,[SP, #+2]
// 3465 	
// 3466 		CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
        MOVS     R0,#+0
        STRB     R0,[SP, #+3]
// 3467 		CAN_InitStructure.CAN_BS1 = CAN_BS1_15tq; //1--16
        MOVS     R0,#+14
        STRB     R0,[SP, #+4]
// 3468 		CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
// 3469 		CAN_InitStructure.CAN_Prescaler = 4;
        MOVS     R0,#+4
        STRH     R0,[SP, #+0]
// 3470 		////(pclk1/((1+8+7)*16)) = 32Mhz/16/16 = 125Kbits
// 3471 		//CAN_Init(&CAN_InitStructure);
// 3472 	
// 3473 		/*Initializes the CAN1	and CAN2 */
// 3474 		CAN_Init(CAN1, &CAN_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable17_6  ;; 0x40006400
          CFI FunCall CAN_Init
        BL       CAN_Init
// 3475 	
// 3476 	
// 3477 		/* CAN cell init */
// 3478 		CAN_InitStructure.CAN_TTCM = DISABLE; //禁止时间触发通信模式
        MOVS     R0,#+0
        STRB     R0,[SP, #+6]
// 3479 		CAN_InitStructure.CAN_ABOM = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+7]
// 3480 		CAN_InitStructure.CAN_AWUM = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
// 3481 		CAN_InitStructure.CAN_NART = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
// 3482 		//CAN报文只被发送1次，不管发送的结果如何（成功、出错或仲裁丢失）
// 3483 		CAN_InitStructure.CAN_RFLM = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
// 3484 		CAN_InitStructure.CAN_TXFP = DISABLE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+11]
// 3485 		CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
// 3486 	
// 3487 		CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
        MOVS     R0,#+0
        STRB     R0,[SP, #+3]
// 3488 		CAN_InitStructure.CAN_BS1 = CAN_BS1_15tq; //1--16
        MOVS     R0,#+14
        STRB     R0,[SP, #+4]
// 3489 		CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8
        MOVS     R0,#+1
        STRB     R0,[SP, #+5]
// 3490 		CAN_InitStructure.CAN_Prescaler = 8;
        MOVS     R0,#+8
        STRH     R0,[SP, #+0]
// 3491 		////(pclk1/((1+8+7)*16)) = 32Mhz/16/16 = 125Kbits
// 3492 		CAN_Init(CAN2, &CAN_InitStructure);
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable17_7  ;; 0x40006800
          CFI FunCall CAN_Init
        BL       CAN_Init
// 3493 
// 3494 
// 3495 #if 1
// 3496 		CAN_FilterInitStructure.CAN_FilterNumber = 0; //选择过滤器7
        MOVS     R0,#+0
        STRB     R0,[SP, #+22]
// 3497 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
        MOVS     R0,#+0
        STRB     R0,[SP, #+23]
// 3498 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
        MOVS     R0,#+1
        STRB     R0,[SP, #+24]
// 3499 		CAN_FilterInitStructure.CAN_FilterIdHigh =0xffff<< 5;
        MOVW     R0,#+65504
        STRH     R0,[SP, #+12]
// 3500 		CAN_FilterInitStructure.CAN_FilterIdLow =CAN_ID_STD; // 0xffff;//
        MOVS     R0,#+0
        STRH     R0,[SP, #+14]
// 3501 	
// 3502 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
        MOVS     R0,#+0
        STRH     R0,[SP, #+20]
// 3503 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
        MOVS     R0,#+1
        STRB     R0,[SP, #+25]
// 3504 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
        ADD      R0,SP,#+12
          CFI FunCall CAN_FilterInit
        BL       CAN_FilterInit
// 3505 		
// 3506 
// 3507 #if 0
// 3508 		
// 3509 		CAN_FilterInitStructure.CAN_FilterNumber = 14; //选择过滤器7
// 3510 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
// 3511 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3512 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_POWER_ON_STD_ID << 5;
// 3513 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3514 	
// 3515 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3516 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3517 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3518 		
// 3519 		CAN_FilterInitStructure.CAN_FilterNumber = 16; //选择过滤器7
// 3520 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
// 3521 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3522 		CAN_FilterInitStructure.CAN_FilterIdHigh = 0 << 5;
// 3523 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3524 	
// 3525 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3526 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3527 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数		
// 3528 		#endif
// 3529 #else		
// 3530 		CAN_FilterInitStructure.CAN_FilterNumber = 1; //选择过滤器7
// 3531 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3532 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3533 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_back_STD_ID << 5;
// 3534 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3535 	
// 3536 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3537 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3538 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3539 	
// 3540 		
// 3541 		CAN_FilterInitStructure.CAN_FilterNumber = 2; //选择过滤器7
// 3542 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3543 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3544 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_RADA_STD_ID << 5;
// 3545 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3546 	
// 3547 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3548 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3549 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3550 		
// 3551 		CAN_FilterInitStructure.CAN_FilterNumber = 3; //选择过滤器7
// 3552 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3553 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3554 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_DOOR_F_L_STD_ID << 5;
// 3555 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3556 	
// 3557 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3558 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3559 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3560 		
// 3561 		CAN_FilterInitStructure.CAN_FilterNumber = 4; //选择过滤器7
// 3562 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3563 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3564 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_DOOR_F_R_STD_ID << 5;
// 3565 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3566 	
// 3567 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3568 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3569 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3570 		
// 3571 		CAN_FilterInitStructure.CAN_FilterNumber = 5; //选择过滤器7
// 3572 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3573 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3574 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_DOOR_REAR_LR_STD_ID << 5;
// 3575 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3576 	
// 3577 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3578 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3579 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3580 		
// 3581 		CAN_FilterInitStructure.CAN_FilterNumber = 6; //选择过滤器7
// 3582 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3583 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3584 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_STEERINGANGLE_STD_ID << 5;
// 3585 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3586 	
// 3587 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3588 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3589 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3590 		
// 3591 		CAN_FilterInitStructure.CAN_FilterNumber = 7; //选择过滤器7
// 3592 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3593 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3594 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_air_wind_STD_ID << 5;
// 3595 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3596 	
// 3597 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3598 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3599 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3600 #if 0
// 3601 	
// 3602 		CAN_FilterInitStructure.CAN_FilterNumber = 8; //选择过滤器7
// 3603 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3604 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3605 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_car_touch1_STD_ID << 5;
// 3606 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3607 	
// 3608 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3609 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3610 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3611 		
// 3612 		CAN_FilterInitStructure.CAN_FilterNumber = 9; //选择过滤器7
// 3613 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3614 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3615 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_STALLS_STD_ID << 5;
// 3616 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3617 	
// 3618 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3619 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3620 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3621 		
// 3622 		CAN_FilterInitStructure.CAN_FilterNumber = 10; //选择过滤器7
// 3623 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3624 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3625 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_MUTE_STD_ID << 5;
// 3626 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3627 	
// 3628 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3629 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3630 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3631 		
// 3632 		CAN_FilterInitStructure.CAN_FilterNumber = 11; //选择过滤器7
// 3633 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3634 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3635 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_POWER_STD_ID << 5;
// 3636 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3637 	
// 3638 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3639 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3640 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3641 		
// 3642 		CAN_FilterInitStructure.CAN_FilterNumber = 12; //选择过滤器7
// 3643 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3644 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3645 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_MEDIA_SYSTEM_STD_ID << 5;
// 3646 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3647 	
// 3648 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3649 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3650 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3651 	#endif
// 3652 		/*************************************************************
// 3653 		
// 3654 		原车屏板CAN配置
// 3655 		
// 3656 		*************************************************************/
// 3657 		CAN_FilterInitStructure.CAN_FilterNumber = 14; //选择过滤器7
// 3658 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3659 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3660 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_POWER_ON_STD_ID << 5;
// 3661 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3662 	
// 3663 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3664 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3665 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3666 	
// 3667 		CAN_FilterInitStructure.CAN_FilterNumber = 15; //选择过滤器7
// 3668 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3669 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3670 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_mid_control_KEY_STD_ID << 5;
// 3671 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3672 	
// 3673 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3674 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3675 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3676 		
// 3677 		CAN_FilterInitStructure.CAN_FilterNumber = 16; //选择过滤器7
// 3678 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3679 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3680 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_mid_control_turn_KEY1_STD_ID << 5;
// 3681 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3682 	
// 3683 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3684 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3685 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3686 	
// 3687 		CAN_FilterInitStructure.CAN_FilterNumber = 17; //选择过滤器7
// 3688 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3689 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3690 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_mid_control_turn_KEY2_STD_ID << 5;
// 3691 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3692 	
// 3693 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3694 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3695 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3696 	
// 3697 	
// 3698 		CAN_FilterInitStructure.CAN_FilterNumber = 18; //选择过滤器7
// 3699 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3700 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3701 		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_POWER_STD_ID << 5;
// 3702 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3703 	
// 3704 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3705 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3706 		CAN_FilterInit(&CAN_FilterInitStructure);
// 3707 
// 3708 
// 3709 		CAN_FilterInitStructure.CAN_FilterNumber = 19; //选择过滤器7
// 3710 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3711 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3712 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_light_mode_STD_ID << 5;
// 3713 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3714 	
// 3715 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3716 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3717 		CAN_FilterInit(&CAN_FilterInitStructure);	
// 3718 
// 3719 		
// 3720 		CAN_FilterInitStructure.CAN_FilterNumber = 20; //选择过滤器7
// 3721 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3722 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3723 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_car_touch1_STD_ID << 5;
// 3724 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3725 	
// 3726 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3727 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3728 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3729 #if 1
// 3730 		CAN_FilterInitStructure.CAN_FilterNumber = 21; //选择过滤器7
// 3731 		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
// 3732 		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
// 3733 		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_car_TFT_ONOFF_STD_ID << 5;
// 3734 		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
// 3735 	
// 3736 		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
// 3737 		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
// 3738 		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
// 3739 
// 3740 #endif
// 3741 		
// 3742 #endif
// 3743 		CAN_SlaveStartBank(0);//Miller.Tao
        MOVS     R0,#+0
          CFI FunCall CAN_SlaveStartBank
        BL       CAN_SlaveStartBank
// 3744 		//-------------------------------------------------------------
// 3745 		/* CAN FIFO0 message pending interrupt enable */
// 3746 		CAN_ITConfig(CAN1, CAN_IT_FMP0| CAN_IT_FF0, ENABLE);
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.W    R0,??DataTable17_6  ;; 0x40006400
          CFI FunCall CAN_ITConfig
        BL       CAN_ITConfig
// 3747 		/* CAN FIFO0 message pending interrupt enable */
// 3748 		CAN_ITConfig(CAN2, CAN_IT_FMP0| CAN_IT_FF0, ENABLE);
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.W    R0,??DataTable17_7  ;; 0x40006800
          CFI FunCall CAN_ITConfig
        BL       CAN_ITConfig
// 3749 	}
        ADD      SP,SP,#+28
          CFI CFA R13+4
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock18
// 3750 
// 3751 
// 3752 /*
// 3753 *********************************************************
// 3754 *fun:void BWM_X1_Can_FetchStallsInfo(CanRxMsg RxMessage)
// 3755 *description:处理档位信息
// 3756 *
// 3757 *
// 3758 *Author:Miller.Tao,2014-09-10
// 3759 *
// 3760 *********************************************************
// 3761 */
// 3762 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function Benci_newC_Can_FetchStallsInfo
          CFI NoCalls
        THUMB
// 3763 void Benci_newC_Can_FetchStallsInfo(CanRxMsg RxMessage)
// 3764 {
Benci_newC_Can_FetchStallsInfo:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 3765 		if (!((RxMessage.StdId == Benci_newC_CAN_back_STD_ID||RxMessage.StdId ==Benci_newC_CAN_back1_STD_ID) && RxMessage.DLC == 8))
        LDR      R0,[SP, #+0]
        MOVW     R1,#+323
        CMP      R0,R1
        BEQ.N    ??Benci_newC_Can_FetchStallsInfo_0
        LDR      R0,[SP, #+0]
        MOVW     R1,#+615
        CMP      R0,R1
        BNE.N    ??Benci_newC_Can_FetchStallsInfo_1
??Benci_newC_Can_FetchStallsInfo_0:
        LDRB     R0,[SP, #+10]
        CMP      R0,#+8
        BEQ.N    ??Benci_newC_Can_FetchStallsInfo_2
// 3766 		{
// 3767 			return ;
??Benci_newC_Can_FetchStallsInfo_1:
        B.N      ??Benci_newC_Can_FetchStallsInfo_3
// 3768 		}
// 3769 		m_RADAR.fDisp_on_p=0;
??Benci_newC_Can_FetchStallsInfo_2:
        LDR.W    R0,??DataTable17_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
// 3770 		
// 3771 		if(RxMessage.StdId == Benci_newC_CAN_back_STD_ID)
        LDR      R0,[SP, #+0]
        MOVW     R1,#+323
        CMP      R0,R1
        BNE.N    ??Benci_newC_Can_FetchStallsInfo_4
// 3772 			{
// 3773 		if (RxMessage.Data[2]  == 0x52)
        LDRB     R0,[SP, #+13]
        CMP      R0,#+82
        BNE.N    ??Benci_newC_Can_FetchStallsInfo_5
// 3774 			{//back
// 3775 	// #if COMPILE_BACK_BY_STALL
// 3776 			 
// 3777 			 //if(Sys.FS_select.cam_type_onoff_id!=3)
// 3778 				 {
// 3779 			// g_stuBACKCNTR.u8CurState = CAM_ON;
// 3780 			// g_stuPARKCNTR.u8CurState = PARK_ON;
// 3781 			 
// 3782 			Sys.u8can_back_status=CAM_ON_from_can;
        LDR.W    R0,??DataTable17_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
// 3783 			 //POWER_RearVideoOn();
// 3784 			 //m_RADAR.fDisp_statu=0;
// 3785 				 }
// 3786 			 /*
// 3787 				   if(g_stuSYSINFO.uBootFinished)
// 3788 				  {
// 3789 			
// 3790 					   McuSetNaviMuteOn();
// 3791 				  }
// 3792 				  */
// 3793 			 
// 3794 			 Sys.wRearOnByCanTimer=2000;
        LDR.W    R0,??DataTable17_9
        MOV      R1,#+2000
        STR      R1,[R0, #+64]
        B.N      ??Benci_newC_Can_FetchStallsInfo_6
// 3795 	 // #endif
// 3796 	
// 3797 			}
// 3798 			else //if(RxMessage.Data[2]  == 0x50)
// 3799 			{
// 3800 	// #if COMPILE_BACK_BY_STALL
// 3801 				// if(RxMessage.Data[2]  == 0x50)
// 3802 				 //	m_RADAR.fDisp_on_p=1;
// 3803 				// if(Sys.FS_select.cam_type_onoff_id!=3)
// 3804 					 {
// 3805 				// g_stuBACKCNTR.u8CurState = CAM_OFF;
// 3806 				// Sys.u8CurState = PARK_OFF;
// 3807 				 Sys.u8back_exit_auto=0;
??Benci_newC_Can_FetchStallsInfo_5:
        LDR.W    R0,??DataTable17_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
// 3808 				 Sys.u8can_back_status=CAM_off_id;
        LDR.W    R0,??DataTable17_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
        B.N      ??Benci_newC_Can_FetchStallsInfo_6
// 3809 				// POWER_RearVideoOff();
// 3810 					 }
// 3811 				 /*
// 3812 					  if(g_stuSYSINFO.uBootFinished)
// 3813 					 {
// 3814 						  McuSetRearOutAudioMuteOff();
// 3815 					 }
// 3816 					  */
// 3817 	// #endif
// 3818 			}
// 3819 			}
// 3820 		else if((RxMessage.StdId == Benci_newC_CAN_back1_STD_ID)&&(Sys.FS_select.car_type_onoff_id==1))
??Benci_newC_Can_FetchStallsInfo_4:
        LDR      R0,[SP, #+0]
        MOVW     R1,#+615
        CMP      R0,R1
        BNE.N    ??Benci_newC_Can_FetchStallsInfo_6
        LDR.W    R0,??DataTable17_9
        LDRB     R0,[R0, #+29]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_Can_FetchStallsInfo_6
// 3821 			{
// 3822 				if (RxMessage.Data[0]  == 0x90||RxMessage.Data[0]  == 0x9b)
        LDRB     R0,[SP, #+11]
        CMP      R0,#+144
        BEQ.N    ??Benci_newC_Can_FetchStallsInfo_7
        LDRB     R0,[SP, #+11]
        CMP      R0,#+155
        BNE.N    ??Benci_newC_Can_FetchStallsInfo_8
// 3823 				{//back
// 3824 				 
// 3825 				Sys.u8can_back_status=CAM_ON_from_can;
??Benci_newC_Can_FetchStallsInfo_7:
        LDR.W    R0,??DataTable17_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
// 3826 				 
// 3827 				 Sys.wRearOnByCanTimer=2000;
        LDR.W    R0,??DataTable17_9
        MOV      R1,#+2000
        STR      R1,[R0, #+64]
        B.N      ??Benci_newC_Can_FetchStallsInfo_6
// 3828 		
// 3829 				}
// 3830 				else //if(RxMessage.Data[2]  == 0x50)
// 3831 				{
// 3832 					 Sys.u8back_exit_auto=0;
??Benci_newC_Can_FetchStallsInfo_8:
        LDR.W    R0,??DataTable17_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
// 3833 					 Sys.u8can_back_status=CAM_off_id;
        LDR.W    R0,??DataTable17_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
// 3834 				}
// 3835 			}
// 3836 
// 3837 }
??Benci_newC_Can_FetchStallsInfo_6:
??Benci_newC_Can_FetchStallsInfo_3:
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
// 3838 
// 3839 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function Benci_newC_CanBus_mid_control_key_fun
          CFI NoCalls
        THUMB
// 3840 void Benci_newC_CanBus_mid_control_key_fun(CanRxMsg RxMessage)
// 3841 {
Benci_newC_CanBus_mid_control_key_fun:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 3842 #if 0
// 3843 	static BYTE turn_key_count=0x88;
// 3844     if (!((RxMessage.StdId ==Benci_newC_CAN_mid_control_turn_KEY2_STD_ID)&& RxMessage.DLC == 8))
// 3845     {
// 3846         return ;
// 3847     }
// 3848 	 return ;
// 3849 
// 3850     //initial
// 3851     if(RxMessage.StdId == Benci_newC_CAN_mid_control_turn_KEY1_STD_ID)
// 3852     	{
// 3853     if(RxMessage.Data[3]<turn_key_count)
// 3854     	{
// 3855     	LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
// 3856     	}
// 3857     	}
// 3858 	else
// 3859 		if(RxMessage.StdId == Benci_newC_CAN_mid_control_turn_KEY2_STD_ID)
// 3860 			{
// 3861 		if(RxMessage.Data[3]>turn_key_count)
// 3862 			{
// 3863 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEINC_PRESSED);
// 3864 			}
// 3865 			}
// 3866 #endif		
// 3867 
// 3868 }
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
// 3869 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function Benci_newC_CanBus_mid_control_key2_fun
        THUMB
// 3870 void Benci_newC_CanBus_mid_control_key2_fun(CanRxMsg RxMessage)
// 3871 {
Benci_newC_CanBus_mid_control_key2_fun:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 3872 	static vu8 uCKeepFlag = 0;
// 3873 	static vu8 uRetKeepFlag = 0;
// 3874 	static vu16 wBounceCnt = 0;
// 3875 	BYTE i;
// 3876 
// 3877     if (!(RxMessage.StdId == Benci_newC_CAN_mid_control_KEY_STD_ID && RxMessage.DLC == 8))
        LDR      R0,[SP, #+8]
        MOVW     R1,#+499
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_0
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_1
// 3878     {
// 3879         return ;
??Benci_newC_CanBus_mid_control_key2_fun_0:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_2
// 3880     }
// 3881 
// 3882 	
// 3883     if (RxMessage.Data[0] ==0x80)
??Benci_newC_CanBus_mid_control_key2_fun_1:
        LDRB     R0,[SP, #+19]
        CMP      R0,#+128
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_3
// 3884         //back
// 3885     {
// 3886     
// 3887 		m_BMW_CAN.uKeyID2 = BENZE_KEY_KnobAround_KEY_BACK_KEEP;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+246
        STRH     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3888     }
// 3889 	 else   if (RxMessage.Data[0] ==0x10)
??Benci_newC_CanBus_mid_control_key2_fun_3:
        LDRB     R0,[SP, #+19]
        CMP      R0,#+16
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_5
// 3890         //back
// 3891     {
// 3892     
// 3893 		m_BMW_CAN.uKeyID2 = BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+32
        STRH     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3894     }
// 3895 	  else	 if (RxMessage.Data[0] ==0x04||RxMessage.Data[0] ==0x20||RxMessage.Data[0] ==0x02||RxMessage.Data[0] ==0x40)
??Benci_newC_CanBus_mid_control_key2_fun_5:
        LDRB     R0,[SP, #+19]
        CMP      R0,#+4
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_6
        LDRB     R0,[SP, #+19]
        CMP      R0,#+32
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_6
        LDRB     R0,[SP, #+19]
        CMP      R0,#+2
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_6
        LDRB     R0,[SP, #+19]
        CMP      R0,#+64
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_7
// 3896 		 //back
// 3897 	 {
// 3898 	 
// 3899 		 m_BMW_CAN.uKeyID2 = BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED;
??Benci_newC_CanBus_mid_control_key2_fun_6:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+33
        STRH     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3900 	 }
// 3901 
// 3902 	 
// 3903     else if (RxMessage.Data[3] ==0xa6)
??Benci_newC_CanBus_mid_control_key2_fun_7:
        LDRB     R0,[SP, #+22]
        CMP      R0,#+166
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3904         //*
// 3905     {
// 3906        ;// LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
// 3907     }
// 3908     else if (RxMessage.Data[2] ==0x01)
        LDRB     R0,[SP, #+21]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_8
// 3909         //enter
// 3910     {
// 3911 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_ENTER_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+5
        STRH     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3912     }
// 3913     else if (RxMessage.Data[2] ==0x80)
??Benci_newC_CanBus_mid_control_key2_fun_8:
        LDRB     R0,[SP, #+21]
        CMP      R0,#+128
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_9
// 3914         //enter
// 3915     {
// 3916 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_LEFT_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+3
        STRH     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3917     }
// 3918     else if (RxMessage.Data[2] ==0x08)
??Benci_newC_CanBus_mid_control_key2_fun_9:
        LDRB     R0,[SP, #+21]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_10
// 3919         //enter
// 3920     {
// 3921 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_RIGHT_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+4
        STRH     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3922     }
// 3923     else if (RxMessage.Data[2] ==0x02)
??Benci_newC_CanBus_mid_control_key2_fun_10:
        LDRB     R0,[SP, #+21]
        CMP      R0,#+2
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_11
// 3924         //enter
// 3925     {
// 3926 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_UP_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+1
        STRH     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3927     }
// 3928     else if (RxMessage.Data[2] ==0x20)
??Benci_newC_CanBus_mid_control_key2_fun_11:
        LDRB     R0,[SP, #+21]
        CMP      R0,#+32
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_12
// 3929         //enter
// 3930     {
// 3931 		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_DN_PRESSED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRH     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_4
// 3932     }		
// 3933 	else
// 3934 	{
// 3935 
// 3936 		//-------------------------------------------------------
// 3937 		wBounceCnt++;
??Benci_newC_CanBus_mid_control_key2_fun_12:
        LDR.W    R0,??DataTable17_10
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17_10
        STRH     R0,[R1, #+0]
// 3938 		//if (wBounceCnt >= 2)
// 3939 		{
// 3940 			uCKeepFlag = 0;
        LDR.W    R0,??DataTable17_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 3941 			uRetKeepFlag = 0;
        LDR.W    R0,??DataTable17_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 3942 			m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 3943 			wBounceCnt = 0;
        LDR.W    R0,??DataTable17_10
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 3944 		}
// 3945 		m_BMW_CAN.uKeyKeepCnt2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
// 3946 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 3947 
// 3948 	}
// 3949 
// 3950 
// 3951 	switch (m_BMW_CAN.uKeyID2)
??Benci_newC_CanBus_mid_control_key2_fun_4:
        LDR.W    R0,??DataTable17
        LDRH     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_13
        CMP      R0,#+1
        BEQ.W    ??Benci_newC_CanBus_mid_control_key2_fun_14
        CMP      R0,#+2
        BEQ.W    ??Benci_newC_CanBus_mid_control_key2_fun_15
        CMP      R0,#+3
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_16
        CMP      R0,#+4
        BEQ.W    ??Benci_newC_CanBus_mid_control_key2_fun_17
        CMP      R0,#+5
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_18
        CMP      R0,#+32
        BEQ.W    ??Benci_newC_CanBus_mid_control_key2_fun_19
        CMP      R0,#+33
        BEQ.W    ??Benci_newC_CanBus_mid_control_key2_fun_20
        CMP      R0,#+246
        BEQ.N    ??Benci_newC_CanBus_mid_control_key2_fun_21
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_22
// 3952 	{
// 3953 	case BENZE_KEY_ALL_BOUNCED:
// 3954 		uCKeepFlag = 0;
??Benci_newC_CanBus_mid_control_key2_fun_13:
        LDR.W    R0,??DataTable17_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 3955 		uRetKeepFlag = 0;
        LDR.W    R0,??DataTable17_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 3956 		m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 3957 		wBounceCnt = 0;
        LDR.W    R0,??DataTable17_10
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 3958 		m_BMW_CAN.uKeyKeepCnt2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
// 3959 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 3960 		break;
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 3961 	case BENZE_KEY_KnobAround_KEY_BACK_KEEP:
// 3962 		m_BMW_CAN.uKeyKeepCnt2++;
??Benci_newC_CanBus_mid_control_key2_fun_21:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 3963 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_24
// 3964 			//bounce
// 3965 		{
// 3966 			//process first pressed data
// 3967 			LF_CanBus_SendControlCmd(BENZE_KEY_KnobAround_KEY_BACK_KEEP);
        MOVS     R0,#+246
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_25
// 3968 		}
// 3969 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Benci_newC_CanBus_mid_control_key2_fun_24:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_mid_control_key2_fun_25
// 3970 			//keep
// 3971 		{
// 3972 			m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 3973 			//process keep data
// 3974 			
// 3975 		}
// 3976 		break;
??Benci_newC_CanBus_mid_control_key2_fun_25:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 3977 	
// 3978 
// 3979 	case BENZE_CMD_KNOB_ENTER_PRESSED:
// 3980 		m_BMW_CAN.uKeyKeepCnt2++;
??Benci_newC_CanBus_mid_control_key2_fun_18:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 3981 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_26
// 3982 			//bounce
// 3983 		{
// 3984 			//process first pressed data
// 3985 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
        MOVS     R0,#+5
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 3986 			
// 3987 			if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_27
// 3988 			CAN_turner.flag=1;
        LDR.W    R0,??DataTable20
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_27
// 3989 		}
// 3990 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Benci_newC_CanBus_mid_control_key2_fun_26:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_mid_control_key2_fun_27
// 3991 			//keep
// 3992 		{
// 3993 			m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 3994 			//process keep data
// 3995 		}
// 3996 		break;
??Benci_newC_CanBus_mid_control_key2_fun_27:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 3997 	case BENZE_CMD_KNOB_LEFT_PRESSED:
// 3998 		m_BMW_CAN.uKeyKeepCnt2++;
??Benci_newC_CanBus_mid_control_key2_fun_16:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 3999 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_28
// 4000 			//bounce
// 4001 		{
// 4002 			//process first pressed data
// 4003 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
        MOVS     R0,#+3
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4004 			
// 4005 			if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_29
// 4006 			CAN_turner.count--;
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable20
        STRB     R0,[R1, #+0]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_29
// 4007 		}
// 4008 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Benci_newC_CanBus_mid_control_key2_fun_28:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_mid_control_key2_fun_29
// 4009 			//keep
// 4010 		{
// 4011 			m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 4012 			//process keep data
// 4013 		}
// 4014 		break;
??Benci_newC_CanBus_mid_control_key2_fun_29:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 4015 	case BENZE_CMD_KNOB_RIGHT_PRESSED:
// 4016 		m_BMW_CAN.uKeyKeepCnt2++;
??Benci_newC_CanBus_mid_control_key2_fun_17:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 4017 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_30
// 4018 			//bounce
// 4019 		{
// 4020 			//process first pressed data
// 4021 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);
        MOVS     R0,#+4
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4022 			
// 4023 			if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_31
// 4024 				CAN_turner.count++;
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20
        STRB     R0,[R1, #+0]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_31
// 4025 		}
// 4026 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Benci_newC_CanBus_mid_control_key2_fun_30:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_mid_control_key2_fun_31
// 4027 			//keep
// 4028 		{
// 4029 			m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 4030 			//process keep data
// 4031 		}
// 4032 		break;
??Benci_newC_CanBus_mid_control_key2_fun_31:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 4033 	case BENZE_CMD_KNOB_UP_PRESSED:
// 4034 		m_BMW_CAN.uKeyKeepCnt2++;
??Benci_newC_CanBus_mid_control_key2_fun_14:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 4035 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_32
// 4036 			//bounce
// 4037 		{
// 4038 			//process first pressed data
// 4039 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
        MOVS     R0,#+1
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4040 			
// 4041 			
// 4042 			if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_33
// 4043 				CAN_turner.count2--;
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable20
        STRB     R0,[R1, #+1]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_33
// 4044 		}
// 4045 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Benci_newC_CanBus_mid_control_key2_fun_32:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_mid_control_key2_fun_33
// 4046 			//keep
// 4047 		{
// 4048 			m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 4049 			//process keep data
// 4050 		}
// 4051 		break;
??Benci_newC_CanBus_mid_control_key2_fun_33:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 4052 	case BENZE_CMD_KNOB_DN_PRESSED:
// 4053 		m_BMW_CAN.uKeyKeepCnt2++;
??Benci_newC_CanBus_mid_control_key2_fun_15:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 4054 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_34
// 4055 			//bounce
// 4056 		{
// 4057 			//process first pressed data
// 4058 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
        MOVS     R0,#+2
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4059 			
// 4060 			if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_35
// 4061 				CAN_turner.count2++;
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20
        STRB     R0,[R1, #+1]
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_35
// 4062 		}
// 4063 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Benci_newC_CanBus_mid_control_key2_fun_34:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_mid_control_key2_fun_35
// 4064 			//keep
// 4065 		{
// 4066 			m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 4067 			//process keep data
// 4068 		}
// 4069 		break;
??Benci_newC_CanBus_mid_control_key2_fun_35:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 4070 	case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED:
// 4071 		m_BMW_CAN.uKeyKeepCnt2++;
??Benci_newC_CanBus_mid_control_key2_fun_19:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 4072 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_36
// 4073 			//bounce
// 4074 		{
// 4075 			//process first pressed data
// 4076 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
        MOVS     R0,#+32
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_37
// 4077 		}
// 4078 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Benci_newC_CanBus_mid_control_key2_fun_36:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_mid_control_key2_fun_37
// 4079 			//keep
// 4080 		{
// 4081 			m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 4082 			//process keep data
// 4083 		}
// 4084 		break;	
??Benci_newC_CanBus_mid_control_key2_fun_37:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 4085 	case BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED:
// 4086 		m_BMW_CAN.uKeyKeepCnt2++;
??Benci_newC_CanBus_mid_control_key2_fun_20:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable17
        STRB     R0,[R1, #+6]
// 4087 		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_mid_control_key2_fun_38
// 4088 			//bounce
// 4089 		{
// 4090 			//process first pressed data
// 4091 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_39
// 4092 		}
// 4093 		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
??Benci_newC_CanBus_mid_control_key2_fun_38:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+6]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_mid_control_key2_fun_39
// 4094 			//keep
// 4095 		{
// 4096 			m_BMW_CAN.uKeyKeepCnt2 = 2;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+2
        STRB     R1,[R0, #+6]
// 4097 			//process keep data
// 4098 		}
// 4099 		break;			
??Benci_newC_CanBus_mid_control_key2_fun_39:
        B.N      ??Benci_newC_CanBus_mid_control_key2_fun_23
// 4100 		
// 4101 	default:
// 4102 		m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
??Benci_newC_CanBus_mid_control_key2_fun_22:
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 4103 		m_BMW_CAN.uKeyKeepCnt2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
// 4104 		m_BMW_CAN.bKeyKeepOneTime2 = 0;
        LDR.W    R0,??DataTable17
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 4105 		break;
// 4106 	}
// 4107 }
??Benci_newC_CanBus_mid_control_key2_fun_23:
??Benci_newC_CanBus_mid_control_key2_fun_2:
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     ??wBounceCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     ??uCKeepFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     ??uRetKeepFlag

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uCKeepFlag_2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uRetKeepFlag_2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
??wBounceCnt_2:
        DS8 2
// 4108 
// 4109 /*
// 4110 ******************************************************
// 4111 方向盘按键
// 4112 ******************************************************
// 4113 */
// 4114 	
// 4115 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function Benci_newC_CanBus_FetchSteerKeyInfo_Type1
          CFI NoCalls
        THUMB
// 4116 void Benci_newC_CanBus_FetchSteerKeyInfo_Type1(CanRxMsg RxMessage)
// 4117 
// 4118 {
Benci_newC_CanBus_FetchSteerKeyInfo_Type1:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 4119 #if 0
// 4120     if (!(RxMessage.StdId == Benci_newC_CAN_STEER_KEY_L_STD_TYPE_ID && RxMessage.DLC == 8))
// 4121     {
// 4122         return ;
// 4123     }
// 4124 	return ;
// 4125 
// 4126     //initial
// 4127     
// 4128 
// 4129     if (RxMessage.Data[5] ==0x02)
// 4130         //back
// 4131     {
// 4132         LF_CanBus_SendControlCmd(BENZE_KEY_KnobAround_KEY_BACK_KEEP);
// 4133     }
// 4134     else if (RxMessage.Data[5] ==0x80)
// 4135         //enter
// 4136     {
// 4137         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
// 4138     }
// 4139     else if (RxMessage.Data[4] ==0x10)
// 4140         //yuying
// 4141     {
// 4142         //LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
// 4143     }
// 4144     else if (RxMessage.Data[4] ==0x08)
// 4145         //enter
// 4146     {
// 4147         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
// 4148     }
// 4149     else if (RxMessage.Data[4] ==0x04)
// 4150         //enter
// 4151     {
// 4152         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);
// 4153     }
// 4154     else if (RxMessage.Data[4] ==0x01)
// 4155         //enter
// 4156     {
// 4157         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
// 4158     }
// 4159     else if (RxMessage.Data[4] ==0x02)
// 4160         //enter
// 4161     {
// 4162         LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
// 4163     }	
// 4164 	#endif
// 4165 }
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
// 4166 
// 4167 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function Benci_newC_CanBus_FetchSteerKeyInfo_Type2
        THUMB
// 4168 void Benci_newC_CanBus_FetchSteerKeyInfo_Type2(CanRxMsg RxMessage)
// 4169 {
Benci_newC_CanBus_FetchSteerKeyInfo_Type2:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 4170 	static vu8 uCKeepFlag = 0;
// 4171 	static vu8 uRetKeepFlag = 0;
// 4172 	static vu16 wBounceCnt = 0;
// 4173 	BYTE i;
// 4174 
// 4175     if (!(RxMessage.StdId == Benci_newC_CAN_steer_key_STD_TYPE_ID && RxMessage.DLC == 8))
        LDR      R0,[SP, #+8]
        MOVW     R1,#+1025
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_0
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BEQ.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_1
// 4176     {
// 4177         return ;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_0:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_2
// 4178     }
// 4179 
// 4180 	
// 4181  if (RxMessage.Data[4] ==0x01&&(Sys.FS_select.NAV_key_type==1))//语音开
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_1:
        LDRB     R0,[SP, #+23]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_3
        LDR.W    R0,??DataTable17_9
        LDRB     R0,[R0, #+36]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_3
// 4182     {
// 4183 		m_BMW_CAN.uKeyID3 = BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+32
        STRB     R1,[R0, #+8]
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_4
// 4184     }
// 4185  else if((RxMessage.Data[2] ==0x40)&&(Sys.FS_select.NAV_key_type==0)) //语音关
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_3:
        LDRB     R0,[SP, #+21]
        CMP      R0,#+64
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_5
        LDR.W    R0,??DataTable17_9
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_5
// 4186  	{
// 4187  	m_BMW_CAN.uKeyID3 = BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+32
        STRB     R1,[R0, #+8]
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_4
// 4188  	}
// 4189 	else
// 4190 	{
// 4191 
// 4192 		//-------------------------------------------------------
// 4193 		wBounceCnt++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_5:
        LDR.W    R0,??DataTable21_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21_1
        STRH     R0,[R1, #+0]
// 4194 		//if (wBounceCnt >= 2)
// 4195 		{
// 4196 			uCKeepFlag = 0;
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 4197 			uRetKeepFlag = 0;
        LDR.W    R0,??DataTable21_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 4198 			m_BMW_CAN.uKeyID3 = BENZE_KEY_ALL_BOUNCED;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
// 4199 			wBounceCnt = 0;
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 4200 		}
// 4201 		m_BMW_CAN.uKeyKeepCnt3 = 0;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
// 4202 		m_BMW_CAN.bKeyKeepOneTime3 = 0;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
// 4203 
// 4204 	}
// 4205 
// 4206 
// 4207 	switch (m_BMW_CAN.uKeyID3)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_4:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_6
        CMP      R0,#+1
        BEQ.W    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_7
        CMP      R0,#+2
        BEQ.W    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_8
        CMP      R0,#+3
        BEQ.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_9
        CMP      R0,#+4
        BEQ.W    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_10
        CMP      R0,#+5
        BEQ.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_11
        CMP      R0,#+32
        BEQ.W    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_12
        CMP      R0,#+33
        BEQ.W    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_13
        CMP      R0,#+246
        BEQ.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_14
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_15
// 4208 	{
// 4209 	case BENZE_KEY_ALL_BOUNCED:
// 4210 		uCKeepFlag = 0;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_6:
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 4211 		uRetKeepFlag = 0;
        LDR.W    R0,??DataTable21_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 4212 		m_BMW_CAN.uKeyID3 = BENZE_KEY_ALL_BOUNCED;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
// 4213 		wBounceCnt = 0;
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
// 4214 		m_BMW_CAN.uKeyKeepCnt3 = 0;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
// 4215 		m_BMW_CAN.bKeyKeepOneTime3 = 0;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
// 4216 		break;
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4217 	case BENZE_KEY_KnobAround_KEY_BACK_KEEP:
// 4218 		m_BMW_CAN.uKeyKeepCnt3++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_14:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+9]
// 4219 		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_17
// 4220 			//bounce
// 4221 		{
// 4222 			//process first pressed data
// 4223 			LF_CanBus_SendControlCmd(BENZE_KEY_KnobAround_KEY_BACK_KEEP);
        MOVS     R0,#+246
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_18
// 4224 		}
// 4225 		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_17:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_18
// 4226 			//keep
// 4227 		{
// 4228 			m_BMW_CAN.uKeyKeepCnt3 = 2;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
// 4229 			//process keep data
// 4230 			
// 4231 		}
// 4232 		break;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_18:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4233 	
// 4234 
// 4235 	case BENZE_CMD_KNOB_ENTER_PRESSED:
// 4236 		m_BMW_CAN.uKeyKeepCnt3++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_11:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+9]
// 4237 		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_19
// 4238 			//bounce
// 4239 		{
// 4240 			//process first pressed data
// 4241 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
        MOVS     R0,#+5
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4242 			
// 4243 			if(Sys.Main_Source==SRC_CAM)
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_20
// 4244 			CAN_turner.flag=1;
        LDR.W    R0,??DataTable20
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_20
// 4245 		}
// 4246 		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_19:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_20
// 4247 			//keep
// 4248 		{
// 4249 			m_BMW_CAN.uKeyKeepCnt3 = 2;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
// 4250 			//process keep data
// 4251 		}
// 4252 		break;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_20:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4253 	case BENZE_CMD_KNOB_LEFT_PRESSED:
// 4254 		m_BMW_CAN.uKeyKeepCnt3++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_9:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+9]
// 4255 		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_21
// 4256 			//bounce
// 4257 		{
// 4258 			//process first pressed data
// 4259 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
        MOVS     R0,#+3
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4260 			
// 4261 			if(Sys.Main_Source==SRC_CAM)
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_22
// 4262 			CAN_turner.count--;
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable20
        STRB     R0,[R1, #+0]
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_22
// 4263 		}
// 4264 		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_21:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_22
// 4265 			//keep
// 4266 		{
// 4267 			m_BMW_CAN.uKeyKeepCnt3 = 2;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
// 4268 			//process keep data
// 4269 		}
// 4270 		break;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_22:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4271 	case BENZE_CMD_KNOB_RIGHT_PRESSED:
// 4272 		m_BMW_CAN.uKeyKeepCnt3++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_10:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+9]
// 4273 		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_23
// 4274 			//bounce
// 4275 		{
// 4276 			//process first pressed data
// 4277 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);
        MOVS     R0,#+4
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4278 			
// 4279 			if(Sys.Main_Source==SRC_CAM)
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_24
// 4280 				CAN_turner.count++;
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable20
        STRB     R0,[R1, #+0]
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_24
// 4281 		}
// 4282 		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_23:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_24
// 4283 			//keep
// 4284 		{
// 4285 			m_BMW_CAN.uKeyKeepCnt3 = 2;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
// 4286 			//process keep data
// 4287 		}
// 4288 		break;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_24:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4289 	case BENZE_CMD_KNOB_UP_PRESSED:
// 4290 		m_BMW_CAN.uKeyKeepCnt3++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_7:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+9]
// 4291 		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_25
// 4292 			//bounce
// 4293 		{
// 4294 			//process first pressed data
// 4295 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
        MOVS     R0,#+1
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_26
// 4296 			
// 4297 			
// 4298 		}
// 4299 		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_25:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_26
// 4300 			//keep
// 4301 		{
// 4302 			m_BMW_CAN.uKeyKeepCnt3 = 2;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
// 4303 			//process keep data
// 4304 		}
// 4305 		break;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_26:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4306 	case BENZE_CMD_KNOB_DN_PRESSED:
// 4307 		m_BMW_CAN.uKeyKeepCnt3++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_8:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+9]
// 4308 		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_27
// 4309 			//bounce
// 4310 		{
// 4311 			//process first pressed data
// 4312 			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
        MOVS     R0,#+2
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_28
// 4313 			
// 4314 		}
// 4315 		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_27:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_28
// 4316 			//keep
// 4317 		{
// 4318 			m_BMW_CAN.uKeyKeepCnt3 = 2;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
// 4319 			//process keep data
// 4320 		}
// 4321 		break;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_28:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4322 	case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED:
// 4323 		m_BMW_CAN.uKeyKeepCnt3++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_12:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+9]
// 4324 		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_29
// 4325 			//bounce
// 4326 		{
// 4327 			//process first pressed data
// 4328 			if((Sys.Main_Source==SRC_CarMedia)&&(Sys.FS_select.NAV_key_type==1))
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+18
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_30
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+36]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_30
// 4329 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
        MOVS     R0,#+32
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_31
// 4330 			else if(Sys.Main_Source!=SRC_CarMedia&&Sys.FS_select.NAV_key_type==0)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_30:
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+18
        BEQ.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_31
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_31
// 4331 				LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_31
// 4332 			//else //if()
// 4333 			//LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
// 4334 		}
// 4335 		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_29:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_31
// 4336 			//keep
// 4337 		{
// 4338 			m_BMW_CAN.uKeyKeepCnt3 = 2;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
// 4339 			if((Sys.Main_Source==SRC_CarMedia)&&(Sys.FS_select.NAV_key_type==0))
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+2]
        CMP      R0,#+18
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_31
        LDR.N    R0,??DataTable17_9
        LDRB     R0,[R0, #+36]
        CMP      R0,#+0
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_31
// 4340 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
        MOVS     R0,#+32
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4341 			//process keep data
// 4342 		}
// 4343 		break;	
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_31:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4344 	case BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED:
// 4345 		m_BMW_CAN.uKeyKeepCnt3++;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_13:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable21
        STRB     R0,[R1, #+9]
// 4346 		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_32
// 4347 			//bounce
// 4348 		{
// 4349 			//process first pressed data
// 4350 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_33
// 4351 		}
// 4352 		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_32:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+9]
        CMP      R0,#+10
        BCC.N    ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_33
// 4353 			//keep
// 4354 		{
// 4355 			m_BMW_CAN.uKeyKeepCnt3 = 2;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
// 4356 			//process keep data
// 4357 		}
// 4358 		break;			
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_33:
        B.N      ??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16
// 4359 		
// 4360 	default:
// 4361 		m_BMW_CAN.uKeyID3 = BENZE_KEY_ALL_BOUNCED;
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_15:
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
// 4362 		m_BMW_CAN.uKeyKeepCnt3 = 0;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
// 4363 		m_BMW_CAN.bKeyKeepOneTime3 = 0;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
// 4364 		break;
// 4365 	}
// 4366 }
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_16:
??Benci_newC_CanBus_FetchSteerKeyInfo_Type2_2:
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock23

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uCKeepFlag_3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uRetKeepFlag_3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
??wBounceCnt_3:
        DS8 2
// 4367 
// 4368 
// 4369 
// 4370 /*
// 4371 ********************************************************
// 4372 方向盘转角
// 4373 ********************************************************
// 4374 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function Benci_newC_CanBus_FetchSteerAngleInfo
          CFI NoCalls
        THUMB
// 4375 void Benci_newC_CanBus_FetchSteerAngleInfo(CanRxMsg RxMessage)
// 4376 {
Benci_newC_CanBus_FetchSteerAngleInfo:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 4377 
// 4378 	     if (RxMessage.StdId == Benci_newC_CAN_STEERINGANGLE_STD_ID && RxMessage.DLC == 8)
        LDR      R0,[SP, #+0]
        CMP      R0,#+47
        BNE.N    ??Benci_newC_CanBus_FetchSteerAngleInfo_0
        LDRB     R0,[SP, #+10]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_FetchSteerAngleInfo_0
// 4379 	    {
// 4380 	        m_BMW_CAN.benze_Steering_angle[0] =((RxMessage.Data[3]<< 8) | RxMessage.Data[4]); //方向盘角度信息
        LDRB     R0,[SP, #+14]
        LDRB     R1,[SP, #+15]
        ORRS     R0,R1,R0, LSL #+8
        LDR.W    R1,??DataTable21
        STRH     R0,[R1, #+50]
// 4381 	    }
// 4382 }
??Benci_newC_CanBus_FetchSteerAngleInfo_0:
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     ??uPreAction

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     ??uPreVal
// 4383 /*
// 4384 ***********************************************************
// 4385 *handle the CMD from CAN BUS
// 4386 *
// 4387 ***********************************************************
// 4388 */
// 4389 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function Benci_newC_CanBus_FetchCmdTask
        THUMB
// 4390 void Benci_newC_CanBus_FetchCmdTask(void)
// 4391 {
Benci_newC_CanBus_FetchCmdTask:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 4392     BYTE action = 0;
        MOVS     R4,#+0
// 4393 
// 4394     
// 4395     if (!m_BMW_CAN.wLoopTimer)
        LDR.N    R0,??DataTable17
        LDRH     R0,[R0, #+30]
        CMP      R0,#+0
        BNE.N    ??Benci_newC_CanBus_FetchCmdTask_0
// 4396     {
// 4397         switch (LF_CanBus_FetchCmd())
          CFI FunCall LF_CanBus_FetchCmd
        BL       LF_CanBus_FetchCmd
        CMP      R0,#+1
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_1
        CMP      R0,#+2
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_2
        CMP      R0,#+3
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_3
        CMP      R0,#+4
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_4
        CMP      R0,#+5
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_5
        CMP      R0,#+6
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_6
        CMP      R0,#+7
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_7
        CMP      R0,#+32
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_8
        CMP      R0,#+33
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_9
        CMP      R0,#+93
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_10
        CMP      R0,#+228
        BEQ.N    ??Benci_newC_CanBus_FetchCmdTask_11
        B.N      ??Benci_newC_CanBus_FetchCmdTask_12
// 4398         {
// 4399         case BENZE_CMD_KNOB_LEFT_PRESSED:
// 4400 			Can_key_cmd=key_left;
??Benci_newC_CanBus_FetchCmdTask_3:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
// 4401           break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4402         case BENZE_CMD_KNOB_RIGHT_PRESSED:
// 4403 			Can_key_cmd=key_right;
??Benci_newC_CanBus_FetchCmdTask_4:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
// 4404           break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4405         case BENZE_CMD_KNOB_TUNEDEC_PRESSED:
// 4406 			Can_key_cmd=key_up;
??Benci_newC_CanBus_FetchCmdTask_6:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 4407             break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4408         case BENZE_CMD_KNOB_TUNEINC_PRESSED:
// 4409 			Can_key_cmd=key_down;
??Benci_newC_CanBus_FetchCmdTask_7:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
// 4410             break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4411         case BENZE_CMD_KNOB_UP_PRESSED:
// 4412 			Can_key_cmd=key_up;
??Benci_newC_CanBus_FetchCmdTask_1:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 4413             break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4414         case BENZE_CMD_KNOB_DN_PRESSED:
// 4415 			Can_key_cmd=key_down;
??Benci_newC_CanBus_FetchCmdTask_2:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
// 4416             break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4417         case BENZE_CMD_KNOB_ENTER_PRESSED:
// 4418 			Can_key_cmd=key_enter;
??Benci_newC_CanBus_FetchCmdTask_5:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
// 4419             break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4420         case BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED:
// 4421 			Can_key_cmd=key_media;
??Benci_newC_CanBus_FetchCmdTask_9:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
// 4422             break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4423         case BENZE_CMD_STEERING_RIGHT_KEY_RET_KEEP:
// 4424             //IPC_SendKeyMessage_Menu(MSG_ACTION_PRESSED);
// 4425             //IPC_SendKeyMessage_Media_Sw(MSG_ACTION_PRESSED);
// 4426             break;
??Benci_newC_CanBus_FetchCmdTask_11:
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4427         case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED:
// 4428 			Can_key_cmd=key_NAVI;
??Benci_newC_CanBus_FetchCmdTask_8:
        LDR.W    R0,??DataTable21_4
        MOVS     R1,#+7
        STRB     R1,[R0, #+0]
// 4429             break;
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4430         
// 4431         case BENZE_CMD_MENU_PRESSED:
// 4432            //if(g_stuSYSINFO.uOSDMainMode==MAIN_OSD_MODE_IN_DISAPP)//solve small screen can not show menu
// 4433            {
// 4434             //IPC_SendKeyMessage_Menu(MSG_ACTION_PRESSED);
// 4435 			//IPC_SendKeyMessage_ShortCuts(0x10,MSG_ACTION_PRESSED);
// 4436            }
// 4437            
// 4438             break;
??Benci_newC_CanBus_FetchCmdTask_10:
        B.N      ??Benci_newC_CanBus_FetchCmdTask_13
// 4439 
// 4440         default:
// 4441             break;
// 4442         }
// 4443         m_BMW_CAN.wLoopTimer = 10;
??Benci_newC_CanBus_FetchCmdTask_12:
??Benci_newC_CanBus_FetchCmdTask_13:
        LDR.N    R0,??DataTable17
        MOVS     R1,#+10
        STRH     R1,[R0, #+30]
// 4444     }
// 4445 }
??Benci_newC_CanBus_FetchCmdTask_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     m_BMW_CAN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     ??wBounceCnt_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     ??uCKeepFlag_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     ??uRetKeepFlag_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     ??uTxtIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     ??uTxtInfoBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     0x40006400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     0x40006800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     m_RADAR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_9:
        DC32     EEPROM_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_10:
        DC32     ??wBounceCnt_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_11:
        DC32     ??uCKeepFlag_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_12:
        DC32     ??uRetKeepFlag_2
// 4446 
// 4447 //工作信息

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function Benci_newC_CanBus_work_data_analytic
        THUMB
// 4448 void Benci_newC_CanBus_work_data_analytic(CanRxMsg RxMessage)
// 4449 {
Benci_newC_CanBus_work_data_analytic:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 4450     static u8 uPreMediaStatus, uPrePreMediaStatus;
// 4451     static u8 uPreAirStatus, uPrePreAirStatus;
// 4452     uPreMediaStatus = uPreMediaStatus;
        LDR.W    R0,??DataTable21_5
        LDR.W    R1,??DataTable21_5
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 4453     uPrePreMediaStatus = uPrePreMediaStatus;
        LDR.W    R0,??DataTable21_6
        LDR.W    R1,??DataTable21_6
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 4454     uPreAirStatus = uPreAirStatus;
        LDR.W    R0,??DataTable21_7
        LDR.W    R1,??DataTable21_7
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 4455     uPrePreAirStatus = uPrePreAirStatus;
        LDR.W    R0,??DataTable21_8
        LDR.W    R1,??DataTable21_8
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
// 4456 	
// 4457 	if (RxMessage.StdId == Benci_newC_CAN_POWER_ON_STD_ID && RxMessage.DLC == 4)
        LDR      R0,[SP, #+8]
        MOVW     R1,#+709
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_0
        LDRB     R0,[SP, #+18]
        CMP      R0,#+4
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_0
// 4458 	{
// 4459 		m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+57]
// 4460 		Sys.wPowerOnByCanTimer=2000;
        LDR.W    R0,??DataTable20_1
        MOV      R1,#+2000
        STR      R1,[R0, #+56]
// 4461 		//m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
// 4462 		//m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
// 4463 
// 4464 	}
// 4465 	
// 4466 	if (RxMessage.StdId == Benci_newC_CAN_POWER_ON_STD_ID && RxMessage.DLC == 4) 
??Benci_newC_CanBus_work_data_analytic_0:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+709
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_1
        LDRB     R0,[SP, #+18]
        CMP      R0,#+4
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_1
// 4467 	{
// 4468 		if((RxMessage.Data[0]&0x0f)==0x0f)
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        CMP      R0,#+15
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_2
// 4469 			{
// 4470 			m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+59]
// 4471 			m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+57]
// 4472 			m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+2
        STRB     R1,[R0, #+58]
// 4473 			Sys.wPowerOnByCanTimer2=2000;
        LDR.W    R0,??DataTable20_1
        MOV      R1,#+2000
        STR      R1,[R0, #+60]
// 4474 			Sys.wPowerOnByCanTimer=2000;
        LDR.W    R0,??DataTable20_1
        MOV      R1,#+2000
        STR      R1,[R0, #+56]
        B.N      ??Benci_newC_CanBus_work_data_analytic_3
// 4475 			}
// 4476 			else if((RxMessage.Data[0]&0x0f)==0x0d)
??Benci_newC_CanBus_work_data_analytic_2:
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        CMP      R0,#+13
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_3
// 4477 			m_BMW_CAN.AudioPwr =SYSTEM_POWER_OFF;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+58]
// 4478                 
// 4479 			Sys_CAN_light.sys_light_value=((RxMessage.Data[0]&0xf0)>>4);
??Benci_newC_CanBus_work_data_analytic_3:
        LDRB     R0,[SP, #+19]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        LDR.W    R1,??DataTable21_9
        STRB     R0,[R1, #+3]
// 4480 		
// 4481 	}
// 4482 
// 4483 	if (RxMessage.StdId == Benci_newC_CAN_light_mode_STD_ID && RxMessage.DLC == 4) 
??Benci_newC_CanBus_work_data_analytic_1:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+1081
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_4
        LDRB     R0,[SP, #+18]
        CMP      R0,#+4
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_4
// 4484 	{
// 4485 			Sys_CAN_light.sun_mode=RxMessage.Data[2];
        LDR.W    R0,??DataTable21_9
        LDRB     R1,[SP, #+21]
        STRB     R1,[R0, #+1]
// 4486 			Sys_CAN_light.button_light_value=RxMessage.Data[3];
        LDR.W    R0,??DataTable21_9
        LDRB     R1,[SP, #+22]
        STRB     R1,[R0, #+2]
// 4487 	}
// 4488 
// 4489 	
// 4490 
// 4491      if (RxMessage.StdId == Benci_newC_CAN_DOOR_F_L_STD_ID && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_4:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+919
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_5
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_5
// 4492     {
// 4493     	if(m_CarDoorInfo_last.uFront_Left   !=(RxMessage.Data[0]&0x0f))
        LDR.W    R0,??DataTable21_10
        LDRB     R0,[R0, #+1]
        LDRB     R1,[SP, #+19]
        ANDS     R1,R1,#0xF
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_5
// 4494     		{
// 4495     		m_CarDoorInfo_last.uFront_Left=(RxMessage.Data[0]&0x0f);
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        LDR.W    R1,??DataTable21_10
        STRB     R0,[R1, #+1]
// 4496 			if((RxMessage.Data[0]&0x0f)==0x02)
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        CMP      R0,#+2
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_6
// 4497 				m_CarDoorInfo.uFront_Left=1;
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        B.N      ??Benci_newC_CanBus_work_data_analytic_7
// 4498 			else
// 4499 				m_CarDoorInfo.uFront_Left=0;
??Benci_newC_CanBus_work_data_analytic_6:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
// 4500 			m_CarDoorInfo.SendFlag = 1;
??Benci_newC_CanBus_work_data_analytic_7:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 4501     		}
// 4502     }
// 4503 
// 4504      if (RxMessage.StdId == Benci_newC_CAN_DOOR_F_R_STD_ID && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_5:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+923
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_8
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_8
// 4505     {
// 4506     	if(m_CarDoorInfo_last.uFront_Right   !=(RxMessage.Data[0]&0x0f))
        LDR.W    R0,??DataTable21_10
        LDRB     R0,[R0, #+2]
        LDRB     R1,[SP, #+19]
        ANDS     R1,R1,#0xF
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_8
// 4507     		{
// 4508     		m_CarDoorInfo_last.uFront_Right=(RxMessage.Data[0]&0x0f);
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        LDR.W    R1,??DataTable21_10
        STRB     R0,[R1, #+2]
// 4509 			if((RxMessage.Data[0]&0x0f)==0x02)
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        CMP      R0,#+2
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_9
// 4510 				m_CarDoorInfo.uFront_Right=1;
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??Benci_newC_CanBus_work_data_analytic_10
// 4511 			else
// 4512 				m_CarDoorInfo.uFront_Right=0;
??Benci_newC_CanBus_work_data_analytic_9:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
// 4513 			m_CarDoorInfo.SendFlag = 1;
??Benci_newC_CanBus_work_data_analytic_10:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 4514     		}
// 4515     }
// 4516 	 
// 4517 	  if (RxMessage.StdId == Benci_newC_CAN_DOOR_R_L_STD_ID && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_8:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+931
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_11
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_11
// 4518 	 {
// 4519 		 if(m_CarDoorInfo_last.uRear_Left	 !=(RxMessage.Data[0]&0x0f))
        LDR.W    R0,??DataTable21_10
        LDRB     R0,[R0, #+3]
        LDRB     R1,[SP, #+19]
        ANDS     R1,R1,#0xF
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_11
// 4520 			 {
// 4521 			 m_CarDoorInfo_last.uRear_Left=(RxMessage.Data[0]&0x0f);
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        LDR.W    R1,??DataTable21_10
        STRB     R0,[R1, #+3]
// 4522 			 if((RxMessage.Data[0]&0x0f)==0x0e)
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        CMP      R0,#+14
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_12
// 4523 				 m_CarDoorInfo.uRear_Left=1;
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??Benci_newC_CanBus_work_data_analytic_13
// 4524 			 else
// 4525 				 m_CarDoorInfo.uRear_Left=0;
??Benci_newC_CanBus_work_data_analytic_12:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
// 4526 			 m_CarDoorInfo.SendFlag = 1;
??Benci_newC_CanBus_work_data_analytic_13:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 4527 			 }
// 4528 	 }
// 4529 	 
// 4530 	  if (RxMessage.StdId == Benci_newC_CAN_DOOR_R_R_STD_ID && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_11:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+933
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_14
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_14
// 4531 	 {
// 4532 		 if(m_CarDoorInfo_last.uRear_Right   !=(RxMessage.Data[0]&0x0f))
        LDR.W    R0,??DataTable21_10
        LDRB     R0,[R0, #+4]
        LDRB     R1,[SP, #+19]
        ANDS     R1,R1,#0xF
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_14
// 4533 			 {
// 4534 			 m_CarDoorInfo_last.uRear_Right=(RxMessage.Data[0]&0x0f);
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        LDR.W    R1,??DataTable21_10
        STRB     R0,[R1, #+4]
// 4535 			 if((RxMessage.Data[0]&0x0f)==0x0e)
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        CMP      R0,#+14
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_15
// 4536 				 m_CarDoorInfo.uRear_Right=1;
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
        B.N      ??Benci_newC_CanBus_work_data_analytic_16
// 4537 			 else
// 4538 				 m_CarDoorInfo.uRear_Right=0;
??Benci_newC_CanBus_work_data_analytic_15:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
// 4539 			 m_CarDoorInfo.SendFlag = 1;
??Benci_newC_CanBus_work_data_analytic_16:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 4540 			 }
// 4541 	 }
// 4542 
// 4543 	  if (RxMessage.StdId == Benci_newC_CAN_DOOR_REAR_Lid_STD_ID && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_14:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+849
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_17
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_17
// 4544 	 {
// 4545 		 if(m_CarDoorInfo_last.rear   !=(RxMessage.Data[0]))
        LDR.W    R0,??DataTable21_10
        LDRB     R0,[R0, #+6]
        LDRB     R1,[SP, #+19]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_17
// 4546 			 {
// 4547 			 m_CarDoorInfo_last.rear=(RxMessage.Data[0]);
        LDR.W    R0,??DataTable21_10
        LDRB     R1,[SP, #+19]
        STRB     R1,[R0, #+6]
// 4548 			 if((RxMessage.Data[0])==0x20)
        LDRB     R0,[SP, #+19]
        CMP      R0,#+32
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_18
// 4549 				 m_CarDoorInfo.rear=1;
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+6]
        B.N      ??Benci_newC_CanBus_work_data_analytic_19
// 4550 			 else
// 4551 				 m_CarDoorInfo.rear=0;
??Benci_newC_CanBus_work_data_analytic_18:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
// 4552 			 m_CarDoorInfo.SendFlag = 1;
??Benci_newC_CanBus_work_data_analytic_19:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 4553 			 }
// 4554 	 }
// 4555 	   if (RxMessage.StdId == Benci_newC_CAN_DOOR_font_Lid_STD_ID && RxMessage.DLC == 4) //radar INFO
??Benci_newC_CanBus_work_data_analytic_17:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+823
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_20
        LDRB     R0,[SP, #+18]
        CMP      R0,#+4
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_20
// 4556 	  {
// 4557 		  if(m_CarDoorInfo_last.front   !=(RxMessage.Data[0]))
        LDR.W    R0,??DataTable21_10
        LDRB     R0,[R0, #+5]
        LDRB     R1,[SP, #+19]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_20
// 4558 			  {
// 4559 			  m_CarDoorInfo_last.front=(RxMessage.Data[0]);
        LDR.W    R0,??DataTable21_10
        LDRB     R1,[SP, #+19]
        STRB     R1,[R0, #+5]
// 4560 			  if((RxMessage.Data[0])==0x60)
        LDRB     R0,[SP, #+19]
        CMP      R0,#+96
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_21
// 4561 				  m_CarDoorInfo.front=1;
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+5]
        B.N      ??Benci_newC_CanBus_work_data_analytic_22
// 4562 			  else
// 4563 				  m_CarDoorInfo.front=0;
??Benci_newC_CanBus_work_data_analytic_21:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
// 4564 			  m_CarDoorInfo.SendFlag = 1;
??Benci_newC_CanBus_work_data_analytic_22:
        LDR.W    R0,??DataTable21_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 4565 			  }
// 4566 	  }
// 4567 
// 4568 	 
// 4569 
// 4570 	 #if 0
// 4571 	if (RxMessage.StdId == Benci_newC_CAN_air_wind_STD_ID && RxMessage.DLC == 8) 
// 4572 		{
// 4573 		if(m_BMW_CAN.benze_air_auto!=RxMessage.Data[2]&0xff)
// 4574 			{
// 4575 		m_BMW_CAN.benze_air_auto=RxMessage.Data[2]&0xff;
// 4576 		m_BMW_CAN.benze_air_Disp=1;
// 4577 			}
// 4578 		if(m_BMW_CAN.benze_air_wind_speed!=RxMessage.Data[7]&0xff)
// 4579 			{
// 4580 		m_BMW_CAN.benze_air_wind_speed=RxMessage.Data[7]&0xff;
// 4581 		m_BMW_CAN.benze_air_Disp=1;
// 4582 			}
// 4583 		if(m_BMW_CAN.benze_air_wind_mode!=RxMessage.Data[6])
// 4584 			{
// 4585 		m_BMW_CAN.benze_air_wind_mode=RxMessage.Data[6];
// 4586 		m_BMW_CAN.benze_air_Disp=1;
// 4587 			}
// 4588 		}
// 4589 	#endif
// 4590 	
// 4591 	if (RxMessage.StdId == Benci_newC_CAN_air_temp_STD_ID && RxMessage.DLC == 8) 
??Benci_newC_CanBus_work_data_analytic_20:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+851
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_23
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_23
// 4592 		{
// 4593 
// 4594 			if(m_BMW_CAN.benze_air_auto!=RxMessage.Data[2]&0xff)
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+35]
        LDRB     R1,[SP, #+21]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_24
        MOVS     R0,#+1
        B.N      ??Benci_newC_CanBus_work_data_analytic_25
??Benci_newC_CanBus_work_data_analytic_24:
        MOVS     R0,#+0
??Benci_newC_CanBus_work_data_analytic_25:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_26
// 4595 			{
// 4596 		m_BMW_CAN.benze_air_auto=RxMessage.Data[2]&0xff;
        LDR.W    R0,??DataTable21
        LDRB     R1,[SP, #+21]
        STRB     R1,[R0, #+35]
// 4597 		m_BMW_CAN.benze_air_Disp=1;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
// 4598 			}
// 4599 		if(m_BMW_CAN.benze_air_wind_speed!=RxMessage.Data[7]&0xff)
??Benci_newC_CanBus_work_data_analytic_26:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+34]
        LDRB     R1,[SP, #+26]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_27
        MOVS     R0,#+1
        B.N      ??Benci_newC_CanBus_work_data_analytic_28
??Benci_newC_CanBus_work_data_analytic_27:
        MOVS     R0,#+0
??Benci_newC_CanBus_work_data_analytic_28:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_29
// 4600 			{
// 4601 		m_BMW_CAN.benze_air_wind_speed=RxMessage.Data[7]&0xff;
        LDR.W    R0,??DataTable21
        LDRB     R1,[SP, #+26]
        STRB     R1,[R0, #+34]
// 4602 		m_BMW_CAN.benze_air_Disp=1;
        LDR.W    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
// 4603 			}
// 4604 		if(m_BMW_CAN.benze_air_wind_mode!=RxMessage.Data[6])
??Benci_newC_CanBus_work_data_analytic_29:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+36]
        LDRB     R1,[SP, #+25]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_30
// 4605 			{
// 4606 		m_BMW_CAN.benze_air_wind_mode=RxMessage.Data[6];
        LDR.N    R0,??DataTable21
        LDRB     R1,[SP, #+25]
        STRB     R1,[R0, #+36]
// 4607 		m_BMW_CAN.benze_air_Disp=1;
        LDR.N    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
// 4608 			}
// 4609 		
// 4610 		if(m_BMW_CAN.benze_air_ac!=RxMessage.Data[1]&0xff)
??Benci_newC_CanBus_work_data_analytic_30:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+42]
        LDRB     R1,[SP, #+20]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_31
        MOVS     R0,#+1
        B.N      ??Benci_newC_CanBus_work_data_analytic_32
??Benci_newC_CanBus_work_data_analytic_31:
        MOVS     R0,#+0
??Benci_newC_CanBus_work_data_analytic_32:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_33
// 4611 			{
// 4612 		m_BMW_CAN.benze_air_ac=RxMessage.Data[1]&0xff;
        LDR.N    R0,??DataTable21
        LDRB     R1,[SP, #+20]
        STRB     R1,[R0, #+42]
// 4613 		m_BMW_CAN.benze_air_Disp=1;
        LDR.N    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
// 4614 			}
// 4615 		if(m_BMW_CAN.benze_air_left_temperature!=RxMessage.Data[4])
??Benci_newC_CanBus_work_data_analytic_33:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+45]
        LDRB     R1,[SP, #+23]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_34
// 4616 			{
// 4617 		m_BMW_CAN.benze_air_left_temperature=RxMessage.Data[4];
        LDR.N    R0,??DataTable21
        LDRB     R1,[SP, #+23]
        STRB     R1,[R0, #+45]
// 4618 		m_BMW_CAN.benze_air_Disp=1;
        LDR.N    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
// 4619 			}
// 4620 		if(m_BMW_CAN.benze_air_right_temperature!=RxMessage.Data[5])
??Benci_newC_CanBus_work_data_analytic_34:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+46]
        LDRB     R1,[SP, #+24]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_23
// 4621 			{
// 4622 		m_BMW_CAN.benze_air_right_temperature=RxMessage.Data[5];
        LDR.N    R0,??DataTable21
        LDRB     R1,[SP, #+24]
        STRB     R1,[R0, #+46]
// 4623 		m_BMW_CAN.benze_air_Disp=1;
        LDR.N    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
// 4624 			}
// 4625 		}
// 4626 
// 4627 	
// 4628 	
// 4629     if (RxMessage.StdId == Benci_newC_CAN_RADA_STD_ID && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_23:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+1075
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_35
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_35
// 4630     {
// 4631     	//if(RxMessage.Data[0]==0x80)
// 4632      		
// 4633 		//else if(RxMessage.Data[0]==0x00)
// 4634 		//	m_RADAR.fDisp=0;
// 4635 		if(RxMessage.Data[0]==0||RxMessage.Data[0]==0x99)
        LDRB     R0,[SP, #+19]
        CMP      R0,#+0
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_36
        LDRB     R0,[SP, #+19]
        CMP      R0,#+153
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_37
// 4636 			m_RADAR.power_on_statu=0;
??Benci_newC_CanBus_work_data_analytic_36:
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
        B.N      ??Benci_newC_CanBus_work_data_analytic_38
// 4637 		else
// 4638 			m_RADAR.power_on_statu=1;
??Benci_newC_CanBus_work_data_analytic_37:
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+1
        STRB     R1,[R0, #+9]
// 4639 		if(m_RADAR_last_buff[0]!=RxMessage.Data[0])
??Benci_newC_CanBus_work_data_analytic_38:
        LDR.N    R0,??DataTable21_13
        LDRB     R0,[R0, #+0]
        LDRB     R1,[SP, #+19]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_39
// 4640 			{
// 4641 			m_RADAR.fDisp=1;
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
// 4642 			m_RADAR_last_buff[0]=RxMessage.Data[0];
        LDRB     R0,[SP, #+19]
        LDR.N    R1,??DataTable21_13
        STRB     R0,[R1, #+0]
// 4643 			}
// 4644 		if(m_RADAR_last_buff[1]!=RxMessage.Data[3])
??Benci_newC_CanBus_work_data_analytic_39:
        LDR.N    R0,??DataTable21_13
        LDRB     R0,[R0, #+1]
        LDRB     R1,[SP, #+22]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_40
// 4645 			{
// 4646 			m_RADAR.fDisp=1;
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
// 4647 			m_RADAR_last_buff[1]=RxMessage.Data[3];
        LDR.N    R0,??DataTable21_13
        LDRB     R1,[SP, #+22]
        STRB     R1,[R0, #+1]
// 4648 			}
// 4649 		
// 4650 			m_RADAR.uRear_Left    =(RxMessage.Data[3]>>0)&0x0F;
??Benci_newC_CanBus_work_data_analytic_40:
        LDRB     R0,[SP, #+22]
        ANDS     R0,R0,#0xF
        LDR.N    R1,??DataTable21_12
        STRB     R0,[R1, #+4]
// 4651             m_RADAR.uRear_MidLeft =(RxMessage.Data[3]>>0)&0x0F;
        LDRB     R0,[SP, #+22]
        ANDS     R0,R0,#0xF
        LDR.N    R1,??DataTable21_12
        STRB     R0,[R1, #+5]
// 4652             m_RADAR.uRear_MidRight=(RxMessage.Data[3]>>4)&0x0F;
        LDRB     R0,[SP, #+22]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        LDR.N    R1,??DataTable21_12
        STRB     R0,[R1, #+6]
// 4653             m_RADAR.uRear_Right   =(RxMessage.Data[3]>>4)&0x0F;
        LDRB     R0,[SP, #+22]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        LDR.N    R1,??DataTable21_12
        STRB     R0,[R1, #+7]
// 4654 			
// 4655 			m_RADAR.uFront_Left    =(RxMessage.Data[0]>>0)&0x0F;
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        LDR.N    R1,??DataTable21_12
        STRB     R0,[R1, #+0]
// 4656             m_RADAR.uFront_MidLeft =(RxMessage.Data[0]>>0)&0x0F;
        LDRB     R0,[SP, #+19]
        ANDS     R0,R0,#0xF
        LDR.N    R1,??DataTable21_12
        STRB     R0,[R1, #+1]
// 4657             m_RADAR.uFront_MidRight=(RxMessage.Data[0]>>4)&0x0F;
        LDRB     R0,[SP, #+19]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        LDR.N    R1,??DataTable21_12
        STRB     R0,[R1, #+2]
// 4658             m_RADAR.uFront_Right   =(RxMessage.Data[0]>>4)&0x0F;
        LDRB     R0,[SP, #+19]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        LDR.N    R1,??DataTable21_12
        STRB     R0,[R1, #+3]
// 4659     }
// 4660 
// 4661 if (RxMessage.StdId == Benci_newC_CAN_media_statu_STD_TYPE_ID && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_35:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+729
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_41
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_41
// 4662 {
// 4663 	if(Sys.Car_Main_Source!=RxMessage.Data[2])
        LDR.N    R0,??DataTable20_1
        LDRB     R0,[R0, #+3]
        LDRB     R1,[SP, #+21]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_41
// 4664 		{
// 4665 		if(Sys.Car_Main_Source==0x01&&RxMessage.Data[2]==0x05)
        LDR.N    R0,??DataTable20_1
        LDRB     R0,[R0, #+3]
        CMP      R0,#+1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_42
        LDRB     R0,[SP, #+21]
        CMP      R0,#+5
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_41
// 4666 			;
// 4667 		else
// 4668 			{
// 4669 	 Sys.Car_Main_Source=RxMessage.Data[2];
??Benci_newC_CanBus_work_data_analytic_42:
        LDR.N    R0,??DataTable20_1
        LDRB     R1,[SP, #+21]
        STRB     R1,[R0, #+3]
// 4670 	 Sys.Car_updata_flag=1;
        LDR.N    R0,??DataTable20_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
// 4671 			}
// 4672 		}
// 4673 }
// 4674 
// 4675 //Benci_newC_CAN_mid_control_KEY_STD_ID
// 4676 //Benci_newC_CAN_car_touch1_STD_ID
// 4677 if (RxMessage.StdId == 0x1ef && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_41:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+495
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_43
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_43
// 4678 {
// 4679 static BYTE can_touch_buff[8];
// 4680 for(int i=0;i<8;i++)
        MOVS     R0,#+0
??Benci_newC_CanBus_work_data_analytic_44:
        CMP      R0,#+8
        BGE.N    ??Benci_newC_CanBus_work_data_analytic_43
// 4681 	 can_touch_buff[i]=RxMessage.Data[i];
        ADD      R1,SP,#+8
        ADDS     R1,R0,R1
        LDRB     R1,[R1, #+11]
        LDR.N    R2,??DataTable21_14
        STRB     R1,[R0, R2]
        ADDS     R0,R0,#+1
        B.N      ??Benci_newC_CanBus_work_data_analytic_44
// 4682 }
// 4683 
// 4684 if (RxMessage.StdId == Benci_newC_CAN_car_TFT_ONOFF_STD_ID && RxMessage.DLC == 5) //radar INFO
??Benci_newC_CanBus_work_data_analytic_43:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+505
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_45
        LDRB     R0,[SP, #+18]
        CMP      R0,#+5
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_45
// 4685 {
// 4686 	 Sys_CAN_light.car_tft_onoff=RxMessage.Data[2];
        LDR.N    R0,??DataTable21_9
        LDRB     R1,[SP, #+21]
        STRB     R1,[R0, #+4]
// 4687 }
// 4688 
// 4689 
// 4690 
// 4691 
// 4692 if (RxMessage.StdId == Benci_newC_CAN_font_rec_TYPE_ID && RxMessage.DLC == 8) //radar INFO
??Benci_newC_CanBus_work_data_analytic_45:
        LDR      R0,[SP, #+8]
        MOVW     R1,#+985
        CMP      R0,R1
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_46
        LDRB     R0,[SP, #+18]
        CMP      R0,#+8
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_46
// 4693 {
// 4694 	if(m_BMW_CAN.Car_font_rec_flag!=RxMessage.Data[1])
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+72]
        LDRB     R1,[SP, #+20]
        CMP      R0,R1
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_47
// 4695 	 	m_BMW_CAN.Car_font_rec_flag=RxMessage.Data[1];
        LDR.N    R0,??DataTable21
        LDRB     R1,[SP, #+20]
        STRB     R1,[R0, #+72]
// 4696 
// 4697 		if(Sys.Main_Source==SRC_NAVI&&m_BMW_CAN.Car_font_rec_flag)
??Benci_newC_CanBus_work_data_analytic_47:
        LDR.N    R0,??DataTable20_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_48
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+72]
        CMP      R0,#+0
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_48
// 4698 			{
// 4699 	 	LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        MOVS     R0,#+33
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4700 		m_BMW_CAN.Car_font_rec_source=1;
        LDR.N    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+73]
        B.N      ??Benci_newC_CanBus_work_data_analytic_46
// 4701 			}
// 4702 		else if(Sys.Main_Source==SRC_CarMedia&&m_BMW_CAN.Car_font_rec_source&&m_BMW_CAN.Car_font_rec_flag==0)
??Benci_newC_CanBus_work_data_analytic_48:
        LDR.N    R0,??DataTable20_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+18
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_49
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+73]
        CMP      R0,#+0
        BEQ.N    ??Benci_newC_CanBus_work_data_analytic_49
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+72]
        CMP      R0,#+0
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_49
// 4703 			{
// 4704 			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
        MOVS     R0,#+32
          CFI FunCall LF_CanBus_SendControlCmd
        BL       LF_CanBus_SendControlCmd
// 4705 			m_BMW_CAN.Car_font_rec_source=0;
        LDR.N    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+73]
        B.N      ??Benci_newC_CanBus_work_data_analytic_46
// 4706 			}
// 4707 		else if(m_BMW_CAN.Car_font_rec_flag==0)
??Benci_newC_CanBus_work_data_analytic_49:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+72]
        CMP      R0,#+0
        BNE.N    ??Benci_newC_CanBus_work_data_analytic_46
// 4708 			m_BMW_CAN.Car_font_rec_source=0;
        LDR.N    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+73]
// 4709 }
// 4710 
// 4711 
// 4712 
// 4713 
// 4714 }
??Benci_newC_CanBus_work_data_analytic_46:
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock26

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uPreMediaStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uPrePreMediaStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uPreAirStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??uPrePreAirStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??can_touch_buff:
        DS8 8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function Benci_newC_Power_On
          CFI NoCalls
        THUMB
// 4715 void Benci_newC_Power_On(CanRxMsg RxMessage)
// 4716 {
Benci_newC_Power_On:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 4717 }
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
// 4718 #endif
// 4719 
// 4720 
// 4721 #if 1 //Miller.Tao,2014-09-09
// 4722 /*define unity API for All CAN function*/
// 4723 
// 4724 /*
// 4725 ========================
// 4726 initial can varibale
// 4727 ========================
// 4728 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function LF_CanBus_InitVar
          CFI NoCalls
        THUMB
// 4729 void LF_CanBus_InitVar(void)
// 4730 {
// 4731     m_BMW_CAN.benze_Steering_angle[0] = 0;
LF_CanBus_InitVar:
        LDR.N    R0,??DataTable21
        MOVS     R1,#+0
        STRH     R1,[R0, #+50]
// 4732 
// 4733 	m_RADAR.uRear_Left    =0;
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
// 4734     m_RADAR.uRear_MidLeft =0;
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
// 4735     m_RADAR.uRear_MidRight=0;
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
// 4736     m_RADAR.uRear_Right   =0;
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 4737 
// 4738 	m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        LDR.N    R0,??DataTable21
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
// 4739 	m_RADAR.fDisp=0;
        LDR.N    R0,??DataTable21_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
// 4740 
// 4741 	can_door_last_statu=0x50;
        LDR.N    R0,??DataTable21_15
        MOVS     R1,#+80
        STRB     R1,[R0, #+0]
// 4742 	door_index=0;
        LDR.N    R0,??DataTable21_16
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 4743 	m_CarDoorInfo.show_id=0;
        LDR.N    R0,??DataTable21_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
// 4744    
// 4745 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 4746 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function LF_CanBus_SendControlCmd
          CFI NoCalls
        THUMB
// 4747 void LF_CanBus_SendControlCmd(BYTE cmd)
// 4748 {
// 4749     m_BMW_CAN.uCanSendCmdIndex++;
LF_CanBus_SendControlCmd:
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+28]
        ADDS     R1,R1,#+1
        LDR.N    R2,??DataTable21
        STRB     R1,[R2, #+28]
// 4750     if (m_BMW_CAN.uCanSendCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+28]
        CMP      R1,#+15
        BCC.N    ??LF_CanBus_SendControlCmd_0
// 4751     {
// 4752         m_BMW_CAN.uCanSendCmdIndex = 0;
        LDR.N    R1,??DataTable21
        MOVS     R2,#+0
        STRB     R2,[R1, #+28]
// 4753     }
// 4754     m_BMW_CAN.uCanSendCmdBuf[m_BMW_CAN.uCanSendCmdIndex] = cmd;
??LF_CanBus_SendControlCmd_0:
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+28]
        LDR.N    R2,??DataTable21
        ADDS     R1,R1,R2
        STRB     R0,[R1, #+13]
// 4755 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     CAN_turner

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     EEPROM_DATA
// 4756 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function LF_CanBus_FetchCmd
          CFI NoCalls
        THUMB
// 4757  BYTE LF_CanBus_FetchCmd(void)
// 4758 {
// 4759     BYTE temp;
// 4760     if (m_BMW_CAN.uCanFetchCmdIndex != m_BMW_CAN.uCanSendCmdIndex)
LF_CanBus_FetchCmd:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+29]
        LDR.N    R2,??DataTable21
        LDRB     R2,[R2, #+28]
        CMP      R0,R2
        BEQ.N    ??LF_CanBus_FetchCmd_0
// 4761     {
// 4762 
// 4763         m_BMW_CAN.uCanFetchCmdIndex++;
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+29]
        ADDS     R0,R0,#+1
        LDR.N    R2,??DataTable21
        STRB     R0,[R2, #+29]
// 4764         if (m_BMW_CAN.uCanFetchCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+29]
        CMP      R0,#+15
        BCC.N    ??LF_CanBus_FetchCmd_1
// 4765         {
// 4766             m_BMW_CAN.uCanFetchCmdIndex = 0;
        LDR.N    R0,??DataTable21
        MOVS     R2,#+0
        STRB     R2,[R0, #+29]
// 4767         }
// 4768         temp = m_BMW_CAN.uCanFetchCmdIndex;
??LF_CanBus_FetchCmd_1:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+29]
        MOVS     R1,R0
// 4769 
// 4770         return m_BMW_CAN.uCanSendCmdBuf[temp];
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable21
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+13]
        B.N      ??LF_CanBus_FetchCmd_2
// 4771 
// 4772 
// 4773     }
// 4774     else
// 4775     {
// 4776         return BENZE_CMD_NULL;
??LF_CanBus_FetchCmd_0:
        MOVS     R0,#+255
??LF_CanBus_FetchCmd_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
// 4777     }
// 4778 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     m_BMW_CAN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     ??wBounceCnt_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     ??uCKeepFlag_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_3:
        DC32     ??uRetKeepFlag_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_4:
        DC32     Can_key_cmd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_5:
        DC32     ??uPreMediaStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_6:
        DC32     ??uPrePreMediaStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_7:
        DC32     ??uPreAirStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_8:
        DC32     ??uPrePreAirStatus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_9:
        DC32     Sys_CAN_light

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_10:
        DC32     m_CarDoorInfo_last

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_11:
        DC32     m_CarDoorInfo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_12:
        DC32     m_RADAR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_13:
        DC32     m_RADAR_last_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_14:
        DC32     ??can_touch_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_15:
        DC32     can_door_last_statu

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_16:
        DC32     door_index
// 4779 //define a function to config can module

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function LF_CanBus_Config
        THUMB
// 4780 void LF_CanBus_Config(void)
// 4781 {
LF_CanBus_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 4782     #if LF_CAN_TYPE == BWMX1CAN
// 4783    // BWM_X1_CanBus_Config();
// 4784 	#endif
// 4785 
// 4786 	#if LF_CAN_TYPE == AudiQ3CAN
// 4787     //Audi_Q3_CanBus_Config();
// 4788 	#endif
// 4789 
// 4790 	#if LF_CAN_TYPE == BWM5SCAN
// 4791         BWM_5S_CanBus_Config();
// 4792 	#endif 
// 4793 
// 4794 	#if LF_CAN_TYPE == Benci_newC
// 4795         Benci_newC_CanBus_Config();
          CFI FunCall Benci_newC_CanBus_Config
        BL       Benci_newC_CanBus_Config
// 4796 	#endif 
// 4797 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock31
// 4798 
// 4799 //工作信息

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function LF_CanBus_work_data_analytic
        THUMB
// 4800 void LF_CanBus_work_data_analytic(CanRxMsg RxMessage)
// 4801 {
LF_CanBus_work_data_analytic:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 4802    #if LF_CAN_TYPE == BWMX1CAN
// 4803    //工作信息
// 4804    //BWM_X1_CanBus_work_data_analytic(RxMessage);
// 4805    #endif
// 4806 
// 4807    #if LF_CAN_TYPE == AudiQ3CAN
// 4808    //工作信息
// 4809    //Audi_Q3_CanBus_work_data_analytic(RxMessage);
// 4810    #endif
// 4811     #if LF_CAN_TYPE == BWM5SCAN
// 4812    //工作信息
// 4813    BWM_5S_CanBus_work_data_analytic(RxMessage);
// 4814    #endif
// 4815 
// 4816    #if LF_CAN_TYPE == Benci_newC
// 4817    //工作信息
// 4818    Benci_newC_CanBus_work_data_analytic(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall Benci_newC_CanBus_work_data_analytic
        BL       Benci_newC_CanBus_work_data_analytic
// 4819    #endif
// 4820 }
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock32
// 4821 
// 4822 //方控按键处理

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function LF_CanBus_SteerKey_Task
        THUMB
// 4823 void LF_CanBus_SteerKey_Task(CanRxMsg RxMessage)
// 4824 {
LF_CanBus_SteerKey_Task:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 4825    #if LF_CAN_TYPE == BWMX1CAN
// 4826    //BWM_X1_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
// 4827    #endif
// 4828    #if LF_CAN_TYPE == AudiQ3CAN
// 4829   // Audi_Q3_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
// 4830    #endif
// 4831    #if LF_CAN_TYPE == BWM5SCAN
// 4832    BWM_5S_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
// 4833    BWM_5S_CanBus_FetchSteerKeyInfo_Type2(RxMessage);
// 4834    BWM_5S_CanBus_FetchSteerKeyInfo_Type3(RxMessage);
// 4835    BWM_5S_CanBus_FetchSteerKeyInfo_Type4(RxMessage);
// 4836   // BWM_5S_CanBus_FetchSteerKeyInfo_Type5(RxMessage);
// 4837    #endif
// 4838 
// 4839    #if LF_CAN_TYPE == Benci_newC
// 4840    //工作信息
// 4841    Benci_newC_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall Benci_newC_CanBus_FetchSteerKeyInfo_Type1
        BL       Benci_newC_CanBus_FetchSteerKeyInfo_Type1
// 4842    #endif
// 4843 }
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock33
// 4844 //档位处理

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function LF_CANBus_Stalls_Task
        THUMB
// 4845 void LF_CANBus_Stalls_Task(CanRxMsg RxMessage)
// 4846 {
LF_CANBus_Stalls_Task:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 4847    #if LF_CAN_TYPE == BWMX1CAN
// 4848    //BWM_X1_Can_FetchStallsInfo(RxMessage);
// 4849    #endif
// 4850    #if LF_CAN_TYPE == AudiQ3CAN
// 4851    //Audi_Q3_Can_FetchStallsInfo(RxMessage);
// 4852    #endif
// 4853 
// 4854    #if LF_CAN_TYPE == BWM5SCAN
// 4855    BWM_5S_Can_FetchStallsInfo(RxMessage);
// 4856    #endif
// 4857 
// 4858       #if LF_CAN_TYPE == Benci_newC
// 4859    Benci_newC_Can_FetchStallsInfo(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall Benci_newC_Can_FetchStallsInfo
        BL       Benci_newC_Can_FetchStallsInfo
// 4860    #endif
// 4861 }
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock34
// 4862 //圆形手柄和按键处理

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function LF_CANBus_Knob_Task
          CFI NoCalls
        THUMB
// 4863 void LF_CANBus_Knob_Task(CanRxMsg RxMessage)
// 4864 {
LF_CANBus_Knob_Task:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 4865    #if LF_CAN_TYPE == BWMX1CAN
// 4866    
// 4867    #endif 
// 4868 }
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock35
// 4869 //对应,AudiCan_FetchCmd

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function LF_CanBus_FetchCmdTask
        THUMB
// 4870 void LF_CanBus_FetchCmdTask(void)
// 4871 {
LF_CanBus_FetchCmdTask:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
// 4872      #if LF_CAN_TYPE == BWMX1CAN
// 4873     // BWM_X1_CanBus_FetchCmdTask();
// 4874 	 #endif
// 4875 
// 4876 	  #if LF_CAN_TYPE == AudiQ3CAN
// 4877     // Audi_Q3_CanBus_FetchCmdTask();
// 4878 	 #endif
// 4879 
// 4880 	 #if LF_CAN_TYPE == BWM5SCAN
// 4881      BWM_5S_CanBus_FetchCmdTask();
// 4882 	 #endif	 
// 4883 
// 4884 	 	 #if LF_CAN_TYPE == Benci_newC
// 4885      Benci_newC_CanBus_FetchCmdTask();
          CFI FunCall Benci_newC_CanBus_FetchCmdTask
        BL       Benci_newC_CanBus_FetchCmdTask
// 4886 	 #endif	 
// 4887 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock36
// 4888 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function LF_CanBus_PowerOn
        THUMB
// 4889 void LF_CanBus_PowerOn(CanRxMsg RxMessage)
// 4890 {
LF_CanBus_PowerOn:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 4891 	#if LF_CAN_TYPE == BWM5SCAN
// 4892 	
// 4893 	BMW_5S_Power_On(RxMessage);
// 4894 
// 4895 	#endif	 
// 4896 	 #if LF_CAN_TYPE == AudiQ3CAN
// 4897 	// Audi_Q3_Power_On(RxMessage);
// 4898 
// 4899 	 #endif
// 4900 
// 4901 	 	#if LF_CAN_TYPE == Benci_newC
// 4902 	
// 4903 	Benci_newC_Power_On(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall Benci_newC_Power_On
        BL       Benci_newC_Power_On
// 4904 
// 4905 	#endif
// 4906 }
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock37
// 4907 //MCU 往CAN BUS上发送数据

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function LF_CanBus_Contrl_Task
          CFI NoCalls
        THUMB
// 4908 void LF_CanBus_Contrl_Task(void)
// 4909 {
// 4910 
// 4911 }
LF_CanBus_Contrl_Task:
        BX       LR               ;; return
          CFI EndBlock cfiBlock38
// 4912 //////////////the 2 following functions is for CAN1,CAN2 ISR ///////////////////////
// 4913 /*==========================================
// 4914 *Func:CAN1_USER_HANDLER
// 4915 *description:handle user's application code of CAN1,a unity interface
// 4916 *Author:Miller.Tao
// 4917 *date:20140818
// 4918 =============================================*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function CAN1_USER_HANDLER
          CFI NoCalls
        THUMB
// 4919 void CAN1_USER_HANDLER(CanRxMsg RxMessage)
// 4920 {
CAN1_USER_HANDLER:
        PUSH     {R0-R3}
          CFI CFA R13+16
// 4921 	  #if LF_CAN_TYPE == AudiQ3CAN
// 4922 
// 4923 	  
// 4924 	  #endif
// 4925 
// 4926 	
// 4927 }
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock39
// 4928 
// 4929 
// 4930 /*==========================================
// 4931 *Func:CAN2_USER_HANDLER
// 4932 *description:handle user's application code of CAN2,a unity interface
// 4933 *Author:Miller.Tao
// 4934 *date:20140818
// 4935 =============================================*/
// 4936 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function CAN2_USER_HANDLER
        THUMB
// 4937 void CAN2_USER_HANDLER(CanRxMsg RxMessage)
// 4938 {
CAN2_USER_HANDLER:
        PUSH     {R0-R3}
          CFI CFA R13+16
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -20)
          CFI CFA R13+24
// 4939      #if LF_CAN_TYPE == BWMX1CAN
// 4940      LF_CANBus_Stalls_Task(RxMessage); 
// 4941 	 LF_CanBus_SteerKey_Task(RxMessage);
// 4942 	 LF_CanBus_work_data_analytic(RxMessage);
// 4943 	 //BWM_X1_CanBus_FetchSteerAngleInfo(RxMessage);
// 4944 	 #endif
// 4945 
// 4946 
// 4947 	  #if LF_CAN_TYPE == AudiQ3CAN
// 4948      LF_CANBus_Stalls_Task(RxMessage); 
// 4949 	 LF_CanBus_SteerKey_Task(RxMessage);
// 4950 	 LF_CanBus_work_data_analytic(RxMessage);
// 4951 	 //Audi_Q3_CanBus_FetchSteerAngleInfo(RxMessage);
// 4952 	 #endif
// 4953 	 
// 4954 	 #if LF_CAN_TYPE == BWM5SCAN
// 4955      LF_CANBus_Stalls_Task(RxMessage); 
// 4956 	 LF_CanBus_SteerKey_Task(RxMessage);
// 4957 	 LF_CanBus_work_data_analytic(RxMessage);
// 4958 	 BWM_5S_CanBus_FetchSteerAngleInfo(RxMessage);
// 4959 	 #endif
// 4960 
// 4961 	 	 #if LF_CAN_TYPE == Benci_newC
// 4962      LF_CANBus_Stalls_Task(RxMessage); 
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall LF_CANBus_Stalls_Task
        BL       LF_CANBus_Stalls_Task
// 4963 	 LF_CanBus_SteerKey_Task(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall LF_CanBus_SteerKey_Task
        BL       LF_CanBus_SteerKey_Task
// 4964 	 LF_CanBus_work_data_analytic(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall LF_CanBus_work_data_analytic
        BL       LF_CanBus_work_data_analytic
// 4965 	 Benci_newC_CanBus_FetchSteerAngleInfo(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall Benci_newC_CanBus_FetchSteerAngleInfo
        BL       Benci_newC_CanBus_FetchSteerAngleInfo
// 4966 	 Benci_newC_CanBus_mid_control_key_fun(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall Benci_newC_CanBus_mid_control_key_fun
        BL       Benci_newC_CanBus_mid_control_key_fun
// 4967 	 Benci_newC_CanBus_mid_control_key2_fun(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall Benci_newC_CanBus_mid_control_key2_fun
        BL       Benci_newC_CanBus_mid_control_key2_fun
// 4968 	 Benci_newC_CanBus_FetchSteerKeyInfo_Type2(RxMessage);
        ADD      R1,SP,#+8
        SUB      SP,SP,#+16
          CFI CFA R13+40
        MOV      R0,SP
        MOVS     R2,#+20
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        POP      {R0-R3}
          CFI CFA R13+24
          CFI FunCall Benci_newC_CanBus_FetchSteerKeyInfo_Type2
        BL       Benci_newC_CanBus_FetchSteerKeyInfo_Type2
// 4969 	 #endif
// 4970 }
        POP      {R0}
          CFI CFA R13+20
        LDR      PC,[SP], #+20    ;; return
          CFI EndBlock cfiBlock40

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 4971 
// 4972 #endif
// 4973 
// 4974 
// 4975 /**************************************************************************/
// 4976 /*                                                                        */
// 4977 /**************************************************************************/
// 4978 #undef _BENZE_BUS_C_
// 
//   256 bytes in section .bss
//   860 bytes in section .rodata
// 9 790 bytes in section .text
// 
// 9 790 bytes of CODE  memory
//   860 bytes of CONST memory
//   256 bytes of DATA  memory
//
//Errors: none
//Warnings: 6
