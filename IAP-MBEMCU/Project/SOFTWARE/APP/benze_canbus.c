/* 这份源代码文件已被未注册的SourceFormatX格式化过 */
/* 如果您想不再添加此类信息，请您注册这个共享软件  */
/* 更多相关信息请访问网站: http://cn.textrush.com  */

/******************** (C) COPYRIGHT 2011 APTENON ********************
 * File Name          : canbus.c
 * Author             : edwin kang
 * Version            : V0.0
 * Date               : 11/30/2011
 * Description        : canbus  file.
 *******************************************************************************/
#define _BENZE_BUS_C_
#include "includes.h"





NEW_FIFO(CAN1_TxFifo, CAN_TX_FIFO_SIZE, CanTxMsg, u8);
NEW_FIFO(CAN1_RxFifo, CAN_RX_FIFO_SIZE, CanRxMsg, u8);


NEW_FIFO(CAN2_TxFifo, CAN_TX_FIFO_SIZE, CanTxMsg, u8);
NEW_FIFO(CAN2_RxFifo, CAN_RX_FIFO_SIZE, CanRxMsg, u8);


/******************************************************************
速度 1000   500  250  125  100  50     20    10
距离 40     130  270  530  620  1300   3300	  6700
CIA推荐值
75% when 波特率 》800K
80% when 波特率 》500K
87.5% when 波特率 < 500K
 *******************************************************************/


const static  CanTxMsg  KnobCntrTab[]=
{
/*
        uint32_t StdId;  

        uint32_t ExtId;  

        uint8_t IDE;     

        uint8_t RTR;     

        uint8_t DLC;     

        uint8_t Data[8];
  */
  {0x0273,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x1D,0xE1,0x00,0xF0,0xFF,0x7F,0xDE,0x30}},//konb ok
  {0x0273,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x1D,0xE1,0x01,0xF0,0x00,0x00,0xDE,0x30}},//knob fail
  
  
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn1
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn0
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn1
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn2
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn3
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x10}},//Syn Sn4
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn5
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x10}},//Syn Sn6
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE4,0x00,0xC0,0x01}},//Syn Sn7
  {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7D,0x00,0x80,0x1E}},//Syn Sn8
  {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7E,0x04,0x80,0x1E}},//Syn Sn9
  {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7F,0x03,0x80,0x1E}},//Syn Sn10
  
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xDE,0x01}},//Syn Sn11
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xDE,0x01}},//Syn Sn12
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDE,0x01}},//Syn Sn13
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xDE,0x01}},//Syn Sn14
  
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x04}},//option pressed
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x04}},//option pressed
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x04}},//option bounce
  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x04}},//option bounce
  
  
};
const static  CanTxMsg  BENZ_KnobCntrTab[]=
{
	/*
			uint32_t StdId;  
	
			uint32_t ExtId;  
	
			uint8_t IDE;	 
	
			uint8_t RTR;	 
	
			uint8_t DLC;	 
	
			uint8_t Data[8];
	  */
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x02,0x00,0x00,0xC0}},//return press
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//return bounce
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x02,0x00,0x00,0xC0}},//return press
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//return bounce
	  
	  
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x01,0xC0}},//up press
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//up bounce
	
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x80,0x00,0xC0}},//enter press
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//enter bounce,7
	
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x40,0xC0}},//Syn Sn3
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//Syn Sn4
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x40,0xC0}},//Syn Sn5
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//Syn Sn6
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x40,0xC0}},//Syn Sn7
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//Syn Sn8
      {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x04,0xC0}},
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},
	  
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x10,0xC0}},//Syn Sn3
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//Syn Sn4
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x10,0xC0}},//Syn Sn5
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//Syn Sn6
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x10,0xC0}},//Syn Sn7
	  {0x00FD,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0x00,0x00,0x00,0xC0}},//Syn Sn8
	
	  
	  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x04}},//option pressed
	  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x01,0xC0,0x04}},//option pressed
	  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x04}},//option bounce
	  {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xC0,0x04}},//option bounce
	  
};



/**************************************************************************/
/*                                                                        */
/**************************************************************************/

void Can_Tx(CAN_TypeDef *CANx, CanTxMsg *TxMessage)
{
#if 0
    U32 i;
    u8 TransmitMailbox;
    

    //---------------------------------------
    TransmitMailbox = CAN_Transmit(CANx, TxMessage);
    i = 0;
    while((CAN_TransmitStatus(CANx, TransmitMailbox) != CANTXOK) && (i != 0xFFFF))
    {
        i++;
    }
#endif
    CAN_Transmit(CANx, TxMessage);
}
void BMW_KnobContrl(BYTE bEn)
{
  CanTxMsg gTxMessage;
  static BYTE IndexCntr=0;
  if(bEn)
  {
   gTxMessage.DLC=KnobCntrTab[0].DLC;
   gTxMessage.StdId=KnobCntrTab[0].StdId;
   gTxMessage.IDE=KnobCntrTab[0].IDE;
   gTxMessage.RTR=KnobCntrTab[0].RTR;
   gTxMessage.Data[0]=KnobCntrTab[0].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[0].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[0].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[0].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[0].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[0].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[0].Data[6];
   gTxMessage.Data[7]=IndexCntr++;//KnobCntrTab[0].Data[7];
   Can_Tx(CAN2, &gTxMessage);
  }
  else
  {
   gTxMessage.DLC=KnobCntrTab[1].DLC;
   gTxMessage.StdId=KnobCntrTab[1].StdId;
   gTxMessage.IDE=KnobCntrTab[1].IDE;
   gTxMessage.RTR=KnobCntrTab[1].RTR;
   gTxMessage.Data[0]=KnobCntrTab[1].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[1].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[1].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[1].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[1].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[1].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[1].Data[6];
   gTxMessage.Data[7]=IndexCntr++;//KnobCntrTab[1].Data[7];
   Can_Tx(CAN2, &gTxMessage);
  }
}

void BMW_AuxContrl_Task(void)
{
  CanTxMsg gTxMessage;
  
  switch(m_BMW_CAN.uAuxSendSn)
  {
  case __SN0_:
   gTxMessage.DLC=KnobCntrTab[2].DLC;
   gTxMessage.StdId=KnobCntrTab[2].StdId;
   gTxMessage.IDE=KnobCntrTab[2].IDE;
   gTxMessage.RTR=KnobCntrTab[2].RTR;
   gTxMessage.Data[0]=KnobCntrTab[2].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[2].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[2].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[2].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[2].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[2].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[2].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[2].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN1_;
    break;
  case __SN1_:
    gTxMessage.DLC=KnobCntrTab[3].DLC;
   gTxMessage.StdId=KnobCntrTab[3].StdId;
   gTxMessage.IDE=KnobCntrTab[3].IDE;
   gTxMessage.RTR=KnobCntrTab[3].RTR;
   gTxMessage.Data[0]=KnobCntrTab[3].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[3].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[3].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[3].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[3].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[3].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[3].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[3].Data[7];
    Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN2_;
    break;
  case __SN2_:
   gTxMessage.DLC=KnobCntrTab[4].DLC;
   gTxMessage.StdId=KnobCntrTab[4].StdId;
   gTxMessage.IDE=KnobCntrTab[4].IDE;
   gTxMessage.RTR=KnobCntrTab[4].RTR;
   gTxMessage.Data[0]=KnobCntrTab[4].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[4].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[4].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[4].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[4].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[4].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[4].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[4].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN3_;
    break;
  case __SN3_:
   gTxMessage.DLC=KnobCntrTab[5].DLC;
   gTxMessage.StdId=KnobCntrTab[5].StdId;
   gTxMessage.IDE=KnobCntrTab[5].IDE;
   gTxMessage.RTR=KnobCntrTab[5].RTR;
   gTxMessage.Data[0]=KnobCntrTab[5].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[5].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[5].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[5].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[5].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[5].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[5].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[5].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN4_;
    break;
  case __SN4_:
   gTxMessage.DLC=KnobCntrTab[6].DLC;
   gTxMessage.StdId=KnobCntrTab[6].StdId;
   gTxMessage.IDE=KnobCntrTab[6].IDE;
   gTxMessage.RTR=KnobCntrTab[6].RTR;
   gTxMessage.Data[0]=KnobCntrTab[6].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[6].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[6].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[6].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[6].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[6].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[6].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[6].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN5_;
    break;
  case __SN5_:
   gTxMessage.DLC=KnobCntrTab[7].DLC;
   gTxMessage.StdId=KnobCntrTab[7].StdId;
   gTxMessage.IDE=KnobCntrTab[7].IDE;
   gTxMessage.RTR=KnobCntrTab[7].RTR;
   gTxMessage.Data[0]=KnobCntrTab[7].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[7].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[7].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[7].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[7].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[7].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[7].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[7].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN6_;
    break;
  case __SN6_:
   gTxMessage.DLC=KnobCntrTab[8].DLC;
   gTxMessage.StdId=KnobCntrTab[8].StdId;
   gTxMessage.IDE=KnobCntrTab[8].IDE;
   gTxMessage.RTR=KnobCntrTab[8].RTR;
   gTxMessage.Data[0]=KnobCntrTab[8].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[8].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[8].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[8].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[8].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[8].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[8].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[8].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN7_;
    break;
  case __SN7_:
   gTxMessage.DLC=KnobCntrTab[9].DLC;
   gTxMessage.StdId=KnobCntrTab[9].StdId;
   gTxMessage.IDE=KnobCntrTab[9].IDE;
   gTxMessage.RTR=KnobCntrTab[9].RTR;
   gTxMessage.Data[0]=KnobCntrTab[9].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[9].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[9].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[9].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[9].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[9].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[9].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[9].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN8_;
    break;
  case __SN8_:
   gTxMessage.DLC=KnobCntrTab[10].DLC;
   gTxMessage.StdId=KnobCntrTab[10].StdId;
   gTxMessage.IDE=KnobCntrTab[10].IDE;
   gTxMessage.RTR=KnobCntrTab[10].RTR;
   gTxMessage.Data[0]=KnobCntrTab[10].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[10].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[10].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[10].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[10].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[10].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[10].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[10].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN9_;
    break;
  case __SN9_:
   gTxMessage.DLC=KnobCntrTab[11].DLC;
   gTxMessage.StdId=KnobCntrTab[11].StdId;
   gTxMessage.IDE=KnobCntrTab[11].IDE;
   gTxMessage.RTR=KnobCntrTab[11].RTR;
   gTxMessage.Data[0]=KnobCntrTab[11].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[11].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[11].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[11].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[11].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[11].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[11].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[11].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN10_;
    break;
  case __SN10_:
   gTxMessage.DLC=KnobCntrTab[12].DLC;
   gTxMessage.StdId=KnobCntrTab[12].StdId;
   gTxMessage.IDE=KnobCntrTab[12].IDE;
   gTxMessage.RTR=KnobCntrTab[12].RTR;
   gTxMessage.Data[0]=KnobCntrTab[12].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[12].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[12].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[12].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[12].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[12].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[12].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[12].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN11_;
    break;
  case __SN11_:
   gTxMessage.DLC=KnobCntrTab[13].DLC;
   gTxMessage.StdId=KnobCntrTab[13].StdId;
   gTxMessage.IDE=KnobCntrTab[13].IDE;
   gTxMessage.RTR=KnobCntrTab[13].RTR;
   gTxMessage.Data[0]=KnobCntrTab[13].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[13].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[13].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[13].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[13].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[13].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[13].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[13].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN12_;
    break;

  case __SN12_:
   gTxMessage.DLC=KnobCntrTab[14].DLC;
   gTxMessage.StdId=KnobCntrTab[14].StdId;
   gTxMessage.IDE=KnobCntrTab[14].IDE;
   gTxMessage.RTR=KnobCntrTab[14].RTR;
   gTxMessage.Data[0]=KnobCntrTab[14].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[14].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[14].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[14].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[14].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[14].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[14].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[14].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN13_;
    break;
  case __SN13_:
   gTxMessage.DLC=KnobCntrTab[15].DLC;
   gTxMessage.StdId=KnobCntrTab[15].StdId;
   gTxMessage.IDE=KnobCntrTab[15].IDE;
   gTxMessage.RTR=KnobCntrTab[15].RTR;
   gTxMessage.Data[0]=KnobCntrTab[15].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[15].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[15].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[15].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[15].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[15].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[15].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[15].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN14_;
    break;
  case __SN14_:
   gTxMessage.DLC=KnobCntrTab[16].DLC;
   gTxMessage.StdId=KnobCntrTab[16].StdId;
   gTxMessage.IDE=KnobCntrTab[16].IDE;
   gTxMessage.RTR=KnobCntrTab[16].RTR;
   gTxMessage.Data[0]=KnobCntrTab[16].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[16].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[16].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[16].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[16].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[16].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[16].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[16].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN15_;
    break;
  case __SN15_:
   gTxMessage.DLC=KnobCntrTab[17].DLC;
   gTxMessage.StdId=KnobCntrTab[17].StdId;
   gTxMessage.IDE=KnobCntrTab[17].IDE;
   gTxMessage.RTR=KnobCntrTab[17].RTR;
   gTxMessage.Data[0]=KnobCntrTab[17].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[17].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[17].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[17].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[17].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[17].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[17].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[17].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN_END_;
    break;
  default:
    m_BMW_CAN.uAuxSendSn=__SN_END_;
    break;
    
    
  }
}

