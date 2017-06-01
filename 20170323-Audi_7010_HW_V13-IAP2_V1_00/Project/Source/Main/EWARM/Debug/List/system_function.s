///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:52 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\system_function.c           /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\system_function.c -D        /
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
//                    \Debug\List\system_function.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME system_function

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Audioplay_MUL_Function
        EXTERN BLUETOOTH_Function
        EXTERN BLUETOOTH_MUL_Function
        EXTERN Delay_1ms
        EXTERN EEPROM_DATA
        EXTERN GPIO_ReadInputDataBit
        EXTERN Ipod_MUL_Function
        EXTERN Videoplay_MUL_Function
        EXTERN WriteTW88_Page
        EXTERN m_BMW_CAN

        PUBLIC ACC_Detect
        PUBLIC AccOffCheck
        PUBLIC AccOnCheck
        PUBLIC AudioGPS_vol_separate_check
        PUBLIC BACK_OPEN_System_det
        PUBLIC BAT_Detect_Int
        PUBLIC Back_Detect
        PUBLIC Back_Func
        PUBLIC BatResetMode
        PUBLIC Brake_Detect
        PUBLIC Brake_Func
        PUBLIC CanPowerOnCheck
        PUBLIC Clear_Rem_Touch_Value
        PUBLIC ITL_Detect
        PUBLIC ITL_DetectDelayCntr
        PUBLIC Ipod_Insert_Detect
        PUBLIC Is_PIP_Source_CVBS
        PUBLIC Is_PIP_Source_Valide
        PUBLIC Is_Source_Valide
        PUBLIC Mute_Process
        PUBLIC OSD_Time_Clear
        PUBLIC PIP_Display
        PUBLIC PIP_Display_Func
        PUBLIC PIP_func_limit
        PUBLIC Rem_Change_Source
        PUBLIC SRC_Function_Process
        PUBLIC SRC_REM_func
        PUBLIC System_setup_reset_function
        PUBLIC TV_Detect
        PUBLIC Touch_Events_Process
        PUBLIC Turn_source_power_off
        PUBLIC VDISC_IPOD_Detect
        PUBLIC Volume_Adjust
        PUBLIC Volume_menubar
        PUBLIC audio_mute_function
        PUBLIC fRadioReset
        PUBLIC fSystemReset
        PUBLIC key_color_function
        PUBLIC key_color_set
        PUBLIC screen_black_check
        PUBLIC screen_light_detect
        PUBLIC screen_light_function
        PUBLIC screen_light_set
        PUBLIC screenlight_table
        PUBLIC system_recover_func
        PUBLIC tdITLDetectMode
        PUBLIC u32Systick
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\system_function.c
//    1 #define	_SYSTEM_FUNCTION_C_
//    2 
//    3 #include "compile.h"
//    4 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute enum <unnamed> tdITLDetectMode
tdITLDetectMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t ITL_DetectDelayCntr
ITL_DetectDelayCntr:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute uint32_t u32Systick
u32Systick:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BAT_RESET_MODE BatResetMode
BatResetMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t fRadioReset
fRadioReset:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute uint8_t fSystemReset
fSystemReset:
        DS8 1
//    5 #include "stm32f10x_conf.h"
//    6 #include "system_config.h"
//    7 #include "libr.h"
//    8 #include "system_function.h"
//    9 
//   10 #include "main.h"
//   11 
//   12 #include "port.h"
//   13 
//   14 #include "com.h"
//   15 
//   16 
//   17 
//   18 
//   19 
//   20 #include "i2c_driver.h"
//   21 
//   22 
//   23 
//   24 
//   25 
//   26 //#include "keycolor.h"
//   27 
//   28 
//   29 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   30 BYTE const  screenlight_table[SCREEN_LIGHT_MAX]=
screenlight_table:
        DATA
        DC8 15, 31, 63, 95, 127, 159, 191, 207, 191, 239, 255, 0
//   31 {
//   32 //LIGHT          0      1    2   3       4     5    6      7     8        9  
//   33                    0x0f,0x1f,0x3f,0x5f,0x7f,0x9f,0xbf,0xcf,0xbf,0xef ,  0xff,
//   34 };
//   35 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Mute_Process
          CFI NoCalls
        THUMB
//   36 void Mute_Process(void)
//   37 {}
Mute_Process:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function audio_mute_function
          CFI NoCalls
        THUMB
