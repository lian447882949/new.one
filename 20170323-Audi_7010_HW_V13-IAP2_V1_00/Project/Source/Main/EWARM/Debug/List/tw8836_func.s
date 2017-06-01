///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:54 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\TW8836\tw8836_func.c               /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\TW8836\tw8836_func.c -D            /
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
//                    \Debug\List\tw8836_func.s                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME tw8836_func

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN CSYNC_Status
        EXTERN CVBS_Status
        EXTERN Canbus_power_on_id
        EXTERN Delay_1ms
        EXTERN EEPROM_DATA
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN IWDG_ReloadCounter
        EXTERN MainIsCvbs_ID
        EXTERN Mouse_buff_init
        EXTERN ReadTW88
        EXTERN Sys_CAN_light
        EXTERN System_openlogo_init_ok
        EXTERN TW8836_Write
        EXTERN TW8836_WritePage
        EXTERN WritePannelData_Func
        EXTERN WriteTW88
        EXTERN back_decoder_light_set
        EXTERN has_signal_Count
        EXTERN main_signal_Status
        EXTERN main_signal_last_Status
        EXTERN no_signal_Count
        EXTERN pip1_signal_Status
        EXTERN pip1_signal_last_Status
        EXTERN pip2_signal_Status
        EXTERN pip2_signal_last_Status

        PUBLIC BackLight
        PUBLIC InitPanel
        PUBLIC Init_TW8836_Variables
        PUBLIC PanelBlack
        PUBLIC PanelMute
        PUBLIC TW8836_Reset
        PUBLIC TW8836_Src
        PUBLIC TW8836_init
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\TW8836\tw8836_func.c
//    1 #define _REG_C_
//    2 
//    3 #include "compile.h"
//    4 
//    5 #include "tw8836_const.h"
//    6 
//    7 #include "i2c_driver.h"
//    8 #include "tw8836_func.h"
//    9 
//   10 #include "pannel.h"
//   11 #include "main.h"
//   12 
//   13 
//   14 #include "libr.h"
//   15 #include "port.h"
//   16 #include"com.h"
//   17 #include "includes.h"
//   18 
//   19 //=============================================================================
//   20 //初始化端口状态
//   21 //=============================================================================
//   22 #if 0
//   23 void	InitGPIO()
//   24 {
//   25 	WriteTW88(0xFF,0);			
//   26 	WriteTW88(0x40 +0,0x03);		//Enable
//   27 	WriteTW88(0x50 + 0,0x07);	//OUT
//   28 	WriteTW88(0x90 + 0,0x07);		//PU	
//   29 
//   30 	WriteTW88(0x40 +8,0x30);		//Enable
//   31 	WriteTW88(0x50 + 8,0x30);	//OUT
//   32 	WriteTW88(0x90 + 8,0x30);		//PU	
//   33 	
//   34 }
//   35 void	Write_GPIO(WORD pins,BYTE val)
//   36 {
//   37  	BYTE port,index;
//   38 	BYTE reg,reg_val;
//   39 
//   40 	port = (BYTE)(pins >> 8);
//   41 	index = (BYTE)(pins%256);
//   42 
//   43 	if(port > 0){
//   44 	 	//GPIO
//   45 		WriteTW88(0xFF,0);
//   46 		reg = 0x70 + port - 1;
//   47 		reg_val = ReadTW88(reg);
//   48 		if(val)
//   49 			reg_val |= index;
//   50 		else
//   51 			reg_val &= (~index);
//   52 
//   53 		WriteTW88(reg,reg_val);
//   54 	}
//   55 
//   56 }
//   57 BYTE	Read_GPIO(WORD pins)
//   58 {
//   59  	BYTE port,index;
//   60 	BYTE reg,reg_val = 0;
//   61 
//   62 	port = (BYTE)(pins >> 8);
//   63 	index = (BYTE)(pins%256);
//   64 
//   65 	if(port > 0){
//   66 	 	//GPIO
//   67 		WriteTW88(0xFF,0);
//   68 		reg = 0x60 + port - 1;
//   69 		reg_val = ReadTW88(reg);
//   70 
//   71 		reg_val	&= index;
//   72 	}
//   73 	if(reg_val)
//   74 		return 1;
//   75 	else
//   76 		return 0;
//   77 }
//   78 #endif
//   79 //=============================================================================
//   80 //初始化屏
//   81 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function InitPanel
          CFI NoCalls
        THUMB
