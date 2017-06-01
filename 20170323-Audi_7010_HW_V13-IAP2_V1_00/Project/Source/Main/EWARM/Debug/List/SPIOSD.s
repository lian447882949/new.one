///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:40 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\TW8836\SPIOSD.c                    /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\TW8836\SPIOSD.c -D                 /
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
//                    \Debug\List\SPIOSD.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME SPIOSD

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN EEPROM_DATA
        EXTERN SpiFlashReadRLE2Header
        EXTERN TW8836_Read
        EXTERN TW8836_Write
        EXTERN TW8836_WritePage
        EXTERN WriteTW88

        PUBLIC SPI_Buffer
        PUBLIC SpiOsdAlphaBlending
        PUBLIC SpiOsdBuffWidth
        PUBLIC SpiOsdClrLut
        PUBLIC SpiOsdClrReg
        PUBLIC SpiOsdClrRlc
        PUBLIC SpiOsdClrRlc_updateReg
        PUBLIC SpiOsdEnable
        PUBLIC SpiOsdFillColor
        PUBLIC SpiOsdInit
        PUBLIC SpiOsdLutOffset
        PUBLIC SpiOsdPixelAlphaAttr
        PUBLIC SpiOsdPixelAlphaAttr_user
        PUBLIC SpiOsdSetBitsPixel
        PUBLIC SpiOsdSetDeValue
        PUBLIC SpiOsdSetGlobalAlpha
        PUBLIC SpiOsdSetLut
        PUBLIC SpiOsdSetPixelAlpha
        PUBLIC SpiOsdSetRlc
        PUBLIC SpiOsdSpiStartAddress
        PUBLIC SpiOsdUpdateLut
        PUBLIC SpiOsdUpdateReg
        PUBLIC SpiOsdUpdateReg_update_win
        PUBLIC SpiOsdUpdateRlc
        PUBLIC SpiOsdUpdateRlc_user
        PUBLIC SpiOsdWinBase
        PUBLIC SpiOsdWinEnable
        PUBLIC SpiOsdWinGlobalAlpha
        PUBLIC SpiOsdWinPixelAlpha
        PUBLIC SpiOsdWinRegs
        PUBLIC SpiOsdWindowPosAndSize
        PUBLIC SpiOsdZoom
        PUBLIC bmp_LUT
        PUBLIC gtSpiOsd
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\TW8836\SPIOSD.c
//    1 #define __SPIOSD_C__
//    2 
//    3 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute uint8_t SPI_Buffer[128]
SPI_Buffer:
        DS8 128

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute SPIOSD gtSpiOsd
gtSpiOsd:
        DS8 188
//    4 
//    5 //#include "SPIFlash.h"
//    6 //#include "SPIOSD.h"
//    7 //#include "TW8836.h"
//    8 
//    9 
//   10 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   11 const uint8_t SpiOsdWinBase[9] =
SpiOsdWinBase:
        DATA
        DC8 32, 64, 80, 96, 112, 128, 144, 160, 176, 0, 0, 0
//   12 {
//   13     SPIOSD_WIN0_START, SPIOSD_WIN1_START, SPIOSD_WIN2_START,
//   14     SPIOSD_WIN3_START, SPIOSD_WIN4_START, SPIOSD_WIN5_START,
//   15     SPIOSD_WIN6_START, SPIOSD_WIN7_START, SPIOSD_WIN8_START,
//   16 };
//   17 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   18  const uint8_t bmp_LUT[] = {    // LUT
bmp_LUT:
        DATA
        DC8 0, 0, 0, 0, 0, 0, 128, 0, 0, 128, 0, 0, 0, 128, 128, 0, 128, 0, 0
        DC8 0, 128, 0, 128, 0, 128, 128, 0, 0, 192, 192, 192, 0, 192, 220, 192
        DC8 0, 240, 202, 166, 0, 51, 0, 0, 0, 0, 0, 51, 0, 51, 0, 51, 0, 51, 51
        DC8 0, 0, 22, 22, 22, 0, 28, 28, 28, 0, 34, 34, 34, 0, 41, 41, 41, 0
        DC8 85, 85, 85, 0, 77, 77, 77, 0, 66, 66, 66, 0, 57, 57, 57, 0, 128
        DC8 124, 255, 0, 80, 80, 255, 0, 147, 0, 214, 0, 255, 236, 204, 0, 198
        DC8 214, 239, 0, 214, 231, 231, 0, 144, 169, 173, 0, 0, 255, 51, 0, 0
        DC8 0, 102, 0, 0, 0, 153, 0, 0, 0, 204, 0, 0, 51, 0, 0, 0, 51, 51, 0, 0
        DC8 51, 102, 0, 0, 51, 153, 0, 0, 51, 204, 0, 0, 51, 255, 0, 0, 102, 0
        DC8 0, 0, 102, 51, 0, 0, 102, 102, 0, 0, 102, 153, 0, 0, 102, 204, 0, 0
        DC8 102, 255, 0, 0, 153, 0, 0, 0, 153, 51, 0, 0, 153, 102, 0, 0, 153
        DC8 153, 0, 0, 153, 204, 0, 0, 153, 255, 0, 0, 204, 0, 0, 0, 204, 51, 0
        DC8 0, 204, 102, 0, 0, 204, 153, 0, 0, 204, 204, 0, 0, 204, 255, 0, 0
        DC8 255, 102, 0, 0, 255, 153, 0, 0, 255, 204, 0, 51, 255, 0, 0, 255, 0
        DC8 51, 0, 51, 0, 102, 0, 51, 0, 153, 0, 51, 0, 204, 0, 51, 0, 255, 0
        DC8 255, 51, 0, 0, 51, 51, 51, 0, 51, 51, 102, 0, 51, 51, 153, 0, 51
        DC8 51, 204, 0, 51, 51, 255, 0, 51, 102, 0, 0, 51, 102, 51, 0, 51, 102
        DC8 102, 0, 51, 102, 153, 0, 51, 102, 204, 0, 51, 102, 255, 0, 51, 153
        DC8 0, 0, 51, 153, 51, 0, 51, 153, 102, 0, 51, 153, 153, 0, 51, 153
        DC8 204, 0, 51, 153, 255, 0, 51, 204, 0, 0, 51, 204, 51, 0, 51, 204
        DC8 102, 0, 51, 204, 153, 0, 51, 204, 204, 0, 51, 204, 255, 0, 51, 255
        DC8 51, 0, 51, 255, 102, 0, 51, 255, 153, 0, 51, 255, 204, 0, 51, 255
        DC8 255, 0, 102, 0, 0, 0, 102, 0, 51, 0, 102, 0, 102, 0, 102, 0, 153, 0
        DC8 102, 0, 204, 0, 102, 0, 255, 0, 102, 51, 0, 0, 102, 51, 51, 0, 102
        DC8 51, 102, 0, 102, 51, 153, 0, 102, 51, 204, 0, 102, 51, 255, 0, 102
        DC8 102, 0, 0, 102, 102, 51, 0, 102, 102, 102, 0, 102, 102, 153, 0, 102
        DC8 102, 204, 0, 102, 153, 0, 0, 102, 153, 51, 0, 102, 153, 102, 0, 102
        DC8 153, 153, 0, 102, 153, 204, 0, 102, 153, 255, 0, 102, 204, 0, 0
        DC8 102, 204, 51, 0, 102, 204, 153, 0, 102, 204, 204, 0, 102, 204, 255
        DC8 0, 102, 255, 0, 0, 102, 255, 51, 0, 102, 255, 153, 0, 102, 255, 204
        DC8 0, 204, 0, 255, 0, 255, 0, 204, 0, 153, 153, 0, 0, 153, 51, 153, 0
        DC8 153, 0, 153, 0, 153, 0, 204, 0, 153, 0, 0, 0, 153, 51, 51, 0, 153
        DC8 0, 102, 0, 153, 51, 204, 0, 153, 0, 255, 0, 153, 102, 0, 0, 153
        DC8 102, 51, 0, 153, 51, 102, 0, 153, 102, 153, 0, 153, 102, 204, 0
        DC8 153, 51, 255, 0, 153, 153, 51, 0, 153, 153, 102, 0, 153, 153, 153
        DC8 0, 153, 153, 204, 0, 153, 153, 255, 0, 153, 204, 0, 0, 153, 204, 51
        DC8 0, 102, 204, 102, 0, 153, 204, 153, 0, 153, 204, 204, 0, 153, 204
        DC8 255, 0, 153, 255, 0, 0, 153, 255, 51, 0, 153, 204, 102, 0, 153, 255
        DC8 153, 0, 153, 255, 204, 0, 153, 255, 255, 0, 204, 0, 0, 0, 153, 0
        DC8 51, 0, 204, 0, 102, 0, 204, 0, 153, 0, 204, 0, 204, 0, 153, 51, 0
        DC8 0, 204, 51, 51, 0, 204, 51, 102, 0, 204, 51, 153, 0, 204, 51, 204
        DC8 0, 204, 51, 255, 0, 204, 102, 0, 0, 204, 102, 51, 0, 153, 102, 102
        DC8 0, 204, 102, 153, 0, 204, 102, 204, 0, 153, 102, 255, 0, 204, 153
        DC8 0, 0, 204, 153, 51, 0, 204, 153, 102, 0, 204, 153, 153, 0, 204, 153
        DC8 204, 0, 204, 153, 255, 0, 204, 204, 0, 0, 204, 204, 51, 0, 204, 204
        DC8 102, 0, 204, 204, 153, 0, 204, 204, 204, 0, 204, 204, 255, 0, 204
        DC8 255, 0, 0, 204, 255, 51, 0, 153, 255, 102, 0, 204, 255, 153, 0, 204
        DC8 255, 204, 0, 204, 255, 255, 0, 204, 0, 51, 0, 255, 0, 102, 0, 255
        DC8 0, 153, 0, 204, 51, 0, 0, 255, 51, 51, 0, 255, 51, 102, 0, 255, 51
        DC8 153, 0, 255, 51, 204, 0, 255, 51, 255, 0, 255, 102, 0, 0, 255, 102
        DC8 51, 0, 204, 102, 102, 0, 255, 102, 153, 0, 255, 102, 204, 0, 204
        DC8 102, 255, 0, 255, 153, 0, 0, 255, 153, 51, 0, 255, 153, 102, 0, 255
        DC8 153, 153, 0, 255, 153, 204, 0, 255, 153, 255, 0, 255, 204, 0, 0
        DC8 255, 204, 51, 0, 255, 204, 102, 0, 255, 204, 153, 0, 255, 204, 204
        DC8 0, 255, 204, 255, 0, 255, 255, 51, 0, 204, 255, 102, 0, 255, 255
        DC8 153, 0, 255, 255, 204, 0, 102, 102, 255, 0, 102, 255, 102, 0, 102
        DC8 255, 255, 0, 255, 102, 102, 0, 255, 102, 255, 0, 255, 255, 102, 0
        DC8 33, 0, 165, 0, 95, 95, 95, 0, 119, 119, 119, 0, 134, 134, 134, 0
        DC8 150, 150, 150, 0, 203, 203, 203, 0, 178, 178, 178, 0, 215, 215, 215
        DC8 0, 221, 221, 221, 0, 227, 227, 227, 0, 234, 234, 234, 0, 241, 241
        DC8 241, 0, 248, 248, 248, 0, 240, 251, 255, 0, 164, 160, 160, 0, 128
        DC8 128, 128, 0, 0, 0, 255, 0, 0, 255, 0, 0, 0, 255, 255, 0, 255, 0, 0
        DC8 0, 255, 0, 255, 0, 255, 255, 0, 0, 255, 255, 255, 0