void BMW_OptionKey_Task(void)
{
  CanTxMsg gTxMessage;
  
  switch(m_BMW_CAN.uOptionSendSn)
  {
  case __SN0_:
   gTxMessage.DLC=KnobCntrTab[18].DLC;
   gTxMessage.StdId=KnobCntrTab[18].StdId;
   gTxMessage.IDE=KnobCntrTab[18].IDE;
   gTxMessage.RTR=KnobCntrTab[18].RTR;
   gTxMessage.Data[0]=KnobCntrTab[18].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[18].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[18].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[18].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[18].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[18].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[18].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[18].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uOptionSendSn=__SN1_;
    break;
  case __SN1_:
    gTxMessage.DLC=KnobCntrTab[19].DLC;
   gTxMessage.StdId=KnobCntrTab[19].StdId;
   gTxMessage.IDE=KnobCntrTab[19].IDE;
   gTxMessage.RTR=KnobCntrTab[19].RTR;
   gTxMessage.Data[0]=KnobCntrTab[19].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[19].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[19].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[19].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[19].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[19].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[19].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[19].Data[7];
    Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uOptionSendSn=__SN2_;
    break;
  case __SN2_:
   gTxMessage.DLC=KnobCntrTab[20].DLC;
   gTxMessage.StdId=KnobCntrTab[20].StdId;
   gTxMessage.IDE=KnobCntrTab[20].IDE;
   gTxMessage.RTR=KnobCntrTab[20].RTR;
   gTxMessage.Data[0]=KnobCntrTab[20].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[20].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[20].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[20].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[20].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[20].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[20].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[20].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uOptionSendSn=__SN3_;
    break;
  case __SN3_:
   gTxMessage.DLC=KnobCntrTab[21].DLC;
   gTxMessage.StdId=KnobCntrTab[21].StdId;
   gTxMessage.IDE=KnobCntrTab[21].IDE;
   gTxMessage.RTR=KnobCntrTab[21].RTR;
   gTxMessage.Data[0]=KnobCntrTab[21].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[21].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[21].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[21].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[21].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[21].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[21].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[21].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uOptionSendSn=__SN0_;
    break;
  
  default:
    m_BMW_CAN.uOptionSendSn=__SN0_;
    break;
    
    
  }
}
void BENZ_AuxContrl_Task(void)
{
	  CanTxMsg gTxMessage;
	  
	  switch(m_BMW_CAN.uAuxSendSn)
	  {
	  case __SN0_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[2].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[2].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[2].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[2].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[2].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[2].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[2].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[2].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[2].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[2].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[2].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[2].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN1_;
		break;
	  case __SN1_:
		gTxMessage.DLC=BENZ_KnobCntrTab[3].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[3].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[3].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[3].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[3].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[3].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[3].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[3].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[3].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[3].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[3].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[3].Data[7];
		Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN2_;
		break;
	  case __SN2_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[2].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[2].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[2].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[2].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[2].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[2].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[2].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[2].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[2].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[2].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[2].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[2].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN3_;
		break;
	  case __SN3_:
		gTxMessage.DLC=BENZ_KnobCntrTab[3].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[3].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[3].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[3].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[3].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[3].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[3].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[3].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[3].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[3].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[3].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[3].Data[7];
		Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN4_;
		break;
	case __SN4_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[2].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[2].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[2].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[2].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[2].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[2].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[2].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[2].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[2].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[2].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[2].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[2].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN5_;
		break;
	  case __SN5_:
		gTxMessage.DLC=BENZ_KnobCntrTab[3].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[3].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[3].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[3].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[3].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[3].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[3].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[3].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[3].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[3].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[3].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[3].Data[7];
		Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN6_;
		break;
	  case __SN6_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[4].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[4].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[4].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[4].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[4].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[4].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[4].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[4].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[4].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[4].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[4].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[4].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN7_;
		break;
	  case __SN7_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[5].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[5].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[5].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[5].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[5].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[5].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[5].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[5].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[5].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[5].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[5].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[5].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN8_;
		break;
	  case __SN8_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[4].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[4].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[4].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[4].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[4].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[4].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[4].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[4].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[4].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[4].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[4].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[4].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN9_;
		break;
	  case __SN9_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[5].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[5].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[5].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[5].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[5].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[5].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[5].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[5].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[5].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[5].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[5].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[5].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN10_;
		break;

	  case __SN10_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[8].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[8].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[8].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[8].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[8].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[8].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[8].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[8].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[8].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[8].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[8].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[8].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN11_;
		break;
	  case __SN11_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[9].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[9].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[9].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[9].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[9].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[9].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[9].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[9].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[9].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[9].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[9].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[9].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN12_;
		break;
	  case __SN12_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[10].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[10].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[10].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[10].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[10].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[10].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[10].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[10].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[10].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[10].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[10].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[10].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN13_;
		break;
	  case __SN13_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[11].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[11].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[11].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[11].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[11].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[11].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[11].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[11].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[11].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[11].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[11].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[11].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN14_;
		break;
	  case __SN14_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[12].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[12].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[12].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[12].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[12].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[12].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[12].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[12].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[12].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[12].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[12].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[12].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN15_;
		break;
	  case __SN15_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[13].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[13].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[13].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[13].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[13].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[13].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[13].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[13].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[13].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[13].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[13].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[13].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN16_;
		break;
	
	  case __SN16_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[14].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[14].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[14].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[14].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[14].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[14].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[14].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[14].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[14].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[14].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[14].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[14].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN17_;
		break;
	  case __SN17_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[15].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[15].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[15].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[15].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[15].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[15].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[15].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[15].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[15].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[15].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[15].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[15].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN18_;
		break;

	  case __SN18_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[6].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[6].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[6].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[6].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[6].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[6].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[6].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[6].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[6].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[6].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[6].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[6].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN19_;
		break;
	  case __SN19_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[7].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[7].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[7].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[7].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[7].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[7].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[7].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[7].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[7].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[7].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[7].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[7].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN20_;
		break;
	case __SN20_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[16].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[16].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[16].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[16].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[16].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[16].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[16].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[16].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[16].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[16].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[16].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[16].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN21_;
		break;
	  case __SN21_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[17].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[17].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[17].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[17].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[17].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[17].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[17].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[17].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[17].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[17].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[17].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[17].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN22_;
		break;
	 case __SN22_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[18].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[18].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[18].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[18].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[18].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[18].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[18].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[18].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[18].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[18].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[18].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[18].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN23_;
		break;
	 case __SN23_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[19].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[19].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[19].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[19].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[19].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[19].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[19].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[19].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[19].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[19].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[19].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[19].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN24_;
		break;
	case __SN24_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[20].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[20].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[20].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[20].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[20].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[20].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[20].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[20].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[20].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[20].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[20].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[20].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN25_;
		break;
	case __SN25_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[21].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[21].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[21].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[21].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[21].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[21].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[21].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[21].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[21].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[21].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[21].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[21].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	  m_BMW_CAN.uAuxSendSn=__SN26_;
		break;
	case __SN26_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[20].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[20].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[20].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[20].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[20].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[20].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[20].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[20].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[20].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[20].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[20].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[20].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN27_;
		break;
	case __SN27_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[21].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[21].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[21].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[21].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[21].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[21].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[21].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[21].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[21].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[21].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[21].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[21].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	  m_BMW_CAN.uAuxSendSn=__SN28_;
		break;
	case __SN28_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[6].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[6].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[6].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[6].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[6].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[6].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[6].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[6].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[6].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[6].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[6].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[6].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN29_;
		break;
	  case __SN29_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[7].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[7].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[7].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[7].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[7].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[7].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[7].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[7].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[7].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[7].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[7].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[7].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN30_;
		break;
	case __SN30_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[2].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[2].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[2].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[2].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[2].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[2].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[2].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[2].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[2].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[2].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[2].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[2].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN31_;
		break;
	  case __SN31_:
		gTxMessage.DLC=BENZ_KnobCntrTab[3].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[3].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[3].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[3].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[3].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[3].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[3].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[3].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[3].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[3].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[3].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[3].Data[7];
		Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN32_;
		break;
	 case __SN32_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[4].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[4].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[4].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[4].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[4].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[4].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[4].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[4].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[4].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[4].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[4].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[4].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN33_;
		break;
	  case __SN33_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[5].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[5].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[5].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[5].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[5].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[5].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[5].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[5].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[5].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[5].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[5].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[5].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN34_;
		break;
	  case __SN34_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[4].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[4].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[4].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[4].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[4].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[4].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[4].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[4].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[4].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[4].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[4].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[4].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN35_;
		break;
	  case __SN35_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[5].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[5].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[5].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[5].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[5].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[5].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[5].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[5].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[5].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[5].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[5].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[5].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN36_;
		break;
	 case __SN36_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[6].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[6].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[6].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[6].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[6].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[6].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[6].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[6].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[6].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[6].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[6].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[6].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN37_;
		break;
	  case __SN37_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[7].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[7].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[7].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[7].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[7].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[7].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[7].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[7].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[7].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[7].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[7].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[7].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN38_;
		break;
	case __SN38_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[16].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[16].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[16].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[16].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[16].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[16].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[16].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[16].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[16].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[16].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[16].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[16].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN39_;
		break;
	  case __SN39_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[17].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[17].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[17].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[17].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[17].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[17].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[17].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[17].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[17].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[17].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[17].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[17].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN40_;
		break;
	  case __SN40_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[18].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[18].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[18].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[18].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[18].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[18].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[18].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[18].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[18].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[18].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[18].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[18].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN41_;
		break;
	 case __SN41_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[19].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[19].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[19].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[19].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[19].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[19].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[19].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[19].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[19].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[19].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[19].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[19].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN42_;
		break;
	case __SN42_:
		gTxMessage.DLC=BENZ_KnobCntrTab[16].DLC;
		gTxMessage.StdId=BENZ_KnobCntrTab[16].StdId;
		gTxMessage.IDE=BENZ_KnobCntrTab[16].IDE;
		gTxMessage.RTR=BENZ_KnobCntrTab[16].RTR;
		gTxMessage.Data[0]=BENZ_KnobCntrTab[16].Data[0];
		gTxMessage.Data[1]=BENZ_KnobCntrTab[16].Data[1];
		gTxMessage.Data[2]=BENZ_KnobCntrTab[16].Data[2];
		gTxMessage.Data[3]=BENZ_KnobCntrTab[16].Data[3];
		gTxMessage.Data[4]=BENZ_KnobCntrTab[16].Data[4];
		gTxMessage.Data[5]=BENZ_KnobCntrTab[16].Data[5];
		gTxMessage.Data[6]=BENZ_KnobCntrTab[16].Data[6];
		gTxMessage.Data[7]=BENZ_KnobCntrTab[16].Data[7];

		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN43_;
		break;
	case __SN43_:
		gTxMessage.DLC=BENZ_KnobCntrTab[17].DLC;
		gTxMessage.StdId=BENZ_KnobCntrTab[17].StdId;
		gTxMessage.IDE=BENZ_KnobCntrTab[17].IDE;
		gTxMessage.RTR=BENZ_KnobCntrTab[17].RTR;
		gTxMessage.Data[0]=BENZ_KnobCntrTab[17].Data[0];
		gTxMessage.Data[1]=BENZ_KnobCntrTab[17].Data[1];
		gTxMessage.Data[2]=BENZ_KnobCntrTab[17].Data[2];
		gTxMessage.Data[3]=BENZ_KnobCntrTab[17].Data[3];
		gTxMessage.Data[4]=BENZ_KnobCntrTab[17].Data[4];
		gTxMessage.Data[5]=BENZ_KnobCntrTab[17].Data[5];
		gTxMessage.Data[6]=BENZ_KnobCntrTab[17].Data[6];
		gTxMessage.Data[7]=BENZ_KnobCntrTab[17].Data[7];

		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN44_;
		break;
	 case __SN44_:
		 gTxMessage.DLC=BENZ_KnobCntrTab[16].DLC;
		 gTxMessage.StdId=BENZ_KnobCntrTab[16].StdId;
		 gTxMessage.IDE=BENZ_KnobCntrTab[16].IDE;
		 gTxMessage.RTR=BENZ_KnobCntrTab[16].RTR;
		 gTxMessage.Data[0]=BENZ_KnobCntrTab[16].Data[0];
		 gTxMessage.Data[1]=BENZ_KnobCntrTab[16].Data[1];
		 gTxMessage.Data[2]=BENZ_KnobCntrTab[16].Data[2];
		 gTxMessage.Data[3]=BENZ_KnobCntrTab[16].Data[3];
		 gTxMessage.Data[4]=BENZ_KnobCntrTab[16].Data[4];
		 gTxMessage.Data[5]=BENZ_KnobCntrTab[16].Data[5];
		 gTxMessage.Data[6]=BENZ_KnobCntrTab[16].Data[6];
		 gTxMessage.Data[7]=BENZ_KnobCntrTab[16].Data[7];

		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN45_;
		break;
	case __SN45_:
		gTxMessage.DLC=BENZ_KnobCntrTab[17].DLC;
		gTxMessage.StdId=BENZ_KnobCntrTab[17].StdId;
		gTxMessage.IDE=BENZ_KnobCntrTab[17].IDE;
		gTxMessage.RTR=BENZ_KnobCntrTab[17].RTR;
		gTxMessage.Data[0]=BENZ_KnobCntrTab[17].Data[0];
		gTxMessage.Data[1]=BENZ_KnobCntrTab[17].Data[1];
		gTxMessage.Data[2]=BENZ_KnobCntrTab[17].Data[2];
		gTxMessage.Data[3]=BENZ_KnobCntrTab[17].Data[3];
		gTxMessage.Data[4]=BENZ_KnobCntrTab[17].Data[4];
		gTxMessage.Data[5]=BENZ_KnobCntrTab[17].Data[5];
		gTxMessage.Data[6]=BENZ_KnobCntrTab[17].Data[6];
		gTxMessage.Data[7]=BENZ_KnobCntrTab[17].Data[7];

		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN46_;
		break;
	case __SN46_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[6].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[6].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[6].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[6].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[6].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[6].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[6].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[6].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[6].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[6].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[6].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[6].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN47_;
		break;
	  case __SN47_:
	   gTxMessage.DLC=BENZ_KnobCntrTab[7].DLC;
	   gTxMessage.StdId=BENZ_KnobCntrTab[7].StdId;
	   gTxMessage.IDE=BENZ_KnobCntrTab[7].IDE;
	   gTxMessage.RTR=BENZ_KnobCntrTab[7].RTR;
	   gTxMessage.Data[0]=BENZ_KnobCntrTab[7].Data[0];
	   gTxMessage.Data[1]=BENZ_KnobCntrTab[7].Data[1];
	   gTxMessage.Data[2]=BENZ_KnobCntrTab[7].Data[2];
	   gTxMessage.Data[3]=BENZ_KnobCntrTab[7].Data[3];
	   gTxMessage.Data[4]=BENZ_KnobCntrTab[7].Data[4];
	   gTxMessage.Data[5]=BENZ_KnobCntrTab[7].Data[5];
	   gTxMessage.Data[6]=BENZ_KnobCntrTab[7].Data[6];
	   gTxMessage.Data[7]=BENZ_KnobCntrTab[7].Data[7];
		 
	   Can_Tx(CAN2, &gTxMessage);
	   m_BMW_CAN.uAuxSendSn=__SN_END_;
		break;
	  default:
		m_BMW_CAN.uAuxSendSn=__SN_END_;
		break;
		
		
	  }
	}