//   82 void	InitPanel()
//   83 {
//   84 
//   85 }
InitPanel:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   86 
//   87 
//   88 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Init_TW8836_Variables
        THUMB
//   89  void Init_TW8836_Variables(void)
//   90  {
Init_TW8836_Variables:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   91 	CVBS_Status=NTSC;
        LDR.N    R0,??DataTable4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   92 	CSYNC_Status=HAS_CSYNC;
        LDR.N    R0,??DataTable4_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   93 	MainIsCvbs_ID=1;
        LDR.N    R0,??DataTable4_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   94 
//   95 	main_signal_Status=HAS_SIGNAL;
        LDR.N    R0,??DataTable4_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   96 	pip1_signal_Status=HAS_SIGNAL;
        LDR.N    R0,??DataTable4_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   97 	pip2_signal_Status=HAS_SIGNAL;	
        LDR.N    R0,??DataTable4_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   98 	main_signal_last_Status=HAS_SIGNAL;
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   99 	pip1_signal_last_Status=HAS_SIGNAL;
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  100 	pip2_signal_last_Status=HAS_SIGNAL;	
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  101 
//  102 	has_signal_Count=0;
        LDR.N    R0,??DataTable4_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  103 	no_signal_Count=0;
        LDR.N    R0,??DataTable4_10
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  104 
//  105 	Mouse_buff_init();
          CFI FunCall Mouse_buff_init
        BL       Mouse_buff_init
//  106 	
//  107  }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function TW8836_Reset
        THUMB
//  108 void TW8836_Reset(void)
//  109 {
TW8836_Reset:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  110 	GPIO_ResetBits(GPIOB, P_TW8836_RST);
        MOVS     R1,#+32
        LDR.N    R0,??DataTable4_11  ;; 0x40010c00
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  111 	Delay_1ms(100);
        MOVS     R0,#+100
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  112 	GPIO_SetBits(GPIOB, P_TW8836_RST);
        MOVS     R1,#+32
        LDR.N    R0,??DataTable4_11  ;; 0x40010c00
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  113 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function TW8836_init
        THUMB
//  114 void TW8836_init(void)
//  115 {
TW8836_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  116 	BYTE i;
//  117 	WORD Delay_count=0;
        MOVS     R4,#+0
//  118 
//  119 	Init_TW8836_Variables();
          CFI FunCall Init_TW8836_Variables
        BL       Init_TW8836_Variables
//  120 	TW8836_Reset();
          CFI FunCall TW8836_Reset
        BL       TW8836_Reset
//  121 
//  122 
//  123 	//Delay_1ms(10000);
//  124 
//  125 	//Delay_1ms(10000);
//  126 	//Delay_1ms(10000);
//  127 	//Delay_1ms(10000);
//  128 	
//  129 #if 0//miller.tao20150711
//  130 	while(ReadTW88_Page( 0x00 ) !=0x36)//0x4C
//  131 	{
//  132 		Delay_count++;
//  133 		if(Delay_count>100)
//  134 		{
//  135 			//WavePlayer_Warning(warn_open_type);	//test		
//  136 			//WavePlayer_Warning(warn_open_type);			
//  137 			//WavePlayer_Warning(warn_open_type);		
//  138 			break;
//  139 		}
//  140 		Delay_1ms(10);
//  141 	}
//  142 	if(Delay_count>100)
//  143 	{				
//  144 		Delay_1ms(500);
//  145 		Delay_count=0;
//  146 		while(ReadTW88_Page( 0x00 ) !=0x36)//0x4C
//  147 		{
//  148 			Delay_count++;
//  149 			if(Delay_count>100)
//  150 			{
//  151 				//WavePlayer_Warning(warn_open_type);	//test		
//  152 				//WavePlayer_Warning(warn_open_type);			
//  153 				//WavePlayer_Warning(warn_open_type);		
//  154 				break;
//  155 			}
//  156 			Delay_1ms(10);
//  157 		}	
//  158 	}
//  159 
//  160 	#endif
//  161         #if 0 //miller.tao20150729
//  162 		while(1)//0x4C
//  163 	{
//  164 		Delay_count++;
//  165 		if(Delay_count>2000)
//  166 		{
//  167 			//WavePlayer_Warning(warn_open_type);	//test		
//  168 			//WavePlayer_Warning(warn_open_type);			
//  169 			//WavePlayer_Warning(warn_open_type);		
//  170 			break;
//  171 		}
//  172 		Delay_1ms(5);
//  173 	}
//  174 	#endif
//  175 	IWDG_ReloadCounter();//清狗
          CFI FunCall IWDG_ReloadCounter
        BL       IWDG_ReloadCounter
