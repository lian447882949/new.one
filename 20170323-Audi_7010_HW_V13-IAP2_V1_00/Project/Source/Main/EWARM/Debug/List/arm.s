///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:41 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\ARM\arm.c                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\ARM\arm.c -D USE_STDPERIPH_DRIVER  /
//                    -D USE_STM32100B_EVAL -D STM32F10X_CL -lc               /
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
//                    \Debug\List\arm.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME `arm`

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN EEPROM_DATA
        EXTERN System_Power_Status
        EXTERN System_init_ok
        EXTERN System_openlogo_init_ok
        EXTERN System_save_ok
        EXTERN UART_SRC_process
        EXTERN UART_SetFM_process
        EXTERN UART_Touch_process
        EXTERN UART_get_version_process

        PUBLIC ARM_Done_index
        PUBLIC ARM_Max_Time_Cnt
        PUBLIC ARM_Rec_buffer
        PUBLIC ARM_Rec_temp
        PUBLIC ARM_Receive_Cnt
        PUBLIC ARM_Receive_OK
        PUBLIC ARM_Receive_ack
        PUBLIC ARM_Receive_index
        PUBLIC ARM_Receive_length
        PUBLIC ARM_Send_length
        PUBLIC ARM_Send_temp
        PUBLIC ARM_USART1_Status
        PUBLIC ARM_ack_request
        PUBLIC ARM_data_Process
        PUBLIC ARM_rec_ContrPoll_buff
        PUBLIC ARM_rec_HWMute_buff
        PUBLIC ARM_rec_TimeSet_buff
        PUBLIC ARM_rec_USART1_buff
        PUBLIC ARM_rec_canbus_public_buff
        PUBLIC ARM_rec_canupgrade_buff
        PUBLIC ARM_rec_function_config_buff
        PUBLIC ARM_rec_menu_analogtv_buff
        PUBLIC ARM_rec_menu_audioplay_buff
        PUBLIC ARM_rec_menu_bt_buff
        PUBLIC ARM_rec_menu_cam_buff
        PUBLIC ARM_rec_menu_cambox_buff
        PUBLIC ARM_rec_menu_digitv_buff
        PUBLIC ARM_rec_menu_dvd_buff
        PUBLIC ARM_rec_menu_factory_buff
        PUBLIC ARM_rec_menu_main_buff
        PUBLIC ARM_rec_menu_navi_buff
        PUBLIC ARM_rec_menu_radio_buff
        PUBLIC ARM_rec_menu_req_buff
        PUBLIC ARM_rec_menu_setup_buff
        PUBLIC ARM_rec_menu_steer_buff
        PUBLIC ARM_rec_menu_videoplay_buff
        PUBLIC ARM_rec_openlogo_init_buff
        PUBLIC ARM_rec_power_buff
        PUBLIC ARM_rec_src_buff
        PUBLIC ARM_rec_start_buff
        PUBLIC ARM_rec_system_config_buff
        PUBLIC ARM_rec_touch_buff
        PUBLIC ARM_rec_upgrade_buff
        PUBLIC ARM_send_id
        PUBLIC Rem_SRC_long_set
        PUBLIC WINCA_ProtocolFlag
        PUBLIC gFMFrequency
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\ARM\arm.c
//    1 #define _ARM_C_
//    2 
//    3 #include "compile.h"
//    4 
//    5 #include "stm32f10x_conf.h"
//    6 
//    7 
//    8 #include "port.h"
//    9 #include "main.h"
//   10 #include "libr.h"
//   11 
//   12 #include "arm.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_rec_start_buff[1]
ARM_rec_start_buff:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute Byte ARM_rec_openlogo_init_buff[2]
ARM_rec_openlogo_init_buff:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_power_buff[3]
ARM_rec_power_buff:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute Byte ARM_rec_menu_req_buff[2]
ARM_rec_menu_req_buff:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute Byte ARM_rec_src_buff[2]
ARM_rec_src_buff:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_touch_buff[5]
ARM_rec_touch_buff:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_rec_menu_main_buff[1]
ARM_rec_menu_main_buff:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_radio_buff[3]
ARM_rec_menu_radio_buff:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_bt_buff[30]
ARM_rec_menu_bt_buff:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_dvd_buff[16]
ARM_rec_menu_dvd_buff:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_audioplay_buff[8]
ARM_rec_menu_audioplay_buff:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_videoplay_buff[8]
ARM_rec_menu_videoplay_buff:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_rec_menu_cam_buff[1]
ARM_rec_menu_cam_buff:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_rec_menu_navi_buff[1]
ARM_rec_menu_navi_buff:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_rec_menu_digitv_buff[1]
ARM_rec_menu_digitv_buff:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_analogtv_buff[3]
ARM_rec_menu_analogtv_buff:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_cambox_buff[35]
ARM_rec_menu_cambox_buff:
        DS8 36

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_setup_buff[13]
ARM_rec_menu_setup_buff:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_factory_buff[4]
ARM_rec_menu_factory_buff:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_menu_steer_buff[80]
ARM_rec_menu_steer_buff:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute Byte ARM_rec_upgrade_buff[2]
ARM_rec_upgrade_buff:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_system_config_buff[67]
ARM_rec_system_config_buff:
        DS8 68

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_function_config_buff[28]
ARM_rec_function_config_buff:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute Byte ARM_rec_ContrPoll_buff[2]
ARM_rec_ContrPoll_buff:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_rec_USART1_buff[1]
ARM_rec_USART1_buff:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_TimeSet_buff[6]
ARM_rec_TimeSet_buff:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_HWMute_buff[3]
ARM_rec_HWMute_buff:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_canupgrade_buff[80]
ARM_rec_canupgrade_buff:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte WINCA_ProtocolFlag
WINCA_ProtocolFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_USART1_Status
ARM_USART1_Status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte Rem_SRC_long_set
Rem_SRC_long_set:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_rec_canbus_public_buff[30]
ARM_rec_canbus_public_buff:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute UINT gFMFrequency
gFMFrequency:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_Rec_temp[100]
ARM_Rec_temp:
        DS8 100

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_Rec_buffer[10][100]
ARM_Rec_buffer:
        DS8 1000

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_Receive_index
ARM_Receive_index:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_Done_index
ARM_Done_index:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_Receive_Cnt
ARM_Receive_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_Max_Time_Cnt
ARM_Max_Time_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_Receive_OK
ARM_Receive_OK:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_Receive_length
ARM_Receive_length:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_Receive_ack
ARM_Receive_ack:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_send_id
ARM_send_id:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_ack_request
ARM_ack_request:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute Byte ARM_Send_temp[100]
ARM_Send_temp:
        DS8 100

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute Byte ARM_Send_length
ARM_Send_length:
        DS8 1
//   13 #include "arm_driver.h"
//   14 #include "uart_fun.h"
//   15 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ARM_data_Process
        THUMB
//   16 void ARM_data_Process(void)                                                                                                                                                                     
//   17 {                                                                                                                                                                                               
ARM_data_Process:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
//   18                                                                                                                                                                          
//   19   	Byte i,j;                                                                                                                                                                                   
//   20 	Byte arm_rec_type=0,arm_rec_index=0;                                                                                                                                                          
        MOVS     R6,#+0
        MOVS     R7,#+0
//   21                                                                                                                                                                                
//   22 /*                                                                                                                                                                                              
//   23 	if(ARM_ack_request!=0)                                                                                                                                                                        
//   24 	{                                                                                                                                                                                             
//   25 		ARM_Receive_ACK(ARM_ack_request);                                                                                                                                                           
//   26 		ARM_ack_request=0;		                                                                                                                                                                      
//   27 	}*/                                                                                                                                                                                           
//   28 	if(ARM_Done_index>=ARM_Receive_index_max)                                                                                                                                                     
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        CMP      R0,#+10
        BCC.N    ??ARM_data_Process_1
//   29 		ARM_Done_index=0;                                                                                                                                                                           
        LDR.W    R0,??ARM_data_Process_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   30                                                                                                                                                                   
//   31 	                                                                                                                                                                                              
//   32 	//for(ARM_Done_index=0;ARM_Done_index<ARM_Receive_index_max;ARM_Done_index++)                                                                                                                 
//   33 	for(j=0;j<ARM_Receive_index_max;j++)                                                                                                                                                          
??ARM_data_Process_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??ARM_data_Process_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+10
        BCS.W    ??ARM_data_Process_3
//   34 	{                                                                                                                                                                                             
//   35 		if(ARM_Rec_buffer[ARM_Done_index][ARM_Receive_Cnt_max-1]==ARM_Receive_Busy)		                                                                                                              
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+99]
        CMP      R0,#+85
        BNE.W    ??ARM_data_Process_4
