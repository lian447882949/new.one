///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:53 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\touch.c                     /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\touch.c -D                  /
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
//                    \Debug\List\touch.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME touch

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Delay_1ms
        EXTERN GPIO_Init
        EXTERN GPIO_ReadInputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits

        PUBLIC GT911_adr
        PUBLIC Touch_flag
        PUBLIC Touch_on_Click
        PUBLIC check_addr
        PUBLIC init_touch
        PUBLIC touch_I2C_buff
        PUBLIC touch_i2cBurstCurrentBytes
        PUBLIC touch_i2cBurstReadBytes
        PUBLIC touch_i2cBurstWriteBytes
        PUBLIC touch_i2cBurst_1addr_ReadBytes
        PUBLIC touch_i2cBurst_1addr_WriteBytes
        PUBLIC touch_i2cSetSCL
        PUBLIC touch_i2cSetSCL_Chk
        PUBLIC touch_i2cSetSDA
        PUBLIC touch_i2cSetSDA_Chk
        PUBLIC touch_i2c_AccessStart
        PUBLIC touch_i2c_Delay
        PUBLIC touch_i2c_ReceiveByte
        PUBLIC touch_i2c_SendByte
        PUBLIC touch_i2c_Start
        PUBLIC touch_i2c_Stop
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\touch.c
//    1 /*
//    2 this file is to define the functions using uart port
//    3 
//    4 by Miller.Tao
//    5 date :20150730
//    6 
//    7 */
//    8 #define _TOUCH_C_
//    9 #include "includes.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute BYTE touch_I2C_buff[10]
touch_I2C_buff:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Touch_flag
Touch_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE Touch_on_Click
Touch_on_Click:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute BYTE GT911_adr
GT911_adr:
        DS8 1
//   10 
//   11 
//   12 
//   13 #if 1//touch

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function touch_i2cSetSCL
        THUMB
//   14 void touch_i2cSetSCL(BYTE is_hl)
//   15 {
touch_i2cSetSCL:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   16 if(is_hl)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??touch_i2cSetSCL_0
//   17 	GPIO_SetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
        MOV      R1,#+1024
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??touch_i2cSetSCL_1
//   18 else
//   19 	GPIO_ResetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
??touch_i2cSetSCL_0:
        MOV      R1,#+1024
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//   20 }
??touch_i2cSetSCL_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   21 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function touch_i2cSetSDA
        THUMB
//   22 void touch_i2cSetSDA(BYTE is_hl)
//   23 {
touch_i2cSetSDA:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   24 	if(is_hl)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??touch_i2cSetSDA_0
//   25 		GPIO_SetBits(CTOUCH_SDA_PORT,CTOUCH_SDA_PIN);
        MOV      R1,#+2048
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??touch_i2cSetSDA_1
//   26 	else
//   27 		GPIO_ResetBits(CTOUCH_SDA_PORT,CTOUCH_SDA_PIN);
??touch_i2cSetSDA_0:
        MOV      R1,#+2048
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//   28 }
??touch_i2cSetSDA_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   29 
//   30 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function touch_i2cSetSCL_Chk
        THUMB
//   31  void touch_i2cSetSCL_Chk(BYTE bSet)
//   32 {
touch_i2cSetSCL_Chk:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   33     WORD ucDummy; // loop dummy
//   34     touch_i2cSetSCL(bSet); // set SCL pin
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//   35     if (bSet == _HIGH)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??touch_i2cSetSCL_Chk_0
//   36         // if set pin high
//   37     {
//   38         ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        MOVS     R0,#+100
        MOVS     R5,R0
//   39         while ((!touch_i2cSCL_PIN_STATUS()) && (ucDummy--))
??touch_i2cSetSCL_Chk_1:
        MOV      R1,#+1024
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??touch_i2cSetSCL_Chk_0
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??touch_i2cSetSCL_Chk_1
//   40             ;
//   41         // check SCL pull high
//   42     }
//   43 }
??touch_i2cSetSCL_Chk_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//   44 
//   45 /////////////////////////////////////////
//   46 // Set I2C SDA pin high/low
//   47 //
//   48 // Arguments: bSet - high/low bit
//   49 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function touch_i2cSetSDA_Chk
        THUMB
//   50  void touch_i2cSetSDA_Chk(BYTE bSet)
//   51 {
touch_i2cSetSDA_Chk:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   52     WORD ucDummy; // loop dummy
//   53     touch_i2cSetSDA(bSet); // set SDA pin
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2cSetSDA
        BL       touch_i2cSetSDA
