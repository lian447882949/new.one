///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    10/Jul/2015  15:59:51 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\code\T102\STM32_TZ_T102\Project\TW8836\OSD_driv.c    /
//    Command line =  F:\code\T102\STM32_TZ_T102\Project\TW8836\OSD_driv.c    /
//                    -D USE_STDPERIPH_DRIVER -D USE_STM32100B_EVAL -D        /
//                    STM32F10X_CL -lc F:\code\T102\STM32_TZ_T102\Project\STM /
//                    32F10x_StdPeriph_Template\EWARM\Debug\List\ -lA         /
//                    F:\code\T102\STM32_TZ_T102\Project\STM32F10x_StdPeriph_ /
//                    Template\EWARM\Debug\List\ -o                           /
//                    F:\code\T102\STM32_TZ_T102\Project\STM32F10x_StdPeriph_ /
//                    Template\EWARM\Debug\Obj\ --no_cse --no_unroll          /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M3 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0\arm\INC\c\DLib_Config_Full.h" -I                    /
//                    F:\code\T102\STM32_TZ_T102\Project\STM32F10x_StdPeriph_ /
//                    Template\EWARM\ -I F:\code\T102\STM32_TZ_T102\Project\S /
//                    TM32F10x_StdPeriph_Template\EWARM\..\ -I                /
//                    F:\code\T102\STM32_TZ_T102\Project\STM32F10x_StdPeriph_ /
//                    Template\EWARM\..\..\..\Libraries\STM32F10x_StdPeriph_D /
//                    river\inc\ -I F:\code\T102\STM32_TZ_T102\Project\STM32F /
//                    10x_StdPeriph_Template\EWARM\..\..\..\Libraries\STM32F1 /
//                    0x_StdPeriph_Driver\src\ -I                             /
//                    F:\code\T102\STM32_TZ_T102\Project\STM32F10x_StdPeriph_ /
//                    Template\EWARM\..\..\..\Project/Common\ -I              /
//                    F:\code\T102\STM32_TZ_T102\Project\STM32F10x_StdPeriph_ /
//                    Template\EWARM\..\..\..\Project/TW8836\ -I              /
//                    F:\code\T102\STM32_TZ_T102\Project\STM32F10x_StdPeriph_ /
//                    Template\EWARM\..\..\..\Libraries\CMSIS\CM3\DeviceSuppo /
//                    rt\ST\STM32F10x\ -Ol -I "C:\Program Files\IAR           /
//                    Systems\Embedded Workbench 6.0\arm\CMSIS\Include\"      /
//    List file    =  F:\code\T102\STM32_TZ_T102\Project\STM32F10x_StdPeriph_ /
//                    Template\EWARM\Debug\List\OSD_driv.s                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME OSD_driv

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ReadTW88
        EXTERN SPI_ReadData2Reg
        EXTERN SPI_ReadData2xdata
        EXTERN WriteTW88

        PUBLIC AnimationData
        PUBLIC AnimationON
        PUBLIC Arrial_Header
        PUBLIC If_Windown_Display
        PUBLIC InitStartAdr
        PUBLIC LoadLUT_8Bit
        PUBLIC Osd16Format
        PUBLIC OsdBlockFill
        PUBLIC OsdBlockTransfer
        PUBLIC OsdBlockTransferLinear
        PUBLIC OsdBltColor
        PUBLIC OsdBltDestMemoryStart
        PUBLIC OsdBltDestMemoryW64
        PUBLIC OsdBltDestXY
        PUBLIC OsdBltGetDestMemoryStart
        PUBLIC OsdBltGetDestMemoryW64
        PUBLIC OsdBltGetSourceMemoryStart
        PUBLIC OsdBltSize
        PUBLIC OsdBltSourceMemoryStart
        PUBLIC OsdBltSourceMemoryW64
        PUBLIC OsdBltSourceXY
        PUBLIC OsdCpuBusy
        PUBLIC OsdInit_16Bit
        PUBLIC OsdInit_8Bit
        PUBLIC OsdLoadBmpLinearFromSPI
        PUBLIC OsdLoadBmpXYFromSPI
        PUBLIC OsdLoadBmpXYFromSPI_8bit
        PUBLIC OsdLoadFontArial
        PUBLIC OsdLoadFontLut
        PUBLIC OsdLoadLUT
        PUBLIC OsdLoadTransBmpXYFromSPI
        PUBLIC OsdNoWriteColor
        PUBLIC OsdOpBusy
        PUBLIC OsdSourceColor
        PUBLIC OsdSpecialExpansion
        PUBLIC OsdStart
        PUBLIC OsdTargetColor
        PUBLIC OsdWaitDisplayBlank
        PUBLIC OsdWin01Enable
        PUBLIC OsdWin01Undisable
        PUBLIC OsdWinBase
        PUBLIC OsdWinBuffer
        PUBLIC OsdWinBufferMem
        PUBLIC OsdWinBufferOffsetXY
        PUBLIC OsdWinDisplay
        PUBLIC OsdWinEnable
        PUBLIC OsdWinScreen
        PUBLIC OsdWinStart
        PUBLIC OsdWinTransparent
        PUBLIC OsdWriteMode
        PUBLIC SPI_Buffer
        PUBLIC WinGlobalAlphaDisalbe
        PUBLIC WinGlobalAlphaEnalbe
        PUBLIC g_Hx64_16Bit
        PUBLIC g_Hx64_8Bit
        PUBLIC g_Page
        PUBLIC g_Transp_Color
        
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
        
// F:\code\T102\STM32_TZ_T102\Project\TW8836\OSD_driv.c
//    1 #define _OSD_C_
//    2 
//    3 #include "i2c_driver.h"
//    4 #include "tw8823_const.h"
//    5 //#include "osd_func.h"
//    6 #include "osd_driv.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE g_Hx64_8Bit
g_Hx64_8Bit:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE g_Hx64_16Bit
g_Hx64_16Bit:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD g_Transp_Color
g_Transp_Color:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute BYTE SPI_Buffer[128]
SPI_Buffer:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE g_Page
g_Page:
        DS8 1
//    7 #include "tw8823_spi.h"
//    8 
//    9 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 struct st_animation AnimationData[MAX_ANIMATION];
AnimationData:
        DS8 416

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   11 BIT AnimationON=0;
AnimationON:
        DS8 1
//   12 
//   13 
//   14 #define DMA_SIZE	0x8000L
//   15 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   16 BYTE	OsdWinBase[5] = { WIN0_ST, WIN1_ST, WIN4_ST, WIN4_ST, WIN4_ST };
OsdWinBase:
        DATA
        DC8 128, 160, 192, 192, 192, 0, 0, 0
//   17 
//   18 //=============================================================================
//   19 //		OsdWinDisplay
//   20 //      0xSM:        S: sub sel, M: main sel
//   21 //                   0:NO, 1:8bit, 2:16bit, 3:all
//   22 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function OsdWinDisplay
        THUMB
//   23 void OsdWinDisplay(BYTE mode)
//   24 {
OsdWinDisplay:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   25 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//   26 	WriteTW88( OSD_OUT_SEL, mode ); 
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+248
          CFI FunCall WriteTW88
        BL       WriteTW88
//   27 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   28 
//   29 //=============================================================================
//   30 //		OSD Window Setup
//   31 //=============================================================================
//   32 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function OsdWinEnable
        THUMB
//   33 void OsdWinEnable(BYTE winno, BYTE en)
//   34 {
OsdWinEnable:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R1
//   35 	BYTE index = OsdWinBase[winno] + OSDWIN_ENABLE;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable11
        LDRB     R5,[R0, R1]
//   36 	BYTE dat;
//   37 	
//   38 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//   39 	dat = ReadTW88(index);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall ReadTW88
        BL       ReadTW88
//   40 	if( en ) WriteTW88(index, dat | 0x01);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??OsdWinEnable_0
        ORRS     R1,R0,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdWinEnable_1
//   41 	else     WriteTW88(index, dat & 0xfe);
??OsdWinEnable_0:
        ANDS     R1,R0,#0xFE
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//   42 }
??OsdWinEnable_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//   43 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function OsdWin01Enable
        THUMB
//   44 void OsdWin01Enable(void)//test
//   45 {
OsdWin01Enable:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   46 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//   47 	WriteTW88( 0xA0, 0x30);
        MOVS     R1,#+48
        MOVS     R0,#+160
          CFI FunCall WriteTW88
        BL       WriteTW88
//   48 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
//   49 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function OsdWin01Undisable
        THUMB
//   50 void OsdWin01Undisable(void)//test
//   51 {
OsdWin01Undisable:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   52 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//   53 	WriteTW88( 0xA0, 0x31);
        MOVS     R1,#+49
        MOVS     R0,#+160
          CFI FunCall WriteTW88
        BL       WriteTW88
//   54 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//   55 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function If_Windown_Display
        THUMB
//   56 BYTE  If_Windown_Display(BYTE winno)
//   57 {
If_Windown_Display:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   58 	BYTE index = OsdWinBase[winno] + OSDWIN_ENABLE;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable11
        LDRB     R5,[R4, R0]
//   59 	BYTE dat;
//   60 	
//   61 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//   62 	dat = ReadTW88(index);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall ReadTW88
        BL       ReadTW88
//   63 
//   64 	if((dat & 0x01) == 0)	//不使能
        LSLS     R0,R0,#+31
        BMI.N    ??If_Windown_Display_0
//   65 		return 0;														   
        MOVS     R0,#+0
        B.N      ??If_Windown_Display_1
//   66 
//   67 	dat = ReadTW88( OSD_OUT_SEL); 
??If_Windown_Display_0:
        MOVS     R0,#+248
          CFI FunCall ReadTW88
        BL       ReadTW88
//   68 	dat &= 0x03;
        ANDS     R0,R0,#0x3
//   69 
//   70 	if(winno == 4){
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??If_Windown_Display_2
//   71 		if(dat == 0 || dat == 1)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??If_Windown_Display_3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??If_Windown_Display_4
//   72 			return 0;	 	
??If_Windown_Display_3:
        MOVS     R0,#+0
        B.N      ??If_Windown_Display_1
//   73 	}else{
//   74 		if(dat == 0 || dat == 2)
??If_Windown_Display_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??If_Windown_Display_5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??If_Windown_Display_4
//   75 			return 0;	 	
??If_Windown_Display_5:
        MOVS     R0,#+0
        B.N      ??If_Windown_Display_1
//   76 	}
//   77 
//   78   	return 1;
??If_Windown_Display_4:
        MOVS     R0,#+1
??If_Windown_Display_1:
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock4
//   79 }
//   80 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function OsdWinTransparent
        THUMB
//   81 void OsdWinTransparent(BYTE winno, BYTE en)
//   82 {
OsdWinTransparent:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R1
//   83 	BYTE index = OsdWinBase[winno] + OSDWIN_ENABLE;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable11
        LDRB     R5,[R0, R1]
//   84 	BYTE dat;
//   85 	
//   86 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//   87 	dat = ReadTW88(index);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall ReadTW88
        BL       ReadTW88
//   88 	if( en ) WriteTW88(index, dat | 0x10);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??OsdWinTransparent_0
        ORRS     R1,R0,#0x10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdWinTransparent_1
//   89 	else     WriteTW88(index, dat & 0xEF);
??OsdWinTransparent_0:
        ANDS     R1,R0,#0xEF
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//   90 }	 
??OsdWinTransparent_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5
//   91 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function OsdWinBufferMem
        THUMB
//   92 void OsdWinBufferMem(BYTE winno, DWORD start)
//   93 {
OsdWinBufferMem:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R1
//   94 	BYTE index = OsdWinBase[winno] + OSDWIN_BUFFERSTART;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable11
        LDRB     R0,[R0, R1]
        ADDS     R5,R0,#+9
//   95 	
//   96 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//   97 	WriteTW88(index++, (BYTE)(start>>16));
        LSRS     R1,R4,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//   98 	WriteTW88(index++, (BYTE)(start>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//   99 	WriteTW88(index++, (BYTE)start);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  100 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6
//  101 
//  102 /*
//  103 void OsdWinBufferWH(BYTE winno, BYTE w64, BYTE h64)
//  104 {
//  105 	BYTE index = OsdWinBase(winno) + OSDWIN_BUFFERSTART + 3;
//  106 
//  107 	WriteTW88( 0xff, OSD_PAGE );
//  108 	WriteTW88(index++, w64);
//  109 	WriteTW88(index,   h64);
//  110 }
//  111 */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function OsdWinBuffer
        THUMB
//  112 void OsdWinBuffer(BYTE winno, DWORD start, BYTE w64, BYTE h64)
//  113 {
OsdWinBuffer:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
//  114 	BYTE index = OsdWinBase[winno] + OSDWIN_BUFFERSTART;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable11
        LDRB     R0,[R0, R1]
        ADDS     R7,R0,#+9
//  115 	
//  116 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  117 	WriteTW88(index++, (BYTE)(start>>16));
        LSRS     R1,R4,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R7,R7,#+1
//  118 	WriteTW88(index++, (BYTE)(start>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R7,R7,#+1
//  119 	WriteTW88(index++, (BYTE)start);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R7,R7,#+1
//  120 	
//  121 	WriteTW88(index++, w64);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R7,R7,#+1
//  122 	WriteTW88(index,   h64);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  123 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock7
//  124 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function OsdWinBufferOffsetXY
        THUMB
