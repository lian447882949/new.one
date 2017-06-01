///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:43 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\i2c_driver.c                /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\Common\i2c_driver.c -D             /
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
//                    \Debug\List\i2c_driver.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME i2c_driver

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_ReadInputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN delay_10us

        PUBLIC GPIO_InitStructure
        PUBLIC ReadRadioFM
        PUBLIC ReadTW88
        PUBLIC ReadTW88_Page
        PUBLIC WriteRadioFM
        PUBLIC WriteTW88
        PUBLIC WriteTW88_Page
        PUBLIC i2cCurrent_Read
        PUBLIC i2cCurrent_Write
        PUBLIC i2cRead_Sub
        PUBLIC i2cRead_Sub_tw8823
        PUBLIC i2cSetSCL
        PUBLIC i2cSetSCL_tw8823
        PUBLIC i2cSetSDA
        PUBLIC i2cSetSDA_tw8823
        PUBLIC i2cWrite_Sub
        PUBLIC i2cWrite_Sub_tw8823
        PUBLIC i2c_AccessStart
        PUBLIC i2c_AccessStart_tw8823
        PUBLIC i2c_Delay
        PUBLIC i2c_ReceiveByte
        PUBLIC i2c_ReceiveByte_tw8823
        PUBLIC i2c_SendByte
        PUBLIC i2c_SendByte_tw8823
        PUBLIC i2c_Start
        PUBLIC i2c_Start_tw8823
        PUBLIC i2c_Stop
        PUBLIC i2c_Stop_tw8823
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\Common\i2c_driver.c
//    1 
//    2 #define _I2C_DRIVER_C_
//    3 
//    4 /* Includes ------------------------------------------------------------------*/
//    5 #include "i2c_driver.h"
//    6 #include "main.h"
//    7 #include "libr.h"
//    8 
//    9 #include "system_config.h"
//   10 #include "port.h"
//   11 
//   12 
//   13 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 GPIO_InitTypeDef GPIO_InitStructure;
GPIO_InitStructure:
        DS8 4
//   15 #if 1
//   16 void i2cSetSCL(BYTE bSet);
//   17 void i2cSetSDA(BYTE bSet);
//   18 void i2c_Delay(void);
//   19 BYTE i2c_Start(void);
//   20 BYTE i2c_ReceiveByte(BYTE bAck);
//   21 
//   22 void i2cSetSCL_tw8823(BYTE bSet);
//   23 void i2cSetSDA_tw8823(BYTE bSet);
//   24 void i2c_Delay_tw8823(void);
//   25 //BYTE i2c_Start_tw8823(void);
//   26 //void i2c_Stop_tw8823(void);
//   27 //BYTE i2c_SendByte_tw8823(BYTE ucVal);
//   28 //BYTE i2c_ReceiveByte_tw8823(BYTE bAck);
//   29 
//   30 /////////////////////////////////////////
//   31 // Set I2C SCL pin high/low.
//   32 //
//   33 // Arguments: bSet - high/low bit
//   34 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function i2cSetSCL
        THUMB
//   35 void i2cSetSCL(BYTE bSet)
//   36 {
i2cSetSCL:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   37     if(bSet) GPIO_SetBits(GPIOB, P_MAIN_SCL);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??i2cSetSCL_0
        MOVS     R1,#+64
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??i2cSetSCL_1
//   38     else GPIO_ResetBits(GPIOB, P_MAIN_SCL);	
??i2cSetSCL_0:
        MOVS     R1,#+64
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//   39 }
??i2cSetSCL_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   40 /////////////////////////////////////////
//   41 // Set I2C SDA pin high/low
//   42 //
//   43 // Arguments: bSet - high/low bit
//   44 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function i2cSetSDA
        THUMB
//   45 void i2cSetSDA(BYTE bSet)
//   46 {
i2cSetSDA:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   47 	   if(bSet) GPIO_SetBits(GPIOB, P_MAIN_SDA);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??i2cSetSDA_0
        MOVS     R1,#+128
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??i2cSetSDA_1
//   48 	   else   GPIO_ResetBits(GPIOB, P_MAIN_SDA);
??i2cSetSDA_0:
        MOVS     R1,#+128
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//   49 }
??i2cSetSDA_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   50 
//   51 //////////////////////////////////////////////////////////////
//   52 // Delay 4us
//   53 //////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function i2c_Delay
        THUMB
//   54 void i2c_Delay(void)
//   55 {
i2c_Delay:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   56    delay_10us();
          CFI FunCall delay_10us
        BL       delay_10us
//   57 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock2
//   58 //////////////////////////////////////////////////////
//   59 // I2C start signal.
//   60 // <comment>
//   61 //  SCL ________
//   62 //              \_________
//   63 //  SDA _____
//   64 //           \____________
//   65 //
//   66 // Return value: None
//   67 //////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function i2c_Start
        THUMB
//   68 BYTE i2c_Start(void)
//   69 {
i2c_Start:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   70     BYTE bStatus = TRUE; // success status
        MOVS     R4,#+1
//   71 
//   72    
//   73     i2cSetSDA(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
//   74     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//   75     i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//   76     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//   77 
//   78    if ((i2cSCL_PIN_STATUS() == _LOW) || (i2cSDA_PIN_STATUS() == _LOW))
        MOVS     R1,#+64
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??i2c_Start_0
        MOVS     R1,#+128
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??i2c_Start_1
//   79     {	
//   80         bStatus = FALSE;		
??i2c_Start_0:
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??i2c_Start_2
//   81     }
//   82     else
//   83     {	
//   84         i2cSetSDA(_LOW);
??i2c_Start_1:
        MOVS     R0,#+0
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
//   85         i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//   86         i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//   87 	 i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//   88     }
//   89 
//   90     return bStatus;
??i2c_Start_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3
//   91 }
//   92 /////////////////////////////////////////
//   93 // I2C stop signal.
//   94 // <comment>
//   95 //              ____________
//   96 //  SCL _______/
//   97 //                 _________
//   98 //  SDA __________/
//   99 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function i2c_Stop
        THUMB
//  100 void i2c_Stop(void)
//  101 {
i2c_Stop:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  102   /* Configure I2C1 pins: SCL and SDA */ 
//  103 
//  104     i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  105     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  106     i2cSetSDA(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
//  107     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  108     i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  109     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  110     i2cSetSDA(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
//  111     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  112 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4
//  113 
//  114 //////////////////////////////////////////////////////////////////////////
//  115 // I2C send byte to device.
//  116 //
//  117 // Arguments: ucVal - send byte
//  118 // Return value: I2C acknowledge bit
//  119 //               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//  120 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function i2c_SendByte
        THUMB
//  121 BYTE i2c_SendByte(BYTE ucVal)
//  122 {
i2c_SendByte:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  123     BYTE    ucMask = 0x80;
        MOVS     R5,#+128
//  124     BYTE     bAck=FALSE; // acknowledge bit
        MOVS     R6,#+0
//  125     BYTE     i;
//  126 
//  127     while(ucMask)
??i2c_SendByte_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??i2c_SendByte_1
//  128     {
//  129         if (ucVal & ucMask)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R5
        BEQ.N    ??i2c_SendByte_2
//  130             i2cSetSDA(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
        B.N      ??i2c_SendByte_3
//  131         else
//  132             i2cSetSDA(_LOW);
??i2c_SendByte_2:
        MOVS     R0,#+0
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
//  133         i2c_Delay();
??i2c_SendByte_3:
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  134         i2cSetSCL(_HIGH); // clock
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  135         i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  136         i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  137         i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  138 
//  139         ucMask >>= 1; // next
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R5,R5,#+1
        B.N      ??i2c_SendByte_0
//  140     } // while
//  141 
//  142     // recieve acknowledge
//  143     i2cSetSDA(_HIGH);
??i2c_SendByte_1:
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
//  144     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  145     i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  146     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  147 
//  148    ////////////////////////////////////////////////////////////	
//  149    ///ACK check
//  150 	    for(i=0;i<100;i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??i2c_SendByte_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+100
        BCS.N    ??i2c_SendByte_5
//  151 	    {
//  152 		if(i2cSDA_PIN_STATUS()==0)
        MOVS     R1,#+128
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??i2c_SendByte_5
//  153 			break;
//  154 
//  155 	    	i2c_Delay();
??i2c_SendByte_6:
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  156 	    }
        ADDS     R7,R7,#+1
        B.N      ??i2c_SendByte_4
//  157 	    
//  158 	     bAck = i2cSDA_PIN_STATUS(); // recieve acknowlege
??i2c_SendByte_5:
        MOVS     R1,#+128
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        MOVS     R6,R0
//  159 
//  160     ///////////////////////////////////////////////////////////	
//  161     i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  162 	
//  163     return (bAck);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock5
//  164 }
//  165 //////////////////////////////////////////////////////////////////////////
//  166 // I2C receive byte from device.
//  167 //
//  168 // Return value: receive byte
//  169 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function i2c_ReceiveByte
        THUMB
//  170 BYTE i2c_ReceiveByte(BYTE bAck)
//  171 {
i2c_ReceiveByte:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  172     BYTE    ucReceive = 0;
        MOVS     R5,#+0
//  173     BYTE    ucMask = 0x80;
        MOVS     R6,#+128
//  174 
//  175    i2cSetSDA(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
//  176 
//  177     while(ucMask)
??i2c_ReceiveByte_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??i2c_ReceiveByte_1
//  178     {
//  179 		i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  180 		i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  181 		if(GPIO_ReadInputDataBit(GPIOB, P_MAIN_SDA) == _HIGH)
        MOVS     R1,#+128
        LDR.W    R0,??DataTable9  ;; 0x40010c00
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??i2c_ReceiveByte_2
//  182 			ucReceive |= ucMask;
        ORRS     R5,R6,R5
//  183 	
//  184 		i2cSetSCL(_LOW);
??i2c_ReceiveByte_2:
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  185 		i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  186 
//  187         ucMask >>= 1;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R6,R6,#+1
        B.N      ??i2c_ReceiveByte_0