//   38 void audio_mute_function(void)
//   39 {}
audio_mute_function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   40 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function AudioGPS_vol_separate_check
          CFI NoCalls
        THUMB
//   41 BYTE AudioGPS_vol_separate_check(void)//==1 GPS发声
//   42 {
//   43 	/*if((Sys.Main_Source==SRC_Bluetooth)&&(BT_call_status!=BT_CALLEND))
//   44 		return 0;
//   45 	if((Sys.Main_Source==SRC_audioplay)||(Sys.Main_Source==SRC_videoplay)||\ 
//   46 	(Sys.Main_Source==SRC_App))
//   47 	     return 0;
//   48 	else if((Sys.Main_Source==SRC_NAVI)&&(Sys.voice_navi==1)&&\ 
//   49 		((Sys.gps_voice_Source==SRC_videoplay)||(Sys.gps_voice_Source==SRC_audioplay)||(Sys.gps_voice_Source==SRC_App)))
//   50 	    return 0;
//   51        else if((audio_gps_voice_id==1)&&(Sys.voice_navi==1))
//   52 		return 1;
//   53 	else*/
//   54 		return 0;	
AudioGPS_vol_separate_check:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   55 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Volume_menubar
          CFI NoCalls
        THUMB
//   56 void  Volume_menubar(void)
//   57 {}
Volume_menubar:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   58 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Volume_Adjust
          CFI NoCalls
        THUMB
//   59 void  Volume_Adjust(void)
//   60 {}
Volume_Adjust:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//   61 
//   62 //*******************************************
//   63 // * 函数名称：AccOffCheck
//   64 // * 内容简介：ACC 是否关闭检测 P_Acc=0( ACC ON)
//   65 // *				  :   检测时间为2S
//   66 // * 函数变量：无
//   67 // *				  :
//   68 // *	返回值	  :    BIT =0( ACC ON)
//   69 //*******************************************

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function AccOffCheck
        THUMB
//   70 BYTE AccOffCheck(void)
//   71 {//只要有一次ACC ON就调出
AccOffCheck:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   72 	Byte Cnt=200;
        MOVS     R4,#+200
//   73 
//   74 	if(ACC_Detect()==FALSE)
          CFI FunCall ACC_Detect
        BL       ACC_Detect
        CMP      R0,#+0
        BNE.N    ??AccOffCheck_0
//   75 	{
//   76 			do{
//   77 				Delay_1ms(10);
??AccOffCheck_1:
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//   78 				Cnt--;
        SUBS     R4,R4,#+1
//   79 				}
//   80 			while((ACC_Detect()==FALSE)&&(Cnt!=0));  //ACC  OFF /Delay 10*50=500ms   出
          CFI FunCall ACC_Detect
        BL       ACC_Detect
        CMP      R0,#+0
        BNE.N    ??AccOffCheck_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??AccOffCheck_1
//   81 
//   82 			if(Cnt==0)
??AccOffCheck_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??AccOffCheck_0
//   83 			{
//   84 					return TRUE;
        MOVS     R0,#+1
        B.N      ??AccOffCheck_3
//   85 			}
//   86 	}
//   87 	return FALSE;
??AccOffCheck_0:
        MOVS     R0,#+0
??AccOffCheck_3:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//   88 }
//   89 
//   90 //*******************************************
//   91 // * 函数名称：AccOnCheck
//   92 // * 内容简介：ACC 是否开检测 P_Acc=0( ACC ON)
//   93 // * 函数变量：无
//   94 // *				  :   检测时间为10ms
//   95 // *				  :
//   96 // *	返回值	  :     BIT =0( ACC ON)
//   97 //*******************************************

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function AccOnCheck
        THUMB
//   98 BYTE AccOnCheck (void)
//   99 {//只要有一次ACC OFF就调出
AccOnCheck:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  100 	WORD Cnt=100;
        MOVS     R4,#+100
//  101 
//  102 	if(ACC_Detect()==TRUE)
          CFI FunCall ACC_Detect
        BL       ACC_Detect
        CMP      R0,#+1
        BNE.N    ??AccOnCheck_0
//  103 	{
//  104 			do{
//  105 				Delay_1ms(10);
??AccOnCheck_1:
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  106 				Cnt--;
        SUBS     R4,R4,#+1