//   54     if (bSet == _HIGH)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??touch_i2cSetSDA_Chk_0
//   55         // if set pin high
//   56     {
//   57         ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        MOVS     R0,#+100
        MOVS     R5,R0
//   58         while ((!touch_i2cSDA_PIN_STATUS()) && (ucDummy--))
??touch_i2cSetSDA_Chk_1:
        MOV      R1,#+2048
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??touch_i2cSetSDA_Chk_0
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??touch_i2cSetSDA_Chk_1
//   59             ;
//   60         // check SDA pull high
//   61     }
//   62 }
??touch_i2cSetSDA_Chk_0:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//   63 
//   64 //////////////////////////////////////////////////////////////
//   65 // Delay 4us
//   66 //////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function touch_i2c_Delay
          CFI NoCalls
        THUMB
//   67  void touch_i2c_Delay(void)
//   68 {
//   69     u32 i = 50;//,k=0;
touch_i2c_Delay:
        MOVS     R0,#+50
//   70 	//for(;k<10;k++)
//   71     while (i--) {}
??touch_i2c_Delay_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        CMP      R1,#+0
        BNE.N    ??touch_i2c_Delay_0
//   72 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//   73 
//   74 //////////////////////////////////////////////////////
//   75 // I2C start signal.
//   76 // <comment>
//   77 //  SCL ________
//   78 //              \_________
//   79 //  SDA _____
//   80 //           \____________
//   81 //
//   82 // Return value: None
//   83 //////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function touch_i2c_Start
        THUMB
//   84 bool touch_i2c_Start(void)
//   85 {
touch_i2c_Start:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   86     bool bStatus = TRUE; // success status
        MOVS     R4,#+1
//   87     touch_i2cSetSDA_Chk(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSDA_Chk
        BL       touch_i2cSetSDA_Chk
//   88     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//   89     touch_i2cSetSCL_Chk(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSCL_Chk
        BL       touch_i2cSetSCL_Chk
//   90     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//   91     if ((touch_i2cSCL_PIN_STATUS() == _LOW) || (touch_i2cSDA_PIN_STATUS() == _LOW))
        MOV      R1,#+1024
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??touch_i2c_Start_0
        MOV      R1,#+2048
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??touch_i2c_Start_1
//   92     {
//   93         bStatus = FALSE;
??touch_i2c_Start_0:
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??touch_i2c_Start_2
//   94     }
//   95     else
//   96     {
//   97         touch_i2cSetSDA(_LOW);
??touch_i2c_Start_1:
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSDA
        BL       touch_i2cSetSDA
//   98         touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//   99         touch_i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  100     }
//  101     return bStatus;
??touch_i2c_Start_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  102 }
//  103 
//  104 /////////////////////////////////////////
//  105 // I2C stop signal.
//  106 // <comment>
//  107 //              ____________
//  108 //  SCL _______/
//  109 //                 _________
//  110 //  SDA __________/
//  111 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function touch_i2c_Stop
        THUMB
//  112 void touch_i2c_Stop(void)
//  113 {
touch_i2c_Stop:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  114     touch_i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  115     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  116     touch_i2cSetSDA(_LOW);
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSDA
        BL       touch_i2cSetSDA
//  117     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  118     touch_i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  119     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  120     touch_i2cSetSDA(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSDA
        BL       touch_i2cSetSDA
//  121     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  122 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6
//  123 
//  124 //////////////////////////////////////////////////////////////////////////
//  125 // I2C send byte to device.
//  126 //
//  127 // Arguments: ucVal - send byte
//  128 // Return value: I2C acknowledge bit
//  129 //               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//  130 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function touch_i2c_SendByte
        THUMB
//  131 BYTE touch_i2c_SendByte(BYTE ucVal)
//  132 {
touch_i2c_SendByte:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  133     BYTE ucMask = 0x80;
        MOVS     R5,#+128
//  134     BYTE bAck; // acknowledge bit
//  135 		//	SET_SDA_OUT();
//  136     while (ucMask)
??touch_i2c_SendByte_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??touch_i2c_SendByte_1
//  137     {
//  138         if (ucVal & ucMask)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R5
        BEQ.N    ??touch_i2c_SendByte_2
//  139         {
//  140             touch_i2cSetSDA_Chk(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSDA_Chk
        BL       touch_i2cSetSDA_Chk
        B.N      ??touch_i2c_SendByte_3
