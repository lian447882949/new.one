///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    10/Jul/2015  15:43:40 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\code\T102\STM32_TZ_T102\Project\TW8836\tw8823_SPI.c  /
//    Command line =  F:\code\T102\STM32_TZ_T102\Project\TW8836\tw8823_SPI.c  /
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
//                    Template\EWARM\Debug\List\tw8823_SPI.s                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME tw8823_SPI

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Delay_1ms
        EXTERN ReadTW88
        EXTERN WriteTW88

        PUBLIC DMAMODE_RW_FIX_REG
        PUBLIC DMAMODE_RW_INC_REG
        PUBLIC DMAMODE_RW_XDATA
        PUBLIC DelayPaReady
        PUBLIC SPICMD_PROGRAM
        PUBLIC SPICMD_READ
        PUBLIC SPI_QUADInit
        PUBLIC SPI_ReadData2Reg
        PUBLIC SPI_ReadData2RegInc
        PUBLIC SPI_ReadData2xdata
        PUBLIC SPI_SetModeByRegister
        PUBLIC SPI_TurboInit
        PUBLIC TW8823_SPI_Init
        
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
        
// F:\code\T102\STM32_TZ_T102\Project\TW8836\tw8823_SPI.c
//    1 #define _SPI_C_
//    2 
//    3 
//    4 #include "i2c_driver.h"
//    5 #include "tw8823_spi.h"
//    6 #include "libr.h"
//    7 
//    8 
//    9 //----------------- SPI Mode Definition ---------------------
//   10 /*
//   11 #if		( SPI_READ_MODE == SPI_READ_SLOW )
//   12 
//   13 	#define DMAMODE_READ_FIX		0xe4
//   14 	#define DMAMODE_READ_INC 		0xc4
//   15 	#define DMAMODE_WRITE_FIX		0xe4
//   16 	#define DMAMODE_WRITE_INC		0xc4
//   17 
//   18 	#define SPICMD_READ				0x03
//   19 	#define SPICMD_PROGRAM			0x02
//   20 
//   21 
//   22 #elif	( SPI_READ_MODE == SPI_READ_QUADIO )
//   23 
//   24 	#define DMAMODE_READ_FIX		0xe7
//   25 	#define DMAMODE_READ_INC 		0xc7
//   26 	#define DMAMODE_WRITE_FIX		0xe7
//   27 	#define DMAMODE_WRITE_INC		0xc7
//   28 
//   29 	#define SPICMD_READ				0xeb
//   30 	#define SPICMD_PROGRAM			0x02
//   31 
//   32 #elif	( SPI_READ_MODE == SPI_READ_DUALIO )
//   33 
//   34 #endif
//   35 */
//   36 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   37 BYTE DMAMODE_RW_FIX_REG = 0xe4;
DMAMODE_RW_FIX_REG:
        DATA
        DC8 228

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   38 BYTE DMAMODE_RW_INC_REG = 0xc4;
DMAMODE_RW_INC_REG:
        DATA
        DC8 196

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   39 BYTE DMAMODE_RW_XDATA   = 0x84;
DMAMODE_RW_XDATA:
        DATA
        DC8 132
//   40 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   41 BYTE SPICMD_READ        = 0x03;
SPICMD_READ:
        DATA
        DC8 3

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   42 BYTE SPICMD_PROGRAM     = 0x02;
SPICMD_PROGRAM:
        DATA
        DC8 2
//   43 
//   44 //XDATA 	BYTE SPI_Buffer[128]	_at_	0;
//   45 //=============================================================================
//   46 //
//   47 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SPI_SetModeByRegister
        THUMB
//   48 BYTE SPI_SetModeByRegister( void )
//   49 {
SPI_SetModeByRegister:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   50 	BYTE mod;
//   51 
//   52 	WriteTW88( 0xff, SPI_PAGE );
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//   53 	mod = ReadTW88( 0x00 ) & 0x07;
        MOVS     R0,#+0
          CFI FunCall ReadTW88
        BL       ReadTW88
        ANDS     R0,R0,#0x7
//   54 
//   55 	switch( mod ) {
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SPI_SetModeByRegister_0
        CMP      R0,#+2
        BEQ.N    ??SPI_SetModeByRegister_1
        BCC.N    ??SPI_SetModeByRegister_2
        CMP      R0,#+4
        BEQ.N    ??SPI_SetModeByRegister_3
        BCC.N    ??SPI_SetModeByRegister_4
        CMP      R0,#+5
        BEQ.N    ??SPI_SetModeByRegister_5
        B.N      ??SPI_SetModeByRegister_6