//   36 		{                                                                                                                                                                                           
//   37 				arm_rec_type=0;	                                                                                                                                                                        
        MOVS     R0,#+0
        MOVS     R6,R0
//   38 				{                                                                                                                                                                                       
//   39 					if (ARM_Rec_buffer[ARM_Done_index][1] == COM_ARM_ID)		//os command                                                                                                                  
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+145
        BNE.N    ??ARM_data_Process_5
//   40 					{                                                                                                                                                                                     
//   41 						switch(ARM_Rec_buffer[ARM_Done_index][2])                                                                                                                                           
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??ARM_data_Process_6
        CMP      R0,#+160
        BEQ.N    ??ARM_data_Process_7
        B.N      ??ARM_data_Process_8
//   42 						{                                                                                                                                                                                   
//   43 							case Cmd_OpenCloseUSART:                                                                                                                                                          
//   44 									arm_rec_type=Cmd_OpenCloseUSART;                                                                                                                                              
??ARM_data_Process_6:
        MOVS     R0,#+0
        MOVS     R6,R0
//   45 									ARM_rec_USART1_buff[0]=ARM_Rec_buffer[ARM_Done_index][4];                                                                                                                     
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+4]
        LDR.W    R1,??ARM_data_Process_0+0x8
        STRB     R0,[R1, #+0]
//   46 									ARM_USART1_Status=ARM_rec_USART1_buff[0];                                                                                                                                     
        LDR.W    R0,??ARM_data_Process_0+0xC
        LDR.W    R1,??ARM_data_Process_0+0x8
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//   47 									                                                                                                                                                                              
//   48 									switch(ARM_rec_USART1_buff[0])                                                                                                                                                
        LDR.W    R0,??ARM_data_Process_0+0x8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??ARM_data_Process_9
        CMP      R0,#+2
        BEQ.N    ??ARM_data_Process_10
        B.N      ??ARM_data_Process_11
//   49 									{                                                                                                                                                                             
//   50 										case 0x00:		                                                                                                                                                              
//   51 											System_openlogo_init_ok=1;                                                                                                                                                
??ARM_data_Process_9:
        LDR.W    R0,??ARM_data_Process_0+0x10
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   52 						                                                                                                
//   53 											break;                                                                                                                                                                    
        B.N      ??ARM_data_Process_12
//   54 										 case 0x02://system is updating program                                                                                                                                     
//   55                                                                                                                                     
//   56 											break;                                                                                                                                                                    
??ARM_data_Process_10:
        B.N      ??ARM_data_Process_12
//   57 										default:                                                                                                                                                                    
//   58 											break;                                                                                                                                                                    
//   59                                                                                                                                                                                                 
//   60 									}                                                                                                                                                                             
//   61 								 break;                                                                                                                                                                         
??ARM_data_Process_11:
??ARM_data_Process_12:
        B.N      ??ARM_data_Process_13
//   62 							case Cmd_HandShake:                                                                                                                                                               
//   63                                                                                                                                                                                                 
//   64 								 break;                                                                                                                                                                         
??ARM_data_Process_7:
        B.N      ??ARM_data_Process_13
//   65 							                                                                                                                                                                                  
//   66 							default:                                                                                                                                                                          
//   67 								 break;                                                                                                                                                                         
??ARM_data_Process_8:
        B.N      ??ARM_data_Process_13
//   68 						}                                                                                                                                                                                   
//   69 					}                                                                                                                                                                                     
//   70 					else if(ARM_Rec_buffer[ARM_Done_index][1] == APP_ARM_ID)//APP                                                                                                                         
??ARM_data_Process_5:
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+170
        BNE.W    ??ARM_data_Process_13
//   71 					{                                                                                                                                                                                     
//   72 						switch(ARM_Rec_buffer[ARM_Done_index][2])                                                                                                                                           
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??ARM_data_Process_14
        CMP      R0,#+4
        BEQ.N    ??ARM_data_Process_15
        CMP      R0,#+5
        BEQ.N    ??ARM_data_Process_16
        CMP      R0,#+18
        BEQ.N    ??ARM_data_Process_17
        CMP      R0,#+19
        BEQ.N    ??ARM_data_Process_18
        CMP      R0,#+20
        BEQ.N    ??ARM_data_Process_19
        CMP      R0,#+65
        BEQ.W    ??ARM_data_Process_20
        CMP      R0,#+96
        BEQ.W    ??ARM_data_Process_21
        CMP      R0,#+97
        BEQ.W    ??ARM_data_Process_22
        CMP      R0,#+98
        BEQ.W    ??ARM_data_Process_23
        CMP      R0,#+99
        BEQ.W    ??ARM_data_Process_24
        CMP      R0,#+144
        BEQ.W    ??ARM_data_Process_25
        CMP      R0,#+161
        BEQ.N    ??ARM_data_Process_26
        CMP      R0,#+162
        BEQ.W    ??ARM_data_Process_27
        CMP      R0,#+163
        BEQ.W    ??ARM_data_Process_28
        CMP      R0,#+165
        BEQ.W    ??ARM_data_Process_29
        B.N      ??ARM_data_Process_30
//   73 						{                                                                                                                                                                                   
//   74 							                                                                                                                                                                                  
//   75 							case ARM_rec_start_type:                                                                                                                                                          
//   76 								for(i=0;i<ARM_rec_start_max;i++)                                                                                                                                                
??ARM_data_Process_14:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_31:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BCS.N    ??ARM_data_Process_32
//   77 									ARM_rec_start_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                                    
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x14
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_31
//   78 								arm_rec_type=ARM_rec_start_type;//---表示有数据更新--                                                                                                                           
??ARM_data_Process_32:
        MOVS     R0,#+0
        MOVS     R6,R0
//   79 								System_init_ok=1;                                                                                                                                                               
        LDR.W    R0,??ARM_data_Process_0+0x18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   80 								//HARD_MUTE_OFF();//GPIO_ResetBits(GPIOB, P_MUTE);//TSH,2013-04-22,关掉硬件?
//   81                                                                                             
//   82 								WINCA_ProtocolFlag = 1;//切换协议                                                                                                                                               
        LDR.W    R0,??ARM_data_Process_0+0x1C
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   83 								//if(BackOKID)                                                                                                                                                                  
//   84 									//UART_Rada_Send();//TSH20130605,for APP take charge the back car,we need                                                                                                     
//   85 								break;	                                                                                                                                                                        
        B.N      ??ARM_data_Process_13
//   86 							case ARM_rec_save_type:                                                                                                                                                           
//   87 								arm_rec_type=ARM_rec_save_type;//---表示有数据更新--                                                                                                                            
??ARM_data_Process_15:
        MOVS     R0,#+4
        MOVS     R6,R0
//   88 								break;                                                                                                                                                                          
        B.N      ??ARM_data_Process_13
//   89 							case ARM_rec_beep_type:                                                                                                                                                           
//   90 								arm_rec_type=ARM_rec_beep_type;//---表示有数据更新--                                                                                                                            
??ARM_data_Process_16:
        MOVS     R0,#+5
        MOVS     R6,R0
//   91 								break;                                                                                                                                                                          
        B.N      ??ARM_data_Process_13
//   92                                                                                                                                                                                                 
//   93 							case ARM_rec_src_type:                                                                                                                                                            
//   94 									for(i=0;i<ARM_rec_src_max;i++)                                                                                                                                                
??ARM_data_Process_18:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_33:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BCS.N    ??ARM_data_Process_34
//   95 									ARM_rec_src_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                                      
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x20
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_33
//   96 									arm_rec_type=ARM_rec_src_type;//---表示有数据更新--                                                                                                                           
??ARM_data_Process_34:
        MOVS     R0,#+19
        MOVS     R6,R0
//   97 									break;                                                                                                                                                                        
        B.N      ??ARM_data_Process_13
//   98 							case ARM_rec_menu_req_type:                                                                                                                                                       
//   99 									for(i=0;i<ARM_rec_menu_req_max;i++)                                                                                                                                           
??ARM_data_Process_17:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_35:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BCS.N    ??ARM_data_Process_36
//  100 										ARM_rec_menu_req_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                               
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x24
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_35
//  101 									arm_rec_type=ARM_rec_menu_req_type;//---表示有数据更新--                                                                                                                      
??ARM_data_Process_36:
        MOVS     R0,#+18
        MOVS     R6,R0
//  102 									break;	                                                                                                                                                                      
        B.N      ??ARM_data_Process_13
//  103 							case ARM_rec_touch_type:                                                                                                                                                          
//  104 									for(i=0;i<ARM_rec_touch_max;i++)                                                                                                                                              
??ARM_data_Process_19:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_37:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BCS.N    ??ARM_data_Process_38
//  105 										ARM_rec_touch_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                                  
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x28
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_37
//  106 									arm_rec_type=ARM_rec_touch_type;//---表示有数据更新--                                                                                                                         
??ARM_data_Process_38:
        MOVS     R0,#+20
        MOVS     R6,R0
//  107 						break;	                                                                                                                                                                            
        B.N      ??ARM_data_Process_13
//  108 							case ARM_rec_ControlPolling:                                                                                                                                                      
//  109 									ARM_rec_ContrPoll_buff[0]=ARM_Rec_buffer[ARM_Done_index][4];                                                                                                                  
??ARM_data_Process_26:
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+4]
        LDR.W    R1,??ARM_data_Process_0+0x2C
        STRB     R0,[R1, #+0]
//  110 									ARM_rec_ContrPoll_buff[1]=ARM_Rec_buffer[ARM_Done_index][4+1];                                                                                                                
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+5]
        LDR.W    R1,??ARM_data_Process_0+0x2C
        STRB     R0,[R1, #+1]
//  111 									arm_rec_type=ARM_rec_ControlPolling;                                                                                                                                          
        MOVS     R0,#+161
        MOVS     R6,R0
//  112 								break;                                                                                                                                                                          
        B.N      ??ARM_data_Process_13
//  113 							case ARM_rec_TimeSet:                                                                                                                                                             
//  114 								for(i=0;i<6;i++)                                                                                                                                                                
??ARM_data_Process_27:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_39:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCS.N    ??ARM_data_Process_40
//  115 								ARM_rec_TimeSet_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                                    
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x30
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_39
//  116 								arm_rec_type=ARM_rec_TimeSet;                                                                                                                                                   
??ARM_data_Process_40:
        MOVS     R0,#+162
        MOVS     R6,R0
//  117 								break;                                                                                                                                                                          
        B.N      ??ARM_data_Process_13
//  118 							case ARM_rec_HW_Mute:                                                                                                                                                             
//  119 								for(i=0;i<ARM_rec_fun_sel_max-1;i++)                                                                                                                                            
??ARM_data_Process_28:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_41:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BCS.N    ??ARM_data_Process_42
//  120 								ARM_rec_HWMute_buff[i] = ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                                   
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x34
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_41
//  121 								arm_rec_type = ARM_rec_HW_Mute;                                                                                                                                                 
??ARM_data_Process_42:
        MOVS     R0,#+163
        MOVS     R6,R0
//  122 								break;                                                                                                                                                                          
        B.N      ??ARM_data_Process_13
//  123 							case ARM_rec_menu_type:                                                                                                                                                           
//  124 								switch(ARM_Rec_buffer[ARM_Done_index][4])                                                                                                                                       
??ARM_data_Process_20:
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BEQ.N    ??ARM_data_Process_43
        CMP      R0,#+2
        BEQ.N    ??ARM_data_Process_44
        CMP      R0,#+4
        BEQ.N    ??ARM_data_Process_45
        CMP      R0,#+5
        BEQ.W    ??ARM_data_Process_46
        CMP      R0,#+6
        BEQ.N    ??ARM_data_Process_47
        CMP      R0,#+8
        BEQ.W    ??ARM_data_Process_48
        CMP      R0,#+9
        BEQ.W    ??ARM_data_Process_49
        CMP      R0,#+10
        BEQ.W    ??ARM_data_Process_50
        CMP      R0,#+11
        BEQ.W    ??ARM_data_Process_51
        CMP      R0,#+14
        BEQ.W    ??ARM_data_Process_52
        CMP      R0,#+15
        BEQ.W    ??ARM_data_Process_53
        CMP      R0,#+18
        BEQ.W    ??ARM_data_Process_54
        CMP      R0,#+19
        BEQ.W    ??ARM_data_Process_55
        CMP      R0,#+32
        BEQ.W    ??ARM_data_Process_56
        CMP      R0,#+33
        BEQ.W    ??ARM_data_Process_57
        CMP      R0,#+34
        BEQ.W    ??ARM_data_Process_58
        B.N      ??ARM_data_Process_59
//  125 								{                                                                                                                                                                               
//  126 									case ARM_rec_menu_main_type:                                                                                                                                                  
//  127 										for(i=0;i<ARM_rec_menu_main_max;i++)                                                                                                                                        
??ARM_data_Process_43:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_60:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BCS.N    ??ARM_data_Process_61
//  128 											ARM_rec_menu_main_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x38
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_60
//  129 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_61:
        MOVS     R0,#+65
        MOVS     R6,R0
//  130 										arm_rec_index=ARM_rec_menu_main_type;//---表示有数据更新--                                                                                                                  
        MOVS     R0,#+1
        MOVS     R7,R0
//  131 											break;								                                                                                                                                                    
        B.N      ??ARM_data_Process_59
//  132 									case ARM_rec_menu_radio_type:                                                                                                                                                 
//  133 											for(i=0;i<ARM_rec_menu_radio_max;i++)                                                                                                                                     
??ARM_data_Process_44:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_62:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BCS.N    ??ARM_data_Process_63
//  134 												ARM_rec_menu_radio_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                         
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x3C
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_62
//  135 											arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                      
??ARM_data_Process_63:
        MOVS     R0,#+65
        MOVS     R6,R0
//  136 											arm_rec_index=ARM_rec_menu_radio_type;//---表示有数据更新--                                                                                                               
        MOVS     R0,#+2
        MOVS     R7,R0
//  137 											break;								                                                                                                                                                    
        B.N      ??ARM_data_Process_59
//  138 									case ARM_rec_menu_bt_type:                                                                                                                                                    
//  139 											for(i=0;i<ARM_rec_menu_bt_max;i++)                                                                                                                                        
??ARM_data_Process_45:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_64:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+30
        BCS.N    ??ARM_data_Process_65
//  140 												ARM_rec_menu_bt_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x40
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_64
//  141 											arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                      
??ARM_data_Process_65:
        MOVS     R0,#+65
        MOVS     R6,R0
//  142 											arm_rec_index=ARM_rec_menu_bt_type;//---表示有数据更新--                                                                                                                  
        MOVS     R0,#+4
        MOVS     R7,R0
//  143 											break;                                                                                                                                                                    
        B.N      ??ARM_data_Process_59
//  144 									case ARM_rec_menu_dvd_type:                                                                                                                                                   
//  145 											for(i=0;i<ARM_rec_menu_dvd_max;i++)                                                                                                                                       
??ARM_data_Process_47:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_66:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BCS.N    ??ARM_data_Process_67
//  146 												ARM_rec_menu_dvd_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                           
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x44
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_66
//  147 											arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                      
??ARM_data_Process_67:
        MOVS     R0,#+65
        MOVS     R6,R0
//  148 											arm_rec_index=ARM_rec_menu_dvd_type;//---表示有数据更新--                                                                                                                 
        MOVS     R0,#+6
        MOVS     R7,R0
//  149 											break;	                                                                                                                                                                  
        B.N      ??ARM_data_Process_59
//  150 									case ARM_rec_menu_audioplay_type:                                                                                                                                             
//  151 											for(i=0;i<ARM_rec_menu_audioplay_max;i++)                                                                                                                                 
??ARM_data_Process_48:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_68:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BCS.N    ??ARM_data_Process_69
//  152 												ARM_rec_menu_audioplay_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                     
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x48
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_68
//  153 											arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                      
??ARM_data_Process_69:
        MOVS     R0,#+65
        MOVS     R6,R0
//  154 											arm_rec_index=ARM_rec_menu_audioplay_type;//---表示有数据更新--                                                                                                           
        MOVS     R0,#+8
        MOVS     R7,R0
//  155 											break;                                                                                                                                                                    
        B.N      ??ARM_data_Process_59
//  156 									case ARM_rec_menu_videoplay_type:                                                                                                                                             
//  157 											for(i=0;i<ARM_rec_menu_videoplay_max;i++)                                                                                                                                 
??ARM_data_Process_49:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_70:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BCS.N    ??ARM_data_Process_71
//  158 												ARM_rec_menu_videoplay_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                     
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x4C
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_70
//  159 											arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                      
??ARM_data_Process_71:
        MOVS     R0,#+65
        MOVS     R6,R0
//  160 											arm_rec_index=ARM_rec_menu_videoplay_type;//---表示有数据更新--                                                                                                           
        MOVS     R0,#+9
        MOVS     R7,R0
//  161 											break;                                                                                                                                                                    
        B.N      ??ARM_data_Process_59
//  162 									case ARM_rec_menu_cam_type:                                                                                                                                                   
//  163 										for(i=0;i<ARM_rec_menu_cam_max;i++)                                                                                                                                         
??ARM_data_Process_50:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_72:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BCS.N    ??ARM_data_Process_73
//  164 											ARM_rec_menu_cam_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                             
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x50
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_72
//  165 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_73:
        MOVS     R0,#+65
        MOVS     R6,R0
//  166 										arm_rec_index=ARM_rec_menu_cam_type;//---表示有数据更新--                                                                                                                   
        MOVS     R0,#+10
        MOVS     R7,R0
//  167 										break;                                                                                                                                                                      
        B.N      ??ARM_data_Process_59
//  168 									case ARM_rec_menu_navi_type://lts20131122                                                                                                                                     
//  169 										for(i=0;i<ARM_rec_menu_navi_max;i++)                                                                                                                                        
??ARM_data_Process_51:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_74:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BCS.N    ??ARM_data_Process_75
//  170 											ARM_rec_menu_navi_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x54
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_74
//  171 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_75:
        MOVS     R0,#+65
        MOVS     R6,R0
//  172 										arm_rec_index=ARM_rec_menu_navi_type;//---表示有数据更新--                                                                                                                  
        MOVS     R0,#+11
        MOVS     R7,R0
//  173 										break;								                                                                                                                                                      
        B.N      ??ARM_data_Process_59
//  174 														                                                                                                                                                                    
//  175 									case ARM_rec_menu_digitv_type:                                                                                                                                                
//  176 										for(i=0;i<ARM_rec_menu_digitv_max;i++)                                                                                                                                      
??ARM_data_Process_52:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_76:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BCS.N    ??ARM_data_Process_77
//  177 											ARM_rec_menu_digitv_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                          
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x58
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_76
//  178 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_77:
        MOVS     R0,#+65
        MOVS     R6,R0
//  179 										arm_rec_index=ARM_rec_menu_digitv_type;//---表示有数据更新--                                                                                                                
        MOVS     R0,#+14
        MOVS     R7,R0
//  180 										break;						                                                                                                                                                          
        B.N      ??ARM_data_Process_59
//  181 									case ARM_rec_menu_analogtv_type:                                                                                                                                              
//  182 										for(i=0;i<ARM_rec_menu_analog_max;i++)                                                                                                                                      
??ARM_data_Process_53:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_78:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BCS.N    ??ARM_data_Process_79
//  183 											ARM_rec_menu_analogtv_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                        
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x5C
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_78
//  184 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_79:
        MOVS     R0,#+65
        MOVS     R6,R0
//  185 										arm_rec_index=ARM_rec_menu_analogtv_type;//---表示有数据更新--                                                                                                              
        MOVS     R0,#+15
        MOVS     R7,R0
//  186 										break;                                                                                                                                                                      
        B.N      ??ARM_data_Process_59
//  187 								                                                                                                                                                                                
//  188 								                                                                                                                                                                                
//  189 									case ARM_rec_menu_cambox_type:                                                                                                                                                
//  190 										for(i=0;i<ARM_rec_menu_cambox_max;i++)                                                                                                                                      
??ARM_data_Process_54:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_80:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+35
        BCS.N    ??ARM_data_Process_81
//  191 											ARM_rec_menu_cambox_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                          
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x60
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_80
//  192 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_81:
        MOVS     R0,#+65
        MOVS     R6,R0
//  193 										arm_rec_index=ARM_rec_menu_cambox_type;//---表示有数据更新--                                                                                                                
        MOVS     R0,#+18
        MOVS     R7,R0
//  194 										break;                                                                                                                                                                      
        B.N      ??ARM_data_Process_59
//  195 																                                                                                                                                                                
//  196 								                                                                                                                                                                                
//  197 									case ARM_rec_menu_steer_type:                                                                                                                                                 
//  198 										for(i=0;i<ARM_rec_menu_steer_max;i++)                                                                                                                                       
??ARM_data_Process_58:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_82:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+80
        BCS.N    ??ARM_data_Process_83
//  199 											ARM_rec_menu_steer_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                           
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x64
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_82
//  200 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_83:
        MOVS     R0,#+65
        MOVS     R6,R0
//  201 										arm_rec_index=ARM_rec_menu_steer_type;//---表示有数据更新--                                                                                                                 
        MOVS     R0,#+34
        MOVS     R7,R0
//  202 										break;                                                                                                                                                                      
        B.N      ??ARM_data_Process_59
//  203 									case ARM_rec_beep_type:                                                                                                                                                       
//  204 										arm_rec_type=ARM_rec_beep_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_46:
        MOVS     R0,#+5
        MOVS     R6,R0
//  205 										break;                                                                                                                                                                      
        B.N      ??ARM_data_Process_59
//  206 									case ARM_rec_src_type:                                                                                                                                                        
//  207 										for(i=0;i<ARM_rec_src_max;i++)                                                                                                                                              
??ARM_data_Process_55:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_84:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BCS.N    ??ARM_data_Process_85
//  208 											ARM_rec_src_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                                  
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x20
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_84
//  209 										arm_rec_type=ARM_rec_src_type;//---表示有数据更新--                                                                                                                         
??ARM_data_Process_85:
        MOVS     R0,#+19
        MOVS     R6,R0
//  210 										break;                                                                                                                                                                      
        B.N      ??ARM_data_Process_59
//  211 									case ARM_rec_menu_setup_type:                                                                                                                                                 
//  212 										for(i=0;i<ARM_rec_menu_setup_max;i++)                                                                                                                                       
??ARM_data_Process_56:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_86:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+13
        BCS.N    ??ARM_data_Process_87
//  213 											ARM_rec_menu_setup_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                           
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.N    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x68
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_86
//  214 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_87:
        MOVS     R0,#+65
        MOVS     R6,R0
//  215 										arm_rec_index=ARM_rec_menu_setup_type;//---表示有数据更新--                                                                                                                 
        MOVS     R0,#+32
        MOVS     R7,R0
//  216 										break;								                                                                                                                                                      
        B.N      ??ARM_data_Process_59
//  217 									case ARM_rec_menu_factory_type:                                                                                                                                               
//  218 										for(i=0;i<ARM_rec_menu_factory_max;i++)                                                                                                                                     
??ARM_data_Process_57:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_88:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BCS.N    ??ARM_data_Process_89
//  219 											ARM_rec_menu_factory_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                         
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.N    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+5]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??ARM_data_Process_0+0x6C
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_88
//  220 										arm_rec_type=ARM_rec_menu_type;//---表示有数据更新--                                                                                                                        
??ARM_data_Process_89:
        MOVS     R0,#+65
        MOVS     R6,R0