//  141         }
//  142         else
//  143         {
//  144             touch_i2cSetSDA_Chk(_LOW);
??touch_i2c_SendByte_2:
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSDA_Chk
        BL       touch_i2cSetSDA_Chk
//  145         }
//  146         touch_i2c_Delay();
??touch_i2c_SendByte_3:
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  147         touch_i2cSetSCL_Chk(_HIGH); // clock
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSCL_Chk
        BL       touch_i2cSetSCL_Chk
//  148         touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  149         touch_i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  150         touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  151         ucMask >>= 1; // next
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R5,R5,#+1
        B.N      ??touch_i2c_SendByte_0
//  152     } // while
//  153     // recieve acknowledge
//  154     touch_i2cSetSDA(_HIGH);
??touch_i2c_SendByte_1:
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSDA
        BL       touch_i2cSetSDA
//  155     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  156     touch_i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  157     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  158 	//touch_SET_SDA_IN();
//  159     if (touch_i2cSDA_PIN_STATUS())
        MOV      R1,#+2048
        LDR.W    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??touch_i2c_SendByte_4
//  160     {
//  161         bAck = _HIGH;
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??touch_i2c_SendByte_5
//  162     }
//  163     //no ack
//  164     else
//  165     {
//  166         bAck = _LOW;
??touch_i2c_SendByte_4:
        MOVS     R0,#+0
        MOVS     R6,R0
//  167     }
//  168     // recieve acknowlege
//  169     touch_i2cSetSCL(_LOW);
??touch_i2c_SendByte_5:
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  170 	//touch_SET_SDA_OUT();
//  171 		touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  172     return (bAck);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock7
//  173 }
//  174 
//  175 //////////////////////////////////////////////////////////////////////////
//  176 // I2C receive byte from device.
//  177 //
//  178 // Return value: receive byte
//  179 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function touch_i2c_ReceiveByte
        THUMB
//  180 BYTE touch_i2c_ReceiveByte(bool bAck)
//  181 {
touch_i2c_ReceiveByte:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  182     BYTE ucReceive = 0;
        MOVS     R5,#+0
//  183     BYTE ucMask = 0x80;
        MOVS     R6,#+128
//  184     while (ucMask)
??touch_i2c_ReceiveByte_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??touch_i2c_ReceiveByte_1
//  185     {
//  186 		//touch_SET_SDA_OUT();
//  187         touch_i2cSetSDA(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSDA
        BL       touch_i2cSetSDA
//  188 		  touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  189         touch_i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  190 		//i2c_Delay();
//  191 		//touch_SET_SDA_IN();
//  192         if (touch_i2cSDA_PIN_STATUS())// == _HIGH)
        MOV      R1,#+2048
        LDR.N    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??touch_i2c_ReceiveByte_2
//  193         {
//  194             ucReceive |= ucMask;
        ORRS     R5,R6,R5
//  195         }
//  196         touch_i2cSetSCL(_LOW);
??touch_i2c_ReceiveByte_2:
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  197         touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  198         ucMask >>= 1;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R6,R6,#+1
        B.N      ??touch_i2c_ReceiveByte_0
//  199     } // while
//  200 
//  201     if (bAck)
??touch_i2c_ReceiveByte_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??touch_i2c_ReceiveByte_3
//  202         // acknowledge
//  203     {
//  204         touch_i2cSetSDA_Chk(I2C_ACKNOWLEDGE);
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSDA_Chk
        BL       touch_i2cSetSDA_Chk
        B.N      ??touch_i2c_ReceiveByte_4
//  205     }
//  206     else
//  207         // non-acknowledge
//  208     {
//  209         touch_i2cSetSDA_Chk(I2C_NON_ACKNOWLEDGE);
??touch_i2c_ReceiveByte_3:
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSDA_Chk
        BL       touch_i2cSetSDA_Chk
//  210     }
//  211     touch_i2c_Delay();
??touch_i2c_ReceiveByte_4:
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  212     touch_i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  213     touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  214     touch_i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall touch_i2cSetSCL
        BL       touch_i2cSetSCL
//  215     return ucReceive;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock8
//  216 }
//  217 
//  218 //////////////////////////////////////////////////////////////////////////
//  219 // I2C access start.
//  220 //
//  221 // Arguments: ucSlaveAdr - slave address
//  222 //            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//  223 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function touch_i2c_AccessStart
        THUMB