//   19     // Color Look Up Table (256) bytes
//   20     #if 1
//   21 	0,0,0,0,0,0,128,0,0,128,0,0,0,128,128,0,128,0,0,0,128,0,128,0,128,128,0,0,192,192,192,0,
//   22 	192,220,192,0,240,202,166,0,51,0,0,0,0,0,51,0,51,0,51,0,51,51,0,0,22,22,22,0,28,28,28,0,
//   23 	34,34,34,0,41,41,41,0,85,85,85,0,77,77,77,0,66,66,66,0,57,57,57,0,128,124,255,0,80,80,255,0,
//   24 	147,0,214,0,255,236,204,0,198,214,239,0,214,231,231,0,144,169,173,0,0,255,51,0,0,0,102,0,0,0,153,0,
//   25 	0,0,204,0,0,51,0,0,0,51,51,0,0,51,102,0,0,51,153,0,0,51,204,0,0,51,255,0,0,102,0,0,
//   26 	0,102,51,0,0,102,102,0,0,102,153,0,0,102,204,0,0,102,255,0,0,153,0,0,0,153,51,0,0,153,102,0,
//   27 	0,153,153,0,0,153,204,0,0,153,255,0,0,204,0,0,0,204,51,0,0,204,102,0,0,204,153,0,0,204,204,0,
//   28 	0,204,255,0,0,255,102,0,0,255,153,0,0,255,204,0,51,255,0,0,255,0,51,0,51,0,102,0,51,0,153,0,
//   29 	51,0,204,0,51,0,255,0,255,51,0,0,51,51,51,0,51,51,102,0,51,51,153,0,51,51,204,0,51,51,255,0,
//   30 	51,102,0,0,51,102,51,0,51,102,102,0,51,102,153,0,51,102,204,0,51,102,255,0,51,153,0,0,51,153,51,0,
//   31 	51,153,102,0,51,153,153,0,51,153,204,0,51,153,255,0,51,204,0,0,51,204,51,0,51,204,102,0,51,204,153,0,
//   32 	51,204,204,0,51,204,255,0,51,255,51,0,51,255,102,0,51,255,153,0,51,255,204,0,51,255,255,0,102,0,0,0,
//   33 	102,0,51,0,102,0,102,0,102,0,153,0,102,0,204,0,102,0,255,0,102,51,0,0,102,51,51,0,102,51,102,0,
//   34 	102,51,153,0,102,51,204,0,102,51,255,0,102,102,0,0,102,102,51,0,102,102,102,0,102,102,153,0,102,102,204,0,
//   35 	102,153,0,0,102,153,51,0,102,153,102,0,102,153,153,0,102,153,204,0,102,153,255,0,102,204,0,0,102,204,51,0,
//   36 	102,204,153,0,102,204,204,0,102,204,255,0,102,255,0,0,102,255,51,0,102,255,153,0,102,255,204,0,204,0,255,0,
//   37 	255,0,204,0,153,153,0,0,153,51,153,0,153,0,153,0,153,0,204,0,153,0,0,0,153,51,51,0,153,0,102,0,
//   38 	153,51,204,0,153,0,255,0,153,102,0,0,153,102,51,0,153,51,102,0,153,102,153,0,153,102,204,0,153,51,255,0,
//   39 	153,153,51,0,153,153,102,0,153,153,153,0,153,153,204,0,153,153,255,0,153,204,0,0,153,204,51,0,102,204,102,0,
//   40 	153,204,153,0,153,204,204,0,153,204,255,0,153,255,0,0,153,255,51,0,153,204,102,0,153,255,153,0,153,255,204,0,
//   41 	153,255,255,0,204,0,0,0,153,0,51,0,204,0,102,0,204,0,153,0,204,0,204,0,153,51,0,0,204,51,51,0,
//   42 	204,51,102,0,204,51,153,0,204,51,204,0,204,51,255,0,204,102,0,0,204,102,51,0,153,102,102,0,204,102,153,0,
//   43 	204,102,204,0,153,102,255,0,204,153,0,0,204,153,51,0,204,153,102,0,204,153,153,0,204,153,204,0,204,153,255,0,
//   44 	204,204,0,0,204,204,51,0,204,204,102,0,204,204,153,0,204,204,204,0,204,204,255,0,204,255,0,0,204,255,51,0,
//   45 	153,255,102,0,204,255,153,0,204,255,204,0,204,255,255,0,204,0,51,0,255,0,102,0,255,0,153,0,204,51,0,0,
//   46 	255,51,51,0,255,51,102,0,255,51,153,0,255,51,204,0,255,51,255,0,255,102,0,0,255,102,51,0,204,102,102,0,
//   47 	255,102,153,0,255,102,204,0,204,102,255,0,255,153,0,0,255,153,51,0,255,153,102,0,255,153,153,0,255,153,204,0,
//   48 	255,153,255,0,255,204,0,0,255,204,51,0,255,204,102,0,255,204,153,0,255,204,204,0,255,204,255,0,255,255,51,0,
//   49 	204,255,102,0,255,255,153,0,255,255,204,0,102,102,255,0,102,255,102,0,102,255,255,0,255,102,102,0,255,102,255,0,
//   50 	255,255,102,0,33,0,165,0,95,95,95,0,119,119,119,0,134,134,134,0,150,150,150,0,203,203,203,0,178,178,178,0,
//   51 	215,215,215,0,221,221,221,0,227,227,227,0,234,234,234,0,241,241,241,0,248,248,248,0,240,251,255,0,164,160,160,0,
//   52 	128,128,128,0,0,0,255,0,0,255,0,0,0,255,255,0,255,0,0,0,255,0,255,0,255,255,0,0,255,255,255,0,
//   53 #endif
//   54 	#if 0
//   55 	0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 
//   56 	 0x80, 0x00, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0xc0, 0xc0, 0xc0, 0x00, 0xc0, 0xdc, 0xc0, 0x00, 0xa6, 0xca, 0xf0, 0x00,
//   57 	 0x00, 0x00, 0x33, 0x00, 0x33, 0x00, 0x00, 0x00, 0x33, 0x00, 0x33, 0x00, 0x00, 0x33, 0x33, 0x00, 0x16, 0x16, 0x16, 0x00, 
//   58 	 0x1c, 0x1c, 0x1c, 0x00, 0x22, 0x22, 0x22, 0x00, 0x29, 0x29, 0x29, 0x00, 0x55, 0x55, 0x55, 0x00, 0x4d, 0x4d, 0x4d, 0x00, 0x42, 0x42, 0x42, 0x00, 
//   59 	 0x39, 0x39, 0x39, 0x00, 0xff, 0x7c, 0x80, 0x00, 0xff, 0x50, 0x50, 0x00, 0xd6, 0x00, 0x93, 0x00, 0xcc, 0xec, 0xff, 0x00, 
//   60 	 0xef, 0xd6, 0xc6, 0x00, 0xe7, 0xe7, 0xd6, 0x00, 0xad, 0xa9, 0x90, 0x00, 0x33, 0xff, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00,
//   61 	 0x99, 0x00, 0x00, 0x00, 0xcc, 0x00, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x33, 0x33, 0x00, 0x00, 0x66, 0x33, 0x00, 0x00, 0x99, 0x33, 0x00, 0x00, 
//   62 	 0xcc, 0x33, 0x00, 0x00, 0xff, 0x33, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x33, 0x66, 0x00, 0x00, 0x66, 0x66, 0x00, 0x00, 
//   63 	 0x99, 0x66, 0x00, 0x00, 0xcc, 0x66, 0x00, 0x00, 0xff, 0x66, 0x00, 0x00, 0x00, 0x99, 0x00, 0x00, 0x33, 0x99, 0x00, 0x00, 
//   64 	 0x66, 0x99, 0x00, 0x00, 0x99, 0x99, 0x00, 0x00, 0xcc, 0x99, 0x00, 0x00, 0xff, 0x99, 0x00, 0x00, 0x00, 0xcc, 0x00, 0x00, 0x33, 0xcc, 0x00, 0x00, 
//   65 	 0x66, 0xcc, 0x00, 0x00, 0x99, 0xcc, 0x00, 0x00, 0xcc, 0xcc, 0x00, 0x00, 0xff, 0xcc, 0x00, 0x00, 0x66, 0xff, 0x00, 0x00, 
//   66 	 0x99, 0xff, 0x00, 0x00, 0xcc, 0xff, 0x00, 0x00, 0x00, 0xff, 0x33, 0x00, 0x33, 0x00, 0xff, 0x00, 0x66, 0x00, 0x33, 0x00, 
//   67 	 0x99, 0x00, 0x33, 0x00, 0xcc, 0x00, 0x33, 0x00, 0xff, 0x00, 0x33, 0x00, 0x00, 0x33, 0xff, 0x00, 0x33, 0x33, 0x33, 0x00, 0x66, 0x33, 0x33, 0x00, 
//   68 	 0x99, 0x33, 0x33, 0x00, 0xcc, 0x33, 0x33, 0x00, 0xff, 0x33, 0x33, 0x00, 0x00, 0x66, 0x33, 0x00, 0x33, 0x66, 0x33, 0x00, 
//   69 	 0x66, 0x66, 0x33, 0x00, 0x99, 0x66, 0x33, 0x00, 0xcc, 0x66, 0x33, 0x00, 0xff, 0x66, 0x33, 0x00, 0x00, 0x99, 0x33, 0x00, 
//   70 	 0x33, 0x99, 0x33, 0x00, 0x66, 0x99, 0x33, 0x00, 0x99, 0x99, 0x33, 0x00, 0xcc, 0x99, 0x33, 0x00, 0xff, 0x99, 0x33, 0x00, 0x00, 0xcc, 0x33, 0x00, 
//   71 	 0x33, 0xcc, 0x33, 0x00, 0x66, 0xcc, 0x33, 0x00, 0x99, 0xcc, 0x33, 0x00, 0xcc, 0xcc, 0x33, 0x00, 0xff, 0xcc, 0x33, 0x00, 
//   72 	 0x33, 0xff, 0x33, 0x00, 0x66, 0xff, 0x33, 0x00, 0x99, 0xff, 0x33, 0x00, 0xcc, 0xff, 0x33, 0x00, 0xff, 0xff, 0x33, 0x00, 
//   73 	 0x00, 0x00, 0x66, 0x00, 0x33, 0x00, 0x66, 0x00, 0x66, 0x00, 0x66, 0x00, 0x99, 0x00, 0x66, 0x00, 0xcc, 0x00, 0x66, 0x00, 0xff, 0x00, 0x66, 0x00, 
//   74 	 0x00, 0x33, 0x66, 0x00, 0x33, 0x33, 0x66, 0x00, 0x66, 0x33, 0x66, 0x00, 0x99, 0x33, 0x66, 0x00, 0xcc, 0x33, 0x66, 0x00, 
//   75 	 0xff, 0x33, 0x66, 0x00, 0x00, 0x66, 0x66, 0x00, 0x33, 0x66, 0x66, 0x00, 0x66, 0x66, 0x66, 0x00, 0x99, 0x66, 0x66, 0x00, 
//   76 	 0xcc, 0x66, 0x66, 0x00, 0x00, 0x99, 0x66, 0x00, 0x33, 0x99, 0x66, 0x00, 0x66, 0x99, 0x66, 0x00, 0x99, 0x99, 0x66, 0x00, 0xcc, 0x99, 0x66, 0x00, 
//   77 	 0xff, 0x99, 0x66, 0x00, 0x00, 0xcc, 0x66, 0x00, 0x33, 0xcc, 0x66, 0x00, 0x99, 0xcc, 0x66, 0x00, 0xcc, 0xcc, 0x66, 0x00, 
//   78 	 0xff, 0xcc, 0x66, 0x00, 0x00, 0xff, 0x66, 0x00, 0x33, 0xff, 0x66, 0x00, 0x99, 0xff, 0x66, 0x00, 0xcc, 0xff, 0x66, 0x00, 
//   79 	 0xff, 0x00, 0xcc, 0x00, 0xcc, 0x00, 0xff, 0x00, 0x00, 0x99, 0x99, 0x00, 0x99, 0x33, 0x99, 0x00, 0x99, 0x00, 0x99, 0x00, 0xcc, 0x00, 0x99, 0x00, 
//   80 	 0x00, 0x00, 0x99, 0x00, 0x33, 0x33, 0x99, 0x00, 0x66, 0x00, 0x99, 0x00, 0xcc, 0x33, 0x99, 0x00, 0xff, 0x00, 0x99, 0x00, 
//   81 	 0x00, 0x66, 0x99, 0x00, 0x33, 0x66, 0x99, 0x00, 0x66, 0x33, 0x99, 0x00, 0x99, 0x66, 0x99, 0x00, 0xcc, 0x66, 0x99, 0x00, 
//   82 	 0xff, 0x33, 0x99, 0x00, 0x33, 0x99, 0x99, 0x00, 0x66, 0x99, 0x99, 0x00, 0x99, 0x99, 0x99, 0x00, 0xcc, 0x99, 0x99, 0x00, 0xff, 0x99, 0x99, 0x00, 
//   83 	 0x00, 0xcc, 0x99, 0x00, 0x33, 0xcc, 0x99, 0x00, 0x66, 0xcc, 0x66, 0x00, 0x99, 0xcc, 0x99, 0x00, 0xcc, 0xcc, 0x99, 0x00, 
//   84 	 0xff, 0xcc, 0x99, 0x00, 0x00, 0xff, 0x99, 0x00, 0x33, 0xff, 0x99, 0x00, 0x66, 0xcc, 0x99, 0x00, 0x99, 0xff, 0x99, 0x00, 
//   85 	 0xcc, 0xff, 0x99, 0x00, 0xff, 0xff, 0x99, 0x00, 0x00, 0x00, 0xcc, 0x00, 0x33, 0x00, 0x99, 0x00, 0x66, 0x00, 0xcc, 0x00, 0x99, 0x00, 0xcc, 0x00, 
//   86 	 0xcc, 0x00, 0xcc, 0x00, 0x00, 0x33, 0x99, 0x00, 0x33, 0x33, 0xcc, 0x00, 0x66, 0x33, 0xcc, 0x00, 0x99, 0x33, 0xcc, 0x00, 
//   87 	 0xcc, 0x33, 0xcc, 0x00, 0xff, 0x33, 0xcc, 0x00, 0x00, 0x66, 0xcc, 0x00, 0x33, 0x66, 0xcc, 0x00, 0x66, 0x66, 0x99, 0x00, 
//   88 	 0x99, 0x66, 0xcc, 0x00, 0xcc, 0x66, 0xcc, 0x00, 0xff, 0x66, 0x99, 0x00, 0x00, 0x99, 0xcc, 0x00, 0x33, 0x99, 0xcc, 0x00, 0x66, 0x99, 0xcc, 0x00, 
//   89 	 0x99, 0x99, 0xcc, 0x00, 0xcc, 0x99, 0xcc, 0x00, 0xff, 0x99, 0xcc, 0x00, 0x00, 0xcc, 0xcc, 0x00, 0x33, 0xcc, 0xcc, 0x00, 
//   90 	 0x66, 0xcc, 0xcc, 0x00, 0x99, 0xcc, 0xcc, 0x00, 0xcc, 0xcc, 0xcc, 0x00, 0xff, 0xcc, 0xcc, 0x00, 0x00, 0xff, 0xcc, 0x00, 
//   91 	 0x33, 0xff, 0xcc, 0x00, 0x66, 0xff, 0x99, 0x00, 0x99, 0xff, 0xcc, 0x00, 0xcc, 0xff, 0xcc, 0x00, 0xff, 0xff, 0xcc, 0x00, 0x33, 0x00, 0xcc, 0x00, 
//   92 	 0x66, 0x00, 0xff, 0x00, 0x99, 0x00, 0xff, 0x00, 0x00, 0x33, 0xcc, 0x00, 0x33, 0x33, 0xff, 0x00, 0x66, 0x33, 0xff, 0x00, 
//   93 	 0x99, 0x33, 0xff, 0x00, 0xcc, 0x33, 0xff, 0x00, 0xff, 0x33, 0xff, 0x00, 0x00, 0x66, 0xff, 0x00, 0x33, 0x66, 0xff, 0x00, 
//   94 	 0x66, 0x66, 0xcc, 0x00, 0x99, 0x66, 0xff, 0x00, 0xcc, 0x66, 0xff, 0x00, 0xff, 0x66, 0xcc, 0x00, 0x00, 0x99, 0xff, 0x00, 0x33, 0x99, 0xff, 0x00, 
//   95 	 0x66, 0x99, 0xff, 0x00, 0x99, 0x99, 0xff, 0x00, 0xcc, 0x99, 0xff, 0x00, 0xff, 0x99, 0xff, 0x00, 0x00, 0xcc, 0xff, 0x00, 
//   96 	 0x33, 0xcc, 0xff, 0x00, 0x66, 0xcc, 0xff, 0x00, 0x99, 0xcc, 0xff, 0x00, 0xcc, 0xcc, 0xff, 0x00, 0xff, 0xcc, 0xff, 0x00, 
//   97 	 0x33, 0xff, 0xff, 0x00, 0x66, 0xff, 0xcc, 0x00, 0x99, 0xff, 0xff, 0x00, 0xcc, 0xff, 0xff, 0x00, 0xff, 0x66, 0x66, 0x00, 0x66, 0xff, 0x66, 0x00, 
//   98 	 0xff, 0xff, 0x66, 0x00, 0x66, 0x66, 0xff, 0x00, 0xff, 0x66, 0xff, 0x00, 0x66, 0xff, 0xff, 0x00, 0xa5, 0x00, 0x21, 0x00, 
//   99 	 0x5f, 0x5f, 0x5f, 0x00, 0x77, 0x77, 0x77, 0x00, 0x86, 0x86, 0x86, 0x00, 0x96, 0x96, 0x96, 0x00, 0xcb, 0xcb, 0xcb, 0x00, 
//  100 	 0xb2, 0xb2, 0xb2, 0x00, 0xd7, 0xd7, 0xd7, 0x00, 0xdd, 0xdd, 0xdd, 0x00, 0xe3, 0xe3, 0xe3, 0x00, 0xea, 0xea, 0xea, 0x00, 0xf1, 0xf1, 0xf1, 0x00, 
//  101 	 0xf8, 0xf8, 0xf8, 0x00, 0xff, 0xfb, 0xf0, 0x00, 0xa0, 0xa0, 0xa4, 0x00, 0x80, 0x80, 0x80, 0x00, 0xff, 0x00, 0x00, 0x00, 
//  102 	 0x00, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00, 0xff, 0x00, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xff, 0xff, 0xff, 0x00
//  103 
//  104 #endif
//  105  }; 
//  106 
//  107 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  108 uint8_t SpiOsdWinRegs[10 * 0x10];
SpiOsdWinRegs:
        DS8 160