//  176 	
//  177 
//  178 
//  179 		
//  180 	//CLR_BACKLIGHT;
//  181 	//InitGPIO();
//  182 	//InitPanel();
//  183 	//背光
//  184 	//PanelBlack(0);
//  185 	//if(System_BackOpenSys==1)//倒车开机会先显示LOGO再转镜头；
//  186 	//	System_BackOpenSys=0;
//  187 	//else
//  188 		if(System_openlogo_init_ok == 1)
        LDR.N    R0,??DataTable4_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??TW8836_init_0
//  189 		{//等待ARM LOGO初始化完成
//  190 		if(Canbus_power_on_id==0)
        LDR.N    R0,??DataTable4_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??TW8836_init_0
//  191 			//BackLight(1);
//  192 			System_openlogo_init_ok=0;
        LDR.N    R0,??DataTable4_12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  193 		}
//  194         
//  195         
//  196         
//  197         
//  198         
//  199 	//WritePannelData_Func(Pannel_TW8836_SWRST);	//
//  200 	WritePannelData_Func(Pannel_init_tw8836);////Pannel_ARM_type
??TW8836_init_0:
        MOVS     R0,#+1
          CFI FunCall WritePannelData_Func
        BL       WritePannelData_Func
//  201 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//  202 /*
//  203 this function is to change tw8836 's registers when the system is in A33,car,cvbs;
//  204 writed by miller.tao
//  205 date:20150730
//  206 
//  207 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function TW8836_Src
        THUMB
//  208 void TW8836_Src(BYTE src)
//  209 {
TW8836_Src:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  210     //TW8836_WaitVBlank(1);
//  211 
//  212        switch(src)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+3
        BEQ.N    ??TW8836_Src_0
        CMP      R0,#+11
        BEQ.N    ??TW8836_Src_1
        CMP      R0,#+18
        BEQ.N    ??TW8836_Src_2
        B.N      ??TW8836_Src_3
//  213        	{
//  214                 case SRC_NAVI:
//  215                         WritePannelData_Func(Pannel_DTV_type);
??TW8836_Src_0:
        MOVS     R0,#+44
          CFI FunCall WritePannelData_Func
        BL       WritePannelData_Func
//  216 		        break;
        B.N      ??TW8836_Src_4
//  217 		case SRC_CAM:
//  218 			if(Sys.FS_select.cam_type_onoff_id==0)
??TW8836_Src_1:
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+31]
        CMP      R0,#+0
        BNE.N    ??TW8836_Src_5
//  219 				WritePannelData_Func(Pannel_CarMedia_type);
        MOVS     R0,#+42
          CFI FunCall WritePannelData_Func
        BL       WritePannelData_Func
        B.N      ??TW8836_Src_6
//  220 			else if(Sys.FS_select.cam_type_onoff_id==1)
??TW8836_Src_5:
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+31]
        CMP      R0,#+1
        BNE.N    ??TW8836_Src_7
//  221 				{
//  222                        WritePannelData_Func(Pannel_CVBS_type);
        MOVS     R0,#+43
          CFI FunCall WritePannelData_Func
        BL       WritePannelData_Func