void AudiCanBus_SendControlCmd(BYTE cmd)
{
    m_BMW_CAN.uCanSendCmdIndex++;
    if (m_BMW_CAN.uCanSendCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
    {
        m_BMW_CAN.uCanSendCmdIndex = 0;
    }
    m_BMW_CAN.uCanSendCmdBuf[m_BMW_CAN.uCanSendCmdIndex] = cmd;
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/

static BYTE AudiCan_FetchCmd(void)
{
    BYTE temp;
    if (m_BMW_CAN.uCanFetchCmdIndex != m_BMW_CAN.uCanSendCmdIndex)
    {

        m_BMW_CAN.uCanFetchCmdIndex++;
        if (m_BMW_CAN.uCanFetchCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
        {
            m_BMW_CAN.uCanFetchCmdIndex = 0;
        }
        temp = m_BMW_CAN.uCanFetchCmdIndex;

        return m_BMW_CAN.uCanSendCmdBuf[temp];


    }
    else
    {
        return BENZE_CMD_NULL;
    }
}


/**************************************************************************/
/*                                                                        */
/**************************************************************************/
#if 0
void Can_FetchSteerKeyInfo_Type4(CanRxMsg RxMessage)
{
    static vu8 uCKeepFlag = 0;
    static vu8 uRetKeepFlag = 0;
    static vu16 wBounceCnt = 0;
   

    if (!(RxMessage.StdId == BWM_CAN_STEER_KEY_STD__TYPE4_ID && RxMessage.DLC == 6))
    {
        return ;
    }
    
    //initial
    m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
    //
    /**************************FIrst pressed ************************************/
    
    if ((RxMessage.Data[3]==0x21&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x22&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
        //knob right
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBRT_PRESSED;
    }
    else if ((RxMessage.Data[3]==0x81&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x82&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
        //knob left
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBLT_PRESSED;
    }
    else if( (RxMessage.Data[3]==0x11&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x12&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
        //knob up
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBUP_PRESSED;
    }
    else if ((RxMessage.Data[3]==0x41&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x42&&RxMessage.Data[4]==0xDD&&RxMessage.Data[5]==0x01))
        //knob dn
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBDN_PRESSED;
    }
    else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xDE&&RxMessage.Data[5]==0x01)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xDE&&RxMessage.Data[5]==0x01))
        //knob enter
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_KNOBENTER_PRESSED;
    }
    else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x04)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x04))
        //option
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_OPTION_PRESSED;
    }
    
    else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x02)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x02))
        //back
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_BACK_PRESSED;
    }
    
    
    else if( (RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x08)||(RxMessage.Data[3]==0x02&&RxMessage.Data[3]==0xC0&&RxMessage.Data[3]==0x08))
        //radio
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_RADIO_PRESSED;
    }
    else if( (RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x10)||(RxMessage.Data[3]==0x02&&RxMessage.Data[3]==0xC0&&RxMessage.Data[3]==0x10))
        //media
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MEDIA_PRESSED;
    }
    else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x01))
        //menu
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MENU_PRESSED;
    }
    else if ((RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x01))
        //menu keep
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_BACK_KEEP;
    }
    
    else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x40)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x40))
        //tel
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_TEL_PRESSED;
    }
    else if ((RxMessage.Data[3]==0x01&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x20)||(RxMessage.Data[3]==0x02&&RxMessage.Data[4]==0xC0&&RxMessage.Data[5]==0x20))
        //map
    {
        m_BMW_CAN.uKeyID = BENZE_KEY_KnobAround_KEY_MAP_PRESSED;
    }
    
    else
    {

        //-------------------------------------------------------
        wBounceCnt++;
        if (wBounceCnt >= 2)
        {
            uCKeepFlag = 0;
            uRetKeepFlag = 0;
            m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
            wBounceCnt = 0;
        }
        m_BMW_CAN.uKeyKeepCnt = 0;
        m_BMW_CAN.uKeyKeepInDepCnt=0;
        m_BMW_CAN.bKeyKeepOneTime = 0;

    }


    switch (m_BMW_CAN.uKeyID)
    {
    case BENZE_KEY_ALL_BOUNCED:
        uCKeepFlag = 0;
        uRetKeepFlag = 0;
        m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
        wBounceCnt = 0;
        m_BMW_CAN.uKeyKeepCnt = 0;
        m_BMW_CAN.bKeyKeepOneTime = 0;
        break;
    /********************Process first pressed**********************************/
    case BENZE_KEY_KnobAround_KEY_KNOBRT_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
            
        }
        break;
    

    case BENZE_KEY_KnobAround_KEY_KNOBLT_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_KnobAround_KEY_KNOBUP_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_KnobAround_KEY_KNOBDN_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
		
    case BENZE_KEY_KnobAround_KEY_KNOBENTER_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    
    case BENZE_KEY_KnobAround_KEY_OPTION_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            //AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_KnobAround_KEY_BACK_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            //AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_RET_PRESSED);
          AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    
    case BENZE_KEY_KnobAround_KEY_BACK_KEEP:
        m_BMW_CAN.uKeyKeepInDepCnt++;
        if (m_BMW_CAN.uKeyKeepInDepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_RET_KEEP);
        
        }
        else if (m_BMW_CAN.uKeyKeepInDepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepInDepCnt = 2;
            //process keep data
        }
        break;
      
    case BENZE_KEY_KnobAround_KEY_RADIO_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_KnobAround_KEY_MEDIA_PRESSED: //
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_KnobAround_KEY_MENU_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_MENU_PRESSED);//
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_KnobAround_KEY_TEL_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_KnobAround_KEY_MAP_PRESSED:
        m_BMW_CAN.uKeyKeepCnt++;
        if (m_BMW_CAN.uKeyKeepCnt == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt = 2;
            //process keep data
        }
        break;
    
    /********************Process keep pressed**********************************/
        
    default:
        m_BMW_CAN.uKeyID = BENZE_KEY_ALL_BOUNCED;
        m_BMW_CAN.uKeyKeepCnt = 0;
        m_BMW_CAN.bKeyKeepOneTime = 0;
        break;
    }
}
#endif
void Can_FetchSteerKeyInfo_Type3(CanRxMsg RxMessage)
{
    static vu8 uPreAction = 0;
    static vu8 uPreVal = 0;
    
    if (!(RxMessage.StdId == BWM_CAN_STEER_KEY_STD__TYPE3_ID && RxMessage.DLC == 6))
    {
        return ;
    }
    //initial
    if(uPreAction==RxMessage.Data[2])//no action
    {
        return ;
    }  
    //
    if ((RxMessage.Data[3]>uPreVal)||(RxMessage.Data[3]==0x00&&uPreVal==0xFF))
        //add
    {
        AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEINC_PRESSED);
    }
    else if ((RxMessage.Data[3] <uPreVal)||(RxMessage.Data[3]==0xFF&&uPreVal==0x00))
        //sub
    {
        AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
    }
    
    uPreAction=RxMessage.Data[2];
    uPreVal=RxMessage.Data[3];
    
}
void Can_FetchSteerKeyInfo_Type2(CanRxMsg RxMessage)
{
    if (!(RxMessage.StdId == BWM_CAN_STEER_KEY_STD__TYPE2_ID && RxMessage.DLC == 2))
    {
        return ;
    }

    //initial
    
    //
    if (RxMessage.Data[0] ==0x80)
        //tune up
    {
        AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEINC_PRESSED);
    }
    else if (RxMessage.Data[0] ==0x7E)
        //tune dn
    {
        AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
    }
    else if (RxMessage.Data[0] ==0x7F)
        //enter
    {
        AudiCanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
    }

}
#if 0
void Can_FetchSteerKeyInfo_Type1(CanRxMsg RxMessage)
{
    static vu8 uCKeepFlag = 0;
    static vu8 uRetKeepFlag = 0;
    static vu16 wBounceCnt = 0;
    BYTE i;

    m_BMW_CAN.RxMessage.DLC = RxMessage.DLC;
    if (!(RxMessage.StdId == BWM_CAN_STEER_KEY_STD__TYPE1_ID && RxMessage.DLC == 2))
    {
        return ;
    }
    for(i = 0; i < 2; i++)
        m_BMW_CAN.RxMessage.Data[i] = RxMessage.Data[i];
    //initial
    m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
    //
    if (RxMessage.Data[1] & 0x10)
        //mode
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_MODE_PRESSED;
    }
    else if (RxMessage.Data[1] & 0x01)
        //voice
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED;
    }
    else if (RxMessage.Data[0] & 0x01)
        //bt
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_BT_PRESSED;
    }
    
    else
    {

        //-------------------------------------------------------
        wBounceCnt++;
        if (wBounceCnt >= 2)
        {
            uCKeepFlag = 0;
            uRetKeepFlag = 0;
            m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
            wBounceCnt = 0;
        }
        m_BMW_CAN.uKeyKeepCnt2 = 0;
        m_BMW_CAN.bKeyKeepOneTime2 = 0;

    }


    switch (m_BMW_CAN.uKeyID2)
    {
    case BENZE_KEY_ALL_BOUNCED:
        uCKeepFlag = 0;
        uRetKeepFlag = 0;
        m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        wBounceCnt = 0;
        m_BMW_CAN.uKeyKeepCnt2 = 0;
        m_BMW_CAN.bKeyKeepOneTime2 = 0;
        break;
    case BENZE_KEY_STEERING_RIGHT_KEY_MODE_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
            
        }
        break;
    

    case BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_STEERING_RIGHT_KEY_BT_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
        }
        break;
    
    default:
        m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        m_BMW_CAN.uKeyKeepCnt2 = 0;
        m_BMW_CAN.bKeyKeepOneTime2 = 0;
        break;
    }
}
#endif
/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void AudiCan_FetchStallsInfo(CanRxMsg RxMessage)
{
    if (!(RxMessage.StdId == BWM_CAN_STALLS_STD_ID && RxMessage.DLC == 3))
    {
        return ;
    }

    if ((RxMessage.Data[1] & 0x01) == 0x01)
        //back
    {
#if COMPILE_BACK_BY_STALL
if(g_stuSYSINFO.FS_select.cam_type_onoff_id!=2)
{
        //g_stuBACKCNTR.u8CurState = CAM_ON;
        g_stuPARKCNTR.u8CurState = PARK_OFF;
		g_stuBACKCNTR.u8can_back_status=CAM_ON_from_can;
        POWER_RearVideoOn();
        /*
        if(g_stuSYSINFO.uBootFinished)
        {

            McuSetNaviMuteOn();
        }
        */
        
        g_stuSYSINFO.wRearOnByCanTimer=2000;
}
#endif
    }

    else
    {
      #if COMPILE_BACK_BY_STALL
	  
	  if(g_stuSYSINFO.FS_select.cam_type_onoff_id!=2)
      	{
        //g_stuBACKCNTR.u8CurState = CAM_OFF;
        g_stuPARKCNTR.u8CurState = PARK_OFF;
		g_stuBACKCNTR.u8can_back_status=CAM_off_id;

        POWER_RearVideoOff();
      	}
        /*
        if(g_stuSYSINFO.uBootFinished)
        {
            McuSetRearOutAudioMuteOff();
        }
        */
#endif
    }



}

void AudiCan_FetchStallsInfo_Q3(CanRxMsg RxMessage)
{


}