//  107 			}
//  108 			while((ACC_Detect()==TRUE)&&(Cnt!=0));  //ACC  ON /Delay 10*1=10ms   出
          CFI FunCall ACC_Detect
        BL       ACC_Detect
        CMP      R0,#+1
        BNE.N    ??AccOnCheck_2
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??AccOnCheck_1
//  109 
//  110 			if(Cnt==0)
??AccOnCheck_2:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??AccOnCheck_0
//  111 				return TRUE;
        MOVS     R0,#+1
        B.N      ??AccOnCheck_3
//  112 	}
//  113 	return FALSE;
??AccOnCheck_0:
        MOVS     R0,#+0
??AccOnCheck_3:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//  114 
//  115 }
//  116 
//  117 
//  118 /*******************************************
//  119  * 函数名称：CanPowerOnCheck
//  120  * 内容简介：detect can power on or not 
//  121  * 函数变量：无
//  122  *				  :   检测时间为10ms
//  123  *				  :
//  124  *	返回值	  :     ret =0( can Off)
//  125                                           = 1(can on)
//  126                                           =2(sleep/idle)
//  127 *******************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function CanPowerOnCheck
          CFI NoCalls
        THUMB
//  128 BYTE CanPowerOnCheck (void)
//  129 {
//  130               BYTE  ret =0;
CanPowerOnCheck:
        MOVS     R0,#+0
//  131 	         if(!Sys.wPowerOnByCanTimer2)
        LDR.N    R1,??DataTable3
        LDR      R1,[R1, #+60]
        CMP      R1,#+0
        BNE.N    ??CanPowerOnCheck_0
//  132                 {
//  133                       #if 1 //Miller.Tao20141104
//  134                   	if(m_BMW_CAN.AccPwr == SYSTEM_POWER_ON)
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+59]
        CMP      R1,#+2
        BNE.N    ??CanPowerOnCheck_0