//  188     } // while
//  189    
//  190   if (bAck) // acknowledge
??i2c_ReceiveByte_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??i2c_ReceiveByte_3
//  191         i2cSetSDA(I2C_ACKNOWLEDGE);
        MOVS     R0,#+0
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
        B.N      ??i2c_ReceiveByte_4
//  192     else // non-acknowledge
//  193         i2cSetSDA(I2C_NON_ACKNOWLEDGE);
??i2c_ReceiveByte_3:
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA
        BL       i2cSetSDA
//  194 
//  195     i2c_Delay();
??i2c_ReceiveByte_4:
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  196     i2cSetSCL(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  197     i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  198     i2cSetSCL(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL
        BL       i2cSetSCL
//  199 
//  200     return ucReceive;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock6
//  201 
//  202 }
//  203 	
//  204 //////////////////////////////////////////////////////////////////////////
//  205 // I2C access start.
//  206 //
//  207 // Arguments: ucSlaveAdr - slave address
//  208 //            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//  209 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function i2c_AccessStart
        THUMB
//  210 BYTE i2c_AccessStart(BYTE ucSlaveAdr, I2C_Direction trans_t)
//  211 {
i2c_AccessStart:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  212     BYTE ucDummy; // loop dummy
//  213 
//  214     if (trans_t == I2C_READ) // check i2c read or write
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??i2c_AccessStart_0
//  215         ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
        ORRS     R4,R4,#0x1
        B.N      ??i2c_AccessStart_1
//  216     else
//  217         ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write
??i2c_AccessStart_0:
        ANDS     R4,R4,#0xFE
//  218 
//  219     ucDummy = I2C_ACCESS_DUMMY_TIME;
??i2c_AccessStart_1:
        MOVS     R0,#+3
        MOVS     R6,R0
//  220     while (ucDummy--)
??i2c_AccessStart_2:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2c_AccessStart_3
//  221     {    
//  222 	i2c_Delay();
          CFI FunCall i2c_Delay
        BL       i2c_Delay
//  223         if (i2c_Start() == FALSE)
          CFI FunCall i2c_Start
        BL       i2c_Start
        CMP      R0,#+0
        BEQ.N    ??i2c_AccessStart_2
//  224             continue;
//  225 
//  226         if (i2c_SendByte(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
??i2c_AccessStart_4:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_SendByte
        BL       i2c_SendByte
        CMP      R0,#+0
        BNE.N    ??i2c_AccessStart_2
//  227             return TRUE;
        MOVS     R0,#+1
        B.N      ??i2c_AccessStart_5
//  228 		//printf("ucSlaveAdr====%x", ucSlaveAdr);
//  229         //i2c_Stop();
//  230         //Delay_1ms(1);
//  231     }
//  232 
//  233     return FALSE;
??i2c_AccessStart_3:
        MOVS     R0,#+0
??i2c_AccessStart_5:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock7
//  234 }
//  235 /////////////////////////////////////////////////////////////////
//  236 // I2C write bytes to device.
//  237 //
//  238 // Arguments: ucSlaveAdr - slave address
//  239 //            ucSubAdr - sub address
//  240 //            pBuf - pointer of buffer
//  241 //            ucBufLen - length of buffer
//  242 /////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function i2cWrite_Sub
        THUMB
//  243 BOOL i2cWrite_Sub(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
//  244 {
i2cWrite_Sub:
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
//  245     BYTE ucDummy; // loop dummy
//  246 
//  247     //i2c_Stop();
//  248     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOV      R8,R0
//  249     while(ucDummy--)
??i2cWrite_Sub_0:
        MOV      R0,R8
        SUBS     R8,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cWrite_Sub_1
//  250     {
//  251         if (i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_AccessStart
        BL       i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??i2cWrite_Sub_0
//  252             continue;
//  253         if (i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
??i2cWrite_Sub_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_SendByte
        BL       i2c_SendByte
        CMP      R0,#+1
        BEQ.N    ??i2cWrite_Sub_0
//  254             continue;
//  255 
//  256         while(ucBufLen--) // loop of writting data
??i2cWrite_Sub_3:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cWrite_Sub_4
//  257         {
//  258             i2c_SendByte(*pBuf); // send byte
        LDRB     R0,[R6, #+0]
          CFI FunCall i2c_SendByte
        BL       i2c_SendByte
//  259             pBuf++; // next byte pointer
        ADDS     R6,R6,#+1
        B.N      ??i2cWrite_Sub_3
//  260         } // while
//  261 
//  262         break;
//  263     } // while
//  264 
//  265     if(ucDummy==0)
??i2cWrite_Sub_4:
??i2cWrite_Sub_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??i2cWrite_Sub_5
//  266     {
//  267 		return FALSE;
        MOVS     R0,#+0
        B.N      ??i2cWrite_Sub_6
//  268     }
//  269     else
//  270     {
//  271 		i2c_Stop();
??i2cWrite_Sub_5:
          CFI FunCall i2c_Stop
        BL       i2c_Stop
//  272 		return TRUE;
        MOVS     R0,#+1
??i2cWrite_Sub_6:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock8
//  273     }
//  274 }
//  275 
//  276 /////////////////////////////////////////////////////////////////
//  277 // I2C read bytes from device.
//  278 //
//  279 // Arguments: ucSlaveAdr - slave address
//  280 //            ucSubAdr - sub address
//  281 //            pBuf - pointer of buffer
//  282 //            ucBufLen - length of buffer
//  283 /////////////////////////////////////////////////////////////////
//  284 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function i2cRead_Sub
        THUMB
//  285 BOOL i2cRead_Sub(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
//  286 {
i2cRead_Sub:
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
//  287     BYTE ucDummy; // loop dummy
//  288 
//  289     //i2c_Stop();
//  290     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOV      R8,R0
//  291     while(ucDummy--)
??i2cRead_Sub_0:
        MOV      R0,R8
        SUBS     R8,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cRead_Sub_1
//  292     {
//  293         if (i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_AccessStart
        BL       i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??i2cRead_Sub_0
//  294             continue;
//  295 
//  296         if (i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
??i2cRead_Sub_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_SendByte
        BL       i2c_SendByte
        CMP      R0,#+1
        BEQ.N    ??i2cRead_Sub_0
//  297             continue;
//  298 
//  299         if (i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
??i2cRead_Sub_3:
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_AccessStart
        BL       i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??i2cRead_Sub_0
//  300             continue;
//  301 
//  302         while(ucBufLen--) // loop to burst read
??i2cRead_Sub_4:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cRead_Sub_5
//  303         {
//  304             *pBuf = i2c_ReceiveByte(ucBufLen); // receive byte
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_ReceiveByte
        BL       i2c_ReceiveByte
        STRB     R0,[R6, #+0]
//  305 
//  306             pBuf++; // next byte pointer
        ADDS     R6,R6,#+1
        B.N      ??i2cRead_Sub_4
//  307         } // while
//  308 
//  309         break;
//  310     } // while
//  311 
//  312     if(ucDummy==0)
??i2cRead_Sub_5:
??i2cRead_Sub_1:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??i2cRead_Sub_6
//  313     {
//  314 		return FALSE;
        MOVS     R0,#+0
        B.N      ??i2cRead_Sub_7
//  315     }
//  316     else
//  317     {
//  318 		i2c_Stop();
??i2cRead_Sub_6:
          CFI FunCall i2c_Stop
        BL       i2c_Stop
//  319 		return TRUE;
        MOVS     R0,#+1
??i2cRead_Sub_7:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock9
//  320     }
//  321 }
//  322 
//  323 // I2C read current bytes from device.
//  324 //
//  325 // Arguments: ucSlaveAdr - slave address
//  326 //            pBuf - pointer of buffer
//  327 //            ucBufLen - length of buffer
//  328 /////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function i2cCurrent_Read
        THUMB
//  329 BOOL i2cCurrent_Read(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
//  330 {
i2cCurrent_Read:
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
//  331     BYTE ucDummy; // loop dummy
//  332 
//  333     //i2c_Stop();
//  334     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOVS     R7,R0
//  335     while(ucDummy--)
??i2cCurrent_Read_0:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cCurrent_Read_1
//  336     {
//  337         if (i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_AccessStart
        BL       i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??i2cCurrent_Read_0
//  338             continue;
//  339 
//  340         while(ucBufLen--) // loop to burst read
??i2cCurrent_Read_2:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cCurrent_Read_3
//  341         {
//  342             *pBuf = i2c_ReceiveByte(ucBufLen); // receive byte
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_ReceiveByte
        BL       i2c_ReceiveByte
        STRB     R0,[R5, #+0]
//  343 
//  344             pBuf++; // next byte pointer
        ADDS     R5,R5,#+1
        B.N      ??i2cCurrent_Read_2
//  345         } // while
//  346 
//  347         break;
//  348     } // while
//  349 
//  350     if(ucDummy==0)
??i2cCurrent_Read_3:
??i2cCurrent_Read_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??i2cCurrent_Read_4
//  351     {
//  352 		return FALSE;
        MOVS     R0,#+0
        B.N      ??i2cCurrent_Read_5
//  353     }
//  354     else
//  355     {
//  356 		i2c_Stop();
??i2cCurrent_Read_4:
          CFI FunCall i2c_Stop
        BL       i2c_Stop
//  357 		return TRUE;
        MOVS     R0,#+1
??i2cCurrent_Read_5:
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock10
//  358     }
//  359 }
//  360 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function i2cCurrent_Write
        THUMB
//  361 BOOL i2cCurrent_Write(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
//  362 { 
i2cCurrent_Write:
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
//  363     BYTE ucDummy; // loop dummy
//  364 
//  365     //i2c_Stop();
//  366     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOVS     R7,R0
//  367     while(ucDummy--)
??i2cCurrent_Write_0:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cCurrent_Write_1
//  368     {
//  369         if (i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_AccessStart
        BL       i2c_AccessStart
        CMP      R0,#+0
        BEQ.N    ??i2cCurrent_Write_0
//  370             continue;
//  371 
//  372         while(ucBufLen--) // loop of writting data
??i2cCurrent_Write_2:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cCurrent_Write_3
//  373         {
//  374             i2c_SendByte(*pBuf); // send byte
        LDRB     R0,[R5, #+0]
          CFI FunCall i2c_SendByte
        BL       i2c_SendByte
//  375             pBuf++; // next byte pointer
        ADDS     R5,R5,#+1
        B.N      ??i2cCurrent_Write_2
//  376         } // while
//  377 
//  378         break;
//  379     } // while
//  380 
//  381     if(ucDummy==0)
??i2cCurrent_Write_3:
??i2cCurrent_Write_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??i2cCurrent_Write_4
//  382     {
//  383 		return FALSE;
        MOVS     R0,#+0
        B.N      ??i2cCurrent_Write_5
//  384     }
//  385     else
//  386     {
//  387 		i2c_Stop();
??i2cCurrent_Write_4:
          CFI FunCall i2c_Stop
        BL       i2c_Stop
//  388 		return TRUE;
        MOVS     R0,#+1
??i2cCurrent_Write_5:
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock11
//  389     }
//  390 }
//  391 #endif
//  392 
//  393 #if 1
//  394 ///////////////////////////////////////////////////////////////////////////////////
//  395 //////I2C    sound
//  396 /////////////////////////////////////////
//  397 // Set I2C SCL pin high/low.
//  398 //
//  399 // Arguments: bSet - high/low bit
//  400 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function i2cSetSCL_tw8823
        THUMB
//  401 void i2cSetSCL_tw8823(BYTE bSet)
//  402 {
i2cSetSCL_tw8823:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  403 
//  404     if(bSet) GPIO_SetBits(GPIOC, P_TW8823_SCL);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??i2cSetSCL_tw8823_0
        MOVS     R1,#+8
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??i2cSetSCL_tw8823_1
//  405     else GPIO_ResetBits(GPIOC, P_TW8823_SCL);	
??i2cSetSCL_tw8823_0:
        MOVS     R1,#+8
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  406 
//  407 }
??i2cSetSCL_tw8823_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock12
//  408 /////////////////////////////////////////
//  409 // Set I2C SDA pin high/low
//  410 //
//  411 // Arguments: bSet - high/low bit
//  412 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function i2cSetSDA_tw8823
        THUMB
//  413 void i2cSetSDA_tw8823(BYTE bSet)
//  414 {
i2cSetSDA_tw8823:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  415 
//  416 	   if(bSet) GPIO_SetBits(GPIOC, P_TW8823_SDA);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??i2cSetSDA_tw8823_0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_SetBits
        BL       GPIO_SetBits
        B.N      ??i2cSetSDA_tw8823_1
//  417 	   else   GPIO_ResetBits(GPIOC, P_TW8823_SDA);
??i2cSetSDA_tw8823_0:
        MOVS     R1,#+4
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_ResetBits
        BL       GPIO_ResetBits
//  418 	   
//  419 }
??i2cSetSDA_tw8823_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock13
//  420 //////////////////////////////////////////////////////////////
//  421 // Delay 4us
//  422 //////////////////////////////////////////////////////////////
//  423 #define i2c_Delay_tw8823()
//  424 //{
//  425    //delay_10us();
//  426    //delay_5us();
//  427 	//delay_1us();
//  428 	//delay_1us();
//  429 	//delay_1us();
//  430 //}
//  431 //////////////////////////////////////////////////////
//  432 // I2C start signal.
//  433 // <comment>
//  434 //  SCL ________
//  435 //              \_________
//  436 //  SDA _____
//  437 //           \____________
//  438 //
//  439 // Return value: None
//  440 //////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function i2c_Start_tw8823
        THUMB
//  441 BYTE i2c_Start_tw8823(void)
//  442 {
i2c_Start_tw8823:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  443     BYTE bStatus = TRUE; // success status
        MOVS     R4,#+1
//  444    
//  445     i2cSetSDA_tw8823(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
//  446     i2c_Delay_tw8823();
//  447     i2cSetSCL_tw8823(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  448     i2c_Delay_tw8823();
//  449 
//  450 
//  451    if ((i2cSCL_PIN_STATUS_tw8823() == _LOW) || (i2cSDA_PIN_STATUS_tw8823() == _LOW))
        MOVS     R1,#+8
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??i2c_Start_tw8823_0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BNE.N    ??i2c_Start_tw8823_1
//  452     {
//  453 	
//  454         bStatus = FALSE;		
??i2c_Start_tw8823_0:
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??i2c_Start_tw8823_2
//  455     }
//  456     else
//  457     {
//  458 	
//  459         i2cSetSDA_tw8823(_LOW);
??i2c_Start_tw8823_1:
        MOVS     R0,#+0
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
//  460         i2c_Delay_tw8823();
//  461         i2cSetSCL_tw8823(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  462 	 i2c_Delay_tw8823();
//  463 	
//  464     }
//  465 
//  466     return bStatus;
??i2c_Start_tw8823_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14
//  467 }
//  468 /////////////////////////////////////////
//  469 // I2C stop signal.
//  470 // <comment>
//  471 //              ____________
//  472 //  SCL _______/
//  473 //                 _________
//  474 //  SDA __________/
//  475 /////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function i2c_Stop_tw8823
        THUMB
//  476 void i2c_Stop_tw8823(void)
//  477 {
i2c_Stop_tw8823:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  478   /* Configure I2C1 pins: SCL and SDA */ 
//  479 
//  480     i2cSetSCL_tw8823(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  481     i2c_Delay_tw8823();
//  482     i2cSetSDA_tw8823(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
//  483     i2c_Delay_tw8823();
//  484     i2cSetSCL_tw8823(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  485     i2c_Delay_tw8823();
//  486     i2cSetSDA_tw8823(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
//  487     i2c_Delay_tw8823();
//  488 
//  489 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock15
//  490 
//  491 //////////////////////////////////////////////////////////////////////////
//  492 // I2C send byte to device.
//  493 //
//  494 // Arguments: ucVal - send byte
//  495 // Return value: I2C acknowledge bit
//  496 //               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//  497 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function i2c_SendByte_tw8823
        THUMB
//  498 BYTE i2c_SendByte_tw8823(BYTE ucVal)
//  499 {
i2c_SendByte_tw8823:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  500     BYTE    ucMask = 0x80;
        MOVS     R5,#+128
//  501     BYTE     bAck=FALSE; // acknowledge bit
        MOVS     R6,#+0
//  502     BYTE     i;
//  503 
//  504     while(ucMask)
??i2c_SendByte_tw8823_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??i2c_SendByte_tw8823_1
//  505     {
//  506         if (ucVal & ucMask)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R5
        BEQ.N    ??i2c_SendByte_tw8823_2
//  507             i2cSetSDA_tw8823(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
        B.N      ??i2c_SendByte_tw8823_3
//  508         else
//  509             i2cSetSDA_tw8823(_LOW);
??i2c_SendByte_tw8823_2:
        MOVS     R0,#+0
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
//  510         i2c_Delay_tw8823();
//  511         i2cSetSCL_tw8823(_HIGH); // clock
??i2c_SendByte_tw8823_3:
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  512         i2c_Delay_tw8823();
//  513         i2cSetSCL_tw8823(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  514         i2c_Delay_tw8823();
//  515 
//  516         ucMask >>= 1; // next
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R5,R5,#+1
        B.N      ??i2c_SendByte_tw8823_0
//  517     } // while
//  518 
//  519     // recieve acknowledge
//  520     i2cSetSDA_tw8823(_HIGH);
??i2c_SendByte_tw8823_1:
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
//  521     i2c_Delay_tw8823();
//  522     i2cSetSCL_tw8823(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  523     i2c_Delay_tw8823();
//  524 
//  525    ////////////////////////////////////////////////////////////	
//  526    ///ACK check
//  527 
//  528 
//  529 	    for(i=0;i<100;i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??i2c_SendByte_tw8823_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+100
        BCS.N    ??i2c_SendByte_tw8823_5
//  530 	    {
//  531 		if(i2cSDA_PIN_STATUS_tw8823()==0)
        MOVS     R1,#+4
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??i2c_SendByte_tw8823_5
//  532 		{
//  533 			break;
//  534 		}
//  535 
//  536 	    	i2c_Delay_tw8823();
//  537 	    }
??i2c_SendByte_tw8823_6:
        ADDS     R7,R7,#+1
        B.N      ??i2c_SendByte_tw8823_4
//  538 
//  539 	//	if(i<100)
//  540 	//		i=9;
//  541 	//	else
//  542 	//		i=0;
//  543 	     bAck = i2cSDA_PIN_STATUS_tw8823(); // recieve acknowlege
??i2c_SendByte_tw8823_5:
        MOVS     R1,#+4
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        MOVS     R6,R0
//  544 
//  545     ///////////////////////////////////////////////////////////	
//  546     i2cSetSCL_tw8823(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  547 	
//  548     return (bAck);
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock16
//  549 }
//  550 //////////////////////////////////////////////////////////////////////////
//  551 // I2C receive byte from device.
//  552 //
//  553 // Return value: receive byte
//  554 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function i2c_ReceiveByte_tw8823
        THUMB
//  555 BYTE i2c_ReceiveByte_tw8823(BYTE bAck)
//  556 {
i2c_ReceiveByte_tw8823:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  557     BYTE    ucReceive = 0;
        MOVS     R5,#+0
//  558     BYTE    ucMask = 0x80;
        MOVS     R6,#+128
//  559 
//  560    i2cSetSDA_tw8823(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
//  561 
//  562     while(ucMask)
??i2c_ReceiveByte_tw8823_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??i2c_ReceiveByte_tw8823_1
//  563     {
//  564 		i2cSetSCL_tw8823(_HIGH);
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  565 		i2c_Delay_tw8823();
//  566 		if(GPIO_ReadInputDataBit(GPIOC, P_TW8823_SDA) == _HIGH)
        MOVS     R1,#+4
        LDR.N    R0,??DataTable9_1  ;; 0x40011000
          CFI FunCall GPIO_ReadInputDataBit
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??i2c_ReceiveByte_tw8823_2
//  567 			ucReceive |= ucMask;
        ORRS     R5,R6,R5
//  568 	
//  569 		i2cSetSCL_tw8823(_LOW);
??i2c_ReceiveByte_tw8823_2:
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  570 		i2c_Delay_tw8823();
//  571 
//  572         ucMask >>= 1;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R6,R6,#+1
        B.N      ??i2c_ReceiveByte_tw8823_0
//  573     } // while
//  574    
//  575   if (bAck) // acknowledge
??i2c_ReceiveByte_tw8823_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??i2c_ReceiveByte_tw8823_3
//  576         i2cSetSDA_tw8823(I2C_ACKNOWLEDGE);
        MOVS     R0,#+0
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
        B.N      ??i2c_ReceiveByte_tw8823_4
//  577     else // non-acknowledge
//  578         i2cSetSDA_tw8823(I2C_NON_ACKNOWLEDGE);
??i2c_ReceiveByte_tw8823_3:
        MOVS     R0,#+1
          CFI FunCall i2cSetSDA_tw8823
        BL       i2cSetSDA_tw8823
//  579 
//  580     i2c_Delay_tw8823();
//  581     i2cSetSCL_tw8823(_HIGH);
??i2c_ReceiveByte_tw8823_4:
        MOVS     R0,#+1
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  582     i2c_Delay_tw8823();
//  583     i2cSetSCL_tw8823(_LOW);
        MOVS     R0,#+0
          CFI FunCall i2cSetSCL_tw8823
        BL       i2cSetSCL_tw8823
//  584 
//  585     return ucReceive;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock17
//  586 
//  587 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x40011000
//  588 
//  589 //////////////////////////////////////////////////////////////////////////
//  590 // I2C access start.
//  591 //
//  592 // Arguments: ucSlaveAdr - slave address
//  593 //            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//  594 //////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function i2c_AccessStart_tw8823
        THUMB
//  595 BYTE i2c_AccessStart_tw8823(BYTE ucSlaveAdr, I2C_Direction trans_t)
//  596 {
i2c_AccessStart_tw8823:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  597     BYTE ucDummy; // loop dummy
//  598 
//  599     if (trans_t == I2C_READ) // check i2c read or write
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??i2c_AccessStart_tw8823_0
//  600         ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
        ORRS     R4,R4,#0x1
        B.N      ??i2c_AccessStart_tw8823_1
//  601     else
//  602         ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write
??i2c_AccessStart_tw8823_0:
        ANDS     R4,R4,#0xFE
//  603 
//  604     ucDummy = I2C_ACCESS_DUMMY_TIME;
??i2c_AccessStart_tw8823_1:
        MOVS     R0,#+3
        MOVS     R6,R0
//  605     while (ucDummy--)
??i2c_AccessStart_tw8823_2:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2c_AccessStart_tw8823_3
//  606     {    
//  607 	i2c_Delay_tw8823();
//  608         if (i2c_Start_tw8823() == FALSE)
          CFI FunCall i2c_Start_tw8823
        BL       i2c_Start_tw8823
        CMP      R0,#+0
        BEQ.N    ??i2c_AccessStart_tw8823_2
//  609             continue;
//  610 
//  611         if (i2c_SendByte_tw8823(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
??i2c_AccessStart_tw8823_4:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_SendByte_tw8823
        BL       i2c_SendByte_tw8823
        CMP      R0,#+0
        BNE.N    ??i2c_AccessStart_tw8823_2
//  612             return TRUE;
        MOVS     R0,#+1
        B.N      ??i2c_AccessStart_tw8823_5
//  613 		//printf("ucSlaveAdr====%x", ucSlaveAdr);
//  614        // i2c_Stop_tw8823();
//  615        // Delay_1ms(1);
//  616     }
//  617 
//  618     return FALSE;
??i2c_AccessStart_tw8823_3:
        MOVS     R0,#+0
??i2c_AccessStart_tw8823_5:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock18
//  619 }
//  620 /////////////////////////////////////////////////////////////////
//  621 // I2C write bytes to device.
//  622 //
//  623 // Arguments: ucSlaveAdr - slave address
//  624 //            ucSubAdr - sub address
//  625 //            pBuf - pointer of buffer
//  626 //            ucBufLen - length of buffer
//  627 /////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function i2cWrite_Sub_tw8823
        THUMB
//  628 BOOL i2cWrite_Sub_tw8823(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
//  629 {
i2cWrite_Sub_tw8823:
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
//  630     BYTE ucDummy; // loop dummy
//  631 	//BYTE i;
//  632 
//  633     //i2c_Stop_tw8823();
//  634     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOV      R8,R0
//  635     while(ucDummy--)
??i2cWrite_Sub_tw8823_0:
        MOV      R0,R8
        SUBS     R8,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cWrite_Sub_tw8823_1
//  636     {
//  637         if (i2c_AccessStart_tw8823(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_AccessStart_tw8823
        BL       i2c_AccessStart_tw8823
        CMP      R0,#+0
        BEQ.N    ??i2cWrite_Sub_tw8823_0
//  638         {
//  639             continue;
//  640         }
//  641         if (i2c_SendByte_tw8823(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
??i2cWrite_Sub_tw8823_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_SendByte_tw8823
        BL       i2c_SendByte_tw8823
        CMP      R0,#+1
        BEQ.N    ??i2cWrite_Sub_tw8823_0
//  642             continue;
//  643 
//  644         while(ucBufLen--) // loop of writting data
??i2cWrite_Sub_tw8823_3:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cWrite_Sub_tw8823_4
//  645         {
//  646             i2c_SendByte_tw8823(*pBuf); // send byte
        LDRB     R0,[R6, #+0]
          CFI FunCall i2c_SendByte_tw8823
        BL       i2c_SendByte_tw8823
//  647             pBuf++; // next byte pointer
        ADDS     R6,R6,#+1
        B.N      ??i2cWrite_Sub_tw8823_3
//  648         } // while
//  649 
//  650         break;
//  651     } // while
//  652 
//  653 	i2c_Stop_tw8823();
??i2cWrite_Sub_tw8823_4:
??i2cWrite_Sub_tw8823_1:
          CFI FunCall i2c_Stop_tw8823
        BL       i2c_Stop_tw8823
//  654 
//  655     if(ucDummy==0)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??i2cWrite_Sub_tw8823_5
//  656     {
//  657 		return FALSE;
        MOVS     R0,#+0
        B.N      ??i2cWrite_Sub_tw8823_6
//  658     }
//  659     else
//  660     {
//  661 		return TRUE;
??i2cWrite_Sub_tw8823_5:
        MOVS     R0,#+1
??i2cWrite_Sub_tw8823_6:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock19
//  662     }
//  663 }
//  664 
//  665 /////////////////////////////////////////////////////////////////
//  666 // I2C read bytes from device.
//  667 //
//  668 // Arguments: ucSlaveAdr - slave address
//  669 //            ucSubAdr - sub address
//  670 //            pBuf - pointer of buffer
//  671 //            ucBufLen - length of buffer
//  672 /////////////////////////////////////////////////////////////////
//  673 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function i2cRead_Sub_tw8823
        THUMB
//  674 BOOL i2cRead_Sub_tw8823(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
//  675 {
i2cRead_Sub_tw8823:
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
//  676     BYTE ucDummy; // loop dummy
//  677 
//  678     //i2c_Stop_tw8823();
//  679     ucDummy = I2C_ACCESS_DUMMY_TIME;
        MOVS     R0,#+3
        MOV      R8,R0
//  680     while(ucDummy--)
??i2cRead_Sub_tw8823_0:
        MOV      R0,R8
        SUBS     R8,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cRead_Sub_tw8823_1
//  681     {
//  682         if (i2c_AccessStart_tw8823(ucSlaveAdr, I2C_WRITE) == FALSE)
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_AccessStart_tw8823
        BL       i2c_AccessStart_tw8823
        CMP      R0,#+0
        BEQ.N    ??i2cRead_Sub_tw8823_0
//  683             continue;
//  684 
//  685         if (i2c_SendByte_tw8823(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
??i2cRead_Sub_tw8823_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_SendByte_tw8823
        BL       i2c_SendByte_tw8823
        CMP      R0,#+1
        BEQ.N    ??i2cRead_Sub_tw8823_0
//  686             continue;
//  687 
//  688         if (i2c_AccessStart_tw8823(ucSlaveAdr, I2C_READ) == FALSE)
??i2cRead_Sub_tw8823_3:
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_AccessStart_tw8823
        BL       i2c_AccessStart_tw8823
        CMP      R0,#+0
        BEQ.N    ??i2cRead_Sub_tw8823_0
//  689             continue;
//  690 
//  691         while(ucBufLen--) // loop to burst read
??i2cRead_Sub_tw8823_4:
        MOVS     R0,R7
        SUBS     R7,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??i2cRead_Sub_tw8823_5
//  692         {
//  693             *pBuf = i2c_ReceiveByte_tw8823(ucBufLen); // receive byte
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall i2c_ReceiveByte_tw8823
        BL       i2c_ReceiveByte_tw8823
        STRB     R0,[R6, #+0]
//  694 
//  695             pBuf++; // next byte pointer
        ADDS     R6,R6,#+1
        B.N      ??i2cRead_Sub_tw8823_4
//  696         } // while
//  697 
//  698         break;
//  699     } // while
//  700 
//  701 	i2c_Stop_tw8823();
??i2cRead_Sub_tw8823_5:
??i2cRead_Sub_tw8823_1:
          CFI FunCall i2c_Stop_tw8823
        BL       i2c_Stop_tw8823
//  702 
//  703     if(ucDummy==0)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??i2cRead_Sub_tw8823_6
//  704     {
//  705 		return FALSE;
        MOVS     R0,#+0
        B.N      ??i2cRead_Sub_tw8823_7
//  706     }
//  707     else
//  708     {
//  709 		return TRUE;
??i2cRead_Sub_tw8823_6:
        MOVS     R0,#+1
??i2cRead_Sub_tw8823_7:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock20
//  710     }
//  711 }
//  712 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function WriteTW88
        THUMB
//  713 void WriteTW88(Byte addr,Byte b)	
//  714 {
WriteTW88:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  715 	Byte buff[1];
//  716 
//  717 	buff[0]=b;
        STRB     R5,[SP, #+0]
//  718    	i2cWrite_Sub_tw8823(TW8823_ADDRESS,addr,buff,1);
        MOVS     R3,#+1
        ADD      R2,SP,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+138
          CFI FunCall i2cWrite_Sub_tw8823
        BL       i2cWrite_Sub_tw8823
//  719 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock21

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function ReadTW88
        THUMB
//  720 Byte ReadTW88(Byte addr)
//  721 {
ReadTW88:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
        MOVS     R4,R0
//  722 	Byte buff[1];
//  723 
//  724 	i2cRead_Sub_tw8823(TW8823_ADDRESS,addr,buff,1);
        MOVS     R3,#+1
        ADD      R2,SP,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+138
          CFI FunCall i2cRead_Sub_tw8823
        BL       i2cRead_Sub_tw8823
//  725 	return buff[0];
        LDRB     R0,[SP, #+0]
        POP      {R1,R2,R4,PC}    ;; return
          CFI EndBlock cfiBlock22
//  726 }	

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function WriteTW88_Page
        THUMB
//  727 void WriteTW88_Page(WORD addr,Byte b)	
//  728 {
WriteTW88_Page:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  729 	WriteTW88( 0xff, HIBYTE(addr ));	
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  730 	WriteTW88(LOBYTE(addr),b);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall WriteTW88
        BL       WriteTW88
//  731 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function ReadTW88_Page
        THUMB
//  732 Byte ReadTW88_Page(WORD addr)
//  733 {
ReadTW88_Page:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  734 	WriteTW88( 0xff, HIBYTE(addr) );	
        LSRS     R1,R4,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+255
          CFI FunCall WriteTW88
        BL       WriteTW88
//  735 	return  ReadTW88(LOBYTE(addr));
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall ReadTW88
        BL       ReadTW88
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock24
//  736 }	
//  737 
//  738 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function WriteRadioFM
        THUMB
//  739 void WriteRadioFM(Byte addr,Byte b)	
//  740 {
WriteRadioFM:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  741 	Byte buff[1];
//  742 
//  743 	buff[0]=b;
        STRB     R5,[SP, #+0]
//  744    	i2cWrite_Sub_tw8823(RadioFM_ADDRESS,addr,buff,1);
        MOVS     R3,#+1
        ADD      R2,SP,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+88
          CFI FunCall i2cWrite_Sub_tw8823
        BL       i2cWrite_Sub_tw8823
//  745 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock25

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function ReadRadioFM
        THUMB
//  746 Byte ReadRadioFM(Byte addr)
//  747 {
ReadRadioFM:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
        MOVS     R4,R0
//  748 	Byte buff[1];
//  749 
//  750 	i2cRead_Sub_tw8823(RadioFM_ADDRESS,addr,buff,1);
        MOVS     R3,#+1
        ADD      R2,SP,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+88
          CFI FunCall i2cRead_Sub_tw8823
        BL       i2cRead_Sub_tw8823
//  751 	return buff[0];
        LDRB     R0,[SP, #+0]
        POP      {R1,R2,R4,PC}    ;; return
          CFI EndBlock cfiBlock26
//  752 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  753 
//  754 #endif
//  755 #if 0
//  756 void i2cSetSCL_TV(BYTE bSet);
//  757 void i2cSetSDA_TV(BYTE bSet);
//  758 void i2c_Delay_TV(void);
//  759 BYTE i2c_Start_TV(void);
//  760 BYTE i2c_ReceiveByte_TV(BYTE bAck);
//  761 
//  762 /////////////////////////////////////////
//  763 // Set I2C SCL pin high/low.
//  764 //
//  765 // Arguments: bSet - high/low bit
//  766 /////////////////////////////////////////
//  767 void i2cSetSCL_TV(BYTE bSet)
//  768 {
//  769     if(bSet) GPIO_SetBits(GPIOD, P_DTVTXD_ATVSCL);
//  770     else GPIO_ResetBits(GPIOD, P_DTVTXD_ATVSCL);	
//  771 } 
//  772 /////////////////////////////////////////
//  773 // Set I2C SDA pin high/low
//  774 //
//  775 // Arguments: bSet - high/low bit
//  776 /////////////////////////////////////////
//  777 void i2cSetSDA_TV(BYTE bSet)
//  778 {
//  779 	   if(bSet) GPIO_SetBits(GPIOB, P_TV_SDA);
//  780 	   else   GPIO_ResetBits(GPIOB, P_TV_SDA);
//  781 }
//  782 
//  783 //////////////////////////////////////////////////////////////
//  784 // Delay 4us
//  785 //////////////////////////////////////////////////////////////
//  786 void i2c_Delay_TV(void)
//  787 {
//  788    delay_10us();
//  789   // delay_50us();//tiger 0723
//  790 }
//  791 //////////////////////////////////////////////////////
//  792 // I2C start signal.
//  793 // <comment>
//  794 //  SCL ________
//  795 //              \_________
//  796 //  SDA _____
//  797 //           \____________
//  798 //
//  799 // Return value: None
//  800 //////////////////////////////////////////////////////
//  801 BYTE i2c_Start_TV(void)
//  802 {
//  803     BYTE bStatus = TRUE; // success status
//  804 
//  805    
//  806     i2cSetSDA_TV(_HIGH);
//  807     i2c_Delay_TV();
//  808     i2cSetSCL_TV(_HIGH);
//  809     i2c_Delay_TV();
//  810 
//  811    if ((i2cSCL_PIN_STATUS_TV() == _LOW) || (i2cSDA_PIN_STATUS_TV() == _LOW))
//  812     {	
//  813         bStatus = FALSE;		
//  814     }
//  815     else
//  816     {	
//  817         i2cSetSDA_TV(_LOW);
//  818         i2c_Delay_TV();
//  819         i2cSetSCL_TV(_LOW);
//  820 	 i2c_Delay_TV();
//  821     }
//  822 
//  823     return bStatus;
//  824 }
//  825 /////////////////////////////////////////
//  826 // I2C stop signal.
//  827 // <comment>
//  828 //              ____________
//  829 //  SCL _______/
//  830 //                 _________
//  831 //  SDA __________/
//  832 /////////////////////////////////////////
//  833 void i2c_Stop_TV(void)
//  834 {
//  835   /* Configure I2C1 pins: SCL and SDA */ 
//  836 
//  837     i2cSetSCL_TV(_LOW);
//  838     i2c_Delay_TV();
//  839     i2cSetSDA_TV(_LOW);
//  840     i2c_Delay_TV();
//  841     i2cSetSCL_TV(_HIGH);
//  842     i2c_Delay_TV();
//  843     i2cSetSDA_TV(_HIGH);
//  844     i2c_Delay_TV();
//  845 }
//  846 
//  847 //////////////////////////////////////////////////////////////////////////
//  848 // I2C send byte to device.
//  849 //
//  850 // Arguments: ucVal - send byte
//  851 // Return value: I2C acknowledge bit
//  852 //               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//  853 //////////////////////////////////////////////////////////////////////////
//  854 BYTE i2c_SendByte_TV(BYTE ucVal)
//  855 {
//  856     BYTE    ucMask = 0x80;
//  857     BYTE     bAck=FALSE; // acknowledge bit
//  858     BYTE     i;
//  859 
//  860     while(ucMask)
//  861     {
//  862         if (ucVal & ucMask)
//  863             i2cSetSDA_TV(_HIGH);
//  864         else
//  865             i2cSetSDA_TV(_LOW);
//  866         i2c_Delay_TV();
//  867         i2cSetSCL_TV(_HIGH); // clock
//  868         i2c_Delay_TV();
//  869         i2cSetSCL_TV(_LOW);
//  870         i2c_Delay_TV();
//  871 
//  872         ucMask >>= 1; // next
//  873     } // while
//  874 
//  875     // recieve acknowledge
//  876     i2cSetSDA_TV(_HIGH);
//  877     i2c_Delay_TV();
//  878     i2cSetSCL_TV(_HIGH);
//  879     i2c_Delay_TV();
//  880 
//  881    ////////////////////////////////////////////////////////////	
//  882    ///ACK check
//  883 	    for(i=0;i<100;i++)
//  884 	    {
//  885 		if(i2cSDA_PIN_STATUS_TV()==0)
//  886 			break;
//  887 
//  888 	    	i2c_Delay_TV();
//  889 	    }
//  890 	    
//  891 	     bAck = i2cSDA_PIN_STATUS_TV(); // recieve acknowlege
//  892 
//  893     ///////////////////////////////////////////////////////////	
//  894     i2cSetSCL_TV(_LOW);
//  895 	
//  896     return (bAck);
//  897 }
//  898 //////////////////////////////////////////////////////////////////////////
//  899 // I2C receive byte from device.
//  900 //
//  901 // Return value: receive byte
//  902 //////////////////////////////////////////////////////////////////////////
//  903 BYTE i2c_ReceiveByte_TV(BYTE bAck)
//  904 {
//  905     BYTE    ucReceive = 0;
//  906     BYTE    ucMask = 0x80;
//  907 
//  908    i2cSetSDA_TV(_HIGH);
//  909 
//  910     while(ucMask)
//  911     {
//  912 		i2cSetSCL_TV(_HIGH);
//  913 		i2c_Delay_TV();
//  914 		if(GPIO_ReadInputDataBit(GPIOB, P_TV_SDA) == _HIGH)
//  915 			ucReceive |= ucMask;
//  916 	
//  917 		i2cSetSCL_TV(_LOW);
//  918 		i2c_Delay_TV();
//  919 
//  920         ucMask >>= 1;
//  921     } // while
//  922    
//  923   if (bAck) // acknowledge
//  924         i2cSetSDA_TV(I2C_ACKNOWLEDGE);
//  925     else // non-acknowledge
//  926         i2cSetSDA_TV(I2C_NON_ACKNOWLEDGE);
//  927 
//  928     i2c_Delay_TV();
//  929     i2cSetSCL_TV(_HIGH);
//  930     i2c_Delay_TV();
//  931     i2cSetSCL_TV(_LOW);
//  932 
//  933     return ucReceive;
//  934 
//  935 }
//  936 
//  937 //////////////////////////////////////////////////////////////////////////
//  938 // I2C access start.
//  939 //
//  940 // Arguments: ucSlaveAdr - slave address
//  941 //            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//  942 //////////////////////////////////////////////////////////////////////////
//  943 BYTE i2c_AccessStart_TV(BYTE ucSlaveAdr, I2C_Direction trans_t)
//  944 {
//  945     BYTE ucDummy; // loop dummy
//  946 
//  947     if (trans_t == I2C_READ) // check i2c read or write
//  948         ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
//  949     else
//  950         ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write
//  951 
//  952     ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
//  953     while (ucDummy--)
//  954     {    
//  955 	i2c_Delay_TV();
//  956         if (i2c_Start_TV() == FALSE)
//  957             continue;
//  958 
//  959         if (i2c_SendByte_TV(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
//  960             return TRUE;
//  961 		//printf("ucSlaveAdr====%x", ucSlaveAdr);
//  962         i2c_Stop_TV();
//  963         Delay_1ms(1);
//  964     }
//  965 
//  966     return FALSE;
//  967 }
//  968 /////////////////////////////////////////////////////////////////
//  969 // I2C write bytes to device.
//  970 //
//  971 // Arguments: ucSlaveAdr - slave address
//  972 //            ucSubAdr - sub address
//  973 //            pBuf - pointer of buffer
//  974 //            ucBufLen - length of buffer
//  975 /////////////////////////////////////////////////////////////////
//  976 void i2cWrite_Sub_TV(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
//  977 {
//  978     BYTE ucDummy; // loop dummy
//  979 
//  980     //i2c_Stop();
//  981     ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
//  982     while(ucDummy--)
//  983     {
//  984         if (i2c_AccessStart_TV(ucSlaveAdr, I2C_WRITE) == FALSE)
//  985             continue;
//  986         if (i2c_SendByte_TV(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
//  987             continue;
//  988 
//  989         while(ucBufLen--) // loop of writting data
//  990         {
//  991             i2c_SendByte_TV(*pBuf); // send byte
//  992             pBuf++; // next byte pointer
//  993         } // while
//  994 
//  995         break;
//  996     } // while
//  997 
//  998     i2c_Stop_TV();
//  999 }
// 1000 
// 1001 /////////////////////////////////////////////////////////////////
// 1002 // I2C read bytes from device.
// 1003 //
// 1004 // Arguments: ucSlaveAdr - slave address
// 1005 //            ucSubAdr - sub address
// 1006 //            pBuf - pointer of buffer
// 1007 //            ucBufLen - length of buffer
// 1008 /////////////////////////////////////////////////////////////////
// 1009 
// 1010 void i2cRead_Sub_TV(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
// 1011 {
// 1012     BYTE ucDummy; // loop dummy
// 1013 
// 1014     //i2c_Stop();
// 1015     ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
// 1016     while(ucDummy--)
// 1017     {
// 1018         if (i2c_AccessStart_TV(ucSlaveAdr, I2C_WRITE) == FALSE)
// 1019             continue;
// 1020 
// 1021         if (i2c_SendByte_TV(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
// 1022             continue;
// 1023 
// 1024         if (i2c_AccessStart_TV(ucSlaveAdr, I2C_READ) == FALSE)
// 1025             continue;
// 1026 
// 1027         while(ucBufLen--) // loop to burst read
// 1028         {
// 1029             *pBuf = i2c_ReceiveByte_TV(ucBufLen); // receive byte
// 1030 
// 1031             pBuf++; // next byte pointer
// 1032         } // while
// 1033 
// 1034         break;
// 1035     } // while
// 1036 
// 1037     i2c_Stop_TV();
// 1038 }
// 1039 
// 1040 // I2C read current bytes from device.
// 1041 //
// 1042 // Arguments: ucSlaveAdr - slave address
// 1043 //            pBuf - pointer of buffer
// 1044 //            ucBufLen - length of buffer
// 1045 /////////////////////////////////////////////////////////////////
// 1046 void i2cCurrent_Read_TV(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
// 1047 {
// 1048     BYTE ucDummy; // loop dummy
// 1049 
// 1050     //i2c_Stop();
// 1051     ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
// 1052     while(ucDummy--)
// 1053     {
// 1054         if (i2c_AccessStart_TV(ucSlaveAdr, I2C_READ) == FALSE)
// 1055             continue;
// 1056 
// 1057         while(ucBufLen--) // loop to burst read
// 1058         {
// 1059             *pBuf = i2c_ReceiveByte_TV(ucBufLen); // receive byte
// 1060 
// 1061             pBuf++; // next byte pointer
// 1062         } // while
// 1063 
// 1064         break;
// 1065     } // while
// 1066 
// 1067     i2c_Stop_TV();
// 1068 }
// 1069 
// 1070 void i2cCurrent_Write_TV(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
// 1071 { 
// 1072     BYTE ucDummy; // loop dummy
// 1073 
// 1074     //i2c_Stop();
// 1075     ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
// 1076     while(ucDummy--)
// 1077     {
// 1078         if (i2c_AccessStart_TV(ucSlaveAdr, I2C_WRITE) == FALSE)
// 1079             continue;
// 1080 
// 1081         while(ucBufLen--) // loop of writting data
// 1082         {
// 1083             i2c_SendByte_TV(*pBuf); // send byte
// 1084             pBuf++; // next byte pointer
// 1085         } // while
// 1086 
// 1087         break;
// 1088     } // while
// 1089 
// 1090     i2c_Stop_TV();
// 1091 
// 1092 }
// 1093 #endif
// 1094 #if 0
// 1095 void i2cSetSCL_keylight(BYTE kSet);   //20120724
// 1096 void i2cSetSDA_keylight(BYTE kSet);
// 1097 void i2c_Delay_keylight(void);
// 1098 BYTE i2c_Start_keylight(void);
// 1099 BYTE i2c_ReceiveByte_keylight(BYTE bAck);
// 1100 
// 1101 void i2cSetSCL_keylight(BYTE kSet)      // 20120724
// 1102 {
// 1103     if(kSet) GPIO_SetBits(GPIOD, P_LED_COL2);
// 1104     else GPIO_ResetBits(GPIOD, P_LED_COL2);	
// 1105 } 
// 1106 
// 1107 void i2cSetSDA_keylight(BYTE kSet)    // 20120724
// 1108 {
// 1109 	   if(kSet) GPIO_SetBits(GPIOD, P_LED_COL1);
// 1110 	   else   GPIO_ResetBits(GPIOD, P_LED_COL1);
// 1111 }
// 1112 
// 1113 void i2c_Delay_keylight(void)      // 20120724  
// 1114 {
// 1115    delay_5us();
// 1116 }
// 1117 
// 1118 BYTE i2c_Start_keylight(void)     //20120724
// 1119 {
// 1120     BYTE kStatus = TRUE; // success status
// 1121 
// 1122    
// 1123     i2cSetSDA_keylight(_HIGH);
// 1124     i2c_Delay_keylight();
// 1125     i2cSetSCL_keylight(_HIGH);
// 1126     i2c_Delay_keylight();
// 1127 
// 1128    if ((i2cSCL_PIN_STATUS_keylight() == _LOW) || (i2cSDA_PIN_STATUS_keylight() == _LOW))
// 1129     {	
// 1130         kStatus = FALSE;		
// 1131     }
// 1132     else
// 1133     {	
// 1134         i2cSetSDA_keylight(_LOW);
// 1135         i2c_Delay_keylight();
// 1136         i2cSetSCL_keylight(_LOW);
// 1137 	 i2c_Delay_keylight();
// 1138     }
// 1139 
// 1140     return kStatus;
// 1141 }
// 1142 
// 1143 
// 1144 void i2c_Stop_keylight(void)         // 20120724
// 1145 {
// 1146   /* Configure I2C1 pins: SCL and SDA */ 
// 1147 
// 1148     i2cSetSCL_keylight(_LOW);
// 1149     i2c_Delay_keylight();
// 1150     i2cSetSDA_keylight(_LOW);
// 1151     i2c_Delay_keylight();
// 1152     i2cSetSCL_keylight(_HIGH);
// 1153     i2c_Delay_keylight();
// 1154     i2cSetSDA_keylight(_HIGH);
// 1155     i2c_Delay_keylight();
// 1156 }
// 1157 
// 1158 
// 1159 BYTE i2c_SendByte_keylight(BYTE ucVal)    // 20120724
// 1160 {
// 1161     BYTE    ucMask = 0x80;
// 1162     BYTE     bAck=FALSE; // acknowledge bit
// 1163     BYTE     i;
// 1164 
// 1165     while(ucMask)
// 1166     {
// 1167         if (ucVal & ucMask)
// 1168             i2cSetSDA_keylight(_HIGH);
// 1169         else
// 1170             i2cSetSDA_keylight(_LOW);
// 1171         i2c_Delay_keylight();
// 1172         i2cSetSCL_keylight(_HIGH); // clock
// 1173         i2c_Delay_keylight();
// 1174         i2cSetSCL_keylight(_LOW);
// 1175         i2c_Delay_keylight();
// 1176 
// 1177         ucMask >>= 1; // next
// 1178     } // while
// 1179 
// 1180     // recieve acknowledge
// 1181     i2cSetSDA_keylight(_HIGH);
// 1182     i2c_Delay_keylight();
// 1183     i2cSetSCL_keylight(_HIGH);
// 1184     i2c_Delay_keylight();
// 1185 
// 1186    ////////////////////////////////////////////////////////////	
// 1187    ///ACK check
// 1188    /*
// 1189 	    for(i=0;i<100;i++)
// 1190 	    {
// 1191 		if(i2cSDA_PIN_STATUS_keylight()==0)
// 1192 			break;
// 1193 
// 1194 	    	i2c_Delay();
// 1195 	    }
// 1196 	    
// 1197 	     bAck = i2cSDA_PIN_STATUS_keylight(); // recieve acknowlege
// 1198 */
// 1199 		     for(i=0;i<100;i++)
// 1200 	    {
// 1201 		if(i2cSDA_PIN_STATUS_keylight()==0)
// 1202 		{
// 1203 			break;
// 1204 		}
// 1205 
// 1206 	    	i2c_Delay_keylight();
// 1207 	    }
// 1208 
// 1209 		if(i<100)
// 1210 			i=9;
// 1211 		else
// 1212 			i=0;
// 1213 	     bAck = i2cSDA_PIN_STATUS_keylight(); // recieve acknowlege
// 1214 
// 1215     ///////////////////////////////////////////////////////////	
// 1216     i2cSetSCL_keylight(_LOW);
// 1217 	
// 1218     return (bAck);
// 1219 }
// 1220 
// 1221 
// 1222 BYTE i2c_ReceiveByte_keylight(BYTE bAck)              // 20120724
// 1223 {
// 1224     BYTE    ucReceive = 0;
// 1225     BYTE    ucMask = 0x80;
// 1226 
// 1227    i2cSetSDA_TV(_HIGH);
// 1228 
// 1229     while(ucMask)
// 1230     {
// 1231 		i2cSetSCL_keylight(_HIGH);
// 1232 		i2c_Delay_keylight();
// 1233 		if(GPIO_ReadInputDataBit(GPIOB, P_LED_COL1) == _HIGH)
// 1234 			ucReceive |= ucMask;
// 1235 	
// 1236 		i2cSetSCL_keylight(_LOW);
// 1237 		i2c_Delay_keylight();
// 1238 
// 1239         ucMask >>= 1;
// 1240     } // while
// 1241    
// 1242   if (bAck) // acknowledge
// 1243         i2cSetSDA_keylight(I2C_ACKNOWLEDGE);
// 1244     else // non-acknowledge
// 1245         i2cSetSDA_keylight(I2C_NON_ACKNOWLEDGE);
// 1246 
// 1247     i2c_Delay_keylight();
// 1248     i2cSetSCL_keylight(_HIGH);
// 1249     i2c_Delay_keylight();
// 1250     i2cSetSCL_keylight(_LOW);
// 1251 
// 1252     return ucReceive;
// 1253 
// 1254 }
// 1255 
// 1256 BYTE i2c_AccessStart_keylight(BYTE ucSlaveAdr, I2C_Direction trans_t)  //20120724
// 1257 {
// 1258     BYTE ucDummy; // loop dummy
// 1259 
// 1260     if (trans_t == I2C_READ) // check i2c read or write
// 1261         ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
// 1262     else
// 1263         ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write
// 1264 
// 1265     ucDummy = I2C_ACCESS_DUMMY_TIME1;
// 1266     while (ucDummy--)
// 1267     {    
// 1268 	i2c_Delay_keylight();
// 1269         if (i2c_Start_keylight() == FALSE)
// 1270             continue;
// 1271 
// 1272         if (i2c_SendByte_keylight(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
// 1273             return TRUE;
// 1274 		//printf("ucSlaveAdr====%x", ucSlaveAdr);
// 1275         i2c_Stop_keylight();
// 1276         Delay_1ms(1);
// 1277     }
// 1278 
// 1279     return FALSE;
// 1280 }
// 1281 
// 1282 
// 1283 void i2cWrite_Sub_keylight(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)     //20120724
// 1284 {
// 1285     BYTE ucDummy; // loop dummy
// 1286 
// 1287     //i2c_Stop();
// 1288     ucDummy = I2C_ACCESS_DUMMY_TIME1;
// 1289     while(ucDummy--)
// 1290     {
// 1291         if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_WRITE) == FALSE)
// 1292             continue;
// 1293         if (i2c_SendByte_keylight(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
// 1294             continue;
// 1295 
// 1296         while(ucBufLen--) // loop of writting data
// 1297         {
// 1298             i2c_SendByte_keylight(*pBuf); // send byte
// 1299             pBuf++; // next byte pointer
// 1300         } // while
// 1301 
// 1302         break;
// 1303     } // while
// 1304 
// 1305     i2c_Stop_keylight();
// 1306 }
// 1307 
// 1308 
// 1309 BOOL i2cRead_Sub_keylight(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)    //20120724
// 1310 {
// 1311     BYTE ucDummy; // loop dummy
// 1312 
// 1313     //i2c_Stop();
// 1314     ucDummy = I2C_ACCESS_DUMMY_TIME1;
// 1315     while(ucDummy--)
// 1316     {
// 1317         if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_WRITE) == FALSE)
// 1318             continue;
// 1319 
// 1320         if (i2c_SendByte_keylight(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
// 1321             continue;
// 1322 
// 1323         if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_READ) == FALSE)
// 1324             continue;
// 1325 
// 1326         while(ucBufLen--) // loop to burst read
// 1327         {
// 1328             *pBuf = i2c_ReceiveByte_keylight(ucBufLen); // receive byte
// 1329 
// 1330             pBuf++; // next byte pointer
// 1331         } // while
// 1332 
// 1333         break;
// 1334     } // while
// 1335 
// 1336     i2c_Stop_keylight();
// 1337     if(ucDummy==0)
// 1338 		return FALSE;
// 1339     else
// 1340 		return TRUE;
// 1341 }
// 1342 
// 1343 
// 1344 void i2cCurrent_Read_keylight(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)    //20120724
// 1345 {
// 1346     BYTE ucDummy; // loop dummy
// 1347 
// 1348     //i2c_Stop_Sound();
// 1349     ucDummy = I2C_ACCESS_DUMMY_TIME1;
// 1350     while(ucDummy--)
// 1351     {
// 1352         if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_READ) == FALSE)
// 1353             continue;
// 1354 
// 1355         while(ucBufLen--) // loop to burst read
// 1356         {
// 1357             *pBuf = i2c_ReceiveByte_keylight(ucBufLen); // receive byte
// 1358 
// 1359             pBuf++; // next byte pointer
// 1360         } // while
// 1361 
// 1362         break;
// 1363     } // while
// 1364 
// 1365     i2c_Stop_keylight();
// 1366 }
// 1367 
// 1368 void i2cCurrent_Write_keylight(BYTE ucSlaveAdr, BYTE * pBuf, BYTE ucBufLen)   //20120724
// 1369 { 
// 1370     BYTE ucDummy; // loop dummy
// 1371 
// 1372     //i2c_Stop();
// 1373     ucDummy = I2C_ACCESS_DUMMY_TIME1;
// 1374     while(ucDummy--)
// 1375     {
// 1376         if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_WRITE) == FALSE)
// 1377             continue;
// 1378 
// 1379         while(ucBufLen--) // loop of writting data
// 1380         {
// 1381             i2c_SendByte_keylight(*pBuf); // send byte
// 1382             pBuf++; // next byte pointer
// 1383         } // while
// 1384 
// 1385         break;
// 1386     } // while
// 1387 
// 1388     i2c_Stop_keylight();
// 1389 
// 1390 }
// 1391 
// 1392 #endif
// 1393 
// 1394 #ifdef	ADAU1401_EN
// 1395 void i2c_Delay_ADAU1401(void)
// 1396 {
// 1397    delay_10us();
// 1398    delay_10us();
// 1399    delay_10us();
// 1400 }
// 1401 
// 1402 BYTE i2c_Start_ADAU1401(void)
// 1403 {
// 1404     BYTE bStatus = TRUE; // success status
// 1405 
// 1406    
// 1407     i2cSetSDA(_HIGH);
// 1408     i2c_Delay_ADAU1401();
// 1409     i2cSetSCL(_HIGH);
// 1410     i2c_Delay_ADAU1401();
// 1411 
// 1412    if ((i2cSCL_PIN_STATUS() == _LOW) || (i2cSDA_PIN_STATUS() == _LOW))
// 1413     {	
// 1414         bStatus = FALSE;		
// 1415     }
// 1416     else
// 1417     {	
// 1418         i2cSetSDA(_LOW);
// 1419         i2c_Delay_ADAU1401();
// 1420         i2cSetSCL(_LOW);
// 1421 	 i2c_Delay_ADAU1401();
// 1422     }
// 1423 
// 1424     return bStatus;
// 1425 }
// 1426 
// 1427 void i2c_Stop_ADAU1401(void)
// 1428 {
// 1429   /* Configure I2C1 pins: SCL and SDA */ 
// 1430 
// 1431     i2cSetSCL(_LOW);
// 1432     i2c_Delay_ADAU1401();
// 1433     i2cSetSDA(_LOW);
// 1434     i2c_Delay_ADAU1401();
// 1435     i2cSetSCL(_HIGH);
// 1436     i2c_Delay_ADAU1401();
// 1437     i2cSetSDA(_HIGH);
// 1438     i2c_Delay_ADAU1401();
// 1439 }
// 1440 
// 1441 BYTE i2c_SendByte_ADAU1401(BYTE ucVal)
// 1442 {
// 1443     BYTE    ucMask = 0x80;
// 1444     BYTE     bAck=FALSE; // acknowledge bit
// 1445     BYTE     i;
// 1446 
// 1447     while(ucMask)
// 1448     {
// 1449         if (ucVal & ucMask)
// 1450             i2cSetSDA(_HIGH);
// 1451         else
// 1452             i2cSetSDA(_LOW);
// 1453         i2c_Delay_ADAU1401();
// 1454         i2cSetSCL(_HIGH); // clock
// 1455         i2c_Delay_ADAU1401();
// 1456         i2cSetSCL(_LOW);
// 1457         i2c_Delay_ADAU1401();
// 1458 
// 1459         ucMask >>= 1; // next
// 1460     } // while
// 1461 
// 1462     // recieve acknowledge
// 1463     i2cSetSDA(_HIGH);
// 1464     i2c_Delay_ADAU1401();
// 1465     i2cSetSCL(_HIGH);
// 1466     i2c_Delay_ADAU1401();
// 1467 
// 1468    ////////////////////////////////////////////////////////////	
// 1469    ///ACK check
// 1470 	    for(i=0;i<100;i++)
// 1471 	    {
// 1472 		if(i2cSDA_PIN_STATUS()==0)
// 1473 			break;
// 1474 
// 1475 	    	i2c_Delay_ADAU1401();
// 1476 	    }
// 1477 	    
// 1478 	     bAck = i2cSDA_PIN_STATUS(); // recieve acknowlege
// 1479 
// 1480     ///////////////////////////////////////////////////////////	
// 1481     i2cSetSCL(_LOW);
// 1482 	
// 1483     return (bAck);
// 1484 }
// 1485 BYTE i2c_AccessStart_ADAU1401(BYTE ucSlaveAdr, I2C_Direction trans_t)
// 1486 {
// 1487     BYTE ucDummy; // loop dummy
// 1488 
// 1489     if (trans_t == I2C_READ) // check i2c read or write
// 1490         ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
// 1491     else
// 1492         ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write
// 1493 
// 1494     ucDummy = I2C_ACCESS_DUMMY_TIME;
// 1495     while (ucDummy--)
// 1496     {    
// 1497 	i2c_Delay_ADAU1401();
// 1498         if (i2c_Start_ADAU1401() == FALSE)
// 1499             continue;
// 1500 
// 1501         if (i2c_SendByte_ADAU1401(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
// 1502             return TRUE;
// 1503 		//printf("ucSlaveAdr====%x", ucSlaveAdr);
// 1504         //i2c_Stop();
// 1505         //Delay_1ms(1);
// 1506     }
// 1507 
// 1508     return FALSE;
// 1509 }
// 1510 
// 1511 BOOL i2cWrite_Sub_ADAU1401(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
// 1512 {
// 1513     BYTE ucDummy; // loop dummy
// 1514 
// 1515     //i2c_Stop();
// 1516     ucDummy = I2C_ACCESS_DUMMY_TIME;
// 1517     while(--ucDummy)
// 1518     {
// 1519         if (i2c_AccessStart_ADAU1401(ucSlaveAdr, I2C_WRITE) == FALSE)
// 1520             continue;
// 1521         if (i2c_SendByte_ADAU1401(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
// 1522             continue;
// 1523 
// 1524         while(ucBufLen--) // loop of writting data
// 1525         {
// 1526             i2c_SendByte_ADAU1401(*pBuf); // send byte
// 1527             pBuf++; // next byte pointer
// 1528         } // while
// 1529 
// 1530         break;
// 1531     } // while
// 1532 
// 1533     if(ucDummy==0)
// 1534     {
// 1535 		return FALSE;
// 1536     }
// 1537     else
// 1538     {
// 1539 		i2c_Stop_ADAU1401();
// 1540 		return TRUE;
// 1541     }
// 1542 }
// 1543 
// 1544 #if 1
// 1545 
// 1546 void i2c_Delay_ADAU1761(void)
// 1547 {
// 1548   	delay_5us();
// 1549 }
// 1550 
// 1551 BYTE i2c_Start_ADAU1761(void)
// 1552 {
// 1553     BYTE bStatus = TRUE; // success status
// 1554     i2cSetSDA(_HIGH);
// 1555     i2c_Delay_ADAU1761();
// 1556     i2cSetSCL(_HIGH);
// 1557     i2c_Delay_ADAU1761();
// 1558 
// 1559    if ((i2cSCL_PIN_STATUS() == _LOW) || (i2cSDA_PIN_STATUS() == _LOW))
// 1560     {	
// 1561         bStatus = FALSE;		
// 1562     }
// 1563     else
// 1564     {	
// 1565         i2cSetSDA(_LOW);
// 1566         i2c_Delay_ADAU1761();
// 1567         i2cSetSCL(_LOW);
// 1568 	 i2c_Delay_ADAU1761();
// 1569     }
// 1570 
// 1571     return bStatus;
// 1572 }
// 1573 
// 1574 void i2c_Stop_ADAU1761(void)
// 1575 {
// 1576   /* Configure I2C1 pins: SCL and SDA */ 
// 1577 
// 1578     i2cSetSCL(_LOW);
// 1579     i2c_Delay_ADAU1761();
// 1580     i2cSetSDA(_LOW);
// 1581     i2c_Delay_ADAU1761();
// 1582     i2cSetSCL(_HIGH);
// 1583     i2c_Delay_ADAU1761();
// 1584     i2cSetSDA(_HIGH);
// 1585     i2c_Delay_ADAU1761();
// 1586 }
// 1587 
// 1588 BYTE i2c_SendByte_ADAU1761(BYTE ucVal)
// 1589 {
// 1590     BYTE    ucMask = 0x80;
// 1591     BYTE     bAck=FALSE; // acknowledge bit
// 1592     BYTE     i;
// 1593 
// 1594     while(ucMask)
// 1595     {
// 1596         if (ucVal & ucMask)
// 1597             i2cSetSDA(_HIGH);
// 1598         else
// 1599             i2cSetSDA(_LOW);
// 1600         i2c_Delay_ADAU1761();
// 1601         i2cSetSCL(_HIGH); // clock
// 1602         i2c_Delay_ADAU1761();
// 1603         i2cSetSCL(_LOW);
// 1604         i2c_Delay_ADAU1761();
// 1605 
// 1606         ucMask >>= 1; // next
// 1607     } // while
// 1608 
// 1609     // recieve acknowledge
// 1610     i2cSetSDA(_HIGH);
// 1611     i2c_Delay_ADAU1761();
// 1612     i2cSetSCL(_HIGH);
// 1613     i2c_Delay_ADAU1761();
// 1614 
// 1615    ////////////////////////////////////////////////////////////	
// 1616    ///ACK check
// 1617 	    for(i=0;i<100;i++)
// 1618 	    {
// 1619 		if(i2cSDA_PIN_STATUS()==0)
// 1620 			break;
// 1621 
// 1622 	    	i2c_Delay_ADAU1761();
// 1623 	    }
// 1624 	    
// 1625 	     bAck = i2cSDA_PIN_STATUS(); // recieve acknowlege
// 1626 
// 1627     ///////////////////////////////////////////////////////////	
// 1628     i2cSetSCL(_LOW);
// 1629 	
// 1630     return (bAck);
// 1631 }
// 1632 BYTE i2c_AccessStart_ADAU1761(BYTE ucSlaveAdr, I2C_Direction trans_t)
// 1633 {
// 1634     BYTE ucDummy; // loop dummy
// 1635 
// 1636     if (trans_t == I2C_READ) // check i2c read or write
// 1637         ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
// 1638     else
// 1639         ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write
// 1640 
// 1641     ucDummy = I2C_ACCESS_DUMMY_TIME;
// 1642     while (ucDummy--)
// 1643     {    
// 1644 		i2c_Delay_ADAU1761();
// 1645         if (i2c_Start_ADAU1761() == FALSE)
// 1646             continue;
// 1647 
// 1648         if (i2c_SendByte_ADAU1761(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
// 1649             return TRUE;
// 1650     }
// 1651 
// 1652     return FALSE;
// 1653 }
// 1654 void SIGMA_WRITE_DELAY(unsigned char subAddr, unsigned int length, unsigned const char *pData)
// 1655 {
// 1656 	BYTE ucDummy; // loop dummy
// 1657 	ucDummy = I2C_ACCESS_DUMMY_TIME;
// 1658 	while(--ucDummy)
// 1659 	{
// 1660 		if (i2c_AccessStart_ADAU1761(subAddr, I2C_WRITE) == FALSE)
// 1661 			continue;
// 1662 		//if (i2c_SendWord_ADAU1401(Addr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
// 1663 		//  continue;
// 1664 		while(length--) // loop of writting data
// 1665 		{
// 1666 			i2c_SendByte_ADAU1761(*pData); // send byte
// 1667 			pData++; // next byte pointer
// 1668 		} // while
// 1669 
// 1670 		break;
// 1671 	} // while
// 1672 	i2c_Stop_ADAU1761();
// 1673 	delay_10us();
// 1674 
// 1675 }
// 1676 
// 1677 BYTE i2c_SendWord_ADAU1761(UINT ucVal)
// 1678 {
// 1679 	BYTE     bAck=FALSE; // acknowledge bit
// 1680 	bAck=i2c_SendByte_ADAU1761((ucVal>>8)&0xff);
// 1681 	bAck|=i2c_SendByte_ADAU1761(ucVal&0xff);
// 1682 	return (bAck);
// 1683 }
// 1684 unsigned char SIGMA_WRITE_REGISTER_BLOCK(unsigned char subAddr, unsigned int Addr, unsigned int length, unsigned const char *pData)
// 1685 {
// 1686 	unsigned char ucDummy; // loop dummy
// 1687 	unsigned int i;
// 1688 
// 1689 	ucDummy = I2C_ACCESS_DUMMY_TIME;
// 1690 	while(--ucDummy)
// 1691 	{
// 1692 		if (i2c_AccessStart_ADAU1761(0x70, I2C_WRITE) == FALSE)
// 1693 			continue;
// 1694 		if (i2c_SendWord_ADAU1761(Addr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
// 1695 			continue;
// 1696 		for(i=0;i<length;i++)
// 1697 		{
// 1698 		 	i2c_SendByte_ADAU1761(pData[i]); // send byte
// 1699 		}
// 1700 
// 1701 		break;
// 1702 	} // while
// 1703 
// 1704 	if(ucDummy==0)
// 1705 	{
// 1706 		return FALSE;
// 1707 	}
// 1708 	else
// 1709 	{
// 1710 		i2c_Stop_ADAU1761();
// 1711 		return TRUE;
// 1712 	}
// 1713 }
// 1714 #endif
// 1715 
// 1716 
// 1717 #endif
// 1718 
// 
//     4 bytes in section .bss
// 1 688 bytes in section .text
// 
// 1 688 bytes of CODE memory
//     4 bytes of DATA memory
//
//Errors: none
//Warnings: none