#if 0
void AudiCanBus_FetchCmdTask(void)
{
    BYTE action = 0;
    if(g_EMODE_SYSTEM!=MODE_SYSTEM_IN_NORMAL)
      return;
    
    if (!m_BMW_CAN.wLoopTimer)
    {
        switch (AudiCan_FetchCmd())
        {
        case BENZE_CMD_KNOB_LEFT_PRESSED:
            action |= JOY_SHIFT_LEFT;
            IPC_SendKeyMessage_MouseAction(action);
          break;
        case BENZE_CMD_KNOB_RIGHT_PRESSED:
            action |= JOY_SHIFT_RIGHT;
            IPC_SendKeyMessage_MouseAction(action);
          break;
        case BENZE_CMD_KNOB_TUNEDEC_PRESSED:
        
  
            action |= JOY_SHIFT_UP;
            IPC_SendKeyMessage_MouseAction(action);

            break;
        case BENZE_CMD_KNOB_TUNEINC_PRESSED:
        
       
            action |= JOY_SHIFT_DN;
            IPC_SendKeyMessage_MouseAction(action);

            break;
        case BENZE_CMD_KNOB_UP_PRESSED:
            action |= JOY_SHIFT_UP;
            IPC_SendKeyMessage_MouseAction(action);
            break;
            
        case BENZE_CMD_KNOB_DN_PRESSED:
            action |= JOY_SHIFT_DN;
            IPC_SendKeyMessage_MouseAction(action);
            
            break;
        
        case BENZE_CMD_KNOB_ENTER_PRESSED:

            IPC_SendKeyMessage_ENTER(MSG_ACTION_BOUNCE);
            
            break;
        case BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED:
        
            if(g_stuSYSINFO.sys_main.uMainMode!=SYSTEM_MODE_IN_CAR_MEDIA)
            IPC_SendKeyMessage_Media(MSG_ACTION_BOUNCE);
            break;
        case BENZE_CMD_STEERING_RIGHT_KEY_RET_KEEP:
            IPC_SendKeyMessage_Menu(MSG_ACTION_PRESSED);
            //IPC_SendKeyMessage_Media_Sw(MSG_ACTION_PRESSED);
            break;
        case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED:
            IPC_SendKeyMessage_NAVI(MSG_ACTION_PRESSED);
            break;
        
        case BENZE_CMD_MENU_PRESSED:
           if(g_stuSYSINFO.uOSDMainMode==MAIN_OSD_MODE_IN_DISAPP)
           {
            IPC_SendKeyMessage_Menu(MSG_ACTION_PRESSED);
           }
           
            break;

        default:
            break;
        }
        m_BMW_CAN.wLoopTimer = 10;
    }
}
#endif 
//get input source info
void Audi_CanBus_InputSource_data_analytic(CanRxMsg RxMessage)
{
    static vu8 uTxtInfoBuf[30];
    static vu8 uTxtIndex = 0;
    BYTE i;



    if (RxMessage.StdId == BMW_CAN_SOURCE2_STD_ID && RxMessage.DLC == 1) //list info
    {
        uTxtIndex = 0;
        //------------------------------------------------------------------
        if(uTxtInfoBuf[5] == 'A' && uTxtInfoBuf[6] == 'U' && uTxtInfoBuf[7] == 'X')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_AUX;

        }
        else if(uTxtInfoBuf[5] == 'E' && uTxtInfoBuf[6] == 'x' && uTxtInfoBuf[7] == 't')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_AUX;

        }
        //-------------------------------------------------------------------
        if(uTxtInfoBuf[5] == 'F' && uTxtInfoBuf[6] == 'M')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;

        }
        else if(uTxtInfoBuf[5] == 'R' && uTxtInfoBuf[6] == 'a' && uTxtInfoBuf[7] == 'd')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;

        }
        else if(uTxtInfoBuf[5] == 'A' && uTxtInfoBuf[6] == 'M')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;

        }
        else if(uTxtInfoBuf[5] == 'C' && uTxtInfoBuf[6] == 'D')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;

        }
        else if(uTxtInfoBuf[5] == 'S' && uTxtInfoBuf[6] == 'D')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;

        }
        else if(uTxtInfoBuf[5] == 'T' && uTxtInfoBuf[6] == 'r' && uTxtInfoBuf[7] == 'a')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;

        }
        //--------------------------------------------------------------------





    }
    if (RxMessage.StdId == BMW_CAN_SOURCE1_STD_ID)//txt info
    {
        for(i = 0; i < RxMessage.DLC; i++)
        {
            uTxtInfoBuf[uTxtIndex%30] = RxMessage.Data[i];
            uTxtIndex++;
            if(uTxtIndex >= 30)
                uTxtIndex = 29;
        }
    }


}


#if LF_CAN_TYPE == Benci_newC
void Benci_newC_CanBus_Config(void)
	{
	
		CAN_InitTypeDef CAN_InitStructure;
		CAN_FilterInitTypeDef CAN_FilterInitStructure;
		/* CAN register init */
		// CAN_DeInit();
		/* CAN1 and CAN2 register init */
		CAN_DeInit(CAN1);
		CAN_DeInit(CAN2);
	
	
		/* Struct init*/
		CAN_StructInit(&CAN_InitStructure);
	
		
		/*************************************************************
		
		主机CAN配置
		
		*************************************************************/
	
	
		/* CAN cell init */
		CAN_InitStructure.CAN_TTCM = DISABLE; //禁止时间触发通信模式
		CAN_InitStructure.CAN_ABOM = ENABLE;
		CAN_InitStructure.CAN_AWUM = DISABLE;
		CAN_InitStructure.CAN_NART = DISABLE;
		//CAN报文只被发送1次，不管发送的结果如何（成功、出错或仲裁丢失）
		CAN_InitStructure.CAN_RFLM = DISABLE;
		CAN_InitStructure.CAN_TXFP = DISABLE;
		CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;//CAN_Mode_Silent;
	
	        CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
	        CAN_InitStructure.CAN_BS1 = CAN_BS1_13tq; //1--16
	        CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8

		CAN_InitStructure.CAN_Prescaler = 8;
		////(pclk1/((1+8+7)*16)) = 32Mhz/16/16 = 125Kbits
		//CAN_Init(&CAN_InitStructure);
	
		/*Initializes the CAN1	and CAN2 */
		CAN_Init(CAN1, &CAN_InitStructure);
	
	
		/* CAN cell init */
		CAN_InitStructure.CAN_TTCM = DISABLE; //禁止时间触发通信模式
		CAN_InitStructure.CAN_ABOM = ENABLE;
		CAN_InitStructure.CAN_AWUM = DISABLE;
		CAN_InitStructure.CAN_NART = DISABLE;
		//CAN报文只被发送1次，不管发送的结果如何（成功、出错或仲裁丢失）
		CAN_InitStructure.CAN_RFLM = DISABLE;
		CAN_InitStructure.CAN_TXFP = DISABLE;
		CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;
	
	        CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
	        CAN_InitStructure.CAN_BS1 = CAN_BS1_13tq; //1--16
	        CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8

		CAN_InitStructure.CAN_Prescaler = 8;
		////(pclk1/((1+8+7)*16)) = 32Mhz/16/16 = 125Kbits
		CAN_Init(CAN2, &CAN_InitStructure);


#if 1
		CAN_FilterInitStructure.CAN_FilterNumber = 0; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh =0xffff<< 5;
		CAN_FilterInitStructure.CAN_FilterIdLow =CAN_ID_STD; // 0xffff;//
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		

#if 0
		
		CAN_FilterInitStructure.CAN_FilterNumber = 14; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_POWER_ON_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 16; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = 0 << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数		
		#endif
#else		
		CAN_FilterInitStructure.CAN_FilterNumber = 1; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_back_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
	
		
		CAN_FilterInitStructure.CAN_FilterNumber = 2; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_RADA_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 3; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_DOOR_F_L_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 4; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_DOOR_F_R_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 5; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_DOOR_REAR_Lid_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 6; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_STEERINGANGLE_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 7; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_air_wind_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
#if 0
	
		CAN_FilterInitStructure.CAN_FilterNumber = 8; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_car_touch1_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 9; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_STALLS_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 10; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_MUTE_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 11; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_POWER_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 12; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_MEDIA_SYSTEM_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
	#endif
		/*************************************************************
		
		原车屏板CAN配置
		
		*************************************************************/
		CAN_FilterInitStructure.CAN_FilterNumber = 14; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_POWER_ON_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
	
		CAN_FilterInitStructure.CAN_FilterNumber = 15; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_mid_control_KEY_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
		
		CAN_FilterInitStructure.CAN_FilterNumber = 16; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_mid_control_turn_KEY1_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
	
		CAN_FilterInitStructure.CAN_FilterNumber = 17; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_mid_control_turn_KEY2_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
	
	
		CAN_FilterInitStructure.CAN_FilterNumber = 18; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = BENZE_CAN_POWER_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure);


		CAN_FilterInitStructure.CAN_FilterNumber = 19; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_light_mode_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure);	

		
		CAN_FilterInitStructure.CAN_FilterNumber = 20; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_car_touch1_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数
#if 1
		CAN_FilterInitStructure.CAN_FilterNumber = 21; //选择过滤器7
		CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
		CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
		CAN_FilterInitStructure.CAN_FilterIdHigh = Benci_newC_CAN_car_TFT_ONOFF_STD_ID << 5;
		CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //
	
		CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //选择FIFO0
		CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //使能过滤器
		CAN_FilterInit(&CAN_FilterInitStructure); //进入初始化函数

#endif
		
#endif
		CAN_SlaveStartBank(0);//0,Miller.Tao
		//-------------------------------------------------------------
		/* CAN FIFO0 message pending interrupt enable */
		CAN_ITConfig(CAN1, CAN_IT_FMP0| CAN_IT_FF0, ENABLE);
		/* CAN FIFO0 message pending interrupt enable */
		CAN_ITConfig(CAN2, CAN_IT_FMP0| CAN_IT_FF0, ENABLE);
	}


/*
*********************************************************
*fun:void BWM_X1_Can_FetchStallsInfo(CanRxMsg RxMessage)
*description:处理档位信息
*
*
*Author:Miller.Tao,2014-09-10
*
*********************************************************
*/


void Benci_newC_CanBus_Mid_Control_Key_Fun2(CanRxMsg RxMessage)
{
    if (!((RxMessage.StdId ==Benci_newC_CAN_mid_control_turn_KEY1_STD_ID)&& RxMessage.DLC == 8))
    {
        return ;
    }
	RxMessageTouchCtrl = RxMessage;
}
void Benci_newC_CanBus_mid_control_key_fun(CanRxMsg RxMessage)
{
#if 1

	static BYTE Turn_key_count=0x88;
    static BYTE mouse_local;
    if (!((RxMessage.StdId ==Benci_newC_CAN_mid_control_turn_KEY2_STD_ID)&& RxMessage.DLC == 8))
    {
        return ;
    }
	// return ;
    //hhhkkRxMessage=RxMessage;
    //initial
    //if(RxMessage.StdId == Benci_newC_CAN_mid_control_turn_KEY1_STD_ID)

	#if _CAR_CHARGE_EN_
	if(g_stuSYSINFO.sys_main.uMainMode==SYSTEM_MODE_IN_CAR_MEDIA)
	{
		//if(RxMessage.Data[4]==0x13)
		if(RxMessage.Data[5]==0x88)//miller.tao20160806
		{
	       m_CarCharge.car_mouse_position = 1 ;
          
		}
	

        m_CarCharge.car_mouse_current=RxMessage.Data[3];
		m_CarCharge.car_mouse_All = RxMessage.Data[1];//
    }
	#endif

	#if _CAR_TOUCH_CTRL_EN_
    if(g_stuSYSINFO.sys_main.uMainMode==SYSTEM_MODE_IN_CAR_MEDIA)
	{
		//if(RxMessage.Data[4]==0x13)
		if(RxMessage.Data[5]==0x88)//miller.tao20160806
		{
	      
           car_mouse_mid = 1;
		}
		else
		{
           car_mouse_mid = 0;
		}
    }
	#endif

    //if(RxMessage.Data[3]<Turn_key_count)
	if((Turn_key_count - RxMessage.Data[3]) == 1)
    {
    	LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
		
    }
	else
	//	if(RxMessage.StdId == Benci_newC_CAN_mid_control_turn_KEY2_STD_ID)
	{

		//if(RxMessage.Data[3]>Turn_key_count)
		if((RxMessage.Data[3] - Turn_key_count) == 1)
		{
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEINC_PRESSED);
			
		}
	}
		
	mouse_local = RxMessage.Data[4];
	Turn_key_count=RxMessage.Data[3];
#endif		

}

