///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:42 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\ARM\arm_driver.c                   /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\ARM\arm_driver.c -D                /
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
//                    \Debug\List\arm_driver.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME arm_driver

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ARM_Done_index
        EXTERN ARM_Max_Time_Cnt
        EXTERN ARM_Rec_buffer
        EXTERN ARM_Rec_temp
        EXTERN ARM_Receive_Cnt
        EXTERN ARM_Receive_OK
        EXTERN ARM_Receive_ack
        EXTERN ARM_Receive_index
        EXTERN ARM_Receive_length
        EXTERN ARM_Send_temp
        EXTERN ARM_USART1_Status
        EXTERN ARM_ack_request
        EXTERN ARM_send_id
        EXTERN System_init_ok
        EXTERN System_save_ok
        EXTERN USART_GetFlagStatus
        EXTERN USART_ReceiveData
        EXTERN USART_SendData
        EXTERN WINCA_ProtocolFlag
        EXTERN delay_5us

        PUBLIC ARM_Data_Receive
        PUBLIC ARM_MCU_HandShake_ACK
        PUBLIC ARM_Receive_ACK
        PUBLIC ARM_Receive_ACK2
        PUBLIC ARM_SEND_BUF
        PUBLIC ARM_SendDataSave
        PUBLIC ARM_Uart_ACK
        PUBLIC ARM_Uart_Char
        PUBLIC ARM_data_Send
        PUBLIC ARM_data_Send_data
        PUBLIC Init_ARM_Variables
        PUBLIC USART2ARMStatus
        PUBLIC _CmdCnt
        PUBLIC _CmdTimeOut
        PUBLIC bCheckIndex
        PUBLIC bComTimeOut
        PUBLIC bSaveIndex
        
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
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\ARM\arm_driver.c
//    1 
//    2 #define _ARM_DRIVER_C_
//    3 #define EnReSendFunc
//    4 #include "compile.h"
//    5 #include "stm32f10x_conf.h"
//    6 #include "port.h"
//    7 #include "main.h"
//    8 #include "libr.h"
//    9 #include "arm.h"
//   10 #include "arm_driver.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD _CmdCnt
_CmdCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute WORD _CmdTimeOut
_CmdTimeOut:
        DS8 4
//   11 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function Init_ARM_Variables
          CFI NoCalls
        THUMB
//   12 void Init_ARM_Variables(void)
//   13 {
//   14 	Byte i;
//   15 
//   16 	for(i=0;i<ARM_Receive_index_max;i++)
Init_ARM_Variables:
        MOVS     R1,#+0
        MOVS     R0,R1