//  109 
//  110 
//  111 
//  112 extern uint8_t gucSpiFlash4ByteMode;
//  113 extern uint8_t SPICMD_x_READ;
//  114 extern uint8_t SPICMD_x_BYTES;
//  115 
//  116 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SpiOsdEnable
        THUMB
//  117 void SpiOsdEnable( uint8_t en )
//  118 {
SpiOsdEnable:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  119     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  120 
//  121     if(en)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SpiOsdEnable_0
//  122     {
//  123         TW8836_Write(REG400, TW8836_Read(REG400) | 0x04);
        MOVS     R0,#+0
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ORRS     R1,R0,#0x4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall TW8836_Write
        BL       TW8836_Write
        B.N      ??SpiOsdEnable_1
//  124     }
//  125     else
//  126     {
//  127         TW8836_Write(REG400, TW8836_Read(REG400) & 0xFB);
??SpiOsdEnable_0:
        MOVS     R0,#+0
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ANDS     R1,R0,#0xFB
        MOVS     R0,#+0
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  128     }
//  129 }
??SpiOsdEnable_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  130 
//  131 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SpiOsdSetDeValue
        THUMB
//  132 void SpiOsdSetDeValue( void )
//  133 {
SpiOsdSetDeValue:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  134     uint16_t temp = 0;
        MOVS     R4,#+0