//  224 bool touch_i2c_AccessStart(BYTE ucSlaveAdr, I2C_Direction trans_t)
//  225 {
touch_i2c_AccessStart:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  226     WORD ucDummy; // loop dummy
//  227     if (trans_t == I2C_READ)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??touch_i2c_AccessStart_0
//  228         // check i2c read or write
//  229     {
//  230         ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr);
        ORRS     R4,R4,#0x1
        B.N      ??touch_i2c_AccessStart_1
//  231 		//i2c_Delay();
//  232     }
//  233     // read
//  234     else
//  235     {
//  236         ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr);
??touch_i2c_AccessStart_0:
        ANDS     R4,R4,#0xFE
//  237 		touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  238     }
//  239     // write
//  240     ucDummy = I2C_ACCESS_DUMMY_TIME;
??touch_i2c_AccessStart_1:
        MOVS     R0,#+3
        MOVS     R6,R0
//  241     while (ucDummy--)
??touch_i2c_AccessStart_2:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??touch_i2c_AccessStart_3
//  242     {
//  243         touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  244 		//i2c_Delay();
//  245         if (touch_i2c_Start() == FALSE)
          CFI FunCall touch_i2c_Start
        BL       touch_i2c_Start
        CMP      R0,#+0
        BEQ.N    ??touch_i2c_AccessStart_2
//  246         {
//  247             continue;
//  248         }
//  249         if (touch_i2c_SendByte(ucSlaveAdr) == I2C_ACKNOWLEDGE)
??touch_i2c_AccessStart_4:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
        CMP      R0,#+0
        BNE.N    ??touch_i2c_AccessStart_5
//  250             // check acknowledge
//  251         {
//  252             return TRUE;
        MOVS     R0,#+1
        B.N      ??touch_i2c_AccessStart_6
//  253         }
//  254         //printf("ucSlaveAdr====%x", ucSlaveAdr);
//  255         touch_i2c_Stop();
??touch_i2c_AccessStart_5:
          CFI FunCall touch_i2c_Stop
        BL       touch_i2c_Stop
//  256 		touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
//  257 		touch_i2c_Delay();
          CFI FunCall touch_i2c_Delay
        BL       touch_i2c_Delay
        B.N      ??touch_i2c_AccessStart_2
//  258        // SysDelay(2);
//  259     }
//  260     return FALSE;
??touch_i2c_AccessStart_3:
        MOVS     R0,#+0
??touch_i2c_AccessStart_6:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock9
//  261 }
//  262 
//  263 /////////////////////////////////////////////////////////////////
//  264 // I2C write bytes to device.
//  265 //
//  266 // Arguments: ucSlaveAdr - slave address
//  267 //            ucSubAdr - sub address
//  268 //            pBuf - pointer of buffer
//  269 //            ucBufLen - length of buffer
//  270 /////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function touch_i2cBurstWriteBytes
        THUMB
//  271 void touch_i2cBurstWriteBytes(BYTE ucSlaveAdr, BYTE ucSubAdr1, BYTE ucSubAdr2, BYTE 
//  272 *pBuf, BYTE
//  273 
//  274                        ucBufLen)
//  275 {
touch_i2cBurstWriteBytes:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  276     WORD ucDummy; // loop dummy
//  277     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOV      R9,R0
//  278     while (ucDummy--)
??touch_i2cBurstWriteBytes_0:
        MOV      R0,R9
        SUBS     R9,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstWriteBytes_1
//  279     {
//  280         if (touch_i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstWriteBytes_0
//  281         {
//  282             continue;
//  283         }
//  284         if (touch_i2c_SendByte(ucSubAdr1) == I2C_NON_ACKNOWLEDGE)
??touch_i2cBurstWriteBytes_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
        CMP      R0,#+1
        BEQ.N    ??touch_i2cBurstWriteBytes_0
//  285             // check non-acknowledge
//  286         {
//  287             continue;
//  288         }
//  289 
//  290 		if (touch_i2c_SendByte(ucSubAdr2) == I2C_NON_ACKNOWLEDGE)
??touch_i2cBurstWriteBytes_3:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
        CMP      R0,#+1
        BEQ.N    ??touch_i2cBurstWriteBytes_0
