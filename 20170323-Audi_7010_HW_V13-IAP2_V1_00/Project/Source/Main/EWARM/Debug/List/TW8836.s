///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:41 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\TW8836\TW8836.c                    /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\TW8836\TW8836.c -D                 /
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
//                    \Debug\List\TW8836.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME TW8836

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Delay_1ms
        EXTERN ReadTW88
        EXTERN SpiFlashInit
        EXTERN WriteTW88

        PUBLIC InitTW8836
        PUBLIC TW8836_Configuration
        PUBLIC TW8836_REG_TAB
        PUBLIC TW8836_Read
        PUBLIC TW8836_WaitVBlank
        PUBLIC TW8836_Write
        PUBLIC TW8836_WritePage
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\TW8836\TW8836.c
//    1 #define __TW8836_C__
//    2 
//    3 
//    4 //#include "kernel.h"
//    5 //#include "sI2C.h"
//    6 #include "SPIFlash.h"
//    7 #include "TW8836.h"
//    8 #include "i2c_driver.h"
//    9 #include "libr.h"
//   10 #if 0//miller.tao20150829
//   11 const uint8_t TW8836_REG_TAB[] =
//   12 {
//   13     0xFF, 0x00,  // Page 00
//   14     0x02, 0x49,
//   15     0x03, 0xFF,
//   16     0x04, 0x01,
//   17     0x06, 0x00,
//   18     0x07, 0x02,
//   19     0x08, 0xC0,
//   20     0x0F, 0x00,
//   21     0x1F, 0x00,
//   22     0x40, 0x00,
//   23     0x41, 0xC0,
//   24     0x42, 0x02,
//   25     0x43, 0x20,
//   26     0x44, 0xF0,
//   27     0x45, 0x20,
//   28     0x46, 0xD0,
//   29     0x47, 0x00,
//   30     0x48, 0x00,
//   31     0x4B, 0x10,
//   32     0x50, 0x00,
//   33     0x51, 0x00,
//   34     0x52, 0x00,
//   35     0x53, 0x03,
//   36     0x54, 0x00,
//   37     0x56, 0x00,
//   38     0x57, 0x00,
//   39     0x5F, 0x00,
//   40     0x60, 0x00,
//   41     0x66, 0x30,
//   42     0x67, 0x00,
//   43     0x68, 0x00,
//   44     0x69, 0x02,
//   45     0x6A, 0x20,
//   46     0x6B, 0xF0,
//   47     0x6C, 0x20,
//   48     0x6D, 0xD0,
//   49     0x6E, 0x10,
//   50     0x6F, 0x10,
//   51     0xD4, 0x00,
//   52     0xE7, 0x16,
//   53     0xE8, 0x01,
//   54     0xE9, 0x20,
//   55     0xEA, 0x00,
//   56     0xEB, 0x40,
//   57     0xEC, 0xB0,
//   58     0xED, 0x11,
//   59     0xF6, 0x02,
//   60     0xF7, 0x16,
//   61     0xF8, 0x01,
//   62     0xF9, 0x00,
//   63     0xFA, 0x00,
//   64     0xFB, 0x40,
//   65     0xFC, 0x30,
//   66     0xFD, 0x11,
//   67 
//   68     0xFF, 0x01,  // Page 01
//   69     0x01, 0x83,
//   70     0x02, 0x40,
//   71     0x04, 0x00,
//   72     0x05, 0x00,
//   73     0x06, 0x00,
//   74     0x07, 0x12,
//   75     0x08, 0x12,
//   76     0x09, 0x20,
//   77     0x0A, 0x0A,
//   78     0x0B, 0xD0,
//   79     0x0C, 0xCC,
//   80     0x0D, 0x00,
//   81     0x10, 0x00,
//   82     0x11, 0x5C,
//   83     0x12, 0x11,
//   84     0x13, 0x80,
//   85     0x14, 0x80,
//   86     0x15, 0x00,
//   87     0x17, 0x80,
//   88     0x18, 0x44,
//   89     0x1A, 0x10,
//   90     0x1B, 0x00,
//   91     0x1C, 0x27,
//   92     0x1D, 0x7F,
//   93     0x1E, 0x00,
//   94     0x1F, 0x00,
//   95     0x20, 0x50,
//   96     0x21, 0x22,
//   97     0x22, 0xF0,
//   98     0x23, 0xD8,
//   99     0x24, 0xBC,
//  100     0x25, 0xB8,
//  101     0x26, 0x44,
//  102     0x27, 0x38,
//  103     0x28, 0x00,
//  104     0x29, 0x00,
//  105     0x2A, 0x78,
//  106     0x2B, 0x44,
//  107     0x2C, 0x30,
//  108     0x2D, 0x14,
//  109     0x2E, 0xA5,
//  110     0x2F, 0xE0,
//  111     0x30, 0xD0,
//  112     0x31, 0x00,
//  113     0x32, 0x00,
//  114     0x33, 0x05,
//  115     0x34, 0x1A,
//  116     0x35, 0x00,
//  117     0x36, 0xE3,
//  118     0x37, 0x28,
//  119     0x38, 0xAF,
//  120     0x40, 0x00,
//  121     0x41, 0x80,
//  122     0x42, 0x00,
//  123     0xC0, 0x00,
//  124     0xC1, 0xC7,
//  125     0xC2, 0x01,
//  126     0xC3, 0x03,
//  127     0xC4, 0x5A,
//  128     0xC5, 0x00,
//  129     0xC6, 0x20,
//  130     0xC7, 0x04,
//  131     0xC8, 0x00,
//  132     0xC9, 0x06,
//  133     0xCA, 0x06,
//  134     0xCB, 0x30,
//  135     0xCC, 0x00,
//  136     0xCD, 0x54,
//  137     0xD0, 0x00,
//  138     0xD1, 0xF0,
//  139     0xD2, 0xF0,
//  140     0xD3, 0xF0,
//  141     0xD4, 0x00,
//  142     0xD5, 0x00,
//  143     0xD6, 0x10,
//  144     0xD7, 0x70,
//  145     0xD8, 0x00,
//  146     0xD9, 0x04,
//  147     0xDA, 0x80,
//  148     0xDB, 0x80,
//  149     0xDC, 0x20,
//  150     0xE0, 0x00,
//  151     0xE1, 0x05,
//  152     0xE2, 0xD9,
//  153     0xE3, 0x07,
//  154     0xE4, 0x33,
//  155     0xE5, 0x31,
//  156     0xE6, 0x00,
//  157     0xE7, 0x2A,
//  158     0xE8, 0x01,
//  159     0xE9, 0x00,
//  160     0xEA, 0x03,
//  161     0xF6, 0x30,
//  162     0xF7, 0x00,
//  163     0xF8, 0x00,
//  164     0xF9, 0x00,
//  165     0xFA, 0x38,
//  166 
//  167     0xFF, 0x02,  // Page 02
//  168     0x01, 0x00,
//  169     0x02, 0x20,
//  170     0x03, 0x00,
//  171     0x04, 0x20,
//  172     0x05, 0x00,
//  173     0x06, 0x20,
//  174     0x07, 0x80,
//  175     0x08, 0x10,
//  176     0x09, 0x00,
//  177     0x0A, 0x04,
//  178     0x0B, 0x01,
//  179     0x0C, 0xE0,
//  180     0x0D, 0x42,
//  181     0x0E, 0x10,
//  182     0x0F, 0x00,
//  183     0x10, 0x21,
//  184     0x11, 0xE0,
//  185     0x12, 0x01,
//  186     0x13, 0x00,
//  187     0x14, 0x20,
//  188     0x15, 0x08,
//  189     0x16, 0x10,
//  190     0x17, 0x01,
//  191     0x18, 0x08,
//  192     0x19, 0x40,
//  193     0x1A, 0x00,
//  194     0x1B, 0x00,
//  195     0x1C, 0x22,
//  196     0x1D, 0x40,
//  197     0x1E, 0x03,
//  198     0x20, 0x00,
//  199     0x21, 0x00,
//  200     0x40, 0x10,
//  201     0x41, 0x00,
//  202     0x42, 0x01,
//  203     0x43, 0x00,
//  204     0x44, 0x00,
//  205     0x45, 0x01,
//  206     0x46, 0x00,
//  207     0x47, 0x00,
//  208     0x48, 0x01,
//  209     0x49, 0x10,
//  210     0x4A, 0x00,
//  211     0x4B, 0x00,
//  212     0x4C, 0x10,
//  213     0x4D, 0x80,
//  214     0x4E, 0x00,
//  215     0xE4, 0x00,
//  216     0xF8, 0x00,
//  217     0xF9, 0x80,
//  218 
//  219     0xFF, 0x06,  // Page 06
//  220     0x40, 0x00,
//  221     0x41, 0x00,
//  222     0x42, 0x00,
//  223     0x43, 0x00,
//  224     0x44, 0x00,
//  225     0x46, 0x00,
//  226     0x48, 0x00,
//  227     0x49, 0x00,
//  228     0x4A, 0x00,
//  229     0x4B, 0x00,
//  230     0x4C, 0x00,
//  231     0x4D, 0x00,
//  232     0x4E, 0x00,
//  233 
//  234     0xFF, 0xFF,
//  235 };
//  236 #else

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//  237 const uint8_t TW8836_REG_TAB[] =
TW8836_REG_TAB:
        DATA
        DC8 255, 0, 2, 107, 3, 255, 4, 0, 6, 6, 7, 2, 8, 128, 15, 0, 31, 0, 64
        DC8 3, 65, 17, 66, 36, 67, 32, 68, 88, 69, 89, 70, 0, 71, 0, 72, 0, 75
        DC8 0, 80, 0, 81, 0, 82, 0, 83, 3, 84, 0, 86, 0, 87, 0, 95, 0, 96, 0
        DC8 102, 0, 103, 0, 104, 0, 105, 2, 106, 32, 107, 240, 108, 32, 109
        DC8 208, 110, 16, 111, 16, 212, 0, 231, 22, 232, 1, 233, 220, 234, 0
        DC8 235, 64, 236, 48, 237, 33, 246, 0, 247, 22, 248, 1, 249, 0, 250, 0
        DC8 251, 64, 252, 48, 253, 49, 255, 1, 1, 147, 2, 78, 4, 0, 5, 0, 6, 0
        DC8 7, 2, 8, 21, 9, 240, 10, 15, 11, 208, 12, 204, 13, 0, 16, 128, 17
        DC8 92, 18, 17, 19, 128, 20, 128, 21, 0, 23, 128, 24, 68, 26, 16, 27, 0
        DC8 28, 23, 29, 127, 30, 0, 31, 0, 32, 80, 33, 18, 34, 240, 35, 216, 36
        DC8 188, 37, 184, 38, 68, 39, 56, 40, 0, 41, 0, 42, 120, 43, 68, 44, 48
        DC8 45, 20, 46, 165, 47, 230, 48, 80, 49, 0, 50, 0, 51, 69, 52, 26, 53
        DC8 0, 54, 227, 55, 40, 56, 175, 64, 0, 65, 128, 66, 0, 192, 56, 193
        DC8 199, 194, 209, 195, 3, 196, 14, 197, 22, 198, 32, 199, 4, 200, 0
        DC8 201, 6, 202, 6, 203, 86, 204, 16, 205, 84, 208, 0, 209, 240, 210
        DC8 240, 211, 240, 212, 128, 213, 0, 214, 16, 215, 42, 216, 0, 217, 4
        DC8 218, 128, 219, 128, 220, 32, 224, 0, 225, 5, 226, 217, 227, 7, 228
        DC8 51, 229, 49, 230, 0, 231, 42, 232, 1, 233, 0, 234, 3, 246, 48, 247
        DC8 0, 248, 0, 249, 0, 250, 56, 255, 2, 1, 0, 2, 224, 3, 0, 4, 32, 5, 0
        DC8 6, 30, 7, 128, 8, 18, 9, 0, 10, 4, 11, 14, 12, 0, 13, 129, 14, 64
        DC8 15, 3, 16, 46, 17, 0, 18, 36, 19, 0, 20, 3, 21, 33, 22, 88, 23, 2
        DC8 24, 99, 25, 34, 26, 0, 27, 0, 28, 66, 29, 254, 30, 16, 32, 0, 33, 0
        DC8 64, 16, 65, 0, 66, 5, 67, 1, 68, 100, 69, 244, 70, 0, 71, 10, 72
        DC8 54, 73, 16, 74, 0, 75, 0, 76, 0, 77, 68, 78, 4, 228, 0, 248, 0, 249
        DC8 128, 255, 6, 64, 12, 65, 0, 66, 1, 67, 192, 68, 0, 70, 1, 72, 7, 73
        DC8 1, 74, 0, 75, 48, 76, 64, 77, 23, 78, 0, 255, 255