//  135     uint8_t  HDE  = 0, PCLK0 = 0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//  136 
//  137     TW8836_WritePage(TW8836_PAGE2_SCALER);
        MOVS     R0,#+2
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  138 
//  139     HDE   = TW8836_Read(REG210);
        MOVS     R0,#+16
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        MOVS     R5,R0
//  140     PCLK0 = TW8836_Read(REG20D) & 0x03;
        MOVS     R0,#+13
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ANDS     R0,R0,#0x3
        MOVS     R6,R0
//  141 
//  142     temp  = HDE + PCLK0 - 18;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R6,R5
        SUBS     R0,R0,#+18
        MOVS     R4,R0
//  143 
//  144     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  145     TW8836_Write(REG40E, (uint8_t)(temp >> 0x08));
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+14
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  146     TW8836_Write(REG40F, (uint8_t)(temp >> 0x00));
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+15
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  147 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1
//  148 
//  149 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function SpiOsdWinEnable
          CFI NoCalls
        THUMB
//  150 void SpiOsdWinEnable( uint8_t winno, uint8_t en )
//  151 {
//  152     uint8_t *dat = gtSpiOsd.reg[winno];
SpiOsdWinEnable:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable23
        LDR      R2,[R2, R0, LSL #+2]
//  153 
//  154     if(en) *dat |= 0x01;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??SpiOsdWinEnable_0
        LDRB     R3,[R2, #+0]
        ORRS     R3,R3,#0x1
        STRB     R3,[R2, #+0]
        B.N      ??SpiOsdWinEnable_1
//  155     else   *dat &= 0xFE;
??SpiOsdWinEnable_0:
        LDRB     R3,[R2, #+0]
        ANDS     R3,R3,#0xFE
        STRB     R3,[R2, #+0]
//  156 }
??SpiOsdWinEnable_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  157 
//  158 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function SpiOsdAlphaBlending
          CFI NoCalls
        THUMB
//  159 void SpiOsdAlphaBlending( uint8_t winno, uint8_t en, uint8_t mode, uint8_t alpha )
//  160 {
SpiOsdAlphaBlending:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  161     uint8_t *dat = gtSpiOsd.reg[winno];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable23
        LDR      R4,[R4, R0, LSL #+2]
//  162 
//  163     if(en)   *dat |= 0x10;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??SpiOsdAlphaBlending_0
        LDRB     R5,[R4, #+0]
        ORRS     R5,R5,#0x10
        STRB     R5,[R4, #+0]
        B.N      ??SpiOsdAlphaBlending_1
//  164     else     *dat &= 0xEF;
??SpiOsdAlphaBlending_0:
        LDRB     R5,[R4, #+0]
        ANDS     R5,R5,#0xEF
        STRB     R5,[R4, #+0]
//  165 
//  166     if(mode) *dat |= 0x20;  /*Per Pixel Alpha*/
??SpiOsdAlphaBlending_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??SpiOsdAlphaBlending_2
        LDRB     R5,[R4, #+0]
        ORRS     R5,R5,#0x20
        STRB     R5,[R4, #+0]
        B.N      ??SpiOsdAlphaBlending_3
//  167     else     *dat &= 0xDF;  /*Global Window 1 Alpha*/
??SpiOsdAlphaBlending_2:
        LDRB     R5,[R4, #+0]
        ANDS     R5,R5,#0xDF
        STRB     R5,[R4, #+0]
//  168 
//  169     dat += SPIOSD_WIN_ALPHA;
??SpiOsdAlphaBlending_3:
        ADDW     R4,R4,#+12
//  170 
//  171     if(winno == 0) dat += 4;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??SpiOsdAlphaBlending_4
        ADDS     R4,R4,#+4
//  172 
//  173     *dat = alpha;
??SpiOsdAlphaBlending_4:
        STRB     R3,[R4, #+0]
//  174 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  175 
//  176 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function SpiOsdSetBitsPixel
          CFI NoCalls
        THUMB
//  177 void SpiOsdSetBitsPixel( uint8_t winno, uint8_t bpp )
//  178 {
SpiOsdSetBitsPixel:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  179     uint8_t *dat = gtSpiOsd.reg[winno];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable23
        LDR      R2,[R2, R0, LSL #+2]
//  180     uint8_t mode = 0;
        MOVS     R3,#+0
//  181 
//  182     if(bpp == 4)      mode = 0;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+4
        BNE.N    ??SpiOsdSetBitsPixel_0
        MOVS     R4,#+0
        MOVS     R3,R4
        B.N      ??SpiOsdSetBitsPixel_1
//  183     else if(bpp == 6) mode = 1;
??SpiOsdSetBitsPixel_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+6
        BNE.N    ??SpiOsdSetBitsPixel_2
        MOVS     R4,#+1
        MOVS     R3,R4
        B.N      ??SpiOsdSetBitsPixel_1
//  184     else              mode = 2;
??SpiOsdSetBitsPixel_2:
        MOVS     R4,#+2
        MOVS     R3,R4
//  185 
//  186     *dat &= 0x3F;
??SpiOsdSetBitsPixel_1:
        LDRB     R4,[R2, #+0]
        ANDS     R4,R4,#0x3F
        STRB     R4,[R2, #+0]
//  187     *dat |= (mode << 6);
        LDRB     R4,[R2, #+0]
        ORRS     R4,R4,R3, LSL #+6
        STRB     R4,[R2, #+0]
//  188 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  189 
//  190 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SpiOsdLutOffset
          CFI NoCalls
        THUMB
//  191 void SpiOsdLutOffset( uint8_t winno,  uint8_t lut_offset )
//  192 {
//  193     uint8_t *dat = gtSpiOsd.reg[winno];
SpiOsdLutOffset:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable23
        LDR      R2,[R2, R0, LSL #+2]
//  194 
//  195     dat += SPIOSD_WIN_LUT_PTR;
        ADDW     R2,R2,#+13
//  196 
//  197     if(winno == 0) dat += 4;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??SpiOsdLutOffset_0
        ADDS     R2,R2,#+4
//  198 
//  199     *dat = lut_offset >> 4;
??SpiOsdLutOffset_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSRS     R3,R1,#+4
        STRB     R3,[R2, #+0]
//  200 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  201 
//  202 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function SpiOsdBuffWidth
          CFI NoCalls
        THUMB
//  203 void SpiOsdBuffWidth( uint8_t winno, uint16_t w, uint16_t h )
//  204 {
SpiOsdBuffWidth:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  205     uint8_t *dat = gtSpiOsd.reg[winno];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable23
        LDR      R3,[R3, R0, LSL #+2]
//  206 
//  207     uint8_t temp = 0;
        MOVS     R4,#+0
//  208 
//  209     dat += SPIOSD_WIN_DISPSIZE;
        ADDW     R3,R3,#+10
//  210 
//  211     if(winno)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SpiOsdBuffWidth_0
//  212     {
//  213         temp = *dat & 0xC0;
        LDRB     R5,[R3, #+0]
        ANDS     R5,R5,#0xC0
        MOVS     R4,R5
//  214         *dat++ = (uint8_t)(w >> 8 | temp);
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R5,R1,#+8
        ORRS     R5,R4,R5
        STRB     R5,[R3, #+0]
        ADDS     R3,R3,#+1
//  215         *dat++ = (uint8_t)(w);
        STRB     R1,[R3, #+0]
        ADDS     R3,R3,#+1
        B.N      ??SpiOsdBuffWidth_1
//  216     }
//  217     else
//  218     {
//  219         temp   = (uint8_t)(h >> 8);
??SpiOsdBuffWidth_0:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R5,R2,#+8
        MOVS     R4,R5
//  220         temp <<= 4;
        LSLS     R4,R4,#+4
//  221         temp  |= (uint8_t)(w >> 8);
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R5,R1,#+8
        ORRS     R4,R5,R4
//  222 
//  223         *dat++ = temp;
        STRB     R4,[R3, #+0]
        ADDS     R3,R3,#+1
//  224         *dat++ = (uint8_t)w;
        STRB     R1,[R3, #+0]
        ADDS     R3,R3,#+1
//  225         *dat++ = (uint8_t)h;
        STRB     R2,[R3, #+0]
        ADDS     R3,R3,#+1
//  226     }
//  227 }
??SpiOsdBuffWidth_1:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//  228 
//  229 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function SpiOsdSpiStartAddress
          CFI NoCalls
        THUMB
//  230 void SpiOsdSpiStartAddress( uint8_t winno, uint32_t address )
//  231 {
//  232     uint8_t *dat = gtSpiOsd.reg[winno];
SpiOsdSpiStartAddress:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable23
        LDR      R2,[R2, R0, LSL #+2]
//  233 
//  234     dat += SPIOSD_WIN_BUFFERSTART;
        ADDW     R2,R2,#+7
//  235 
//  236     *dat++ = (uint8_t)(address >> 20);
        LSRS     R3,R1,#+20
        STRB     R3,[R2, #+0]
        ADDS     R2,R2,#+1
//  237     *dat++ = (uint8_t)(address >> 12);
        LSRS     R3,R1,#+12
        STRB     R3,[R2, #+0]
        ADDS     R2,R2,#+1
//  238     *dat   = (uint8_t)(address >> 4 );
        LSRS     R3,R1,#+4
        STRB     R3,[R2, #+0]
//  239 
//  240     if(winno == 0) dat += 0x0E;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??SpiOsdSpiStartAddress_0
        ADDW     R2,R2,#+14
        B.N      ??SpiOsdSpiStartAddress_1
//  241     else           dat += 0x06;
??SpiOsdSpiStartAddress_0:
        ADDW     R2,R2,#+6
//  242 
//  243     *dat   = (uint8_t)(address & 0x0F);
??SpiOsdSpiStartAddress_1:
        ANDS     R3,R1,#0xF
        STRB     R3,[R2, #+0]
//  244 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  245 
//  246 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function SpiOsdWindowPosAndSize
          CFI NoCalls
        THUMB
//  247 void SpiOsdWindowPosAndSize( uint8_t winno, uint16_t start_h, uint16_t start_v, uint16_t len_h, uint16_t len_v )
//  248 {
SpiOsdWindowPosAndSize:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        LDR      R4,[SP, #+16]
//  249     uint8_t *dat = gtSpiOsd.reg[winno];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R5,??DataTable23
        LDR      R5,[R5, R0, LSL #+2]
//  250 
//  251     uint8_t temp = 0;
        MOVS     R6,#+0
//  252 
//  253     dat += SPIOSD_WIN_WINDOW;
        ADDS     R5,R5,#+1
//  254 
//  255     temp   = (start_v >> 8);
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSRS     R7,R2,#+8
        MOVS     R6,R7
//  256     temp <<= 4;
        LSLS     R6,R6,#+4
//  257     temp  |= (start_h >> 8);
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R7,R1,#+8
        ORRS     R6,R7,R6
//  258 
//  259     *dat++ = temp;
        STRB     R6,[R5, #+0]
        ADDS     R5,R5,#+1
//  260     *dat++ = (uint8_t)start_h;
        STRB     R1,[R5, #+0]
        ADDS     R5,R5,#+1
//  261     *dat++ = (uint8_t)start_v;
        STRB     R2,[R5, #+0]
        ADDS     R5,R5,#+1
//  262 
//  263     temp   = (len_v >> 8);
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSRS     R7,R4,#+8
        MOVS     R6,R7
//  264     temp <<= 4;
        LSLS     R6,R6,#+4
//  265     temp  |= (len_h >> 8);
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LSRS     R7,R3,#+8
        ORRS     R6,R7,R6
//  266 
//  267     *dat++ = temp;
        STRB     R6,[R5, #+0]
        ADDS     R5,R5,#+1
//  268     *dat++ = (uint8_t)len_h;
        STRB     R3,[R5, #+0]
        ADDS     R5,R5,#+1
//  269     *dat++ = (uint8_t)len_v;
        STRB     R4,[R5, #+0]
        ADDS     R5,R5,#+1
//  270 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  271 
//  272 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function SpiOsdZoom
          CFI NoCalls
        THUMB
//  273 void SpiOsdZoom( uint8_t winno, uint8_t en )
//  274 {
//  275     uint8_t *dat = gtSpiOsd.reg[winno];
SpiOsdZoom:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable23
        LDR      R2,[R2, R0, LSL #+2]
//  276 
//  277     if(en) *dat |= 0x02;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??SpiOsdZoom_0
        LDRB     R3,[R2, #+0]
        ORRS     R3,R3,#0x2
        STRB     R3,[R2, #+0]
        B.N      ??SpiOsdZoom_1
//  278     else   *dat &= 0xFD;
??SpiOsdZoom_0:
        LDRB     R3,[R2, #+0]
        ANDS     R3,R3,#0xFD
        STRB     R3,[R2, #+0]
//  279 }
??SpiOsdZoom_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  280 
//  281 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function SpiOsdFillColor
          CFI NoCalls
        THUMB
//  282 void SpiOsdFillColor( uint8_t winno, uint8_t en, uint8_t fill_color )
//  283 {
SpiOsdFillColor:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  284     uint8_t *dat = gtSpiOsd.reg[winno];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R3,??DataTable23
        LDR      R3,[R3, R0, LSL #+2]
//  285 
//  286     if(en) *dat |= 0x04;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??SpiOsdFillColor_0
        LDRB     R4,[R3, #+0]
        ORRS     R4,R4,#0x4
        STRB     R4,[R3, #+0]
        B.N      ??SpiOsdFillColor_1
//  287     else   *dat &= 0xFB;
??SpiOsdFillColor_0:
        LDRB     R4,[R3, #+0]
        ANDS     R4,R4,#0xFB
        STRB     R4,[R3, #+0]
//  288 
//  289     dat += SPIOSD_WIN_FILLCOLOR;
??SpiOsdFillColor_1:
        ADDW     R3,R3,#+14
//  290 
//  291     *dat = fill_color;
        STRB     R2,[R3, #+0]
//  292 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  293 
//  294 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function SpiOsdSetLut
          CFI NoCalls
        THUMB
//  295 void SpiOsdSetLut( uint8_t winno, uint8_t type, uint16_t lut_offset, uint16_t size, uint32_t addr, uint8_t alpha )
//  296 {
SpiOsdSetLut:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        LDR      R5,[SP, #+16]
        LDR      R4,[SP, #+20]
//  297     SPIOSD_LUT *lut = &gtSpiOsd.lut[winno];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R6,??DataTable23
        ADDS     R6,R6,R0, LSL #+4
        ADDW     R6,R6,#+36
//  298 
//  299     lut->type   = 0x80 | type;
        ORRS     R7,R1,#0x80
        STRB     R7,[R6, #+0]
//  300     lut->offset = lut_offset;
        STRH     R2,[R6, #+2]
//  301     lut->size   = size;
        STRH     R3,[R6, #+4]
//  302     lut->addr   = addr;
        STR      R5,[R6, #+8]
//  303     lut->alpha  = alpha;
        STRB     R4,[R6, #+12]
//  304 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  305 
//  306 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function SpiOsdSetRlc
          CFI NoCalls
        THUMB
//  307 void SpiOsdSetRlc( uint8_t winno, uint8_t bpp, uint8_t counter )
//  308 {
SpiOsdSetRlc:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  309     SPIOSD_RLC *rlc;
//  310 
//  311     if(winno == 0)
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SpiOsdSetRlc_0
//  312     {
//  313         return;
//  314     }
//  315 
//  316     if((winno == 1) || (winno == 2))
??SpiOsdSetRlc_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.N    ??SpiOsdSetRlc_2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??SpiOsdSetRlc_3
//  317     {
//  318         rlc = &gtSpiOsd.rlc[1]; /*Group B*/
??SpiOsdSetRlc_2:
        LDR.W    R4,??DataTable23_1
        MOVS     R3,R4
        B.N      ??SpiOsdSetRlc_4
//  319     }
//  320     else
//  321     {
//  322         rlc = &gtSpiOsd.rlc[0]; /*Group A*/
??SpiOsdSetRlc_3:
        LDR.W    R4,??DataTable23_2
        MOVS     R3,R4
//  323     }
//  324 
//  325     rlc->winno   = winno;
??SpiOsdSetRlc_4:
        STRB     R0,[R3, #+0]
//  326     rlc->bpp     = bpp;
        STRB     R1,[R3, #+1]
//  327     rlc->counter = counter;
        STRB     R2,[R3, #+2]
//  328 }
??SpiOsdSetRlc_0:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  329 
//  330 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function SpiOsdInit
        THUMB
//  331 void SpiOsdInit( void )
//  332 {
SpiOsdInit:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  333     uint8_t winno = 0, offset = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  334 
//  335     for(winno = 0; winno < 9; winno++)
        MOVS     R0,#+0
        MOVS     R4,R0
??SpiOsdInit_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+9
        BCS.N    ??SpiOsdInit_1
//  336     {
//  337         if(winno) offset = winno + 0x01;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SpiOsdInit_2
        ADDS     R0,R4,#+1
        MOVS     R5,R0
        B.N      ??SpiOsdInit_3
//  338         else      offset = 0x00;
??SpiOsdInit_2:
        MOVS     R0,#+0
        MOVS     R5,R0
//  339 
//  340         gtSpiOsd.reg[winno] = &SpiOsdWinRegs[offset << 0x04];
??SpiOsdInit_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable23
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.W    R1,??DataTable23_3
        ADDS     R1,R1,R5, LSL #+4
        STR      R1,[R0, R4, LSL #+2]
//  341     }
        ADDS     R4,R4,#+1
        B.N      ??SpiOsdInit_0
//  342 
//  343     SpiOsdClrLut();
??SpiOsdInit_1:
          CFI FunCall SpiOsdClrLut
        BL       SpiOsdClrLut
//  344     SpiOsdClrReg();
          CFI FunCall SpiOsdClrReg
        BL       SpiOsdClrReg
//  345     SpiOsdClrRlc();
          CFI FunCall SpiOsdClrRlc
        BL       SpiOsdClrRlc
//  346 
//  347     SpiOsdUpdateReg(0, 8);
        MOVS     R1,#+8
        MOVS     R0,#+0
          CFI FunCall SpiOsdUpdateReg
        BL       SpiOsdUpdateReg
//  348     SpiOsdUpdateRlc();
          CFI FunCall SpiOsdUpdateRlc
        BL       SpiOsdUpdateRlc
//  349 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock13
//  350 
//  351 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function SpiOsdClrReg
          CFI NoCalls
        THUMB
//  352 void SpiOsdClrReg( void )
//  353 {
//  354     uint8_t i = 0;
SpiOsdClrReg:
        MOVS     R0,#+0
//  355 
//  356     for(i = 0; i < 10 * 0x10; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??SpiOsdClrReg_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+160
        BCS.N    ??SpiOsdClrReg_1
//  357     {
//  358         SpiOsdWinRegs[i] = 0x00;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable23_3
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
//  359     }
        ADDS     R0,R0,#+1
        B.N      ??SpiOsdClrReg_0
//  360 }
??SpiOsdClrReg_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  361 
//  362 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function SpiOsdClrLut
          CFI NoCalls
        THUMB
//  363 void SpiOsdClrLut( void )
//  364 {
//  365     uint8_t winno = 0;
SpiOsdClrLut:
        MOVS     R0,#+0
//  366 
//  367     SPIOSD_LUT *lut;
//  368 
//  369     for(winno = 0; winno < 9; winno++)
        MOVS     R2,#+0
        MOVS     R0,R2
??SpiOsdClrLut_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+9
        BCS.N    ??SpiOsdClrLut_1
//  370     {
//  371         lut = &gtSpiOsd.lut[winno];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable23
        ADDS     R2,R2,R0, LSL #+4
        ADDW     R2,R2,#+36
        MOVS     R1,R2
//  372 
//  373         lut->type   = 0;
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//  374         lut->offset = 0;
        MOVS     R2,#+0
        STRH     R2,[R1, #+2]
//  375         lut->size   = 0;
        MOVS     R2,#+0
        STRH     R2,[R1, #+4]
//  376         lut->addr   = 0;
        MOVS     R2,#+0
        STR      R2,[R1, #+8]
//  377         lut->alpha  = 0xFF;
        MOVS     R2,#+255
        STRB     R2,[R1, #+12]
//  378     }
        ADDS     R0,R0,#+1
        B.N      ??SpiOsdClrLut_0
//  379 }
??SpiOsdClrLut_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  380 
//  381 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function SpiOsdClrRlc
          CFI NoCalls
        THUMB
//  382 void SpiOsdClrRlc( void )
//  383 {
//  384     uint8_t i = 0;
SpiOsdClrRlc:
        MOVS     R0,#+0
//  385 
//  386     SPIOSD_RLC *rlc;
//  387 
//  388     for(i = 0; i < 2; i++)
        MOVS     R2,#+0
        MOVS     R0,R2
??SpiOsdClrRlc_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BCS.N    ??SpiOsdClrRlc_1
//  389     {
//  390         rlc = &gtSpiOsd.rlc[i];
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R2,#+3
        LDR.W    R3,??DataTable23
        MLA      R2,R2,R0,R3
        ADDW     R2,R2,#+180
        MOVS     R1,R2
//  391 
//  392         rlc->winno   = 0;
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//  393         rlc->bpp     = 0;
        MOVS     R2,#+0
        STRB     R2,[R1, #+1]
//  394         rlc->counter = 0;
        MOVS     R2,#+0
        STRB     R2,[R1, #+2]
//  395     }
        ADDS     R0,R0,#+1
        B.N      ??SpiOsdClrRlc_0
//  396 }
??SpiOsdClrRlc_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  397 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function SpiOsdClrRlc_updateReg
        THUMB
//  398 void SpiOsdClrRlc_updateReg( void )
//  399 {
SpiOsdClrRlc_updateReg:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  400     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  401 	TW8836_Write(0x04,0);
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  402 	TW8836_Write(0x06,0);
        MOVS     R1,#+0
        MOVS     R0,#+6
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  403 
//  404 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock17
//  405 
//  406 
//  407 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function SpiOsdUpdateReg
        THUMB
//  408 void SpiOsdUpdateReg( uint8_t begin_winno, uint8_t end_winno )
//  409 {
SpiOsdUpdateReg:
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
//  410     uint8_t i = 0, winno = 0, reg = 0;
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
//  411 
//  412     uint8_t *dat;
//  413 
//  414     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  415 
//  416     for(winno = begin_winno; winno <= end_winno; winno++)
        MOVS     R7,R4
??SpiOsdUpdateReg_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R5,R7
        BCC.N    ??SpiOsdUpdateReg_1
//  417     {
//  418         dat = gtSpiOsd.reg[winno];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable23
        LDR      R0,[R0, R7, LSL #+2]
        MOV      R9,R0
//  419         reg = SpiOsdWinBase[winno];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable23_4
        LDRB     R0,[R7, R0]
        MOV      R8,R0
//  420 
//  421 		//WriteTW88(dat+0x04, 0);
//  422 		//WriteTW88(dat+0x05, 0);
//  423 
//  424 		if(Sys.Main_Source==SRC_NAVI)
        LDR.W    R0,??DataTable23_5
        LDRB     R0,[R0, #+2]
        CMP      R0,#+3
        BNE.N    ??SpiOsdUpdateReg_2
//  425 			{
//  426 				for(i = 0x0e; i >0; i--)   TW8836_Write(reg+i-1, dat[i-1]);
        MOVS     R0,#+14
        MOVS     R6,R0
??SpiOsdUpdateReg_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BCC.N    ??SpiOsdUpdateReg_4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R6,R9
        LDRB     R1,[R0, #-1]
        ADDS     R0,R6,R8
        SUBS     R0,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
        SUBS     R6,R6,#+1
        B.N      ??SpiOsdUpdateReg_3
//  427 			}
//  428 		else		
//  429 			{
//  430         for(i = 0; i < 0x10; i++)   TW8836_Write(reg+i, dat[i]);
??SpiOsdUpdateReg_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??SpiOsdUpdateReg_5:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+16
        BCS.N    ??SpiOsdUpdateReg_4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R9]
        ADDS     R0,R6,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
        ADDS     R6,R6,#+1
        B.N      ??SpiOsdUpdateReg_5
//  431 			}
//  432 
//  433         if(winno == 0)
??SpiOsdUpdateReg_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??SpiOsdUpdateReg_6
//  434         {
//  435             for( ; i < 0x17; i++)   TW8836_Write(reg+i, dat[i]);
??SpiOsdUpdateReg_7:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+23
        BCS.N    ??SpiOsdUpdateReg_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R9]
        ADDS     R0,R6,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
        ADDS     R6,R6,#+1
        B.N      ??SpiOsdUpdateReg_7
//  436         }
//  437     }
??SpiOsdUpdateReg_6:
        ADDS     R7,R7,#+1
        B.N      ??SpiOsdUpdateReg_0
//  438 }
??SpiOsdUpdateReg_1:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock18
//  439 
//  440 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function SpiOsdUpdateReg_update_win
        THUMB
//  441 void SpiOsdUpdateReg_update_win( uint8_t begin_winno, uint8_t end_winno )
//  442 {
SpiOsdUpdateReg_update_win:
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
//  443     uint8_t i = 0, winno = 0, reg = 0;
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
//  444 
//  445     uint8_t *dat;
//  446 
//  447     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  448 
//  449     for(winno = begin_winno; winno <= end_winno; winno++)
        MOVS     R7,R4
??SpiOsdUpdateReg_update_win_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R5,R7
        BCC.N    ??SpiOsdUpdateReg_update_win_1
//  450     {
//  451         dat = gtSpiOsd.reg[winno];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable23
        LDR      R0,[R0, R7, LSL #+2]
        MOV      R9,R0
//  452         reg = SpiOsdWinBase[winno];
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable23_4
        LDRB     R0,[R7, R0]
        MOV      R8,R0
//  453 
//  454         for(i = 0x07; i < 0x0a; i++)   TW8836_Write(reg+i, dat[i]);
        MOVS     R0,#+7
        MOVS     R6,R0
??SpiOsdUpdateReg_update_win_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+10
        BCS.N    ??SpiOsdUpdateReg_update_win_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R9]
        ADDS     R0,R6,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
        ADDS     R6,R6,#+1
        B.N      ??SpiOsdUpdateReg_update_win_2
//  455 
//  456         if(winno == 0)
//  457         {
//  458        //     for( ; i < 0x17; i++)   TW8836_Write(reg+i, dat[i]);
//  459         }
//  460     }
??SpiOsdUpdateReg_update_win_3:
        ADDS     R7,R7,#+1
        B.N      ??SpiOsdUpdateReg_update_win_0
//  461 }
??SpiOsdUpdateReg_update_win_1:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock19
//  462 
//  463 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function SpiOsdUpdateLut
        THUMB
//  464 void SpiOsdUpdateLut( uint8_t winno, uint8_t alpha )
//  465 {
SpiOsdUpdateLut:
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
//  466 	uint8_t i,j;
//  467 	uint16_t k;
//  468 	uint8_t bTemp;
//  469 	SPIOSD_LUT *lut;
//  470 	lut  = &gtSpiOsd.lut[winno];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable23
        ADDS     R0,R0,R4, LSL #+4
        ADDW     R0,R0,#+36
        MOV      R9,R0
//  471 #ifdef DEBUG_OSD
//  472 	dPrintf("\n\rSpiOsdIoLoadLUT%s win:%bd, LutLoc:%d size:%d 0x%06lx", type ? "S":" ", _winno, LutOffset, size, spiaddr);
//  473 #endif
//  474 
//  475 //#if defined(TW8836_CHIPDEBUG)
//  476 //#else
//  477 //	McuSpiClkToPclk(PLLCLK_DIV_3P0);	//BKFYI.DIV_2P0 is better.
//  478 //#endif
//  479 
//  480 	TW8836_WritePage(TW8836_PAGE4_SPI_OSD );
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  481 
//  482 	//--- SPI-OSD config
//  483 	bTemp = SOSD_LUT_WEN;
        MOVS     R0,#+128
        MOV      R8,R0
//  484 	bTemp |= SOSD_LUT_INC_COLM;	
        ORRS     R8,R8,#0x20
//  485 	if(winno==1 || winno==2)	bTemp |= SOSD_LUT_BGRP;		
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SpiOsdUpdateLut_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??SpiOsdUpdateLut_1
??SpiOsdUpdateLut_0:
        ORRS     R8,R8,#0x4
        B.N      ??SpiOsdUpdateLut_2
//  486 	else if(lut->offset >> 8)		bTemp |= SOSD_LUT_HIGH256; 
??SpiOsdUpdateLut_1:
        LDRH     R0,[R9, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SpiOsdUpdateLut_2
        ORRS     R8,R8,#0x8
//  487 
//  488 
//  489 		WriteTW88(REG410, bTemp);			
??SpiOsdUpdateLut_2:
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+16
          CFI FunCall WriteTW88
        BL       WriteTW88
//  490 		WriteTW88(REG411, (uint8_t)lut->offset);		//reset address ptr.
        LDRH     R1,[R9, #+2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+17
          CFI FunCall WriteTW88
        BL       WriteTW88
//  491 
//  492 if(1)
//  493 {
//  494 		for(i=0; i < (lut->size / 64); i++ ) {		//min size is a 64(16*4)
        MOVS     R0,#+0
        MOVS     R6,R0
??SpiOsdUpdateLut_3:
        LDRH     R0,[R9, #+4]
        MOVS     R1,#+64
        SDIV     R0,R0,R1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R0
        BGE.N    ??SpiOsdUpdateLut_4
//  495 			SpiFlashReadRLE2Header(SPI_Buffer,lut->addr + i*64,64);
        MOVS     R2,#+64
        LDR      R0,[R9, #+8]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,#+64
        MLA      R1,R1,R6,R0
        LDR.N    R0,??DataTable23_6
          CFI FunCall SpiFlashReadRLE2Header
        BL       SpiFlashReadRLE2Header
//  496 			for(k=0; k < 64; k++)
        MOVS     R0,#+0
        MOVS     R7,R0
??SpiOsdUpdateLut_5:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+64
        BCS.N    ??SpiOsdUpdateLut_6
//  497 				WriteTW88(REG412, SPI_Buffer[k]);		//write data
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        LDR.N    R0,??DataTable23_6
        LDRB     R1,[R7, R0]
        MOVS     R0,#+18
          CFI FunCall WriteTW88
        BL       WriteTW88
        ADDS     R7,R7,#+1
        B.N      ??SpiOsdUpdateLut_5
//  498 				}
??SpiOsdUpdateLut_6:
        ADDS     R6,R6,#+1
        B.N      ??SpiOsdUpdateLut_3
//  499 }
//  500 else
//  501 {
//  502 			for(k=0; k < (256*4); k++)
//  503 				WriteTW88(REG412, bmp_LUT[k]);		//write data
//  504 }
//  505 	//pixel alpha
//  506 	if(alpha!=0xFF) {
??SpiOsdUpdateLut_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+255
        BEQ.N    ??SpiOsdUpdateLut_7
//  507 		lut->offset += alpha;
        LDRH     R0,[R9, #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R5,R0
        STRH     R0,[R9, #+2]
//  508 
//  509 		bTemp = SOSD_LUT_WEN | SOSD_LUT_INC_NO | SOSD_LUT_ATTR ; 
        MOVS     R0,#+131
        MOV      R8,R0
//  510 		if(winno==1 || winno==2)	bTemp |= SOSD_LUT_BGRP;	
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SpiOsdUpdateLut_8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??SpiOsdUpdateLut_9
??SpiOsdUpdateLut_8:
        ORRS     R8,R8,#0x4
        B.N      ??SpiOsdUpdateLut_10
//  511 		else if(lut->offset >> 8)		bTemp |= SOSD_LUT_HIGH256;
??SpiOsdUpdateLut_9:
        LDRH     R0,[R9, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LSRS     R0,R0,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SpiOsdUpdateLut_10
        ORRS     R8,R8,#0x8
//  512 	
//  513 		WriteTW88(REG410, bTemp);
??SpiOsdUpdateLut_10:
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+16
          CFI FunCall WriteTW88
        BL       WriteTW88
//  514 		WriteTW88(REG411, (uint8_t)lut->offset );
        LDRH     R1,[R9, #+2]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+17
          CFI FunCall WriteTW88
        BL       WriteTW88
//  515 		WriteTW88(REG412, 0x7F );
        MOVS     R1,#+127
        MOVS     R0,#+18
          CFI FunCall WriteTW88
        BL       WriteTW88
//  516 	}
//  517 
//  518 
//  519 #if defined(TW8836_CHIPDEBUG)
//  520 #else
//  521 //	McuSpiClkRestore();
//  522 #endif
//  523 }
??SpiOsdUpdateLut_7:
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock20
//  524 #if 0
//  525 {
//  526     SPIOSD_LUT *lut;
//  527 
//  528     uint8_t  ucType = 0;
//  529 
//  530     uint8_t  ucTemp = 0;
//  531     uint16_t uiTemp = 0;
//  532     uint32_t ulTemp = 0;
//  533 
//  534 
//  535     lut  = &gtSpiOsd.lut[winno];
//  536 
//  537     ucType = lut->type;
//  538 
//  539     if((ucType & 0x80) == 0x00) return;
//  540 
//  541     ucType &= SPIOSD_LUT_MASK;
//  542 
//  543     if(ucType == SPIOSD_LUT_ADDR) return;
//  544 
//  545 
//  546     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
//  547 
//  548     ucTemp = SPIOSD_LUT_WEN;
//  549 
//  550     if(ucType == SPIOSD_LUT_ADDR) ucTemp |= SPIOSD_LUT_INC_ADDR;
//  551     else                          ucTemp |= SPIOSD_LUT_INC_BYTE;
//  552 
//  553     if((winno == 1) || (winno == 2))
//  554     {
//  555         ucTemp |= SPIOSD_LUT_SEL;
//  556     }
//  557     else
//  558     {
//  559         if(lut->offset & 0x0F00)
//  560         {
//  561             ucTemp |= SPIOSD_LUT_ADDR_H;
//  562         }
//  563     }
//  564 
//  565 
//  566     /*8-BIT SPIOSD Look Up Table Access Control*/
//  567     TW8836_Write(REG410, ucTemp);
//  568 
//  569     /*8-BIT SPIOSD Look Up Table Address*/
//  570     TW8836_Write(REG411, (uint8_t)(lut->offset));
//  571 
//  572     /*Flash Busy Control : No Busy Check & Read Mode*/
//  573     TW8836_Write(REG4C4, 0x00);
//  574 
//  575     /*DMA Control Register*/
//  576     SpiFlashDmaControl(DMA_RW_DEST_SOSD_LUT, DMA_RW_MODE_INCREASE, SPICMD_x_BYTES + gucSpiFlash4ByteMode);
//  577 
//  578 
//  579     /*DMA Page & Index Register*/
//  580     uiTemp = lut->offset;
//  581     
//  582     if(ucType == SPIOSD_LUT_ADDR)
//  583     {
//  584         TW8836_Write(REG4C6, (uint8_t)(uiTemp >> 8));
//  585         TW8836_Write(REG4C7, (uint8_t)(uiTemp));
//  586     }
//  587     else
//  588     {
//  589         TW8836_Write(REG4C6, (uint8_t)(uiTemp >> 6));
//  590         TW8836_Write(REG4C7, (uint8_t)(uiTemp << 2));
//  591     }
//  592 
//  593 
//  594     /*DMA Length High , MID, Low Byte*/
//  595     uiTemp = lut->size;
//  596 
//  597     TW8836_Write(REG4DA, 0x00);
//  598     TW8836_Write(REG4C8, (uint8_t)(uiTemp >> 8));
//  599     TW8836_Write(REG4C9, (uint8_t)(uiTemp));
//  600 
//  601 
//  602     /*DMA Command Buffer*/
//  603     ulTemp = lut->addr;
//  604 
//  605     TW8836_Write(REG4CA, SPICMD_x_READ);
//  606 
//  607     if(gucSpiFlash4ByteMode)
//  608     {
//  609         TW8836_Write(REG4CB, (uint8_t)(ulTemp >> 24));
//  610         TW8836_Write(REG4CC, (uint8_t)(ulTemp >> 16));
//  611         TW8836_Write(REG4CD, (uint8_t)(ulTemp >> 8));
//  612         TW8836_Write(REG4CE, (uint8_t)(ulTemp));
//  613     }
//  614     else
//  615     {
//  616         TW8836_Write(REG4CB, (uint8_t)(ulTemp >> 16));
//  617         TW8836_Write(REG4CC, (uint8_t)(ulTemp >> 8));
//  618         TW8836_Write(REG4CD, (uint8_t)(ulTemp));
//  619     }
//  620 
//  621 
//  622     /*DMA Start*/
//  623     TW8836_Write(REG4C4, 0x01);
//  624 
//  625 
//  626     if(alpha)
//  627     {
//  628         ucTemp = lut->alpha;
//  629 
//  630         if(ucTemp != 0xFF)
//  631         {
//  632             uiTemp += ucTemp;
//  633 
//  634             ucTemp = SPIOSD_LUT_WEN | SPIOSD_LUT_BYT;
//  635 
//  636             if((winno == 1) || (winno == 2))
//  637             {
//  638                 ucTemp |= SPIOSD_LUT_SEL;
//  639             }
//  640             else
//  641             {
//  642                 if(uiTemp >> 8)
//  643                 {
//  644                     ucTemp |= SPIOSD_LUT_ADDR_H;
//  645                 }
//  646             }
//  647 
//  648             TW8836_Write(REG410, ucTemp);
//  649             TW8836_Write(REG411, (uint8_t)uiTemp);
//  650             TW8836_Write(REG412, 0x7F);
//  651         }
//  652     }
//  653 }
//  654 #endif
//  655 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function SpiOsdUpdateRlc
        THUMB
//  656 void SpiOsdUpdateRlc( void )
//  657 {
SpiOsdUpdateRlc:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//  658     uint8_t i = 0, temp = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  659 
//  660     SPIOSD_RLC *rlc;
//  661 
//  662     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  663 
//  664     for(i = 0; i < 2; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??SpiOsdUpdateRlc_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BCS.N    ??SpiOsdUpdateRlc_1
//  665     {
//  666         rlc = &gtSpiOsd.rlc[i];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+3
        LDR.N    R1,??DataTable23
        MLA      R0,R0,R4,R1
        ADDW     R0,R0,#+180
        MOVS     R6,R0
//  667 
//  668         TW8836_Write(REG404 + i * 2, rlc->winno << 0x04);
        LDRB     R0,[R6, #+0]
        LSLS     R1,R0,#+4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  669 
//  670         temp = rlc->bpp;
        LDRB     R0,[R6, #+1]
        MOVS     R5,R0
//  671 
//  672         if(temp == 7) temp++;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BNE.N    ??SpiOsdUpdateRlc_2
        ADDS     R5,R5,#+1
//  673 
//  674         temp <<= 0x04;
??SpiOsdUpdateRlc_2:
        LSLS     R5,R5,#+4
//  675 
//  676         temp |= (rlc->counter & 0x0F);
        LDRB     R0,[R6, #+2]
        ANDS     R0,R0,#0xF
        ORRS     R5,R0,R5
//  677 
//  678         TW8836_Write(REG405 + i * 2, temp);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  679     }
        ADDS     R4,R4,#+1
        B.N      ??SpiOsdUpdateRlc_0
//  680 }
??SpiOsdUpdateRlc_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock21
//  681 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function SpiOsdUpdateRlc_user
        THUMB
//  682 void SpiOsdUpdateRlc_user( uint8_t winno )
//  683 {
SpiOsdUpdateRlc_user:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  684     uint8_t i = 0, temp = 0;
        MOVS     R5,#+0
        MOVS     R6,#+0
//  685 
//  686     SPIOSD_RLC *rlc;
//  687 
//  688     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  689 
//  690     //for(i = 0; i < 2; i++)
//  691 	if((winno==1)||(winno==2))
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SpiOsdUpdateRlc_user_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??SpiOsdUpdateRlc_user_1
//  692 		i=1;
??SpiOsdUpdateRlc_user_0:
        MOVS     R0,#+1
        MOVS     R5,R0
//  693 	
//  694     {
//  695         rlc = &gtSpiOsd.rlc[i];
??SpiOsdUpdateRlc_user_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,#+3
        LDR.N    R1,??DataTable23
        MLA      R0,R0,R5,R1
        ADDW     R0,R0,#+180
        MOVS     R7,R0
//  696 
//  697         TW8836_Write(REG404 + i * 2, rlc->winno << 0x04);
        LDRB     R0,[R7, #+0]
        LSLS     R1,R0,#+4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R0,R5,#+1
        ADDS     R0,R0,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  698 
//  699         temp = rlc->bpp;
        LDRB     R0,[R7, #+1]
        MOVS     R6,R0
//  700 
//  701         if(temp == 7) temp++;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+7
        BNE.N    ??SpiOsdUpdateRlc_user_2
        ADDS     R6,R6,#+1
//  702 
//  703         temp <<= 0x04;
??SpiOsdUpdateRlc_user_2:
        LSLS     R6,R6,#+4
//  704 
//  705         temp |= (rlc->counter & 0x0F);
        LDRB     R0,[R7, #+2]
        ANDS     R0,R0,#0xF
        ORRS     R6,R0,R6
//  706 
//  707         TW8836_Write(REG405 + i * 2, temp);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R0,R5,#+1
        ADDS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  708     }
//  709 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock22
//  710 
//  711 
//  712 /*================================
//  713 fun:transparent some color
//  714 by Miller.Tao20150912
//  715 
//  716 
//  717 =================================*/
//  718 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function SpiOsdSetGlobalAlpha
          CFI NoCalls
        THUMB
//  719 void SpiOsdSetGlobalAlpha( uint8_t winno, uint8_t alpha )
//  720 {
//  721 	 uint8_t  *data_p;
//  722 
//  723 	data_p = gtSpiOsd.reg[winno];
SpiOsdSetGlobalAlpha:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable23
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R2,R3
//  724 
//  725 	*data_p &= 0xCF;
        LDRB     R3,[R2, #+0]
        ANDS     R3,R3,#0xCF
        STRB     R3,[R2, #+0]
//  726 	if(alpha) *data_p |= 0x10;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??SpiOsdSetGlobalAlpha_0
        LDRB     R3,[R2, #+0]
        ORRS     R3,R3,#0x10
        STRB     R3,[R2, #+0]
//  727 
//  728 	data_p += SPIOSD_WIN_ALPHA;
??SpiOsdSetGlobalAlpha_0:
        ADDW     R2,R2,#+12
//  729 	if(!winno)	data_p += 4;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??SpiOsdSetGlobalAlpha_1
        ADDS     R2,R2,#+4
//  730 	*data_p = alpha;
??SpiOsdSetGlobalAlpha_1:
        STRB     R1,[R2, #+0]
//  731 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  732 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function SpiOsdSetPixelAlpha
          CFI NoCalls
        THUMB
//  733 void SpiOsdSetPixelAlpha( uint8_t winno, uint8_t alpha )
//  734 {
//  735 	 uint8_t  *data_p;
//  736 
//  737 	data_p = gtSpiOsd.reg[winno];
SpiOsdSetPixelAlpha:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable23
        LDR      R3,[R3, R0, LSL #+2]
        MOVS     R2,R3
//  738 
//  739 	if(alpha)	*data_p |= 0x30;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??SpiOsdSetPixelAlpha_0
        LDRB     R3,[R2, #+0]
        ORRS     R3,R3,#0x30
        STRB     R3,[R2, #+0]
        B.N      ??SpiOsdSetPixelAlpha_1
//  740 	else		*data_p &= 0xCF;
??SpiOsdSetPixelAlpha_0:
        LDRB     R3,[R2, #+0]
        ANDS     R3,R3,#0xCF
        STRB     R3,[R2, #+0]
//  741 
//  742 	data_p += SPIOSD_WIN_ALPHA;//SPI_OSDWIN_ALPHA;
??SpiOsdSetPixelAlpha_1:
        ADDW     R2,R2,#+12
//  743 	if(!winno)	data_p += 4;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??SpiOsdSetPixelAlpha_2
        ADDS     R2,R2,#+4
//  744 	*data_p = alpha;
??SpiOsdSetPixelAlpha_2:
        STRB     R1,[R2, #+0]
//  745 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
//  746 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function SpiOsdPixelAlphaAttr
        THUMB
//  747 void SpiOsdPixelAlphaAttr(uint32_t lutloc, uint8_t value)
//  748 {
SpiOsdPixelAlphaAttr:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  749     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  750 
//  751     TW8836_Write(REG410, 0xC3);
        MOVS     R1,#+195
        MOVS     R0,#+16
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  752 
//  753     if(lutloc & 0x100)  TW8836_Write(REG410, TW8836_Read(REG410) | 0x08);
        LSLS     R0,R4,#+23
        BPL.N    ??SpiOsdPixelAlphaAttr_0
        MOVS     R0,#+16
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ORRS     R1,R0,#0x8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+16
          CFI FunCall TW8836_Write
        BL       TW8836_Write
        B.N      ??SpiOsdPixelAlphaAttr_1
//  754     else                TW8836_Write(REG410, TW8836_Read(REG410) & 0xF7);
??SpiOsdPixelAlphaAttr_0:
        MOVS     R0,#+16
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ANDS     R1,R0,#0xF7
        MOVS     R0,#+16
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  755 
//  756     TW8836_Write(REG411, (uint8_t)lutloc);
??SpiOsdPixelAlphaAttr_1:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+17
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  757     TW8836_Write(REG412, value);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+18
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  758 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock25
//  759 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function SpiOsdPixelAlphaAttr_user
        THUMB
//  760 void SpiOsdPixelAlphaAttr_user(uint8_t winno, uint16_t alpha, uint8_t value)
//  761 {
SpiOsdPixelAlphaAttr_user:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  762 	uint8_t bTemp=0;
        MOVS     R7,#+0
//  763 	SPIOSD_LUT *lut;
//  764 	//lut  = &gtSpiOsd.lut[winno];
//  765 	
//  766 	//if(alpha!=0xFF) 
//  767 		{
//  768 		//lut->offset += alpha;
//  769 
//  770 		bTemp = SOSD_LUT_WEN | SOSD_LUT_INC_NO | SOSD_LUT_ATTR ; 
        MOVS     R0,#+131
        MOVS     R7,R0
//  771 		if(winno==1 || winno==2)	bTemp |= SOSD_LUT_BGRP; 
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SpiOsdPixelAlphaAttr_user_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??SpiOsdPixelAlphaAttr_user_1
??SpiOsdPixelAlphaAttr_user_0:
        ORRS     R7,R7,#0x4
        B.N      ??SpiOsdPixelAlphaAttr_user_2
//  772 		else if(alpha >> 8)		bTemp |= SOSD_LUT_HIGH256;
??SpiOsdPixelAlphaAttr_user_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??SpiOsdPixelAlphaAttr_user_2
        ORRS     R7,R7,#0x8
//  773 
//  774 		WriteTW88(REG410, bTemp);
??SpiOsdPixelAlphaAttr_user_2:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+16
          CFI FunCall WriteTW88
        BL       WriteTW88
//  775 		WriteTW88(REG411, (uint8_t)alpha );
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+17
          CFI FunCall WriteTW88
        BL       WriteTW88
//  776 		WriteTW88(REG412, value );
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+18
          CFI FunCall WriteTW88
        BL       WriteTW88
//  777 	}
//  778 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock26
//  779 
//  780 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function SpiOsdWinGlobalAlpha
        THUMB
//  781 void SpiOsdWinGlobalAlpha(uint8_t winno, uint8_t alpha)
//  782 {
SpiOsdWinGlobalAlpha:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  783     uint32_t index = SpiOsdWinBase[winno];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable23_4
        LDRB     R6,[R4, R0]
//  784 
//  785     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  786 
//  787     TW8836_Write(index, TW8836_Read(index) & 0xCF);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ANDS     R1,R0,#0xCF
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  788 
//  789     if(alpha) TW8836_Write(index, TW8836_Read(index) | 0x10);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SpiOsdWinGlobalAlpha_0
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ORRS     R1,R0,#0x10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  790 
//  791     if(winno) index += 0x0C;
??SpiOsdWinGlobalAlpha_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SpiOsdWinGlobalAlpha_1
        ADDS     R6,R6,#+12
        B.N      ??SpiOsdWinGlobalAlpha_2
//  792     else      index += 0x10;
??SpiOsdWinGlobalAlpha_1:
        ADDS     R6,R6,#+16
//  793 
//  794     TW8836_Write(index, alpha);
??SpiOsdWinGlobalAlpha_2:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  795 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock27
//  796 
//  797 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function SpiOsdWinPixelAlpha
        THUMB
//  798 void SpiOsdWinPixelAlpha(uint8_t winno, uint8_t alpha)
//  799 {
SpiOsdWinPixelAlpha:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  800     uint32_t index = SpiOsdWinBase[winno];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable23_4
        LDRB     R6,[R4, R0]
//  801 
//  802     TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  803 
//  804     if(alpha) TW8836_Write(index, TW8836_Read(index) | 0x30);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SpiOsdWinPixelAlpha_0
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ORRS     R1,R0,#0x30
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
        B.N      ??SpiOsdWinPixelAlpha_1
//  805     else      TW8836_Write(index, TW8836_Read(index) & 0xCF);
??SpiOsdWinPixelAlpha_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ANDS     R1,R0,#0xCF
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  806 
//  807     if(winno) index += 0x0C;
??SpiOsdWinPixelAlpha_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SpiOsdWinPixelAlpha_2
        ADDS     R6,R6,#+12
        B.N      ??SpiOsdWinPixelAlpha_3
//  808     else      index += 0x10;
??SpiOsdWinPixelAlpha_2:
        ADDS     R6,R6,#+16
//  809 
//  810     TW8836_Write(index, alpha);
??SpiOsdWinPixelAlpha_3:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  811 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     gtSpiOsd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_1:
        DC32     gtSpiOsd+0xB7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_2:
        DC32     gtSpiOsd+0xB4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_3:
        DC32     SpiOsdWinRegs

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_4:
        DC32     SpiOsdWinBase

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_5:
        DC32     EEPROM_DATA

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_6:
        DC32     SPI_Buffer

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  812 
//  813 
// 
//   476 bytes in section .bss
// 1 036 bytes in section .rodata
// 2 136 bytes in section .text
// 
// 2 136 bytes of CODE  memory
// 1 036 bytes of CONST memory
//   476 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