//  135 		      {
//  136 	                       //m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
//  137 	                       m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
        LDR.N    R1,??DataTable3_1
        MOVS     R2,#+1
        STRB     R2,[R1, #+58]
//  138 	                       m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
        LDR.N    R1,??DataTable3_1
        MOVS     R2,#+1
        STRB     R2,[R1, #+59]
//  139                      }					
//  140                       #endif
//  141                   
//  142                 }
//  143 
//  144 				
//  145 		if(!Sys.wPowerOnByCanTimer)
??CanPowerOnCheck_0:
        LDR.N    R1,??DataTable3
        LDR      R1,[R1, #+56]
        CMP      R1,#+0
        BNE.N    ??CanPowerOnCheck_1
//  146 		{
//  147                          #if 1 //Miller.Tao20141107
//  148 			 if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+57]
        CMP      R1,#+2
        BNE.N    ??CanPowerOnCheck_1
//  149 			{
//  150 				   m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
        LDR.N    R1,??DataTable3_1
        MOVS     R2,#+1
        STRB     R2,[R1, #+57]
//  151 				   m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;//Miller.Tao20150119
        LDR.N    R1,??DataTable3_1
        MOVS     R2,#+1
        STRB     R2,[R1, #+58]
//  152 				   //m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
//  153 			}
//  154                          #endif
//  155 		  
//  156 		}
//  157 
//  158 
//  159 		   if((m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_OFF))
??CanPowerOnCheck_1:
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+57]
        CMP      R1,#+1
        BNE.N    ??CanPowerOnCheck_2
//  160 			   	ret = 0;
        MOVS     R1,#+0
        MOVS     R0,R1
        B.N      ??CanPowerOnCheck_3
//  161 	      else if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON&&m_BMW_CAN.AudioPwr == SYSTEM_POWER_OFF)
??CanPowerOnCheck_2:
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+57]
        CMP      R1,#+2
        BNE.N    ??CanPowerOnCheck_4
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+58]
        CMP      R1,#+1
        BNE.N    ??CanPowerOnCheck_4
//  162 		  	       ret =1;
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??CanPowerOnCheck_3
//  163 	      else if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON&&m_BMW_CAN.AudioPwr == SYSTEM_POWER_ON)
??CanPowerOnCheck_4:
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+57]
        CMP      R1,#+2
        BNE.N    ??CanPowerOnCheck_3
        LDR.N    R1,??DataTable3_1
        LDRB     R1,[R1, #+58]
        CMP      R1,#+2
        BNE.N    ??CanPowerOnCheck_3
//  164 		  	       ret = 2;
        MOVS     R1,#+2
        MOVS     R0,R1
//  165 
//  166 	      return ret;
??CanPowerOnCheck_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  167 
//  168 
//  169 }
//  170 
//  171 
//  172 //#define BAT_AD_6V 		0x36
//  173 #define BAT_AD_7V 		0x48
//  174 #define BAT_AD_8_5V 	0x5c
//  175 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function BAT_Detect_Int
          CFI NoCalls
        THUMB
//  176 void BAT_Detect_Int(void)		//	50ms??
//  177 {}
BAT_Detect_Int:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  178 
//  179 
//  180 //*******************************************
//  181 // * 函数名称：Initial516AD
//  182 // * 内容简介：MCU内部初始化
//  183 // * 函数变量：无
//  184 // *				  :
//  185 // *	返回值	  :    无
//  186 //*******************************************
//  187 
//  188 //82 5V
//  189 //----ACC AD=88     ACC VOLT=7V
//  190 //----ACC AD=100     ACC VOLT=8V
//  191 //----ACC AD=111     ACC VOLT=9V
//  192 //----ACC AD=127     ACC VOLT=10V

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function ACC_Detect
        THUMB
//  193 bool ACC_Detect(void)
//  194 {
ACC_Detect:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  195 	if(fSystemReset==1)
        LDR.N    R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ACC_Detect_0
//  196 	{
//  197 		//BackLight(0);
//  198 		return FALSE;   
        MOVS     R0,#+0
        B.N      ??ACC_Detect_1
//  199 	}
//  200 	else
//  201 	{
//  202 	//if(ADC_GetValue (ACC_ADC1_Channel)>ACC_7V) 
//  203 	if(GPIO_ReadInputDataBit(GPIOA, P_ACC_DET)==0)//1
??ACC_Detect_0:
        MOVS     R1,#+2
        LDR.N    R0,??DataTable3_3  ;; 0x40010800
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??ACC_Detect_2
//  204 		return TRUE;
        MOVS     R0,#+1
        B.N      ??ACC_Detect_1
//  205 	else
//  206 		return FALSE;   
??ACC_Detect_2:
        MOVS     R0,#+0
??ACC_Detect_1:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock9
//  207 	}
//  208 }
//  209 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function ITL_Detect
          CFI NoCalls
        THUMB
//  210 bool ITL_Detect(void)
//  211 {
//  212 //#if(WINCA==CE8920||WINCA==CE8903||WINCA==CE8979||WINCA==CE8904||WINCA==CE8969||WINCA==CE8922||WINCA==CE8977)
//  213 	//if(ADC_GetValue (ITL_ADC2_Channel)>5)
//  214 //#else
//  215 	//if(ADC_GetValue (ADC2_ITL_Channel)>80)
//  216 //#endif
//  217 		//return TRUE;
//  218 	//else
//  219 		return FALSE;   
ITL_Detect:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  220 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Back_Detect
          CFI NoCalls
        THUMB
//  221 bool Back_Detect(void)
//  222 {
//  223 	//if(GPIO_ReadInputDataBit(GPIOE, P_BACK_ID)==0)
//  224 	//{
//  225 		//BackDetectID=1;
//  226 		//return TRUE;
//  227 	//}
//  228 	//else
//  229 	{
//  230 		//BackDetectID=0;
//  231 		return FALSE;
Back_Detect:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  232 	}	
//  233 }
//  234 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function Brake_Detect
          CFI NoCalls
        THUMB
//  235 bool Brake_Detect(void)
//  236 {
//  237 	//if(GPIO_ReadInputDataBit(GPIOE, P_BREAK_ID)==0)
//  238 	//{
//  239 	//	return TRUE;
//  240 	//}
//  241 	//else
//  242 	{
//  243 		return FALSE;
Brake_Detect:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  244 	}
//  245 }
//  246 //BYTE tv_detect_ad;
//  247 //无电视       ==255
//  248 //内置电视 ==127
//  249 //外置电视 ==170
//  250 //内外置都有==101

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function TV_Detect
          CFI NoCalls
        THUMB
//  251 bool TV_Detect(void)
//  252 {
//  253 	BYTE tv_detect_ad;
//  254 	//if(GPIO_ReadInputDataBit(GPIOE, P_TV_ID)==0)
//  255 	tv_detect_ad=0;//ADC_GetValue (ADC1_TVID_Channel);
TV_Detect:
        MOVS     R0,#+0
        MOVS     R1,R0
