///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:54 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\uart_fun.c                  /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\uart_fun.c -D               /
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
//                    \Debug\List\uart_fun.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME uart_fun

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ARM_data_Send
        EXTERN ARM_rec_src_buff
        EXTERN ARM_rec_touch_buff
        EXTERN Adjust_Source
        EXTERN EEPROM_DATA
        EXTERN radio_fm_set_freq

        PUBLIC Touch_status
        PUBLIC Touch_valide_count
        PUBLIC UART_SRC_process
        PUBLIC UART_SetFM_process
        PUBLIC UART_Touch_process
        PUBLIC UART_arm_ACC_Send
        PUBLIC UART_get_version_process
        PUBLIC X_POS
        PUBLIC Y_POS
        PUBLIC g_src_flag1
        PUBLIC g_src_flag2
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\uart_fun.c
//    1 /*
//    2 this file is to define the functions using uart port
//    3 
//    4 by Miller.Tao
//    5 date :20150730
//    6 
//    7 */
//    8 #define _UART_FUN_C_
//    9 #include "uart_fun.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute union char_bit g_src_flag1
g_src_flag1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute union char_bit g_src_flag2
g_src_flag2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Touch_valide_count
Touch_valide_count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD Touch_status
Touch_status:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD X_POS
X_POS:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD Y_POS
Y_POS:
        DS8 4
//   10 #include "arm_driver.h"
//   11 #include "includes.h"
//   12 #include "arm.h"
//   13 #include "com.h"
//   14 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function UART_SRC_process
        THUMB
//   15 void UART_SRC_process(void)
//   16 {
UART_SRC_process:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   17 		switch(ARM_rec_src_buff[0])
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??UART_SRC_process_0
        CMP      R0,#+1
        BEQ.N    ??UART_SRC_process_1
        CMP      R0,#+2
        BEQ.N    ??UART_SRC_process_2
        CMP      R0,#+3
        BEQ.N    ??UART_SRC_process_3
        CMP      R0,#+4
        BEQ.N    ??UART_SRC_process_4
        CMP      R0,#+5
        BEQ.N    ??UART_SRC_process_5
        CMP      R0,#+6
        BEQ.N    ??UART_SRC_process_6
        CMP      R0,#+7
        BEQ.N    ??UART_SRC_process_7
        CMP      R0,#+12
        BEQ.N    ??UART_SRC_process_8
        CMP      R0,#+13
        BEQ.N    ??UART_SRC_process_9
        CMP      R0,#+15
        BEQ.N    ??UART_SRC_process_10
        CMP      R0,#+16
        BEQ.N    ??UART_SRC_process_11
        CMP      R0,#+17
        BEQ.N    ??UART_SRC_process_12
        CMP      R0,#+18
        BEQ.N    ??UART_SRC_process_13
        CMP      R0,#+19
        BEQ.N    ??UART_SRC_process_14
        CMP      R0,#+20
        BEQ.N    ??UART_SRC_process_15
        CMP      R0,#+21
        BEQ.N    ??UART_SRC_process_16
        B.N      ??UART_SRC_process_17
//   18 		{
//   19 			case COM_SRC_OFFLCD:
//   20 				break;
??UART_SRC_process_0:
        B.N      ??UART_SRC_process_18
//   21 			case COM_SRC_RADIO:			
//   22 
//   23 				
//   24 				break;
??UART_SRC_process_1:
        B.N      ??UART_SRC_process_18
//   25 			case COM_SRC_DVD:
//   26 	
//   27 				
//   28 				break;
??UART_SRC_process_2:
        B.N      ??UART_SRC_process_18
//   29 			case COM_SRC_NAVI:
//   30 
//   31 				break;
??UART_SRC_process_3:
        B.N      ??UART_SRC_process_18
//   32 			case COM_SRC_BT:
//   33 
//   34 				break;
??UART_SRC_process_4:
        B.N      ??UART_SRC_process_18
//   35 			case COM_SRC_AV1:
//   36 			
//   37 				break;
??UART_SRC_process_5:
        B.N      ??UART_SRC_process_18