//  223 					   if(Sys_CAN_light.sun_mode==0x02)
        LDR.N    R0,??DataTable4_15
        LDRB     R0,[R0, #+1]
        CMP      R0,#+2
        BNE.N    ??TW8836_Src_8
//  224 					   	back_decoder_light_set(0xD5-(0x08*Sys.light_value)+0x20);
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+23]
        LSLS     R0,R0,#+3
        RSBS     R0,R0,#+245
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall back_decoder_light_set
        BL       back_decoder_light_set
        B.N      ??TW8836_Src_6
//  225 					   else
//  226 					    back_decoder_light_set(0xD5-(0x10*Sys.light_value));
??TW8836_Src_8:
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+23]
        LSLS     R0,R0,#+4
        RSBS     R0,R0,#+213
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall back_decoder_light_set
        BL       back_decoder_light_set
        B.N      ??TW8836_Src_6
//  227 				}
//  228 			else if(Sys.FS_select.cam_type_onoff_id==2)
??TW8836_Src_7:
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+31]
        CMP      R0,#+2
        BNE.N    ??TW8836_Src_6
//  229 				{
//  230 				WritePannelData_Func(Pannel_CVBS_type);
        MOVS     R0,#+43
          CFI FunCall WritePannelData_Func
        BL       WritePannelData_Func
//  231 									TW8836_WritePage(0x01);
        MOVS     R0,#+1
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  232 	TW8836_Write(0x0a, 0x0a);
        MOVS     R1,#+10
        MOVS     R0,#+10
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  233 					TW8836_WritePage(0x02);
        MOVS     R0,#+2
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  234 	TW8836_Write(0x04, 0x0e);
        MOVS     R1,#+14
        MOVS     R0,#+4
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  235 	TW8836_Write(0x03, 0x36);
        MOVS     R1,#+54
        MOVS     R0,#+3
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  236 				}
//  237 		        break;
??TW8836_Src_6:
        B.N      ??TW8836_Src_4
//  238 	        case SRC_CarMedia:
//  239                        WritePannelData_Func(Pannel_CarMedia_type);
??TW8836_Src_2:
        MOVS     R0,#+42
          CFI FunCall WritePannelData_Func
        BL       WritePannelData_Func
//  240 		        break;
        B.N      ??TW8836_Src_4
//  241 		default :
//  242 			break;
//  243 
//  244 
//  245 	 }
//  246 }
??TW8836_Src_3:
??TW8836_Src_4:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  247 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function BackLight
        THUMB
//  248 void	BackLight(BYTE on)
//  249 {
BackLight:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  250 	//背光
//  251 	if(on){
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??BackLight_0
//  252 //		WriteTW88(0xff, 0x09);
//  253 //		WriteTW88( 0xF5, 0x02);		
//  254 //		Delay_1ms(200);
//  255 //		WriteTW88( 0xF5, 0x03);		
//  256 //		Delay_1ms(200);
//  257 
//  258 		//SET_BACKLIGHT;
//  259 		//GPIO_SetBits(GPIOB, P_TFT_PWR);
//  260                 GPIO_SetBits(GPIOB, P_TFT_PWR);
        MOV      R1,#+32768
        LDR.N    R0,??DataTable4_11  ;; 0x40010c00
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??BackLight_1
//  261 
//  262 /*		WriteTW88(0xff, 0x00);
//  263 		WriteTW88( 0x40, ReadTW88(0x40)|0x01 );
//  264 		WriteTW88( 0x50, ReadTW88(0x40)|0x01 );
//  265 		WriteTW88( 0x60, ReadTW88(0x40)|0x01 );
//  266 		WriteTW88( 0x70, ReadTW88(0x40)|0x01 );	 */
//  267 
//  268 //		WriteTW88(0xff, 0x09);
//  269 //		WriteTW88( 0xF5, 0x07);
//  270 //		Delay_1ms(20);
//  271 	}else{
//  272 		//CLR_BACKLIGHT;
//  273 /*		WriteTW88(0xff, 0x00);
//  274 		WriteTW88( 0x40, ReadTW88(0x40)&0xFE );
//  275 		WriteTW88( 0x50, ReadTW88(0x40)&0xFE );
//  276 		WriteTW88( 0x60, ReadTW88(0x40)&0xFE );
//  277 		WriteTW88( 0x70, ReadTW88(0x40)&0xFE );	*/
//  278 
//  279 //		WriteTW88(0xff, 0x09);
//  280 //		WriteTW88( 0xF5, 0x00);
//  281 		//GPIO_ResetBits(GPIOB, P_TFT_PWR);
//  282 		GPIO_ResetBits(GPIOB, P_TFT_PWR);
??BackLight_0:
        MOV      R1,#+32768
        LDR.N    R0,??DataTable4_11  ;; 0x40010c00
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  283 	}
//  284 }
??BackLight_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     CVBS_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     CSYNC_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     MainIsCvbs_ID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     main_signal_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     pip1_signal_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     pip2_signal_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     main_signal_last_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     pip1_signal_last_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     pip2_signal_last_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     has_signal_Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     no_signal_Count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     System_openlogo_init_ok

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     Canbus_power_on_id

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     EEPROM_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     Sys_CAN_light
//  285 
//  286 //FREERUN

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function PanelMute
        THUMB