//  125 void OsdWinBufferOffsetXY (BYTE winno, WORD x, WORD y)
//  126 {
OsdWinBufferOffsetXY:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R1
        MOVS     R5,R2
//  127 	BYTE index = OsdWinBase[winno] + OSDWIN_DISPOFFSET;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable11
        LDRB     R0,[R0, R1]
        ADDS     R6,R0,#+14
//  128 
//  129 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  130 	WriteTW88(index++, (BYTE)(x>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  131 	WriteTW88(index++, (BYTE)x);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  132 	WriteTW88(index++, (BYTE)(y>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  133 	WriteTW88(index,   (BYTE)y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  134 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock8
//  135 		

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function OsdWinScreen
        THUMB
//  136 void OsdWinScreen(BYTE winno, WORD x, WORD y, WORD w, WORD h)
//  137 {
OsdWinScreen:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR      R7,[SP, #+24]
//  138 	BYTE index = OsdWinBase[winno] + OSDWIN_SCREEN;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable11
        LDRB     R0,[R0, R1]
        ADDS     R8,R0,#+1
//  139 
//  140 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  141 	WriteTW88(index++, (BYTE)(x>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R8,R8,#+1
//  142 	WriteTW88(index++, (BYTE)x);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R8,R8,#+1
//  143 	WriteTW88(index++, (BYTE)(y>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R8,R8,#+1
//  144 	WriteTW88(index++, (BYTE)y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R8,R8,#+1
//  145 	WriteTW88(index++, (BYTE)(w>>8));
        LSRS     R1,R6,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R8,R8,#+1
//  146 	WriteTW88(index++, (BYTE)w);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R8,R8,#+1
//  147 	WriteTW88(index++, (BYTE)(h>>8));
        LSRS     R1,R7,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R8,R8,#+1
//  148 	WriteTW88(index,   (BYTE)h);
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  149 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock9
//  150 
//  151 #if		1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function OsdWinStart
        THUMB
//  152 void OsdWinStart(BYTE winno, WORD x, WORD y)
//  153 {
OsdWinStart:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R1
        MOVS     R5,R2
//  154 	BYTE index = OsdWinBase[winno] + OSDWIN_SCREEN;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable11
        LDRB     R0,[R0, R1]
        ADDS     R6,R0,#+1
//  155 
//  156 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  157 	WriteTW88(index++, (BYTE)(x>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  158 	WriteTW88(index++, (BYTE)x);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  159 	WriteTW88(index++, (BYTE)(y>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  160 	WriteTW88(index++, (BYTE)y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  161 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock10
//  162 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function Osd16Format
        THUMB
//  163 void Osd16Format(BYTE format)
//  164 {
Osd16Format:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  165 	BYTE dat;
//  166 
//  167 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  168 	dat = ReadTW88( 0xc0 ) & 0xf1;
        MOVS     R0,#+192
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0xF1
//  169 	WriteTW88( 0xc0, dat | format );
        ORRS     R1,R4,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+192
          CFI FunCall WriteTW88
        BL       WriteTW88
//  170 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock11
//  171 #endif
//  172 
//  173 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function OsdWriteMode
        THUMB
//  174 void OsdWriteMode( BYTE mode )
//  175 {
OsdWriteMode:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  176 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  177 	WriteTW88( OSD_MODE, mode );
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  178 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock12
//  179 //=============================================================================
//  180 //		BitBlt Setup
//  181 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function OsdBltSourceMemoryStart
        THUMB
//  182 void OsdBltSourceMemoryStart(DWORD start)
//  183 {
OsdBltSourceMemoryStart:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  184 	BYTE index = OSD_BITBLTSOURCE;
        MOVS     R5,#+96
//  185 	
//  186 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  187 	WriteTW88(index++, (BYTE)(start>>16));
        LSRS     R1,R4,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  188 	WriteTW88(index++, (BYTE)(start>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  189 	WriteTW88(index,   (BYTE)start);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  190 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock13
//  191 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function OsdBltSourceMemoryW64
        THUMB
//  192 void OsdBltSourceMemoryW64(BYTE w64)	
//  193 {
OsdBltSourceMemoryW64:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  194 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  195 	WriteTW88(OSD_BITBLTSOURCEW64, w64);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+99
          CFI FunCall WriteTW88
        BL       WriteTW88
//  196 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14
//  197 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function OsdBltGetSourceMemoryStart
        THUMB
//  198 DWORD OsdBltGetSourceMemoryStart(void)
//  199 {
OsdBltGetSourceMemoryStart:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  200 	DWORD addr;
//  201 
//  202 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  203 	addr = ReadTW88( OSD_BITBLTSOURCE );
        MOVS     R0,#+96
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R4,R0
//  204 	addr = (addr<<8) + ReadTW88( OSD_BITBLTSOURCE+1 );
        MOVS     R0,#+97
          CFI FunCall ReadTW88
        BL       ReadTW88
        ADDS     R4,R0,R4, LSL #+8
//  205 	addr = (addr<<8) + ReadTW88( OSD_BITBLTSOURCE+2 );
        MOVS     R0,#+98
          CFI FunCall ReadTW88
        BL       ReadTW88
        ADDS     R4,R0,R4, LSL #+8
//  206 
//  207 	return addr;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock15
//  208 }
//  209 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function OsdBltSourceXY
        THUMB
//  210 void OsdBltSourceXY(WORD x, WORD y)
//  211 {
OsdBltSourceXY:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  212 	BYTE index = OSD_BITBLTSOURCEXY;
        MOVS     R6,#+100
//  213 		
//  214 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  215 	WriteTW88(index++, (BYTE)(x>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  216 	WriteTW88(index++, (BYTE)x);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  217 	WriteTW88(index++, (BYTE)(y>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  218 	WriteTW88(index,   (BYTE)y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  219 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock16

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function OsdBltSize
        THUMB
//  220 void OsdBltSize(WORD w, WORD h)
//  221 {
OsdBltSize:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  222 	BYTE index = OSD_BITBLTSIZE;
        MOVS     R6,#+104
//  223 	
//  224 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  225 	WriteTW88(index++, (BYTE)(w>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  226 	WriteTW88(index++, (BYTE)w);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  227 	WriteTW88(index++, (BYTE)(h>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  228 	WriteTW88(index,   (BYTE)h);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  229 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function OsdBltDestMemoryStart
        THUMB
//  230 void OsdBltDestMemoryStart(DWORD start)
//  231 {
OsdBltDestMemoryStart:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  232 	BYTE index = OSD_BITBLTDEST;
        MOVS     R5,#+112
//  233 	
//  234 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  235 	WriteTW88(index++, (BYTE)(start>>16));
        LSRS     R1,R4,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  236 	WriteTW88(index++, (BYTE)(start>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  237 	WriteTW88(index,   (BYTE)start);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  238 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function OsdBltDestMemoryW64
        THUMB
//  239 void OsdBltDestMemoryW64(BYTE w64)
//  240 {
OsdBltDestMemoryW64:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  241 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  242 	WriteTW88(OSD_BITBLTDESTW64, w64);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+115
          CFI FunCall WriteTW88
        BL       WriteTW88
//  243 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock19
//  244 #if		1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function OsdBltGetDestMemoryStart
        THUMB
//  245 DWORD OsdBltGetDestMemoryStart(void)
//  246 {
OsdBltGetDestMemoryStart:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  247 	DWORD addr;
//  248 
//  249 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  250 	addr = ReadTW88( OSD_BITBLTDEST );
        MOVS     R0,#+112
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R4,R0
//  251 	addr = (addr<<8) + ReadTW88( OSD_BITBLTDEST+1 );
        MOVS     R0,#+113
          CFI FunCall ReadTW88
        BL       ReadTW88
        ADDS     R4,R0,R4, LSL #+8
//  252 	addr = (addr<<8) + ReadTW88( OSD_BITBLTDEST+2 );
        MOVS     R0,#+114
          CFI FunCall ReadTW88
        BL       ReadTW88
        ADDS     R4,R0,R4, LSL #+8
//  253 
//  254 	return addr;
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock20
//  255 }
//  256 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function OsdBltGetDestMemoryW64
        THUMB
//  257 BYTE OsdBltGetDestMemoryW64(void)
//  258 {
OsdBltGetDestMemoryW64:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  259 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  260 	return ReadTW88( OSD_BITBLTDEST+3 );
        MOVS     R0,#+115
          CFI FunCall ReadTW88
        BL       ReadTW88
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock21
//  261 }
//  262 #endif	
//  263 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function OsdBltDestXY
        THUMB
//  264 void OsdBltDestXY(WORD x, WORD y)
//  265 {	
OsdBltDestXY:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  266 	BYTE index = OSD_BITBLTDESTXY;
        MOVS     R6,#+116
//  267 
//  268 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  269 	WriteTW88(index++, (BYTE)(x>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  270 	WriteTW88(index++, (BYTE)x);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  271 	WriteTW88(index++, (BYTE)(y>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R6,R6,#+1
//  272 	WriteTW88(index,   (BYTE)y);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  273 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock22

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function OsdBltColor
        THUMB
//  274 void OsdBltColor(WORD color)
//  275 {
OsdBltColor:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  276 	BYTE index = OSD_BITBLTCOLOR;
        MOVS     R5,#+14
//  277 
//  278 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  279 	WriteTW88(index++, (BYTE)(color>>8));
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  280 	WriteTW88(index,   (BYTE)color);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  281 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock23
//  282 
//  283 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function OsdSourceColor
        THUMB
//  284 void OsdSourceColor( BYTE index, WORD color)
//  285 {
OsdSourceColor:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  286 	index = OSD_SOURCECOLOR + index*2;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R4,R0,#+64
//  287 
//  288 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  289 	WriteTW88(index++, (BYTE)(color>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R4,R4,#+1
//  290 	WriteTW88(index,   (BYTE)color);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  291 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock24
//  292 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function OsdTargetColor
        THUMB
//  293 void OsdTargetColor( BYTE index, WORD color)
//  294 {
OsdTargetColor:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  295 	index = OSD_TARGETCOLOR + index*2;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R4,R0,#+72
//  296 
//  297 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  298 	WriteTW88(index++, (BYTE)(color>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R4,R4,#+1
//  299 	WriteTW88(index,   (BYTE)color);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  300 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock25
//  301 
//  302 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function OsdNoWriteColor
        THUMB
//  303 void OsdNoWriteColor( BYTE index, WORD color)
//  304 {
OsdNoWriteColor:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  305 	index = OSD_NOWRITECOLOR + index*2;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R4,R0,#+80
//  306 
//  307 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  308 	WriteTW88(index++, (BYTE)(color>>8));
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R4,R4,#+1
//  309 	WriteTW88(index,   (BYTE)color);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  310 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock26
//  311 
//  312 #if		0
//  313 
//  314 void OsdWaitWindowBlank(BYTE winno, BYTE cnt)
//  315 {
//  316 	BYTE i, j;
//  317 
//  318 	if ( winno == 0 ) j = 1;
//  319 	else if ( winno == 1 ) j =2;
//  320 	else j = 8;
//  321  	WriteTW88( 0xff, OSD_PAGE );
//  322 	for(i=0; i<cnt; i++) {
//  323 		while( (ReadTW88(0xf0) & j)==0 );	
//  324 		while( (ReadTW88(0xf0) & j)!=0 );
//  325 	}
//  326 }
//  327 
//  328 void OsdWaitOSDBlank(BYTE cnt)
//  329 {
//  330 	BYTE i;
//  331 
//  332  	WriteTW88( 0xff, OSD_PAGE );
//  333 	WriteTW88(0xf0, 0x10);			// clear to 0
//  334 
//  335 	for(i=0; i<cnt; i++) {
//  336 		while( (ReadTW88(0xf0) & 0x10)==0 );	
//  337 	}
//  338 }
//  339 #endif
//  340 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function OsdWaitDisplayBlank
          CFI NoCalls
        THUMB
//  341 void OsdWaitDisplayBlank(BYTE cnt)
//  342 {/*
//  343 	BYTE i;
//  344 	WORD count=0;
//  345 
//  346  	WriteTW88( 0xff, OSD_PAGE );
//  347 	WriteTW88(0xf0, 0x20);			// clear to 0
//  348 
//  349 	for(i=0; i<cnt; i++) {
//  350 		while( (ReadTW88(0xf0) & 0x20)==0 )
//  351 		{
//  352 			count++;
//  353 			if(count>5000) break;
//  354 		}
//  355 	}*/  //tiger remove
//  356 }
OsdWaitDisplayBlank:
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
//  357 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function OsdStart
        THUMB
//  358 void OsdStart(BYTE en)
//  359 {
OsdStart:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  360 	WriteTW88(OSD_START, en);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+1
          CFI FunCall WriteTW88
        BL       WriteTW88
//  361 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock28
//  362 
//  363 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function OsdCpuBusy
        THUMB
//  364 BYTE OsdCpuBusy(void)
//  365 {
OsdCpuBusy:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  366 	//BYTE page;
//  367 
//  368 	//page=ReadTW88(0xff); 
//  369 	WriteTW88(0xff, 0x0f);
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  370 	if( ReadTW88(0x04) & 0x01 ) {
        MOVS     R0,#+4
          CFI FunCall ReadTW88
        BL       ReadTW88
        LSLS     R0,R0,#+31
        BPL.N    ??OsdCpuBusy_0
//  371 		//WriteTW88(0xff, page);
//  372 		return 1;
        MOVS     R0,#+1
        B.N      ??OsdCpuBusy_1
//  373 	}
//  374 
//  375 	//delay(2);
//  376 	//WriteTW88(0xff, page);
//  377 	return 0;
??OsdCpuBusy_0:
        MOVS     R0,#+0
??OsdCpuBusy_1:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock29
//  378 }

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function OsdOpBusy
        THUMB
//  379 BYTE OsdOpBusy(void)
//  380 {
OsdOpBusy:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  381 	//BYTE page;
//  382 
//  383 	//page=ReadTW88(0xff); 
//  384 	WriteTW88(0xff, OSD_PAGE);
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  385 	if( ReadTW88(OSD_START) & 0x80 ) {
        MOVS     R0,#+1
          CFI FunCall ReadTW88
        BL       ReadTW88
        LSLS     R0,R0,#+24
        BPL.N    ??OsdOpBusy_0
//  386 		//Printf("!");
//  387 		//WriteTW88(0xff, page);
//  388 		return 1;
        MOVS     R0,#+1
        B.N      ??OsdOpBusy_1
//  389 	}
//  390 
//  391 	//Printf("?");
//  392 
//  393 	//delay(2);
//  394 	//WriteTW88(0xff, page);
//  395 	return 0;
??OsdOpBusy_0:
        MOVS     R0,#+0
??OsdOpBusy_1:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock30
//  396 }
//  397 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function OSDHardwareEnable
        THUMB
//  398 static void OSDHardwareEnable(void)
//  399 {
OSDHardwareEnable:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  400 	BYTE val;
//  401 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  402 	
//  403 	val = ReadTW88(0x03)|0x40;
        MOVS     R0,#+3
          CFI FunCall ReadTW88
        BL       ReadTW88
        ORRS     R1,R0,#0x40
//  404 	WriteTW88(0x03,val);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  405 
//  406 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock31
//  407 //=============================================================================
//  408 //		Load Bitmap Image to XY	from SPI
//  409 //=============================================================================
//  410 //

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function OsdLoadBmpXYFromSPI_8bit
        THUMB
//  411 void OsdLoadBmpXYFromSPI_8bit( struct _RLE_HEADER *p, DWORD spiaddr, WORD sx, WORD sy )
//  412 {        
OsdLoadBmpXYFromSPI_8bit:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  413 	//data BYTE xdata *osddata = (BYTE xdata *)0xc002;
//  414         BYTE sbits, mode;
//  415 	DWORD cnt = p->size,i;//,i=0;
        LDR      R9,[R4, #+12]
//  416 
//  417 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  418 	//--- Init RLE
//  419 	if( p->cp & 0x0f ) {
        LDRB     R0,[R4, #+3]
        MOVS     R1,#+15
        TST      R0,R1
        BEQ.N    ??OsdLoadBmpXYFromSPI_8bit_0
//  420 		if ( p->cp < 0x90 )	 {
        LDRB     R0,[R4, #+3]
        CMP      R0,#+144
        BCS.N    ??OsdLoadBmpXYFromSPI_8bit_1
//  421 			WriteTW88( OSD_RLEDATACNT, p->cp );
        LDRB     R1,[R4, #+3]
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadBmpXYFromSPI_8bit_2
//  422 		}
//  423 		else   {
//  424 			WriteTW88( OSD_RLEDATACNT, p->cp & 0x0F );		// 16bit mode
??OsdLoadBmpXYFromSPI_8bit_1:
        LDRB     R0,[R4, #+3]
        ANDS     R1,R0,#0xF
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
//  425 		}
//  426 		WriteTW88( OSD_RLECTRL, 0x02 );		// PktEn=0, RstRLE=1, Enable=0	==> Reset
??OsdLoadBmpXYFromSPI_8bit_2:
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  427 		WriteTW88( OSD_RLECTRL, 0x11 );		// PktEn=1, RstRLE=0, Enable=1	==> Enable
        MOVS     R1,#+17
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadBmpXYFromSPI_8bit_3
//  428 	}
//  429 	else WriteTW88( OSD_RLECTRL, 0x00 );	// PktEn=0, RstRLE=0, Enable=0	==> Bypass
??OsdLoadBmpXYFromSPI_8bit_0:
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  430 /*
//  431 	if( p->cp & 0x0f ) 
//  432 	{
//  433 		if ((p->cp&0x0f)!=0x00)
//  434 		{
//  435 			WriteTW88( OSD_RLECTRL, 0x02 );		// PktEn=0, RstRLE=1, Enable=0	==> Reset
//  436 			WriteTW88( OSD_RLECTRL, 0x11 );		// PktEn=1, RstRLE=0, Enable=1	==> Enable
//  437 			WriteTW88( OSD_RLEDATACNT, p->cp );
//  438 		}
//  439 		else   
//  440 		{
//  441 			WriteTW88( OSD_RLEDATACNT, 0 );		// 16bit mode
//  442 		}
//  443 	}
//  444 	else WriteTW88( OSD_RLECTRL, 0x00 );	// PktEn=0, RstRLE=0, Enable=0	==> Bypass
//  445 */
//  446 	//--- Source data bits/pixel
//  447 	switch( p->c & 0x0f ) {
??OsdLoadBmpXYFromSPI_8bit_3:
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xF
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??OsdLoadBmpXYFromSPI_8bit_4
        CMP      R0,#+2
        BEQ.N    ??OsdLoadBmpXYFromSPI_8bit_5
        CMP      R0,#+4
        BEQ.N    ??OsdLoadBmpXYFromSPI_8bit_6
        B.N      ??OsdLoadBmpXYFromSPI_8bit_7
//  448 		case 1: 	sbits = SOURCE1BIT;	break;
??OsdLoadBmpXYFromSPI_8bit_4:
        MOVS     R10,#+1
        B.N      ??OsdLoadBmpXYFromSPI_8bit_8
//  449 		case 2: 	sbits = SOURCE2BIT;	break;
??OsdLoadBmpXYFromSPI_8bit_5:
        MOVS     R10,#+2
        B.N      ??OsdLoadBmpXYFromSPI_8bit_8
//  450 		case 4: 	sbits = SOURCE4BIT;	break;
??OsdLoadBmpXYFromSPI_8bit_6:
        MOVS     R10,#+3
        B.N      ??OsdLoadBmpXYFromSPI_8bit_8
//  451 		default: 	sbits = SOURCE0;	break;
??OsdLoadBmpXYFromSPI_8bit_7:
        MOVS     R10,#+0
//  452 	}
//  453 
//  454 	//--- Write Mode
//  455 	mode = ReadTW88( OSD_MODE ) & 0x3C; 		// clear WriteMode, Bit expansion
??OsdLoadBmpXYFromSPI_8bit_8:
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x3C
//  456 	WriteTW88( OSD_MODE, mode | sbits | CPUWRITE );	  	// set CPU write mode
        ORRS     R1,R10,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  457 	//mode = ReadTW88( OSD_MODE ) & 0x38; 		// clear WriteMode, Bit expansion
//  458 	//OsdWriteMode( mode | sbits);
//  459 
//  460 	OsdBltDestXY(sx, sy+WIN1_BUFF);
        ADDW     R1,R7,#+500
        MOVS     R0,R6
          CFI FunCall OsdBltDestXY
        BL       OsdBltDestXY
//  461 	OsdBltSize(p->w, p->h);
        LDR      R1,[R4, #+8]
        LDR      R0,[R4, #+4]
          CFI FunCall OsdBltSize
        BL       OsdBltSize
//  462 
//  463 	OSDHardwareEnable();
          CFI FunCall OSDHardwareEnable
        BL       OSDHardwareEnable
//  464 	//--- Start Writing Data	
//  465 	OsdStart(1);
        MOVS     R0,#+1
          CFI FunCall OsdStart
        BL       OsdStart
//  466 
//  467 	//--- Using SPI-DMA
//  468 	SPI_ReadData2Reg( spiaddr, 0x700+2, cnt);//-0x40 );//OSD_PAGE+2, cnt );//test
        MOV      R2,R9
        MOVW     R1,#+1794
        MOVS     R0,R5
          CFI FunCall SPI_ReadData2Reg
        BL       SPI_ReadData2Reg
//  469 
//  470 	//--- End of Writing
//  471 	WriteTW88( 0xff, OSD_PAGE ); 			// ### Don't miss this !!!
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  472 	while( OsdCpuBusy() )
??OsdLoadBmpXYFromSPI_8bit_9:
          CFI FunCall OsdCpuBusy
        BL       OsdCpuBusy
        CMP      R0,#+0
        BEQ.N    ??OsdLoadBmpXYFromSPI_8bit_10
//  473 	{
//  474 		i++;
        ADDS     R8,R8,#+1
//  475 		if(i>1000) break;
        CMP      R8,#+1000
        BLS.N    ??OsdLoadBmpXYFromSPI_8bit_9
//  476 	}
//  477 	i = 0;		
??OsdLoadBmpXYFromSPI_8bit_10:
        MOVS     R8,#+0
//  478 	while( OsdOpBusy() )
??OsdLoadBmpXYFromSPI_8bit_11:
          CFI FunCall OsdOpBusy
        BL       OsdOpBusy
        CMP      R0,#+0
        BEQ.N    ??OsdLoadBmpXYFromSPI_8bit_12
//  479 	{
//  480 		i++;
        ADDS     R8,R8,#+1
//  481 		if(i>1000) break;
        CMP      R8,#+1000
        BLS.N    ??OsdLoadBmpXYFromSPI_8bit_11
//  482 	}
//  483 	OsdStart(0);
??OsdLoadBmpXYFromSPI_8bit_12:
        MOVS     R0,#+0
          CFI FunCall OsdStart
        BL       OsdStart
//  484 
//  485 	WriteTW88( OSD_RLECTRL, 0x00 );			// PktEn=0, RstRLE=0, Enable=0	==> Bypass
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  486 }
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock32
//  487 
//  488 //=============================================================================
//  489 //		Load Bitmap Image to XY	from SPI
//  490 //=============================================================================
//  491 //

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function OsdLoadBmpXYFromSPI
        THUMB
//  492 void OsdLoadBmpXYFromSPI( struct _RLE_HEADER *p, DWORD spiaddr, WORD sx, WORD sy )
//  493 {
OsdLoadBmpXYFromSPI:
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
        MOVS     R7,R3
//  494 	//data BYTE xdata *osddata = (BYTE xdata *)0xc002;
//  495 	BYTE sbits, mode;
//  496 	DWORD cnt = p->size,i;//,i=0;
        LDR      R8,[R4, #+12]
//  497 
//  498 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  499 	//--- Init RLE
//  500 /*	if( p->cp & 0x0f ) {
//  501 		if ( p->cp < 0x90 )	 {
//  502 			WriteTW88( OSD_RLEDATACNT, p->cp );
//  503 		}
//  504 		else   {
//  505 			WriteTW88( OSD_RLEDATACNT, p->cp & 0x0F );		// 16bit mode
//  506 		}
//  507 		WriteTW88( OSD_RLECTRL, 0x02 );		// PktEn=0, RstRLE=1, Enable=0	==> Reset
//  508 		WriteTW88( OSD_RLECTRL, 0x11 );		// PktEn=1, RstRLE=0, Enable=1	==> Enable
//  509 	}
//  510 	else WriteTW88( OSD_RLECTRL, 0x00 );	// PktEn=0, RstRLE=0, Enable=0	==> Bypass
//  511 */
//  512 	if( p->cp & 0x0f ) 
        LDRB     R0,[R4, #+3]
        MOVS     R1,#+15
        TST      R0,R1
        BEQ.N    ??OsdLoadBmpXYFromSPI_0
//  513 	{
//  514 		if ((p->cp&0x0f)!=0x00)
        LDRB     R0,[R4, #+3]
        MOVS     R1,#+15
        TST      R0,R1
        BEQ.N    ??OsdLoadBmpXYFromSPI_1
//  515 		{
//  516 			WriteTW88( OSD_RLECTRL, 0x02 );		// PktEn=0, RstRLE=1, Enable=0	==> Reset
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  517 			WriteTW88( OSD_RLECTRL, 0x11 );		// PktEn=1, RstRLE=0, Enable=1	==> Enable
        MOVS     R1,#+17
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  518 			WriteTW88( OSD_RLEDATACNT, p->cp& 0x0F );
        LDRB     R0,[R4, #+3]
        ANDS     R1,R0,#0xF
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadBmpXYFromSPI_2
//  519 		}
//  520 		else   
//  521 		{
//  522 			WriteTW88( OSD_RLEDATACNT, 0 );		// 16bit mode
??OsdLoadBmpXYFromSPI_1:
        MOVS     R1,#+0
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadBmpXYFromSPI_2
//  523 		}
//  524 	}
//  525 	else WriteTW88( OSD_RLECTRL, 0x00 );	// PktEn=0, RstRLE=0, Enable=0	==> Bypass
??OsdLoadBmpXYFromSPI_0:
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  526 
//  527 	//--- Source data bits/pixel
//  528 	switch( p->c & 0x0f ) {
??OsdLoadBmpXYFromSPI_2:
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xF
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??OsdLoadBmpXYFromSPI_3
        CMP      R0,#+2
        BEQ.N    ??OsdLoadBmpXYFromSPI_4
        CMP      R0,#+4
        BEQ.N    ??OsdLoadBmpXYFromSPI_5
        B.N      ??OsdLoadBmpXYFromSPI_6
//  529 		case 1: 	sbits = SOURCE1BIT;	break;
??OsdLoadBmpXYFromSPI_3:
        MOVS     R9,#+1
        B.N      ??OsdLoadBmpXYFromSPI_7
//  530 		case 2: 	sbits = SOURCE2BIT;	break;
??OsdLoadBmpXYFromSPI_4:
        MOVS     R9,#+2
        B.N      ??OsdLoadBmpXYFromSPI_7
//  531 		case 4: 	sbits = SOURCE4BIT;	break;
??OsdLoadBmpXYFromSPI_5:
        MOVS     R9,#+3
        B.N      ??OsdLoadBmpXYFromSPI_7
//  532 		default: 	sbits = SOURCE0;	break;
??OsdLoadBmpXYFromSPI_6:
        MOVS     R9,#+0
//  533 	}
//  534 
//  535 	//--- Write Mode
//  536 	//mode = ReadTW88( OSD_MODE ) & 0x3C; 		// clear WriteMode, Bit expansion
//  537 	//WriteTW88( OSD_MODE, mode | sbits | CPUWRITE );	  	// set CPU write mode
//  538 	mode = ReadTW88( OSD_MODE ) & 0x38; 		// clear WriteMode, Bit expansion
??OsdLoadBmpXYFromSPI_7:
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x38
//  539 	OsdWriteMode( mode | sbits);
        ORRS     R0,R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdWriteMode
        BL       OsdWriteMode
//  540 
//  541 	OsdBltDestXY(sx+WIN4_OFFSET, sy);//OsdBltDestXY(sx, sy);
        MOVS     R1,R7
        ADDW     R0,R6,#+1000
          CFI FunCall OsdBltDestXY
        BL       OsdBltDestXY
//  542 	OsdBltSize(p->w, p->h);
        LDR      R1,[R4, #+8]
        LDR      R0,[R4, #+4]
          CFI FunCall OsdBltSize
        BL       OsdBltSize
//  543 
//  544 	OSDHardwareEnable();
          CFI FunCall OSDHardwareEnable
        BL       OSDHardwareEnable
//  545 	//--- Start Writing Data	
//  546 	OsdStart(1);
        MOVS     R0,#+1
          CFI FunCall OsdStart
        BL       OsdStart
//  547 
//  548 	//--- Using SPI-DMA
//  549 	SPI_ReadData2Reg( spiaddr, 0x700+2, cnt);//-0x40 );//OSD_PAGE+2, cnt );//test
        MOV      R2,R8
        MOVW     R1,#+1794
        MOVS     R0,R5
          CFI FunCall SPI_ReadData2Reg
        BL       SPI_ReadData2Reg
//  550 
//  551 	//--- End of Writing
//  552 	WriteTW88( 0xff, OSD_PAGE ); 			// ### Don't miss this !!!
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  553 	/*while( OsdCpuBusy() )
//  554 	{
//  555 		i++;
//  556 		if(i>1000) break;
//  557 	}*/
//  558 	i = 0;		
        MOVS     R4,#+0
//  559 	while( OsdOpBusy() )
??OsdLoadBmpXYFromSPI_8:
          CFI FunCall OsdOpBusy
        BL       OsdOpBusy
        CMP      R0,#+0
        BEQ.N    ??OsdLoadBmpXYFromSPI_9
//  560 	{
//  561 		i++;
        ADDS     R4,R4,#+1
//  562 		if(i>1000) break;
        CMP      R4,#+1000
        BLS.N    ??OsdLoadBmpXYFromSPI_8
//  563 	}
//  564 
//  565 	OsdStart(0);
??OsdLoadBmpXYFromSPI_9:
        MOVS     R0,#+0
          CFI FunCall OsdStart
        BL       OsdStart
//  566 
//  567 	WriteTW88( OSD_RLECTRL, 0x00 );			// PktEn=0, RstRLE=0, Enable=0	==> Bypass
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  568 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock33
//  569 #if		1
//  570 
//  571 //=============================================================================
//  572 //		Load 8bit Bitmap Image to 16bit window XY with Transparent from SPI
//  573 //=============================================================================
//  574 //

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function OsdLoadTransBmpXYFromSPI
        THUMB
//  575 void OsdLoadTransBmpXYFromSPI( struct _RLE_HEADER *p, DWORD spiaddr, WORD sx, WORD sy )
//  576 {
OsdLoadTransBmpXYFromSPI:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  577 	//data BYTE xdata *osddata = (BYTE xdata *)0xc002;
//  578 	BYTE sbits, mode;
//  579 	DWORD cnt = p->size;
        LDR      R8,[R4, #+12]
//  580 
//  581 //	Printf("\nLoad 8bit Bitmap to XY from SPI [%06lx] to (%04x, %04x) with 16bit transparent", spiaddr, sx, sy );
//  582 //	Printf(" size[%ld] ", p->size );
//  583 
//  584 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  585 	//--- Init RLE
//  586 	if( p->cp & 0x0f ) {
        LDRB     R0,[R4, #+3]
        MOVS     R1,#+15
        TST      R0,R1
        BEQ.N    ??OsdLoadTransBmpXYFromSPI_0
//  587 		if ( p->cp < 0x90 )
        LDRB     R0,[R4, #+3]
        CMP      R0,#+144
        BCS.N    ??OsdLoadTransBmpXYFromSPI_1
//  588 			WriteTW88( OSD_RLEDATACNT, p->cp );
        LDRB     R1,[R4, #+3]
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadTransBmpXYFromSPI_2
//  589 		else   {
//  590 			WriteTW88( OSD_RLEDATACNT, p->cp & 0x0F );		// 16bit mode
??OsdLoadTransBmpXYFromSPI_1:
        LDRB     R0,[R4, #+3]
        ANDS     R1,R0,#0xF
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
//  591 		}
//  592 		WriteTW88( OSD_RLECTRL, 0x02 );		// PktEn=0, RstRLE=1, Enable=0	==> Reset
??OsdLoadTransBmpXYFromSPI_2:
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  593 		WriteTW88( OSD_RLECTRL, 0x11 );		// PktEn=1, RstRLE=0, Enable=1	==> Enable
        MOVS     R1,#+17
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadTransBmpXYFromSPI_3
//  594 	}
//  595 	else WriteTW88( OSD_RLECTRL, 0x00 );	// PktEn=0, RstRLE=0, Enable=0	==> Bypass
??OsdLoadTransBmpXYFromSPI_0:
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  596 
//  597 
//  598 	//--- Source data bits/pixel
//  599 	switch( p->c & 0x0f ) {
??OsdLoadTransBmpXYFromSPI_3:
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xF
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??OsdLoadTransBmpXYFromSPI_4
        CMP      R0,#+2
        BEQ.N    ??OsdLoadTransBmpXYFromSPI_5
        CMP      R0,#+4
        BEQ.N    ??OsdLoadTransBmpXYFromSPI_6
        B.N      ??OsdLoadTransBmpXYFromSPI_7
//  600 		case 1: 	sbits = SOURCE1BIT;	break;
??OsdLoadTransBmpXYFromSPI_4:
        MOVS     R9,#+1
        B.N      ??OsdLoadTransBmpXYFromSPI_8
//  601 		case 2: 	sbits = SOURCE2BIT;	break;
??OsdLoadTransBmpXYFromSPI_5:
        MOVS     R9,#+2
        B.N      ??OsdLoadTransBmpXYFromSPI_8
//  602 		case 4: 	sbits = SOURCE4BIT;	break;
??OsdLoadTransBmpXYFromSPI_6:
        MOVS     R9,#+3
        B.N      ??OsdLoadTransBmpXYFromSPI_8
//  603 		default: 	sbits = SOURCE0;	break;
??OsdLoadTransBmpXYFromSPI_7:
        MOVS     R9,#+0
//  604 	}
//  605 	//sbits = 3;
//  606 
//  607 	//--- Write Mode
//  608 	mode = ReadTW88( OSD_MODE ) & SOURCE_;
??OsdLoadTransBmpXYFromSPI_8:
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R10,R0,#0xFC
//  609 	mode = ReadTW88( OSD_MODE ) & 0x3C; 		// clear WriteMode, Bit expansion
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x3C
        MOV      R10,R0
//  610 	WriteTW88( OSD_MODE, mode | sbits | CPUWRITE );	  	// set CPU write mode
        ORRS     R1,R9,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  611 	//OsdWriteMode( mode | sbits );
//  612 	//OsdWriteMode( 0x03 );
//  613 
//  614 	OsdBltDestXY(sx, sy);
        MOVS     R1,R7
        MOVS     R0,R6
          CFI FunCall OsdBltDestXY
        BL       OsdBltDestXY
//  615 	OsdBltSize(p->w, p->h);
        LDR      R1,[R4, #+8]
        LDR      R0,[R4, #+4]
          CFI FunCall OsdBltSize
        BL       OsdBltSize
//  616 
//  617 	//--- Start Writing Data	
//  618 	OsdStart(1);
        MOVS     R0,#+1
          CFI FunCall OsdStart
        BL       OsdStart
//  619 
//  620 	//--- Using SPI-DMA
//  621 	SPI_ReadData2Reg( spiaddr, OSD_PAGE+2, cnt );
        MOV      R2,R8
        MOVS     R1,#+9
        MOVS     R0,R5
          CFI FunCall SPI_ReadData2Reg
        BL       SPI_ReadData2Reg
//  622 
//  623 	//--- End of Writing
//  624 	WriteTW88( 0xff, OSD_PAGE ); 			// ### Don't miss this !!!
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  625 	//while( OsdCpuBusy() );// Printf("@");
//  626 	//while( OsdOpBusy() );// Printf("&");
//  627 	OsdStart(0);
        MOVS     R0,#+0
          CFI FunCall OsdStart
        BL       OsdStart
//  628 
//  629 	WriteTW88( OSD_RLECTRL, 0x00 );			// PktEn=0, RstRLE=0, Enable=0	==> Bypass
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  630 }
        POP      {R4-R10,PC}      ;; return
          CFI EndBlock cfiBlock34
//  631 //=============================================================================
//  632 //		Load Bitmap Image to Linear address	from SPI
//  633 //=============================================================================
//  634 //	Call OsdWriteMode() before this function is called !!!
//  635 //
//  636 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function OsdLoadBmpLinearFromSPI
        THUMB
//  637 void OsdLoadBmpLinearFromSPI( struct _RLE_HEADER *p, DWORD spiaddr, DWORD ddraddr)
//  638 {
OsdLoadBmpLinearFromSPI:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R4,R0
        MOV      R11,R1
        MOVS     R5,R2
//  639 	BYTE sbits, mode;
//  640 	
//  641 	WORD w, h, w64;
//  642 	DWORD addr_temp;
//  643 	DWORD cnt = p->size;
        LDR      R6,[R4, #+12]
//  644 	DWORD count;
//  645 
//  646 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  647 	//--- Recalc W, H
//  648 	addr_temp = OsdBltGetDestMemoryStart();
          CFI FunCall OsdBltGetDestMemoryStart
        BL       OsdBltGetDestMemoryStart
        MOVS     R7,R0
//  649 	w64 = (WORD)OsdBltGetDestMemoryW64();
          CFI FunCall OsdBltGetDestMemoryW64
        BL       OsdBltGetDestMemoryW64
        MOV      R8,R0
//  650 
//  651 	//Printf(" \nDestMemoryStart");  	PutDW(addr_temp);
//  652 	//Printf(" \nW64 ");			  	PutW(w64);
//  653 
//  654 
//  655 	w = 800;//w64 * 64;
        MOV      R9,#+800
//  656 	h = 480;//( (DWORD)p->w*p->h + w-1 ) / w;
        MOV      R10,#+480
//  657 
//  658 	//--- Init RLE
//  659 	if( p->cp & 0x0f ) {
        LDRB     R0,[R4, #+3]
        MOVS     R1,#+15
        TST      R0,R1
        BEQ.N    ??OsdLoadBmpLinearFromSPI_0
//  660 		if ( p->cp < 0x90 )
        LDRB     R0,[R4, #+3]
        CMP      R0,#+144
        BCS.N    ??OsdLoadBmpLinearFromSPI_1
//  661 			WriteTW88( OSD_RLEDATACNT, p->cp );
        LDRB     R1,[R4, #+3]
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadBmpLinearFromSPI_2
//  662 		else   {
//  663 			WriteTW88( OSD_RLEDATACNT, p->cp & 0x0F );		// 16bit mode
??OsdLoadBmpLinearFromSPI_1:
        LDRB     R0,[R4, #+3]
        ANDS     R1,R0,#0xF
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
//  664 		}
//  665 		WriteTW88( OSD_RLECTRL, 0x02 );		// PktEn=0, RstRLE=1, Enable=0	==> Reset
??OsdLoadBmpLinearFromSPI_2:
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  666 		WriteTW88( OSD_RLECTRL, 0x11 );		// PktEn=1, RstRLE=0, Enable=1	==> Enable
        MOVS     R1,#+17
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadBmpLinearFromSPI_3
//  667 	}
//  668 	else WriteTW88( OSD_RLECTRL, 0x00 );	// PktEn=0, RstRLE=0, Enable=0	==> Bypass
??OsdLoadBmpLinearFromSPI_0:
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  669 
//  670 	//--- Source data bits/pixel
//  671 	switch( p->c & 0x0f ) {
??OsdLoadBmpLinearFromSPI_3:
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xF
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??OsdLoadBmpLinearFromSPI_4
        CMP      R0,#+2
        BEQ.N    ??OsdLoadBmpLinearFromSPI_5
        CMP      R0,#+4
        BEQ.N    ??OsdLoadBmpLinearFromSPI_6
        B.N      ??OsdLoadBmpLinearFromSPI_7
//  672 		case 1: 	sbits = SOURCE1BIT;	break;
??OsdLoadBmpLinearFromSPI_4:
        MOVS     R4,#+1
        B.N      ??OsdLoadBmpLinearFromSPI_8
//  673 		case 2: 	sbits = SOURCE2BIT;	break;
??OsdLoadBmpLinearFromSPI_5:
        MOVS     R4,#+2
        B.N      ??OsdLoadBmpLinearFromSPI_8
//  674 		case 4: 	sbits = SOURCE4BIT;	break;
??OsdLoadBmpLinearFromSPI_6:
        MOVS     R4,#+3
        B.N      ??OsdLoadBmpLinearFromSPI_8
//  675 		default: 	sbits = SOURCE0;	break;
??OsdLoadBmpLinearFromSPI_7:
        MOVS     R4,#+0
//  676 	}
//  677 
//  678 	//--- Write Mode
//  679 	//mode = ReadTW88( OSD_MODE ) & SOURCE_;
//  680 	//mode = ReadTW88( OSD_MODE ) & 0x3C; 		// clear WriteMode, Bit expansion
//  681 	//WriteTW88( OSD_MODE, mode | sbits | CPUWRITE );	  	// set CPU write mode
//  682 	//OsdWriteMode( mode | sbits );
//  683 	mode=ReadTW88(OSD_MODE)&0x38;
??OsdLoadBmpLinearFromSPI_8:
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x38
//  684 	WriteTW88( OSD_MODE, mode | sbits | CPUWRITE );	  	// set CPU write mode
        ORRS     R1,R4,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  685 	//WriteTW88( OSD_MODE,mode|0x00|0x00|sbits); //MCU WRITE |1 byte per pixel |  Bit expansion
//  686 
//  687 	OsdBltDestMemoryStart(ddraddr);
        MOVS     R0,R5
          CFI FunCall OsdBltDestMemoryStart
        BL       OsdBltDestMemoryStart
//  688 	OsdBltDestMemoryW64(w64);
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdBltDestMemoryW64
        BL       OsdBltDestMemoryW64
//  689 	
//  690 	OsdBltDestXY(0, 0);
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall OsdBltDestXY
        BL       OsdBltDestXY
//  691 	OsdBltSize(w, h);
        MOV      R1,R10
        MOV      R0,R9
          CFI FunCall OsdBltSize
        BL       OsdBltSize
//  692 //	Printf("\nFinished OsdBltSize()");
//  693 	//--- Start Write Data	
//  694 /*
//  695 	count=0;
//  696 	WriteTW88(0xf0, 0x20);			// clear to 0
//  697 	while( (ReadTW88(0xf0) & 0x20)==0 )
//  698 	{
//  699 		count++;
//  700 		if(count > 5000) break;
//  701 	}	*/
//  702 	
//  703 	OsdStart(1);
        MOVS     R0,#+1
          CFI FunCall OsdStart
        BL       OsdStart
//  704 
//  705 	//--- Using SPI-DMA
//  706 //	Printf("\nB4 SPI_ReadData2Reg(): count:%ld", cnt);
//  707 	SPI_ReadData2Reg( spiaddr, 0x700+2, cnt );
        MOVS     R2,R6
        MOVW     R1,#+1794
        MOV      R0,R11
          CFI FunCall SPI_ReadData2Reg
        BL       SPI_ReadData2Reg
//  708 //	Printf("\nSPI_ReadData2Rege()");
//  709 
//  710 	//--- End of Writing
//  711 	WriteTW88( 0xff, OSD_PAGE ); 			// ### Don't miss this !!!
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  712 	count=0;
        MOVS     R4,#+0
//  713 	while( OsdCpuBusy() )
??OsdLoadBmpLinearFromSPI_9:
          CFI FunCall OsdCpuBusy
        BL       OsdCpuBusy
        CMP      R0,#+0
        BEQ.N    ??OsdLoadBmpLinearFromSPI_10
//  714 	{
//  715 		count++;
        ADDS     R4,R4,#+1
//  716 		if(count>5000) break;
        MOVW     R0,#+5001
        CMP      R4,R0
        BCC.N    ??OsdLoadBmpLinearFromSPI_9
//  717 	}
//  718 	count= 0;			
??OsdLoadBmpLinearFromSPI_10:
        MOVS     R4,#+0
//  719 	while( OsdOpBusy() )
??OsdLoadBmpLinearFromSPI_11:
          CFI FunCall OsdOpBusy
        BL       OsdOpBusy
        CMP      R0,#+0
        BEQ.N    ??OsdLoadBmpLinearFromSPI_12
//  720 	{
//  721 		count++;
        ADDS     R4,R4,#+1
//  722 		if(count>5000) break;
        MOVW     R0,#+5001
        CMP      R4,R0
        BCC.N    ??OsdLoadBmpLinearFromSPI_11
//  723 	}		
//  724 	OsdStart(0);
??OsdLoadBmpLinearFromSPI_12:
        MOVS     R0,#+0
          CFI FunCall OsdStart
        BL       OsdStart
//  725 
//  726 	WriteTW88( OSD_RLECTRL, 0x00 );			// PktEn=0, RstRLE=0, Enable=0	==> Bypass
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  727 
//  728 	//--- Restore Dest Memory
//  729 //	Printf("\nB4 OsdBltDestMemoryStart()");
//  730 	OsdBltDestMemoryStart(addr_temp);
        MOVS     R0,R7
          CFI FunCall OsdBltDestMemoryStart
        BL       OsdBltDestMemoryStart
//  731 //	Printf("\nB4 OsdBltDestMemoryW64()");
//  732 	OsdBltDestMemoryW64(w64);
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdBltDestMemoryW64
        BL       OsdBltDestMemoryW64
//  733 //	Printf("\nFinished OsdLoadBmpLinearFromSPI()");
//  734 
//  735 }
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock35
//  736 
//  737 //=============================================================================
//  738 //		Load LUT
//  739 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function OsdLoadLUT
        THUMB
//  740 void OsdLoadLUT( BYTE winno, BYTE *ptr)
//  741 {
OsdLoadLUT:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  742 	WORD i;
//  743 	//BYTE r,g,b,val;
//  744 
//  745 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  746 	WriteTW88( OSD_LUT_WINNO, winno<<6 );
        LSLS     R1,R4,#+6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+122
          CFI FunCall WriteTW88
        BL       WriteTW88
//  747 
//  748 	for(i=0; i<256; i++) {
        MOVS     R4,#+0
        B.N      ??OsdLoadLUT_0
//  749 		WriteTW88( OSD_LUT_INDEX, i );
??OsdLoadLUT_1:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+123
          CFI FunCall WriteTW88
        BL       WriteTW88
//  750 		WriteTW88( OSD_LUT_R, *ptr++ );
        LDRB     R1,[R5, #+0]
        MOVS     R0,#+125
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  751 		WriteTW88( OSD_LUT_G, *ptr++ );
        LDRB     R1,[R5, #+0]
        MOVS     R0,#+126
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  752 		WriteTW88( OSD_LUT_B, *ptr++ );
        LDRB     R1,[R5, #+0]
        MOVS     R0,#+127
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  753 		WriteTW88( OSD_LUT_ATTR, *ptr++ );
        LDRB     R1,[R5, #+0]
        MOVS     R0,#+124
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R5,R5,#+1
//  754 /*
//  755 		val=0;
//  756 		b=*ptr++;
//  757 		g=*ptr++;
//  758 		r=*ptr++;
//  759 		if(b < 0x30 && b == r && g > 0xD0)
//  760 			val = 0x7F;
//  761 		WriteTW88( OSD_LUT_INDEX, i );
//  762 		WriteTW88( OSD_LUT_B, b);
//  763 		WriteTW88( OSD_LUT_G, g );
//  764 		WriteTW88( OSD_LUT_R, r );
//  765 		WriteTW88( OSD_LUT_ATTR, val );
//  766 		ptr++;	*/
//  767 
//  768 	}
        ADDS     R4,R4,#+1
??OsdLoadLUT_0:
        CMP      R4,#+255
        BLS.N    ??OsdLoadLUT_1
//  769 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock36
//  770 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function LoadLUT_8Bit
        THUMB
//  771 void LoadLUT_8Bit(BYTE WinNO,BYTE* ptr)
//  772 {
LoadLUT_8Bit:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  773 	U16 i,count=256;
        MOV      R6,#+256
//  774 	struct _PALETTEENTRY *lut;
//  775 	lut = (struct _PALETTEENTRY*)ptr;
//  776 
//  777 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  778 	WriteTW88( OSD_LUT_CONTROL, WinNO<<6 );
        LSLS     R1,R4,#+6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+122
          CFI FunCall WriteTW88
        BL       WriteTW88
//  779 
//  780 	for(i=0; i<count; i++) {
        MOVS     R4,#+0
        B.N      ??LoadLUT_8Bit_0
//  781 		WriteTW88( OSD_LUT_ADDRINDEX, i );
??LoadLUT_8Bit_1:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+123
          CFI FunCall WriteTW88
        BL       WriteTW88
//  782 		WriteTW88( OSD_LUT_DATAB, lut ->data0);
        LDRB     R1,[R5, #+0]
        MOVS     R0,#+127
          CFI FunCall WriteTW88
        BL       WriteTW88
//  783 		WriteTW88( OSD_LUT_DATAG, lut ->data1);
        LDRB     R1,[R5, #+1]
        MOVS     R0,#+126
          CFI FunCall WriteTW88
        BL       WriteTW88
//  784 		WriteTW88( OSD_LUT_DATAR, lut ->data2);
        LDRB     R1,[R5, #+2]
        MOVS     R0,#+125
          CFI FunCall WriteTW88
        BL       WriteTW88
//  785 		WriteTW88( OSD_LUT_DATAATTR, lut->data3);
        LDRB     R1,[R5, #+3]
        MOVS     R0,#+124
          CFI FunCall WriteTW88
        BL       WriteTW88
//  786 		lut++;
        ADDS     R5,R5,#+4
//  787 	}
        ADDS     R4,R4,#+1
??LoadLUT_8Bit_0:
        CMP      R4,R6
        BCC.N    ??LoadLUT_8Bit_1
//  788 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock37
//  789 #endif
//  790 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function OsdLoadFontLut
        THUMB
//  791 void OsdLoadFontLut( BYTE winno)
//  792 {
OsdLoadFontLut:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  793 	WORD i;
//  794 
//  795 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  796 	WriteTW88( OSD_LUT_WINNO, winno<<6 );
        LSLS     R1,R4,#+6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+122
          CFI FunCall WriteTW88
        BL       WriteTW88
//  797 
//  798 	WriteTW88( OSD_LUT_INDEX, 0 );
        MOVS     R1,#+0
        MOVS     R0,#+123
          CFI FunCall WriteTW88
        BL       WriteTW88
//  799 	WriteTW88( OSD_LUT_R, 0 );
        MOVS     R1,#+0
        MOVS     R0,#+125
          CFI FunCall WriteTW88
        BL       WriteTW88
//  800 	WriteTW88( OSD_LUT_G, 0 );
        MOVS     R1,#+0
        MOVS     R0,#+126
          CFI FunCall WriteTW88
        BL       WriteTW88
//  801 	WriteTW88( OSD_LUT_B, 0 );
        MOVS     R1,#+0
        MOVS     R0,#+127
          CFI FunCall WriteTW88
        BL       WriteTW88
//  802 	WriteTW88( OSD_LUT_ATTR, 0 );
        MOVS     R1,#+0
        MOVS     R0,#+124
          CFI FunCall WriteTW88
        BL       WriteTW88
//  803 
//  804 	for(i=1; i<256; i++) {
        MOVS     R4,#+1
        B.N      ??OsdLoadFontLut_0
//  805 		WriteTW88( OSD_LUT_INDEX, i );
??OsdLoadFontLut_1:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+123
          CFI FunCall WriteTW88
        BL       WriteTW88
//  806 		WriteTW88( OSD_LUT_R, 0xFF );
        MOVS     R1,#+255
        MOVS     R0,#+125
          CFI FunCall WriteTW88
        BL       WriteTW88
//  807 		WriteTW88( OSD_LUT_G, 0xFF );
        MOVS     R1,#+255
        MOVS     R0,#+126
          CFI FunCall WriteTW88
        BL       WriteTW88
//  808 		WriteTW88( OSD_LUT_B, 0xFF );
        MOVS     R1,#+255
        MOVS     R0,#+127
          CFI FunCall WriteTW88
        BL       WriteTW88
//  809 		WriteTW88( OSD_LUT_ATTR, 0 );
        MOVS     R1,#+0
        MOVS     R0,#+124
          CFI FunCall WriteTW88
        BL       WriteTW88
//  810 	}
        ADDS     R4,R4,#+1
??OsdLoadFontLut_0:
        CMP      R4,#+255
        BLS.N    ??OsdLoadFontLut_1
//  811 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock38
//  812 
//  813 //=============================================================================
//  814 //		Block Fill / Block TransferXY / Block Transfer Linear
//  815 //=============================================================================
//  816 //	Call OsdWriteMode() before this function is called !!!
//  817 //

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function OsdBlockFill
        THUMB
//  818 void OsdBlockFill(WORD dx, WORD dy, WORD w, WORD h, WORD color)
//  819 {
OsdBlockFill:
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
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
//  820 	BYTE	mode;
//  821 	DWORD i = 0;//,j = 0;
        MOVS     R9,#+0
//  822 
//  823 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  824 
//  825 	OsdBltDestXY(dx, dy);
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall OsdBltDestXY
        BL       OsdBltDestXY
//  826 	OsdBltSize(w, h);
        MOVS     R1,R7
        MOVS     R0,R6
          CFI FunCall OsdBltSize
        BL       OsdBltSize
//  827 	OsdBltColor(color);
        MOV      R0,R8
          CFI FunCall OsdBltColor
        BL       OsdBltColor
//  828 	
//  829 	//--- Write Mode
//  830 	//OsdWriteMode( BLOCKFILL | BLT_NO | CONV_DIS | wbits | SOURCE0 );
//  831 	mode = ReadTW88( OSD_MODE ) & 0x3F; 		// clear WriteMode
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x3F
//  832 	WriteTW88( OSD_MODE, mode | BLOCKFILL );	  	// set CPU write mode
        ORRS     R1,R0,#0x80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  833 
//  834 	WriteTW88(0xf0, 0x20);			// clear to 0
        MOVS     R1,#+32
        MOVS     R0,#+240
          CFI FunCall WriteTW88
        BL       WriteTW88
//  835 	/*while( (ReadTW88(0xf0) & 0x20)==0 )
//  836 	{//RGB没有信号时会特别慢
//  837 		j++;
//  838 		if(j == 2000) break;
//  839 	}	*/
//  840 
//  841 	OsdStart(1);
        MOVS     R0,#+1
          CFI FunCall OsdStart
        BL       OsdStart
//  842 	i=0;
        MOVS     R0,#+0
        MOV      R9,R0
//  843 	while( OsdOpBusy() )
??OsdBlockFill_0:
          CFI FunCall OsdOpBusy
        BL       OsdOpBusy
        CMP      R0,#+0
        BEQ.N    ??OsdBlockFill_1
//  844 	{
//  845 		i++;
        ADDS     R9,R9,#+1
//  846 		if(i>2000) break;	
        CMP      R9,#+2000
        BLS.N    ??OsdBlockFill_0
//  847 	}
//  848 	OsdStart(0);
??OsdBlockFill_1:
        MOVS     R0,#+0
          CFI FunCall OsdStart
        BL       OsdStart
//  849 	
//  850 	//Printf("\nBlock Fill Done ");
//  851 		
//  852 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock39

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function InitStartAdr
        THUMB
//  853 void	InitStartAdr(BYTE winno)
//  854 {
InitStartAdr:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  855 	DWORD start;
//  856 	switch(winno){
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ.N    ??InitStartAdr_0
        CMP      R0,#+1
        BEQ.N    ??InitStartAdr_1
        CMP      R0,#+4
        BEQ.N    ??InitStartAdr_2
        B.N      ??InitStartAdr_3
//  857 	 	case 0:		start = WIN0_DDR_START;		break;
??InitStartAdr_0:
        MOVS     R5,#+4718592
        B.N      ??InitStartAdr_3
//  858 	 	case 1:		start = WIN1_DDR_START;		break;
??InitStartAdr_1:
        MOVS     R5,#+6291456
        B.N      ??InitStartAdr_3
//  859 	 	case 4:		start = WIN4_DDR_START;		break;
??InitStartAdr_2:
        MOVS     R5,#+2097152
//  860 	}
//  861 	OsdBltSourceMemoryStart( start );					//单元
??InitStartAdr_3:
        MOVS     R0,R5
          CFI FunCall OsdBltSourceMemoryStart
        BL       OsdBltSourceMemoryStart
//  862 	OsdBltDestMemoryStart( start );
        MOVS     R0,R5
          CFI FunCall OsdBltDestMemoryStart
        BL       OsdBltDestMemoryStart
//  863 
//  864 	//-----Define BitBlit Window
//  865 	if(winno == 4){
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??InitStartAdr_4
//  866 		OsdBltSourceMemoryW64( g_Hx64_16Bit );
        LDR.W    R0,??DataTable13
        LDRB     R0,[R0, #+0]
          CFI FunCall OsdBltSourceMemoryW64
        BL       OsdBltSourceMemoryW64
//  867 		OsdBltDestMemoryW64( g_Hx64_16Bit );
        LDR.W    R0,??DataTable13
        LDRB     R0,[R0, #+0]
          CFI FunCall OsdBltDestMemoryW64
        BL       OsdBltDestMemoryW64
        B.N      ??InitStartAdr_5
//  868 	}else{
//  869 		OsdBltSourceMemoryW64( g_Hx64_8Bit );
??InitStartAdr_4:
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+0]
          CFI FunCall OsdBltSourceMemoryW64
        BL       OsdBltSourceMemoryW64
//  870 		OsdBltDestMemoryW64( g_Hx64_8Bit );
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+0]
          CFI FunCall OsdBltDestMemoryW64
        BL       OsdBltDestMemoryW64
//  871 	}
//  872 }
??InitStartAdr_5:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock40

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function OsdBlockTransfer
        THUMB
//  873 void OsdBlockTransfer(BYTE win,WORD sx, WORD sy, WORD dx, WORD dy, WORD w, WORD h)
//  874 {
OsdBlockTransfer:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR      R7,[SP, #+32]
        LDR      R8,[SP, #+36]
        LDR      R9,[SP, #+40]
//  875 	BYTE	mode;
//  876 	DWORD i;	
//  877 	switch(win)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??OsdBlockTransfer_0
        CMP      R0,#+1
        BEQ.N    ??OsdBlockTransfer_1
        CMP      R0,#+4
        BEQ.N    ??OsdBlockTransfer_2
        B.N      ??OsdBlockTransfer_3
//  878 		{
//  879 	 	case 0:		
//  880 			InitStartAdr(0);		
??OsdBlockTransfer_0:
        MOVS     R0,#+0
          CFI FunCall InitStartAdr
        BL       InitStartAdr
//  881 			//WriteTW88( 0xff, OSD_PAGE );			
//  882 			//OsdWriteMode( CPUWRITE | BLT_SELECTIVE | CONV_DIS | PIXEL8 );
//  883 			//OsdNoWriteColor( 0, 2 );			// set black as No Write color			
//  884 			break;
        B.N      ??OsdBlockTransfer_3
//  885 //________________________***___________________________________________//			
//  886 	 	case 1:		
//  887 			InitStartAdr(1);		
??OsdBlockTransfer_1:
        MOVS     R0,#+1
          CFI FunCall InitStartAdr
        BL       InitStartAdr
//  888 			WriteTW88( 0xff, OSD_PAGE );			
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  889 			OsdWriteMode( CPUWRITE | BLT_SELECTIVE | CONV_DIS | PIXEL8 );
        MOVS     R0,#+4
          CFI FunCall OsdWriteMode
        BL       OsdWriteMode
//  890 			OsdNoWriteColor( 0, 2 );			// set black as No Write color			
        MOVS     R1,#+2
        MOVS     R0,#+0
          CFI FunCall OsdNoWriteColor
        BL       OsdNoWriteColor
//  891 			break;	 	
        B.N      ??OsdBlockTransfer_3
//  892 	 	case 4:
//  893 			InitStartAdr(4);	
??OsdBlockTransfer_2:
        MOVS     R0,#+4
          CFI FunCall InitStartAdr
        BL       InitStartAdr
//  894 			break;
//  895 		}	
//  896 	WriteTW88( 0xff, OSD_PAGE );
??OsdBlockTransfer_3:
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  897 
//  898 	//sx=(sx/8)*8;//test
//  899 	OsdBltSourceXY(sx, sy);
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall OsdBltSourceXY
        BL       OsdBltSourceXY
//  900 	OsdBltDestXY(dx, dy);
        MOVS     R1,R7
        MOVS     R0,R6
          CFI FunCall OsdBltDestXY
        BL       OsdBltDestXY
//  901 	OsdBltSize(w, h);
        MOV      R1,R9
        MOV      R0,R8
          CFI FunCall OsdBltSize
        BL       OsdBltSize
//  902 	
//  903 	//--- Write Mode
//  904 	//OsdWriteMode( BLOCKTRANS | BLT_NO | CONV_DIS | wbits | SOURCE0 );
//  905 	mode = ReadTW88( OSD_MODE ) & 0x3F; 		// clear WriteMode
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x3F
//  906 	WriteTW88( OSD_MODE, mode | BLOCKTRANS );	  	// set CPU write mode
        ORRS     R1,R0,#0x40
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  907 
//  908 	OsdStart(1);
        MOVS     R0,#+1
          CFI FunCall OsdStart
        BL       OsdStart
//  909 	i=0;
        MOVS     R4,#+0
//  910 	while( OsdOpBusy() )
??OsdBlockTransfer_4:
          CFI FunCall OsdOpBusy
        BL       OsdOpBusy
        CMP      R0,#+0
        BEQ.N    ??OsdBlockTransfer_5
//  911 	{
//  912 		i++;
        ADDS     R4,R4,#+1
//  913 		if(i>2000) break;	
        CMP      R4,#+2000
        BLS.N    ??OsdBlockTransfer_4
//  914 	}       
//  915 	OsdStart(0);	
??OsdBlockTransfer_5:
        MOVS     R0,#+0
          CFI FunCall OsdStart
        BL       OsdStart
//  916 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock41
//  917 #if		1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function OsdBlockTransferLinear
        THUMB
//  918 void OsdBlockTransferLinear( DWORD addr, WORD dx, WORD dy, WORD w, WORD h)
//  919 {
OsdBlockTransferLinear:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
        LDR      R7,[SP, #+24]
//  920 	DWORD addr_temp,i;
//  921 	BYTE	mode;
//  922 
//  923 	addr_temp = WIN4_DDR_START;	//OsdBltGetSourceMemoryStart();
        MOVS     R8,#+2097152
//  924 
//  925 	OsdBltSourceMemoryStart(addr);
          CFI FunCall OsdBltSourceMemoryStart
        BL       OsdBltSourceMemoryStart
//  926 	OsdBltSourceXY(0, 0);
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall OsdBltSourceXY
        BL       OsdBltSourceXY
//  927 
//  928 	OsdBltDestXY(dx, dy);
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall OsdBltDestXY
        BL       OsdBltDestXY
//  929 	OsdBltSize(w, h);
        MOVS     R1,R7
        MOVS     R0,R6
          CFI FunCall OsdBltSize
        BL       OsdBltSize
//  930 	
//  931 	//--- Write Mode
//  932 	//OsdWriteMode( BLOCKTRANSL | BLT_NO | CONV_DIS | wbits | SOURCE0 );
//  933 	mode = ReadTW88( OSD_MODE ) & 0x3F; 		// clear WriteMode
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x3F
//  934 	WriteTW88( OSD_MODE, mode | BLOCKTRANSL );	  	// set CPU write mode
        ORRS     R1,R0,#0xC0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  935 
//  936 	OsdStart(1);
        MOVS     R0,#+1
          CFI FunCall OsdStart
        BL       OsdStart
//  937 	i=0;
        MOVS     R4,#+0
//  938 	while( OsdOpBusy() )
??OsdBlockTransferLinear_0:
          CFI FunCall OsdOpBusy
        BL       OsdOpBusy
        CMP      R0,#+0
        BEQ.N    ??OsdBlockTransferLinear_1
//  939 	{
//  940 		i++;
        ADDS     R4,R4,#+1
//  941 		if(i>2000) break;	
        CMP      R4,#+2000
        BLS.N    ??OsdBlockTransferLinear_0
//  942 	}       	OsdStart(0);	
??OsdBlockTransferLinear_1:
        MOVS     R0,#+0
          CFI FunCall OsdStart
        BL       OsdStart
//  943 
//  944 	OsdBltSourceMemoryStart(addr_temp);
        MOV      R0,R8
          CFI FunCall OsdBltSourceMemoryStart
        BL       OsdBltSourceMemoryStart
//  945 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock42
//  946 
//  947 
//  948 
//  949 //=============================================================================
//  950 //		set special expansion for block transfer
//  951 //		mode 0: disable
//  952 //			 2: rgb565, 4: rgb4444, 6:rgb1555
//  953 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function OsdSpecialExpansion
        THUMB
//  954 void OsdSpecialExpansion( BYTE mode )
//  955 {
OsdSpecialExpansion:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  956 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  957 	if ( mode ) {
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??OsdSpecialExpansion_0
//  958 		mode += 0x50;
        ADDS     R4,R4,#+80
        B.N      ??OsdSpecialExpansion_1
//  959 	}
//  960 	else mode = 0x40;
??OsdSpecialExpansion_0:
        MOVS     R4,#+64
//  961 	WriteTW88( OSD_SPECIAL, mode );		// 0x703
??OsdSpecialExpansion_1:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  962 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock43
//  963 
//  964 //=============================================================================
//  965 //		Load 8bit to 16bit color extensionwith transparent
//  966 //=============================================================================
//  967 //void Osd16bitTransparent( BYTE wbits )
//  968 //{
//  969 //	wbits = 0;
//  970 /*
//  971 	OsdLoadFontTransparent( wbits );
//  972 
//  973 	WriteTW88( 0xff, OSD_PAGE );
//  974 	OsdBltSourceMemoryStart( OSDTP8_DDR_START );				// set source memory
//  975 
//  976 	WriteTW88( 0xff, OSD_PAGE );
//  977 //	WriteTW88( 0x0E, 0x00 ); WriteTW88( 0x0F, 0x1F ); // set Block Fill Color : BLUE
//  978 //	WriteTW88( 0x0E, 0x42 ); WriteTW88( 0x0F, 0x10 ); // set Block Fill Color : grey
//  979 	WriteTW88( 0x0E, 0x7f ); WriteTW88( 0x0F, 0xff ); // set Block Fill Color : WHTIE
//  980 	WriteTW88( 0x20, 0x78 ); WriteTW88( 0x21, 0x00 ); // set bit expansion table 0 to RED
//  981 //	WriteTW88( 0x20, 0xc1 ); WriteTW88( 0x21, 0xc0 ); // set bit expansion table 0 to grey
//  982 
//  983 	WriteTW88( 0xff, OSD_PAGE );
//  984 	WriteTW88( 0xc0, 0x03 ); // set Win4 format to RGB565
//  985 	
//  986 	// set 16bit pixel
//  987 	// set bit expansion none
//  988 	// clear special Expansion
//  989 	// format to RGB565
//  990 	// Write Mode to Blcok Fill
//  991 	WriteTW88( OSD_MODE, 0xb0 );
//  992 	//WriteTW88( OSD_SPECIAL, 0x42 );
//  993 	WriteTW88( OSD_SPECIAL, 0x46 );
//  994 	OsdStart(1); // start 
//  995 	WriteTW88( 0xff, OSD_PAGE ); 			// ### Don't miss this !!!
//  996 	while( OsdCpuBusy() ) Printf("@");
//  997 	while( OsdOpBusy() ) Printf("&");
//  998 	OsdStart(0);
//  999 
// 1000 	WriteTW88(0x75, 0x80);	
// 1001 	WriteTW88( 0xff, OSD_PAGE );
// 1002 	// set 16bit pixel
// 1003 	// set bit expansion 4,8
// 1004 	// set special Expansion
// 1005 	// format to RGB565
// 1006 	// Write Mode to Blcok Transfer
// 1007 	WriteTW88( 0x00, 0xf3 );
// 1008 	//WriteTW88( 0x03, 0x52 );
// 1009 	WriteTW88( 0x03, 0x56 );
// 1010 	OsdStart(1); // start 
// 1011 	WriteTW88( 0xff, OSD_PAGE ); 			// ### Don't miss this !!!
// 1012 	while( OsdCpuBusy() ) Printf("@");
// 1013 	while( OsdOpBusy() ) Printf("&");
// 1014 	OsdStart(0);
// 1015 
// 1016 	OsdWinEnable( 0, 0 );
// 1017 	OsdWinEnable( 1, 0 );
// 1018 	OsdWinEnable( 4, 3 );
// 1019 */
// 1020 //}
// 1021 #endif
// 1022 
// 1023 //=============================================================================
// 1024 //		Global Alpha
// 1025 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock44 Using cfiCommon0
          CFI Function WinGlobalAlphaEnalbe
        THUMB
// 1026 void	WinGlobalAlphaEnalbe(BYTE winno,BYTE alpha)
// 1027 {
WinGlobalAlphaEnalbe:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1028 	BYTE index = OsdWinBase[winno] + OSDWIN_ENABLE;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable11
        LDRB     R6,[R4, R0]
// 1029 	BYTE dat;
// 1030 	
// 1031 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1032 	dat = ReadTW88(index);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall ReadTW88
        BL       ReadTW88
// 1033 	
// 1034 	dat &= 0xDF;	//Clear Bit5
        ANDS     R0,R0,#0xDF
// 1035 	dat |= 0x10;	//Set   Bit4
        ORRS     R0,R0,#0x10
// 1036 
// 1037 	WriteTW88(index, dat);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1038 	WriteTW88(OsdWinBase[winno] + OSDWIN_ALPHA, alpha);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable11
        LDRB     R0,[R4, R0]
        ADDS     R0,R0,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1039 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock44
// 1040 
// 1041 //=============================================================================
// 1042 //		Global Alpha
// 1043 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock45 Using cfiCommon0
          CFI Function WinGlobalAlphaDisalbe
        THUMB
// 1044 void	WinGlobalAlphaDisalbe(BYTE winno)
// 1045 {
WinGlobalAlphaDisalbe:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
// 1046 	BYTE index = OsdWinBase[winno] + OSDWIN_ENABLE;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable11
        LDRB     R5,[R4, R0]
// 1047 	BYTE dat;
// 1048 	
// 1049 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1050 	dat = ReadTW88(index);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall ReadTW88
        BL       ReadTW88
// 1051 	
// 1052 	dat |= 0x20;	//Set Bit5
        ORRS     R0,R0,#0x20
// 1053 	dat |= 0x10;	//Set Bit4
        ORRS     R0,R0,#0x10
// 1054 
// 1055 	WriteTW88(index, dat);
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1056 	WriteTW88(OsdWinBase[winno] + OSDWIN_ALPHA, 0x7F);
        MOVS     R1,#+127
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable11
        LDRB     R0,[R4, R0]
        ADDS     R0,R0,#+18
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1057 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock45
// 1058 
// 1059 #if 	0
// 1060 //=============================================================================
// 1061 //		Set Mirror
// 1062 //=============================================================================
// 1063 void OsdMirror( BYTE on )
// 1064 {
// 1065 	BYTE i;
// 1066 
// 1067 	//--- Set Conversion Color
// 1068 	WriteTW88( 0xff, OSD_PAGE );
// 1069 	i = ReadTW88( 0x78 );
// 1070 	if ( on ) 
// 1071 		i |= 0x10;
// 1072 	else
// 1073 		i &= 0xEF;
// 1074 	WriteTW88( 0x78, i );
// 1075 }
// 1076 //=============================================================================
// 1077 //		Set Flip
// 1078 //=============================================================================
// 1079 void OsdFlip( BYTE on )
// 1080 {
// 1081 	BYTE i;
// 1082 
// 1083 	//--- Set Conversion Color
// 1084 	WriteTW88( 0xff, OSD_PAGE );
// 1085 	i = ReadTW88( 0x78 );
// 1086 	if ( on ) 
// 1087 		i |= 0x20;
// 1088 	else
// 1089 		i &= 0xDF;
// 1090 	WriteTW88( 0x78, i );
// 1091 }
// 1092 //=============================================================================
// 1093 //		Animation: Call in main loop
// 1094 //=============================================================================
// 1095 void Animation(void)
// 1096 {
// 1097 	BYTE i, page, val=0;
// 1098 	struct st_animation *ani;
// 1099 	static BYTE vlast=0;
// 1100 
// 1101 	if( !AnimationON ) return;
// 1102 
// 1103 	//----- Check V Blank
// 1104 	page = ReadTW88(0xff);
// 1105 	WriteTW88( 0xff, OSD_PAGE );
// 1106 	val = ReadTW88(0xf0) & 0x01;
// 1107 
// 1108 	if ( !vlast ) {
// 1109 		vlast = val;
// 1110 		goto ret;
// 1111 		//return;
// 1112 	}
// 1113 	if ( val ) 
// 1114 		goto ret;
// 1115 		//return; 
// 1116 	vlast = val;
// 1117 
// 1118 	//----- Animation
// 1119 
// 1120 	OsdWriteMode( BLOCKTRANS | BLT_NO | CONV_DIS | PIXEL8 | SOURCE0 );
// 1121 
// 1122 	for(i=0; i<MAX_ANIMATION; i++) {
// 1123 		ani = &AnimationData[i];
// 1124 		if( ani->active ) {
// 1125 			if( --ani->vcnt==0 ) {
// 1126 				ani->vcnt = ani->speed;
// 1127 				//=========================
// 1128 				OsdBlockTransfer( ani->srcx[ani->current], ani->srcy[ani->current], ani->x, ani->y, ani->w, ani->h );
// 1129 				//=========================
// 1130 				ani->current++;
// 1131 				if( ani->current>=ani->max ) ani->current = 0;
// 1132 			}
// 1133 		}
// 1134 	}
// 1135 
// 1136 ret:
// 1137 	WriteTW88(0xff,page);
// 1138 
// 1139 }
// 1140 #endif
// 1141 
// 1142 //*****************************************************************************
// 1143 //				Initialize OSD
// 1144 //*****************************************************************************
// 1145 #define WIN0_START		0L
// 1146 #define WIN0_BUFX		(1024*2)
// 1147 #define WIN0_BUFY		(800*2)
// 1148 #if	0
// 1149 void OsdInit(BYTE winno,WORD w,WORD h)	
// 1150 {	
// 1151 	WriteTW88(0xff, OSD_PAGE);
// 1152 	WriteTW88(0x78, 0x02);	// Update right away
// 1153 
// 1154 	//----- Define Window 
// 1155 	OsdWinBuffer(winno, WIN0_START, WIN0_BUFX/64, WIN0_BUFY/64);		//显存
// 1156 	OsdWinBufferOffsetXY(winno, 0, 0);
// 1157 	OsdWinScreen(winno, 0, 0, PNL_W, PNL_H);						  	//窗口大小
// 1158 
// 1159  
// 1160 	//-----Define BitBlit Window
// 1161 	OsdBltSourceMemoryStart( WIN0_START );				//单元
// 1162 	OsdBltSourceMemoryW64( WIN0_BUFX/64 );
// 1163 
// 1164 	OsdBltDestMemoryStart( WIN0_START );
// 1165 	OsdBltDestMemoryW64( WIN0_BUFX/64 );
// 1166 }
// 1167 #else

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock46 Using cfiCommon0
          CFI Function OsdInit_16Bit
        THUMB
// 1168 void OsdInit_16Bit(BYTE winno,WORD w,WORD h)		
// 1169 {
OsdInit_16Bit:
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
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1170 	DWORD start;
// 1171 	WORD bufX,bufY;
// 1172 
// 1173 	WriteTW88(0xff, OSD_PAGE);
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1174 	WriteTW88(0x78, 0x02);	// Update right away
        MOVS     R1,#+2
        MOVS     R0,#+120
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1175 
// 1176 	start = WIN4_DDR_START;
        MOVS     R7,#+2097152
// 1177 	bufX = 2048;//w*2 + 64;
        MOV      R8,#+2048
// 1178 	bufY = 2048;//h*2 + 64;
        MOV      R0,#+2048
// 1179 	//bufX =w*2 + 64;
// 1180 	//bufY =h*2 + 64;
// 1181 	
// 1182 	//----- Define Window 
// 1183 	OsdWinBuffer(winno, start, bufX/64, bufY/64);		//显存
        LSRS     R3,R0,#+6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSRS     R2,R8,#+6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R7
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdWinBuffer
        BL       OsdWinBuffer
// 1184 	OsdWinBufferOffsetXY(winno, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdWinBufferOffsetXY
        BL       OsdWinBufferOffsetXY
// 1185 	OsdWinScreen(winno, 0, 0, w, h);					//窗口大小
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdWinScreen
        BL       OsdWinScreen
// 1186 
// 1187  
// 1188 	//-----Define BitBlit Window
// 1189 	OsdBltSourceMemoryStart( start );					//单元
        MOVS     R0,R7
          CFI FunCall OsdBltSourceMemoryStart
        BL       OsdBltSourceMemoryStart
// 1190 	OsdBltSourceMemoryW64( bufX/64 );
        LSRS     R0,R8,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdBltSourceMemoryW64
        BL       OsdBltSourceMemoryW64
// 1191 
// 1192 	OsdBltDestMemoryStart( start );
        MOVS     R0,R7
          CFI FunCall OsdBltDestMemoryStart
        BL       OsdBltDestMemoryStart
// 1193 	OsdBltDestMemoryW64( bufX/64 );
        LSRS     R0,R8,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdBltDestMemoryW64
        BL       OsdBltDestMemoryW64
// 1194 
// 1195 	g_Hx64_16Bit = bufX/64;
        LSRS     R0,R8,#+6
        LDR.N    R1,??DataTable13
        STRB     R0,[R1, #+0]
// 1196 }
        POP      {R0,R1,R4-R8,PC}  ;; return
          CFI EndBlock cfiBlock46

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     OsdWinBase
// 1197 
// 1198 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock47 Using cfiCommon0
          CFI Function OsdInit_8Bit
        THUMB
// 1199 void OsdInit_8Bit(BYTE winno,WORD w,WORD h)		
// 1200 {
OsdInit_8Bit:
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
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
// 1201 	DWORD start;
// 1202 	WORD bufX,bufY;
// 1203 
// 1204 	WriteTW88(0xff, OSD_PAGE);
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1205 	WriteTW88(0x78, 0x02);	// Update right away
        MOVS     R1,#+2
        MOVS     R0,#+120
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1206 
// 1207 	switch(winno){
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??OsdInit_8Bit_0
        CMP      R4,#+1
        BEQ.N    ??OsdInit_8Bit_1
        B.N      ??OsdInit_8Bit_2
// 1208 	 	case 0:		start = WIN0_DDR_START;		break;
??OsdInit_8Bit_0:
        MOVS     R7,#+4718592
        B.N      ??OsdInit_8Bit_2
// 1209 	 	case 1:		start = WIN1_DDR_START;		break;
??OsdInit_8Bit_1:
        MOVS     R7,#+6291456
// 1210 	}
// 1211 	bufX = 2048;//w*2;
??OsdInit_8Bit_2:
        MOV      R8,#+2048
// 1212 	bufY = 2048;//h*2;
        MOV      R0,#+2048
// 1213 	//bufX = w*2;
// 1214 	//bufY = h*2;
// 1215 	
// 1216 	//----- Define Window 
// 1217 	OsdWinBuffer(winno, start, bufX/64, bufY/64);		//显存
        LSRS     R3,R0,#+6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSRS     R2,R8,#+6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R7
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdWinBuffer
        BL       OsdWinBuffer
// 1218 	OsdWinBufferOffsetXY(winno, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdWinBufferOffsetXY
        BL       OsdWinBufferOffsetXY
// 1219 	OsdWinScreen(winno, 0, 0, w, h);					//窗口大小
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdWinScreen
        BL       OsdWinScreen
// 1220 
// 1221  
// 1222 	//-----Define BitBlit Window
// 1223 	OsdBltSourceMemoryStart( start );					//单元
        MOVS     R0,R7
          CFI FunCall OsdBltSourceMemoryStart
        BL       OsdBltSourceMemoryStart
// 1224 	OsdBltSourceMemoryW64( bufX/64 );
        LSRS     R0,R8,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdBltSourceMemoryW64
        BL       OsdBltSourceMemoryW64
// 1225 
// 1226 	OsdBltDestMemoryStart( start );
        MOVS     R0,R7
          CFI FunCall OsdBltDestMemoryStart
        BL       OsdBltDestMemoryStart
// 1227 	OsdBltDestMemoryW64( bufX/64 );
        LSRS     R0,R8,#+6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall OsdBltDestMemoryW64
        BL       OsdBltDestMemoryW64
// 1228 
// 1229 	g_Hx64_8Bit = bufX/64;
        LSRS     R0,R8,#+6
        LDR.N    R1,??DataTable13_1
        STRB     R0,[R1, #+0]
// 1230 }
        POP      {R0,R1,R4-R8,PC}  ;; return
          CFI EndBlock cfiBlock47
// 1231 
// 1232 
// 1233 
// 1234 #endif
// 1235 
// 1236 
// 1237 
// 1238 
// 1239 
// 1240 
// 1241 #define		ARIALINDEX_SPI_START			0x7E0000
// 1242 #define		ARIAL8bitFont_SPI_START			0x7F0000
// 1243 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// 1244 const struct _RLE_HEADER Arrial_Header[] = {    // File Header
Arrial_Header:
        DATA
        DC8 84, 87, 1, 67
        DC32 3863, 0, 2510, 0
// 1245     0x54, 0x57, 0x01, 0x43, 3863, 0, 2510,0 };  
// 1246 
// 1247 //=============================================================================
// 1248 //		Load Fonts MVBoli from linear addressing 8bit mode
// 1249 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock48 Using cfiCommon0
          CFI Function OsdLoadFontArial
        THUMB
// 1250 void OsdLoadFontArial(void)
// 1251 {
OsdLoadFontArial:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
// 1252 	//WORD	x, y, w, h;
// 1253 	BYTE i;
// 1254 	BYTE sbits, mode;
// 1255 	BYTE Font_W,Font_H;
// 1256 	DWORD adr,spiaddr;
// 1257 	WORD fs;
// 1258 	
// 1259 	//WORD  w64;
// 1260 	//DWORD addr_temp;
// 1261 
// 1262 	//--- Set Expansion Color
// 1263 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1264 	WriteTW88( 0x10, 0x00 );		// 0 -> 0x00 -> 0x00
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1265 	WriteTW88( 0x11, 0xff );		// 1 -> 0x01 -> 0xFF
        MOVS     R1,#+255
        MOVS     R0,#+17
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1266 
// 1267 	OsdWriteMode( CPUWRITE | BLT_NO | CONV_DIS | PIXEL8 );
        MOVS     R0,#+52
          CFI FunCall OsdWriteMode
        BL       OsdWriteMode
// 1268 
// 1269 	//OsdLoadBmpLinearFromSPI( Arrial_Header, ARIAL8bitFont_SPI_START, LINEAR_DDR_START );
// 1270 	WriteTW88( 0xff, OSD_PAGE );
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1271 
// 1272 	//--- Init RLE
// 1273 	if( Arrial_Header->cp & 0x0f ) {
        LDR.N    R0,??DataTable13_2
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+15
        TST      R0,R1
        BEQ.N    ??OsdLoadFontArial_0
// 1274 		WriteTW88( OSD_RLECTRL, 0x02 );		// PktEn=0, RstRLE=1, Enable=0	==> Reset
        MOVS     R1,#+2
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1275 		WriteTW88( OSD_RLECTRL, 0x11 );		// PktEn=1, RstRLE=0, Enable=1	==> Enable
        MOVS     R1,#+17
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1276 		WriteTW88( OSD_RLEDATACNT, Arrial_Header->cp );
        LDR.N    R0,??DataTable13_2
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+5
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??OsdLoadFontArial_1
// 1277 	}else
// 1278 		WriteTW88( OSD_RLECTRL, 0x00 );	// PktEn=0, RstRLE=0, Enable=0	==> Bypass
??OsdLoadFontArial_0:
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1279 
// 1280 	//--- Source data bits/pixel
// 1281 	switch( Arrial_Header->c & 0x0f ) {
??OsdLoadFontArial_1:
        LDR.N    R0,??DataTable13_2
        LDRB     R0,[R0, #+2]
        ANDS     R0,R0,#0xF
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??OsdLoadFontArial_2
        CMP      R0,#+2
        BEQ.N    ??OsdLoadFontArial_3
        CMP      R0,#+4
        BEQ.N    ??OsdLoadFontArial_4
        B.N      ??OsdLoadFontArial_5
// 1282 		case 1: 	sbits = SOURCE1BIT;	break;
??OsdLoadFontArial_2:
        MOVS     R4,#+1
        B.N      ??OsdLoadFontArial_6
// 1283 		case 2: 	sbits = SOURCE2BIT;	break;
??OsdLoadFontArial_3:
        MOVS     R4,#+2
        B.N      ??OsdLoadFontArial_6
// 1284 		case 4: 	sbits = SOURCE4BIT;	break;
??OsdLoadFontArial_4:
        MOVS     R4,#+3
        B.N      ??OsdLoadFontArial_6
// 1285 		default: 	sbits = SOURCE0;	break;
??OsdLoadFontArial_5:
        MOVS     R4,#+0
// 1286 	}
// 1287 
// 1288 	WriteTW88(0x10,0x00); 
??OsdLoadFontArial_6:
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1289 	WriteTW88(0x11,0x01);
        MOVS     R1,#+1
        MOVS     R0,#+17
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1290 
// 1291 	mode=ReadTW88(OSD_MODE)&0x38;
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x38
// 1292 	//WriteTW88( OSD_MODE, mode | sbits | CPUWRITE );	  	// set CPU write mode
// 1293 	WriteTW88( OSD_MODE,mode|0x00|0x04|sbits); //MCU WRITE |1 byte per pixel |  Bit expansion
        ORRS     R0,R4,R0
        ORRS     R1,R0,#0x4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1294 
// 1295 
// 1296 	SPI_ReadData2xdata( ARIALINDEX_SPI_START, SPI_Buffer, HEARDER_INFO_LEN );
        MOVS     R2,#+8
        LDR.N    R1,??DataTable13_3
        MOVS     R0,#+8257536
          CFI FunCall SPI_ReadData2xdata
        BL       SPI_ReadData2xdata
// 1297 	//Printf("\nLoad Font Index: ");
// 1298 	for(i = 0;i<128;i++){
        MOVS     R0,#+0
        B.N      ??OsdLoadFontArial_7
??OsdLoadFontArial_8:
        ADDS     R0,R0,#+1
??OsdLoadFontArial_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+128
        BCC.N    ??OsdLoadFontArial_8
// 1299 		//Put(SPI_Buffer[i],16);//Printf(" ");
// 1300 	}
// 1301  
// 1302 	adr=113;
        MOVS     R6,#+113
// 1303 	Font_W = 16;
        MOVS     R4,#+16
// 1304 	Font_H=33;
        MOVS     R5,#+33
// 1305 	fs=66;
        MOVS     R7,#+66
// 1306 
// 1307 	Font_W = (Font_W+7)>>3<<3;
        ADDS     R0,R4,#+7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+3
        LSLS     R4,R0,#+3
// 1308 
// 1309 	//--- Recalc W, H
// 1310 	OsdBltDestXY(10, 10);
        MOVS     R1,#+10
        MOVS     R0,#+10
          CFI FunCall OsdBltDestXY
        BL       OsdBltDestXY
// 1311 	OsdBltSize(Font_W, Font_H);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
          CFI FunCall OsdBltSize
        BL       OsdBltSize
// 1312 	spiaddr = ARIAL8bitFont_SPI_START + adr;
        ADDS     R4,R6,#+8323072
// 1313 
// 1314 
// 1315 
// 1316 	OsdBltDestMemoryStart(WIN1_DDR_START);
        MOVS     R0,#+6291456
          CFI FunCall OsdBltDestMemoryStart
        BL       OsdBltDestMemoryStart
// 1317 	
// 1318 //	Printf("\nFinished OsdBltSize()");
// 1319 	//--- Start Write Data	
// 1320 	OSDHardwareEnable();
          CFI FunCall OSDHardwareEnable
        BL       OSDHardwareEnable
// 1321 	OsdStart(1);
        MOVS     R0,#+1
          CFI FunCall OsdStart
        BL       OsdStart
// 1322 
// 1323 	//--- Using SPI-DMA
// 1324 //	Printf("\nB4 SPI_ReadData2Reg(): count:%ld", cnt);
// 1325 	SPI_ReadData2Reg( spiaddr, OSD_PAGE+2, fs );
        MOVS     R2,R7
        MOVS     R1,#+9
        MOVS     R0,R4
          CFI FunCall SPI_ReadData2Reg
        BL       SPI_ReadData2Reg
// 1326 //	Printf("\nSPI_ReadData2Rege()");
// 1327 
// 1328 	//--- End of Writing
// 1329 	WriteTW88( 0xff, OSD_PAGE ); 			// ### Don't miss this !!!
        MOVS     R1,#+7
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1330 	//while( OsdCpuBusy() );// Printf("@");
// 1331 	//while( OsdOpBusy() );// Printf("&");
// 1332 	OsdStart(0);
        MOVS     R0,#+0
          CFI FunCall OsdStart
        BL       OsdStart
// 1333 
// 1334 	WriteTW88( OSD_RLECTRL, 0x00 );			// PktEn=0, RstRLE=0, Enable=0	==> Bypass
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
// 1335 
// 1336 	//--- Restore Dest Memory
// 1337 //	Printf("\nB4 OsdBltDestMemoryStart()");
// 1338 	//OsdBltDestMemoryStart(addr_temp);
// 1339 //	Printf("\nB4 OsdBltDestMemoryW64()");
// 1340 	//OsdBltDestMemoryW64(w64);
// 1341 //	Printf("\nFinished OsdLoadBmpLinearFromSPI()");
// 1342 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     g_Hx64_16Bit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     g_Hx64_8Bit

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     Arrial_Header

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     SPI_Buffer

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1343 
// 
//   552 bytes in section .bss
//     8 bytes in section .data
//    20 bytes in section .rodata
// 4 134 bytes in section .text
// 
// 4 134 bytes of CODE  memory
//    20 bytes of CONST memory
//   560 bytes of DATA  memory
//
//Errors: none
//Warnings: none
