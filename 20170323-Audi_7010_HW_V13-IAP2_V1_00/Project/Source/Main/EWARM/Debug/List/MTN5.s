///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:40 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\MTN5.c                      /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\MTN5.c -D                   /
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
//                    \Debug\List\MTN5.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MTN5

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN CCR1_Val
        EXTERN Delay_1ms
        EXTERN GPIO_ReadInputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN TIM_GetCapture1
        EXTERN TIM_ITConfig
        EXTERN TIM_SetCompare1

        PUBLIC IN_MTN5_IRSendCodeTask
        PUBLIC IR_HD_StartIrSend
        PUBLIC MTN5_i2cSetSCL
        PUBLIC MTN5_i2cSetSCL_Chk
        PUBLIC MTN5_i2cSetSDA
        PUBLIC MTN5_i2cSetSDA_Chk
        PUBLIC MTN5_i2c_Delay
        PUBLIC MTN5_i2c_SendByte
        PUBLIC MTN5_init
        PUBLIC g_stuIR_CNTR
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\MTN5.c
//    1 /*
//    2 this file is to define the functions using uart port
//    3 
//    4 by Miller.Tao
//    5 date :20150730
//    6 
//    7 */
//    8 #define _MTN5_C_
//    9 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute IR_CNTR g_stuIR_CNTR
g_stuIR_CNTR:
        DS8 28
//   10 
//   11 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function MTN5_i2cSetSCL
        THUMB
//   12 void MTN5_i2cSetSCL(BYTE is_hl)
//   13 {
MTN5_i2cSetSCL:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   14 if(is_hl)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??MTN5_i2cSetSCL_0
//   15 	GPIO_SetBits(MTN5_CLK_PORT,MTN5_CLK_PIN);
        MOV      R1,#+256
        LDR.N    R0,??DataTable5  ;; 0x40010c00
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??MTN5_i2cSetSCL_1
//   16 else
//   17 	GPIO_ResetBits(MTN5_CLK_PORT,MTN5_CLK_PIN);
??MTN5_i2cSetSCL_0:
        MOV      R1,#+256
        LDR.N    R0,??DataTable5  ;; 0x40010c00
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//   18 }
??MTN5_i2cSetSCL_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   19 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function MTN5_i2cSetSDA
        THUMB
//   20 void MTN5_i2cSetSDA(BYTE is_hl)
//   21 {
MTN5_i2cSetSDA:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   22 	if(is_hl)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??MTN5_i2cSetSDA_0
//   23 		GPIO_SetBits(MTN5_DATA_PORT,MTN5_DATA_PIN);
        MOV      R1,#+512
        LDR.N    R0,??DataTable5  ;; 0x40010c00
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??MTN5_i2cSetSDA_1
//   24 	else
//   25 		GPIO_ResetBits(MTN5_DATA_PORT,MTN5_DATA_PIN);
??MTN5_i2cSetSDA_0:
        MOV      R1,#+512
        LDR.N    R0,??DataTable5  ;; 0x40010c00
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//   26 }
??MTN5_i2cSetSDA_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   27 
//   28 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function MTN5_i2cSetSCL_Chk
        THUMB
//   29  void MTN5_i2cSetSCL_Chk(BYTE bSet)
//   30 {
MTN5_i2cSetSCL_Chk:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   31     WORD ucDummy; // loop dummy
//   32    // touch_i2cSetSCL(bSet); // set SCL pin
//   33     if (bSet == _HIGH)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??MTN5_i2cSetSCL_Chk_0
//   34         // if set pin high
//   35     {
//   36         ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        MOVS     R0,#+100
        MOVS     R5,R0
//   37         while ((!touch_i2cSCL_PIN_STATUS()) && (ucDummy--))
??MTN5_i2cSetSCL_Chk_1:
        MOV      R1,#+1024
        LDR.N    R0,??DataTable5_1  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??MTN5_i2cSetSCL_Chk_0
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??MTN5_i2cSetSCL_Chk_1
//   38             ;
//   39         // check SCL pull high
//   40     }
//   41 }
??MTN5_i2cSetSCL_Chk_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//   42 
//   43 /////////////////////////////////////////
//   44 // Set I2C SDA pin high/low
//   45 //
//   46 // Arguments: bSet - high/low bit
//   47 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function MTN5_i2cSetSDA_Chk
        THUMB