//  256 	//Draw_ASCIIStr();
//  257 	//DrawNum(200,100,3,tv_detect_ad);
//  258 
//  259 	//if(tv_detect_ad>148)//外置电视 ==170
//  260 	#ifdef araba_digi_tv  
//  261 		//GPIO_WriteBit(GPIOC, P_TV_SEL , Bit_SET);
//  262 		return TRUE;
//  263 	#else
//  264 	if((tv_detect_ad>148) ||(tv_detect_ad<114))
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+149
        BCS.N    ??TV_Detect_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+114
        BCS.N    ??TV_Detect_1
//  265 	{//内位置都有时，优先外置  by tiger 0828
//  266 		//GPIO_WriteBit(GPIOC, P_TV_SEL , Bit_SET);
//  267 		return TRUE;
??TV_Detect_0:
        MOVS     R0,#+1
        B.N      ??TV_Detect_2
//  268 	}
//  269 	else
//  270 	{
//  271 		//GPIO_WriteBit(GPIOC, P_TV_SEL , Bit_RESET);
//  272 		return FALSE;
??TV_Detect_1:
        MOVS     R0,#+0
??TV_Detect_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  273 	}
//  274 	#endif
//  275 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function VDISC_IPOD_Detect
          CFI NoCalls
        THUMB
//  276 void VDISC_IPOD_Detect(void)
//  277 {}
VDISC_IPOD_Detect:
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  278 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function Ipod_Insert_Detect
          CFI NoCalls
        THUMB
//  279 void Ipod_Insert_Detect(void)
//  280 {}
Ipod_Insert_Detect:
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  281 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function BACK_OPEN_System_det
          CFI NoCalls
        THUMB
//  282 bool BACK_OPEN_System_det(void)
//  283 {
//  284 	return FALSE;
BACK_OPEN_System_det:
        MOVS     R0,#+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  285 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function Back_Func
          CFI NoCalls
        THUMB
//  286 void Back_Func(void)
//  287 {}
Back_Func:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  288 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function Brake_Func
          CFI NoCalls
        THUMB
//  289 void Brake_Func(void)
//  290 {}
Brake_Func:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function screen_black_check
          CFI NoCalls
        THUMB
//  291 void screen_black_check(void)
//  292 {}
screen_black_check:
        BX       LR               ;; return
          CFI EndBlock cfiBlock19

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function Clear_Rem_Touch_Value
          CFI NoCalls
        THUMB
//  293 void Clear_Rem_Touch_Value(void)
//  294 {}
Clear_Rem_Touch_Value:
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  295 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function screen_light_detect
          CFI NoCalls
        THUMB
//  296 void screen_light_detect(void)
//  297 {}
screen_light_detect:
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  298 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function screen_light_set
          CFI NoCalls
        THUMB
//  299 void screen_light_set(void)
//  300 {
//  301 }
screen_light_set:
        BX       LR               ;; return
          CFI EndBlock cfiBlock22

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function screen_light_function
        THUMB
//  302 void screen_light_function(BYTE light)
//  303 {
screen_light_function:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  304 	//BYTE val;
//  305 
//  306 	if(light>SCREEN_LIGHT_MAX-1)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+11
        BCC.N    ??screen_light_function_0
//  307 		light=SCREEN_LIGHT_MAX-1;	
        MOVS     R0,#+10
        MOVS     R4,R0
//  308 
//  309 	if(light==SCREEN_LIGHT_MAX-1)
??screen_light_function_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BNE.N    ??screen_light_function_1
//  310 	{
//  311 		WriteTW88_Page(0x98c, screenlight_table[light]);		
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_4
        LDRB     R1,[R4, R0]
        MOVW     R0,#+2444
          CFI FunCall WriteTW88_Page
        BL       WriteTW88_Page
        B.N      ??screen_light_function_2
//  312 	}
//  313 	else
//  314 	{
//  315 		WriteTW88_Page(0x98c, screenlight_table[light]);		
??screen_light_function_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable3_4
        LDRB     R1,[R4, R0]
        MOVW     R0,#+2444
          CFI FunCall WriteTW88_Page
        BL       WriteTW88_Page
//  316 	}
//  317 }
??screen_light_function_2:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function key_color_function
          CFI NoCalls
        THUMB
//  318 void key_color_function(BYTE color)
//  319 {}
key_color_function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock24

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function key_color_set
          CFI NoCalls
        THUMB