void Benci_newC_CanBus_mid_control_key2_fun(CanRxMsg RxMessage)
{
	static vu8 uCKeepFlag = 0;
	static vu8 uRetKeepFlag = 0;
	static vu16 wBounceCnt = 0;
	//BYTE i;

    if (!(RxMessage.StdId == Benci_newC_CAN_mid_control_KEY_STD_ID && RxMessage.DLC == 8))
    {
        return ;
    }

	
    if (RxMessage.Data[0] ==0x80)//back
    {
    
		m_BMW_CAN.uKeyID2 = BENZE_KEY_KnobAround_KEY_BACK_KEEP;
    }
	else if (RxMessage.Data[0] ==0x10)//NAVI
    {
    
		m_BMW_CAN.uKeyID2 = BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED;
    }

	else if (RxMessage.Data[0] ==0x04)   //RADIO
	{



		m_BMW_CAN.uKeyID2 = BENZE_CMD_MID_CONTROL_KEY_RADIO_PRESSED;
	}
	else if (RxMessage.Data[0] ==0x20)	//MEDIA
	{
		m_BMW_CAN.uKeyID2 = BENZE_CMD_MID_CONTROL_KEY_MEDIA_PRESSED;
	}
	else if (RxMessage.Data[0] ==0x02)	//TEL
	{
		m_BMW_CAN.uKeyID2 = BENZE_CMD_MID_CONTROL_KEY_TEL_PRESSED;
	}
	else if (RxMessage.Data[0] ==0x40)  //CAR
	{
		m_BMW_CAN.uKeyID2 = BENZE_CMD_MID_CONTROL_KEY_CAR_PRESSED;
	}
    else if (RxMessage.Data[3] ==0xa6)//*号
    {

       LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_MENU_PRESSED);
    }
    else if (RxMessage.Data[2] ==0x01)//enter
    {
		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_ENTER_PRESSED;
    }
    else if (RxMessage.Data[2] ==0x80)//left
    {
		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_LEFT_PRESSED;
    }
    else if (RxMessage.Data[2] ==0x08)//right
    {
		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_RIGHT_PRESSED;
    }
    else if (RxMessage.Data[2] ==0x02)//up
    {
		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_UP_PRESSED;
    }
    else if (RxMessage.Data[2] ==0x20)//dn
    {
		m_BMW_CAN.uKeyID2 = BENZE_CMD_KNOB_DN_PRESSED;
    }		
	else
	{

		//-------------------------------------------------------
		wBounceCnt++;
        #if 0//miller.tao20160616
		if(m_BMW_CAN.uKeyID2 ==BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED)
		{
            if(m_BMW_CAN.uKeyLongPress)
				LF_CanBus_SendControlCmd(BENZE_CMD_MENU_PRESSED);
			else
				LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
		}
		#endif
		//if (wBounceCnt >= 2)
		{
			uCKeepFlag = 0;
			uRetKeepFlag = 0;
			m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
			wBounceCnt = 0;
		}
		m_BMW_CAN.uKeyKeepCnt2 = 0;
		m_BMW_CAN.bKeyKeepOneTime2 = 0;
		m_BMW_CAN.uKeyLongPress=0;

		gKeySendOneTime = 0;

	}


	switch (m_BMW_CAN.uKeyID2)
	{
	case BENZE_KEY_ALL_BOUNCED:
		uCKeepFlag = 0;
		uRetKeepFlag = 0;
		m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
		wBounceCnt = 0;
		m_BMW_CAN.uKeyKeepCnt2 = 0;
		m_BMW_CAN.bKeyKeepOneTime2 = 0;
		break;
	case BENZE_KEY_KnobAround_KEY_BACK_KEEP:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_KEY_KnobAround_KEY_BACK_KEEP);
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			//process keep data
			
		}
		break;
	

	case BENZE_CMD_KNOB_ENTER_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
			
	
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_KNOB_LEFT_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
			

		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_KNOB_RIGHT_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);

		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_KNOB_UP_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
			
           #if _CAR_CHARGE_EN_
           	if(g_stuSYSINFO.sys_main.uMainMode==SYSTEM_MODE_IN_CAR_MEDIA)
			{
            //    if( m_CarCharge.car_mouse_position == 1)//modify by Feng 20161020
			  {
                 m_CarCharge.car_mouse_status = 1;
				 m_CarCharge.car_mouse_position = 0;
				 
			  }
			}
			
			
           #endif
			

		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_KNOB_DN_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
			
            #if _CAR_CHARGE_EN_
			 if(g_stuSYSINFO.sys_main.uMainMode==SYSTEM_MODE_IN_CAR_MEDIA)
			 {
			   if( m_CarCharge.car_mouse_status == 1)
			   {
				  m_CarCharge.car_mouse_status = 0;
				  m_CarCharge.car_mouse_position = 0;			  
			   }			   
			   else if( m_CarCharge.car_mouse_position == 1)
			   {
				  m_CarCharge.car_mouse_status = 0;
				  m_CarCharge.car_mouse_position = 0;			  
			   }
			 } 
            #endif

		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			//process keep data
		}
		break;	
#if 0
	case BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			
			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			m_BMW_CAN.uKeyLongPress = 1;//long touch,miller.tao20160616
			//process keep data
		}

		break;
#endif
	case BENZE_CMD_MID_CONTROL_KEY_RADIO_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			
			LF_CanBus_SendControlCmd(BENZE_CMD_MID_CONTROL_KEY_RADIO_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			m_BMW_CAN.uKeyLongPress = 1;//long touch,miller.tao20160616
			//process keep data
		}
		break;
	case BENZE_CMD_MID_CONTROL_KEY_MEDIA_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			
			LF_CanBus_SendControlCmd(BENZE_CMD_MID_CONTROL_KEY_MEDIA_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			m_BMW_CAN.uKeyLongPress = 1;//long touch,miller.tao20160616
			//process keep data
		}
		break;	
	case BENZE_CMD_MID_CONTROL_KEY_TEL_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			
			LF_CanBus_SendControlCmd(BENZE_CMD_MID_CONTROL_KEY_TEL_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			m_BMW_CAN.uKeyLongPress = 1;//long touch,miller.tao20160616
			//process keep data
		}
		break;	
	case BENZE_CMD_MID_CONTROL_KEY_CAR_PRESSED:
		m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			
			LF_CanBus_SendControlCmd(BENZE_CMD_MID_CONTROL_KEY_CAR_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			m_BMW_CAN.uKeyLongPress = 1;//long touch,miller.tao20160616
			//process keep data
		}
		break;	
	case BENZE_CMD_KNOB_MENU_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
		if (m_BMW_CAN.uKeyKeepCnt2 == 1)
			//bounce
		{
			//process first pressed data
			

			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_MENU_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt2 = 2;
			m_BMW_CAN.uKeyLongPress = 1;//long touch,miller.tao20160616
			//process keep data
		}
			break;
	default:
		m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
		m_BMW_CAN.uKeyKeepCnt2 = 0;
		m_BMW_CAN.bKeyKeepOneTime2 = 0;
		break;
	}
}

/*
******************************************************
方向盘按键
******************************************************
*/
	

void Benci_newC_CanBus_FetchSteerKeyInfo_Type1(CanRxMsg RxMessage)

{
#if 0
    if (!(RxMessage.StdId == Benci_newC_CAN_STEER_KEY_L_STD_TYPE_ID && RxMessage.DLC == 8))
    {
        return ;
    }
	return ;

    //initial
    

    if (RxMessage.Data[5] ==0x02)
        //back
    {
        LF_CanBus_SendControlCmd(BENZE_KEY_KnobAround_KEY_BACK_KEEP);
    }
    else if (RxMessage.Data[5] ==0x80)
        //enter
    {
        LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
    }
    else if (RxMessage.Data[4] ==0x10)
        //yuying
    {
        //LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_TUNEDEC_PRESSED);
    }
    else if (RxMessage.Data[4] ==0x08)
        //enter
    {
        LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
    }
    else if (RxMessage.Data[4] ==0x04)
        //enter
    {
        LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);
    }
    else if (RxMessage.Data[4] ==0x01)
        //enter
    {
        LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
    }
    else if (RxMessage.Data[4] ==0x02)
        //enter
    {
        LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
    }	
	#endif
}

#if 0
void Benci_newC_CanBus_FetchSteerKeyInfo_Type2(CanRxMsg RxMessage)
{
	static vu8 uCKeepFlag = 0;
	static vu8 uRetKeepFlag = 0;
	static vu16 wBounceCnt = 0;
	//BYTE i;

    if (!(RxMessage.StdId == Benci_newC_CAN_steer_key_STD_TYPE_ID && RxMessage.DLC == 8))
    {
        return ;
    }

	
 if (RxMessage.Data[4] == 0x01)//&&(Sys.FS_select.NAV_key_type==1))//语音开
    {
		m_BMW_CAN.uKeyID3 = BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED;
    }
 else if((RxMessage.Data[2] == 0x40))//&&(Sys.FS_select.NAV_key_type==0)) //语音关
 	{
 	m_BMW_CAN.uKeyID3 = BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED;
 	}
	else
	{

		//-------------------------------------------------------
		wBounceCnt++;
		//if (wBounceCnt >= 2)
		{
			uCKeepFlag = 0;
			uRetKeepFlag = 0;
			m_BMW_CAN.uKeyID3 = BENZE_KEY_ALL_BOUNCED;
			wBounceCnt = 0;
		}
		m_BMW_CAN.uKeyKeepCnt3 = 0;
		m_BMW_CAN.bKeyKeepOneTime3 = 0;

	}


	switch (m_BMW_CAN.uKeyID3)
	{
	case BENZE_KEY_ALL_BOUNCED:
		uCKeepFlag = 0;
		uRetKeepFlag = 0;
		m_BMW_CAN.uKeyID3 = BENZE_KEY_ALL_BOUNCED;
		wBounceCnt = 0;
		m_BMW_CAN.uKeyKeepCnt3 = 0;
		m_BMW_CAN.bKeyKeepOneTime3 = 0;
		break;
	case BENZE_KEY_KnobAround_KEY_BACK_KEEP:
		m_BMW_CAN.uKeyKeepCnt3++;
		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_KEY_KnobAround_KEY_BACK_KEEP);
		}
		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt3 = 2;
			//process keep data
			
		}
		break;
	

	case BENZE_CMD_KNOB_ENTER_PRESSED:
		m_BMW_CAN.uKeyKeepCnt3++;
		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_ENTER_PRESSED);
			

		}
		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt3 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_KNOB_LEFT_PRESSED:
		m_BMW_CAN.uKeyKeepCnt3++;
		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_LEFT_PRESSED);
			

		}
		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt3 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_KNOB_RIGHT_PRESSED:
		m_BMW_CAN.uKeyKeepCnt3++;
		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_RIGHT_PRESSED);
			

		}
		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt3 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_KNOB_UP_PRESSED:
		m_BMW_CAN.uKeyKeepCnt3++;
		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_UP_PRESSED);
			
			
		}
		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt3 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_KNOB_DN_PRESSED:
		m_BMW_CAN.uKeyKeepCnt3++;
		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_KNOB_DN_PRESSED);
			
		}
		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt3 = 2;
			//process keep data
		}
		break;
	case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED:
		m_BMW_CAN.uKeyKeepCnt3++;
		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
			//bounce
		{
			//process first pressed data
			//if((Sys.Main_Source==SRC_CarMedia)&&(Sys.FS_select.NAV_key_type==1))
			//LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
			//else if(Sys.Main_Source!=SRC_CarMedia&&Sys.FS_select.NAV_key_type==0)
				LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
			//else //if()
			//LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt3 = 2;
			//if((Sys.Main_Source==SRC_CarMedia)&&(Sys.FS_select.NAV_key_type==0))
			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);
			//process keep data
		}
		break;	
	case BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED:
		m_BMW_CAN.uKeyKeepCnt3++;
		if (m_BMW_CAN.uKeyKeepCnt3 == 1)
			//bounce
		{
			//process first pressed data
			LF_CanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED);
		}
		else if (m_BMW_CAN.uKeyKeepCnt3 >= 10)
			//keep
		{
			m_BMW_CAN.uKeyKeepCnt3 = 2;
			//process keep data
		}
		break;			
		
	default:
		m_BMW_CAN.uKeyID3 = BENZE_KEY_ALL_BOUNCED;
		m_BMW_CAN.uKeyKeepCnt3 = 0;
		m_BMW_CAN.bKeyKeepOneTime3 = 0;
		break;
	}
}
#endif


/*
********************************************************
方向盘转角
********************************************************
*/
void Benci_newC_CanBus_FetchSteerAngleInfo(CanRxMsg RxMessage)
{

	     if (RxMessage.StdId == Benci_newC_CAN_STEERINGANGLE_STD_ID && RxMessage.DLC == 8)
	    {
	        m_BMW_CAN.benze_Steering_angle =((RxMessage.Data[3]<< 8) | RxMessage.Data[4]); //方向盘角度信息
	    }
}
/*
***********************************************************
*handle the CMD from CAN BUS
*
***********************************************************
*/