//  238 {
//  239 	0xFF,0x00,	//; Page 00
//  240 	0x02,0x6B,
//  241 	0x03,0xFF,
//  242 	0x04,0x00,
//  243 	0x06,0x06,
//  244 	0x07,0x02,
//  245 	0x08,0x80,
//  246 	0x0F,0x00,
//  247 	0x1F,0x00,
//  248 	0x40,0x03,
//  249 	0x41,0x11,
//  250 	0x42,0x24,
//  251 	0x43,0x20,
//  252 	0x44,0x58,
//  253 	0x45,0x59,
//  254 	0x46,0x00,
//  255 	0x47,0x00,
//  256 	0x48,0x00,
//  257 	0x4B,0x00,
//  258 	0x50,0x00,
//  259 	0x51,0x00,
//  260 	0x52,0x00,
//  261 	0x53,0x03,
//  262 	0x54,0x00,
//  263 	0x56,0x00,
//  264 	0x57,0x00,
//  265 	0x5F,0x00,
//  266 	0x60,0x00,
//  267 	0x66,0x00,
//  268 	0x67,0x00,
//  269 	0x68,0x00,
//  270 	0x69,0x02,
//  271 	0x6A,0x20,
//  272 	0x6B,0xF0,
//  273 	0x6C,0x20,
//  274 	0x6D,0xD0,
//  275 	0x6E,0x10,
//  276 	0x6F,0x10,
//  277 	0xD4,0x00,
//  278 	0xE7,0x16,
//  279 	0xE8,0x01,
//  280 	0xE9,0xDC,
//  281 	0xEA,0x00,
//  282 	0xEB,0x40,
//  283 	0xEC,0x30,
//  284 	0xED,0x21,
//  285 	0xF6,0x00,
//  286 	0xF7,0x16,
//  287 	0xF8,0x01,
//  288 	0xF9,0x00,
//  289 	0xFA,0x00,
//  290 	0xFB,0x40,
//  291 	0xFC,0x30,
//  292 	0xFD,0x31,
//  293 	
//  294 	0xFF,0x01, // ; Page 01
//  295 	0x01,0x93,
//  296 	0x02,0x4E,
//  297 	0x04,0x00,
//  298 	0x05,0x00,
//  299 	0x06,0x00,
//  300 	0x07,0x02,
//  301 	0x08,0x15,
//  302 	0x09,0xF0,
//  303 	0x0A,0x0F,
//  304 	0x0B,0xD0,
//  305 	0x0C,0xCC,
//  306 	0x0D,0x00,
//  307 	0x10,0x80,
//  308 	0x11,0x5C,
//  309 	0x12,0x11,
//  310 	0x13,0x80,
//  311 	0x14,0x80,
//  312 	0x15,0x00,
//  313 	0x17,0x80,
//  314 	0x18,0x44,
//  315 	0x1A,0x10,
//  316 	0x1B,0x00,
//  317 	0x1C,0x17,
//  318 	0x1D,0x7F,
//  319 	0x1E,0x00,
//  320 	0x1F,0x00,
//  321 	0x20,0x50,
//  322 	0x21,0x12,
//  323 	0x22,0xF0,
//  324 	0x23,0xD8,
//  325 	0x24,0xBC,
//  326 	0x25,0xB8,
//  327 	0x26,0x44,
//  328 	0x27,0x38,
//  329 	0x28,0x00,
//  330 	0x29,0x00,
//  331 	0x2A,0x78,
//  332 	0x2B,0x44,
//  333 	0x2C,0x30,
//  334 	0x2D,0x14,
//  335 	0x2E,0xA5,
//  336 	0x2F,0xE6,
//  337 	0x30,0x50,
//  338 	0x31,0x00,
//  339 	0x32,0x00,
//  340 	0x33,0x45,
//  341 	0x34,0x1A,
//  342 	0x35,0x00,
//  343 	0x36,0xE3,
//  344 	0x37,0x28,
//  345 	0x38,0xAF,
//  346 	0x40,0x00,
//  347 	0x41,0x80,
//  348 	0x42,0x00,
//  349 	0xC0,0x38,
//  350 	0xC1,0xC7,
//  351 	0xC2,0xD1,
//  352 	0xC3,0x03,
//  353 	0xC4,0x0E,
//  354 	0xC5,0x16,
//  355 	0xC6,0x20,
//  356 	0xC7,0x04,
//  357 	0xC8,0x00,
//  358 	0xC9,0x06,
//  359 	0xCA,0x06,
//  360 	0xCB,0x56,
//  361 	0xCC,0x10,
//  362 	0xCD,0x54,
//  363 	0xD0,0x00,
//  364 	0xD1,0xF0,
//  365 	0xD2,0xF0,
//  366 	0xD3,0xF0,
//  367 	0xD4,0x80,
//  368 	0xD5,0x00,
//  369 	0xD6,0x10,
//  370 	0xD7,0x2A,
//  371 	0xD8,0x00,
//  372 	0xD9,0x04,
//  373 	0xDA,0x80,
//  374 	0xDB,0x80,
//  375 	0xDC,0x20,
//  376 	0xE0,0x00,
//  377 	0xE1,0x05,
//  378 	0xE2,0xD9,
//  379 	0xE3,0x07,
//  380 	0xE4,0x33,
//  381 	0xE5,0x31,
//  382 	0xE6,0x00,
//  383 	0xE7,0x2A,
//  384 	0xE8,0x01,
//  385 	0xE9,0x00,
//  386 	0xEA,0x03,
//  387 	0xF6,0x30,
//  388 	0xF7,0x00,
//  389 	0xF8,0x00,
//  390 	0xF9,0x00,
//  391 	0xFA,0x38,
//  392 	
//  393 	0xFF,0x02,	//; Page 02
//  394 	0x01,0x00,
//  395 	0x02,0xE0,
//  396 	0x03,0x00,
//  397 	0x04,0x20,
//  398 	0x05,0x00,
//  399 	0x06,0x1E,
//  400 	0x07,0x80,
//  401 	0x08,0x12,
//  402 	0x09,0x00,
//  403 	0x0A,0x04,
//  404 	0x0B,0x0E,
//  405 	0x0C,0x00,
//  406 	0x0D,0x81,
//  407 	0x0E,0x40,
//  408 	0x0F,0x03,
//  409 	0x10,0x2E,
//  410 	0x11,0x00,
//  411 	0x12,0x24,
//  412 	0x13,0x00,
//  413 	0x14,0x03,
//  414 	0x15,0x21,
//  415 	0x16,0x58,
//  416 	0x17,0x02,
//  417 	0x18,0x63,
//  418 	0x19,0x22,
//  419 	0x1A,0x00,
//  420 	0x1B,0x00,
//  421 	0x1C,0x42,
//  422 	0x1D,0xFE,
//  423 	0x1E,0x10,
//  424 	0x20,0x00,
//  425 	0x21,0x00,
//  426 	0x40,0x10,
//  427 	0x41,0x00,
//  428 	0x42,0x05,
//  429 	0x43,0x01,
//  430 	0x44,0x64,
//  431 	0x45,0xF4,
//  432 	0x46,0x00,
//  433 	0x47,0x0A,
//  434 	0x48,0x36,
//  435 	0x49,0x10,
//  436 	0x4A,0x00,
//  437 	0x4B,0x00,
//  438 	0x4C,0x00,
//  439 	0x4D,0x44,
//  440 	0x4E,0x04,
//  441 	0xE4,0x00,
//  442 	0xF8,0x00,
//  443 	0xF9,0x80,
//  444 	
//  445 	0xFF,0x06,	//; Page 06
//  446 	0x40,0x0C,
//  447 	0x41,0x00,
//  448 	0x42,0x01,
//  449 	0x43,0xC0,
//  450 	0x44,0x00,
//  451 	0x46,0x01,
//  452 	0x48,0x07,
//  453 	0x49,0x01,
//  454 	0x4A,0x00,
//  455 	0x4B,0x30,//0x3A,0x30
//  456 	0x4C,0x40,
//  457 	0x4D,0x17,//0x00,0x17
//  458 	0x4E,0x00,
//  459 	
//  460 
//  461         0xff,0xff,
//  462 };
//  463 #endif
//  464 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function TW8836_Configuration
        THUMB