//  320 void key_color_set(BYTE color)
//  321 {}
key_color_set:
        BX       LR               ;; return
          CFI EndBlock cfiBlock25

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function Is_Source_Valide
          CFI NoCalls
        THUMB
//  322 BOOL Is_Source_Valide(BYTE source)
//  323 {
Is_Source_Valide:
        MOVS     R1,R0
//  324 	if((source<SRC_Radio)||(source>SRC_Cambox))//SRC_Ipod))
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BCC.N    ??Is_Source_Valide_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+16
        BCC.N    ??Is_Source_Valide_1
//  325 		return FALSE;
??Is_Source_Valide_0:
        MOVS     R0,#+0
        B.N      ??Is_Source_Valide_2
//  326 	else
//  327 		return TRUE;
??Is_Source_Valide_1:
        MOVS     R0,#+1
??Is_Source_Valide_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
//  328 }
//  329 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function Is_PIP_Source_Valide
          CFI NoCalls
        THUMB
//  330 BOOL Is_PIP_Source_Valide(BYTE source)
//  331 {
Is_PIP_Source_Valide:
        MOVS     R1,R0
//  332 	if((source==SRC_DVD)||\ 
//  333 		(source==SRC_NAVI)||\ 
//  334 		(source==SRC_AUX1)||\ 
//  335 		(source==SRC_AUX2)||\ 
//  336 		(source==SRC_videoplay)||\ 
//  337 		(source==SRC_CAM)||\ 
//  338 		(source==SRC_TV))//
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BEQ.N    ??Is_PIP_Source_Valide_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+3
        BEQ.N    ??Is_PIP_Source_Valide_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+5
        BEQ.N    ??Is_PIP_Source_Valide_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+6
        BEQ.N    ??Is_PIP_Source_Valide_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+7
        BEQ.N    ??Is_PIP_Source_Valide_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+11
        BEQ.N    ??Is_PIP_Source_Valide_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+10
        BNE.N    ??Is_PIP_Source_Valide_1
//  339 		return TRUE;
??Is_PIP_Source_Valide_0:
        MOVS     R0,#+1
        B.N      ??Is_PIP_Source_Valide_2
//  340 	else
//  341 		return FALSE;
??Is_PIP_Source_Valide_1:
        MOVS     R0,#+0
??Is_PIP_Source_Valide_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
//  342 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function Is_PIP_Source_CVBS
          CFI NoCalls
        THUMB
//  343 BOOL Is_PIP_Source_CVBS(BYTE source)
//  344 {
Is_PIP_Source_CVBS:
        MOVS     R1,R0
//  345 	if((source==SRC_AUX1)||\ 
//  346 		(source==SRC_AUX2)||\ 
//  347 		(source==SRC_videoplay)||\ 
//  348 		(source==SRC_CAM)||\ 
//  349 		(source==SRC_TV))//
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+5
        BEQ.N    ??Is_PIP_Source_CVBS_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+6
        BEQ.N    ??Is_PIP_Source_CVBS_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+7
        BEQ.N    ??Is_PIP_Source_CVBS_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+11
        BEQ.N    ??Is_PIP_Source_CVBS_0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+10
        BNE.N    ??Is_PIP_Source_CVBS_1
//  350 		return TRUE;
??Is_PIP_Source_CVBS_0:
        MOVS     R0,#+1
        B.N      ??Is_PIP_Source_CVBS_2
//  351 	else
//  352 		return FALSE;
??Is_PIP_Source_CVBS_1:
        MOVS     R0,#+0
??Is_PIP_Source_CVBS_2:
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
//  353 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function System_setup_reset_function
          CFI NoCalls
        THUMB
//  354 void System_setup_reset_function(void)
//  355 {
//  356 
//  357 }
System_setup_reset_function:
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
//  358 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function Rem_Change_Source
          CFI NoCalls
        THUMB
//  359 void Rem_Change_Source(void)
//  360 {}
Rem_Change_Source:
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
//  361 
//  362 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function SRC_Function_Process
        THUMB
//  363 void SRC_Function_Process(void)
//  364 {	
SRC_Function_Process:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  365 	switch(Sys.Main_Source)
        LDR.N    R0,??DataTable3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+4
        BNE.N    ??SRC_Function_Process_0