//  221 										arm_rec_index=ARM_rec_menu_factory_type;//---表示有数据更新--                                                                                                               
        MOVS     R0,#+33
        MOVS     R7,R0
//  222 										break;                                                                                                                                                                      
//  223 								                                                                                                                                                                                
//  224 							}                                                                                                                                                                                 
//  225 								 break;                                                                                                                                                                         
??ARM_data_Process_59:
        B.N      ??ARM_data_Process_13
//  226 						case ARM_rec_upgrade_type:                                                                                                                                                          
//  227 								for(i=0;i<ARM_rec_upgrade_max;i++)                                                                                                                                              
??ARM_data_Process_21:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_90:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BCS.N    ??ARM_data_Process_91
//  228 									ARM_rec_upgrade_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                                  
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.N    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??ARM_data_Process_0+0x70
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_90
//  229 								arm_rec_type=ARM_rec_upgrade_type;//---表示有数据更新--                                                                                                                         
??ARM_data_Process_91:
        MOVS     R0,#+96
        MOVS     R6,R0
//  230 								break;						                                                                                                                                                              
        B.N      ??ARM_data_Process_13
//  231 						case ARM_rec_system_config_type:                                                                                                                                                    
//  232 							for(i=0;i<ARM_rec_system_config_max;i++)                                                                                                                                          
??ARM_data_Process_22:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_92:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+67
        BCS.N    ??ARM_data_Process_93