//  465  void TW8836_Configuration( void )
//  466 {
TW8836_Configuration:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  467     uint16_t i = 0;
        MOVS     R4,#+0
//  468 
//  469     for(i = 0; i < sizeof(TW8836_REG_TAB); i+=2)
        MOVS     R0,#+0
        MOVS     R4,R0
??TW8836_Configuration_0:
        MOV      R0,#+436
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BCS.N    ??TW8836_Configuration_1
//  470     {
//  471         TW8836_Write(TW8836_REG_TAB[i], TW8836_REG_TAB[i+1]);
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable0
        ADDS     R0,R4,R0
        LDRB     R1,[R0, #+1]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable0
        LDRB     R0,[R4, R0]
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  472     }
        ADDS     R4,R4,#+2
        B.N      ??TW8836_Configuration_0
//  473 
//  474     //printf("\r\nTW8836 Configuration Finished.");
//  475 }
??TW8836_Configuration_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     TW8836_REG_TAB
//  476 
//  477 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function InitTW8836
        THUMB
//  478 void InitTW8836( void )
//  479 {
InitTW8836:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  480     //sI2cInit();
//  481 
//  482     TW8836_WritePage(0x00);
        MOVS     R0,#+0
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  483 
//  484    // printf("\r\nTW88xx ID = %x , REV = %x", TW8836_Read(REG000), TW8836_Read(REG001));
//  485 
//  486     SpiFlashInit();
          CFI FunCall SpiFlashInit
        BL       SpiFlashInit