//  291             // check non-acknowledge
//  292         {
//  293             continue;
//  294         }
//  295         while (ucBufLen--)
??touch_i2cBurstWriteBytes_4:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstWriteBytes_5
//  296             // loop of writting data
//  297         {
//  298             touch_i2c_SendByte(*pBuf); // send byte
        LDRB     R0,[R8, #+0]
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
//  299             pBuf++; // next byte pointer
        ADDS     R8,R8,#+1
        B.N      ??touch_i2cBurstWriteBytes_4
//  300         } // while
//  301         break;
//  302     } // while
//  303     touch_i2c_Stop();
??touch_i2cBurstWriteBytes_5:
??touch_i2cBurstWriteBytes_1:
          CFI FunCall touch_i2c_Stop
        BL       touch_i2c_Stop
//  304 	
//  305 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock10
//  306 
//  307 /////////////////////////////////////////////////////////////////
//  308 // I2C read bytes from device.
//  309 //
//  310 // Arguments: ucSlaveAdr - slave address
//  311 //            ucSubAdr - sub address
//  312 //            pBuf - pointer of buffer
//  313 //            ucBufLen - length of buffer
//  314 /////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function touch_i2cBurstReadBytes
        THUMB
//  315 void touch_i2cBurstReadBytes(BYTE ucSlaveAdr, BYTE ucSubAdr1, BYTE ucSubAdr2, BYTE *
//  316 pBuf, BYTE
//  317 
//  318                        ucBufLen)
//  319 {
touch_i2cBurstReadBytes:
        PUSH     {R3-R9,LR}
          CFI R14 Frame(CFA, -4)
          CFI R9 Frame(CFA, -8)
          CFI R8 Frame(CFA, -12)
          CFI R7 Frame(CFA, -16)
          CFI R6 Frame(CFA, -20)
          CFI R5 Frame(CFA, -24)
          CFI R4 Frame(CFA, -28)
          CFI CFA R13+32
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  320     WORD ucDummy; // loop dummy
//  321     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOV      R9,R0
//  322     while (ucDummy--)
??touch_i2cBurstReadBytes_0:
        MOV      R0,R9
        SUBS     R9,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstReadBytes_1
//  323     {
//  324         if (touch_i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstReadBytes_0
//  325         {
//  326             continue;
//  327         }
//  328 		if (touch_i2c_SendByte(ucSubAdr1) == I2C_NON_ACKNOWLEDGE)
??touch_i2cBurstReadBytes_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
        CMP      R0,#+1
        BEQ.N    ??touch_i2cBurstReadBytes_0
//  329             // check non-acknowledge
//  330         {
//  331             continue;
//  332         }
//  333       
//  334 		if (touch_i2c_SendByte(ucSubAdr2) == I2C_NON_ACKNOWLEDGE)
??touch_i2cBurstReadBytes_3:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
        CMP      R0,#+1
        BEQ.N    ??touch_i2cBurstReadBytes_0
//  335             // check non-acknowledge
//  336         {
//  337             continue;
//  338         }
//  339         if (touch_i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
??touch_i2cBurstReadBytes_4:
        MOVS     R1,#+1
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstReadBytes_0
//  340         {
//  341             continue;
//  342         }
//  343         while (ucBufLen--)
??touch_i2cBurstReadBytes_5:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstReadBytes_6
//  344             // loop to burst read
//  345         {
//  346             if (ucBufLen)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??touch_i2cBurstReadBytes_7
//  347             {
//  348                 *pBuf = touch_i2c_ReceiveByte(TRUE);
        MOVS     R0,#+1
          CFI FunCall touch_i2c_ReceiveByte
        BL       touch_i2c_ReceiveByte
        STRB     R0,[R8, #+0]
        B.N      ??touch_i2cBurstReadBytes_8
//  349             }
//  350             // receive byte
//  351             else
//  352             {
//  353                 *pBuf = touch_i2c_ReceiveByte(FALSE);
??touch_i2cBurstReadBytes_7:
        MOVS     R0,#+0
          CFI FunCall touch_i2c_ReceiveByte
        BL       touch_i2c_ReceiveByte
        STRB     R0,[R8, #+0]
//  354             }
//  355             // receive byte
//  356             pBuf++; // next byte pointer
??touch_i2cBurstReadBytes_8:
        ADDS     R8,R8,#+1
        B.N      ??touch_i2cBurstReadBytes_5
//  357         } // while
//  358         break;
//  359     } // while
//  360     touch_i2c_Stop();
??touch_i2cBurstReadBytes_6:
??touch_i2cBurstReadBytes_1:
          CFI FunCall touch_i2c_Stop
        BL       touch_i2c_Stop
//  361 }
        POP      {R0,R4-R9,PC}    ;; return
          CFI EndBlock cfiBlock11
//  362 
//  363 /////////////////////////////////////////////////////////////////
//  364 // I2C read current bytes from device.
//  365 //
//  366 // Arguments: ucSlaveAdr - slave address
//  367 //            pBuf - pointer of buffer
//  368 //            ucBufLen - length of buffer
//  369 /////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function touch_i2cBurstCurrentBytes
        THUMB
//  370 void touch_i2cBurstCurrentBytes(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
//  371 {
touch_i2cBurstCurrentBytes:
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
//  372     WORD ucDummy; // loop dummy
//  373     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOVS     R7,R0
//  374     while (ucDummy--)
??touch_i2cBurstCurrentBytes_0:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstCurrentBytes_1
//  375     {
//  376         if (touch_i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstCurrentBytes_0
//  377         {
//  378             continue;
//  379         }
//  380         while (ucBufLen--)
??touch_i2cBurstCurrentBytes_2:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurstCurrentBytes_3
//  381             // loop to burst read
//  382         {
//  383             if (ucBufLen)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??touch_i2cBurstCurrentBytes_4
//  384             {
//  385                 *pBuf = touch_i2c_ReceiveByte(TRUE);
        MOVS     R0,#+1
          CFI FunCall touch_i2c_ReceiveByte
        BL       touch_i2c_ReceiveByte
        STRB     R0,[R5, #+0]
        B.N      ??touch_i2cBurstCurrentBytes_5
//  386             }
//  387             // receive byte
//  388             else
//  389             {
//  390                 *pBuf = touch_i2c_ReceiveByte(FALSE);
??touch_i2cBurstCurrentBytes_4:
        MOVS     R0,#+0
          CFI FunCall touch_i2c_ReceiveByte
        BL       touch_i2c_ReceiveByte
        STRB     R0,[R5, #+0]
//  391             }
//  392             // receive byte
//  393             pBuf++; // next byte pointer
??touch_i2cBurstCurrentBytes_5:
        ADDS     R5,R5,#+1
        B.N      ??touch_i2cBurstCurrentBytes_2
//  394         } // while
//  395         break;
//  396     } // while
//  397     touch_i2c_Stop();
??touch_i2cBurstCurrentBytes_3:
??touch_i2cBurstCurrentBytes_1:
          CFI FunCall touch_i2c_Stop
        BL       touch_i2c_Stop
//  398 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock12
//  399 
//  400 
//  401 /////////////////////////////////////////////////////////////////
//  402 // I2C write bytes to device.
//  403 //
//  404 // Arguments: ucSlaveAdr - slave address
//  405 //            ucSubAdr - sub address
//  406 //            pBuf - pointer of buffer
//  407 //            ucBufLen - length of buffer
//  408 /////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function touch_i2cBurst_1addr_WriteBytes
        THUMB
//  409 void touch_i2cBurst_1addr_WriteBytes(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE
//  410                        ucBufLen)
//  411 {
touch_i2cBurst_1addr_WriteBytes:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  412     WORD ucDummy; // loop dummy
//  413     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOV      R8,R0
//  414     while (ucDummy--)
??touch_i2cBurst_1addr_WriteBytes_0:
        MOV      R0,R8
        SUBS     R8,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurst_1addr_WriteBytes_1
//  415     {
//  416         if (touch_i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurst_1addr_WriteBytes_0
//  417         {
//  418             continue;
//  419         }
//  420         if (touch_i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE)
??touch_i2cBurst_1addr_WriteBytes_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
        CMP      R0,#+1
        BEQ.N    ??touch_i2cBurst_1addr_WriteBytes_0
//  421             // check non-acknowledge
//  422         {
//  423             continue;
//  424         }
//  425 
//  426         while (ucBufLen--)
??touch_i2cBurst_1addr_WriteBytes_3:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurst_1addr_WriteBytes_4
//  427             // loop of writting data
//  428         {
//  429             touch_i2c_SendByte(*pBuf); // send byte
        LDRB     R0,[R6, #+0]
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
//  430             pBuf++; // next byte pointer
        ADDS     R6,R6,#+1
        B.N      ??touch_i2cBurst_1addr_WriteBytes_3
//  431         } // while
//  432         break;
//  433     } // while
//  434     touch_i2c_Stop();
??touch_i2cBurst_1addr_WriteBytes_4:
??touch_i2cBurst_1addr_WriteBytes_1:
          CFI FunCall touch_i2c_Stop
        BL       touch_i2c_Stop
//  435 	
//  436 	//Delay(10000);
//  437 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock13
//  438 
//  439 /////////////////////////////////////////////////////////////////
//  440 // I2C read bytes from device.
//  441 //
//  442 // Arguments: ucSlaveAdr - slave address
//  443 //            ucSubAdr - sub address
//  444 //            pBuf - pointer of buffer
//  445 //            ucBufLen - length of buffer
//  446 /////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function touch_i2cBurst_1addr_ReadBytes
        THUMB
//  447 void touch_i2cBurst_1addr_ReadBytes(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE
//  448                        ucBufLen)
//  449 {
touch_i2cBurst_1addr_ReadBytes:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  450     WORD ucDummy; // loop dummy
//  451     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOV      R8,R0
//  452     while (ucDummy--)
??touch_i2cBurst_1addr_ReadBytes_0:
        MOV      R0,R8
        SUBS     R8,R0,#+1
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurst_1addr_ReadBytes_1
//  453     {
//  454         if (touch_i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurst_1addr_ReadBytes_0
//  455         {
//  456             continue;
//  457         }
//  458 		if (touch_i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE)
??touch_i2cBurst_1addr_ReadBytes_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_SendByte
        BL       touch_i2c_SendByte
        CMP      R0,#+1
        BEQ.N    ??touch_i2cBurst_1addr_ReadBytes_0
//  459             // check non-acknowledge
//  460         {
//  461             continue;
//  462         }
//  463       //i2c_Stop();
//  464         if (touch_i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
??touch_i2cBurst_1addr_ReadBytes_3:
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurst_1addr_ReadBytes_0
//  465         {
//  466             continue;
//  467         }
//  468         while (ucBufLen--)
??touch_i2cBurst_1addr_ReadBytes_4:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??touch_i2cBurst_1addr_ReadBytes_5
//  469             // loop to burst read
//  470         {
//  471             if (ucBufLen)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??touch_i2cBurst_1addr_ReadBytes_6
//  472             {
//  473                 *pBuf = touch_i2c_ReceiveByte(TRUE);
        MOVS     R0,#+1
          CFI FunCall touch_i2c_ReceiveByte
        BL       touch_i2c_ReceiveByte
        STRB     R0,[R6, #+0]
        B.N      ??touch_i2cBurst_1addr_ReadBytes_7
//  474             }
//  475             // receive byte
//  476             else
//  477             {
//  478                 *pBuf = touch_i2c_ReceiveByte(FALSE);
??touch_i2cBurst_1addr_ReadBytes_6:
        MOVS     R0,#+0
          CFI FunCall touch_i2c_ReceiveByte
        BL       touch_i2c_ReceiveByte
        STRB     R0,[R6, #+0]
//  479             }
//  480             // receive byte
//  481             pBuf++; // next byte pointer
??touch_i2cBurst_1addr_ReadBytes_7:
        ADDS     R6,R6,#+1
        B.N      ??touch_i2cBurst_1addr_ReadBytes_4
//  482         } // while
//  483         break;
//  484     } // while
//  485     touch_i2c_Stop();
??touch_i2cBurst_1addr_ReadBytes_5:
??touch_i2cBurst_1addr_ReadBytes_1:
          CFI FunCall touch_i2c_Stop
        BL       touch_i2c_Stop
//  486 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock14
//  487 
//  488 #endif
//  489 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function check_addr
        THUMB
//  490 void check_addr(void)
//  491 {
check_addr:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  492 	if (touch_i2c_AccessStart(0xba, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,#+186
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+0
        BNE.N    ??check_addr_0
//  493 	{
//  494 		Delay_1ms(10);
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  495 		if (touch_i2c_AccessStart(0x28, I2C_WRITE) == TRUE)
        MOVS     R1,#+0
        MOVS     R0,#+40
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+1
        BNE.N    ??check_addr_1
//  496 		GT911_adr=0x28;
        LDR.N    R0,??DataTable8_1
        MOVS     R1,#+40
        STRB     R1,[R0, #+0]
        B.N      ??check_addr_1
//  497 	}
//  498 	else 
//  499 		{
//  500 				Delay_1ms(10);
??check_addr_0:
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  501 	if (touch_i2c_AccessStart(0xba, I2C_WRITE) == TRUE)	
        MOVS     R1,#+0
        MOVS     R0,#+186
          CFI FunCall touch_i2c_AccessStart
        BL       touch_i2c_AccessStart
        CMP      R0,#+1
        BNE.N    ??check_addr_1
//  502 		GT911_adr=0xba;
        LDR.N    R0,??DataTable8_1
        MOVS     R1,#+186
        STRB     R1,[R0, #+0]
//  503 	}
//  504 }
??check_addr_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock15
//  505 
//  506 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function init_touch
        THUMB
//  507 void init_touch(void)
//  508 {
init_touch:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+12
          CFI CFA R13+16
//  509 
//  510 		GPIO_SetBits(CTOUCH_SDA_PORT,CTOUCH_SDA_PIN);
        MOV      R1,#+2048
        LDR.N    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  511 		Delay_1ms(10);
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  512 		GPIO_SetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
        MOV      R1,#+1024
        LDR.N    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  513 		Delay_1ms(10);
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  514 	
//  515 		GPIO_SetBits(CTOUCH_INT_PORT,CTOUCH_INT_PIN);
        MOVS     R1,#+4
        LDR.N    R0,??DataTable8_2  ;; 0x40011400
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  516 		Delay_1ms(10);
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  517 		GPIO_ResetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
        MOV      R1,#+4096
        LDR.N    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  518 		Delay_1ms(10);
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  519 		GPIO_SetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
        MOV      R1,#+4096
        LDR.N    R0,??DataTable8  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
//  520 	//	Delay(10000);
//  521 	//Delay(10000);
//  522 	//SysDelay(10000);
//  523 	Delay_1ms(10);
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  524 		{
//  525 		GPIO_InitTypeDef GPIO_InitStructure;
//  526 		GPIO_InitStructure.GPIO_Pin = CTOUCH_INT_PIN;
        MOVS     R0,#+4
        STRH     R0,[SP, #+4]
//  527 		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        MOVS     R0,#+4
        STRB     R0,[SP, #+7]
//  528 		GPIO_Init(CTOUCH_INT_PORT,&GPIO_InitStructure);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable8_2  ;; 0x40011400
          CFI FunCall GPIO_Init
        BL       GPIO_Init
//  529 	}
//  530 	Delay_1ms(10);
        MOVS     R0,#+10
          CFI FunCall Delay_1ms
        BL       Delay_1ms
//  531 	check_addr();
          CFI FunCall check_addr
        BL       check_addr
//  532 
//  533 
//  534 #if 0
//  535 	GPIO_ResetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
//  536 	Delay_1ms(10);
//  537 
//  538 	GPIO_SetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
//  539 	Delay_1ms(10);
//  540 
//  541 	GPIO_ResetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
//  542 	Delay_1ms(10);
//  543 
//  544 	GPIO_SetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
//  545 	Delay_1ms(10);
//  546 	GPIO_SetBits(CTOUCH_INT_PORT,CTOUCH_INT_PIN);
//  547 	Delay_1ms(10);
//  548 	GPIO_SetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
//  549 	Delay_1ms(10);
//  550 	Delay_1ms(10);
//  551 		{
//  552 		GPIO_InitTypeDef GPIO_InitStructure;
//  553 		GPIO_InitStructure.GPIO_Pin = CTOUCH_INT_PIN;
//  554 		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
//  555 		GPIO_Init(CTOUCH_INT_PORT,&GPIO_InitStructure);
//  556 	}
//  557 	//EXIT_Configuration();
//  558     GPIO_SetBits(CTOUCH_SDA_PORT,CTOUCH_SDA_PIN);
//  559 	Delay_1ms(10);
//  560 	GPIO_SetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
//  561 	Delay_1ms(10);
//  562 	//  i2cBurstWriteBytes(GT911_adr,0x80,0x47, GT911_init, sizeof(GT911_init)/sizeof(GT911_init[0]));
//  563 
//  564 	  #endif
//  565 	  //touch_i2cBurstWriteBytes(GT911_adr,0x80,0x40, touch_I2C_buff, 1);
//  566 	  touch_I2C_buff[0]=0;
        LDR.N    R0,??DataTable8_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  567 	  touch_i2cBurstWriteBytes(GT911_adr,0x81,0x4e, &touch_I2C_buff[0], 1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR.N    R3,??DataTable8_3
        MOVS     R2,#+78
        MOVS     R1,#+129
        LDR.N    R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
          CFI FunCall touch_i2cBurstWriteBytes
        BL       touch_i2cBurstWriteBytes
//  568 }
        POP      {R0-R2,PC}       ;; return
          CFI EndBlock cfiBlock16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     GT911_adr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x40011400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     touch_I2C_buff

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//    15 bytes in section .bss
// 1 366 bytes in section .text
// 
// 1 366 bytes of CODE memory
//    15 bytes of DATA memory
//
//Errors: none
//Warnings: none
