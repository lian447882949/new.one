///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:43 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\libr.c                      /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\libr.c -D                   /
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
//                    \Debug\List\libr.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME libr

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN u32Systick

        PUBLIC Delay_1ms
        PUBLIC delay_100us
        PUBLIC delay_10us
        PUBLIC delay_1us
        PUBLIC delay_500us
        PUBLIC delay_50us
        PUBLIC delay_5us
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\libr.c
//    1 #define _LIBR_C_
//    2 
//    3 #include "libr.h"
//    4 
//    5 
//    6 void delay_500us(void);
//    7 void delay_100us(void);
//    8 void delay_10us(void);
//    9 void delay_5us(void);
//   10 extern DWORD u32Systick;
//   11 
//   12 	

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Delay_1ms
          CFI NoCalls
        THUMB
//   13 void Delay_1ms (UINT count)
//   14 {
//   15 #if 1
//   16 	u32Systick=0;
Delay_1ms:
        LDR.N    R1,??DataTable0
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//   17     for (;;)
//   18     {
//   19         if (u32Systick >= count)
??Delay_1ms_0:
        LDR.N    R1,??DataTable0
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BCC.N    ??Delay_1ms_0
//   20         {
//   21             break;
//   22         }
//   23     }
//   24 	#endif
//   25 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     u32Systick
//   26 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function delay_500us
        THUMB
//   27 void delay_500us(void)
//   28 {
delay_500us:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   29 	 BYTE i=0;
        MOVS     R4,#+0
//   30 
//   31 	 for(i=0;i<50;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??delay_500us_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+50
        BCS.N    ??delay_500us_1
//   32 		delay_10us();	
          CFI FunCall delay_10us
        BL       delay_10us
        ADDS     R4,R4,#+1
        B.N      ??delay_500us_0
//   33 }
??delay_500us_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   34 
//   35 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function delay_100us
        THUMB
//   36 void delay_100us(void)
//   37 {
delay_100us:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   38 	 BYTE i=0;
        MOVS     R4,#+0
//   39 
//   40 	 for(i=0;i<10;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??delay_100us_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BCS.N    ??delay_100us_1
//   41 		delay_10us();	
          CFI FunCall delay_10us
        BL       delay_10us
        ADDS     R4,R4,#+1
        B.N      ??delay_100us_0
//   42 }
??delay_100us_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//   43 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function delay_50us
        THUMB
//   44 void delay_50us(void)
//   45 {
delay_50us:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   46 	 BYTE i=0;
        MOVS     R4,#+0
//   47 
//   48 	 for(i=0;i<5;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??delay_50us_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BCS.N    ??delay_50us_1
//   49 		delay_10us();
          CFI FunCall delay_10us
        BL       delay_10us
        ADDS     R4,R4,#+1
        B.N      ??delay_50us_0
//   50 	 
//   51 }
??delay_50us_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//   52 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function delay_10us
        THUMB
//   53 void delay_10us(void)
//   54 {
delay_10us:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   55 	delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
//   56 	delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
//   57 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4
//   58 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function delay_5us
        THUMB
//   59 void delay_5us(void)
//   60 {
delay_5us:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   61 	delay_1us();
          CFI FunCall delay_1us
        BL       delay_1us
//   62 	delay_1us();
          CFI FunCall delay_1us
        BL       delay_1us
//   63 	delay_1us();
          CFI FunCall delay_1us
        BL       delay_1us
//   64 	delay_1us();
          CFI FunCall delay_1us
        BL       delay_1us
//   65 	delay_1us();	
          CFI FunCall delay_1us
        BL       delay_1us
//   66 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5
//   67 
//   68 //32M

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function delay_1us
          CFI NoCalls
        THUMB
//   69 void delay_1us(void)
//   70 {
//   71   	  asm("nop");
delay_1us:
        nop              
//   72 	  asm("nop");
        nop              
//   73 	  asm("nop");
        nop              
//   74 	  asm("nop");	  
        nop              
//   75 	  asm("nop");
        nop              
//   76 	  asm("nop");
        nop              
//   77 	  asm("nop");
        nop              
//   78 	  asm("nop");	  
        nop              
//   79 
//   80   	  asm("nop");
        nop              
//   81 	  asm("nop");
        nop              
//   82 	  asm("nop");
        nop              
//   83 	  /*asm("nop");	  
//   84 	  asm("nop");
//   85 	  asm("nop");
//   86 	  asm("nop");
//   87 	  asm("nop");	  	
//   88 
//   89 	  asm("nop");//tiger add	 
//   90 	  asm("nop");
//   91 	  asm("nop");*/
//   92 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   93 
//   94 
//   95 
//   96 
//   97 
//   98 
//   99 
// 
// 152 bytes in section .text
// 
// 152 bytes of CODE memory
//
//Errors: none
//Warnings: none
