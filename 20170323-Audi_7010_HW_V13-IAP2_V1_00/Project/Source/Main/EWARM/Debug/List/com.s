///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:43 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\com.c                       /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\com.c -D                    /
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
//                    \Debug\List\com.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME com

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN BackLight
        EXTERN Delay_1ms
        EXTERN EEPROM_DATA
        EXTERN FLASH_ErasePage
        EXTERN FLASH_Lock
        EXTERN FLASH_ProgramWord
        EXTERN FLASH_Unlock
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN Menu_page_DrawImage
        EXTERN Menu_page_Draw_button
        EXTERN Navi_osd_update_flag
        EXTERN PWM_Configuration
        EXTERN SpiOsdWinHWEnable
        EXTERN Sys_CAN_light
        EXTERN TW8836_Src
        EXTERN TW8836_Write
        EXTERN TW8836_WritePage
        EXTERN Time_100ms_arrival
        EXTERN Time_10ms_arrival
        EXTERN Time_1s_arrival
        EXTERN Time_300ms_arrival
        EXTERN Time_500ms_arrival
        EXTERN Time_50ms_arrival
        EXTERN Time_5s_arrival
        EXTERN Time_minute_arrival
        EXTERN door_index
        EXTERN door_show_buff
        EXTERN gNaviCnt
        EXTERN gNaviSendFlag
        EXTERN gNaviSystemOn
        EXTERN g_GPS_DATA
        EXTERN m_BMW_CAN
        EXTERN m_CarDoorInfo
        EXTERN m_RADAR

        PUBLIC ADC_GetValue
        PUBLIC APPplay_Command
        PUBLIC APPplay_function
        PUBLIC AUX_Function
        PUBLIC Adjust_Source
        PUBLIC Adjust_menu_Source
        PUBLIC Audioplay_Command
        PUBLIC Audioplay_MUL_Function
        PUBLIC Audioplay_current_track
        PUBLIC Audioplay_current_track_last
        PUBLIC Audioplay_function
        PUBLIC Audioplay_play_hour
        PUBLIC Audioplay_play_minute
        PUBLIC Audioplay_play_second
        PUBLIC Audioplay_play_status
        PUBLIC Audioplay_play_status_last
        PUBLIC Audioplay_totle_hour
        PUBLIC Audioplay_totle_minute
        PUBLIC Audioplay_totle_second
        PUBLIC Audioplay_totle_track
        PUBLIC Audioplay_totle_track_last
        PUBLIC BLUETOOTH_Command
        PUBLIC BLUETOOTH_Function
        PUBLIC BLUETOOTH_MUL_Function
        PUBLIC BT_call_status
        PUBLIC BT_call_status_last
        PUBLIC BT_connect_status
        PUBLIC BT_connect_status_last
        PUBLIC BT_music_status
        PUBLIC BT_music_status_last
        PUBLIC BT_number
        PUBLIC BT_voice_status
        PUBLIC BackAllCheck
        PUBLIC CAM_Function
        PUBLIC CBackTrack_GetAngleIndex
        PUBLIC CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB
        PUBLIC CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB
        PUBLIC Cambox_Function
        PUBLIC Cambox_UartSend
        PUBLIC Door_data_pro_fun
        PUBLIC EE_Init
        PUBLIC GPS_Function
        PUBLIC GPS_big_show
        PUBLIC GPS_small_show
        PUBLIC GetLockCode
        PUBLIC IPOD_function
        PUBLIC Ipod_Command
        PUBLIC Ipod_MUL_Function
        PUBLIC Read_Eerom_Data
        PUBLIC Save_Eerom_Data
        PUBLIC Source_init
        PUBLIC Source_init_twozone
        PUBLIC Time_Cnt_Opertion
        PUBLIC Turn_source_power
        PUBLIC VCR_Command
        PUBLIC VCR_function
        PUBLIC VIDEO_LCD_OUT_buf
        PUBLIC VIDEO_RCA_OUT_buf
        PUBLIC Video_FMS6501_RCA_switch
        PUBLIC Video_FMS6501_REC_switch
        PUBLIC Video_FMS6501_init
        PUBLIC Video_FMS6501_switch
        PUBLIC Video_switch
        PUBLIC Videoplay_Command
        PUBLIC Videoplay_MUL_Function
        PUBLIC Videoplay_current_track
        PUBLIC Videoplay_function
        PUBLIC Videoplay_play_hour
        PUBLIC Videoplay_play_minute
        PUBLIC Videoplay_play_second
        PUBLIC Videoplay_play_status
        PUBLIC Videoplay_totle_hour
        PUBLIC Videoplay_totle_minute
        PUBLIC Videoplay_totle_second
        PUBLIC Videoplay_totle_track
        PUBLIC Write_Valid_Data
        PUBLIC ipod_current_track
        PUBLIC ipod_current_track_last
        PUBLIC ipod_play_hour
        PUBLIC ipod_play_minute
        PUBLIC ipod_play_second
        PUBLIC ipod_play_status
        PUBLIC ipod_play_status_last
        PUBLIC ipod_totle_hour
        PUBLIC ipod_totle_minute
        PUBLIC ipod_totle_second
        PUBLIC ipod_totle_track
        PUBLIC ipod_totle_track_last
        PUBLIC source_process_fun
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\com.c
//    1 #define _COM_C_
//    2 
//    3 #include "compile.h"
//    4 #include "main.h"
//    5 #include "libr.h"
//    6 
//    7 #include "stm32f10x_conf.h"
//    8 #include "port.h"
//    9 #include "com.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE VIDEO_LCD_OUT_buf
VIDEO_LCD_OUT_buf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE VIDEO_RCA_OUT_buf
VIDEO_RCA_OUT_buf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_play_status
Audioplay_play_status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_play_hour
Audioplay_play_hour:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_play_minute
Audioplay_play_minute:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_play_second
Audioplay_play_second:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD Audioplay_current_track
Audioplay_current_track:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD Audioplay_totle_track
Audioplay_totle_track:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_totle_hour
Audioplay_totle_hour:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_totle_minute
Audioplay_totle_minute:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_totle_second
Audioplay_totle_second:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Videoplay_play_status
Videoplay_play_status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Videoplay_play_hour
Videoplay_play_hour:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Videoplay_play_minute
Videoplay_play_minute:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Videoplay_play_second
Videoplay_play_second:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD Videoplay_current_track
Videoplay_current_track:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD Videoplay_totle_track
Videoplay_totle_track:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Videoplay_totle_hour
Videoplay_totle_hour:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Videoplay_totle_minute
Videoplay_totle_minute:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Videoplay_totle_second
Videoplay_totle_second:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_play_status
ipod_play_status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_play_hour
ipod_play_hour:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_play_minute
ipod_play_minute:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_play_second
ipod_play_second:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD ipod_current_track
ipod_current_track:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD ipod_totle_track
ipod_totle_track:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_totle_hour
ipod_totle_hour:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_totle_minute
ipod_totle_minute:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_totle_second
ipod_totle_second:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE BT_connect_status
BT_connect_status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE BT_call_status
BT_call_status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE BT_voice_status
BT_voice_status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE BT_music_status
BT_music_status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute BYTE BT_number[20]
BT_number:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE BT_connect_status_last
BT_connect_status_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE BT_music_status_last
BT_music_status_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE BT_call_status_last
BT_call_status_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_play_status_last
Audioplay_play_status_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_current_track_last
Audioplay_current_track_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Audioplay_totle_track_last
Audioplay_totle_track_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_play_status_last
ipod_play_status_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_current_track_last
ipod_current_track_last:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE ipod_totle_track_last
ipod_totle_track_last:
        DS8 1
//   10 #include "i2c_driver.h"
//   11 
//   12 #include "pannel.h"
//   13 #include "arm.h"
//   14 
//   15 #include "tw8836_func.h"
//   16 
//   17 #include        "pannel.h"
//   18 #include "Tw8836_const.h"
//   19 #include "includes.h"
//   20 /*
//   21 handle some time event when time count arrival
//   22 by miller.tao20150731
//   23 
//   24 
//   25 */
//   26 extern BYTE i2ctest;

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Time_Cnt_Opertion
        THUMB
//   27 void Time_Cnt_Opertion(void)
//   28 {	
Time_Cnt_Opertion:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   29 	if(Time_10ms_arrival)
        LDR.W    R0,??DataTable10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_0
//   30 	{
//   31 		Time_10ms_arrival=0;		
        LDR.W    R0,??DataTable10
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   32 	}
//   33 	
//   34 	//------------50ms------------------
//   35 	if(Time_50ms_arrival)
??Time_Cnt_Opertion_0:
        LDR.W    R0,??DataTable10_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_1