??Init_ARM_Variables_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BCS.N    ??Init_ARM_Variables_1
//   17 		ARM_Rec_buffer[i][ARM_Receive_Cnt_max-1]=ARM_Receive_Free;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,#+100
        LDR.W    R2,??DataTable7
        MLA      R1,R1,R0,R2
        MOVS     R2,#+170
        STRB     R2,[R1, #+99]
        ADDS     R0,R0,#+1
        B.N      ??Init_ARM_Variables_0
//   18 	ARM_Receive_Cnt=0;
??Init_ARM_Variables_1:
        LDR.W    R1,??DataTable7_1
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   19 	ARM_Receive_index=0;
        LDR.W    R1,??DataTable7_2
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   20 	ARM_Done_index=0;
        LDR.W    R1,??DataTable7_3
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   21 	ARM_Max_Time_Cnt=0;//接受超时退出
        LDR.W    R1,??DataTable7_4
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   22 	ARM_Receive_OK=0; //=1接受完成
        LDR.W    R1,??DataTable7_5
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   23 	ARM_Receive_length=0; //长度	
        LDR.W    R1,??DataTable7_6
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   24 	ARM_Receive_ack=0;
        LDR.W    R1,??DataTable7_7
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   25 	ARM_USART1_Status=1;//USART initial state: off
        LDR.W    R1,??DataTable7_8
        MOVS     R2,#+1
        STRB     R2,[R1, #+0]
//   26 	ARM_send_id=0;
        LDR.W    R1,??DataTable7_9
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   27 	ARM_ack_request=0;
        LDR.W    R1,??DataTable7_10
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   28 	WINCA_ProtocolFlag=0;//initial 0:OS protocol
        LDR.W    R1,??DataTable7_11
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
//   29 	#ifdef YCFunction_EN //tao-2013-03-16
//   30 	ycSaveIndex = 0;
//   31 	ycGetIndex = 0;
//   32 	#endif
//   33 	#ifdef EnReSendFunc //TSH,2013-03-02
//   34 	 _CmdCnt=0;
        LDR.W    R1,??DataTable7_12
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//   35 	 _CmdTimeOut=0;
        LDR.W    R1,??DataTable7_13
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//   36 	#endif
//   37 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   38 #ifdef YCFunction_EN //tao-2013-03-16
//   39 
//   40 void YcReceiveArmData(void)
//   41 {
//   42 	u8 maxlen,tempindex,commandlen;
//   43 	u8 i;
//   44 	
//   45 	if (ycSaveIndex == ycGetIndex)		return;
//   46 
//   47 	if (ycSaveIndex > ycGetIndex)		maxlen = (u8)(ycSaveIndex - ycGetIndex);
//   48 	else								maxlen = (u8)(256 - ycGetIndex + ycSaveIndex);
//   49 
//   50 	if (maxlen < 4)						return;
//   51 
//   52 	tempindex = ycGetIndex;
//   53 	if (ycReceiveBuff[tempindex] == 0x02)
//   54 	{
//   55 		tempindex++;
//   56 		if ((ycReceiveBuff[tempindex] == COM_ARM_ID) || (ycReceiveBuff[tempindex] == APP_ARM_ID))
//   57 		{
//   58 			tempindex += 2;
//   59 			commandlen = (u8)(ycReceiveBuff[tempindex] + 5);
//   60 			
//   61 			if (maxlen >= commandlen)
//   62 			{
//   63 				tempindex = ycGetIndex;
//   64 				for (i = 0; i < commandlen; i++)
//   65 				{
//   66 					yctempBuff[i] = ycReceiveBuff[tempindex++];
//   67 				}
//   68 				YcProcessArmData();
//   69 				ycGetIndex++;
//   70 			}
//   71 			else
//   72 				return;
//   73 		}
//   74 		else
//   75 			ycGetIndex++;
//   76 	}
//   77 	else
//   78 	{
//   79 		ycGetIndex++;
//   80 
//   81 	}
//   82 }
//   83 
//   84 void YcProcessArmData(void)
//   85 {
//   86 	//u8 i;
//   87 	
//   88 	if (yctempBuff[1] == COM_ARM_ID)		//os command
//   89 	{
//   90 		switch(yctempBuff[2])
//   91 		{
//   92 			case 0x01:
//   93 				break;
//   94 			case 0x02:
//   95 				break;
//   96 			case 0x03:
//   97 				break;
//   98 			case 0x04:
//   99 				break;
//  100 			default:
//  101 				break;
//  102 		}
//  103 	}
//  104 	else if (yctempBuff[1] == APP_ARM_ID)		//App command
//  105 	{
//  106 		switch(yctempBuff[2])
//  107 		{
//  108 			case 0xA0:				//握手
//  109 				ReportHandshake();
//  110 				break;
//  111 			case 0xA2:
//  112 				break;
//  113 			case 0xA4:
//  114 				break;
//  115 		}
//  116 	}
//  117 }
//  118 
//  119 void YcSendCommand(u8 *p,u8 len)
//  120 {
//  121 	u8 i;
//  122 
//  123 	for (i=0; i < len; i++)
//  124 		ARM_Uart_Char(*p++);
//  125 }
//  126 
//  127 
//  128 void ReportHandshake(void)
//  129 {
//  130 	u8 index,check;
//  131 	u8 tempbuff[40];
//  132 
//  133 	index = 0; 
//  134 	check = 0;
//  135 
//  136 	tempbuff[index++] = 0x02;
//  137 	tempbuff[index] = APP_ARM_ID;	check ^= tempbuff[index++];
//  138 	tempbuff[index] = Cmd_HandShake;check ^= tempbuff[index++];
//  139 	tempbuff[index] = 0x01;			check ^= tempbuff[index++];
//  140 	tempbuff[index] = ERR_SUCCESS; 	check ^= tempbuff[index++];
//  141 	tempbuff[index++] = check;
//  142 
//  143 	YcSendCommand(tempbuff,index);
//  144 }
//  145 #endif
//  146 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ARM_Data_Receive
        THUMB
//  147 void ARM_Data_Receive(void)
//  148 {
ARM_Data_Receive:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  149 	Byte i,check_sum=0;
        MOVS     R5,#+0
//  150 	
//  151 	if(ARM_Receive_Cnt>=ARM_Receive_Cnt_max)
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+100
        BCC.N    ??ARM_Data_Receive_0
//  152 		ARM_Receive_Cnt=0;      
        LDR.W    R0,??DataTable7_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  153 	ARM_Rec_temp[ARM_Receive_Cnt]= USART_ReceiveData(USART2);	
??ARM_Data_Receive_0:
        LDR.W    R0,??DataTable7_14  ;; 0x40004400
          CFI FunCall USART_ReceiveData
        BL       USART_ReceiveData
        LDR.W    R1,??DataTable7_1
        LDRB     R1,[R1, #+0]
        LDR.W    R2,??DataTable7_15
        STRB     R0,[R1, R2]
//  154 	ARM_Max_Time_Cnt=10;////2MS没有收到数据，就重新接受	
        LDR.W    R0,??DataTable7_4
        MOVS     R1,#+10
        STRB     R1,[R0, #+0]
//  155 
//  156 	if(ARM_Receive_Cnt==0)
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ARM_Data_Receive_1
//  157 	{
//  158 			if((ARM_Rec_temp[ARM_Receive_Cnt]==0x02)||(ARM_Rec_temp[ARM_Receive_Cnt]==0x2e))//第一次
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_15
        LDRB     R0,[R0, R1]
        CMP      R0,#+2
        BEQ.N    ??ARM_Data_Receive_2
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_15
        LDRB     R0,[R0, R1]
        CMP      R0,#+46
        BNE.N    ??ARM_Data_Receive_3
//  159 				ARM_Receive_Cnt=1;//test
??ARM_Data_Receive_2:
        LDR.W    R0,??DataTable7_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??ARM_Data_Receive_4
//  160 			else 
//  161 			{
//  162 				switch(ARM_Rec_temp[ARM_Receive_Cnt])
??ARM_Data_Receive_3:
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_15
        LDRB     R0,[R0, R1]
        CMP      R0,#+240
        BEQ.N    ??ARM_Data_Receive_5
        CMP      R0,#+243
        BEQ.N    ??ARM_Data_Receive_6
        CMP      R0,#+252
        BEQ.N    ??ARM_Data_Receive_7
        CMP      R0,#+255
        BNE.N    ??ARM_Data_Receive_8
//  163 				{
//  164 					case 0xff:
//  165 							ARM_Receive_OK=1;
??ARM_Data_Receive_9:
        LDR.W    R0,??DataTable7_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  166 							ARM_Receive_ack=ARM_Receive_Check_ok;						
        LDR.W    R0,??DataTable7_7
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
//  167 							break;
        B.N      ??ARM_Data_Receive_8
//  168 					case 0xf0:
//  169 							ARM_Receive_OK=1;
??ARM_Data_Receive_5:
        LDR.W    R0,??DataTable7_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  170 							ARM_Receive_ack=ARM_Receive_Check_error;						
        LDR.W    R0,??DataTable7_7
        MOVS     R1,#+240
        STRB     R1,[R0, #+0]
//  171 						break;
        B.N      ??ARM_Data_Receive_8
//  172 					case 0xf3:
//  173 							ARM_Receive_OK=1;
??ARM_Data_Receive_6:
        LDR.W    R0,??DataTable7_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  174 							ARM_Receive_ack=ARM_Receive_Check_notsupport;						
        LDR.W    R0,??DataTable7_7
        MOVS     R1,#+243
        STRB     R1,[R0, #+0]
//  175 						break;
        B.N      ??ARM_Data_Receive_8
//  176 					case 0xfc:
//  177 							ARM_Receive_OK=1;
??ARM_Data_Receive_7:
        LDR.W    R0,??DataTable7_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  178 							ARM_Receive_ack=ARM_Receive_Check_busy;						
        LDR.W    R0,??DataTable7_7
        MOVS     R1,#+252
        STRB     R1,[R0, #+0]
//  179 						break;
//  180 						
//  181 				}
//  182 				ARM_Max_Time_Cnt=0;////2MS没有收到数据，就重新接受	
??ARM_Data_Receive_8:
        LDR.W    R0,??DataTable7_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??ARM_Data_Receive_4
//  183 			}	
//  184 	}
//  185 	else
//  186 	{	
//  187 		{
//  188 			if(ARM_Receive_Cnt==1)
??ARM_Data_Receive_1:
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ARM_Data_Receive_10
//  189 			{
//  190 					
//  191 				if((ARM_Rec_temp[1]!=COM_ARM_ID)&&(ARM_Rec_temp[1]!=APP_ARM_ID))
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+1]
        CMP      R0,#+145
        BEQ.W    ??ARM_Data_Receive_11
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+1]
        CMP      R0,#+170
        BEQ.W    ??ARM_Data_Receive_11
//  192 				{
//  193 					if(ARM_send_id==1)
        LDR.W    R0,??DataTable7_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ARM_Data_Receive_12
//  194 					{
//  195 						ARM_ack_request=ARM_Receive_Check_notsupport;
        LDR.W    R0,??DataTable7_10
        MOVS     R1,#+243
        STRB     R1,[R0, #+0]
        B.N      ??ARM_Data_Receive_13
//  196 					}
//  197 					else
//  198 					{	
//  199 					  if(WINCA_ProtocolFlag)
??ARM_Data_Receive_12:
        LDR.W    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??ARM_Data_Receive_13
//  200 					  	{
//  201 					  		ARM_Receive_ACK(ARM_Receive_Check_notsupport);//应答
        MOVS     R0,#+243
          CFI FunCall ARM_Receive_ACK
        BL       ARM_Receive_ACK
//  202 						}
//  203 					}
//  204 					ARM_Receive_Cnt=0;
??ARM_Data_Receive_13:
        LDR.W    R0,??DataTable7_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  205 					ARM_Max_Time_Cnt=0;
        LDR.W    R0,??DataTable7_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  206 					return;
        B.N      ??ARM_Data_Receive_14
//  207 				}
//  208 			}
//  209 			else if(ARM_Receive_Cnt==3)
??ARM_Data_Receive_10:
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ARM_Data_Receive_15
//  210 			{
//  211 				ARM_Receive_length=ARM_Rec_temp[3];
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+3]
        LDR.W    R1,??DataTable7_6
        STRB     R0,[R1, #+0]
//  212 				if(ARM_Receive_length>(ARM_Receive_Cnt_max-3))
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+98
        BCC.W    ??ARM_Data_Receive_11
//  213 					ARM_Receive_length=0;
        LDR.W    R0,??DataTable7_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??ARM_Data_Receive_11
//  214 			}
//  215 			else if(ARM_Receive_Cnt>3)
??ARM_Data_Receive_15:
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BCC.W    ??ARM_Data_Receive_11
//  216 			{
//  217 				if(ARM_Receive_Cnt>=(ARM_Receive_length+4))
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_6
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+4
        CMP      R0,R1
        BLT.W    ??ARM_Data_Receive_11
//  218 				{//-----接受完成
//  219 					/*==========BCC,start=============*/
//  220 					check_sum=ARM_Rec_temp[1];
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+1]
        MOVS     R5,R0
//  221 					for(i=2;i<=(ARM_Receive_length+3);i++)	
        MOVS     R0,#+2
        MOVS     R4,R0
??ARM_Data_Receive_16:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R0,R4
        BLT.N    ??ARM_Data_Receive_17
//  222 						check_sum=check_sum^ARM_Rec_temp[i];//校验和
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R4, R0]
        EORS     R5,R0,R5
        ADDS     R4,R4,#+1
        B.N      ??ARM_Data_Receive_16
//  223 					/*==========BCC,end=============*/
//  224 					if(check_sum==(ARM_Rec_temp[ARM_Receive_length+4]))
??ARM_Data_Receive_17:
        LDR.W    R0,??DataTable7_6
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable7_15
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BNE.W    ??ARM_Data_Receive_18
//  225 					{//----------校验正确-------------------------------------------
//  226 						ARM_Receive_Cnt=0;
        LDR.W    R0,??DataTable7_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  227 						ARM_Max_Time_Cnt=0;	
        LDR.W    R0,??DataTable7_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  228 						ARM_Receive_OK=1;
        LDR.W    R0,??DataTable7_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  229 						ARM_USART1_Status=0;//mean the USART of ARM is working now,TSH,20130125
        LDR.W    R0,??DataTable7_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  230 						#if 1 //handle handshake with ARM,,TSH,20130108
//  231 						if((ARM_Rec_temp[1]==APP_ARM_ID)&&(ARM_Rec_temp[2]==0x00))//handshake
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+1]
        CMP      R0,#+170
        BNE.N    ??ARM_Data_Receive_19
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??ARM_Data_Receive_19
//  232 						{
//  233 							//ARM_MCU_HandShake_ACK();
//  234 							ARM_Receive_ACK(ARM_Receive_Check_ok);
        MOVS     R0,#+255
          CFI FunCall ARM_Receive_ACK
        BL       ARM_Receive_ACK
//  235 							WINCA_ProtocolFlag = 1;//切换协议
        LDR.W    R0,??DataTable7_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  236 						}
//  237 						#endif
//  238 
//  239 						//#if 1 //ack dealing
//  240 						/*	if(ARM_send_id==1)
//  241 							{
//  242 								//if(((ARM_Send_length)==(ARM_Receive_length))||((ARM_Send_length)==(ARM_Receive_length-1)))
//  243 								{
//  244 									if((ARM_Send_temp[2]==ARM_Rec_temp[2]))
//  245 									{
//  246 										ARM_Receive_ack=ARM_Receive_Check_ok;//TSH,2013-01-08
//  247 									}
//  248 								}
//  249 							}*/
//  250 						//#endif
//  251 
//  252 						if(ARM_Rec_buffer[ARM_Receive_index][ARM_Receive_Cnt_max-1]!=ARM_Receive_Busy)		
??ARM_Data_Receive_19:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??DataTable7
        MLA      R0,R1,R0,R2
        LDRB     R0,[R0, #+99]
        CMP      R0,#+85
        BEQ.N    ??ARM_Data_Receive_20
//  253 						{
//  254 							for(i=0;i<(ARM_Receive_Cnt_max-1);i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??ARM_Data_Receive_21:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+99
        BCS.N    ??ARM_Data_Receive_22
//  255 								ARM_Rec_buffer[ARM_Receive_index][i]=ARM_Rec_temp[i];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??DataTable7
        MLA      R0,R1,R0,R2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable7_15
        LDRB     R1,[R4, R1]
        STRB     R1,[R4, R0]
        ADDS     R4,R4,#+1
        B.N      ??ARM_Data_Receive_21
//  256 							ARM_Rec_buffer[ARM_Receive_index][ARM_Receive_Cnt_max-1]=ARM_Receive_Busy;
??ARM_Data_Receive_22:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+100
        LDR.W    R2,??DataTable7
        MLA      R0,R1,R0,R2
        MOVS     R1,#+85
        STRB     R1,[R0, #+99]
//  257 
//  258 							if(ARM_send_id==1)
        LDR.W    R0,??DataTable7_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ARM_Data_Receive_23
//  259 							{
//  260 								ARM_ack_request=ARM_Receive_Check_ok;
        LDR.W    R0,??DataTable7_10
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
        B.N      ??ARM_Data_Receive_24
//  261 							}
//  262 							else
//  263 							{
//  264 							  if(WINCA_ProtocolFlag)
??ARM_Data_Receive_23:
        LDR.W    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??ARM_Data_Receive_24
//  265 							  	 ARM_Receive_ACK(ARM_Receive_Check_ok);//应答
        MOVS     R0,#+255
          CFI FunCall ARM_Receive_ACK
        BL       ARM_Receive_ACK
//  266 							}
//  267 							
//  268 							if(ARM_Receive_index<(ARM_Receive_index_max-1))
??ARM_Data_Receive_24:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BCS.N    ??ARM_Data_Receive_25
//  269 								ARM_Receive_index++;
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
        B.N      ??ARM_Data_Receive_26
//  270 							else
//  271 								ARM_Receive_index=0;			
??ARM_Data_Receive_25:
        LDR.W    R0,??DataTable7_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  272 
//  273 							if(ARM_Rec_temp[1]==COM_ARM_ID)
??ARM_Data_Receive_26:
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+1]
        CMP      R0,#+145
        BNE.N    ??ARM_Data_Receive_27
//  274 							{
//  275 								switch(ARM_Rec_temp[2])
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??ARM_Data_Receive_28
//  276 								{
//  277 									case 0x0://ARM9 开启串口
//  278 										//System_openlogo_init_ok=1;
//  279 										break;
//  280 									default:
//  281 										break;
??ARM_Data_Receive_29:
        B.N      ??ARM_Data_Receive_28
//  282 								}                                                          ;
//  283 							}
//  284 							else //APP_ARM_ID
//  285 							{
//  286 								switch(ARM_Rec_temp[2])
??ARM_Data_Receive_27:
        LDR.W    R0,??DataTable7_15
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??ARM_Data_Receive_30
        CMP      R0,#+4
        BEQ.N    ??ARM_Data_Receive_31
        B.N      ??ARM_Data_Receive_32
//  287 								{
//  288 									case ARM_rec_start_type:
//  289 										System_init_ok=1;
??ARM_Data_Receive_30:
        LDR.W    R0,??DataTable7_16
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  290 										break;
        B.N      ??ARM_Data_Receive_28
//  291 									case ARM_rec_save_type:
//  292 										System_save_ok=1;
??ARM_Data_Receive_31:
        LDR.W    R0,??DataTable7_17
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  293 										break;
        B.N      ??ARM_Data_Receive_28
//  294 									default:
//  295 										break;
??ARM_Data_Receive_32:
        B.N      ??ARM_Data_Receive_28
//  296 								}
//  297 							}
//  298 						}
//  299 						else
//  300 						{
//  301 							
//  302 							if(ARM_send_id==1)
??ARM_Data_Receive_20:
        LDR.W    R0,??DataTable7_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ARM_Data_Receive_33
//  303 							{
//  304 								ARM_ack_request=ARM_Receive_Check_busy;
        LDR.W    R0,??DataTable7_10
        MOVS     R1,#+252
        STRB     R1,[R0, #+0]
        B.N      ??ARM_Data_Receive_28
//  305 							}
//  306 							else
//  307 							{	
//  308 								if(WINCA_ProtocolFlag)
??ARM_Data_Receive_33:
        LDR.W    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??ARM_Data_Receive_28
//  309 									ARM_Receive_ACK(ARM_Receive_Check_busy);//应答
        MOVS     R0,#+252
          CFI FunCall ARM_Receive_ACK
        BL       ARM_Receive_ACK
//  310 
//  311 							}
//  312 						}
//  313 
//  314 						return;
??ARM_Data_Receive_28:
        B.N      ??ARM_Data_Receive_14
//  315 					}
//  316 					else
//  317 					{//出错
//  318 						if(ARM_send_id==1)
??ARM_Data_Receive_18:
        LDR.W    R0,??DataTable7_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ARM_Data_Receive_34
//  319 						{
//  320 							ARM_ack_request=ARM_Receive_Check_error;
        LDR.W    R0,??DataTable7_10
        MOVS     R1,#+240
        STRB     R1,[R0, #+0]
        B.N      ??ARM_Data_Receive_35
//  321 						}
//  322 						else
//  323 						{	
//  324 							if(WINCA_ProtocolFlag)
??ARM_Data_Receive_34:
        LDR.W    R0,??DataTable7_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??ARM_Data_Receive_35
//  325 								ARM_Receive_ACK(ARM_Receive_Check_error);//应答
        MOVS     R0,#+240
          CFI FunCall ARM_Receive_ACK
        BL       ARM_Receive_ACK
//  326 
//  327 						}
//  328 						ARM_Receive_Cnt=0;
??ARM_Data_Receive_35:
        LDR.W    R0,??DataTable7_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  329 						ARM_Max_Time_Cnt=0;
        LDR.W    R0,??DataTable7_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  330 						return;
        B.N      ??ARM_Data_Receive_14
//  331 					}
//  332 				}
//  333 			}		
//  334 			ARM_Receive_Cnt++;
??ARM_Data_Receive_11:
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_1
        STRB     R0,[R1, #+0]
//  335 
//  336 		}
//  337 		
//  338 	}
//  339 
//  340  }
??ARM_Data_Receive_4:
??ARM_Data_Receive_14:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//  341 #ifndef EnReSendFunc //TSH,2013-03-02
//  342 BYTE ARM_data_Send_data(Byte *data)
//  343 {
//  344 	WORD length,i;
//  345 
//  346 	length=*(data+3);
//  347 	ARM_send_id=1;
//  348 	for(i=0;i<=(length+4);i++)
//  349 	{
//  350 		ARM_Uart_Char(*(data+i));
//  351 
//  352 	}	
//  353 	ARM_send_id=0;	
//  354 	
//  355       for(i=2000;i;i--)
//  356       {
//  357 		if(ARM_Receive_ack==ARM_Receive_Check_ok)
//  358 			return TRUE;
//  359 		if(ARM_Receive_ack==ARM_Receive_Check_busy)
//  360 			return FALSE;
//  361 			//i=50000;//繁忙的话，等待500
//  362 		delay_10us();
//  363 		/*if(ARM_ack_request!=0)
//  364 		{
//  365 			ARM_Receive_ACK(ARM_ack_request);
//  366 			ARM_ack_request=0;		
//  367 		}*/		
//  368       }
//  369 	return FALSE;
//  370   
//  371 }
//  372 
//  373 void ARM_data_Send(Byte *data)
//  374 {
//  375 	//BYTE length,i;
//  376 
//  377 	ARM_Receive_ack=0;
//  378 	if(ARM_data_Send_data(data)==FALSE)
//  379 	{
//  380 		if(ARM_data_Send_data(data)==FALSE)
//  381 			ARM_data_Send_data(data);
//  382 	}
//  383 	/*if(ARM_ack_request!=0)
//  384 	{
//  385 		ARM_Receive_ACK(ARM_ack_request);
//  386 		ARM_ack_request=0;		
//  387 	}*/
//  388 }
//  389 #endif
//  390 
//  391 #ifdef EnReSendFunc //TSH,2013-03-02
//  392 
//  393 /*======================================
//  394 *FUNC:void ARM_data_Send2(Byte *data)
//  395 *description:handl data send to ARM
//  396 *Param:		  
//  397 *Note:
//  398 *writer:TSH
//  399 *Date:2013-01-21
//  400 ======================================*/
//  401 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  402 BYTE USART2ARMStatus;//状态机
USART2ARMStatus:
        DS8 1
//  403 #define CheckIdle 0
//  404 #define SendStatus 1
//  405 #define CheckAckStatus 2
//  406 #define HandleERR 3
//  407 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  408 BYTE ARM_SEND_BUF[10][40];
ARM_SEND_BUF:
        DS8 400

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  409 BYTE bSaveIndex;
bSaveIndex:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  410 BYTE bCheckIndex;
bCheckIndex:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  411 BYTE bComTimeOut;
bComTimeOut:
        DS8 1
//  412 
//  413 
//  414 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ARM_SendDataSave
          CFI NoCalls
        THUMB
//  415 void ARM_SendDataSave(BYTE * data)
//  416 {	
ARM_SendDataSave:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  417 	BYTE i;
//  418 	BYTE length;
//  419 	if(bSaveIndex>10)bSaveIndex=0;
        LDR.W    R3,??DataTable7_18
        LDRB     R3,[R3, #+0]
        CMP      R3,#+11
        BCC.N    ??ARM_SendDataSave_0
        LDR.W    R3,??DataTable7_18
        MOVS     R4,#+0
        STRB     R4,[R3, #+0]
//  420 	length = *(data+3);
??ARM_SendDataSave_0:
        LDRB     R3,[R0, #+3]
        MOVS     R2,R3
//  421 	for(i=0;i<=(length+4);i++)
        MOVS     R3,#+0
        MOVS     R1,R3
??ARM_SendDataSave_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ADDS     R3,R2,#+4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BLT.N    ??ARM_SendDataSave_2
//  422 	{
//  423 		ARM_SEND_BUF[bSaveIndex][i]=*(data+i);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable7_18
        LDRB     R3,[R3, #+0]
        MOVS     R4,#+40
        LDR.W    R5,??DataTable7_19
        MLA      R3,R4,R3,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R4,[R1, R0]
        STRB     R4,[R1, R3]
//  424 	}
        ADDS     R1,R1,#+1
        B.N      ??ARM_SendDataSave_1
//  425 
//  426 	i=length+5;
??ARM_SendDataSave_2:
        ADDS     R3,R2,#+5
        MOVS     R1,R3
//  427 	ARM_SEND_BUF[bSaveIndex][i]=3;//set flag
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R3,??DataTable7_18
        LDRB     R3,[R3, #+0]
        MOVS     R4,#+40
        LDR.W    R5,??DataTable7_19
        MLA      R3,R4,R3,R5
        MOVS     R4,#+3
        STRB     R4,[R1, R3]
//  428 	
//  429 	//wTrayCount=50;//time out
//  430 	bCheckIndex=bSaveIndex;//check the status of sending
        LDR.W    R3,??DataTable7_20
        LDR.W    R4,??DataTable7_18
        LDRB     R4,[R4, #+0]
        STRB     R4,[R3, #+0]
//  431 	bSaveIndex++;
        LDR.W    R3,??DataTable7_18
        LDRB     R3,[R3, #+0]
        ADDS     R3,R3,#+1
        LDR.W    R4,??DataTable7_18
        STRB     R3,[R4, #+0]
//  432 	
//  433 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  434 #if 0
//  435 BYTE ARM_data_Send_data(Byte *data)
//  436 {
//  437 	WORD length,i;
//  438 
//  439 	length=*(data+3);
//  440 	ARM_send_id=1;
//  441 	for(i=0;i<=(length+4);i++)
//  442 	{
//  443 		ARM_Uart_Char(*(data+i));
//  444 
//  445 	}	
//  446 	ARM_send_id=0;
//  447 	return TRUE;  
//  448 }
//  449 #endif
//  450 #if 1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ARM_data_Send_data
        THUMB
//  451 BYTE ARM_data_Send_data(Byte *data,Byte retry)
//  452 {
ARM_data_Send_data:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
//  453 	WORD length,i;
//  454 
//  455 	length=*(data+3);
        LDRB     R0,[R4, #+3]
        MOVS     R6,R0
//  456 
//  457 	ARM_send_id=1;
        LDR.N    R0,??DataTable7_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  458 	for(i=0;i<=(length+4);i++)
        MOVS     R0,#+0
        MOVS     R7,R0
??ARM_data_Send_data_0:
        ADDS     R0,R6,#+4
        CMP      R0,R7
        BCC.N    ??ARM_data_Send_data_1
//  459 	{
//  460 		if(i==1)
        CMP      R7,#+1
        BNE.N    ??ARM_data_Send_data_2
//  461 		{	if(*(data+i)==COM_MCU_ID)
        LDRB     R0,[R7, R4]
        CMP      R0,#+144
        BNE.N    ??ARM_data_Send_data_3
//  462 			{
//  463 				ARM_Uart_Char(*(data+i));
        LDRB     R0,[R7, R4]
          CFI FunCall ARM_Uart_Char
        BL       ARM_Uart_Char
        B.N      ??ARM_data_Send_data_4
//  464 			}
//  465 			else//APP
//  466 			{
//  467 				if(retry==1)
??ARM_data_Send_data_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??ARM_data_Send_data_5
//  468 					ARM_Uart_Char(0x55);
        MOVS     R0,#+85
          CFI FunCall ARM_Uart_Char
        BL       ARM_Uart_Char
        B.N      ??ARM_data_Send_data_4
//  469 				else if(retry==2)
??ARM_data_Send_data_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??ARM_data_Send_data_6
//  470 					ARM_Uart_Char(0x56);
        MOVS     R0,#+86
          CFI FunCall ARM_Uart_Char
        BL       ARM_Uart_Char
        B.N      ??ARM_data_Send_data_4
//  471 				else 
//  472 					ARM_Uart_Char(0x57);
??ARM_data_Send_data_6:
        MOVS     R0,#+87
          CFI FunCall ARM_Uart_Char
        BL       ARM_Uart_Char
        B.N      ??ARM_data_Send_data_4
//  473 			}
//  474 		}
//  475 		else
//  476 			ARM_Uart_Char(*(data+i));
??ARM_data_Send_data_2:
        LDRB     R0,[R7, R4]
          CFI FunCall ARM_Uart_Char
        BL       ARM_Uart_Char
//  477 
//  478 	}	
??ARM_data_Send_data_4:
        ADDS     R7,R7,#+1
        B.N      ??ARM_data_Send_data_0
//  479 	ARM_send_id=0;	
??ARM_data_Send_data_1:
        LDR.N    R0,??DataTable7_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  480 
//  481 	return TRUE;  
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock3
//  482 }
//  483 #endif
//  484 
//  485 
//  486 //BYTE _CmdCnt,_CmdTimeOut;
//  487 
//  488 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ARM_data_Send
        THUMB
//  489 void ARM_data_Send(Byte *data)
//  490 {
ARM_data_Send:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
//  491 	BYTE length;
//  492 	BYTE i;
//  493 	BYTE playerstatus;
//  494 	BYTE resendCnt;
//  495 	ARM_Receive_ack=0;
        LDR.N    R0,??DataTable7_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  496 	resendCnt=1;
        MOVS     R0,#+1
        MOV      R8,R0
//  497 	playerstatus=CheckAckStatus;
        MOVS     R0,#+2
        MOVS     R7,R0
//  498 	length=*(data+3);
        LDRB     R0,[R4, #+3]
        MOVS     R5,R0
//  499 	for(i=0;i<length+4;i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??ARM_data_Send_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R5,#+4
        CMP      R6,R0
        BGE.N    ??ARM_data_Send_1
//  500 		ARM_Send_temp[i]=*(data+i);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R4]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R1,??DataTable7_21
        STRB     R0,[R6, R1]
        ADDS     R6,R6,#+1
        B.N      ??ARM_data_Send_0
//  501 		
//  502 	ARM_data_Send_data(data,resendCnt);
??ARM_data_Send_1:
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
          CFI FunCall ARM_data_Send_data
        BL       ARM_data_Send_data
//  503 	_CmdCnt=100;//30;//time out
        LDR.N    R0,??DataTable7_12
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  504 	_CmdTimeOut=300;//200;
        LDR.N    R0,??DataTable7_13
        MOV      R1,#+300
        STR      R1,[R0, #+0]
//  505 	do{
//  506 			switch(playerstatus)
??ARM_data_Send_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BEQ.N    ??ARM_data_Send_3
        BCC.N    ??ARM_data_Send_4
        CMP      R7,#+3
        BEQ.N    ??ARM_data_Send_5
        BCC.N    ??ARM_data_Send_6
        B.N      ??ARM_data_Send_4
//  507 			{
//  508 				
//  509 				case SendStatus:
//  510 						playerstatus=CheckAckStatus;
??ARM_data_Send_3:
        MOVS     R0,#+2
        MOVS     R7,R0
//  511 						_CmdCnt=30;//time out
        LDR.N    R0,??DataTable7_12
        MOVS     R1,#+30
        STR      R1,[R0, #+0]
//  512 						resendCnt++;
        ADDS     R8,R8,#+1
//  513 						if(resendCnt>=2)playerstatus=HandleERR;//tiger 0617
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+2
        BCC.N    ??ARM_data_Send_7
        MOVS     R0,#+3
        MOVS     R7,R0
//  514 						ARM_data_Send_data(data,resendCnt);
??ARM_data_Send_7:
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
          CFI FunCall ARM_data_Send_data
        BL       ARM_data_Send_data
//  515 						
//  516 					 break;
        B.N      ??ARM_data_Send_8
//  517 				case CheckAckStatus:
//  518 						if(_CmdCnt)
??ARM_data_Send_6:
        LDR.N    R0,??DataTable7_12
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??ARM_data_Send_9
//  519 						{
//  520 							if((ARM_Receive_ack==ARM_Receive_Check_ok)||(ARM_Receive_ack==ARM_Receive_Check_notsupport))
        LDR.N    R0,??DataTable7_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ.N    ??ARM_data_Send_10
        LDR.N    R0,??DataTable7_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+243
        BNE.N    ??ARM_data_Send_11
//  521 								playerstatus=CheckIdle;
??ARM_data_Send_10:
        MOVS     R0,#+0
        MOVS     R7,R0
        B.N      ??ARM_data_Send_12
//  522 							else if(ARM_Receive_ack==ARM_Receive_Check_busy)
??ARM_data_Send_11:
        LDR.N    R0,??DataTable7_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+252
        BNE.N    ??ARM_data_Send_13
//  523 								playerstatus=HandleERR;
        MOVS     R0,#+3
        MOVS     R7,R0
        B.N      ??ARM_data_Send_12
//  524 								//playerstatus=SendStatus;
//  525 							else if(ARM_Receive_ack==ARM_Receive_Check_error)
??ARM_data_Send_13:
        LDR.N    R0,??DataTable7_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+240
        BNE.N    ??ARM_data_Send_14
//  526 								playerstatus=HandleERR;
        MOVS     R0,#+3
        MOVS     R7,R0
        B.N      ??ARM_data_Send_12
//  527 							else if(ARM_Receive_ack==0x00);//CheckAckStatus
??ARM_data_Send_14:
        B.N      ??ARM_data_Send_12
//  528 						}
//  529 						else
//  530 						{
//  531 							playerstatus=SendStatus;//HandleERR;//tiger 0617
??ARM_data_Send_9:
        MOVS     R0,#+1
        MOVS     R7,R0
//  532 						}
//  533 						 break;
??ARM_data_Send_12:
        B.N      ??ARM_data_Send_8
//  534 				case HandleERR:
//  535 						playerstatus=CheckIdle;
??ARM_data_Send_5:
        MOVS     R0,#+0
        MOVS     R7,R0
//  536 						_CmdCnt=0;//clear
        LDR.N    R0,??DataTable7_12
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  537 						break;
        B.N      ??ARM_data_Send_8
//  538 				default:
//  539 						playerstatus=CheckIdle;
??ARM_data_Send_4:
        MOVS     R0,#+0
        MOVS     R7,R0
//  540 						break;
//  541 			}
//  542 			if((playerstatus==CheckIdle)||(playerstatus==HandleERR))break;
??ARM_data_Send_8:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??ARM_data_Send_15
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+3
        BNE.N    ??ARM_data_Send_16
??ARM_data_Send_15:
        B.N      ??ARM_data_Send_17
//  543 
//  544 	}while(_CmdTimeOut);
??ARM_data_Send_16:
        LDR.N    R0,??DataTable7_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ARM_data_Send_2
//  545 	
//  546 	
//  547 	
//  548 }
??ARM_data_Send_17:
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock4
//  549 #endif
//  550 
//  551 
//  552 
//  553 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function ARM_Uart_Char
        THUMB
//  554 void ARM_Uart_Char(Byte char_Temp)
//  555 {
ARM_Uart_Char:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  556 	BYTE TimeCnt;	
//  557 	
//  558 	USART_SendData(USART2, char_Temp);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable7_14  ;; 0x40004400
          CFI FunCall USART_SendData
        BL       USART_SendData
//  559 	TimeCnt=200;
        MOVS     R0,#+200
        MOVS     R5,R0
//  560 	while((USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET)&&(--TimeCnt!=0))
??ARM_Uart_Char_0:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable7_14  ;; 0x40004400
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BNE.N    ??ARM_Uart_Char_1
        SUBS     R5,R5,#+1
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ARM_Uart_Char_1
//  561 	{
//  562 		delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
        B.N      ??ARM_Uart_Char_0
//  563 	}
//  564 }	
??ARM_Uart_Char_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ARM_Receive_ACK
        THUMB
//  565 void ARM_Receive_ACK(Byte send_type)
//  566 {	
ARM_Receive_ACK:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  567 	switch(send_type)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+240
        BEQ.N    ??ARM_Receive_ACK_0
        CMP      R0,#+243
        BEQ.N    ??ARM_Receive_ACK_1
        CMP      R0,#+252
        BEQ.N    ??ARM_Receive_ACK_2
        CMP      R0,#+255
        BNE.N    ??ARM_Receive_ACK_3
//  568 	{
//  569 		case  ARM_Receive_Check_ok:
//  570 			ARM_Uart_ACK(ARM_Receive_Check_ok);
??ARM_Receive_ACK_4:
        MOVS     R0,#+255
          CFI FunCall ARM_Uart_ACK
        BL       ARM_Uart_ACK
//  571 			break;
        B.N      ??ARM_Receive_ACK_3
//  572 		case  ARM_Receive_Check_error:
//  573 			ARM_Uart_ACK(ARM_Receive_Check_error);
??ARM_Receive_ACK_0:
        MOVS     R0,#+240
          CFI FunCall ARM_Uart_ACK
        BL       ARM_Uart_ACK
//  574 			break;
        B.N      ??ARM_Receive_ACK_3
//  575 		case  ARM_Receive_Check_notsupport:
//  576 			ARM_Uart_ACK(ARM_Receive_Check_notsupport);
??ARM_Receive_ACK_1:
        MOVS     R0,#+243
          CFI FunCall ARM_Uart_ACK
        BL       ARM_Uart_ACK
//  577 			break;
        B.N      ??ARM_Receive_ACK_3
//  578 		case  ARM_Receive_Check_busy:
//  579 			ARM_Uart_ACK(ARM_Receive_Check_busy);
??ARM_Receive_ACK_2:
        MOVS     R0,#+252
          CFI FunCall ARM_Uart_ACK
        BL       ARM_Uart_ACK
//  580 			break;
//  581 	}
//  582 }
??ARM_Receive_ACK_3:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ARM_Uart_ACK
        THUMB
//  583 void ARM_Uart_ACK(Byte char_Temp)
//  584 {
ARM_Uart_ACK:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  585 	Byte TimeCnt=200;
        MOVS     R5,#+200
//  586 
//  587 		USART_SendData(USART2, char_Temp);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,R4
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable7_14  ;; 0x40004400
          CFI FunCall USART_SendData
        BL       USART_SendData
//  588 		TimeCnt=200;
        MOVS     R0,#+200
        MOVS     R5,R0
//  589 		while((USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET)&&(--TimeCnt!=0))
??ARM_Uart_ACK_0:
        MOVS     R1,#+128
        LDR.N    R0,??DataTable7_14  ;; 0x40004400
          CFI FunCall USART_GetFlagStatus
        BL       USART_GetFlagStatus
        CMP      R0,#+0
        BNE.N    ??ARM_Uart_ACK_1
        SUBS     R5,R5,#+1
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ARM_Uart_ACK_1
//  590 		{
//  591 			delay_5us();
          CFI FunCall delay_5us
        BL       delay_5us
        B.N      ??ARM_Uart_ACK_0
//  592 		}
//  593 }
??ARM_Uart_ACK_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock7
//  594 /*======================================
//  595 *FUNC:void ARM_MCU_HandShake_ACK(void)
//  596 *description:ack the handshake Cmd
//  597 *Param:		  
//  598 *Note:
//  599 *writer:TSH
//  600 *Date:2013-01-08
//  601 ======================================*/
//  602 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function ARM_MCU_HandShake_ACK
        THUMB
//  603 void ARM_MCU_HandShake_ACK(void)
//  604 {
ARM_MCU_HandShake_ACK:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+24
          CFI CFA R13+40
//  605 	WORD length,i;
//  606 	BYTE buff[20],checksum;
//  607 	length=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  608 	buff[0]=0x02;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
//  609 	buff[1]=COM_ARM_ID;
        MOVS     R0,#+145
        STRB     R0,[SP, #+1]
//  610 	buff[2]=Cmd_HandShake;
        MOVS     R0,#+160
        STRB     R0,[SP, #+2]
//  611 	buff[3]=0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+3]
//  612 	checksum=buff[1];
        LDRB     R0,[SP, #+1]
        MOVS     R6,R0
//  613 	
//  614 	for(i=2;i<=(buff[3]+3);i++)	
        MOVS     R0,#+2
        MOVS     R5,R0
??ARM_MCU_HandShake_ACK_0:
        LDRB     R0,[SP, #+3]
        ADDS     R0,R0,#+3
        CMP      R0,R5
        BCC.N    ??ARM_MCU_HandShake_ACK_1
//  615 		checksum^=buff[i];//BCC校验和
        ADD      R0,SP,#+0
        LDRB     R0,[R5, R0]
        EORS     R6,R0,R6
        ADDS     R5,R5,#+1
        B.N      ??ARM_MCU_HandShake_ACK_0
//  616 	buff[buff[3]+4]=checksum;
??ARM_MCU_HandShake_ACK_1:
        LDRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        ADDS     R0,R0,R1
        STRB     R6,[R0, #+4]
//  617 	
//  618 	for(i=0;i<=(length+4);i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??ARM_MCU_HandShake_ACK_2:
        ADDS     R0,R4,#+4
        CMP      R0,R5
        BCC.N    ??ARM_MCU_HandShake_ACK_3
//  619 	{
//  620 		ARM_Uart_Char(*(buff+i));
        ADD      R0,SP,#+0
        LDRB     R0,[R5, R0]
          CFI FunCall ARM_Uart_Char
        BL       ARM_Uart_Char
//  621 
//  622 	}
        ADDS     R5,R5,#+1
        B.N      ??ARM_MCU_HandShake_ACK_2
//  623 
//  624 }
??ARM_MCU_HandShake_ACK_3:
        ADD      SP,SP,#+24
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock8
//  625 /*======================================
//  626 *FUNC:void ARM_Receive_ACK2(Byte send_type)
//  627 *description:ack the  Cmd come from ARM
//  628 *Param:		  
//  629 *Note:
//  630 *writer:TSH
//  631 *Date:2013-01-08
//  632 ======================================*/
//  633 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function ARM_Receive_ACK2
        THUMB
//  634 void ARM_Receive_ACK2(Byte send_type)
//  635 {	BYTE buff[40];
ARM_Receive_ACK2:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+40
          CFI CFA R13+56
        MOVS     R4,R0
//  636     BYTE i,checksum;
//  637 	buff[0]=0x02;
        MOVS     R0,#+2
        STRB     R0,[SP, #+0]
//  638 	buff[1]=COM_ARM_ID;
        MOVS     R0,#+145
        STRB     R0,[SP, #+1]
//  639 	buff[2]=ARM_Rec_temp[2];
        LDR.N    R0,??DataTable7_15
        LDRB     R0,[R0, #+2]
        STRB     R0,[SP, #+2]
//  640 	buff[3]=ARM_Rec_temp[3]+1;
        LDR.N    R0,??DataTable7_15
        LDRB     R0,[R0, #+3]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+3]
//  641 	switch(send_type)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+240
        BEQ.N    ??ARM_Receive_ACK2_0
        CMP      R0,#+243
        BEQ.N    ??ARM_Receive_ACK2_1
        CMP      R0,#+252
        BEQ.N    ??ARM_Receive_ACK2_2
        CMP      R0,#+255
        BNE.N    ??ARM_Receive_ACK2_3
//  642 	{
//  643 		case  ARM_Receive_Check_ok:
//  644 			//ARM_Uart_ACK(ARM_Receive_Check_ok);
//  645 			buff[4]=ARM_Receive_Check_ok;
??ARM_Receive_ACK2_4:
        MOVS     R0,#+255
        STRB     R0,[SP, #+4]
//  646 			break;
        B.N      ??ARM_Receive_ACK2_3
//  647 		case  ARM_Receive_Check_error:
//  648 			buff[4]=ARM_Receive_Check_error;
??ARM_Receive_ACK2_0:
        MOVS     R0,#+240
        STRB     R0,[SP, #+4]
//  649 			break;
        B.N      ??ARM_Receive_ACK2_3
//  650 		case  ARM_Receive_Check_notsupport:
//  651 			buff[4]=ARM_Receive_Check_notsupport;
??ARM_Receive_ACK2_1:
        MOVS     R0,#+243
        STRB     R0,[SP, #+4]
//  652 			break;
        B.N      ??ARM_Receive_ACK2_3
//  653 		case  ARM_Receive_Check_busy:
//  654 			buff[4]=ARM_Receive_Check_busy;
??ARM_Receive_ACK2_2:
        MOVS     R0,#+252
        STRB     R0,[SP, #+4]
//  655 			break;
//  656 	}
//  657 	
//  658 	for(i=5;i<buff[3]+4;i++)
??ARM_Receive_ACK2_3:
        MOVS     R0,#+5
        MOVS     R5,R0
??ARM_Receive_ACK2_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDRB     R0,[SP, #+3]
        ADDS     R0,R0,#+4
        CMP      R5,R0
        BGE.N    ??ARM_Receive_ACK2_6
//  659 		buff[i]=ARM_Rec_temp[i-1];
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.N    R0,??DataTable7_15
        ADDS     R0,R5,R0
        LDRB     R0,[R0, #-1]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R1,SP,#+0
        STRB     R0,[R5, R1]
        ADDS     R5,R5,#+1
        B.N      ??ARM_Receive_ACK2_5
//  660 
//  661 	checksum=buff[1];
??ARM_Receive_ACK2_6:
        LDRB     R0,[SP, #+1]
        MOVS     R6,R0
//  662 	for(i=2;i<=(buff[3]+3);i++)	
        MOVS     R0,#+2
        MOVS     R5,R0
??ARM_Receive_ACK2_7:
        LDRB     R0,[SP, #+3]
        ADDS     R0,R0,#+3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R0,R5
        BLT.N    ??ARM_Receive_ACK2_8
//  663 		checksum^=buff[i];//BCC校验和
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R5, R0]
        EORS     R6,R0,R6
        ADDS     R5,R5,#+1
        B.N      ??ARM_Receive_ACK2_7
//  664 	buff[buff[3]+4]=checksum;
??ARM_Receive_ACK2_8:
        LDRB     R0,[SP, #+3]
        ADD      R1,SP,#+0
        ADDS     R0,R0,R1
        STRB     R6,[R0, #+4]
//  665 
//  666 	for(i=0;i<=buff[3]+4;i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??ARM_Receive_ACK2_9:
        LDRB     R0,[SP, #+3]
        ADDS     R0,R0,#+4
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R0,R5
        BLT.N    ??ARM_Receive_ACK2_10
//  667 		ARM_Uart_Char(*(buff+i));
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADD      R0,SP,#+0
        LDRB     R0,[R5, R0]
          CFI FunCall ARM_Uart_Char
        BL       ARM_Uart_Char
        ADDS     R5,R5,#+1
        B.N      ??ARM_Receive_ACK2_9
//  668 
//  669 	
//  670 }
??ARM_Receive_ACK2_10:
        ADD      SP,SP,#+40
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     ARM_Rec_buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     ARM_Receive_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     ARM_Receive_index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     ARM_Done_index

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     ARM_Max_Time_Cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     ARM_Receive_OK

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     ARM_Receive_length

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     ARM_Receive_ack

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     ARM_USART1_Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     ARM_send_id

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     ARM_ack_request

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     WINCA_ProtocolFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     _CmdCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     _CmdTimeOut

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     ARM_Rec_temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     System_init_ok

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     System_save_ok

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     bSaveIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     ARM_SEND_BUF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     bCheckIndex

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     ARM_Send_temp

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  671 
// 
//   412 bytes in section .bss
// 1 972 bytes in section .text
// 
// 1 972 bytes of CODE memory
//   412 bytes of DATA memory
//
//Errors: none
//Warnings: none