//   56 		case 0:	//--- Slow
//   57 			DMAMODE_RW_FIX_REG = 0xe4;
??SPI_SetModeByRegister_0:
        LDR.W    R1,??DataTable3
        MOVS     R2,#+228
        STRB     R2,[R1, #+0]
//   58 			DMAMODE_RW_INC_REG = 0xc4;
        LDR.W    R1,??DataTable3_1
        MOVS     R2,#+196
        STRB     R2,[R1, #+0]
//   59 			DMAMODE_RW_XDATA   = 0x84;
        LDR.W    R1,??DataTable3_2
        MOVS     R2,#+132
        STRB     R2,[R1, #+0]
//   60 			SPICMD_READ        = 0x03;
        LDR.W    R1,??DataTable3_3
        MOVS     R2,#+3
        STRB     R2,[R1, #+0]
//   61 			SPICMD_PROGRAM     = 0x02;
        LDR.W    R1,??DataTable3_4
        MOVS     R2,#+2
        STRB     R2,[R1, #+0]
//   62 			break;
        B.N      ??SPI_SetModeByRegister_6
//   63 
//   64 		case 1:	//--- Fast
//   65 			DMAMODE_RW_FIX_REG = 0xe5;
??SPI_SetModeByRegister_2:
        LDR.W    R1,??DataTable3
        MOVS     R2,#+229
        STRB     R2,[R1, #+0]
//   66 			DMAMODE_RW_INC_REG = 0xc5;
        LDR.W    R1,??DataTable3_1
        MOVS     R2,#+197
        STRB     R2,[R1, #+0]
//   67 			DMAMODE_RW_XDATA   = 0x85;
        LDR.W    R1,??DataTable3_2
        MOVS     R2,#+133
        STRB     R2,[R1, #+0]
//   68 			SPICMD_READ        = 0x0b;
        LDR.W    R1,??DataTable3_3
        MOVS     R2,#+11
        STRB     R2,[R1, #+0]
//   69 			SPICMD_PROGRAM     = 0x02;
        LDR.W    R1,??DataTable3_4
        MOVS     R2,#+2
        STRB     R2,[R1, #+0]
//   70 			break;
        B.N      ??SPI_SetModeByRegister_6
//   71 
//   72 		case 2:	//--- Dual
//   73 			DMAMODE_RW_FIX_REG = 0xe5;
??SPI_SetModeByRegister_1:
        LDR.W    R1,??DataTable3
        MOVS     R2,#+229
        STRB     R2,[R1, #+0]
//   74 			DMAMODE_RW_INC_REG = 0xc5;
        LDR.W    R1,??DataTable3_1
        MOVS     R2,#+197
        STRB     R2,[R1, #+0]
//   75 			DMAMODE_RW_XDATA   = 0x85;
        LDR.W    R1,??DataTable3_2
        MOVS     R2,#+133
        STRB     R2,[R1, #+0]
//   76 			SPICMD_READ        = 0x3b;
        LDR.W    R1,??DataTable3_3
        MOVS     R2,#+59
        STRB     R2,[R1, #+0]
//   77 			SPICMD_PROGRAM     = 0x02;
        LDR.W    R1,??DataTable3_4
        MOVS     R2,#+2
        STRB     R2,[R1, #+0]
//   78 			break;
        B.N      ??SPI_SetModeByRegister_6
//   79 
//   80 		case 3:	//--- Quad
//   81 			DMAMODE_RW_FIX_REG = 0xe5;
??SPI_SetModeByRegister_4:
        LDR.W    R1,??DataTable3
        MOVS     R2,#+229
        STRB     R2,[R1, #+0]
//   82 			DMAMODE_RW_INC_REG = 0xc5;
        LDR.W    R1,??DataTable3_1
        MOVS     R2,#+197
        STRB     R2,[R1, #+0]
//   83 			DMAMODE_RW_XDATA   = 0x85;
        LDR.W    R1,??DataTable3_2
        MOVS     R2,#+133
        STRB     R2,[R1, #+0]
//   84 			SPICMD_READ        = 0x6b;
        LDR.W    R1,??DataTable3_3
        MOVS     R2,#+107
        STRB     R2,[R1, #+0]
//   85 			SPICMD_PROGRAM     = 0x02;
        LDR.W    R1,??DataTable3_4
        MOVS     R2,#+2
        STRB     R2,[R1, #+0]
//   86 			break;
        B.N      ??SPI_SetModeByRegister_6
//   87 
//   88 		case 4:	//--- Dual-IO
//   89 			DMAMODE_RW_FIX_REG = 0xe5;
??SPI_SetModeByRegister_3:
        LDR.W    R1,??DataTable3
        MOVS     R2,#+229
        STRB     R2,[R1, #+0]
//   90 			DMAMODE_RW_INC_REG = 0xc5;
        LDR.W    R1,??DataTable3_1
        MOVS     R2,#+197
        STRB     R2,[R1, #+0]
//   91 			DMAMODE_RW_XDATA   = 0x85;
        LDR.W    R1,??DataTable3_2
        MOVS     R2,#+133
        STRB     R2,[R1, #+0]
//   92 			SPICMD_READ        = 0xbb;
        LDR.W    R1,??DataTable3_3
        MOVS     R2,#+187
        STRB     R2,[R1, #+0]
//   93 			SPICMD_PROGRAM     = 0x02;
        LDR.W    R1,??DataTable3_4
        MOVS     R2,#+2
        STRB     R2,[R1, #+0]
//   94 			break;
        B.N      ??SPI_SetModeByRegister_6
//   95 
//   96 		case 5:	//--- Quad-IO
//   97 			DMAMODE_RW_FIX_REG = 0xe7;
??SPI_SetModeByRegister_5:
        LDR.W    R1,??DataTable3
        MOVS     R2,#+231
        STRB     R2,[R1, #+0]
//   98 			DMAMODE_RW_INC_REG = 0xc7;
        LDR.W    R1,??DataTable3_1
        MOVS     R2,#+199
        STRB     R2,[R1, #+0]
//   99 			DMAMODE_RW_XDATA   = 0x87;
        LDR.W    R1,??DataTable3_2
        MOVS     R2,#+135
        STRB     R2,[R1, #+0]
//  100 			SPICMD_READ        = 0xeb;
        LDR.W    R1,??DataTable3_3
        MOVS     R2,#+235
        STRB     R2,[R1, #+0]
//  101 			SPICMD_PROGRAM     = 0x02;
        LDR.W    R1,??DataTable3_4
        MOVS     R2,#+2
        STRB     R2,[R1, #+0]
//  102 			break;
//  103  	}
//  104 	return mod;
??SPI_SetModeByRegister_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock0
//  105 }
//  106 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function TW8823_SPI_Init
        THUMB
//  107 void TW8823_SPI_Init(void)
//  108 {
TW8823_SPI_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  109 //	BYTE dat;
//  110 
//  111 	WriteTW88( 0xff, SPI_PAGE );
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  112 	//Printf("\n\r Enter SPI Turbo1\n");
//  113 	WriteTW88( 0x00, SPI_READ_MODE );			// SPI Mode:	0=Slow, 1=fast, 2=dual, 3=quad, 4=dual-io, 5=quad-io
        MOVS     R1,#+0
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  114 
//  115 	WriteTW88( 0x01, 0x06 );					// MCU Clock:	27MHz
        MOVS     R1,#+6
        MOVS     R0,#+1
          CFI FunCall WriteTW88
        BL       WriteTW88
//  116 	WriteTW88( 0x02, 0x06 );					// SPI Clock:	27MHz
        MOVS     R1,#+6
        MOVS     R0,#+2
          CFI FunCall WriteTW88
        BL       WriteTW88
//  117 	
//  118 	//	Printf("\n\r Enter SPI Turbo1\n");
//  119 
//  120 
//  121 //	dat = ReadTW88( 0x20 ) | 0x2c;				//----- Enable OSD-DMA, Cache
//  122 //	WriteTW88( 0x20, dat );
//  123 
//  124 	SPI_SetModeByRegister();					// Match DMA mode with SPI-read
          CFI FunCall SPI_SetModeByRegister
        BL       SPI_SetModeByRegister
//  125 
//  126 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//  127 
//  128 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function SPI_TurboInit
        THUMB
//  129 void SPI_TurboInit(void)
//  130 {
SPI_TurboInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  131 	unsigned int i = 0;
        MOVS     R4,#+0
//  132 	Byte dat;
//  133 	
//  134 	WriteTW88( 0xff, SPI_PAGE );
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??SPI_TurboInit_0
//  135 	//Printf("\n\r Enter SPI Turbo\n");
//  136 	while(i < 25000)
//  137 	{
//  138 		i++;
??SPI_TurboInit_1:
        ADDS     R4,R4,#+1
//  139 	}
??SPI_TurboInit_0:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_TurboInit_1
//  140 	WriteTW88( 0x00,SPI_READ_DUAL);//SPI_READ_QUADIO );			// SPI Mode:	0=Slow, 1=fast, 2=dual, 3=quad, 4=dual-io, 5=quad-io
        MOVS     R1,#+2
        MOVS     R0,#+0
          CFI FunCall WriteTW88
        BL       WriteTW88
//  141 	//Printf("\n\r Enter SPI Turbo1\n");
//  142 	WriteTW88( 0x01, 0x00 );					// change PLL divider as 108MHz  skz
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall WriteTW88
        BL       WriteTW88
//  143 	WriteTW88( 0x01, 0x20 );					// change MCU clock : Xtal -> PLL div  skz
        MOVS     R1,#+32
        MOVS     R0,#+1
          CFI FunCall WriteTW88
        BL       WriteTW88
//  144 	//WriteTW88( 0x01, 0x00 );
//  145 	//WriteTW88( 0x01, 0x20 );               //Change MCU clock to 108MHz
//  146 	//delay(10);
//  147 	Delay_1ms(10);
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  148 	WriteTW88( 0x02, 0x02 );			  // change PLL divider as 54MHz
        MOVS     R1,#+2
        MOVS     R0,#+2
          CFI FunCall WriteTW88
        BL       WriteTW88
//  149 	WriteTW88( 0x02, 0x22 );
        MOVS     R1,#+34
        MOVS     R0,#+2
          CFI FunCall WriteTW88
        BL       WriteTW88
//  150 	//WriteTW88( 0x02, 0x00 );				  // change PLL divider as 43MHz
//  151 	//WriteTW88( 0x02, 0x20 );
//  152 	
//  153 	// change SPI Clock: Xtal -> PLL div
//  154 	//WriteTW88( 0x00, SPI_READ_QUADIO );			// SPI Mode:	0=Slow, 1=fast, 2=dual, 3=quad, 4=dual-io, 5=quad-io
//  155 	SPI_SetModeByRegister();					// Match DMA mode with SPI-read
          CFI FunCall SPI_SetModeByRegister
        BL       SPI_SetModeByRegister
//  156 	dat = ReadTW88( 0x20 ) | 0x28;				//----- Enable OSD-DMA, Cache
        MOVS     R0,#+32
          CFI FunCall ReadTW88
        BL       ReadTW88
        ORRS     R1,R0,#0x28
//  157 	WriteTW88( 0x20, dat );
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+32
          CFI FunCall WriteTW88
        BL       WriteTW88
//  158 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//  159 
//  160 //=============================================================================
//  161 //
//  162 //=============================================================================
//  163 //=============================================================================
//  164 //
//  165 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function SPI_QUADInit
        THUMB
//  166 void SPI_QUADInit(void)
//  167 {
SPI_QUADInit:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  168 	BYTE	temp;
//  169 	unsigned int i = 0;
        MOVS     R4,#+0
//  170 	Byte dat;
//  171 	
//  172 	WriteTW88( 0xff, SPI_PAGE );
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  173 
//  174 	WriteTW88( 0x03, 0x41 );					// mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  175 	WriteTW88( 0x0a, 0x9f );					// cmd, read Jedec ID
        MOVS     R1,#+159
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  176 
//  177 	WriteTW88( 0x1a, 0 );
        MOVS     R1,#+0
        MOVS     R0,#+26
          CFI FunCall WriteTW88
        BL       WriteTW88
//  178 	WriteTW88( 0x08, 0 );
        MOVS     R1,#+0
        MOVS     R0,#+8
          CFI FunCall WriteTW88
        BL       WriteTW88
//  179 	WriteTW88( 0x09, 3 );						// read buffer size 3
        MOVS     R1,#+3
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  180 	WriteTW88( 0x04, 0x01 );					// start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??SPI_QUADInit_0
//  181 	while(i < 25000)
//  182 	{
//  183 		i++;
??SPI_QUADInit_1:
        ADDS     R4,R4,#+1
//  184 	}
??SPI_QUADInit_0:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_1
//  185 	temp = ReadTW88(0x10);
        MOVS     R0,#+16
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R5,R0
//  186 	//Printf("\nSPI JEDEC ID: %02bx %02bx %02bx", temp, ReadTW88(0x11), ReadTW88(0x12) );
//  187 	if ( temp == 0xC2 ) {						// for MX
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+194
        BNE.W    ??SPI_QUADInit_2
//  188 		WriteTW88( 0x03, 0x41 );					// mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  189 		WriteTW88( 0x0a, 0x05 );					// cmd, read Status
        MOVS     R1,#+5
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  190 		WriteTW88( 0x09, 1 );						// read buffer size 1
        MOVS     R1,#+1
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  191 		WriteTW88( 0x04, 0x01 );					// start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  192 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_3
//  193 		while(i < 25000)
//  194 		{
//  195 			i++;
??SPI_QUADInit_4:
        ADDS     R4,R4,#+1
//  196 		}
??SPI_QUADInit_3:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_4
//  197 		temp = ReadTW88( 0x10 );					// read status regisiter value
        MOVS     R0,#+16
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R5,R0
//  198 		if ( temp == 0 ) {
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.W    ??SPI_QUADInit_5
//  199 			//Puts("\nEnable MX quad mode" );
//  200 			WriteTW88( 0x03, 0x41 );					// mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  201 			WriteTW88( 0x0a, 0x06 );					// cmd, write enable
        MOVS     R1,#+6
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  202 			WriteTW88( 0x09, 0 );						// read buffer size 1
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  203 			WriteTW88( 0x04, 0x03 );					// start
        MOVS     R1,#+3
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  204 
//  205 			//Puts("\nWrite ENABLED" );
//  206 
//  207 			WriteTW88( 0x03, 0x41 );					// mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  208 			WriteTW88( 0x0a, 0x05 );					// cmd, read Status
        MOVS     R1,#+5
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  209 			WriteTW88( 0x09, 1 );						// read buffer size 1
        MOVS     R1,#+1
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  210 			WriteTW88( 0x04, 0x01 );					// start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  211 			i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_6
//  212 			while(i < 25000)
//  213 			{
//  214 				i++;
??SPI_QUADInit_7:
        ADDS     R4,R4,#+1
//  215 			}
??SPI_QUADInit_6:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_7
//  216 			temp = ReadTW88( 0x10 );					// read status regisiter value
        MOVS     R0,#+16
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R5,R0
//  217 			//Printf("\nStatus after Write enable %02bx", temp );
//  218 
//  219 			WriteTW88( 0x03, 0x42 );					// mode, cmd-len 2
        MOVS     R1,#+66
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  220 			WriteTW88( 0x0a, 0x01 );					// cmd, write Status
        MOVS     R1,#+1
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  221 			WriteTW88( 0x0b, 0x40 );					// cmd, en QAUD mode
        MOVS     R1,#+64
        MOVS     R0,#+11
          CFI FunCall WriteTW88
        BL       WriteTW88
//  222 			WriteTW88( 0x09, 0 );						// read buffer size 1
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  223 			WriteTW88( 0x04, 0x07 );					// start + write + busycheck
        MOVS     R1,#+7
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  224 
//  225 			//Puts("\nQUAD ENABLED" );
//  226 
//  227 			WriteTW88( 0x03, 0x41 );					// mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  228 			WriteTW88( 0x0a, 0x05 );					// cmd, read Status
        MOVS     R1,#+5
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  229 			WriteTW88( 0x09, 1 );						// read buffer size 1
        MOVS     R1,#+1
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  230 			WriteTW88( 0x04, 0x01 );					// start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  231 			i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_8
//  232 			while(i < 25000)
//  233 			{
//  234 				i++;
??SPI_QUADInit_9:
        ADDS     R4,R4,#+1
//  235 			}
??SPI_QUADInit_8:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_9
//  236 			temp = ReadTW88( 0x10 );					// read status regisiter value
        MOVS     R0,#+16
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R5,R0
//  237 			//Printf("\nStatus after QUAD enable %02bx", temp );
//  238 
//  239 			WriteTW88( 0x03, 0x41 );					// mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  240 			WriteTW88( 0x0a, 0x06 );					// cmd, write disable
        MOVS     R1,#+6
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  241 			WriteTW88( 0x04, 0x01 );					// start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??SPI_QUADInit_5
//  242 		}
//  243 	}
//  244 	else if ( temp == 0xEF ) {				// for WB
??SPI_QUADInit_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+239
        BNE.N    ??SPI_QUADInit_5
//  245 		WriteTW88( 0x03, 0x41 );					// mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  246 		WriteTW88( 0x0a, 0x05 );					// cmd, read Status
        MOVS     R1,#+5
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  247 		WriteTW88( 0x09, 2 );						// read buffer size 1
        MOVS     R1,#+2
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  248 		WriteTW88( 0x04, 0x01 );					// start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  249 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_10
//  250 		while(i < 25000)
//  251 		{
//  252 			i++;
??SPI_QUADInit_11:
        ADDS     R4,R4,#+1
//  253 		}
??SPI_QUADInit_10:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_11
//  254 		temp = ReadTW88( 0x11 );					// read status regisiter value
        MOVS     R0,#+17
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R5,R0
//  255 		if ( temp == 0 ) {
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??SPI_QUADInit_5
//  256 			//Puts("\nEnable WB quad mode" );
//  257 			WriteTW88( 0x03, 0x41 );					// mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  258 			WriteTW88( 0x0a, 0x06 );					// cmd, write enable
        MOVS     R1,#+6
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  259 			WriteTW88( 0x04, 0x01 );					// start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  260 
//  261 			WriteTW88( 0x03, 0x43 );					// mode, cmd-len 1
        MOVS     R1,#+67
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  262 			WriteTW88( 0x0a, 0x01 );					// cmd, write Status
        MOVS     R1,#+1
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  263 			WriteTW88( 0x0b, 0x00 );					// cmd, en QAUD mode
        MOVS     R1,#+0
        MOVS     R0,#+11
          CFI FunCall WriteTW88
        BL       WriteTW88
//  264 			WriteTW88( 0x0c, 0x02 );					// cmd, en QAUD mode
        MOVS     R1,#+2
        MOVS     R0,#+12
          CFI FunCall WriteTW88
        BL       WriteTW88
//  265 			WriteTW88( 0x04, 0x01 );					// start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  266 		}
//  267 	}
//  268 	if ( temp == 0x01 ) {                                          //for Spansion..paul20100729
??SPI_QUADInit_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.W    ??SPI_QUADInit_12
//  269   	WriteTW88( 0x03, 0x41 );                                       // mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  270   	WriteTW88( 0x0a, 0x05 );                                       // cmd, read Status
        MOVS     R1,#+5
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  271   	WriteTW88( 0x09, 1 );                                          // read buffer size 1
        MOVS     R1,#+1
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  272   	WriteTW88( 0x04, 0x01 );                                       // start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  273 	i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_13
//  274 	while(i < 25000)
//  275 	{
//  276 		i++;
??SPI_QUADInit_14:
        ADDS     R4,R4,#+1
//  277 	}
??SPI_QUADInit_13:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_14
//  278   	temp = ReadTW88( 0x10 );                                             // read status regisiter value
        MOVS     R0,#+16
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R5,R0
//  279 
//  280   	if ( temp == 0 ) {
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.W    ??SPI_QUADInit_15
//  281 
//  282 
//  283 		WriteTW88( 0x03, 0x41 );                                       // mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  284   		WriteTW88( 0x0a, 0x06 );                                       // cmd, write disable
        MOVS     R1,#+6
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  285 		WriteTW88( 0x08, 0 );                                       // cmd, write disable
        MOVS     R1,#+0
        MOVS     R0,#+8
          CFI FunCall WriteTW88
        BL       WriteTW88
//  286 		WriteTW88( 0x09, 0 );                                       // cmd, write disable
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  287 		WriteTW88( 0x1a, 0 );                                       // cmd, write disable
        MOVS     R1,#+0
        MOVS     R0,#+26
          CFI FunCall WriteTW88
        BL       WriteTW88
//  288   		WriteTW88( 0x04, 0x03 );                                       // start
        MOVS     R1,#+3
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  289   		
//  290   		WriteTW88( 0x03, 0x43 );                                       // mode, cmd-len 2
        MOVS     R1,#+67
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  291   		WriteTW88( 0x0a, 0x01 );                                       // cmd, write Status
        MOVS     R1,#+1
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  292   		WriteTW88( 0x0b, 0x02 );                                       //cmd,write enable   ..paul20100729
        MOVS     R1,#+2
        MOVS     R0,#+11
          CFI FunCall WriteTW88
        BL       WriteTW88
//  293   		WriteTW88( 0x0c, 0x02 );                                       // cmd, en QUAD mode.. paul20100729
        MOVS     R1,#+2
        MOVS     R0,#+12
          CFI FunCall WriteTW88
        BL       WriteTW88
//  294   		WriteTW88( 0x09, 0 );                                          // read buffer size 1
        MOVS     R1,#+0
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  295   		WriteTW88( 0x04, 0x07 );                                       // start + write + busycheck
        MOVS     R1,#+7
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  296   		
//  297   		//Puts("\nQUAD ENABLED" );
//  298   		
//  299   		WriteTW88( 0x03, 0x41 );                                       // mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  300   		WriteTW88( 0x0a, 0x35 );                                       // cmd, read Status
        MOVS     R1,#+53
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  301   		WriteTW88( 0x09, 1 );                                          // read buffer size 1
        MOVS     R1,#+1
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  302   		WriteTW88( 0x04, 0x01 );                                       // start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  303 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_16
//  304 		while(i < 25000)
//  305 		{
//  306 			i++;
??SPI_QUADInit_17:
        ADDS     R4,R4,#+1
//  307 		}
??SPI_QUADInit_16:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_17
//  308   		temp = ReadTW88( 0x10 );                                       // read status regisiter value
        MOVS     R0,#+16
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R5,R0
//  309 
//  310   		
//  311   		WriteTW88( 0x03, 0x41 );                                       // mode, cmd-len 1
        MOVS     R1,#+65
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  312   		WriteTW88( 0x0a, 0x06 );                                       // cmd, write disable
        MOVS     R1,#+6
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  313 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_18
//  314 		#if 1
//  315 		while(i < 25000)
//  316 		{
//  317 			i++;
??SPI_QUADInit_19:
        ADDS     R4,R4,#+1
//  318 		}
??SPI_QUADInit_18:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_19
//  319 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_20
//  320 		while(i < 25000)
//  321 		{
//  322 			i++;
??SPI_QUADInit_21:
        ADDS     R4,R4,#+1
//  323 		}
??SPI_QUADInit_20:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_21
//  324 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_22
//  325 		while(i < 25000)
//  326 		{
//  327 			i++;
??SPI_QUADInit_23:
        ADDS     R4,R4,#+1
//  328 		}
??SPI_QUADInit_22:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_23
//  329 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_24
//  330 		while(i < 25000)
//  331 		{
//  332 			i++;
??SPI_QUADInit_25:
        ADDS     R4,R4,#+1
//  333 		}
??SPI_QUADInit_24:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_25
//  334 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_26
//  335 		while(i < 25000)
//  336 		{
//  337 			i++;
??SPI_QUADInit_27:
        ADDS     R4,R4,#+1
//  338 		}
??SPI_QUADInit_26:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_27
//  339 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_28
//  340 		while(i < 25000)
//  341 		{
//  342 			i++;
??SPI_QUADInit_29:
        ADDS     R4,R4,#+1
//  343 		}
??SPI_QUADInit_28:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_29
//  344 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_30
//  345 		while(i < 25000)
//  346 		{
//  347 			i++;
??SPI_QUADInit_31:
        ADDS     R4,R4,#+1
//  348 		}
??SPI_QUADInit_30:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_31
//  349 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_32
//  350 		while(i < 25000)
//  351 		{
//  352 			i++;
??SPI_QUADInit_33:
        ADDS     R4,R4,#+1
//  353 		}
??SPI_QUADInit_32:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_33
//  354 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_34
//  355 		while(i < 25000)
//  356 		{
//  357 			i++;
??SPI_QUADInit_35:
        ADDS     R4,R4,#+1
//  358 		}
??SPI_QUADInit_34:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_35
//  359 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_36
//  360 		while(i < 25000)
//  361 		{
//  362 			i++;
??SPI_QUADInit_37:
        ADDS     R4,R4,#+1
//  363 		}
??SPI_QUADInit_36:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_37
//  364 		#endif
//  365   		WriteTW88( 0x04, 0x01 );                                       // start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
        B.N      ??SPI_QUADInit_38
//  366 		#if 1
//  367 		while(i < 25000)
//  368 		{
//  369 			i++;
??SPI_QUADInit_39:
        ADDS     R4,R4,#+1
//  370 		}
??SPI_QUADInit_38:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_39
//  371 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_40
//  372 		while(i < 25000)
//  373 		{
//  374 			i++;
??SPI_QUADInit_41:
        ADDS     R4,R4,#+1
//  375 		}
??SPI_QUADInit_40:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_41
//  376 		i = 0;
        MOVS     R4,#+0
        B.N      ??SPI_QUADInit_42
//  377 		while(i < 25000)
//  378 		{
//  379 			i++;
??SPI_QUADInit_43:
        ADDS     R4,R4,#+1
//  380 		}
??SPI_QUADInit_42:
        MOVW     R0,#+25000
        CMP      R4,R0
        BCC.N    ??SPI_QUADInit_43
//  381 		#endif
//  382   	}
//  383 	SPI_SetModeByRegister();					// Match DMA mode with SPI-read
??SPI_QUADInit_15:
          CFI FunCall SPI_SetModeByRegister
        BL       SPI_SetModeByRegister
//  384 	dat = ReadTW88( 0x20 ) | 0x28;				//----- Enable OSD-DMA, Cache
        MOVS     R0,#+32
          CFI FunCall ReadTW88
        BL       ReadTW88
        ORRS     R1,R0,#0x28
//  385 	WriteTW88( 0x20, dat );
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+32
          CFI FunCall WriteTW88
        BL       WriteTW88
//  386 	
//  387     }
//  388 
//  389 }
??SPI_QUADInit_12:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//  390 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function DelayPaReady
        THUMB
//  391 void DelayPaReady(void)
//  392 {
DelayPaReady:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  393 	unsigned char regvalue = 0,regvalue1 = 0;
        MOVS     R4,#+0
        MOVS     R0,#+0
//  394 	unsigned int countreg = 0;
        MOVS     R5,#+0
//  395 	
//  396 	countreg = 0;
        MOVS     R1,#+0
        MOVS     R5,R1
        B.N      ??DelayPaReady_0
//  397 	while(countreg < 1000)
//  398 	{
//  399 		WriteTW88(0xff,0x01);
//  400 		regvalue = ReadTW88(0xff);
//  401 		
//  402 		WriteTW88(0xff,0x0f);
//  403 		regvalue1 = ReadTW88(0xff);
//  404 		
//  405 		if(regvalue == 0x01 && regvalue1 == 0x0f) break;
//  406 		countreg++;
??DelayPaReady_1:
        ADDS     R5,R5,#+1
??DelayPaReady_0:
        MOV      R0,#+1000
        CMP      R5,R0
        BCS.N    ??DelayPaReady_2
        MOVS     R1,#+1
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
        MOVS     R0,#+255
          CFI FunCall ReadTW88
        BL       ReadTW88
        MOVS     R4,R0
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
        MOVS     R0,#+255
          CFI FunCall ReadTW88
        BL       ReadTW88
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??DelayPaReady_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+15
        BNE.N    ??DelayPaReady_1
//  407 	}
//  408 }
??DelayPaReady_2:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock4
//  409 //=============================================================================
//  410 //		SPI DMA (SPI --> Fixed Register)
//  411 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SPI_ReadData2Reg
        THUMB
//  412 void SPI_ReadData2Reg( DWORD spiaddr, WORD index, DWORD cnt )
//  413 {
SPI_ReadData2Reg:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  414 	WriteTW88( 0xff, SPI_PAGE );				// Set Page=5
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  415 
//  416 	WriteTW88( 0x03, DMAMODE_RW_FIX_REG);		// Mode = SPI -> fixed register
        LDR.N    R0,??DataTable3
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  417 	WriteTW88( 0x0a, SPICMD_READ );				// Read Command
        LDR.N    R0,??DataTable3_3
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  418 	WriteTW88( 0x0b, H2BYTE(spiaddr));				// SPI address
        LSRS     R1,R4,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+11
          CFI FunCall WriteTW88
        BL       WriteTW88
//  419 	WriteTW88( 0x0c, HIBYTE(spiaddr) );				// SPI address
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+12
          CFI FunCall WriteTW88
        BL       WriteTW88
//  420 	WriteTW88( 0x0d, LOBYTE(spiaddr) );					// SPI address
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+13
          CFI FunCall WriteTW88
        BL       WriteTW88
//  421 	WriteTW88( 0x06, HIBYTE(index) );				// Buffer address
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+6
          CFI FunCall WriteTW88
        BL       WriteTW88
//  422 	WriteTW88( 0x07, LOBYTE(index));					// Buffer address
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+7
          CFI FunCall WriteTW88
        BL       WriteTW88
//  423 	WriteTW88( 0x1a, H2BYTE(cnt));					// Read count
        LSRS     R1,R6,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+26
          CFI FunCall WriteTW88
        BL       WriteTW88
//  424 	WriteTW88( 0x08, HIBYTE(cnt));					// Read count
        LSRS     R1,R6,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+8
          CFI FunCall WriteTW88
        BL       WriteTW88
//  425 	WriteTW88( 0x09, LOBYTE(cnt));						// Read count
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  426 
//  427 	WriteTW88( 0x04, 0x01 );					// DMA-Read start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  428 	DelayPaReady();
          CFI FunCall DelayPaReady
        BL       DelayPaReady
//  429 	//REGVlaF0a = ReadPn(0xf0a);	
//  430 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock5
//  431 //=============================================================================
//  432 //		SPI DMA (SPI --> Incremental Register)
//  433 //=============================================================================
//  434 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function SPI_ReadData2RegInc
        THUMB
//  435 void SPI_ReadData2RegInc( DWORD spiaddr, WORD index, DWORD cnt )
//  436 {
SPI_ReadData2RegInc:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  437 	WriteTW88( 0xff, SPI_PAGE );				// Set Page=5
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  438 
//  439 	WriteTW88( 0x03, DMAMODE_RW_INC_REG );		// Mode = SPI -> incremental register
        LDR.N    R0,??DataTable3_1
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  440 	WriteTW88( 0x0a, SPICMD_READ );				// Read Command
        LDR.N    R0,??DataTable3_3
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  441 	WriteTW88( 0x0b, spiaddr>>16 );				// SPI address
        LSRS     R1,R4,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+11
          CFI FunCall WriteTW88
        BL       WriteTW88
//  442 	WriteTW88( 0x0c, spiaddr>>8 );				// SPI address
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+12
          CFI FunCall WriteTW88
        BL       WriteTW88
//  443 	WriteTW88( 0x0d, spiaddr );					// SPI address
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+13
          CFI FunCall WriteTW88
        BL       WriteTW88
//  444  	WriteTW88( 0x06, index>>8 );				// Buffer address
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+6
          CFI FunCall WriteTW88
        BL       WriteTW88
//  445 	WriteTW88( 0x07, index );					// Buffer address
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+7
          CFI FunCall WriteTW88
        BL       WriteTW88
//  446 	WriteTW88( 0x1a, cnt>>16 );					// Read count
        LSRS     R1,R6,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+26
          CFI FunCall WriteTW88
        BL       WriteTW88
//  447  	WriteTW88( 0x08, cnt>>8 );					// Read count
        LSRS     R1,R6,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+8
          CFI FunCall WriteTW88
        BL       WriteTW88
//  448 	WriteTW88( 0x09, cnt );						// Read count
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  449 
//  450 	WriteTW88( 0x04, 0x01 );					// DMA-Read start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  451 	DelayPaReady();
          CFI FunCall DelayPaReady
        BL       DelayPaReady
//  452 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock6
//  453 
//  454 //=============================================================================
//  455 //		SPI DMA (SPI --> Incremental XDATA)
//  456 //=============================================================================

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function SPI_ReadData2xdata
        THUMB
//  457 void SPI_ReadData2xdata( DWORD spiaddr, BYTE *ptr, DWORD cnt )
//  458 {
SPI_ReadData2xdata:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  459 	WORD xaddr = (WORD)ptr;
//  460 
//  461 	WriteTW88( 0xff, SPI_PAGE );				// Set Page=5
        MOVS     R1,#+15
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  462 
//  463 	WriteTW88( 0x03, DMAMODE_RW_XDATA );		// Mode = SPI -> incremental xdata
        LDR.N    R0,??DataTable3_2
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+3
          CFI FunCall WriteTW88
        BL       WriteTW88
//  464 	WriteTW88( 0x0a, SPICMD_READ );				// Read Command
        LDR.N    R0,??DataTable3_3
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+10
          CFI FunCall WriteTW88
        BL       WriteTW88
//  465 	WriteTW88( 0x0b, spiaddr>>16 );				// SPI address
        LSRS     R1,R4,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+11
          CFI FunCall WriteTW88
        BL       WriteTW88
//  466 	WriteTW88( 0x0c, spiaddr>>8 );				// SPI address
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+12
          CFI FunCall WriteTW88
        BL       WriteTW88
//  467 	WriteTW88( 0x0d, spiaddr );					// SPI address
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+13
          CFI FunCall WriteTW88
        BL       WriteTW88
//  468  	WriteTW88( 0x06, xaddr>>8 );				// Buffer address
        LSRS     R1,R5,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+6
          CFI FunCall WriteTW88
        BL       WriteTW88
//  469 	WriteTW88( 0x07, xaddr );					// Buffer address
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+7
          CFI FunCall WriteTW88
        BL       WriteTW88
//  470 	WriteTW88( 0x1a, cnt>>16 );					// Read count
        LSRS     R1,R6,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+26
          CFI FunCall WriteTW88
        BL       WriteTW88
//  471  	WriteTW88( 0x08, cnt>>8 );					// Read count
        LSRS     R1,R6,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+8
          CFI FunCall WriteTW88
        BL       WriteTW88
//  472 	WriteTW88( 0x09, cnt );						// Read count
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+9
          CFI FunCall WriteTW88
        BL       WriteTW88
//  473 
//  474 	WriteTW88( 0x04, 0x01 );					// DMA-Read start
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall WriteTW88
        BL       WriteTW88
//  475 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     DMAMODE_RW_FIX_REG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     DMAMODE_RW_INC_REG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     DMAMODE_RW_XDATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     SPICMD_READ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     SPICMD_PROGRAM

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  476 
// 
//     5 bytes in section .data
// 1 840 bytes in section .text
// 
// 1 840 bytes of CODE memory
//     5 bytes of DATA memory
//
//Errors: none
//Warnings: none