#define  SYNC_CAN CAN2
BYTE debug_can;
void Benci_newC_CanKey(ENUM_BENZ_CAN_KEY keycode)
{
  CanTxMsg TxMessage;
  switch (keycode)
  {
    case BENZ_CAN_KEY_OK:
      TxMessage.StdId = 0x1F3;
      TxMessage.DLC = 8;
      TxMessage.IDE = CAN_ID_STD;
      TxMessage.RTR = CAN_RTR_DATA;
      TxMessage.Data[0] = 0x00;
      TxMessage.Data[1] = 0x00;
      TxMessage.Data[2] = 0x01;
      TxMessage.Data[3] = 0x86;
      TxMessage.Data[4] = 0x00;
      TxMessage.Data[5] = 0x00;
      TxMessage.Data[6] = 0x77;
      TxMessage.Data[7] = 0x00;

      
      Can_Tx(SYNC_CAN,&TxMessage);
      

      break;
    case BENZ_CAN_KEY_LEFT:
		TxMessage.StdId = 0x1F3;
		TxMessage.DLC = 8;
		TxMessage.IDE = CAN_ID_STD;
		TxMessage.RTR = CAN_RTR_DATA;
		TxMessage.Data[0] = 0x00;
		TxMessage.Data[1] = 0x00;//0x0f
		TxMessage.Data[2] = 0x80;
		TxMessage.Data[3] = 0x86;
		TxMessage.Data[4] = 0x00;//0x13
		TxMessage.Data[5] = 0x00;//0x88
		TxMessage.Data[6] = 0x77;
		TxMessage.Data[7] = 0x00;

	
       Can_Tx(SYNC_CAN,&TxMessage);
      

      break;
    case BENZ_CAN_KEY_RIGHT:
		 TxMessage.StdId = 0x1F3;
		 TxMessage.DLC = 8;
		 TxMessage.IDE = CAN_ID_STD;
		 TxMessage.RTR = CAN_RTR_DATA;
		 TxMessage.Data[0] = 0x00;
		 TxMessage.Data[1] = 0x00;//0x0f
		 TxMessage.Data[2] = 0x08;
		 TxMessage.Data[3] = 0x86;
		 TxMessage.Data[4] = 0x00;//0x13
		 TxMessage.Data[5] = 0x00;//0x88
		 TxMessage.Data[6] = 0x77;
		 TxMessage.Data[7] = 0x00;
		
		
		Can_Tx(SYNC_CAN,&TxMessage);



      break;
    case BENZ_CAN_KEY_UP: 
		 TxMessage.StdId = 0x1F3;
		 TxMessage.DLC = 8;
		 TxMessage.IDE = CAN_ID_STD;
		 TxMessage.RTR = CAN_RTR_DATA;
		 TxMessage.Data[0] = 0x00;
		 TxMessage.Data[1] = 0x00;//0x0f
		 TxMessage.Data[2] = 0x02;
		 TxMessage.Data[3] = 0x86;
		 TxMessage.Data[4] = 0x00;//0x13
		 TxMessage.Data[5] = 0x00;//0x88
		 TxMessage.Data[6] = 0x77;
		 TxMessage.Data[7] = 0x00;
		
		
		Can_Tx(SYNC_CAN,&TxMessage);


      break;
    case BENZ_CAN_KEY_DN:

        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x00;//0x0f
        TxMessage.Data[2] = 0x20;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;//0x13
        TxMessage.Data[5] = 0x00;//0x88
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;


        Can_Tx(SYNC_CAN,&TxMessage);
        break;
    case BENZ_CAN_KEY_CAR:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x40;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;


        Can_Tx(SYNC_CAN,&TxMessage);
        break;
    case BENZ_CAN_KEY_RADIO:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x04;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;


        Can_Tx(SYNC_CAN,&TxMessage);
        break;
    case BENZ_CAN_KEY_MEDIA:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x20;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;


        Can_Tx(SYNC_CAN,&TxMessage);
        break;
	case BENZ_CAN_KEY_BT:
		TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x02;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;

        Can_Tx(SYNC_CAN,&TxMessage);
        break;
	case BENZ_CAN_KEY_NAVI:	//Add by Feng 20161019
		TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x10;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;

        Can_Tx(SYNC_CAN,&TxMessage);
		break;
	case BENZ_CAN_KEY_STAR:
		TxMessage.StdId = 0x1F3;
		TxMessage.DLC = 8;
		TxMessage.IDE = CAN_ID_STD;
		TxMessage.RTR = CAN_RTR_DATA;
		TxMessage.Data[0] = 0x00;
		TxMessage.Data[1] = 0x00;
		TxMessage.Data[2] = 0x00;
		TxMessage.Data[3] = 0xB6;
		TxMessage.Data[4] = 0x00;
		TxMessage.Data[5] = 0x00;
		TxMessage.Data[6] = 0x77;
		TxMessage.Data[7] = 0x00;

		
		
		Can_Tx(SYNC_CAN,&TxMessage);
		break;
	case BENZ_CAN_KEY_STAR1:
		TxMessage.StdId = 0x1F3;
			TxMessage.DLC = 8;
			TxMessage.IDE = CAN_ID_STD;
			TxMessage.RTR = CAN_RTR_DATA;
			TxMessage.Data[0] = 0x00;
			TxMessage.Data[1] = 0x00;
			TxMessage.Data[2] = 0x00;
			TxMessage.Data[3] = 0xA6;
			TxMessage.Data[4] = 0x00;
			TxMessage.Data[5] = 0x00;
			TxMessage.Data[6] = 0x77;
			TxMessage.Data[7] = 0x00;


		
		
		Can_Tx(SYNC_CAN,&TxMessage);
		break;
	case BENZ_CAN_KEY_STAR2:
		    TxMessage.StdId = 0x1F3;
			TxMessage.DLC = 8;
			TxMessage.IDE = CAN_ID_STD;
			TxMessage.RTR = CAN_RTR_DATA;
			TxMessage.Data[0] = 0x00;
			TxMessage.Data[1] = 0x00;
			TxMessage.Data[2] = 0x00;
			TxMessage.Data[3] = 0x96;
			TxMessage.Data[4] = 0x00;
			TxMessage.Data[5] = 0x00;
			TxMessage.Data[6] = 0x77;
			TxMessage.Data[7] = 0x00;


		
		
		Can_Tx(SYNC_CAN,&TxMessage);
		break;
	case BENZ_CAN_KEY_INVALID:
		 TxMessage.StdId = 0x1F3;
		 TxMessage.DLC = 8;
		 TxMessage.IDE = CAN_ID_STD;
		 TxMessage.RTR = CAN_RTR_DATA;
		 TxMessage.Data[0] = 0x00;
		 TxMessage.Data[1] = 0x00;//0x0f
		 TxMessage.Data[2] = 0x00;
		 TxMessage.Data[3] = 0x86;
		 TxMessage.Data[4] = 0x00;//0x13
		 TxMessage.Data[5] = 0x00;//0x88
		 TxMessage.Data[6] = 0x77;
		 TxMessage.Data[7] = 0x00;
		
		
		Can_Tx(SYNC_CAN,&TxMessage);
		break;
	case BENZ_CAN_KEY_INVALID2:
		TxMessage.StdId = 0x1F3;
		TxMessage.DLC = 8;
		TxMessage.IDE = CAN_ID_STD;
		TxMessage.RTR = CAN_RTR_DATA;
		TxMessage.Data[0] = 0x00;
		TxMessage.Data[1] = 0x00;
		TxMessage.Data[2] = 0x00;
		TxMessage.Data[3] = 0x86;
		TxMessage.Data[4] = 0x00;
		TxMessage.Data[5] = 0x00;
		TxMessage.Data[6] = 0x77;
		TxMessage.Data[7] = 0x00;

		
		
		Can_Tx(SYNC_CAN,&TxMessage);
		break;
	case BENZ_CAN_KEY_TEL:
		TxMessage.StdId = 0x1F3;
		TxMessage.DLC = 8;
		TxMessage.IDE = CAN_ID_STD;
		TxMessage.RTR = CAN_RTR_DATA;
		TxMessage.Data[0] = 0x02;
		TxMessage.Data[1] = 0x00;
		TxMessage.Data[2] = 0x00;
		TxMessage.Data[3] = 0x86;
		TxMessage.Data[4] = 0x00;
		TxMessage.Data[5] = 0x00;
		TxMessage.Data[6] = 0x77;
		TxMessage.Data[7] = 0x00;
	
	
		Can_Tx(SYNC_CAN,&TxMessage);
		break;
	case BENZ_CAN_KEY_PREV:
		#if _CAR_TOUCH_CTRL_EN_
		if(g_stuSYSINFO.sys_main.uMainMode==SYSTEM_MODE_IN_CAR_MEDIA)
		{
           car_act=0;
		   car_state =CAR_STATE_START;
        }
		#endif
		break;
	case BENZ_CAN_KEY_NEXT:
		#if _CAR_TOUCH_CTRL_EN_
		if(g_stuSYSINFO.sys_main.uMainMode==SYSTEM_MODE_IN_CAR_MEDIA)
		{
		   car_act =1;
		   car_state =CAR_STATE_START;
        }
		#endif
		break;
	case BENZ_CAN_KEY_TOUCH:
		#if _CAR_TOUCH_CTRL_EN_
		if(g_stuSYSINFO.sys_main.uMainMode==SYSTEM_MODE_IN_CAR_MEDIA)
		{
		   //car_act =1;
		   car_state2 =CAR_STATE_START;
        }
		#endif

		break;
    default:
      

      break;

  }
}
void Car_Touch_Ctrl_Proc(void)
{

	CanTxMsg TxMessage;
	
   switch(car_state2)
   {
      case CAR_STATE_START:
        car_up_event2=0;
		car_state2= CAR_STATE_CHECK;
		break;
	 case CAR_STATE_CHECK:
	  	if(car_mouse_mid)//middle position
	  	{
               if(car_up_event2<4)
               {
                    car_state2=CAR_STATE_UP;
			   }
			   else
			   {
                   car_state2=CAR_STATE_END;
			   }

		}
		else//no middle position,20160715
		{
          
               m_CarCharge.car_mouse_status=1;//miller.tao20160716
               car_state2=CAR_STATE_END;
		   


		}
	  	break;
	  case CAR_STATE_UP:
		 TxMessage.StdId = 0x1F3;
		 TxMessage.DLC = 8;
		 TxMessage.IDE = CAN_ID_STD;
		 TxMessage.RTR = CAN_RTR_DATA;
		 TxMessage.Data[0] = 0x00;
		 TxMessage.Data[1] = 0x00;//0x0F
		 TxMessage.Data[2] = 0x02;
		 TxMessage.Data[3] = 0x86;
		 TxMessage.Data[4] = 0x00;//0x13
		 TxMessage.Data[5] = 0x00;//0x88
		 TxMessage.Data[6] = 0x77;
		 TxMessage.Data[7] = 0x00;
		
		car_up_event2++;
		Can_Tx(SYNC_CAN,&TxMessage);
		car_state2= CAR_STATE_INVALID1;
	  	break;
	  case CAR_STATE_INVALID1:
	  	 TxMessage.StdId = 0x1F3;
		 TxMessage.DLC = 8;
		 TxMessage.IDE = CAN_ID_STD;
		 TxMessage.RTR = CAN_RTR_DATA;
		 TxMessage.Data[0] = 0x00;
		 TxMessage.Data[1] = 0x0F;
		 TxMessage.Data[2] = 0x00;
		 TxMessage.Data[3] = 0x86;
		 TxMessage.Data[4] = 0x13;
		 TxMessage.Data[5] = 0x88;
		 TxMessage.Data[6] = 0x77;
		 TxMessage.Data[7] = 0x00;
		
		
		Can_Tx(SYNC_CAN,&TxMessage);
		car_state2=CAR_STATE_CHECK;
	  	break;
      case CAR_STATE_END:
	  	
	  	break;
   }

}

CanTxMsg TxMessagedebug;
void Car_BackCar_Ctrl_Proc(void)
{
    CanTxMsg TxMessage;
	        TxMessage.StdId = 0x1F7;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x0F;
        TxMessage.Data[2] = 0x27;
        TxMessage.Data[3] = 0x00;
        TxMessage.Data[4] = 0x13;
        TxMessage.Data[5] = 0x88;
        TxMessage.Data[6] = 0x13;
        TxMessage.Data[7] = 0x00;


        Can_Tx(CAN2,&TxMessage);
#if 0
    switch(car_state3)
    {
    case CAR_STATE_START:
        car_dn_event3=0;
        car_up_event3=0;
        car_state3=CAR_STATE_CHECK;
        gTouchRetry3=0;
        break;
    case CAR_STATE_CHECK:
        if(car_mouse_mid)//middle position
        {

            {
                car_state3=CAR_STATE_END;
            }

        }
        else//no middle position,20160715
        {
            if(car_dn_event3==0)
            {
                car_state3=CAR_STATE_DN;
            }
            else
            {
                if(car_up_event3<4)
                {
                    car_state3=CAR_STATE_UP;
                }
                else
                {
                    car_state3=CAR_STATE_END;
                }
            }

        }
        break;
    case CAR_STATE_UP:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x00;//0x0F
        TxMessage.Data[2] = 0x02;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;//0x13
        TxMessage.Data[5] = 0x00;//0x88
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;

        car_up_event3++;
        Can_Tx(SYNC_CAN,&TxMessage);
        car_state3= CAR_STATE_INVALID1;
        break;
    case CAR_STATE_DN:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x00;//0x0F
        TxMessage.Data[2] = 0x20;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;//0x13
        TxMessage.Data[5] = 0x00;//0x88
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;

        car_dn_event3++;
        Can_Tx(SYNC_CAN,&TxMessage);//SYNC_CAN
        car_state3=CAR_STATE_INVALID1;
        break;
    case CAR_STATE_LT:
#if 1 //miller.tao20160718

        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x80;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;
#else
        TxMessage.StdId = 0x1EF;
        TxMessage.ExtId = RxMessageTouchCtrl.ExtId;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = RxMessageTouchCtrl.Data[0];
        TxMessage.Data[1] = RxMessageTouchCtrl.Data[1];
        TxMessage.Data[2] = RxMessageTouchCtrl.Data[2];
        TxMessage.Data[3] = RxMessageTouchCtrl.Data[3]-1;//
        TxMessage.Data[4] = RxMessageTouchCtrl.Data[4];
        TxMessage.Data[5] = RxMessageTouchCtrl.Data[5];//
        TxMessage.Data[6] = RxMessageTouchCtrl.Data[6];
        TxMessage.Data[7] = RxMessageTouchCtrl.Data[7];
#endif
        debug_can++;
        //gTouchFlag=1;
        TxMessagedebug=TxMessage;
        //Can_Tx(CAN1,&TxMessage);//SYNC_CAN
        Can_Tx(SYNC_CAN,&TxMessage);
        //Can_Tx(CAN1,&TxMessage);
        car_state3=CAR_STATE_END;
        break;
    case CAR_STATE_RT:
        debug_can++;
#if 0//miller.tao20160718
        TxMessage.StdId = 0x1EF;
        TxMessage.ExtId = RxMessageTouchCtrl.ExtId;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = RxMessageTouchCtrl.Data[0];
        TxMessage.Data[1] = RxMessageTouchCtrl.Data[1];
        TxMessage.Data[2] = RxMessageTouchCtrl.Data[2];
        TxMessage.Data[3] = RxMessageTouchCtrl.Data[3]+1;//
        TxMessage.Data[4] = RxMessageTouchCtrl.Data[4];
        TxMessage.Data[5] = RxMessageTouchCtrl.Data[5];//
        TxMessage.Data[6] = RxMessageTouchCtrl.Data[6];
        TxMessage.Data[7] = RxMessageTouchCtrl.Data[7];
#else
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x08;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;
#endif
        TxMessagedebug=TxMessage;
        //Can_Tx(CAN1,&TxMessage);
        Can_Tx(SYNC_CAN,&TxMessage);
        //Can_Tx(CAN1,&TxMessage);
        car_state3=CAR_STATE_END;
        break;
    case CAR_STATE_INVALID1:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x0F;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x13;
        TxMessage.Data[5] = 0x88;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;


        Can_Tx(SYNC_CAN,&TxMessage);
        car_state3=CAR_STATE_CHECK;
        break;
    case CAR_STATE_INVALID2:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x0F;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x13;
        TxMessage.Data[5] = 0x88;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;


        Can_Tx(SYNC_CAN,&TxMessage);
        car_state3=CAR_STATE_END;
        break;
    case CAR_STATE_END:
        if(gTouchRetry3<6)
        {
#if 0//miller.tao20160720
            if(car_act)
            {
                car_state=CAR_STATE_RT;
            }
            else
            {
                car_state=CAR_STATE_LT;
            }
#endif
            gTouchRetry3++;
            //gTouchFlag=0;
        }
        else
        {
            //gTouchFlag=0;
        }
        break;
    }
#endif
}