//  233 								ARM_rec_system_config_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                              
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.N    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??ARM_data_Process_0+0x74
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_92
//  234 							arm_rec_type=ARM_rec_system_config_type;//---表示有数据更新--                                                                                                                     
??ARM_data_Process_93:
        MOVS     R0,#+97
        MOVS     R6,R0
//  235 							break;                                                                                                                                                                            
        B.N      ??ARM_data_Process_13
//  236 						//#if 1 //TSH,2013-05-03,cancel this Cmd                                                                                                                                            
//  237 						case ARM_rec_function_config_type:                                                                                                                                                  
//  238 							for(i=0;i<ARM_rec_function_config_max;i++)                                                                                                                                        
??ARM_data_Process_23:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_94:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+28
        BCS.N    ??ARM_data_Process_95
//  239 								ARM_rec_function_config_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                            
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.N    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??ARM_data_Process_0+0x78
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_94
//  240 							arm_rec_type=ARM_rec_function_config_type;//---表示有数据更新--                                                                                                                   
??ARM_data_Process_95:
        MOVS     R0,#+98
        MOVS     R6,R0
//  241 							break;                                                                                                                                                                            
        B.N      ??ARM_data_Process_13
//  242 						//#endif                                                                                                                                                                            
//  243 						case ARM_rec_get_version_type:                                                                                                                                                      
//  244 							arm_rec_type=ARM_rec_get_version_type;//---表示有数据更新--                                                                                                                       
??ARM_data_Process_24:
        MOVS     R0,#+99
        MOVS     R6,R0
