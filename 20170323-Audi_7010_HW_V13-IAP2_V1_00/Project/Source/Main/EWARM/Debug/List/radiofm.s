///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:46 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\FM\radiofm.c                       /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\FM\radiofm.c -D                    /
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
//                    \Debug\List\radiofm.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME radiofm

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Delay_1ms
        EXTERN ReadRadioFM
        EXTERN WriteRadioFM

        PUBLIC radio_fm_init
        PUBLIC radio_fm_set_freq
        PUBLIC radio_fm_set_gain
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\FM\radiofm.c
//    1 /*==========================
//    2 this file is defined for FM by Miller.tao
//    3 date :20150713
//    4 ===========================*/
//    5 #define _RADIO_FM_C_
//    6 #include "radiofm.h"
//    7 #include "i2c_driver.h"
//    8 #include "includes.h"
//    9 #if 1 //miller.tao20150715

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function radio_fm_init
        THUMB
//   10 void radio_fm_init(void)
//   11 {
radio_fm_init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
//   12         BYTE fm_init_data[20];
//   13         BYTE i = 0;
        MOVS     R4,#+0
//   14 
//   15 	fm_init_data[0] = 0x21;//reg0:SYSTEM
        MOVS     R0,#+33
        STRB     R0,[SP, #+0]
//   16 	fm_init_data[1] = 0x00;//reg1:CH1
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//   17 	fm_init_data[2] = 0xB9;//0xBA;//0xB9;//0xA9,reg2:GPLT
        MOVS     R0,#+185
        STRB     R0,[SP, #+2]
//   18 	fm_init_data[3] = 0x10;//reg3:REG_XTL
        MOVS     R0,#+16
        STRB     R0,[SP, #+3]
//   19 	fm_init_data[4] = 0x83;//0x87,0x82;//0xB2,reg4:REG_VGA
        MOVS     R0,#+131
        STRB     R0,[SP, #+4]
//   20 
//   21 	//fm_init_data[5] = 0x80;//reg5:CID1
//   22 	//fm_init_data[6] = 0x80;//reg6:CID2
//   23 	//fm_init_data[7] = 0x80;//reg7:STATUS
//   24 	fm_init_data[8] = 0x00;//reg8:RDSD0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//   25 	fm_init_data[9] = 0x00;//reg9:RDSD1
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//   26         fm_init_data[10] = 0x00;//reg10:RDSD2
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//   27 	fm_init_data[11] = 0x00;//reg11:RDSD3
        MOVS     R0,#+0
        STRB     R0,[SP, #+11]
//   28 	fm_init_data[12] = 0x00;//reg12:RDSD4
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//   29 	fm_init_data[13] = 0x00;//reg13:RDSD5
        MOVS     R0,#+0
        STRB     R0,[SP, #+13]
//   30 	fm_init_data[14] = 0x00;//reg14:RDSD6
        MOVS     R0,#+0
        STRB     R0,[SP, #+14]
//   31 	fm_init_data[15] = 0x00;//reg15:RDSD7
        MOVS     R0,#+0
        STRB     R0,[SP, #+15]
//   32 	fm_init_data[16] = 0x7F;//0x7F,reg16:PAC
        MOVS     R0,#+127
        STRB     R0,[SP, #+16]
//   33 	fm_init_data[17] = 0xA1;//0x81,reg17:FDV
        MOVS     R0,#+161
        STRB     R0,[SP, #+17]
//   34 	fm_init_data[18] = 0x06;//reg18:RDS
        MOVS     R0,#+6
        STRB     R0,[SP, #+18]
//   35 
//   36 	for(i = 0;i<5;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??radio_fm_init_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BCS.N    ??radio_fm_init_1
//   37 	{
//   38               WriteRadioFM(i,fm_init_data[i]);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R1,[R4, R0]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteRadioFM
        BL       WriteRadioFM
//   39 	      Delay_1ms(5);
        MOVS     R0,#+5
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//   40 	}
        ADDS     R4,R4,#+1
        B.N      ??radio_fm_init_0
//   41 
//   42 	for(i = 8;i<19;i++)
??radio_fm_init_1:
        MOVS     R0,#+8
        MOVS     R4,R0
??radio_fm_init_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+19
        BCS.N    ??radio_fm_init_3
//   43 	{
//   44               WriteRadioFM(i,fm_init_data[i]);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R1,[R4, R0]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteRadioFM
        BL       WriteRadioFM
//   45 	      Delay_1ms(5);
        MOVS     R0,#+5
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//   46 	}
        ADDS     R4,R4,#+1
        B.N      ??radio_fm_init_2
//   47 
//   48 
//   49 }
??radio_fm_init_3:
        ADD      SP,SP,#+24
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   50 #else
//   51 void radio_fm_init(void)
//   52 {
//   53           WriteRadioFM(0,0x81);
//   54           Delay_1ms(100);
//   55 
//   56           WriteRadioFM(3,0x10);
//   57           WriteRadioFM(4,0xB2);
//   58           Delay_1ms(100);
//   59            WriteRadioFM(0,0x41);
//   60 	   WriteRadioFM(0,0x41);
//   61            Delay_1ms(200);
//   62 	   WriteRadioFM(1,0x00);
//   63 	   WriteRadioFM(2,0xB9);
//   64            Delay_1ms(100);
//   65 	   WriteRadioFM(0,0x21);
//   66 }
//   67 
//   68 #endif
//   69 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function radio_fm_set_freq
        THUMB
//   70 void radio_fm_set_freq(UINT frequency)
//   71 {
radio_fm_set_freq:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//   72       
//   73       BYTE temp,temp2;
//   74 
//   75      temp =  ReadRadioFM(FM_REG_SYS);
        MOVS     R0,#+0
          CFI FunCall ReadRadioFM
        BL       ReadRadioFM
        MOVS     R5,R0
//   76     
//   77      temp2 = (frequency>>8)&0x03;
        LSRS     R0,R4,#+8
        ANDS     R0,R0,#0x3
        MOVS     R6,R0
//   78      temp =temp&(~0x03)|temp2;
        ANDS     R0,R5,#0xFC
        ORRS     R5,R6,R0
//   79      WriteRadioFM(FM_REG_SYS,temp);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+0
          CFI FunCall WriteRadioFM
        BL       WriteRadioFM
//   80      Delay_1ms(5);
        MOVS     R0,#+5
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//   81      temp2 = frequency&0xFF;
        MOVS     R0,R4
        MOVS     R6,R0
//   82     WriteRadioFM(FM_REG_CH1,temp2);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+1
          CFI FunCall WriteRadioFM
        BL       WriteRadioFM
//   83 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock1
//   84 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function radio_fm_set_gain
          CFI NoCalls
        THUMB
//   85 void radio_fm_set_gain(BYTE gain)
//   86 {
//   87 
//   88 
//   89 }
radio_fm_set_gain:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   90 
// 
// 236 bytes in section .text
// 
// 236 bytes of CODE memory
//
//Errors: none
//Warnings: none