void Car_Media_Ctrl_Proc(void)
{
	CanTxMsg TxMessage;
	
   switch(car_state)
   {
      case CAR_STATE_START:
	  	  car_dn_event=0;
		  car_up_event=0;
		  car_state=CAR_STATE_CHECK;
		  gTouchRetry=0;
	  	break;
	  case CAR_STATE_CHECK:
	  	if(car_mouse_mid)//middle position
	  	{
           if(car_act)
           {
              car_state=CAR_STATE_RT;
		   }
		   else
		   {
              car_state=CAR_STATE_LT;
		   }

		}
		else//no middle position,20160715
		{
           if(car_dn_event==0)
           {
               car_state=CAR_STATE_DN;
		   }
		   else
		   {
               if(car_up_event<4)
               {
                    car_state=CAR_STATE_UP;
			   }
			   else
			   {
                   car_state=CAR_STATE_END;
			   }
		   }

		}
	  	break;
	  case CAR_STATE_UP:
		 TxMessage.StdId = 0x1F3;
		 TxMessage.DLC = 8;
		 TxMessage.IDE = CAN_ID_STD;
		 TxMessage.RTR = CAN_RTR_DATA;
		 TxMessage.Data[0] = 0x00;
		 TxMessage.Data[1] = 0x00;//0x0F
		 TxMessage.Data[2] = 0x02;
		 TxMessage.Data[3] = 0x86;
		 TxMessage.Data[4] = 0x00;//0x13
		 TxMessage.Data[5] = 0x00;//0x88
		 TxMessage.Data[6] = 0x77;
		 TxMessage.Data[7] = 0x00;
		
		car_up_event++;
		Can_Tx(SYNC_CAN,&TxMessage);
		car_state= CAR_STATE_INVALID1;
	  	break;
	  case CAR_STATE_DN:
	  	 TxMessage.StdId = 0x1F3;
		 TxMessage.DLC = 8;
		 TxMessage.IDE = CAN_ID_STD;
		 TxMessage.RTR = CAN_RTR_DATA;
		 TxMessage.Data[0] = 0x00;
		 TxMessage.Data[1] = 0x00;//0x0F
		 TxMessage.Data[2] = 0x20;
		 TxMessage.Data[3] = 0x86;
		 TxMessage.Data[4] = 0x00;//0x13
		 TxMessage.Data[5] = 0x00;//0x88
		 TxMessage.Data[6] = 0x77;
		 TxMessage.Data[7] = 0x00;
		
		car_dn_event++;
		Can_Tx(SYNC_CAN,&TxMessage);//SYNC_CAN
		car_state=CAR_STATE_INVALID1;
	  	break;
	  case CAR_STATE_LT://left turn
	  	#if 1 //miller.tao20160718
		
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x80;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;
#else
        TxMessage.StdId = 0x1EF;
        TxMessage.ExtId = RxMessageTouchCtrl.ExtId;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = RxMessageTouchCtrl.Data[0];
        TxMessage.Data[1] = RxMessageTouchCtrl.Data[1];
        TxMessage.Data[2] = RxMessageTouchCtrl.Data[2];
        TxMessage.Data[3] = RxMessageTouchCtrl.Data[3]-1;//
        TxMessage.Data[4] = RxMessageTouchCtrl.Data[4];
        TxMessage.Data[5] = RxMessageTouchCtrl.Data[5];//
        TxMessage.Data[6] = RxMessageTouchCtrl.Data[6];
        TxMessage.Data[7] = RxMessageTouchCtrl.Data[7];
#endif
        debug_can++;
        gTouchFlag=1;
        TxMessagedebug=TxMessage;
        //Can_Tx(CAN1,&TxMessage);//SYNC_CAN
        Can_Tx(SYNC_CAN,&TxMessage);
        //Can_Tx(CAN1,&TxMessage);
        car_state=CAR_STATE_END;
        break;
    case CAR_STATE_RT://right turn
        debug_can++;
#if 0//miller.tao20160718
        TxMessage.StdId = 0x1EF;
        TxMessage.ExtId = RxMessageTouchCtrl.ExtId;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = RxMessageTouchCtrl.Data[0];
        TxMessage.Data[1] = RxMessageTouchCtrl.Data[1];
        TxMessage.Data[2] = RxMessageTouchCtrl.Data[2];
        TxMessage.Data[3] = RxMessageTouchCtrl.Data[3]+1;//
        TxMessage.Data[4] = RxMessageTouchCtrl.Data[4];
        TxMessage.Data[5] = RxMessageTouchCtrl.Data[5];//
        TxMessage.Data[6] = RxMessageTouchCtrl.Data[6];
        TxMessage.Data[7] = RxMessageTouchCtrl.Data[7];
#else
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x00;
        TxMessage.Data[2] = 0x08;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x00;
        TxMessage.Data[5] = 0x00;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;
#endif
        TxMessagedebug=TxMessage;
        //Can_Tx(CAN1,&TxMessage);
        Can_Tx(SYNC_CAN,&TxMessage);
        //Can_Tx(CAN1,&TxMessage);
        car_state=CAR_STATE_END;
        break;
    case CAR_STATE_INVALID1:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x0F;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x13;
        TxMessage.Data[5] = 0x88;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;


        Can_Tx(SYNC_CAN,&TxMessage);
        car_state=CAR_STATE_CHECK;
        break;
    case CAR_STATE_INVALID2:
        TxMessage.StdId = 0x1F3;
        TxMessage.DLC = 8;
        TxMessage.IDE = CAN_ID_STD;
        TxMessage.RTR = CAN_RTR_DATA;
        TxMessage.Data[0] = 0x00;
        TxMessage.Data[1] = 0x0F;
        TxMessage.Data[2] = 0x00;
        TxMessage.Data[3] = 0x86;
        TxMessage.Data[4] = 0x13;
        TxMessage.Data[5] = 0x88;
        TxMessage.Data[6] = 0x77;
        TxMessage.Data[7] = 0x00;


        Can_Tx(SYNC_CAN,&TxMessage);
        car_state=CAR_STATE_END;
        break;
    case CAR_STATE_END:
        if(gTouchRetry<6)
        {
#if 0//miller.tao20160720
            if(car_act)
            {
                car_state=CAR_STATE_RT;
            }
            else
            {
                car_state=CAR_STATE_LT;
            }
#endif
            gTouchRetry++;
            gTouchFlag=0;
        }
        else
        {
            gTouchFlag=0;
        }
        break;
    }

}
//其他源切回原车时，发送该ID的数据，使按键同步
void Benci_newC_SyncButton(CanRxMsg *data)
{
    CanTxMsg gTxMessage;

    gTxMessage.DLC=(data->DLC);
    gTxMessage.StdId=data->StdId;
    gTxMessage.ExtId=data->ExtId;
    gTxMessage.IDE=data->IDE;
    gTxMessage.RTR=data->RTR;
    gTxMessage.Data[0]=(data->Data[0])+1;
    gTxMessage.Data[1]=data->Data[1];
    gTxMessage.Data[2]=data->Data[2];
    gTxMessage.Data[3]=data->Data[3];
    gTxMessage.Data[4]=data->Data[4];
    gTxMessage.Data[5]=data->Data[3];//才能同步
    gTxMessage.Data[6]=data->Data[6];
    gTxMessage.Data[7]=data->Data[7];
    Can_Tx(CAN1, &gTxMessage);
}

#endif
#if 1 //miller.tao20151107
#define CANRECV_MAX 100
CanRxMsg  gCAN1Buff[CANRECV_MAX];
CanRxMsg  gCAN2Buff[CANRECV_MAX];
BYTE gCan1WriteIndex,gCan1ReadIndex;
BYTE gCan2WriteIndex,gCan2ReadIndex;
void CanIntercept_Init(void)
{
     gCan1WriteIndex =0;
     gCan1ReadIndex =0;
     gCan2WriteIndex =0;
     gCan2ReadIndex =0;
}
void CanIntercept_1_BuffData(CanRxMsg data)
{
         gCAN1Buff[gCan1WriteIndex]=data;
	 gCan1WriteIndex++;
	 if(gCan1WriteIndex>=CANRECV_MAX)gCan1WriteIndex=0;
}
void CanIntercept_2_BuffData(CanRxMsg data)
{
         gCAN2Buff[gCan2WriteIndex]=data;
	 gCan2WriteIndex++;
	 if(gCan2WriteIndex>=CANRECV_MAX)gCan2WriteIndex=0;
}

void CAN2UARTSend(CanRxMsg data)
{
      BYTE buff[20];
      BYTE i;
      buff[0] = data.StdId>>24;
      buff[1] = data.StdId>>16;
      buff[2] = data.StdId>>8;
      buff[3] = data.StdId;

      buff[4] = data.ExtId>>24;
      buff[5] = data.ExtId>>16;
      buff[6] = data.ExtId>>8;
      buff[7] = data.ExtId;

      buff[8] = data.IDE;
      buff[9] = data.RTR;

     buff[10] = data.DLC;
     buff[11] = data.Data[0];

      buff[12] = data.Data[1];
       buff[13] = data.Data[2];
      buff[14] = data.Data[3];
       buff[15] = data.Data[4];
       buff[16] = data.Data[5];
      buff[17] = data.Data[6];
       buff[18] = data.Data[7];
     buff[19] = data.FMI;

     for(i =0;i<20;i++)
     {
              USART_SendData(USART2, buff[i]);
             while (USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET);

     }
}
void Can_Tx(CAN_TypeDef *CANx, CanTxMsg *TxMessage);

void CanIntercept_Send(CanRxMsg data,BYTE bcantype)
{
  CanTxMsg gTxMessage;

  if(0x02 == bcantype)
  {
	   gTxMessage.DLC=data.DLC;
	   gTxMessage.StdId=data.StdId;
	   gTxMessage.ExtId=data.ExtId;
	   gTxMessage.IDE=data.IDE;
	   gTxMessage.RTR=data.RTR;
	   gTxMessage.Data[0]=data.Data[0];
	   gTxMessage.Data[1]=data.Data[1];
	   gTxMessage.Data[2]=data.Data[2];
	   gTxMessage.Data[3]=data.Data[3];
	   gTxMessage.Data[4]=data.Data[4];
	   gTxMessage.Data[5]=data.Data[5];
	   gTxMessage.Data[6]=data.Data[6];
	   gTxMessage.Data[7]=data.Data[7];
	   Can_Tx(CAN2, &gTxMessage);
  }
  else if(0x01 == bcantype)
  {
	  gTxMessage.DLC=data.DLC;
	  gTxMessage.StdId=data.StdId;
	  gTxMessage.ExtId=data.ExtId;
	  gTxMessage.IDE=data.IDE;
	  gTxMessage.RTR=data.RTR;
	  gTxMessage.Data[0]=data.Data[0];
	  gTxMessage.Data[1]=data.Data[1];
	  gTxMessage.Data[2]=data.Data[2];
	  gTxMessage.Data[3]=data.Data[3];
	  gTxMessage.Data[4]=data.Data[4];
	  gTxMessage.Data[5]=data.Data[5];
	  gTxMessage.Data[6]=data.Data[6];
	  gTxMessage.Data[7]=data.Data[7];

      Can_Tx(CAN1, &gTxMessage);
  }
}
/*
check to send or modify send,
Miller.Tao20151117


*/
#define MOD_CAN_ID0 Benci_newC_CAN_mid_control_KEY_STD_ID       //0x1f3
#define MOD_CAN_ID1 Benci_newC_CAN_mid_control_turn_KEY1_STD_ID //0x1ef
#define MOD_CAN_ID2 Benci_newC_CAN_mid_control_turn_KEY2_STD_ID //0x1f7
#define MOD_CAN_ID3 0x003
#define MOD_CAN_ID4 0x0004
#define MOD_CAN_ID5 0x0005
#define MOD_CAN_ID6 0x0006


//CD主机发出来，转发到中控
BYTE CanIntercept_Check2(CanRxMsg *data)
{
    BYTE ret=0;
	static BYTE data0;

    switch(data->StdId)
    {
    case MOD_CAN_ID3:
        //if(testzcan)
            ret = 1;
        break;
    case MOD_CAN_ID4:
        ret = 1;
        break;
    case MOD_CAN_ID5:
        //if(testzcan)
            ret = 1;
        break;
    default:
        ret = 0;
        break;
    }
    return ret;
}
  //中控按键转发到CD主机