//   36 	{
//   37 		Time_50ms_arrival=0;
        LDR.W    R0,??DataTable10_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   38 			if(Sys_CAN_light.car_tft_onoff==0x3c)
        LDR.W    R0,??DataTable10_2
        LDRB     R0,[R0, #+4]
        CMP      R0,#+60
        BNE.N    ??Time_Cnt_Opertion_2
//   39 			{
//   40 		if(Sys.WVedio_show_timer==1)
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, #+68]
        CMP      R0,#+1
        BNE.N    ??Time_Cnt_Opertion_1
//   41 			{
//   42 			Sys.WVedio_show_timer=0;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
//   43 			BackLight(1);
        MOVS     R0,#+1
          CFI FunCall BackLight
        BL       BackLight
        B.N      ??Time_Cnt_Opertion_1
//   44 			//TW8836_WritePage(0x02);
//   45 			//TW8836_Write(0x1e, TW8836_Read(0x1e)&0xfe);
//   46 			}
//   47 			}
//   48 		else if(Sys_CAN_light.car_tft_onoff==0x34)
??Time_Cnt_Opertion_2:
        LDR.W    R0,??DataTable10_2
        LDRB     R0,[R0, #+4]
        CMP      R0,#+52
        BNE.N    ??Time_Cnt_Opertion_3
//   49 			{
//   50 			BackLight(0);
        MOVS     R0,#+0
          CFI FunCall BackLight
        BL       BackLight
        B.N      ??Time_Cnt_Opertion_1
//   51 			}
//   52 		else
//   53 			{
//   54 			if(Sys.WVedio_show_timer==1)
??Time_Cnt_Opertion_3:
        LDR.W    R0,??DataTable10_3
        LDR      R0,[R0, #+68]
        CMP      R0,#+1
        BNE.N    ??Time_Cnt_Opertion_1
//   55 			{
//   56 			Sys.WVedio_show_timer=0;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
//   57 			BackLight(1);
        MOVS     R0,#+1
          CFI FunCall BackLight
        BL       BackLight
//   58 			//TW8836_WritePage(0x02);
//   59 			//TW8836_Write(0x1e, TW8836_Read(0x1e)&0xfe);
//   60 			}
//   61 			}
//   62 		
//   63 	}	
//   64 	//------------100ms-----------------  
//   65 	if(Time_100ms_arrival)
??Time_Cnt_Opertion_1:
        LDR.W    R0,??DataTable10_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_4
//   66 	{
//   67 		Time_100ms_arrival=0;	
        LDR.W    R0,??DataTable10_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   68 		if(Sys.Main_Source==SRC_NAVI)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??Time_Cnt_Opertion_4
//   69 		{
//   70 		if(Sys.main_osd==main_page_OSD_navi)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+9
        BNE.N    ??Time_Cnt_Opertion_4
//   71 			if(Navi_osd_update_flag)
        LDR.W    R0,??DataTable10_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_4
//   72 				{
//   73 				Navi_osd_update_flag=0;
        LDR.W    R0,??DataTable10_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   74 				if(Sys.FS_select.NAV_setup_show==0)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+49]
        CMP      R0,#+0
        BNE.N    ??Time_Cnt_Opertion_5
//   75 					GPS_big_show();
          CFI FunCall GPS_big_show
        BL       GPS_big_show
        B.N      ??Time_Cnt_Opertion_4
//   76 				else
//   77 					GPS_small_show();
??Time_Cnt_Opertion_5:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
//   78 				}
//   79 		}
//   80 
//   81 
//   82 
//   83 	}
//   84 	if(Time_300ms_arrival)
??Time_Cnt_Opertion_4:
        LDR.W    R0,??DataTable10_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_6
//   85 	{
//   86 		Time_300ms_arrival=0;
        LDR.W    R0,??DataTable10_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   87 
//   88 	}
//   89 	//-------------500ms-----------------
//   90 	if(Time_500ms_arrival)
??Time_Cnt_Opertion_6:
        LDR.W    R0,??DataTable10_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_7
//   91 	{
//   92 		Time_500ms_arrival=0;
        LDR.W    R0,??DataTable10_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   93 	}	
//   94 	if(Time_1s_arrival)
??Time_Cnt_Opertion_7:
        LDR.W    R0,??DataTable10_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_8
//   95 	{
//   96 		Time_1s_arrival=0;	
        LDR.W    R0,??DataTable10_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   97 
//   98 			  if(Sys_CAN_light.sun_mode==0x01)
        LDR.W    R0,??DataTable10_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Time_Cnt_Opertion_9
//   99 			  	PWM_Configuration(200*Sys_CAN_light.sys_light_value+2000);
        LDR.W    R0,??DataTable10_2
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+200
        MULS     R0,R1,R0
        ADDS     R0,R0,#+2000
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall PWM_Configuration
        BL       PWM_Configuration
        B.N      ??Time_Cnt_Opertion_8
//  100 			  else if(Sys_CAN_light.sun_mode==0x02)
??Time_Cnt_Opertion_9:
        LDR.W    R0,??DataTable10_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE.N    ??Time_Cnt_Opertion_8
//  101 				  PWM_Configuration((200*Sys_CAN_light.sys_light_value)+20*(Sys_CAN_light.button_light_value-0x0c)+50);
        LDR.W    R0,??DataTable10_2
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+200
        LDR.W    R2,??DataTable10_2
        LDRB     R2,[R2, #+2]
        MOVS     R3,#+20
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        SUBS     R0,R0,#+190
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall PWM_Configuration
        BL       PWM_Configuration
//  102 
//  103               //LF_FrontContrl(0,Touch_status,X_POS,Y_POS);
//  104               //ARM_Uart_Char(i2ctest);
//  105 	}
//  106 	if(Time_5s_arrival)
??Time_Cnt_Opertion_8:
        LDR.W    R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_10
//  107 	{
//  108 		Time_5s_arrival=0;	
        LDR.W    R0,??DataTable11
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  109                 //LF_FrontContrl(0,Touch_status,X_POS,Y_POS);
//  110 	}
//  111 	if(Time_minute_arrival)
??Time_Cnt_Opertion_10:
        LDR.W    R0,??DataTable11_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Time_Cnt_Opertion_11
//  112 	{
//  113 		Time_minute_arrival=0;			
        LDR.W    R0,??DataTable11_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  114 	}	
//  115 }
??Time_Cnt_Opertion_11:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//  116 
//  117 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Turn_source_power
          CFI NoCalls
        THUMB
//  118 void Turn_source_power(BYTE Source)
//  119 {
//  120     switch(Source)
Turn_source_power:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,R0
        CMP      R1,#+1
        BEQ.N    ??Turn_source_power_0
        CMP      R1,#+2
        BEQ.N    ??Turn_source_power_1
        CMP      R1,#+9
        BEQ.N    ??Turn_source_power_1
        CMP      R1,#+10
        BEQ.N    ??Turn_source_power_2
        CMP      R1,#+15
        BEQ.N    ??Turn_source_power_3
        B.N      ??Turn_source_power_4
//  121     {
//  122 	case SRC_DVD:		
//  123 	case SRC_vdisc:
//  124 	 		//GPIO_SetBits(GPIOC, P_DVD_RST);
//  125 			break;			
??Turn_source_power_1:
        B.N      ??Turn_source_power_5
//  126 	case SRC_TV:
//  127 	 		//GPIO_SetBits(GPIOC, P_TV_PWR);
//  128 			break;		
??Turn_source_power_2:
        B.N      ??Turn_source_power_5
//  129 	case SRC_Radio:
//  130 			 //GPIO_SetBits(GPIOA, P_RADIO_PWR);//test
//  131 			//GPIO_ResetBits(GPIOA, P_RADIO_PWR);//test			
//  132 			break;	
??Turn_source_power_0:
        B.N      ??Turn_source_power_5
//  133 	case SRC_Cambox:
//  134 			 //GPIO_SetBits(GPIOA, P_DVR_PWR);
//  135 			break;				
??Turn_source_power_3:
        B.N      ??Turn_source_power_5
//  136 	default:	//
//  137 			break;	
//  138     }
//  139 }
??Turn_source_power_4:
??Turn_source_power_5:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  140 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ADC_GetValue
          CFI NoCalls
        THUMB
//  141 BYTE ADC_GetValue (BYTE adc_channel)
//  142 {
ADC_GetValue:
        MOVS     R1,R0
//  143    return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  144 }
//  145 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Video_FMS6501_init
          CFI NoCalls
        THUMB
//  146 void Video_FMS6501_init(void)
//  147 {}
Video_FMS6501_init:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  148 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Video_FMS6501_switch
          CFI NoCalls
        THUMB
//  149 void Video_FMS6501_switch(BYTE source)
//  150 {}
Video_FMS6501_switch:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  151 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function Video_FMS6501_RCA_switch
          CFI NoCalls
        THUMB
//  152 void Video_FMS6501_RCA_switch(BYTE source)
//  153 {}
Video_FMS6501_RCA_switch:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function Video_FMS6501_REC_switch
          CFI NoCalls
        THUMB
//  154 void Video_FMS6501_REC_switch(BYTE source)
//  155 {}
Video_FMS6501_REC_switch:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  156 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function Video_switch
          CFI NoCalls
        THUMB
//  157 void Video_switch(BYTE source)
//  158 {}
Video_switch:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  159 
//  160 //u16 flash_temp[10];
//  161 //u16 flash_count=0;
//  162 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function EE_Init
        THUMB
//  163 u16 EE_Init(void)
//  164 {
EE_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  165   	//u16  FlashStatus;
//  166         
//  167 		Sys.valide_id=0xea;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+234
        STRB     R1,[R0, #+0]
//  168 		Sys.FS_select.logo_type_onoff_id=0x01;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+35]
//  169 		Sys.FS_select.NAV_key_type=1;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+36]
//  170 	      //Sys.Main_Source=SRC_Radio;//test
//  171 		//Sys.Volume=10;   
//  172 		//Sys.Fader=7;
//  173 		//Sys.Balance=7;   
//  174 	
//  175 		
//  176 		   FLASH_Unlock();   
          CFI FunCall FLASH_Unlock
        BL       FLASH_Unlock
//  177 		    FLASH_ErasePage(PAGE0_BASE_ADDRESS);
        LDR.W    R0,??DataTable11_2  ;; 0x801f400
          CFI FunCall FLASH_ErasePage
        BL       FLASH_ErasePage
//  178 		    Save_Eerom_Data();	
          CFI FunCall Save_Eerom_Data
        BL       Save_Eerom_Data
//  179 
//  180 		    FLASH_Lock();   
          CFI FunCall FLASH_Lock
        BL       FLASH_Lock
//  181 
//  182 	
//  183   	 return FLASH_COMPLETE;
        MOVS     R0,#+4
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock8
//  184 }/*
//  185    	FLASH_ProgramHalfWord(PAGE0_BASE_ADDRESS+10, flash_count++);
//  186     	FLASH_ProgramHalfWord(PAGE0_BASE_ADDRESS+12, flash_count++);
//  187     	FLASH_ProgramHalfWord(PAGE0_BASE_ADDRESS+14, flash_count++);
//  188     	FLASH_ProgramHalfWord(PAGE0_BASE_ADDRESS+16, flash_count++);
//  189 
//  190 
//  191 	   EE_ReadVariable(PAGE0_BASE_ADDRESS, &flash_temp[0]);
//  192 	   EE_ReadVariable(PAGE0_BASE_ADDRESS+2, &flash_temp[1]);
//  193 	   EE_ReadVariable(PAGE0_BASE_ADDRESS+4, &flash_temp[2]);
//  194 	   EE_ReadVariable(PAGE0_BASE_ADDRESS+6, &flash_temp[3]);
//  195 	   EE_ReadVariable(PAGE0_BASE_ADDRESS+8, &flash_temp[4]);
//  196 	   EE_ReadVariable(PAGE0_BASE_ADDRESS+10, &flash_temp[5]);
//  197 	   EE_ReadVariable(PAGE0_BASE_ADDRESS+12, &flash_temp[6]);
//  198 	   EE_ReadVariable(PAGE0_BASE_ADDRESS+14, &flash_temp[7]);
//  199 	   EE_ReadVariable(PAGE0_BASE_ADDRESS+16, &flash_temp[8]);*/
//  200 /*u16 EE_ReadVariable(u32 VirtAddress, u16* Data)
//  201 {
//  202   u16 FlashStatus=FLASH_COMPLETE ;
//  203 
//  204   *Data=*(vu16*)VirtAddress ;
//  205   return FlashStatus;
//  206 }
//  207 u16 EE_WriteVariable(u32 VirtAddress, u16 Data)
//  208 {
//  209   u16  FlashStatus;
//  210 
//  211   FlashStatus=FLASH_ProgramHalfWord(VirtAddress, Data);
//  212   //FlashStatus=FLASH_ProgramWord(VirtAddress, Data);
//  213   return FlashStatus;
//  214 }*/
//  215 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function Read_Eerom_Data
        THUMB
//  216 void Read_Eerom_Data(void)
//  217 {
Read_Eerom_Data:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  218       int i;
//  219       //BYTE aTmp;
//  220 #ifdef FLASH_EEROM_DEBUG
//  221 #else	  
//  222          unsigned long temp=0;
        MOVS     R4,#+0
//  223 		
//  224 	temp=*(vu32*)(PAGE0_BASE_ADDRESS);
        LDR.W    R0,??DataTable11_2  ;; 0x801f400
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
//  225 	Sys.valide_id=LOBYTE(temp);
        LDR.W    R0,??DataTable10_3
        STRB     R4,[R0, #+0]
//  226 	if(Sys.valide_id==0xea)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+234
        BNE.N    ??Read_Eerom_Data_0
//  227 	{
//  228 		      //FLASH_Unlock();   
//  229 			for(i=0;i<512;i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??Read_Eerom_Data_1:
        MOV      R0,#+512
        CMP      R5,R0
        BGE.N    ??Read_Eerom_Data_2
//  230 				EEPROM_DATA.write_buf[i]=*(vu32*)(PAGE0_BASE_ADDRESS+i*4 );		
        LDR.W    R0,??DataTable10_3
        LDR.W    R1,??DataTable11_2  ;; 0x801f400
        LDR      R1,[R1, R5, LSL #+2]
        STR      R1,[R0, R5, LSL #+2]
        ADDS     R5,R5,#+1
        B.N      ??Read_Eerom_Data_1
//  231 		     // FLASH_Lock(); 
//  232 
//  233 			        //if(Is_Source_Valide(Sys.Main_Source)==FALSE)
//  234 			        	//Sys.Main_Source=SRC_Radio;
//  235 			 
//  236 				 Sys.DVR_Source%=SRC_Off;
??Read_Eerom_Data_2:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+7]
        MOVS     R1,#+19
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable10_3
        STRB     R0,[R1, #+7]
//  237 				 Sys.Volume%=41;
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+8]
        MOVS     R1,#+41
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable10_3
        STRB     R0,[R1, #+8]
//  238 
//  239 
//  240 				//Read_Radio_Eerom_Variables();
//  241 
//  242 				 Sys.TFT_ID%=3;//==0 背光灭 ==1 背光白天模式 ==2 背光夜间模式
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+9]
        MOVS     R1,#+3
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable10_3
        STRB     R0,[R1, #+9]
//  243 			 	 Sys.ACC_auto_on%=2;
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+10]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        LDR.W    R0,??DataTable10_3
        STRB     R2,[R0, #+10]
//  244 				 //Sys.Power_Status;
//  245 				 //Sys.VideoType ;
//  246 
//  247 
//  248 				 Sys.Bright%=41;	//亮度寄存器
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+18]
        MOVS     R1,#+41
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable10_3
        STRB     R0,[R1, #+18]
//  249 				 Sys.Contrast%=41;	//对比度寄存器
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+20]
        MOVS     R1,#+41
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable10_3
        STRB     R0,[R1, #+20]
//  250 				 Sys.Color%=41;		//颜色寄存器
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+21]
        MOVS     R1,#+41
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable10_3
        STRB     R0,[R1, #+21]
//  251 				 //Sys.VideoMode%=user_videomode+1;	//视频模式0=自定义,1=柔和,2=标准,3=明亮
//  252 
//  253 				 Sys.voice_navi%=2;
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+25]
        MOVS     R1,#+2
        SDIV     R2,R0,R1
        MLS      R2,R2,R1,R0
        LDR.W    R0,??DataTable10_3
        STRB     R2,[R0, #+25]
//  254 				Sys.gps_voice_Source%=SRC_Off;
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+26]
        MOVS     R1,#+19
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        LDR.W    R1,??DataTable10_3
        STRB     R0,[R1, #+26]
        B.N      ??Read_Eerom_Data_3
//  255 				 
//  256 
//  257 	}
//  258 	else
//  259 	{
//  260 		EE_Init();
??Read_Eerom_Data_0:
          CFI FunCall EE_Init
        BL       EE_Init
//  261 	}
//  262 #endif     
//  263 }
??Read_Eerom_Data_3:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock9
//  264 
//  265 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function Save_Eerom_Data
        THUMB
//  266 void Save_Eerom_Data(void)
//  267 {
Save_Eerom_Data:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  268       //u16  FlashStatus;
//  269       int i;
//  270 
//  271 #ifdef FLASH_EEROM_DEBUG
//  272 #else	  
//  273 
//  274 	//Save_Radio_Eerom_Variables();
//  275 
//  276        FLASH_Unlock();   
          CFI FunCall FLASH_Unlock
        BL       FLASH_Unlock
//  277        FLASH_ErasePage(PAGE0_BASE_ADDRESS);
        LDR.W    R0,??DataTable11_2  ;; 0x801f400
          CFI FunCall FLASH_ErasePage
        BL       FLASH_ErasePage
//  278 	for(i=0;i<512;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??Save_Eerom_Data_0:
        MOV      R0,#+512
        CMP      R4,R0
        BGE.N    ??Save_Eerom_Data_1
//  279 		FLASH_ProgramWord(PAGE0_BASE_ADDRESS+4*i, EEPROM_DATA.write_buf[i]);		
        LDR.W    R0,??DataTable10_3
        LDR      R1,[R0, R4, LSL #+2]
        LSLS     R0,R4,#+2
        ADD      R0,R0,#+134217728
        ADDS     R0,R0,#+128000
          CFI FunCall FLASH_ProgramWord
        BL       FLASH_ProgramWord
        ADDS     R4,R4,#+1
        B.N      ??Save_Eerom_Data_0
//  280       FLASH_Lock();   
??Save_Eerom_Data_1:
          CFI FunCall FLASH_Lock
        BL       FLASH_Lock
//  281 #endif	  
//  282 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Write_Valid_Data
        THUMB
//  283 void Write_Valid_Data(u32 value)
//  284 {
Write_Valid_Data:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  285       //u16  FlashStatus;
//  286 	  
//  287        FLASH_Unlock();   
          CFI FunCall FLASH_Unlock
        BL       FLASH_Unlock
//  288        FLASH_ErasePage(PAGE2_BASE_ADDRESS);
        LDR.W    R0,??DataTable11_3  ;; 0x801fc00
          CFI FunCall FLASH_ErasePage
        BL       FLASH_ErasePage
//  289 	FLASH_ProgramWord(PAGE2_BASE_ADDRESS, value);		
        MOVS     R1,R4
        LDR.W    R0,??DataTable11_3  ;; 0x801fc00
          CFI FunCall FLASH_ProgramWord
        BL       FLASH_ProgramWord
//  290 	
//  291       FLASH_Lock();   
          CFI FunCall FLASH_Lock
        BL       FLASH_Lock
//  292 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock11
//  293 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function Adjust_Source
        THUMB
//  294 void Adjust_Source(BYTE Source)
//  295 {
Adjust_Source:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  296 	if(Sys.Main_Source!=Source)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BEQ.N    ??Adjust_Source_0
//  297 	BackLight(0);
        MOVS     R0,#+0
          CFI FunCall BackLight
        BL       BackLight
//  298 	if(Source==SRC_CAM)
??Adjust_Source_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+11
        BNE.N    ??Adjust_Source_1
//  299 		POWER_RearVideoOn();
        MOV      R1,#+512
        LDR.W    R0,??DataTable11_4  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??Adjust_Source_2
//  300 	else
//  301 		POWER_RearVideoOff();
??Adjust_Source_1:
        MOV      R1,#+512
        LDR.W    R0,??DataTable11_4  ;; 0x40011000
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  302 	
//  303        TW8836_Src(Source);
??Adjust_Source_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Src
        BL       TW8836_Src
//  304 
//  305 	Sys.Main_Source=Source;
        LDR.W    R0,??DataTable10_3
        STRB     R4,[R0, #+2]
//  306 
//  307 	if((!m_RADAR.power_on_statu)||(Sys.FS_select.auto_rada_onoff_id==0))//||m_RADAR.fDisp_on_p)
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??Adjust_Source_3
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+30]
        CMP      R0,#+0
        BNE.N    ??Adjust_Source_4
//  308 	{
//  309        	switch(Source)
??Adjust_Source_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+3
        BEQ.N    ??Adjust_Source_5
        CMP      R0,#+11
        BEQ.N    ??Adjust_Source_6
        CMP      R0,#+18
        BEQ.N    ??Adjust_Source_7
        B.N      ??Adjust_Source_8
//  310 		{
//  311 		case SRC_NAVI:
//  312 			if(Sys.FS_select.NAV_setup_show==0)
??Adjust_Source_5:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+49]
        CMP      R0,#+0
        BNE.N    ??Adjust_Source_9
//  313 				GPS_big_show();
          CFI FunCall GPS_big_show
        BL       GPS_big_show
        B.N      ??Adjust_Source_10
//  314 			else
//  315 				GPS_small_show();
??Adjust_Source_9:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
//  316 			Menu_page_DrawImage(main_page_OSD_navi,0);
??Adjust_Source_10:
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  317 			
//  318 
//  319             //Navi_Controll_Send(CMD_RT_BTGPS_on_GPS);//miller.tao20160323
//  320            	if(gNaviSystemOn)
        LDR.W    R0,??DataTable11_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Adjust_Source_11
//  321 			{
//  322                gNaviCnt =4000;//3500;//2500;
        LDR.W    R0,??DataTable11_7
        MOV      R1,#+4000
        STRH     R1,[R0, #+0]
        B.N      ??Adjust_Source_12
//  323                //gNaviSystemOn=0;
//  324 			}
//  325 			else
//  326 				gNaviCnt =200;//500;
??Adjust_Source_11:
        LDR.W    R0,??DataTable11_7
        MOVS     R1,#+200
        STRH     R1,[R0, #+0]
//  327 			gNaviSendFlag =1;
??Adjust_Source_12:
        LDR.W    R0,??DataTable11_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  328 			break;
        B.N      ??Adjust_Source_13
//  329 		case SRC_CAM:
//  330 			/*
//  331 			if(Sys.FS_select.cam_type_onoff_id==0)
//  332 				Menu_page_DrawImage(main_page_OSD_font_rada,0);
//  333 			else if(Sys.FS_select.cam_type_onoff_id==1)
//  334 			Menu_page_DrawImage(main_page_OSD_back_rada,Sys.u8back_mode_status);
//  335 			else if(Sys.FS_select.cam_type_onoff_id==2)
//  336 				Menu_page_DrawImage(main_page_OSD_none,sub_page_OSD_none);
//  337 */
//  338 			
//  339 			Menu_page_DrawImage(BWM_main_page_OSD_back,BWM_sub_page_OSD_back);
??Adjust_Source_6:
        MOVS     R1,#+0
        MOVS     R0,#+10
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  340 			break;
        B.N      ??Adjust_Source_13
//  341 		case SRC_CarMedia:
//  342 			Menu_page_DrawImage(main_page_OSD_Home,Sys.Car_Main_Source);
??Adjust_Source_7:
        LDR.W    R0,??DataTable10_3
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+2
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  343 
//  344 			break;
        B.N      ??Adjust_Source_13
//  345 		default:
//  346 			Menu_page_DrawImage(main_page_OSD_Home,Sys.Car_Main_Source);
??Adjust_Source_8:
        LDR.W    R0,??DataTable10_3
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+2
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  347 			Sys.Main_Source=SRC_CarMedia;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+18
        STRB     R1,[R0, #+2]
//  348 			break;
        B.N      ??Adjust_Source_13
//  349        	}
//  350 	}
//  351 	else
//  352 	{
//  353        	switch(Source)
??Adjust_Source_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+3
        BEQ.N    ??Adjust_Source_14
        CMP      R0,#+11
        BEQ.N    ??Adjust_Source_15
        CMP      R0,#+18
        BEQ.N    ??Adjust_Source_16
        B.N      ??Adjust_Source_17
//  354 		{
//  355 		case SRC_NAVI:
//  356 			GPS_small_show();
??Adjust_Source_14:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
//  357 			Menu_page_DrawImage(main_page_OSD_font_rada,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  358 			 //Navi_Controll_Send(CMD_RT_BTGPS_on_GPS);//miller.tao20160323
//  359 			if(gNaviSystemOn)
        LDR.W    R0,??DataTable11_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Adjust_Source_18
//  360 			{
//  361                gNaviCnt =4000;//3500;//2500;
        LDR.W    R0,??DataTable11_7
        MOV      R1,#+4000
        STRH     R1,[R0, #+0]
        B.N      ??Adjust_Source_19
//  362                //gNaviSystemOn=0;
//  363 			}
//  364 			else
//  365 				gNaviCnt =200;//500;
??Adjust_Source_18:
        LDR.W    R0,??DataTable11_7
        MOVS     R1,#+200
        STRH     R1,[R0, #+0]
//  366 			gNaviSendFlag =1;
??Adjust_Source_19:
        LDR.W    R0,??DataTable11_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  367 			break;
        B.N      ??Adjust_Source_13
//  368 		case SRC_CAM:
//  369 			/*
//  370 			if(Sys.FS_select.cam_type_onoff_id==0)
//  371 				Menu_page_DrawImage(main_page_OSD_font_rada,0);
//  372 			else if(Sys.FS_select.cam_type_onoff_id==1)
//  373 			Menu_page_DrawImage(main_page_OSD_back_rada,Sys.u8back_mode_status);
//  374 			else if(Sys.FS_select.cam_type_onoff_id==2)
//  375 				Menu_page_DrawImage(main_page_OSD_none,sub_page_OSD_none);
//  376 */
//  377 
//  378 			Menu_page_DrawImage(BWM_main_page_OSD_back,BWM_sub_page_OSD_back);
??Adjust_Source_15:
        MOVS     R1,#+0
        MOVS     R0,#+10
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  379 
//  380 			
//  381 			break;
        B.N      ??Adjust_Source_13
//  382 		case SRC_CarMedia:
//  383 			Menu_page_DrawImage(main_page_OSD_font_rada,0);
??Adjust_Source_16:
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  384 
//  385 			break;
        B.N      ??Adjust_Source_13
//  386 		default:
//  387 			Menu_page_DrawImage(main_page_OSD_font_rada,0);
??Adjust_Source_17:
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  388 			Sys.Main_Source=SRC_CarMedia;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+18
        STRB     R1,[R0, #+2]
//  389 			break;
//  390        		}
//  391 	
//  392 	}
//  393 		
//  394 		
//  395 		Sys.WVedio_show_timer=50;
??Adjust_Source_13:
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+50
        STR      R1,[R0, #+68]
//  396 
//  397 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock12
//  398 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function source_process_fun
        THUMB
//  399 void source_process_fun(void)
//  400 {
source_process_fun:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  401 	BackAllCheck();
          CFI FunCall BackAllCheck
        BL       BackAllCheck
//  402 
//  403 
//  404 	if(Sys.u8back_status&&(Sys.u8back_exit_auto==0)&&(Sys.FS_select.cam_type_onoff_id!=3))
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+15]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_0
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_0
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+3
        BEQ.N    ??source_process_fun_0
//  405 	{
//  406 		if(Sys.Main_Source!=SRC_CAM)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BEQ.N    ??source_process_fun_1
//  407 		{
//  408 			Sys.back_last_Main_Source=Sys.Main_Source;
        LDR.W    R0,??DataTable10_3
        LDR.W    R1,??DataTable10_3
        LDRB     R1,[R1, #+2]
        STRB     R1,[R0, #+1]
//  409 			Adjust_Source(SRC_CAM);
        MOVS     R0,#+11
          CFI FunCall Adjust_Source
        BL       Adjust_Source
        B.N      ??source_process_fun_1
//  410 			//for(int i=1;i<BENZE_CAN_Steering_angle_BUF_MAX;i++)
//  411 			//	m_BMW_CAN.benze_Steering_angle[i]=m_BMW_CAN.benze_Steering_angle[0];
//  412 		}
//  413 	}
//  414 	else if(Sys.u8back_status&&Sys.u8back_exit_auto)
??source_process_fun_0:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+15]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_2
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+16]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_2
//  415 	{
//  416 		if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??source_process_fun_1
//  417 			{
//  418 			Delay_1ms(500);
        MOV      R0,#+500
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  419 		Adjust_Source(Sys.back_last_Main_Source);
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+1]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
        B.N      ??source_process_fun_1
//  420 			}
//  421 	}
//  422 	else if(Sys.Main_Source==SRC_CAM)
??source_process_fun_2:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??source_process_fun_1
//  423 	{
//  424 		if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BNE.N    ??source_process_fun_1
//  425 			{
//  426 			Delay_1ms(500);
        MOV      R0,#+500
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  427 		Adjust_Source(Sys.back_last_Main_Source);
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+1]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
//  428 			}
//  429 	}
//  430 
//  431 		
//  432 	switch(Sys.Main_Source)
??source_process_fun_1:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BEQ.N    ??source_process_fun_3
        CMP      R0,#+11
        BEQ.N    ??source_process_fun_4
        CMP      R0,#+18
        BEQ.W    ??source_process_fun_5
        B.N      ??source_process_fun_6
//  433 		{
//  434 		case SRC_CAM:
//  435 			if(Sys.FS_select.cam_type_onoff_id==0)
??source_process_fun_4:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_7
//  436 			{
//  437 				if(m_RADAR.fDisp)
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_8
//  438 				{
//  439 					m_RADAR.fDisp=0;
        LDR.W    R0,??DataTable11_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
//  440 					Menu_page_Draw_button(main_page_OSD_font_rada,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_Draw_button
        BL       Menu_page_Draw_button
        B.N      ??source_process_fun_8
//  441 				}
//  442 			}
//  443 			else if(Sys.FS_select.cam_type_onoff_id==1)	
??source_process_fun_7:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+1
        BNE.N    ??source_process_fun_8
//  444 			{
//  445 				//BYTE osd_updata_flag=0;
//  446 				WORD angle_index_count;
//  447 				angle_index_count=CBackTrack_GetAngleIndex(m_BMW_CAN.benze_Steering_angle[0]);
        LDR.W    R0,??DataTable11_9
        LDRH     R0,[R0, #+50]
          CFI FunCall CBackTrack_GetAngleIndex
        BL       CBackTrack_GetAngleIndex
        MOVS     R4,R0
//  448 					if(m_RADAR.fDisp)
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_9
//  449 					{
//  450 						m_RADAR.fDisp=0;
        LDR.W    R0,??DataTable11_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
//  451 						//osd_updata_flag=1;
//  452 						Menu_page_Draw_button(main_page_OSD_back_rada,Sys.u8back_mode_status);
        LDR.W    R0,??DataTable10_3
        LDRB     R1,[R0, #+17]
        MOVS     R0,#+3
          CFI FunCall Menu_page_Draw_button
        BL       Menu_page_Draw_button
//  453 					}
//  454 
//  455             
//  456 			if(m_BMW_CAN.benze_Steering_angle_index != angle_index_count)
??source_process_fun_9:
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+56]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R0,R4
        BEQ.N    ??source_process_fun_8
//  457 				{
//  458 			m_BMW_CAN.benze_Steering_angle_index = angle_index_count;
        LDR.W    R0,??DataTable11_9
        STRB     R4,[R0, #+56]
//  459 			//osd_updata_flag=2;
//  460 			
//  461 			if(Sys.main_osd==main_page_OSD_back_rada&&Sys.sub_osd==sub_page_OSD_back_rada_angle)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+3
        BNE.N    ??source_process_fun_8
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_8
//  462 			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_only_updata_angle);
        MOVS     R1,#+16
        MOVS     R0,#+3
          CFI FunCall Menu_page_Draw_button
        BL       Menu_page_Draw_button
//  463 				}
//  464 
//  465             
//  466 			//m_BMW_CAN.benze_Steering_angle+=100;
//  467 			}
//  468 			break;
??source_process_fun_8:
        B.N      ??source_process_fun_6
//  469 		case SRC_NAVI:
//  470 			if(m_BMW_CAN.benze_air_Disp&&Sys.main_osd!=main_page_OSD_font_rada&&Sys.main_osd!=main_page_OSD_door_info)
??source_process_fun_3:
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+32]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_10
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BEQ.N    ??source_process_fun_10
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+4
        BEQ.N    ??source_process_fun_10
//  471 				{
//  472 				m_BMW_CAN.benze_air_Disp=0;
        LDR.W    R0,??DataTable11_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+32]
//  473 				if(Sys.main_osd!=main_page_OSD_air_info)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+5
        BEQ.N    ??source_process_fun_11
//  474 					Menu_page_DrawImage(main_page_OSD_air_info,0);
        MOVS     R1,#+0
        MOVS     R0,#+5
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??source_process_fun_12
//  475 				else
//  476 					Menu_page_Draw_button(main_page_OSD_air_info,0);
??source_process_fun_11:
        MOVS     R1,#+0
        MOVS     R0,#+5
          CFI FunCall Menu_page_Draw_button
        BL       Menu_page_Draw_button
//  477 				m_BMW_CAN.benze_air_show_Timer=5000;
??source_process_fun_12:
        LDR.W    R0,??DataTable11_9
        MOVW     R1,#+5000
        STRH     R1,[R0, #+54]
//  478 				}
//  479 			if(!m_BMW_CAN.benze_air_show_Timer)
??source_process_fun_10:
        LDR.W    R0,??DataTable11_9
        LDRH     R0,[R0, #+54]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_13
//  480 				if(Sys.main_osd==main_page_OSD_air_info)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+5
        BNE.N    ??source_process_fun_13
//  481 					{
//  482 					for(int i=3;i<=8;i++)
        MOVS     R4,#+3
??source_process_fun_14:
        CMP      R4,#+9
        BGE.N    ??source_process_fun_15
//  483 					SpiOsdWinHWEnable(i, 0);
        MOVS     R1,#+0
        MOVS     R0,R4
          CFI FunCall SpiOsdWinHWEnable
        BL       SpiOsdWinHWEnable
        ADDS     R4,R4,#+1
        B.N      ??source_process_fun_14
//  484 					Sys.main_osd=Sys.main_osd_last;
??source_process_fun_15:
        LDR.W    R0,??DataTable10_3
        LDR.W    R1,??DataTable10_3
        LDRB     R1,[R1, #+54]
        STRB     R1,[R0, #+52]
//  485 				//Menu_page_DrawImage(main_page_OSD_navi,0);
//  486 					}
//  487 
//  488 				if(Sys.FS_select.auto_rada_onoff_id==0)
??source_process_fun_13:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+30]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_16
//  489 				{
//  490 					if(Sys.main_osd==main_page_OSD_font_rada)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BNE.N    ??source_process_fun_17
//  491 					{
//  492 					Menu_page_DrawImage(main_page_OSD_navi,0);
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  493 					if(Sys.FS_select.NAV_setup_show==0)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+49]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_18
//  494 						GPS_big_show();
          CFI FunCall GPS_big_show
        BL       GPS_big_show
        B.N      ??source_process_fun_17
//  495 					else
//  496 						GPS_small_show();
??source_process_fun_18:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
        B.N      ??source_process_fun_17
//  497 					}
//  498 				}
//  499 				else if(m_RADAR.power_on_statu)
??source_process_fun_16:
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_19
//  500 				{
//  501 					if(m_RADAR.fDisp)
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_17
//  502 					{
//  503 						m_RADAR.fDisp=0;
        LDR.W    R0,??DataTable11_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
//  504 						if(Sys.main_osd!=main_page_OSD_font_rada)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BEQ.N    ??source_process_fun_20
//  505 							Menu_page_DrawImage(main_page_OSD_font_rada,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??source_process_fun_21
//  506 						else
//  507 							Menu_page_Draw_button(main_page_OSD_font_rada,0);
??source_process_fun_20:
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_Draw_button
        BL       Menu_page_Draw_button
//  508 
//  509 						
//  510 						GPS_small_show();
??source_process_fun_21:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
        B.N      ??source_process_fun_17
//  511 					}
//  512 				}
//  513 				else if(Sys.main_osd==main_page_OSD_font_rada)
??source_process_fun_19:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BNE.N    ??source_process_fun_17
//  514 				{
//  515 					Menu_page_DrawImage(main_page_OSD_navi,0);
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  516 					if(Sys.FS_select.NAV_setup_show==0)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+49]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_22
//  517 						GPS_big_show();
          CFI FunCall GPS_big_show
        BL       GPS_big_show
        B.N      ??source_process_fun_17
//  518 					else
//  519 						GPS_small_show();
??source_process_fun_22:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
//  520 				}
//  521 			break;
??source_process_fun_17:
        B.N      ??source_process_fun_6
//  522 			case SRC_CarMedia:
//  523 				if(Sys.Car_updata_flag)
??source_process_fun_5:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_23
//  524 					{
//  525 					Sys.Car_updata_flag=0;
        LDR.W    R0,??DataTable10_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  526 					if(Sys.main_osd!=main_page_OSD_door_info&&Sys.main_osd!=main_page_OSD_font_rada)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+4
        BEQ.N    ??source_process_fun_23
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BEQ.N    ??source_process_fun_23
//  527 					Menu_page_DrawImage(main_page_OSD_Home,Sys.Car_Main_Source);
        LDR.W    R0,??DataTable10_3
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+2
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  528 					}
//  529 
//  530 				if(Sys.FS_select.auto_rada_onoff_id==0)
??source_process_fun_23:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+30]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_24
//  531 				{
//  532 					if(Sys.main_osd==main_page_OSD_font_rada)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BNE.N    ??source_process_fun_25
//  533 					{
//  534 					Menu_page_DrawImage(main_page_OSD_none,0);
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  535 					if(Sys.FS_select.NAV_setup_show==0)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+49]
        CMP      R0,#+0
        BNE.N    ??source_process_fun_26
//  536 						GPS_big_show();
          CFI FunCall GPS_big_show
        BL       GPS_big_show
        B.N      ??source_process_fun_25
//  537 					else
//  538 						GPS_small_show();
??source_process_fun_26:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
        B.N      ??source_process_fun_25
//  539 					}
//  540 				}
//  541 				else if(m_RADAR.power_on_statu)
??source_process_fun_24:
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_27
//  542 				{
//  543 					if(m_RADAR.fDisp)
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_25
//  544 					{
//  545 						m_RADAR.fDisp=0;
        LDR.W    R0,??DataTable11_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
//  546 						if(Sys.main_osd!=main_page_OSD_font_rada)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BEQ.N    ??source_process_fun_28
//  547 							Menu_page_DrawImage(main_page_OSD_font_rada,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??source_process_fun_25
//  548 						else
//  549 							Menu_page_Draw_button(main_page_OSD_font_rada,0);
??source_process_fun_28:
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_Draw_button
        BL       Menu_page_Draw_button
        B.N      ??source_process_fun_25
//  550 					}
//  551 				}
//  552 				else if(Sys.main_osd==main_page_OSD_font_rada)
??source_process_fun_27:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+7
        BNE.N    ??source_process_fun_25
//  553 					Menu_page_DrawImage(main_page_OSD_Home,Sys.Car_Main_Source);
        LDR.W    R0,??DataTable10_3
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+2
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  554 				break;
//  555 		}
//  556 
//  557 	Door_data_pro_fun();
??source_process_fun_25:
??source_process_fun_6:
          CFI FunCall Door_data_pro_fun
        BL       Door_data_pro_fun
//  558 
//  559 	
//  560 	if(g_GPS_DATA.uSoundFlag)
        LDR.W    R0,??DataTable11_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??source_process_fun_29
//  561 	 {
//  562 		 
//  563 		 SW_GPS_CAR_TO_GPS();
        MOVS     R1,#+16
        LDR.W    R0,??DataTable11_4  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??source_process_fun_30
//  564 	 }
//  565 	 else
//  566 	 {
//  567 		 SW_GPS_CAR_TO_CAR();
??source_process_fun_29:
        MOVS     R1,#+16
        LDR.W    R0,??DataTable11_4  ;; 0x40011000
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  568 	 }
//  569 
//  570 		
//  571 
//  572 }
??source_process_fun_30:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock13
//  573 
//  574 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function Door_data_pro_fun
        THUMB
//  575 void Door_data_pro_fun(void)
//  576 {
Door_data_pro_fun:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  577 	if(Sys.Main_Source==SRC_CAM)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+11
        BEQ.W    ??Door_data_pro_fun_0
//  578 		return;
//  579 	
//  580 	if(m_CarDoorInfo.SendFlag)
??Door_data_pro_fun_1:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??Door_data_pro_fun_2
//  581 		{
//  582 		m_CarDoorInfo.SendFlag=0;
        LDR.W    R0,??DataTable11_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  583 			{
//  584 				
//  585 				for(int i=0;i<3;i++)
        MOVS     R0,#+0
??Door_data_pro_fun_3:
        CMP      R0,#+3
        BGE.N    ??Door_data_pro_fun_4
//  586 					door_show_buff[i]=0;
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
        ADDS     R0,R0,#+1
        B.N      ??Door_data_pro_fun_3
//  587 
//  588 					door_index=0;
??Door_data_pro_fun_4:
        LDR.W    R0,??DataTable11_13
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  589 				if(m_CarDoorInfo.front)
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BEQ.N    ??Door_data_pro_fun_5
//  590 					{
//  591 					door_show_buff[door_index]=0;
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
//  592 					door_index++;
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
//  593 					}
//  594 				
//  595 				if(m_CarDoorInfo.rear)
??Door_data_pro_fun_5:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+6]
        CMP      R0,#+0
        BEQ.N    ??Door_data_pro_fun_6
//  596 					{
//  597 					door_show_buff[door_index]=1;
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+1
        STRB     R2,[R0, R1]
//  598 					door_index++;
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
//  599 					}
//  600 
//  601 				if(m_CarDoorInfo.uFront_Left||m_CarDoorInfo.uFront_Right\ 
//  602 					||m_CarDoorInfo.uRear_Left||m_CarDoorInfo.uRear_Right)
??Door_data_pro_fun_6:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??Door_data_pro_fun_7
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??Door_data_pro_fun_7
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BNE.N    ??Door_data_pro_fun_7
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??Door_data_pro_fun_8
//  603 					{
//  604 					door_show_buff[door_index]=2;
??Door_data_pro_fun_7:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        MOVS     R2,#+2
        STRB     R2,[R0, R1]
//  605 					door_index++;
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_13
        STRB     R0,[R1, #+0]
//  606 					}
//  607 				
//  608 				if(!door_index)
??Door_data_pro_fun_8:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Door_data_pro_fun_2
//  609 					{
//  610 				m_CarDoorInfo.show_flag=1;
        LDR.W    R0,??DataTable11_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
//  611 				if(Sys.main_osd==main_page_OSD_door_info)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+4
        BNE.N    ??Door_data_pro_fun_9
//  612 					if(Sys.Main_Source==SRC_CarMedia)
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+18
        BNE.N    ??Door_data_pro_fun_10
//  613 					Menu_page_DrawImage(main_page_OSD_Home,Sys.Car_Main_Source);
        LDR.W    R0,??DataTable10_3
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+2
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??Door_data_pro_fun_9
//  614 					else if(Sys.Main_Source==SRC_NAVI)
??Door_data_pro_fun_10:
        LDR.W    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??Door_data_pro_fun_11
//  615 						Menu_page_DrawImage(main_page_OSD_navi,0);
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??Door_data_pro_fun_9
//  616 					else
//  617 					Menu_page_DrawImage(Sys.main_osd_last,Sys.sub_osd_last);
??Door_data_pro_fun_11:
        LDR.N    R0,??DataTable10_3
        LDRB     R1,[R0, #+55]
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+54]
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  618 
//  619 					if(Sys.Main_Source==SRC_NAVI)
??Door_data_pro_fun_9:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??Door_data_pro_fun_2
//  620 						{
//  621 							if(Sys.main_osd==main_page_OSD_navi)
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+9
        BNE.N    ??Door_data_pro_fun_2
//  622 							{
//  623 							if(Sys.FS_select.NAV_setup_show==0)
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+49]
        CMP      R0,#+0
        BNE.N    ??Door_data_pro_fun_12
//  624 								GPS_big_show();
          CFI FunCall GPS_big_show
        BL       GPS_big_show
        B.N      ??Door_data_pro_fun_2
//  625 							else
//  626 								GPS_small_show();
??Door_data_pro_fun_12:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
//  627 							}
//  628 						}
//  629 					}
//  630 			}
//  631 		}
//  632 
//  633 			if(door_index)//&&m_CarDoorInfo.show_flag)
??Door_data_pro_fun_2:
        LDR.W    R0,??DataTable11_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Door_data_pro_fun_13
//  634 		{
//  635 			
//  636 			if(!m_CarDoorInfo.door_show_timer)
        LDR.W    R0,??DataTable11_11
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BNE.N    ??Door_data_pro_fun_13
//  637 				{
//  638 			switch(door_show_buff[m_CarDoorInfo.show_id])
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+7]
        LDR.W    R1,??DataTable11_12
        LDRB     R0,[R0, R1]
        CMP      R0,#+0
        BEQ.N    ??Door_data_pro_fun_14
        CMP      R0,#+2
        BEQ.N    ??Door_data_pro_fun_15
        BCC.N    ??Door_data_pro_fun_16
        B.N      ??Door_data_pro_fun_17
//  639 				{
//  640 				case 0:
//  641 					if(!(Sys.main_osd==main_page_OSD_door_info&&Sys.sub_osd==sub_page_OSD_font_lid))
??Door_data_pro_fun_14:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+4
        BNE.N    ??Door_data_pro_fun_18
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+53]
        CMP      R0,#+1
        BEQ.N    ??Door_data_pro_fun_19
//  642 					Menu_page_DrawImage(main_page_OSD_door_info,sub_page_OSD_font_lid);
??Door_data_pro_fun_18:
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  643 					m_CarDoorInfo.door_show_timer=1000;
??Door_data_pro_fun_19:
        LDR.W    R0,??DataTable11_11
        MOV      R1,#+1000
        STR      R1,[R0, #+12]
//  644 					break;
        B.N      ??Door_data_pro_fun_17
//  645 				case 1:
//  646 					if(!(Sys.main_osd==main_page_OSD_door_info&&Sys.sub_osd==sub_page_OSD_back_lid))
??Door_data_pro_fun_16:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+4
        BNE.N    ??Door_data_pro_fun_20
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+53]
        CMP      R0,#+0
        BEQ.N    ??Door_data_pro_fun_21
//  647 					Menu_page_DrawImage(main_page_OSD_door_info,sub_page_OSD_back_lid);
??Door_data_pro_fun_20:
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  648 					m_CarDoorInfo.door_show_timer=1000;
??Door_data_pro_fun_21:
        LDR.W    R0,??DataTable11_11
        MOV      R1,#+1000
        STR      R1,[R0, #+12]
//  649 					break;
        B.N      ??Door_data_pro_fun_17
//  650 				case 2:
//  651 					if(!(Sys.main_osd==main_page_OSD_door_info&&Sys.sub_osd==sub_page_OSD_LR_door))
??Door_data_pro_fun_15:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+52]
        CMP      R0,#+4
        BNE.N    ??Door_data_pro_fun_22
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+53]
        CMP      R0,#+2
        BEQ.N    ??Door_data_pro_fun_23
//  652 					Menu_page_DrawImage(main_page_OSD_door_info,sub_page_OSD_LR_door);
??Door_data_pro_fun_22:
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??Door_data_pro_fun_24
//  653 					else
//  654 						Menu_page_Draw_button(main_page_OSD_door_info,sub_page_OSD_LR_door);
??Door_data_pro_fun_23:
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall Menu_page_Draw_button
        BL       Menu_page_Draw_button
//  655 					m_CarDoorInfo.door_show_timer=1000;
??Door_data_pro_fun_24:
        LDR.W    R0,??DataTable11_11
        MOV      R1,#+1000
        STR      R1,[R0, #+12]
//  656 					break;				
//  657 				}
//  658 
//  659 			if(Sys.Main_Source==SRC_NAVI)
??Door_data_pro_fun_17:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??Door_data_pro_fun_25
//  660 				{
//  661 			GPS_small_show();
          CFI FunCall GPS_small_show
        BL       GPS_small_show
//  662 				}
//  663 
//  664 			if(m_CarDoorInfo.show_id<(door_index-1))
??Door_data_pro_fun_25:
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+7]
        LDR.W    R1,??DataTable11_13
        LDRB     R1,[R1, #+0]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BGE.N    ??Door_data_pro_fun_26
//  665 				m_CarDoorInfo.show_id++;
        LDR.W    R0,??DataTable11_11
        LDRB     R0,[R0, #+7]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable11_11
        STRB     R0,[R1, #+7]
        B.N      ??Door_data_pro_fun_13
//  666 			else
//  667 				m_CarDoorInfo.show_id=0;
??Door_data_pro_fun_26:
        LDR.W    R0,??DataTable11_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
//  668 			}
//  669 		}
//  670 			#if 0
//  671 		else if(Sys.main_osd==main_page_OSD_door_info)
//  672 		{
//  673 			Adjust_menu_Source(Sys.Main_Source);
//  674 		}
//  675 			#endif
//  676 
//  677 }
??Door_data_pro_fun_13:
??Door_data_pro_fun_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock14
//  678 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function Adjust_menu_Source
        THUMB
//  679 void Adjust_menu_Source(BYTE Source)
//  680 {
Adjust_menu_Source:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  681 	//if(Sys.Main_Source!=Source)
//  682 	//BackLight(0);
//  683 	//if(Source==SRC_CAM)
//  684 	//	POWER_RearVideoOn();
//  685 	//else
//  686 	//	POWER_RearVideoOff();
//  687 	
//  688     //   TW8836_Src(Source);
//  689 
//  690 	//Sys.Main_Source=Source;
//  691 
//  692 	if((!m_RADAR.power_on_statu)||(Sys.FS_select.auto_rada_onoff_id==0))
        LDR.W    R0,??DataTable11_5
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??Adjust_menu_Source_0
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+30]
        CMP      R0,#+0
        BNE.N    ??Adjust_menu_Source_1
//  693 	{
//  694        	switch(Source)
??Adjust_menu_Source_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+3
        BEQ.N    ??Adjust_menu_Source_2
        CMP      R0,#+11
        BEQ.N    ??Adjust_menu_Source_3
        CMP      R0,#+18
        BEQ.N    ??Adjust_menu_Source_4
        B.N      ??Adjust_menu_Source_5
//  695 		{
//  696 		case SRC_NAVI:
//  697 			Menu_page_DrawImage(main_page_OSD_navi,0);
??Adjust_menu_Source_2:
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  698 			if(Sys.FS_select.NAV_setup_show==0)
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+49]
        CMP      R0,#+0
        BNE.N    ??Adjust_menu_Source_6
//  699 				GPS_big_show();
          CFI FunCall GPS_big_show
        BL       GPS_big_show
        B.N      ??Adjust_menu_Source_7
//  700 			else
//  701 				GPS_small_show();
??Adjust_menu_Source_6:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
//  702 
//  703 			break;
??Adjust_menu_Source_7:
        B.N      ??Adjust_menu_Source_8
//  704 		case SRC_CAM:
//  705 			if(Sys.FS_select.cam_type_onoff_id==0)
??Adjust_menu_Source_3:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BNE.N    ??Adjust_menu_Source_9
//  706 				Menu_page_DrawImage(main_page_OSD_font_rada,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??Adjust_menu_Source_10
//  707 			else if(Sys.FS_select.cam_type_onoff_id==1)
??Adjust_menu_Source_9:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+1
        BNE.N    ??Adjust_menu_Source_11
//  708 			Menu_page_DrawImage(main_page_OSD_back_rada,Sys.u8back_mode_status);
        LDR.N    R0,??DataTable10_3
        LDRB     R1,[R0, #+17]
        MOVS     R0,#+3
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??Adjust_menu_Source_10
//  709 			else if(Sys.FS_select.cam_type_onoff_id==2)
??Adjust_menu_Source_11:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+2
        BNE.N    ??Adjust_menu_Source_10
//  710 				Menu_page_DrawImage(main_page_OSD_none,sub_page_OSD_none);
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  711 			break;
??Adjust_menu_Source_10:
        B.N      ??Adjust_menu_Source_8
//  712 		case SRC_CarMedia:
//  713 			Menu_page_DrawImage(main_page_OSD_Home,Sys.Car_Main_Source);
??Adjust_menu_Source_4:
        LDR.N    R0,??DataTable10_3
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+2
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  714 
//  715 			break;
        B.N      ??Adjust_menu_Source_8
//  716 		default:
//  717 			Menu_page_DrawImage(main_page_OSD_Home,Sys.Car_Main_Source);
??Adjust_menu_Source_5:
        LDR.N    R0,??DataTable10_3
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+2
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  718 			Sys.Main_Source=SRC_CarMedia;
        LDR.N    R0,??DataTable10_3
        MOVS     R1,#+18
        STRB     R1,[R0, #+2]
//  719 			break;
        B.N      ??Adjust_menu_Source_8
//  720        	}
//  721 	}
//  722 	else
//  723 	{
//  724        	switch(Source)
??Adjust_menu_Source_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+3
        BEQ.N    ??Adjust_menu_Source_12
        CMP      R0,#+11
        BEQ.N    ??Adjust_menu_Source_13
        CMP      R0,#+18
        BEQ.N    ??Adjust_menu_Source_14
        B.N      ??Adjust_menu_Source_15
//  725 		{
//  726 		case SRC_NAVI:
//  727 						GPS_small_show();
??Adjust_menu_Source_12:
          CFI FunCall GPS_small_show
        BL       GPS_small_show
//  728 			Menu_page_DrawImage(main_page_OSD_font_rada,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  729 			
//  730 
//  731 			break;
        B.N      ??Adjust_menu_Source_8
//  732 		case SRC_CAM:
//  733 			if(Sys.FS_select.cam_type_onoff_id==0)
??Adjust_menu_Source_13:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BNE.N    ??Adjust_menu_Source_16
//  734 				Menu_page_DrawImage(main_page_OSD_font_rada,0);
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??Adjust_menu_Source_17
//  735 			else if(Sys.FS_select.cam_type_onoff_id==1)
??Adjust_menu_Source_16:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+1
        BNE.N    ??Adjust_menu_Source_18
//  736 			Menu_page_DrawImage(main_page_OSD_back_rada,Sys.u8back_mode_status);
        LDR.N    R0,??DataTable10_3
        LDRB     R1,[R0, #+17]
        MOVS     R0,#+3
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
        B.N      ??Adjust_menu_Source_17
//  737 			else if(Sys.FS_select.cam_type_onoff_id==2)
??Adjust_menu_Source_18:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+2
        BNE.N    ??Adjust_menu_Source_17
//  738 				Menu_page_DrawImage(main_page_OSD_none,sub_page_OSD_none);
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  739 
//  740 			break;
??Adjust_menu_Source_17:
        B.N      ??Adjust_menu_Source_8
//  741 		case SRC_CarMedia:
//  742 			Menu_page_DrawImage(main_page_OSD_font_rada,0);
??Adjust_menu_Source_14:
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  743 
//  744 			break;
        B.N      ??Adjust_menu_Source_8
//  745 		default:
//  746 			Menu_page_DrawImage(main_page_OSD_font_rada,0);
??Adjust_menu_Source_15:
        MOVS     R1,#+0
        MOVS     R0,#+7
          CFI FunCall Menu_page_DrawImage
        BL       Menu_page_DrawImage
//  747 			Sys.Main_Source=SRC_CarMedia;
        LDR.N    R0,??DataTable10_3
        MOVS     R1,#+18
        STRB     R1,[R0, #+2]
//  748 			break;
//  749        		}
//  750 	
//  751 	}
//  752 		
//  753 		
//  754 	//	Sys.WVedio_show_timer=50;
//  755 
//  756 }
??Adjust_menu_Source_8:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock15
//  757 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function BackAllCheck
          CFI NoCalls
        THUMB
//  758 void BackAllCheck(void)
//  759 {
//  760 	if(!BACK_PIN_STATUS()) //(1)//
BackAllCheck:
        LDR.N    R0,??DataTable11_14  ;; 0x40010808
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??BackAllCheck_0
//  761 	{
//  762 	  
//  763 	  if(Sys.FS_select.cam_type_onoff_id!=3)
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+3
        BEQ.N    ??BackAllCheck_1
//  764 		  {
//  765 		//g_stuBACKCNTR.u8CurState = CAM_ON;
//  766 		Sys.u8IO_back_status=CAM_ON_from_IO;
        LDR.N    R0,??DataTable10_3
        MOVS     R1,#+2
        STRB     R1,[R0, #+14]
        B.N      ??BackAllCheck_1
//  767 		//POWER_RearVideoOn();
//  768 		}
//  769 	
//  770 	}
//  771 	else
//  772 	{
//  773 	  if(!Sys.wRearOnByCanTimer)
??BackAllCheck_0:
        LDR.N    R0,??DataTable10_3
        LDR      R0,[R0, #+64]
        CMP      R0,#+0
        BNE.N    ??BackAllCheck_1
//  774 	  {
//  775 		
//  776 		
//  777 		if((Sys.FS_select.cam_type_onoff_id!=3)&&(Sys.u8can_back_status!=CAM_ON_from_can))
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+3
        BEQ.N    ??BackAllCheck_1
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+13]
        CMP      R0,#+1
        BEQ.N    ??BackAllCheck_1
//  778 			{
//  779 		 //g_stuBACKCNTR.u8CurState = CAM_OFF;
//  780 		 
//  781 		 Sys.u8IO_back_status=CAM_off_id;
        LDR.N    R0,??DataTable10_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
//  782 		 //POWER_RearVideoOff();
//  783 		 // g_stuBACKCNTR.u8CurState = CAM_ON;
//  784 		 // g_stuPARKCNTR.u8CurState = PARK_OFF;
//  785 		 // POWER_RearVideoOn();
//  786 			}
//  787 	  }
//  788 	
//  789 	}
//  790 
//  791 	
//  792 	if((Sys.u8IO_back_status==CAM_ON_from_IO)||(Sys.u8can_back_status==CAM_ON_from_can))//||(g_stuBACKCNTR.u8can_rada_status==CAM_ON_from_can))
??BackAllCheck_1:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+14]
        CMP      R0,#+2
        BEQ.N    ??BackAllCheck_2
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+13]
        CMP      R0,#+1
        BNE.N    ??BackAllCheck_3
//  793 		{
//  794 			if(Sys.FS_select.cam_type_onoff_id!=3)
??BackAllCheck_2:
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+31]
        CMP      R0,#+3
        BEQ.N    ??BackAllCheck_4
//  795 			{
//  796 			Sys.u8back_status = CAM_ON;
        LDR.N    R0,??DataTable10_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+15]
        B.N      ??BackAllCheck_4
//  797 			}
//  798 		}
//  799 	else
//  800 		{
//  801 			Sys.u8back_status = CAM_OFF;
??BackAllCheck_3:
        LDR.N    R0,??DataTable10_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
//  802 		}
//  803 
//  804 
//  805 }
??BackAllCheck_4:
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  806 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function GPS_small_show
        THUMB
//  807 void GPS_small_show()
//  808 {
GPS_small_show:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  809 	TW8836_WritePage(0x02);
        MOVS     R0,#+2
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  810 	TW8836_Write(0x04, 0x20);
        MOVS     R1,#+32
        MOVS     R0,#+4
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  811 	TW8836_Write(0x03, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+3
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  812 	TW8836_Write(0x0C, 0x33);
        MOVS     R1,#+51
        MOVS     R0,#+12
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  813 
//  814 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock17
//  815 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function GPS_big_show
        THUMB
//  816 void GPS_big_show()
//  817 {
GPS_big_show:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  818 	TW8836_WritePage(0x02);
        MOVS     R0,#+2
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  819 	TW8836_Write(0x04, 0x14);
        MOVS     R1,#+20
        MOVS     R0,#+4
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  820 	TW8836_Write(0x03, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+3
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  821 	TW8836_Write(0x0C, 0x2b);
        MOVS     R1,#+43
        MOVS     R0,#+12
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  822 
//  823 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock18
//  824 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function Source_init
          CFI NoCalls
        THUMB
//  825 void Source_init(BYTE Source)
//  826 {}
Source_init:
        BX       LR               ;; return
          CFI EndBlock cfiBlock19

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function Source_init_twozone
        THUMB
//  827 void Source_init_twozone(BYTE Source)
//  828 {
Source_init_twozone:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  829 	switch(Sys.Main_Source)
        LDR.N    R0,??DataTable10_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+2
        BEQ.N    ??Source_init_twozone_0
        CMP      R0,#+9
        BNE.N    ??Source_init_twozone_1
//  830 	{
//  831 		case SRC_vdisc://主信号源是碟盒时 ，后区不能是DVD
//  832 			if(Source==SRC_DVD)
??Source_init_twozone_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??Source_init_twozone_3
//  833 				Source_init(SRC_vdisc);
        MOVS     R0,#+9
          CFI FunCall Source_init
        BL       Source_init
        B.N      ??Source_init_twozone_4
//  834 			else
//  835 				Source_init(Source);
??Source_init_twozone_3:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall Source_init
        BL       Source_init
//  836 			//DVD_UartSend(Dvd_Key, DVD_PLAY);
//  837 			break;
??Source_init_twozone_4:
        B.N      ??Source_init_twozone_5
//  838 		case SRC_DVD:
//  839 			//DVD_UartSend(Dvd_Key, DVD_PLAY);
//  840 			break;
??Source_init_twozone_0:
        B.N      ??Source_init_twozone_5
//  841 		default:
//  842 			Source_init(Source);
??Source_init_twozone_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall Source_init
        BL       Source_init
//  843 			break;
//  844 	}
//  845 }
??Source_init_twozone_5:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     Time_10ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     Time_50ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     Sys_CAN_light

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     EEPROM_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     Time_100ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     Navi_osd_update_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     Time_300ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     Time_500ms_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     Time_1s_arrival

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function AUX_Function
          CFI NoCalls
        THUMB
//  846 void AUX_Function(void)
//  847 {}
AUX_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  848 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function CAM_Function
          CFI NoCalls
        THUMB
//  849 void CAM_Function(void)
//  850 {}
CAM_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
//  851 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function BLUETOOTH_Function
          CFI NoCalls
        THUMB
//  852 void BLUETOOTH_Function(void)
//  853 {
//  854 	//RemValue=BLUETOOTH_Command(RemValue);
//  855 }
BLUETOOTH_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  856 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function BLUETOOTH_Command
          CFI NoCalls
        THUMB
//  857 BYTE BLUETOOTH_Command(BYTE value)
//  858 {
BLUETOOTH_Command:
        MOVS     R1,R0
//  859     return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  860 }
//  861 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function GPS_Function
          CFI NoCalls
        THUMB
//  862 void GPS_Function(void)
//  863 {}
GPS_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock25

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function Videoplay_function
          CFI NoCalls
        THUMB
//  864 void Videoplay_function(void)
//  865 {
//  866 
//  867 }
Videoplay_function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  868 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function Videoplay_Command
          CFI NoCalls
        THUMB
//  869 BYTE Videoplay_Command(BYTE value)
//  870 {
Videoplay_Command:
        MOVS     R1,R0
//  871    return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
//  872 }
//  873 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function Audioplay_function
          CFI NoCalls
        THUMB
//  874 void Audioplay_function(void)
//  875 {
//  876 
//  877 }
Audioplay_function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
//  878 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function Audioplay_Command
          CFI NoCalls
        THUMB
//  879 BYTE Audioplay_Command(BYTE value)
//  880 {
Audioplay_Command:
        MOVS     R1,R0
//  881    return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
//  882 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function APPplay_function
          CFI NoCalls
        THUMB
//  883 void APPplay_function(void)
//  884 {
//  885 
//  886 }
APPplay_function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
//  887 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function APPplay_Command
          CFI NoCalls
        THUMB
//  888 BYTE APPplay_Command(BYTE value)
//  889 {
APPplay_Command:
        MOVS     R1,R0
//  890    return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock31
//  891 }
//  892 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function VCR_function
          CFI NoCalls
        THUMB
//  893 void VCR_function(void)
//  894 {
//  895 	//RemValue=VCR_Command(RemValue);
//  896 }
VCR_function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock32
//  897 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function VCR_Command
          CFI NoCalls
        THUMB
//  898 BYTE VCR_Command(BYTE value)
//  899 {
VCR_Command:
        MOVS     R1,R0
//  900    return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock33
//  901 }
//  902 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function IPOD_function
          CFI NoCalls
        THUMB
//  903 void IPOD_function(void)
//  904 {
//  905 
//  906 }
IPOD_function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock34
//  907 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function Ipod_Command
          CFI NoCalls
        THUMB
//  908 BYTE Ipod_Command(BYTE value)
//  909 {
Ipod_Command:
        MOVS     R1,R0
//  910    return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock35
//  911 }
//  912 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function Cambox_Function
          CFI NoCalls
        THUMB
//  913 void Cambox_Function(void)
//  914 {}
Cambox_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock36
//  915 
//  916 
//  917 ///发送DVD/VDISC控制命令

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function Cambox_UartSend
          CFI NoCalls
        THUMB
//  918  void Cambox_UartSend(BYTE command, BYTE param)
//  919 {}
Cambox_UartSend:
        BX       LR               ;; return
          CFI EndBlock cfiBlock37
//  920 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function Ipod_MUL_Function
          CFI NoCalls
        THUMB
//  921 void	Ipod_MUL_Function(void)
//  922 {}
Ipod_MUL_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock38
//  923 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function Audioplay_MUL_Function
          CFI NoCalls
        THUMB
//  924 void	Audioplay_MUL_Function(void)
//  925 {}
Audioplay_MUL_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock39

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function Videoplay_MUL_Function
          CFI NoCalls
        THUMB
//  926 void	Videoplay_MUL_Function(void)
//  927 {}
Videoplay_MUL_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock40

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function BLUETOOTH_MUL_Function
          CFI NoCalls
        THUMB
//  928 void	BLUETOOTH_MUL_Function(void)
//  929 {
//  930 
//  931 }
BLUETOOTH_MUL_Function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock41
//  932 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function GetLockCode
          CFI NoCalls
        THUMB
//  933 void GetLockCode(void)
//  934 {}
GetLockCode:
        BX       LR               ;; return
          CFI EndBlock cfiBlock42
//  935 
//  936 #define CBACK_TRACK_MAX_ANGLE                      32
//  937 #define TT 126//比32等分略小(128-2)
//  938 #define bwm_angle_count 0x2000
//  939 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  940 const U16 CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE+1] =
CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB:
        DATA
        DC32 8192, 8066, 7940, 7814, 7688, 7562, 7436, 7310, 7184, 7058, 6932
        DC32 6806, 6680, 6554, 6428, 6302, 6176, 6050, 5924, 5798, 5672, 5546
        DC32 5420, 5294, 5168, 5042, 4916, 4790, 4664, 4538, 4412, 4286, 4160
//  941 {
//  942 	bwm_angle_count,//	0+	
//  943 	bwm_angle_count-TT*1,//  1+  
//  944 	bwm_angle_count-TT*2,//  2+  
//  945 	bwm_angle_count-TT*3,//  3+  
//  946 	bwm_angle_count-TT*4,//  4+  
//  947 	bwm_angle_count-TT*5,//  5+  
//  948 	bwm_angle_count-TT*6,//  6+  
//  949 	bwm_angle_count-TT*7,//  7+  
//  950 	bwm_angle_count-TT*8,//  8+  
//  951 	bwm_angle_count-TT*9,//  9+  
//  952 	bwm_angle_count-TT*10,//  10+ 
//  953 	bwm_angle_count-TT*11,//  11+ 
//  954 	bwm_angle_count-TT*12,//  12+ 
//  955 	bwm_angle_count-TT*13,//  13+ 
//  956 	bwm_angle_count-TT*14,//  14+ 
//  957 	bwm_angle_count-TT*15,//  15+ 
//  958 	bwm_angle_count-TT*16,//  16+ 
//  959 	bwm_angle_count-TT*17,//  17+ 
//  960 	bwm_angle_count-TT*18,//  18+ 
//  961 	bwm_angle_count-TT*19,//  19+ 
//  962 	bwm_angle_count-TT*20,//  20+ 
//  963 	bwm_angle_count-TT*21,//  21+ 
//  964 	bwm_angle_count-TT*22,//  22+ 
//  965 	bwm_angle_count-TT*23,//  23+ 
//  966 	bwm_angle_count-TT*24,//  24+ 
//  967 	bwm_angle_count-TT*25,//  25+ 
//  968 	bwm_angle_count-TT*26,//  26+ 
//  969 	bwm_angle_count-TT*27,//  27+ 
//  970 	bwm_angle_count-TT*28,//  28+ 
//  971 	bwm_angle_count-TT*29,//  29+ 
//  972 	bwm_angle_count-TT*30,//  30+ 
//  973 	bwm_angle_count-TT*31,//  31+ 
//  974 	bwm_angle_count-TT*32,//  31+
//  975 
//  976 
//  977 };

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  978 const  U16 CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE+1] =
CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB:
        DATA
        DC32 8192, 8318, 8444, 8570, 8696, 8822, 8948, 9074, 9200, 9326, 9452
        DC32 9578, 9704, 9830, 9956, 10082, 10208, 10334, 10460, 10586, 10712
        DC32 10838, 10964, 11090, 11216, 11342, 11468, 11594, 11720, 11846
        DC32 11972, 12098, 12224
//  979 {
//  980 
//  981 	bwm_angle_count,//	0+	
//  982 	bwm_angle_count+TT*1,//  1+  
//  983 	bwm_angle_count+TT*2,//  2+  
//  984 	bwm_angle_count+TT*3,//  3+  
//  985 	bwm_angle_count+TT*4,//  4+  
//  986 	bwm_angle_count+TT*5,//  5+  
//  987 	bwm_angle_count+TT*6,//  6+  
//  988 	bwm_angle_count+TT*7,//  7+  
//  989 	bwm_angle_count+TT*8,//  8+  
//  990 	bwm_angle_count+TT*9,//  9+  
//  991 	bwm_angle_count+TT*10,//  10+ 
//  992 	bwm_angle_count+TT*11,//  11+ 
//  993 	bwm_angle_count+TT*12,//  12+ 
//  994 	bwm_angle_count+TT*13,//  13+ 
//  995 	bwm_angle_count+TT*14,//  14+ 
//  996 	bwm_angle_count+TT*15,//  15+ 
//  997 	bwm_angle_count+TT*16,//  16+ 
//  998 	bwm_angle_count+TT*17,//  17+ 
//  999 	bwm_angle_count+TT*18,//  18+ 
// 1000 	bwm_angle_count+TT*19,//  19+ 
// 1001 	bwm_angle_count+TT*20,//  20+ 
// 1002 	bwm_angle_count+TT*21,//  21+ 
// 1003 	bwm_angle_count+TT*22,//  22+ 
// 1004 	bwm_angle_count+TT*23,//  23+ 
// 1005 	bwm_angle_count+TT*24,//  24+ 
// 1006 	bwm_angle_count+TT*25,//  25+ 
// 1007 	bwm_angle_count+TT*26,//  26+ 
// 1008 	bwm_angle_count+TT*27,//  27+ 
// 1009 	bwm_angle_count+TT*28,//  28+ 
// 1010 	bwm_angle_count+TT*29,//  29+ 
// 1011 	bwm_angle_count+TT*30,//  30+ 
// 1012 	bwm_angle_count+TT*31,//  31+ 
// 1013 	bwm_angle_count+TT*32,//  31+
// 1014 
// 1015 
// 1016 };

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function CBackTrack_GetAngleIndex
          CFI NoCalls
        THUMB
// 1017 BYTE CBackTrack_GetAngleIndex(U16 angle_val)
// 1018 {
CBackTrack_GetAngleIndex:
        MOVS     R1,R0
// 1019 
// 1020     static BYTE index;
// 1021 	
// 1022 #if 0
// 1023 	DWORD DWcount_sum=0;
// 1024 for(int i=1;i<BENZE_CAN_Steering_angle_BUF_MAX;i++)
// 1025 {
// 1026 	m_BMW_CAN.benze_Steering_angle[BENZE_CAN_Steering_angle_BUF_MAX-i]=m_BMW_CAN.benze_Steering_angle[BENZE_CAN_Steering_angle_BUF_MAX-1-i];
// 1027 	DWcount_sum+=m_BMW_CAN.benze_Steering_angle[BENZE_CAN_Steering_angle_BUF_MAX-i];
// 1028 }
// 1029     DWcount_sum/=(BENZE_CAN_Steering_angle_BUF_MAX-1);
// 1030 	angle_val=DWcount_sum;
// 1031 #endif
// 1032 	angle_val=angle_val&0xff00;
        ANDS     R1,R1,#0xFF00
// 1033 
// 1034 
// 1035     if (angle_val == CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[0])
        LDR.N    R0,??DataTable11_15
        LDR      R0,[R0, #+0]
        CMP      R1,R0
        BNE.N    ??CBackTrack_GetAngleIndex_0
// 1036         return 0;
        MOVS     R0,#+0
        B.N      ??CBackTrack_GetAngleIndex_1
// 1037     else
// 1038     {
// 1039 
// 1040         if (angle_val > CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[1] )
??CBackTrack_GetAngleIndex_0:
        LDR.N    R0,??DataTable11_15
        LDR      R0,[R0, #+4]
        CMP      R0,R1
        BCS.N    ??CBackTrack_GetAngleIndex_2
// 1041             //Right tune
// 1042         {
// 1043             for(index = 0; index < CBACK_TRACK_MAX_ANGLE; index++)
        LDR.N    R0,??DataTable11_16
        MOVS     R2,#+0
        STRB     R2,[R0, #+0]
??CBackTrack_GetAngleIndex_3:
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+32
        BCS.N    ??CBackTrack_GetAngleIndex_4
// 1044             {
// 1045                 if((angle_val <= CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[index+1]) && (angle_val > CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[index]))
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        LDR.N    R2,??DataTable11_17
        ADDS     R0,R2,R0, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,R1
        BCC.N    ??CBackTrack_GetAngleIndex_5
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        LDR.N    R2,??DataTable11_17
        LDR      R0,[R2, R0, LSL #+2]
        CMP      R0,R1
        BCS.N    ??CBackTrack_GetAngleIndex_5
// 1046                 {
// 1047                     return index;
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        B.N      ??CBackTrack_GetAngleIndex_1
// 1048                 }
// 1049             }
??CBackTrack_GetAngleIndex_5:
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R2,??DataTable11_16
        STRB     R0,[R2, #+0]
        B.N      ??CBackTrack_GetAngleIndex_3
// 1050 
// 1051 			if(angle_val > CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE] )
??CBackTrack_GetAngleIndex_4:
        LDR.N    R0,??DataTable11_17
        LDR      R0,[R0, #+128]
        CMP      R0,R1
        BCS.N    ??CBackTrack_GetAngleIndex_6
// 1052             	return CBACK_TRACK_MAX_ANGLE-1;
        MOVS     R0,#+31
        B.N      ??CBackTrack_GetAngleIndex_1
// 1053 			else
// 1054                 return 0;
??CBackTrack_GetAngleIndex_6:
        MOVS     R0,#+0
        B.N      ??CBackTrack_GetAngleIndex_1
// 1055         }
// 1056         else// if (angle_val >= 0x7F6C)
// 1057             //left tune
// 1058         {
// 1059             for(index = 0; index < CBACK_TRACK_MAX_ANGLE; index++)
??CBackTrack_GetAngleIndex_2:
        LDR.N    R0,??DataTable11_16
        MOVS     R2,#+0
        STRB     R2,[R0, #+0]
??CBackTrack_GetAngleIndex_7:
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+32
        BCS.N    ??CBackTrack_GetAngleIndex_8
// 1060             {
// 1061                 if((angle_val <= CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[index]) && (angle_val > CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[index+1]))
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        LDR.N    R2,??DataTable11_15
        LDR      R0,[R2, R0, LSL #+2]
        CMP      R0,R1
        BCC.N    ??CBackTrack_GetAngleIndex_9
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        LDR.N    R2,??DataTable11_15
        ADDS     R0,R2,R0, LSL #+2
        LDR      R0,[R0, #+4]
        CMP      R0,R1
        BCS.N    ??CBackTrack_GetAngleIndex_9
// 1062                 {
// 1063                     return index+CBACK_TRACK_MAX_ANGLE;
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+32
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??CBackTrack_GetAngleIndex_1
// 1064                 }
// 1065             }
??CBackTrack_GetAngleIndex_9:
        LDR.N    R0,??DataTable11_16
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R2,??DataTable11_16
        STRB     R0,[R2, #+0]
        B.N      ??CBackTrack_GetAngleIndex_7
// 1066 
// 1067 			if(angle_val<CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE])
??CBackTrack_GetAngleIndex_8:
        LDR.N    R0,??DataTable11_15
        LDR      R0,[R0, #+128]
        CMP      R1,R0
        BCS.N    ??CBackTrack_GetAngleIndex_10
// 1068 				return CBACK_TRACK_MAX_ANGLE+CBACK_TRACK_MAX_ANGLE-1;
        MOVS     R0,#+63
        B.N      ??CBackTrack_GetAngleIndex_1
// 1069 			//else
// 1070 			//	return CBACK_TRACK_MAX_ANGLE;
// 1071         }
// 1072 
// 1073     }
// 1074     return 0;
??CBackTrack_GetAngleIndex_10:
        MOVS     R0,#+0
??CBackTrack_GetAngleIndex_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock43
// 1075 };

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     Time_5s_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     Time_minute_arrival

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x801f400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x801fc00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     m_RADAR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     gNaviSystemOn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     gNaviCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     gNaviSendFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     m_BMW_CAN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     g_GPS_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     m_CarDoorInfo

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     door_show_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     door_index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     0x40010808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     ??index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??index:
        DS8 1

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 1076 
// 1077 
// 1078 
// 
//    81 bytes in section .bss
//   264 bytes in section .rodata
// 3 430 bytes in section .text
// 
// 3 430 bytes of CODE  memory
//   264 bytes of CONST memory
//    81 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