//   48  void MTN5_i2cSetSDA_Chk(BYTE bSet)
//   49 {
MTN5_i2cSetSDA_Chk:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   50     WORD ucDummy; // loop dummy
//   51     //touch_i2cSetSDA(bSet); // set SDA pin
//   52     if (bSet == _HIGH)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??MTN5_i2cSetSDA_Chk_0
//   53         // if set pin high
//   54     {
//   55         ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        MOVS     R0,#+100
        MOVS     R5,R0
//   56         while ((!touch_i2cSDA_PIN_STATUS()) && (ucDummy--))
??MTN5_i2cSetSDA_Chk_1:
        MOV      R1,#+2048
        LDR.N    R0,??DataTable5_1  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??MTN5_i2cSetSDA_Chk_0
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??MTN5_i2cSetSDA_Chk_1
//   57             ;
//   58         // check SDA pull high
//   59     }
//   60 }
??MTN5_i2cSetSDA_Chk_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//   61 
//   62 //////////////////////////////////////////////////////////////
//   63 // Delay 4us
//   64 //////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function MTN5_i2c_Delay
        THUMB
//   65  void MTN5_i2c_Delay(void)
//   66 {
MTN5_i2c_Delay:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   67     u32 i = 50;//,k=0;
        MOVS     R4,#+50
//   68 	//for(;k<10;k++)
//   69     while (i--) {}
??MTN5_i2c_Delay_0:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        CMP      R0,#+0
        BNE.N    ??MTN5_i2c_Delay_0
//   70 	Delay_1ms(1);
        MOVS     R0,#+1
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//   71 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//   72 
//   73 
//   74 //////////////////////////////////////////////////////////////////////////
//   75 // I2C send byte to device.
//   76 //
//   77 // Arguments: ucVal - send byte
//   78 // Return value: I2C acknowledge bit
//   79 //               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//   80 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function MTN5_i2c_SendByte
        THUMB
//   81 BYTE MTN5_i2c_SendByte(BYTE ucVal)
//   82 {
MTN5_i2c_SendByte:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   83     BYTE ucMask = 0x01;
        MOVS     R5,#+1
//   84     BYTE bAck; // acknowledge bit
//   85 		//	SET_SDA_OUT();
//   86 
//   87 	MTN5_i2cSetSDA(_HIGH);
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//   88     MTN5_i2c_Delay();
          CFI FunCall MTN5_i2c_Delay
        BL       MTN5_i2c_Delay
//   89     MTN5_i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSCL
        BL       MTN5_i2cSetSCL
//   90 	
//   91 	MTN5_i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall MTN5_i2cSetSCL
        BL       MTN5_i2cSetSCL
//   92 	Delay_1ms(5);
        MOVS     R0,#+5
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//   93     while (ucMask)
??MTN5_i2c_SendByte_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??MTN5_i2c_SendByte_1
//   94     {
//   95    		 MTN5_i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall MTN5_i2cSetSCL
        BL       MTN5_i2cSetSCL
//   96         if (ucVal & ucMask)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R5
        BEQ.N    ??MTN5_i2c_SendByte_2
//   97         {
//   98             MTN5_i2cSetSDA(_HIGH);
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
        B.N      ??MTN5_i2c_SendByte_3
//   99         }
//  100         else
//  101         {
//  102             MTN5_i2cSetSDA(_LOW);
??MTN5_i2c_SendByte_2:
        MOVS     R0,#+0
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//  103         }
//  104         MTN5_i2c_Delay();
??MTN5_i2c_SendByte_3:
          CFI FunCall MTN5_i2c_Delay
        BL       MTN5_i2c_Delay
//  105         MTN5_i2cSetSCL(_HIGH); // clock
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSCL
        BL       MTN5_i2cSetSCL
//  106         MTN5_i2c_Delay();
          CFI FunCall MTN5_i2c_Delay
        BL       MTN5_i2c_Delay
//  107 		
//  108         ucMask <<= 1; // next
        LSLS     R5,R5,#+1
        B.N      ??MTN5_i2c_SendByte_0
//  109     } // while
//  110     // recieve acknowledge
//  111     MTN5_i2cSetSDA(_HIGH);
??MTN5_i2c_SendByte_1:
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//  112     MTN5_i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSCL
        BL       MTN5_i2cSetSCL
//  113 	//touch_SET_SDA_IN();
//  114     
//  115     return 0;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5
//  116 }
//  117 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function MTN5_init
        THUMB
//  118 void MTN5_init(void)
//  119 {
MTN5_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  120 	//MTN5_i2c_SendByte(0xef);
//  121 	IR_HD_StartIrSend(0xef);
        MOVS     R0,#+239
          CFI FunCall IR_HD_StartIrSend
        BL       IR_HD_StartIrSend