//   38 			case COM_SRC_AV2:
//   39 				
//   40 				break;
??UART_SRC_process_6:
        B.N      ??UART_SRC_process_18
//   41 			case COM_SRC_VIDEOPLAY:
//   42 					
//   43 				break;
??UART_SRC_process_7:
        B.N      ??UART_SRC_process_18
//   44 				
//   45 
//   46 				
//   47 				break;
//   48 			case COM_SRC_IPOD:
//   49 				
//   50 				break;
??UART_SRC_process_8:
        B.N      ??UART_SRC_process_18
//   51 			case COM_SRC_DVR:
//   52 					
//   53 				break;
??UART_SRC_process_9:
        B.N      ??UART_SRC_process_18
//   54 			
//   55 			case  COM_SRC_ARM: 
//   56 				if(ARM_rec_src_buff[1]==0x03)//切换失败
??UART_SRC_process_14:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+3
        BEQ.N    ??UART_SRC_process_19
//   57 				{
//   58 					//F_Src_app_init_id=0;
//   59 				}
//   60 				else if(ARM_rec_src_buff[1]==0x01)//用户手动切换				
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??UART_SRC_process_20
//   61 				{
//   62 					//Draw_SRC_Root_Menu(SRC_App);
//   63 					Sys.Main_Source=SRC_ARM;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+16
        STRB     R1,[R0, #+2]
//   64 					Adjust_Source(Sys.Main_Source);
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
        B.N      ??UART_SRC_process_19
//   65 				}
//   66 				else if(Sys.Main_Source!=SRC_ARM)
??UART_SRC_process_20:
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+16
        BEQ.N    ??UART_SRC_process_19
//   67 				{
//   68 	
//   69 					Sys.Main_Source=SRC_ARM;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+16
        STRB     R1,[R0, #+2]
//   70 					Adjust_Source(Sys.Main_Source);
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
//   71 				}	
//   72 				break;
??UART_SRC_process_19:
        B.N      ??UART_SRC_process_18
//   73 			case COM_SRC_CarMedia: 
//   74 				if(ARM_rec_src_buff[1]==0x03)//切换失败
??UART_SRC_process_15:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+3
        BEQ.N    ??UART_SRC_process_21
//   75 				{
//   76 					//F_Src_app_init_id=0;
//   77 				}
//   78 				else if(ARM_rec_src_buff[1]==0x01)//用户手动切换				
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??UART_SRC_process_22
//   79 				{
//   80 					//Draw_SRC_Root_Menu(SRC_App);
//   81 					Sys.Main_Source=SRC_CarMedia;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+18
        STRB     R1,[R0, #+2]
//   82 					Adjust_Source(Sys.Main_Source);
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
        B.N      ??UART_SRC_process_21
//   83 				}
//   84 				else if(Sys.Main_Source!=SRC_CarMedia)
??UART_SRC_process_22:
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+18
        BEQ.N    ??UART_SRC_process_21
//   85 				{
//   86 	
//   87 					Sys.Main_Source=SRC_CarMedia;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+18
        STRB     R1,[R0, #+2]
//   88 					Adjust_Source(Sys.Main_Source);
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
//   89 				}	
//   90 				break;
??UART_SRC_process_21:
        B.N      ??UART_SRC_process_18
//   91 			case COM_SRC_CVBS: 
//   92 				if(ARM_rec_src_buff[1]==0x03)//切换失败
??UART_SRC_process_16:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+3
        BEQ.N    ??UART_SRC_process_23
//   93 				{
//   94 					//F_Src_app_init_id=0;
//   95 				}
//   96 				else if(ARM_rec_src_buff[1]==0x01)//用户手动切换				
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??UART_SRC_process_24
//   97 				{
//   98 					//Draw_SRC_Root_Menu(SRC_App);
//   99 					Sys.Main_Source=SRC_CVBS;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+17
        STRB     R1,[R0, #+2]
//  100 					Adjust_Source(Sys.Main_Source);
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
        B.N      ??UART_SRC_process_23
//  101 				}
//  102 				else if(Sys.Main_Source!=SRC_CVBS)
??UART_SRC_process_24:
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
        CMP      R0,#+17
        BEQ.N    ??UART_SRC_process_23
//  103 				{
//  104 	
//  105 					Sys.Main_Source=SRC_CVBS;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+17
        STRB     R1,[R0, #+2]
//  106 					Adjust_Source(Sys.Main_Source);
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+2]
          CFI FunCall Adjust_Source
        BL       Adjust_Source
//  107 				}	
//  108 				break;
??UART_SRC_process_23:
        B.N      ??UART_SRC_process_18
//  109 			case COM_SRC_CAMBOX: 
//  110 					
//  111 				break;
??UART_SRC_process_10:
        B.N      ??UART_SRC_process_18
//  112 			case COM_SRC_SET:
//  113 				break;
??UART_SRC_process_11:
        B.N      ??UART_SRC_process_18
//  114 			case COM_SRC_MAINMENU:
//  115 				break;
??UART_SRC_process_12:
        B.N      ??UART_SRC_process_18
//  116 			case COM_SRC_EXIT:				
//  117 				break;
??UART_SRC_process_13:
        B.N      ??UART_SRC_process_18
//  118 			default:
//  119 				break;
//  120 		}
//  121 }
??UART_SRC_process_17:
??UART_SRC_process_18:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function UART_get_version_process
        THUMB
//  122 void UART_get_version_process(void)			
//  123 {
UART_get_version_process:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+20
          CFI CFA R13+32
//  124 	Byte Buff[20],i=4,check_sum=0;
        MOVS     R4,#+4
        MOVS     R5,#+0
//  125 	
//  126 		Buff[0]=0X2e;
        MOVS     R0,#+46
        STRB     R0,[SP, #+0]
//  127 		Buff[1]=6;
        MOVS     R0,#+6
        STRB     R0,[SP, #+1]
//  128 		Buff[2]=COM_MCU_ID;
        MOVS     R0,#+144
        STRB     R0,[SP, #+2]
//  129 		Buff[3]=ARM_send_version_type;
        MOVS     R0,#+99
        STRB     R0,[SP, #+3]
//  130 		
//  131 		Buff[4]=*MCU_VERSION;//Sys.mcu_version[0];	
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+4]
//  132 		Buff[5]=*(MCU_VERSION+1);//Sys.mcu_version[1];	
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+1]
        STRB     R0,[SP, #+5]
//  133 		Buff[6]=*(MCU_VERSION+2);//Sys.mcu_version[2];	
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+2]
        STRB     R0,[SP, #+6]
//  134 		Buff[7]=*(MCU_VERSION+3);//Sys.mcu_version[3];	
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+3]
        STRB     R0,[SP, #+7]
//  135 
//  136 		for(i=1;i<=(Buff[1]+1);i++)	
        MOVS     R0,#+1
        MOVS     R4,R0
??UART_get_version_process_0:
        LDRB     R0,[SP, #+1]
        ADDS     R0,R0,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BLT.N    ??UART_get_version_process_1
//  137 			check_sum+=Buff[i];//校验和
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R4, R0]
        ADDS     R5,R0,R5
        ADDS     R4,R4,#+1
        B.N      ??UART_get_version_process_0
//  138 		Buff[Buff[1]+2]=0xff-check_sum;
??UART_get_version_process_1:
        LDRB     R0,[SP, #+1]
        ADD      R1,SP,#+0
        ADDS     R0,R0,R1
        RSBS     R1,R5,#+255
        STRB     R1,[R0, #+2]
//  139 
//  140 		ARM_data_Send(Buff);		
        ADD      R0,SP,#+0
          CFI FunCall ARM_data_Send
        BL       ARM_data_Send
//  141 }
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function UART_arm_ACC_Send
        THUMB
//  142 void UART_arm_ACC_Send(BYTE acc,BYTE power)
//  143 {
UART_arm_ACC_Send:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+36
          CFI CFA R13+56
        MOVS     R4,R0
        MOVS     R5,R1
//  144 	Byte Buff[30],i,check_sum=0;
        MOVS     R7,#+0
//  145 	
//  146 	Buff[0]=0X2e;
        MOVS     R0,#+46
        STRB     R0,[SP, #+0]
//  147 	Buff[1]=4;
        MOVS     R0,#+4
        STRB     R0,[SP, #+1]
//  148 	Buff[2]=COM_MCU_ID;
        MOVS     R0,#+144
        STRB     R0,[SP, #+2]
//  149 	Buff[3]=ARM_send_power_type;
        MOVS     R0,#+1
        STRB     R0,[SP, #+3]
//  150 	Buff[4]=acc;
        STRB     R4,[SP, #+4]
//  151 	Buff[5]=power;
        STRB     R5,[SP, #+5]
//  152 	
//  153 	for(i=1;i<=(Buff[1]+1);i++)	
        MOVS     R0,#+1
        MOVS     R6,R0
??UART_arm_ACC_Send_0:
        LDRB     R0,[SP, #+1]
        ADDS     R0,R0,#+1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R0,R6
        BLT.N    ??UART_arm_ACC_Send_1
//  154 		check_sum+=Buff[i];//校验和
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R6, R0]
        ADDS     R7,R0,R7
        ADDS     R6,R6,#+1
        B.N      ??UART_arm_ACC_Send_0
//  155 	Buff[Buff[1]+2]=0xff-check_sum;
??UART_arm_ACC_Send_1:
        LDRB     R0,[SP, #+1]
        ADD      R1,SP,#+0
        ADDS     R0,R0,R1
        RSBS     R1,R7,#+255
        STRB     R1,[R0, #+2]
//  156 
//  157 	ARM_data_Send(Buff);	
        ADD      R0,SP,#+0
          CFI FunCall ARM_data_Send
        BL       ARM_data_Send
//  158 }
        ADD      SP,SP,#+36
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function UART_SetFM_process
        THUMB
//  159 void UART_SetFM_process(UINT freq)
//  160 {
UART_SetFM_process:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  161        radio_fm_set_freq(freq);
        MOVS     R0,R4
          CFI FunCall radio_fm_set_freq
        BL       radio_fm_set_freq
//  162 
//  163 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function UART_Touch_process
          CFI NoCalls
        THUMB
//  164 void UART_Touch_process(void)
//  165 {
//  166 	if(Touch_valide_count==0)
UART_Touch_process:
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??UART_Touch_process_0
//  167 	{
//  168 		//if(ARM_rec_touch_buff[0]==TOUCH_PUSH)
//  169 			Touch_status=ARM_rec_touch_buff[0];
        LDR.N    R0,??DataTable2_4
        LDR.N    R1,??DataTable2_5
        LDRB     R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  170 		X_POS=MAKEWORD(ARM_rec_touch_buff[1],ARM_rec_touch_buff[2]);
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+1]
        MOV      R1,#+256
        LDR.N    R2,??DataTable2_5
        LDRB     R2,[R2, #+2]
        MLA      R0,R1,R0,R2
        LDR.N    R1,??DataTable2_6
        STR      R0,[R1, #+0]
//  171 		Y_POS=MAKEWORD(ARM_rec_touch_buff[3],ARM_rec_touch_buff[4]);
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+3]
        MOV      R1,#+256
        LDR.N    R2,??DataTable2_5
        LDRB     R2,[R2, #+4]
        MLA      R0,R1,R0,R2
        LDR.N    R1,??DataTable2_7
        STR      R0,[R1, #+0]
//  172 	}
//  173 }
??UART_Touch_process_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ARM_rec_src_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     EEPROM_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     `?<Constant "0003">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     Touch_valide_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Touch_status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     ARM_rec_touch_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     X_POS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     Y_POS

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "0003">`:
        DATA
        DC8 "0003"
        DC8 0, 0, 0

        END
// 
//  21 bytes in section .bss
//   8 bytes in section .rodata
// 586 bytes in section .text
// 
// 586 bytes of CODE  memory
//   8 bytes of CONST memory
//  21 bytes of DATA  memory
//
//Errors: none
//Warnings: none