//  487 
//  488     //TW8836_Configuration(); 
//  489 	Delay_1ms(20 * 10);
        MOVS     R0,#+200
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  490 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//  491 
//  492 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function TW8836_Read
        THUMB
//  493 uint8_t TW8836_Read( uint8_t suba )
//  494 {
TW8836_Read:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  495     //return sI2cReadByte(0x8A, suba);
//  496     return ReadTW88(suba);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall ReadTW88
        BL       ReadTW88
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//  497 }
//  498 
//  499 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function TW8836_Write
        THUMB
//  500 void TW8836_Write( uint8_t suba, uint8_t dat )
//  501 {
TW8836_Write:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  502     //sI2cWriteByte(0x8A, suba, dat);
//  503     WriteTW88(suba,dat);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  504 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//  505 
//  506 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function TW8836_WritePage
        THUMB
//  507 void TW8836_WritePage( uint8_t dat )
//  508 {
TW8836_WritePage:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  509     //sI2cWriteByte(0x8A, 0xFF, dat);
//  510     WriteTW88(0xff,dat);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  511 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//  512 
//  513 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function TW8836_WaitVBlank
        THUMB
//  514 void TW8836_WaitVBlank( uint8_t cnt )
//  515 {
TW8836_WaitVBlank:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  516     uint8_t  i = 0;
        MOVS     R5,#+0