//  122 
//  123 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6
//  124 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function IR_HD_StartIrSend
        THUMB
//  125 void IR_HD_StartIrSend(u8 pData)
//  126 {
IR_HD_StartIrSend:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  127 	//if(g_stuIR_CNTR.u8SendProgress != IR_SEND_DATA_end)
//  128 	//	return;
//  129 	
//  130     g_stuIR_CNTR.u8SendProgress = IR_SEND_HEAD_5MS;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
//  131     g_stuIR_CNTR.u8PulseLenCnt = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  132     g_stuIR_CNTR.u8SendBitIndex = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  133 
//  134     g_stuIR_CNTR.u8SendBuff[0] = pData;
        LDR.N    R0,??DataTable5_2
        STRB     R4,[R0, #+2]
//  135    // g_stuIR_CNTR.u8SendBuff[1] = HD_USER_CODE_2;
//  136    // g_stuIR_CNTR.u8SendBuff[2] = pData;
//  137    // g_stuIR_CNTR.u8SendBuff[3] = 0xFF ^ pData;
//  138    // MTN5_i2cSetSDA(0); //'1'
//  139 	//Delay_1ms(5);
//  140 	//MTN5_i2cSetSDA(1);
//  141 	
//  142 	//capture = TIM_GetCapture1(TIM2);
//  143 	TIM_SetCompare1(TIM2, TIM_GetCapture1(TIM2) + CCR1_Val);
        MOVS     R0,#+1073741824
          CFI FunCall TIM_GetCapture1
        BL       TIM_GetCapture1
        LDR.N    R1,??DataTable5_3
        LDRH     R1,[R1, #+0]
        ADDS     R1,R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1073741824
          CFI FunCall TIM_SetCompare1
        BL       TIM_SetCompare1
//  144     TIM_ITConfig(TIM2, TIM_IT_CC1, ENABLE);
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOVS     R0,#+1073741824
          CFI FunCall TIM_ITConfig
        BL       TIM_ITConfig
//  145     //TIM_ITConfig(TIM2, TIM_IT_CC2, ENABLE);
//  146 
//  147     //SysDelay(100);
//  148 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7
//  149 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function IN_MTN5_IRSendCodeTask
        THUMB
//  150 void IN_MTN5_IRSendCodeTask(void)
//  151 {
IN_MTN5_IRSendCodeTask:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  152     switch (g_stuIR_CNTR.u8SendProgress)
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??IN_MTN5_IRSendCodeTask_0
        CMP      R0,#+3
        BEQ.N    ??IN_MTN5_IRSendCodeTask_1
        CMP      R0,#+4
        BEQ.N    ??IN_MTN5_IRSendCodeTask_2
        CMP      R0,#+5
        BEQ.N    ??IN_MTN5_IRSendCodeTask_3
        B.N      ??IN_MTN5_IRSendCodeTask_4
//  153     {
//  154     case IR_SEND_HEAD_5MS:
//  155 		
//  156 		MTN5_i2cSetSDA(0); //'1'
??IN_MTN5_IRSendCodeTask_0:
        MOVS     R0,#+0
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//  157 		#if 1
//  158 		if(g_stuIR_CNTR.u8PulseLenCnt>=25)
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+25
        BCC.N    ??IN_MTN5_IRSendCodeTask_5
//  159 			{
//  160 			//MTN5_i2cSetSDA(1);
//  161 			 g_stuIR_CNTR.u8PulseLenCnt = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  162             g_stuIR_CNTR.u8SendBitIndex = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  163 			g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_SURE;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+1]
//  164 			}
//  165 		g_stuIR_CNTR.u8PulseLenCnt++;
??IN_MTN5_IRSendCodeTask_5:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_2
        STRB     R0,[R1, #+6]
//  166 		#endif
//  167         break;
        B.N      ??IN_MTN5_IRSendCodeTask_6
//  168     case IR_SEND_DATA_SURE:
//  169         //
//  170         if (g_stuIR_CNTR.u8SendBitIndex >= 8)
??IN_MTN5_IRSendCodeTask_1:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+8
        BCC.N    ??IN_MTN5_IRSendCodeTask_7
//  171         {
//  172             //send finish
//  173             g_stuIR_CNTR.u8PulseLenCnt = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  174             g_stuIR_CNTR.u8SendBitIndex = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  175             MTN5_i2cSetSDA(1);
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//  176             //TIM_ITConfig(TIM2, TIM_IT_CC1, DISABLE);
//  177 			g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_end;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//  178             break;
        B.N      ??IN_MTN5_IRSendCodeTask_6
//  179         }
//  180         if (g_stuIR_CNTR.u8SendBuff[g_stuIR_CNTR.u8SendBitIndex / 8] &(1 <<
//  181                 (g_stuIR_CNTR.u8SendBitIndex % 8)))
??IN_MTN5_IRSendCodeTask_7:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable5_2
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+2]
        MOVS     R1,#+1
        LDR.N    R2,??DataTable5_2
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+8
        SDIV     R4,R2,R3
        MLS      R4,R4,R3,R2
        LSLS     R1,R1,R4
        TST      R0,R1
        BEQ.N    ??IN_MTN5_IRSendCodeTask_8
//  182         {
//  183             g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_1; //
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+4
        STRB     R1,[R0, #+1]
//  184             g_stuIR_CNTR.u8PulseLenCnt = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  185             MTN5_i2cSetSDA(1);
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
        B.N      ??IN_MTN5_IRSendCodeTask_9
//  186         }
//  187         else
//  188         {
//  189             g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_0;
??IN_MTN5_IRSendCodeTask_8:
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+5
        STRB     R1,[R0, #+1]
//  190             g_stuIR_CNTR.u8PulseLenCnt = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  191             MTN5_i2cSetSDA(1);
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//  192         }
//  193         break;
??IN_MTN5_IRSendCodeTask_9:
        B.N      ??IN_MTN5_IRSendCodeTask_6
//  194     case IR_SEND_DATA_1:
//  195         if (g_stuIR_CNTR.u8PulseLenCnt >= 2)
??IN_MTN5_IRSendCodeTask_2:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+2
        BCC.N    ??IN_MTN5_IRSendCodeTask_10
//  196         {
//  197             MTN5_i2cSetSDA(0);
        MOVS     R0,#+0
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//  198             g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_SURE;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+1]
//  199             g_stuIR_CNTR.u8PulseLenCnt = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  200             g_stuIR_CNTR.u8SendBitIndex++;
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_2
        STRB     R0,[R1, #+0]
        B.N      ??IN_MTN5_IRSendCodeTask_11
//  201            // break;
//  202         }
//  203         else
//  204         {
//  205             MTN5_i2cSetSDA(1);
??IN_MTN5_IRSendCodeTask_10:
        MOVS     R0,#+1
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//  206         }
//  207         g_stuIR_CNTR.u8PulseLenCnt++;
??IN_MTN5_IRSendCodeTask_11:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_2
        STRB     R0,[R1, #+6]
//  208         break;
        B.N      ??IN_MTN5_IRSendCodeTask_6
//  209     case IR_SEND_DATA_0:
//  210 			if(g_stuIR_CNTR.u8PulseLenCnt>=2)
??IN_MTN5_IRSendCodeTask_3:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+2
        BCC.N    ??IN_MTN5_IRSendCodeTask_12
//  211 				{
//  212             g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_SURE;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+1]
//  213             g_stuIR_CNTR.u8PulseLenCnt = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  214             g_stuIR_CNTR.u8SendBitIndex++;
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_2
        STRB     R0,[R1, #+0]
        B.N      ??IN_MTN5_IRSendCodeTask_13
//  215 				}
//  216          else
//  217 		 	MTN5_i2cSetSDA(0);
??IN_MTN5_IRSendCodeTask_12:
        MOVS     R0,#+0
          CFI FunCall MTN5_i2cSetSDA
        BL       MTN5_i2cSetSDA
//  218 		 
//  219         	g_stuIR_CNTR.u8PulseLenCnt++;
??IN_MTN5_IRSendCodeTask_13:
        LDR.N    R0,??DataTable5_2
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable5_2
        STRB     R0,[R1, #+6]
//  220         break;
        B.N      ??IN_MTN5_IRSendCodeTask_6
//  221     default:
//  222 		g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_end;
??IN_MTN5_IRSendCodeTask_4:
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//  223         break;
//  224     }
//  225 }
??IN_MTN5_IRSendCodeTask_6:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     g_stuIR_CNTR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     CCR1_Val

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  226 
//  227 //////////////////////////////////////////////////////////////////////////
//  228 // I2C receive byte from device.
//  229 //
//  230 // Return value: receive byte
//  231 //////////////////////////////////////////////////////////////////////////
//  232 
// 
//  28 bytes in section .bss
// 654 bytes in section .text
// 
// 654 bytes of CODE memory
//  28 bytes of DATA memory
//
//Errors: none
//Warnings: 1