//  366 	{
//  367 		case SRC_Bluetooth://倒车需要出来蓝牙的命令
//  368 			BLUETOOTH_Function();
          CFI FunCall BLUETOOTH_Function
        BL       BLUETOOTH_Function
//  369 			break;
        B.N      ??SRC_Function_Process_1
//  370 		default:
//  371 			break;
//  372 	}
//  373 	
//  374 
//  375 	
//  376 	switch(Sys.Main_Source)
??SRC_Function_Process_0:
??SRC_Function_Process_1:
        LDR.N    R0,??DataTable3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+1
        BEQ.N    ??SRC_Function_Process_2
        CMP      R0,#+2
        BEQ.N    ??SRC_Function_Process_3
        CMP      R0,#+3
        BEQ.N    ??SRC_Function_Process_4
        CMP      R0,#+5
        BEQ.N    ??SRC_Function_Process_5
        CMP      R0,#+6
        BEQ.N    ??SRC_Function_Process_5
        CMP      R0,#+7
        BEQ.N    ??SRC_Function_Process_6
        CMP      R0,#+8
        BEQ.N    ??SRC_Function_Process_7
        CMP      R0,#+9
        BEQ.N    ??SRC_Function_Process_3
        CMP      R0,#+10
        BEQ.N    ??SRC_Function_Process_8
        CMP      R0,#+11
        BEQ.N    ??SRC_Function_Process_9
        CMP      R0,#+12
        BEQ.N    ??SRC_Function_Process_10
        CMP      R0,#+13
        BEQ.N    ??SRC_Function_Process_11
        CMP      R0,#+14
        BEQ.N    ??SRC_Function_Process_12
        CMP      R0,#+15
        BEQ.N    ??SRC_Function_Process_13
        B.N      ??SRC_Function_Process_14
//  377 	{
//  378 		case SRC_DVD:
//  379 		case SRC_vdisc:				
//  380 			
//  381 			break;
??SRC_Function_Process_3:
        B.N      ??SRC_Function_Process_14
//  382 		case SRC_Ipod:
//  383 			//IPOD_function();
//  384 			break;
??SRC_Function_Process_10:
        B.N      ??SRC_Function_Process_14
//  385 		case SRC_Radio:
//  386 			//Radio_Function();
//  387 			break;
??SRC_Function_Process_2:
        B.N      ??SRC_Function_Process_14
//  388 		case SRC_TV:
//  389 			//TV_Function();
//  390 			break;		
??SRC_Function_Process_8:
        B.N      ??SRC_Function_Process_14
//  391 		case SRC_NAVI:
//  392 			//GPS_Function();	
//  393 			break;	
??SRC_Function_Process_4:
        B.N      ??SRC_Function_Process_14
//  394 		case SRC_videoplay:
//  395 			//Videoplay_function();
//  396 			break;
??SRC_Function_Process_6:
        B.N      ??SRC_Function_Process_14
//  397 		case SRC_audioplay:
//  398 			//Audioplay_function();
//  399 			break;
??SRC_Function_Process_7:
        B.N      ??SRC_Function_Process_14
//  400 		case SRC_VCR:
//  401 			//VCR_function();
//  402 			break;
??SRC_Function_Process_11:
        B.N      ??SRC_Function_Process_14
//  403 		case SRC_App:
//  404 			//APPplay_function();			
//  405 			break;	
??SRC_Function_Process_12:
        B.N      ??SRC_Function_Process_14
//  406 		case SRC_AUX1:	
//  407 		case SRC_AUX2:	
//  408 			//DigiTV_Function();
//  409 			//AUX_Function();	
//  410 			break;		
??SRC_Function_Process_5:
        B.N      ??SRC_Function_Process_14
//  411 		case SRC_CAM:	
//  412 			//CAM_Function();	
//  413 			break;	
??SRC_Function_Process_9:
        B.N      ??SRC_Function_Process_14
//  414 		case SRC_Cambox:	
//  415 			//Cambox_Function();
//  416 			break;
//  417 		//default://test
//  418 			//Radio_Function();
//  419 			//break;			
//  420 	}
//  421 	/*if(RemValue==Rem_eject)
//  422 	{
//  423 		UART_Android_Key_Send(SEND_ANDROID_KEY_DVD);
//  424 	}*/
//  425 	
//  426 	Ipod_MUL_Function();
??SRC_Function_Process_13:
??SRC_Function_Process_14:
          CFI FunCall Ipod_MUL_Function
        BL       Ipod_MUL_Function