//  287 void	PanelMute(BYTE on)
//  288 {
PanelMute:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  289 	BYTE page;
//  290 	page = ReadTW88(0xFF);
        MOVS     R0,#+255
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R5,R0
//  291 	if(on){
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PanelMute_0
//  292 		//WriteTW88(0xff, 0x01);
//  293 		//WriteTW88(0x06, 0x0F);
//  294 		WriteTW88(0xff, 0x04);
        MOVS     R1,#+4
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  295 		WriteTW88(0x8A, 0x04);//ReadTW88(0x8A)|0x0C);
        MOVS     R1,#+4
        MOVS     R0,#+138
          CFI FunCall WriteTW88
        BL       WriteTW88
//  296 		WriteTW88(0x70, 0x20);//ReadTW88(0x70)|0x20);
        MOVS     R1,#+32
        MOVS     R0,#+112
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??PanelMute_1
//  297 	}else{
//  298 		//WriteTW88(0xff, 0x01);
//  299 		//WriteTW88(0x06, 0x00);
//  300 
//  301 		WriteTW88(0xff, 0x04);
??PanelMute_0:
        MOVS     R1,#+4
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  302 		//WriteTW88(0x8A, ReadTW88(0x8A)&0xf3);
//  303 		//delay(200);
//  304 		//WriteTW88(0x70, ReadTW88(0x70)&0xdd);
//  305 		WriteTW88(0x8A, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+138
          CFI FunCall WriteTW88
        BL       WriteTW88
//  306 		WriteTW88(0x70, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+112
          CFI FunCall WriteTW88
        BL       WriteTW88
//  307 	}
//  308 
//  309 	WriteTW88(0xFF,page);
??PanelMute_1:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  310 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function PanelBlack
        THUMB
//  311 void	PanelBlack(BYTE on)
//  312 {
PanelBlack:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  313 	if(on)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PanelBlack_0
//  314 	{
//  315 		WriteTW88(0xff, 0x04);
        MOVS     R1,#+4
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  316 		WriteTW88(0x70, ReadTW88(0x70)|0x20);
        MOVS     R0,#+112
          CFI FunCall ReadTW88
        BL       ReadTW88
        ORRS     R1,R0,#0x20
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+112
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??PanelBlack_1
//  317 	}
//  318 	else
//  319 	{
//  320 		WriteTW88(0xff, 0x04);
??PanelBlack_0:
        MOVS     R1,#+4
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  321 		WriteTW88(0x70, ReadTW88(0x70)&0xDF);
        MOVS     R0,#+112
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R1,R0,#0xDF
        MOVS     R0,#+112
          CFI FunCall WriteTW88
        BL       WriteTW88
//  322 	}
//  323 }
??PanelBlack_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  324 
//  325 
//  326 
//  327 
//  328 
// 
// 556 bytes in section .text
// 
// 556 bytes of CODE memory
//
//Errors: none
//Warnings: 2
