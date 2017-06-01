///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:40 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\GPS.c                       /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\GPS.c -D                    /
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
//                    \Debug\List\GPS.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME GPS

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN USART_GetFlagStatus
        EXTERN USART_SendData

        PUBLIC Navi_Cmd_Proc
        PUBLIC Navi_Controll_Send
        PUBLIC gNaviCnt
        PUBLIC gNaviSendFlag
        PUBLIC gNaviSystemOn
        PUBLIC g_GPS_DATA
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\GPS.c
//    1 #define __GPS_C__
//    2 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute u16 gNaviCnt
gNaviCnt:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 gNaviSendFlag
gNaviSendFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 gNaviSystemOn
gNaviSystemOn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute GPS_DATA g_GPS_DATA
g_GPS_DATA:
        DS8 1344
//    3 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Navi_Controll_Send
        THUMB
//    4 void Navi_Controll_Send(BYTE cmd)
//    5 {
Navi_Controll_Send:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//    6      BYTE temp;
//    7 	 BYTE checksum=0;
        MOVS     R6,#+0
//    8 	 temp=cmd;
        MOVS     R5,R4
//    9 
//   10     USART_SendData(USART3, 0x51);
        MOVS     R1,#+81
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
//   11     while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
??Navi_Controll_Send_0:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Navi_Controll_Send_0
//   12     USART_SendData(USART3, 0);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
//   13     while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
??Navi_Controll_Send_1:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Navi_Controll_Send_1
//   14     USART_SendData(USART3, temp);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
//   15     while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
??Navi_Controll_Send_2:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Navi_Controll_Send_2
//   16     USART_SendData(USART3, 0);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
//   17     while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
??Navi_Controll_Send_3:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Navi_Controll_Send_3
//   18     USART_SendData(USART3, 0);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
//   19     while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
??Navi_Controll_Send_4:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Navi_Controll_Send_4
//   20     checksum = 0x51 + temp;
        ADDS     R0,R5,#+81
        MOVS     R6,R0
//   21     checksum = ~checksum;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MVNS     R6,R6
//   22     USART_SendData(USART3, checksum);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_SendData
        BL       USART_SendData
//   23     while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
??Navi_Controll_Send_5:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable1  ;; 0x40004800
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??Navi_Controll_Send_5
//   24 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//   25 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Navi_Cmd_Proc
        THUMB
//   26 void Navi_Cmd_Proc(void)
//   27 {
Navi_Cmd_Proc:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   28    if(!gNaviCnt)
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Navi_Cmd_Proc_0
//   29    {
//   30             if(gNaviSystemOn)
//   31         {
//   32           // gNaviSystemOn=0;
//   33            //gNaviCnt=600;
//   34 		}
//   35        if(gNaviSendFlag)
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Navi_Cmd_Proc_0
//   36        {
//   37                
//   38 	       Navi_Controll_Send(CMD_RT_BTGPS_on_GPS);//miller.tao20160323
        MOVS     R0,#+146
          CFI FunCall Navi_Controll_Send
        BL       Navi_Controll_Send
//   39 	       gNaviSendFlag = 0;
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   40 	
//   41 	   }
//   42    }
//   43 }
??Navi_Cmd_Proc_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     gNaviCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     gNaviSendFlag

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   44 
// 
// 1 348 bytes in section .bss
//   192 bytes in section .text
// 
//   192 bytes of CODE memory
// 1 348 bytes of DATA memory
//
//Errors: none
//Warnings: none