//  427 	Audioplay_MUL_Function();
          CFI FunCall Audioplay_MUL_Function
        BL       Audioplay_MUL_Function
//  428 	Videoplay_MUL_Function();
          CFI FunCall Videoplay_MUL_Function
        BL       Videoplay_MUL_Function
//  429 	BLUETOOTH_MUL_Function();
          CFI FunCall BLUETOOTH_MUL_Function
        BL       BLUETOOTH_MUL_Function
//  430 
//  431 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     EEPROM_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     m_BMW_CAN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     fSystemReset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     screenlight_table
//  432 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function Turn_source_power_off
          CFI NoCalls
        THUMB
//  433 void Turn_source_power_off(void)
//  434 {	
//  435 
//  436 
//  437 }
Turn_source_power_off:
        BX       LR               ;; return
          CFI EndBlock cfiBlock32

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function SRC_REM_func
          CFI NoCalls
        THUMB
//  438 void SRC_REM_func(void)
//  439 {}
SRC_REM_func:
        BX       LR               ;; return
          CFI EndBlock cfiBlock33

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function PIP_func_limit
          CFI NoCalls
        THUMB
//  440 void PIP_func_limit(void)
//  441 {}
PIP_func_limit:
        BX       LR               ;; return
          CFI EndBlock cfiBlock34
//  442 /****************************************************************************************
//  443 画中画窗口只能是DTV,CVBS,YUV中的任意一个，不能有2个窗口的类别是一样的。
//  444 
//  445 主     			WIN1      		   WIN2
//  446 BT/AUDIO/IPOD/RADIO		
//  447 			NAVI(主窗口切换为CVBS)	   DVD
//  448 			NAVI(主窗口切换为DTV)	   CAM/AUX1/AUX2/TV/VIDEO
//  449 			DVD(主窗口切换为CVBS)	   NAVI
//  450 			DVD(主窗口切换为DTV)	   CAM/AUX1/AUX2/TV/VIDEO
//  451                 	CAM/AUX1/AUX2/TV/VIDEO	   DVD/NAVI
//  452 NAVI		
//  453 			DVD	   		   CAM/AUX1/AUX2/TV/VIDEO			
//  454                 	CAM/AUX1/AUX2/TV/VIDEO	   DVD
//  455 DVD
//  456 			NAVI			   CAM/AUX1/AUX2/TV/VIDEO
//  457 			CAM/AUX1/AUX2/TV/VIDEO     NAVI
//  458 CAM/AUX1/AUX2/TV/VIDEO
//  459 			DVD	   		   NAVI			
//  460                 	NAVI	     		   DVD
//  461 *****************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function PIP_Display
          CFI NoCalls
        THUMB
//  462 void PIP_Display(BYTE main_source,BYTE source1_id,BYTE source1,BYTE source2_id,BYTE source2)
//  463 {}
PIP_Display:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R4,[SP, #+4]
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock35

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function PIP_Display_Func
          CFI NoCalls
        THUMB
//  464 void PIP_Display_Func(BYTE main_source,BYTE source1_id,BYTE source1,BYTE source2_id,BYTE source2)
//  465 {}
PIP_Display_Func:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R4,[SP, #+4]
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock36
//  466 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function system_recover_func
          CFI NoCalls
        THUMB
//  467 void system_recover_func(void)
//  468 {}
system_recover_func:
        BX       LR               ;; return
          CFI EndBlock cfiBlock37
//  469 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function OSD_Time_Clear
          CFI NoCalls
        THUMB
//  470 void OSD_Time_Clear(void)
//  471 {}
OSD_Time_Clear:
        BX       LR               ;; return
          CFI EndBlock cfiBlock38
//  472 
//  473 /*============================
//  474 *this is to handle the touch events
//  475 *
//  476 *By Miller.Tao
//  477 *Date :20150914
//  478 =============================*/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function Touch_Events_Process
          CFI NoCalls
        THUMB
//  479 void Touch_Events_Process(void)
//  480 {
//  481      
//  482 
//  483 }
Touch_Events_Process:
        BX       LR               ;; return
          CFI EndBlock cfiBlock39

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  484 	
// 
//   9 bytes in section .bss
//  12 bytes in section .rodata
// 680 bytes in section .text
// 
// 680 bytes of CODE  memory
//  12 bytes of CONST memory
//   9 bytes of DATA  memory
//
//Errors: none
//Warnings: none