//  245 						       break;  
        B.N      ??ARM_data_Process_13
//  246 						case ARM_rec_SetFM://miller.tao20150730
//  247 						      arm_rec_type=ARM_rec_SetFM;
??ARM_data_Process_29:
        MOVS     R0,#+165
        MOVS     R6,R0
//  248                                                         //for(i=0;i<ARM_rec_SetFM_max;i++)                                                                                                                                      
//  249 								gFMFrequency=(ARM_Rec_buffer[ARM_Done_index][4+0]<<8)|ARM_Rec_buffer[ARM_Done_index][4+1];  
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.N    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+4]
        LDR.N    R1,??ARM_data_Process_0
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+100
        LDR.N    R3,??ARM_data_Process_0+0x4
        MLA      R1,R2,R1,R3
        LDRB     R1,[R1, #+5]
        ORRS     R0,R1,R0, LSL #+8
        LDR.N    R1,??ARM_data_Process_0+0x7C
        STR      R0,[R1, #+0]
//  250 							break;
        B.N      ??ARM_data_Process_13
//  251 						#ifdef _CANBUS_EN                                                                                                                                                                   
//  252 						case ARM_rec_canbus_type://TSH,2013-05-04 add CAN Bus                                                                                                                               
//  253 						switch(ARM_Rec_buffer[ARM_Done_index][4])                                                                                                                                           
//  254 						{                                                                                                                                                                                   
//  255 							case ARM_rec_canbus_tuguan:                                                                                                                                                       
//  256 									for(i=0;i<ARM_rec_canbus_tuguan_max;i++)                                                                                                                                      
//  257 										ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                          
//  258 									arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                        
//  259 									arm_rec_index=ARM_rec_canbus_tuguan;//---表示有数据更新--                                                                                                                     
//  260 									break;                                                                                                                                                                        
//  261 							case hyundai_cantype:                                                                                                                                                             
//  262 									for(i=0;i<ARM_rec_canbus_hyundai_max;i++)                                                                                                                                     
//  263 										ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                          
//  264 									arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                        
//  265 									arm_rec_index=hyundai_cantype;//---表示有数据更新--											                                                                                                      
//  266 									break;                                                                                                                                                                        
//  267                                                                                                                                                                       
//  268 							case Mondeo_cantype:                                                                                                                                                              
//  269 									for(i=0;i<ARM_rec_canbus_Mondeo_max;i++)                                                                                                                                      
//  270 										ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                          
//  271 									arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                        
//  272 									arm_rec_index=Mondeo_cantype;//---表示有数据更新--		                                                                                                                        
//  273 									break;                                                                                                                                                                        
//  274 							case camry_cantype:                                                                                                                                                               
//  275 									for(i=0;i<ARM_rec_canbus_camry_max;i++)                                                                                                                                       
//  276 										ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                          
//  277 									arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                        
//  278 									arm_rec_index=camry_cantype;//---表示有数据更新--		                                                                                                                          
//  279 									break;                                                                                                                                                                        
//  280                                                                                                                                                                          
//  281 							case teana_cantype:                                                                                                                                                               
//  282 								for(i=0;i<ARM_rec_canbus_teana_max;i++)                                                                                                                                         
//  283 									ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
//  284 								arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                          
//  285 								arm_rec_index=teana_cantype;//---表示有数据更新--	                                                                                                                              
//  286 								break;                                                                                                                                                                          
//  287 							case Focus_cantype:                                                                                                                                                               
//  288 									for(i=0;i<ARM_rec_canbus_focus_max;i++)                                                                                                                                       
//  289 										ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                          
//  290 									arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                        
//  291 									arm_rec_index=Focus_cantype;//---表示有数据更新--		                                                                                                                          
//  292 									break;									                                                                                                                                                      
//  293                                                                                                                                                                          
//  294 							case cruze_simple_cantype:                                                                                                                                                        
//  295 							case Encore_Onstar_cantype:                                                                                                                                                       
//  296 									for(i=0;i<ARM_rec_canbus_cruze_max;i++)                                                                                                                                       
//  297 										ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                          
//  298 									arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                        
//  299 									arm_rec_index=cruze_simple_cantype;//---表示有数据更新--									                                                                                                    
//  300 									break;                                                                                                                                                                        
//  301                                                                                                                                                                       
//  302 							case CRV_cantype:                                                                                                                                                                 
//  303 							case civic_cantype:                                                                                                                                                               
//  304 								for(i=0;i<ARM_rec_canbus_CRV_max;i++)                                                                                                                                           
//  305 									ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
//  306 								arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                          
//  307 								arm_rec_index=ARM_Rec_buffer[ARM_Done_index][4];//---表示有数据更新--	                                                                                                          
//  308 								break;                                                                                                                                                                          
//  309                                                                                                                                                                        
//  310 							case CitroenC4C5_cantype:                                                                                                                                                         
//  311 								for(i=0;i<ARM_rec_canbus_CitroenC4C5_max;i++)                                                                                                                                   
//  312 									ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
//  313 								arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                          
//  314 								arm_rec_index=CitroenC4C5_cantype;//---表示有数据更新--	                                                                                                                        
//  315 								break;                                                                                                                                                                          
//  316                                                                                                                                                                       
//  317 							case bz408_cantype:                                                                                                                                                               
//  318 								ARM_rec_canbus_public_buff[0]=ARM_Rec_buffer[ARM_Done_index][5];                                                                                                                
//  319 								ARM_rec_canbus_public_buff[1]=ARM_Rec_buffer[ARM_Done_index][6];                                                                                                                
//  320 								arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                          
//  321 								arm_rec_index=bz408_cantype;//---表示有数据更新--	                                                                                                                              
//  322 								break;		                                                                                                                                                                      
//  323 							case bz308_cantype:                                                                                                                                                               
//  324 								for(i=0;i<ARM_rec_canbus_bz308_max;i++)                                                                                                                                         
//  325 									ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
//  326 								arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                          
//  327 								arm_rec_index=bz308_cantype;//---表示有数据更新--	                                                                                                                              
//  328 								break;                                                                                                                                                                          
//  329 							case fiesta_cantype:                                                                                                                                                              
//  330 								for(i=0;i<ARM_rec_canbus_fiesta_max;i++)                                                                                                                                        
//  331 									ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
//  332 								arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                          
//  333 								arm_rec_index=fiesta_cantype;//---表示有数据更新--	                                                                                                                            
//  334 								break;                                                                                                                                                                          
//  335 							case L200_cantype:                                                                                                                                                                
//  336 								for(i=0;i<ARM_rec_canbus_L200_max;i++)                                                                                                                                          
//  337 									ARM_rec_canbus_public_buff[i]=ARM_Rec_buffer[ARM_Done_index][5+i];                                                                                                            
//  338 								arm_rec_type=ARM_rec_canbus_type;//---表示有数据更新--                                                                                                                          
//  339 								arm_rec_index=L200_cantype;//---表示有数据更新--	                                                                                                                              
//  340 								break;                                                                                                                                                                          
//  341 							default:                                                                                                                                                                          
//  342 								break;                                                                                                                                                                          
//  343 						}                                                                                                                                                                                   
//  344 						break;                                                                                                                                                                              
//  345 						#endif                                                                                                                                                                              
//  346                                                                                                                                                                                                 
//  347 						case ARM_rec_canbox_upgrade_type:                                                                                                                                                   
//  348 							for(i=0;i<ARM_rec_canupgrade_max;i++)                                                                                                                                             
??ARM_data_Process_25:
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_data_Process_96:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+80
        BCS.N    ??ARM_data_Process_97
//  349 								ARM_rec_canupgrade_buff[i]=ARM_Rec_buffer[ARM_Done_index][4+i];                                                                                                                 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.N    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        ADDS     R0,R4,R0
        LDRB     R0,[R0, #+4]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??ARM_data_Process_0+0x80
        STRB     R0,[R4, R1]
        ADDS     R4,R4,#+1
        B.N      ??ARM_data_Process_96
//  350 							arm_rec_type=ARM_rec_canbox_upgrade_type;//---???????--                                                                                                                           
??ARM_data_Process_97:
        MOVS     R0,#+144
        MOVS     R6,R0
//  351 							break;			                                                                                                                                                                      
        B.N      ??ARM_data_Process_13
//  352                                                                                                                                                                                                 
//  353 						default:                                                                                                                                                                            
//  354 								 break;                                                                                                                                                                         
//  355 						}                                                                                                                                                                                   
//  356 					}                                                                                                                                                                                     
//  357                                                                                                                                                                                                 
//  358 				}                                                                                                                                                                                       
//  359                                                                                                                                                                                                 
//  360 				ARM_Rec_buffer[ARM_Done_index][ARM_Receive_Cnt_max-1]=ARM_Receive_Free;                                                                                                                 
??ARM_data_Process_30:
??ARM_data_Process_13:
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.N    R2,??ARM_data_Process_0+0x4
        MLA      R0,R1,R0,R2
        MOVS     R1,#+170
        STRB     R1,[R0, #+99]
//  361 				                                                                                                                                                                                        
//  362 				//if(ARM_Done_index<(ARM_Receive_index_max-1))                                                                                                                                          
//  363 					//ARM_Done_index++;                                                                                                                                                                   
//  364 				//else                                                                                                                                                                                  
//  365 					//ARM_Done_index=0;						                                                                                                                                                        
//  366                                                                                                                                                                                                 
//  367 				//------数据处理----------------                                                                                                                                                        
//  368 				switch(arm_rec_type)                                                                                                                                                                    
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??ARM_data_Process_98
        CMP      R0,#+4
        BEQ.N    ??ARM_data_Process_99
        CMP      R0,#+5
        BEQ.N    ??ARM_data_Process_100
        CMP      R0,#+17
        BEQ.N    ??ARM_data_Process_101
        CMP      R0,#+18
        BEQ.N    ??ARM_data_Process_102
        CMP      R0,#+19
        BEQ.N    ??ARM_data_Process_103
        CMP      R0,#+20
        BEQ.N    ??ARM_data_Process_104
        CMP      R0,#+65
        BEQ.N    ??ARM_data_Process_105
        CMP      R0,#+96
        BEQ.N    ??ARM_data_Process_106
        CMP      R0,#+97
        BEQ.N    ??ARM_data_Process_107
        CMP      R0,#+98
        BEQ.N    ??ARM_data_Process_108
        CMP      R0,#+99
        BEQ.N    ??ARM_data_Process_109
        CMP      R0,#+144
        BEQ.N    ??ARM_data_Process_110
        CMP      R0,#+161
        BEQ.N    ??ARM_data_Process_111
        CMP      R0,#+162
        BEQ.N    ??ARM_data_Process_112
        CMP      R0,#+163
        BEQ.N    ??ARM_data_Process_113
        CMP      R0,#+165
        BEQ.N    ??ARM_data_Process_114
        B.N      ??ARM_data_Process_4
//  369 				{                                                                                                                                                                                       
//  370 					case ARM_rec_start_type:                                                                                                                                                              
//  371 						//System_init_ok=1;                                                                                                                                                                 
//  372 						//WINCA_ProtocolFlag = 1;//切换协议                                                                                                                                                 
//  373 						break;                                                                                                                                                                              
??ARM_data_Process_98:
        B.N      ??ARM_data_Process_4
//  374 					#if 0 //cancel this CMD,TSH,2013-05-03                                                                                                                                                
//  375 					case ARM_rec_openlogo_init_type:                                                                                                                                                      
//  376 						System_openlogo_init_ok=1;                                                                                                                                                          
//  377 						break;                                                                                                                                                                              
//  378 					#endif                                                                                                                                                                                
//  379 					case ARM_rec_save_type:                                                                                                                                                               
//  380 						System_save_ok=1;                                                                                                                                                                   
??ARM_data_Process_99:
        LDR.N    R0,??ARM_data_Process_0+0x84
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  381 						break;                                                                                                                                                                              
        B.N      ??ARM_data_Process_4
//  382 					case ARM_rec_beep_type:                                                                                                                                                               
//  383 							                                                                                                                                                
//  384 						break;                                                                                                                                                                              
??ARM_data_Process_100:
        B.N      ??ARM_data_Process_4
//  385 					case ARM_rec_power_type:                                                                                                                                                              
//  386 						                                                                                                                                                             
//  387 						break;                                                                                                                                                                              
??ARM_data_Process_101:
        B.N      ??ARM_data_Process_4
//  388 					case ARM_rec_menu_req_type:                                                                                                                                                           
//  389 						                                                                                                                                                           
//  390 						break;                                                                                                                                                                              
??ARM_data_Process_102:
        B.N      ??ARM_data_Process_4
//  391 					case ARM_rec_src_type:                                                                                                                                                                
//  392 						UART_SRC_process();                                                                                                                                                               
??ARM_data_Process_103:
          CFI FunCall UART_SRC_process
        BL       UART_SRC_process
//  393 						break;                                                                                                                                                                              
        B.N      ??ARM_data_Process_4
//  394 					case ARM_rec_touch_type:                                                                                                                                                              
//  395 						UART_Touch_process();                                                                                                                                                         
??ARM_data_Process_104:
          CFI FunCall UART_Touch_process
        BL       UART_Touch_process
//  396 						break;    
        B.N      ??ARM_data_Process_4
//  397 					case ARM_rec_SetFM:
//  398                                                UART_SetFM_process(gFMFrequency);
??ARM_data_Process_114:
        LDR.N    R0,??ARM_data_Process_0+0x7C
        LDR      R0,[R0, #+0]
          CFI FunCall UART_SetFM_process
        BL       UART_SetFM_process
//  399 						break;
        B.N      ??ARM_data_Process_4
//  400 					case ARM_rec_menu_type:                                                                                                                                                               
//  401 						//if(System_Power_Status==Power_acc_off)                                                                                                                                            
//  402 							//break;                                                                                                                                                                          
//  403 						switch(arm_rec_index)                                                                                                                                                               
??ARM_data_Process_105:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        CMP      R0,#+2
        BEQ.N    ??ARM_data_Process_115
        CMP      R0,#+4
        BEQ.N    ??ARM_data_Process_116
        CMP      R0,#+6
        BEQ.N    ??ARM_data_Process_117
        CMP      R0,#+8
        BEQ.N    ??ARM_data_Process_118
        CMP      R0,#+9
        BEQ.N    ??ARM_data_Process_119
        CMP      R0,#+11
        BEQ.N    ??ARM_data_Process_120
        CMP      R0,#+14
        BEQ.N    ??ARM_data_Process_121
        CMP      R0,#+15
        BEQ.N    ??ARM_data_Process_122
        CMP      R0,#+32
        BEQ.N    ??ARM_data_Process_123
        CMP      R0,#+33
        BEQ.N    ??ARM_data_Process_124
        CMP      R0,#+34
        BEQ.N    ??ARM_data_Process_125
        B.N      ??ARM_data_Process_126
//  404 						{                                                                                                                                                                                   
//  405 							#if 0 //TSH,cancel this Cmd,2013-05-03                                                                                                                                            
//  406 							case ARM_rec_menu_main_type:                                                                                                                                                      
//  407 								UART_main_process();                                                                                                                                                            
//  408 								break;                                                                                                                                                                          
//  409 							#endif                                                                                                                                                                            
//  410 							case ARM_rec_menu_radio_type:                                                                                                                                                     
//  411 								                                                                                                                                                        
//  412 								break;						                                                                                                                                                              
??ARM_data_Process_115:
        B.N      ??ARM_data_Process_127
//  413 							case ARM_rec_menu_bt_type:                                                                                                                                                        
//  414 								                                                                                                                                                              
//  415 								break;                                                                                                                                                                          
??ARM_data_Process_116:
        B.N      ??ARM_data_Process_127
//  416 							case ARM_rec_menu_dvd_type:                                                                                                                                                       
//  417 								                                                                                                                                                             
//  418 								break;                                                                                                                                                                          
??ARM_data_Process_117:
        B.N      ??ARM_data_Process_127
//  419 							case ARM_rec_menu_audioplay_type:                                                                                                                                                 
//  420 								                                                                                                                                                      
//  421 								break;                                                                                                                                                                          
??ARM_data_Process_118:
        B.N      ??ARM_data_Process_127
//  422 							case ARM_rec_menu_videoplay_type:                                                                                                                                                 
//  423 								                                                                                                                                                     
//  424 								break;                                                                                                                                                                          
??ARM_data_Process_119:
        B.N      ??ARM_data_Process_127
//  425 							case ARM_rec_menu_navi_type://lts20131122                                                                                                                                         
//  426 								                                                                                                                                                           
//  427 								break;								                                                                                                                                                          
??ARM_data_Process_120:
        B.N      ??ARM_data_Process_127
//  428 							case ARM_rec_menu_digitv_type:                                                                                                                                                    
//  429 								                                                                                                                                                          
//  430 								break;						                                                                                                                                                              
??ARM_data_Process_121:
        B.N      ??ARM_data_Process_127
//  431 							case ARM_rec_menu_analogtv_type:                                                                                                                                                  
//  432 								                                                                                                                                                       
//  433 								break;                                                                                                                                                                          
??ARM_data_Process_122:
        B.N      ??ARM_data_Process_127
//  434 							case ARM_rec_menu_setup_type:                                                                                                                                                     
//  435 								                                                                                                                                                         
//  436 								break;	                                                                                                                                                                        
??ARM_data_Process_123:
        B.N      ??ARM_data_Process_127
//  437 							case ARM_rec_menu_factory_type:                                                                                                                                                   
//  438 								                                                                                                                                                       
//  439 								break;                                                                                                                                                                          
??ARM_data_Process_124:
        B.N      ??ARM_data_Process_127
//  440 							case ARM_rec_menu_steer_type:                                                                                                                                                     
//  441 								                                                                                                                                                         
//  442 								break;                                                                                                                                                                          
??ARM_data_Process_125:
        B.N      ??ARM_data_Process_127
//  443 							                                                                                                                                                                        
//  444 							default:                                                                                                                                                                          
//  445 								break;                                                                                                                                                                          
//  446 						}                                                                                                                                                                                   
//  447 						break;							                                                                                                                                                                
??ARM_data_Process_126:
??ARM_data_Process_127:
        B.N      ??ARM_data_Process_4
//  448 					case ARM_rec_upgrade_type:                                                                                                                                                            
//  449 						                                                                                                                                                         
//  450 						break;                                                                                                                                                                              
??ARM_data_Process_106:
        B.N      ??ARM_data_Process_4
//  451 					case ARM_rec_system_config_type:                                                                                                                                                      
//  452 						                                                                                                                                                    
//  453 						break;                                                                                                                                                                              
??ARM_data_Process_107:
        B.N      ??ARM_data_Process_4
//  454 					//#if 1 //TSH,2013-05-03,cancel this Cmd                                                                                                                                              
//  455 					case ARM_rec_function_config_type:                                                                                                                                                    
//  456 						//WavePlayer_Start(Sys.Buzzer_type);                                                                                                                                                
//  457 						                                                                                                                                                    
//  458 						break;                                                                                                                                                                              
??ARM_data_Process_108:
        B.N      ??ARM_data_Process_4
//  459 					//#endif                                                                                                                                                                              
//  460 					case ARM_rec_get_version_type:			                                                                                                                                
//  461 						UART_get_version_process();                                                                                                                                               
??ARM_data_Process_109:
          CFI FunCall UART_get_version_process
        BL       UART_get_version_process
//  462 						break;                                                                                                                                                                              
        B.N      ??ARM_data_Process_4
//  463                                                                                                                                                                                                 
//  464 					case ARM_rec_canbox_upgrade_type:			                                                                                                                                      
//  465 						                                                                                                                                                
//  466 						break;                                                                                                                                                                              
??ARM_data_Process_110:
        B.N      ??ARM_data_Process_4
//  467 						                                                                                                                                                                                    
//  468 					case ARM_rec_ControlPolling:                                                                                                                                                          
//  469 						switch(ARM_rec_ContrPoll_buff[0])                                                                                                                                                   
??ARM_data_Process_111:
        LDR.N    R0,??ARM_data_Process_0+0x2C
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??ARM_data_Process_128
        CMP      R0,#+2
        BEQ.N    ??ARM_data_Process_129
        CMP      R0,#+3
        BEQ.N    ??ARM_data_Process_130
        CMP      R0,#+4
        BEQ.N    ??ARM_data_Process_131
        CMP      R0,#+5
        BEQ.N    ??ARM_data_Process_132
        CMP      R0,#+160
        BEQ.N    ??ARM_data_Process_133
        B.N      ??ARM_data_Process_134
//  470 						{                                                                                                                                                                                   
//  471 							case 0x01://DVD                                                                                                                                                                   
//  472 									                                                                                                                                 
//  473 								break;                                                                                                                                                                          
??ARM_data_Process_128:
        B.N      ??ARM_data_Process_135
//  474 							case 0x02://back car                                                                                                                                                              
//  475 									;                                                                                                                                        
//  476 								break;                                                                                                                                                                          
??ARM_data_Process_129:
        B.N      ??ARM_data_Process_135
//  477 							case 0x03:								                                                                                                                                                        
//  478 								                                                                                                                                            
//  479 								break;                                                                                                                                                                          
??ARM_data_Process_130:
        B.N      ??ARM_data_Process_135
//  480 							case 0x04:                                                                                                                                                                        
//  481 								                                                                                                                                                   
//  482 								break;                                                                                                                                                                          
??ARM_data_Process_131:
        B.N      ??ARM_data_Process_135
//  483 							case 0x05:                                                                                                                                                                        
//  484 							    //if(ARM_rec_ContrPoll_buff[1]==0x01)//回馈                                                                                                                                   
//  485 								break;;                                                                                                                                                                         
??ARM_data_Process_132:
        B.N      ??ARM_data_Process_135
//  486 							case 0xa0:                                                                                                                                                                        
//  487 						                                                                                                                             
//  488 								break;                                                                                                                                                                          
??ARM_data_Process_133:
        B.N      ??ARM_data_Process_135
//  489 							default:                                                                                                                                                                          
//  490 								break;                                                                                                                                                                          
//  491 						}                                                                                                                                                                                   
//  492                                                                                                                                                                                                 
//  493 						break;                                                                                                                                                                              
??ARM_data_Process_134:
??ARM_data_Process_135:
        B.N      ??ARM_data_Process_4
//  494 					case ARM_rec_TimeSet:                                                                                                                                                                 
//  495 			                                                                                                                                            
//  496 								                                                                                                                                                                                
//  497 								//Time_Adjust();                                                                                                                                                                  
//  498 								break;                                                                                                                                                                          
??ARM_data_Process_112:
        B.N      ??ARM_data_Process_4
//  499 					case ARM_rec_HW_Mute:                                                                                                                                                                 
//  500 						switch(ARM_rec_HWMute_buff[0])                                                                                                                                                      
??ARM_data_Process_113:
        LDR.N    R0,??ARM_data_Process_0+0x34
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??ARM_data_Process_136
        BCC.N    ??ARM_data_Process_137
        CMP      R0,#+3
        BEQ.N    ??ARM_data_Process_138
        BCC.N    ??ARM_data_Process_139
        CMP      R0,#+5
        BEQ.N    ??ARM_data_Process_140
        BCC.N    ??ARM_data_Process_141
        CMP      R0,#+6
        BEQ.N    ??ARM_data_Process_142
        B.N      ??ARM_data_Process_137
//  501 						{                                                                                                                                                                                   
//  502 							case 0x01://HW mute                                                                                                                                                               
//  503 								if((System_Power_Status==Powerstanby)||(System_Power_Status==Power_canbuswait_init))                                                                                                    
??ARM_data_Process_136:
        LDR.N    R0,??ARM_data_Process_0+0x88
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??ARM_data_Process_143
        LDR.N    R0,??ARM_data_Process_0+0x88
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
//  504 								{                                                                                                                                                                               
//  505 									                                                                                                                                                                              
//  506 								}                                                                                                                                                                               
//  507 								else                                                                                                                                                                            
//  508 								{                                                                                                                                                                               
//  509 									if(ARM_rec_HWMute_buff[1])                                                                                                                                                    
//  510 									 {                                                                                                                                                                            
//  511 									 	//HARD_MUTE_ON();                                                                                                                                                             
//  512 										//F_mute_Cmd_id=1;//arm mute on cmd                                                                                                                                           
//  513 									 }                                                                                                                                                                            
//  514 									else                                                                                                                                                                          
//  515 									 {                                                                                                                                                                            
//  516 									 	//F_mute_Cmd_id=0;                                                                                                                                                            
//  517 									 	//if((F_mute_id==0)&&(F_soft_mute_id==0))                                                                                                                                     
//  518 									 	{                                                                                                                                                                           
//  519 									 		                                                                                                                                                                          
//  520 									 		//HARD_MUTE_OFF();                                                                                                                                                          
//  521 										}                                                                                                                                                                           
//  522 									 }                                                                                                                                                                            
//  523 								}                                                                                                                                                                               
//  524 								break;                                                                                                                                                                          
??ARM_data_Process_143:
        B.N      ??ARM_data_Process_144
//  525 							case 0x02://close the system                                                                                                                                                      
//  526 								                                                                                                                                                             
//  527 								break;                                                                                                                                                                          
??ARM_data_Process_139:
        B.N      ??ARM_data_Process_144
//  528 							case 0x03://back light switch                                                                                                                                                     
//  529 								if(ARM_rec_HWMute_buff[1]==1)                                                                                                                                                   
??ARM_data_Process_138:
        LDR.N    R0,??ARM_data_Process_0+0x34
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
//  530 								 {                                                                                                                                                                              
//  531 								 	//BackLight(1);                                                                                                                                                                 
//  532 									                                                                                                                                                              
//  533 								 }                                                                                                                                                                              
//  534 								else if(ARM_rec_HWMute_buff[1]==2)                                                                                                                                              
//  535 								 {                                                                                                                                                                              
//  536 								 	//BackLight(1);                                                                                                                                                                 
//  537 									                                                                                                                                                                  
//  538 								 }                                                                                                                                                                              
//  539 								else                                                                                                                                                                            
//  540 								 {                                                                                                                                                                              
//  541 								 	//BackLight(0);                                                                                                                                                                 
//  542 									                                                                                                                                                                 
//  543 								 }                                                                                                                                                                              
//  544 								break;                                                                                                                                                                          
??ARM_data_Process_145:
        B.N      ??ARM_data_Process_144
//  545 							case 0x04:                                                                                                                                                                        
//  546 								                                                                                                                                                              
//  547 								Sys.ACC_auto_on=1;                                                                                                                                                              
??ARM_data_Process_141:
        LDR.N    R0,??ARM_data_Process_0+0x8C
        MOVS     R1,#+1
        STRB     R1,[R0, #+10]
//  548 								Rem_SRC_long_set=1;                                                                                                                                                             
        LDR.N    R0,??ARM_data_Process_0+0x90
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  549 								break;                                                                                                                                                                          
        B.N      ??ARM_data_Process_144
//  550 							case 0x05:                                                                                                                                                                        
//  551 								if(ARM_rec_HWMute_buff[1]==0x01)//jin die                                                                                                                                       
??ARM_data_Process_140:
        LDR.N    R0,??ARM_data_Process_0+0x34
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
//  552 								{                                                                                                                                                                               
//  553 									///dvdrunStatus=DISC_RUN_IN;                                                                                                                                                     
//  554 								}                                                                                                                                                                               
//  555 								else if(ARM_rec_HWMute_buff[1]==0x02)//chu die                                                                                                                                  
//  556 								{                                                                                                                                                                               
//  557 									//dvdrunStatus=DISC_RUN_OUT;                                                                                                                                                    
//  558 								}	                                                                                                                                                                              
//  559 								break;                                                                                                                                                                          
??ARM_data_Process_146:
        B.N      ??ARM_data_Process_144
//  560 							case 0x06://AUX切换命令                                                                                                                                                           
//  561 								if(ARM_rec_HWMute_buff[1]==0x01)//主机AUX输入                                                                                                                                   
??ARM_data_Process_142:
        LDR.N    R0,??ARM_data_Process_0+0x34
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
//  562 								{                                                                                                                                                                               
//  563 									                                                                                                                               
//  564 								}                                                                                                                                                                               
//  565 								else if(ARM_rec_HWMute_buff[1]==0x02)//原车信号输入                                                                                                                             
//  566 								{                                                                                                                                                                               
//  567 									                                                                                                                                
//  568 								}	                                                                                                                                                                              
//  569 								break;									                                                                                                                                                        
??ARM_data_Process_147:
        B.N      ??ARM_data_Process_144
//  570 							default:                                                                                                                                                                          
//  571 								break;                                                                                                                                                                          
//  572 						}                                                                                                                                                                                   
//  573                                                                                                                                                                                                 
//  574 						break;                                                                                                                                                                              
//  575 					#ifdef	_CANBUS_EN                                                                                                                                                                    
//  576 					case ARM_rec_canbus_type:                                                                                                                                                             
//  577 						//CAN_APP_IF_Process(arm_rec_index);                                                                                                                                                  
//  578 						#if 0 //TSH,20130720                                                                                                                                                                
//  579 						switch(arm_rec_index)                                                                                                                                                               
//  580 						{                                                                                                                                                                                   
//  581 							case ARM_rec_canbus_tuguan:                                                                                                                                                       
//  582 								UART_canbus_tuguan_process();                                                                                                                                                   
//  583 								break;	                                                                                                                                                                        
//  584 							case ARM_rec_canbus_Haima_S7:                                                                                                                                                     
//  585 								UART_canbus_Haima_S7_process();                                                                                                                                                 
//  586 								break;	                                                                                                                                                                        
//  587 							default:                                                                                                                                                                          
//  588 								break;                                                                                                                                                                          
//  589 						}                                                                                                                                                                                   
//  590 						#endif                                                                                                                                                                              
//  591 						break;                                                                                                                                                                              
//  592 						                                                                                                                                                                                    
//  593 					#endif                                                                                                                                                                                
//  594 				}                                                                                                                                                                                       
//  595                                                                                                                                                                                                 
//  596 		}                                                                                                                                                                                           
//  597 		if(ARM_Done_index<(ARM_Receive_index_max-1))                                                                                                                                                
??ARM_data_Process_137:
??ARM_data_Process_144:
??ARM_data_Process_4:
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BCS.N    ??ARM_data_Process_148
//  598 			ARM_Done_index++;                                                                                                                                                                         
        LDR.N    R0,??ARM_data_Process_0
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??ARM_data_Process_0
        STRB     R0,[R1, #+0]
        B.N      ??ARM_data_Process_149
//  599 		else                                                                                                                                                                                        
//  600 			ARM_Done_index=0;						                                                                                                                                                              
??ARM_data_Process_148:
        LDR.N    R0,??ARM_data_Process_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  601 			                                                                                                                                                                                          
//  602 	}				                                                                                                                                                                                      
??ARM_data_Process_149:
        ADDS     R5,R5,#+1
        B.W      ??ARM_data_Process_2
//  603 }                                                                                                                                                                                               
??ARM_data_Process_3:
        POP      {R0,R4-R7,PC}    ;; return
        DATA
??ARM_data_Process_0:
        DC32     ARM_Done_index
        DC32     ARM_Rec_buffer
        DC32     ARM_rec_USART1_buff
        DC32     ARM_USART1_Status
        DC32     System_openlogo_init_ok
        DC32     ARM_rec_start_buff
        DC32     System_init_ok
        DC32     WINCA_ProtocolFlag
        DC32     ARM_rec_src_buff
        DC32     ARM_rec_menu_req_buff
        DC32     ARM_rec_touch_buff
        DC32     ARM_rec_ContrPoll_buff
        DC32     ARM_rec_TimeSet_buff
        DC32     ARM_rec_HWMute_buff
        DC32     ARM_rec_menu_main_buff
        DC32     ARM_rec_menu_radio_buff
        DC32     ARM_rec_menu_bt_buff
        DC32     ARM_rec_menu_dvd_buff
        DC32     ARM_rec_menu_audioplay_buff
        DC32     ARM_rec_menu_videoplay_buff
        DC32     ARM_rec_menu_cam_buff
        DC32     ARM_rec_menu_navi_buff
        DC32     ARM_rec_menu_digitv_buff
        DC32     ARM_rec_menu_analogtv_buff
        DC32     ARM_rec_menu_cambox_buff
        DC32     ARM_rec_menu_steer_buff
        DC32     ARM_rec_menu_setup_buff
        DC32     ARM_rec_menu_factory_buff
        DC32     ARM_rec_upgrade_buff
        DC32     ARM_rec_system_config_buff
        DC32     ARM_rec_function_config_buff
        DC32     gFMFrequency
        DC32     ARM_rec_canupgrade_buff
        DC32     System_save_ok
        DC32     System_Power_Status
        DC32     EEPROM_DATA
        DC32     Rem_SRC_long_set
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 1 673 bytes in section .bss
// 2 364 bytes in section .text
// 
// 2 364 bytes of CODE memory
// 1 673 bytes of DATA memory
//
//Errors: none
//Warnings: none
