#ifndef _ARM_DRIVER_H_
    #define _ARM_DRIVER_H_
    
    #ifdef _ARM_DRIVER_C_
      #define _ARM_DRIVER_DEC_
    #else
      #define _ARM_DRIVER_DEC_ extern
    #endif
    
    #define ERR_SUCCESS			0
    #define ERR_FAIL			1
    
    #ifdef EnReSendFunc //TSH,2013-03-02
    _ARM_DRIVER_DEC_ WORD _CmdCnt;
    _ARM_DRIVER_DEC_ WORD _CmdTimeOut;
    #endif
    
    
    _ARM_DRIVER_DEC_  void Init_ARM_Variables(void);
    #ifdef YCFunction_EN //tao-2013-03-16
    
    _ARM_DRIVER_DEC_  void YcReceiveArmData(void);
    _ARM_DRIVER_DEC_  void YcProcessArmData(void);
    _ARM_DRIVER_DEC_  void ReportHandshake(void);
    _ARM_DRIVER_DEC_ void YcSendCommand(u8 *p,u8 len);
    
    #endif
    _ARM_DRIVER_DEC_  void ARM_Data_Receive(void);
    _ARM_DRIVER_DEC_  void ARM_data_Send(Byte *data);
    _ARM_DRIVER_DEC_  BYTE ARM_data_Send_data(Byte *data,Byte retry);
    
    _ARM_DRIVER_DEC_ void ARM_Uart_Char(Byte char_Temp);
    _ARM_DRIVER_DEC_ void ARM_Receive_ACK(Byte send_type);
    _ARM_DRIVER_DEC_ void ARM_Uart_ACK(Byte char_Temp);
    _ARM_DRIVER_DEC_ void ARM_MCU_HandShake_ACK(void);
    _ARM_DRIVER_DEC_ void ARM_Receive_ACK2(Byte send_type);
 
 #endif