//  517     uint16_t j = 0;
        MOVS     R6,#+0
//  518 
//  519     TW8836_WritePage(TW8836_PAGE0_GENERAL);
        MOVS     R0,#+0
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  520 
//  521     for(i = 0; i < cnt; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??TW8836_WaitVBlank_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCS.N    ??TW8836_WaitVBlank_1
//  522     {
//  523         TW8836_Write(REG002, 0xFF);
        MOVS     R1,#+255
        MOVS     R0,#+2
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  524 
//  525         j = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  526 
//  527         while(!(TW8836_Read(REG002) & 0x40))
??TW8836_WaitVBlank_2:
        MOVS     R0,#+2
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        LSLS     R0,R0,#+25
        BMI.N    ??TW8836_WaitVBlank_3
//  528         {
//  529             j++;
        ADDS     R6,R6,#+1
//  530 
//  531             if(j > TW8836_WAIT_VBLANK_VALUE)
        MOVW     R0,#+65535
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BCC.N    ??TW8836_WaitVBlank_2
//  532             {
//  533                 //printf("\r\nError : Wait VBlank.");
//  534                 break;
//  535             }
//  536         }
//  537     }
??TW8836_WaitVBlank_3:
        ADDS     R5,R5,#+1
        B.N      ??TW8836_WaitVBlank_0
//  538 }
??TW8836_WaitVBlank_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock5

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  539 
//  540 
// 
// 436 bytes in section .rodata
// 182 bytes in section .text
// 
// 182 bytes of CODE  memory
// 436 bytes of CONST memory
//
//Errors: none
//Warnings: none