BYTE CanIntercept_Check(CanRxMsg *data)
{
    BYTE ret=0;

    switch(data->StdId)
    {
    	case MOD_CAN_ID0:	//0x1f3	//上推 下推、 enter等
        {
            ret = 1;
            data->Data[2]=0x00;
			data->Data[0]=0x00;
			data->Data[6]=0x00;
			if (0x96 == data->Data[3]
                ||0xa6 == data->Data[3]
				||0xb6 == data->Data[3]
				
				)//*号
			{
				data->Data[3] = 0x86;
			}
        }
        break;
    	case MOD_CAN_ID2:	//0x1f7 中控发出来的
            ret = 1;
		     break;
	    case MOD_CAN_ID3:
		   //if(testzcan)
		       ret = 1;
		     break;
	    case MOD_CAN_ID4:
		        ret = 1;
		     break;
	    case MOD_CAN_ID5:
		   //  if(testzcan)
		      ret = 1;
		     break;
	    default:
			 ret = 0;
			break;
	 }
	  return ret;
}
void CanIntercept_1_Proc(void)
{
      CanRxMsg data;
      if(gCan1WriteIndex == gCan1ReadIndex)return;

      data= gCAN1Buff[gCan1ReadIndex];
	  //中控按键转发到CD主机
    #if 1 //Miller.Tao20151117
    if(CanIntercept_Check(&data))
    {
          CanIntercept_Send(data,2);
     }
      else
     {
          CanIntercept_Send(data,2);
      }  
      #else
      CanIntercept_Send(data,1);;	  
      #endif
      //Uart send
      #if 0 //Miller.Tao20151117
       CAN2UARTSend(data);
     #endif
	 
    gCan1ReadIndex++;
    if(gCan1ReadIndex>=CANRECV_MAX)gCan1ReadIndex=0;
}

void CanIntercept_2_Proc(void)
{
      CanRxMsg data;
      if(gCan2WriteIndex == gCan2ReadIndex)return;

      data= gCAN2Buff[gCan2ReadIndex];
      //CD机转发到中控按键
     
      #if 1 //Miller.Tao20151117
	  if(CanIntercept_Check2(&data))
	  {
			//CAN2CANSend(data,0);
			//testzcan=0;
			CanIntercept_Send(data,1);//miller.tao20160616
	   }
	  else
	   {
			CanIntercept_Send(data,1);
			//testzcan=1;
	   }  
       #else
		CAN2CANSend(data,0);	
       #endif
    
      //Uart send
      #if 0 //Miller.Tao20151117
       CAN2UARTSend(data);
      #endif

     gCan2ReadIndex++;
     if(gCan2ReadIndex>=CANRECV_MAX)gCan2ReadIndex=0;
}

#endif

#if 1 //Miller.Tao,2014-09-09
/*define unity API for All CAN function*/

/*
========================
initial can varibale
========================
*/
void LF_CanBus_InitVar(void)
{
    m_BMW_CAN.benze_Steering_angle = 0x2000; //0;

	//m_RADAR.uRear_Left    =(0x0F>>4)&0x0F;
    //m_RADAR.uRear_MidLeft =(0x1F>>4)&0x0F;
    //m_RADAR.uRear_MidRight=(0x2F>>4)&0x0F;
    //m_RADAR.uRear_Right   =(0x3F>>4)&0x0F;
    #if 1
    m_RADAR.uFront_Left    =0x07;//(RxMessage.Data[3])&0x0F;
    m_RADAR.uFront_MidLeft =0x07;//(RxMessage.Data[3])&0x0F;
    m_RADAR.uFront_MidRight=0x07;//(RxMessage.Data[3]>>4)&0x0F;
    m_RADAR.uFront_Right   =0x07;//(RxMessage.Data[3]>>4)&0x0F;
    

    m_RADAR.uRear_Left    =0x07;//(RxMessage.Data[6])&0x0F;
    m_RADAR.uRear_MidLeft =0x07;//(RxMessage.Data[6])&0x0F;
    m_RADAR.uRear_MidRight=0x07;//(RxMessage.Data[6]>>4)&0x0F;
    m_RADAR.uRear_Right   =0x07;//(RxMessage.Data[6]>>4)&0x0F;

	#else
	m_RADAR.uFront_Left    =0x0F;//(RxMessage.Data[3])&0x0F;
    m_RADAR.uFront_MidLeft =0x0F;//(RxMessage.Data[3])&0x0F;
    m_RADAR.uFront_MidRight=0x0F;//(RxMessage.Data[3]>>4)&0x0F;
    m_RADAR.uFront_Right   =0x0F;//(RxMessage.Data[3]>>4)&0x0F;
    

    m_RADAR.uRear_Left    =0x0F;//(RxMessage.Data[6])&0x0F;
    m_RADAR.uRear_MidLeft =0x0F;//(RxMessage.Data[6])&0x0F;
    m_RADAR.uRear_MidRight=0x0F;//(RxMessage.Data[6]>>4)&0x0F;
    m_RADAR.uRear_Right   =0x0F;//(RxMessage.Data[6]>>4)&0x0F;
    #endif

	m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
	m_RADAR.fDisp=0;
	RxMessageTouchCtrl.StdId=0x1EF;
	RxMessageTouchCtrl.DLC = 8;
	RxMessageTouchCtrl.IDE=CAN_ID_STD;
    RxMessageTouchCtrl.RTR = CAN_RTR_DATA;
	gTouchFlag=0;
}

void LF_CanBus_SendControlCmd(BYTE cmd)
{
	
#if 1
	FIFO_PUT_ONE(CanKey_Fifo,cmd);
#else
    m_BMW_CAN.uCanSendCmdIndex++;
    if (m_BMW_CAN.uCanSendCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
    {
        m_BMW_CAN.uCanSendCmdIndex = 0;
    }
    m_BMW_CAN.uCanSendCmdBuf[m_BMW_CAN.uCanSendCmdIndex] = cmd;
#endif
}

 BYTE LF_CanBus_FetchCmd(void)
{
#if 1
	 u8 temp;
	 if(FIFO_GET_ONE(CanKey_Fifo,&temp))
		 return temp;
	 else
		 return BENZE_CMD_NULL;
#else
    BYTE temp;
    if (m_BMW_CAN.uCanFetchCmdIndex != m_BMW_CAN.uCanSendCmdIndex)
    {

        m_BMW_CAN.uCanFetchCmdIndex++;
        if (m_BMW_CAN.uCanFetchCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
        {
            m_BMW_CAN.uCanFetchCmdIndex = 0;
        }
        temp = m_BMW_CAN.uCanFetchCmdIndex;

        return m_BMW_CAN.uCanSendCmdBuf[temp];


    }
    else
    {
        return BENZE_CMD_NULL;
    }
#endif
}
//define a function to config can module
void LF_CanBus_Config(void)
{
    #if LF_CAN_TYPE == BWMX1CAN
    BWM_X1_CanBus_Config();
	#endif

	#if LF_CAN_TYPE == AudiQ3CAN
    Audi_Q3_CanBus_Config();
	#endif

	#if LF_CAN_TYPE == BWM5SCAN
    BWM_5S_CanBus_Config();
	#endif
	
	#if LF_CAN_TYPE == BENZE_NB_CAN
    BENZE_NB_CanBus_Config();
	#endif

	#if LF_CAN_TYPE == BENZE_GLK_CAN
    BENZE_GLK_CanBus_Config();
	#endif
	#if LF_CAN_TYPE == Benci_newC
        Benci_newC_CanBus_Config();
	#endif 
}

//工作信息
void LF_CanBus_work_data_analytic(CanRxMsg RxMessage)
{
   #if LF_CAN_TYPE == BWMX1CAN
   //工作信息
   BWM_X1_CanBus_work_data_analytic(RxMessage);
   #endif

   #if LF_CAN_TYPE == AudiQ3CAN
   //工作信息
   Audi_Q3_CanBus_work_data_analytic(RxMessage);
   #endif
    #if LF_CAN_TYPE == BWM5SCAN
   //工作信息
   BWM_5S_CanBus_work_data_analytic(RxMessage);
   #endif
   #if LF_CAN_TYPE == BENZE_NB_CAN
   //工作信息
   BENZE_NB_CanBus_work_data_analytic(RxMessage);
   #endif
   #if LF_CAN_TYPE == BENZE_GLK_CAN
   //工作信息
   BENZE_GLK_CanBus_work_data_analytic(RxMessage);
   #endif

      #if LF_CAN_TYPE == Benci_newC
   //工作信息
   Benci_newC_CanBus_work_data_analytic(RxMessage);
   #endif
}

//方控按键处理
void LF_CanBus_SteerKey_Task(CanRxMsg RxMessage)
{
   #if LF_CAN_TYPE == BWMX1CAN
   BWM_X1_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
   #endif
   #if LF_CAN_TYPE == AudiQ3CAN
   Audi_Q3_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
   #endif
   #if LF_CAN_TYPE == BWM5SCAN
   BWM_5S_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
   BWM_5S_CanBus_FetchSteerKeyInfo_Type2(RxMessage);
   BWM_5S_CanBus_FetchSteerKeyInfo_Type3(RxMessage);
   BWM_5S_CanBus_FetchSteerKeyInfo_Type4(RxMessage);
   #endif
   #if LF_CAN_TYPE == BENZE_NB_CAN
   BENZE_NB_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
   BENZE_NB_CanBus_FetchSteerKeyInfo_Type2(RxMessage);
   BENZE_NB_CanBus_FetchSteerKeyInfo_Type3(RxMessage);
   BENZE_NB_CanBus_FetchSteerKeyInfo_Type4(RxMessage);
   #endif
   #if LF_CAN_TYPE == BENZE_GLK_CAN
   BENZE_GLK_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
   BENZE_GLK_CanBus_FetchSteerKeyInfo_Type2(RxMessage);
   BENZE_GLK_CanBus_FetchSteerKeyInfo_Type3(RxMessage);
   BENZE_GLK_CanBus_FetchSteerKeyInfo_Type4(RxMessage);
   #endif
   #if LF_CAN_TYPE == Benci_newC
   //工作信息
   Benci_newC_CanBus_FetchSteerKeyInfo_Type1(RxMessage);
   #endif
}
//档位处理
void LF_CANBus_Stalls_Task(CanRxMsg RxMessage)
{
   #if LF_CAN_TYPE == BWMX1CAN
   BWM_X1_Can_FetchStallsInfo(RxMessage);
   #endif
   #if LF_CAN_TYPE == AudiQ3CAN
   Audi_Q3_Can_FetchStallsInfo(RxMessage);
   #endif

   #if LF_CAN_TYPE == BWM5SCAN
   BWM_5S_Can_FetchStallsInfo(RxMessage);
   #endif
   #if LF_CAN_TYPE == BENZE_NB_CAN
   BENZE_NB_Can_FetchStallsInfo(RxMessage);
   #endif

   #if LF_CAN_TYPE == BENZE_GLK_CAN
   BENZE_GLK_Can_FetchStallsInfo(RxMessage);
   #endif
   #if LF_CAN_TYPE == Benci_newC
   Benci_newC_Can_FetchStallsInfo(RxMessage);
   #endif
}
//圆形手柄和按键处理
void LF_CANBus_Knob_Task(CanRxMsg RxMessage)
{
   #if LF_CAN_TYPE == BWMX1CAN
   
   #endif 
}
//对应,AudiCan_FetchCmd
void LF_CanBus_FetchCmdTask(void)
{
     #if LF_CAN_TYPE == BWMX1CAN
     BWM_X1_CanBus_FetchCmdTask();
	 #endif

	  #if LF_CAN_TYPE == AudiQ3CAN
     Audi_Q3_CanBus_FetchCmdTask();
	 #endif

	 #if LF_CAN_TYPE == BWM5SCAN
     BWM_5S_CanBus_FetchCmdTask();
	 #endif
	 #if LF_CAN_TYPE == BENZE_NB_CAN
     BENZE_NB_CanBus_FetchCmdTask();
	 #endif
	 #if LF_CAN_TYPE == BENZE_GLK_CAN
     BENZE_GLK_CanBus_FetchCmdTask();
	 #endif
	 #if LF_CAN_TYPE == Benci_newC
             Benci_newC_CanBus_FetchCmdTask();
	 #endif
}
//MCU 往CAN BUS上发送数据
void LF_CanBus_Contrl_Task(void)
{
        if(m_BMW_CAN.uAuxSendSn!=__SN_END_)
		return;
	#if LF_CAN_TYPE == BENZE_NB_CAN
     BenzCanSyn_Task();
	#endif
	#if LF_CAN_TYPE == BENZE_GLK_CAN
     BenzGLK_CanSyn_Task();
	#endif
}
void Can1Data_Task(void)
{

    CanRxMsg Get_CanRxMsg;
    if(FIFO_GET_ONE(CAN1_RxFifo, &Get_CanRxMsg))
    {
        DealCan1Rec(Get_CanRxMsg);
    }
}
void Can2Data_Task(void)
{

    CanRxMsg Get_CanRxMsg;
    if(FIFO_GET_ONE(CAN2_RxFifo, &Get_CanRxMsg))
    {
        DealCan2Rec(Get_CanRxMsg);
    }
}
void DealCan1Rec(CanRxMsg CanRecData)
{
	
	CanRxMsg data;
	data = CanRecData;
	//LF_CanBus_work_data_analytic(CanRecData);//注释掉会导致用模拟器无法开机
	//Benci_newC_CanBus_mid_control_key_fun(CanRecData);
	//Benci_newC_CanBus_mid_control_key2_fun(CanRecData);
	
    if(CanIntercept_Check(&data))
    {
          CanIntercept_Send(data,2);
    }
    else
    {
          CanIntercept_Send(data,2);
    }  
}
void DealCan2Rec(CanRxMsg CanRecData)
{
	
	CanRxMsg data;
	data = CanRecData;
    //LF_CanBus_work_data_analytic(CanRecData);
	
	//if(CanIntercept_Check2(&data))
	{
		  CanIntercept_Send(data,1);
	}
	//else
	//{
	//	  CanIntercept_Send(data,1);
	//}	
}
//////////////the 2 following functions is for CAN1,CAN2 ISR ///////////////////////
/*==========================================
*Func:CAN1_USER_HANDLER
*description:handle user's application code of CAN1,a unity interface
*Author:Miller.Tao
*date:20140818
=============================================*/

#endif


/**************************************************************************/
/*                                                                        */
/**************************************************************************/
#undef _BENZE_BUS_C_
