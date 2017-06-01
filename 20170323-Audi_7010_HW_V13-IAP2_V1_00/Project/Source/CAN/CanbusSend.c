#define _CANBUSSEND_C_
#include "includes.h"



#if 1 //Miller.Tao20150123,kang's

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

    {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7C,0x00,0x80,0x1E}},//Syn Sn8
    {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7D,0x01,0x80,0x1E}},//Syn Sn9
    {0x0264,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0x7E,0x02,0x80,0x1E}},//Syn Sn9
};
#endif


const static  CanTxMsg  LeftPushCntrTab[]=
{

    {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE5,0x81,0xdd,0x01}},//pressed
    {0x0267,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xE1,0xFD,0xE6,0x00,0xdd,0x01}},//bounce
};

const static  CanTxMsg  window_cmd[]=
{
    /*
            uint32_t StdId;

            uint32_t ExtId;

            uint8_t IDE;

            uint8_t RTR;

            uint8_t DLC;

            uint8_t Data[8];
      */
    //{0x03b8,0x0000,CAN_Id_Standard,CAN_RTR_Data,3,{0x00,0xfd,0xf0,0xda,0x79,0x04,0xDE,0x30}},//knob fail
    //{0x0640,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0xf1,0x04,0x62,0xda,0x79,0x04,0xDE,0x30}},//knob fail
    {0x06f1,0x0000,CAN_Id_Standard,CAN_RTR_Data,5,{0x40,0x03,0x22,0xda,0x79,0xa1,0x88,0xa1}},//knob fail
    //{0x0656,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0xf1,0x30,0x00,0x00,0x00,0x00,0xDE,0x30}},//knob fail
    //{0x06f1,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x56,0x21,0x02,0x13,0x88,0x00,0x00,0x00}},//knob fail
    //{0x0656,0x0000,CAN_Id_Standard,CAN_RTR_Data,7,{0xf1,0x05,0x71,0x01,0xa1,0x88,0x04,0x30}},//knob fail
    //{0x06f1,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x56,0x10,0x08,0x31,0x01,0xa1,0x88,0xa1}},//knob fail
    //{0x0656,0x0000,CAN_Id_Standard,CAN_RTR_Data,4,{0xf1,0x30,0x00,0x00,0x00,0x00,0xDE,0x30}},//knob fail
    //{0x06f1,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x56,0x21,0x02,0x13,0x88,0x00,0x00,0x00}},//knob fail
    //{0x0656,0x0000,CAN_Id_Standard,CAN_RTR_Data,7,{0xf1,0x05,0x71,0x01,0xa1,0x88,0x04,0x30}},//knob fail
};



/**************************************************************************/
/*                                                                        */
/**************************************************************************/
const static  CanTxMsg  BWMWinLockTab[]=
{
    {0x026E,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x00,0x5B,0x00,0x02,0xFF,0xFF,0xFF,0xFF}},//konb ok
    {0x026E,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x5B,0x5B,0x00,0x02,0xFF,0xFF,0xFF,0xFF}},//knob fail
    //{0x023A,0x0000,CAN_Id_Standard,CAN_RTR_Data,6,{0x00,0xF3,0x04,0x3F,0xFF,0xF0}},//knob fail
    {0x026E,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x5B,0x5B,0x5B,0x02,0xFF,0xFF,0xFF,0xFF}},//konb ok
    {0x026E,0x0000,CAN_Id_Standard,CAN_RTR_Data,8,{0x1B,0x1B,0x1B,0x02,0xFF,0xFF,0xFF,0xFF}},//knob fail
};
const static  CanTxMsg  BWMWarnTab[2]=
{
    {0x02E1,0x0000,CAN_Id_Standard,CAN_RTR_Data,2,{0xFD,0xFF}},
    {0x02E1,0x0000,CAN_Id_Standard,CAN_RTR_Data,2,{0xFC,0xFF}},
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

void BWM_Lock_Op_Task(void)
{
    CanTxMsg gTxMessage;
    switch(m_BMW_CAN.LockState)
    {
    case 1:
        gTxMessage.DLC=BWMWinLockTab[0].DLC;
        gTxMessage.StdId=BWMWinLockTab[0].StdId;
        gTxMessage.IDE=BWMWinLockTab[0].IDE;
        gTxMessage.RTR=BWMWinLockTab[0].RTR;
        gTxMessage.Data[0]=BWMWinLockTab[0].Data[0];
        gTxMessage.Data[1]=BWMWinLockTab[0].Data[1];
        gTxMessage.Data[2]=BWMWinLockTab[0].Data[2];
        gTxMessage.Data[3]=BWMWinLockTab[0].Data[3];
        gTxMessage.Data[4]=BWMWinLockTab[0].Data[4];
        gTxMessage.Data[5]=BWMWinLockTab[0].Data[5];
        gTxMessage.Data[6]=BWMWinLockTab[0].Data[6];
        gTxMessage.Data[7]=BWMWinLockTab[0].Data[7];
#if 0
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(20);
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(20);
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(20);
#else
        if(!wLockWinTimer2)
        {
            Can_Tx(CAN2, &gTxMessage);
            //SysDelay(20);//10
            wLockWinTimer2 =80;
            m_BMW_CAN.LockCnt++;
        }
#endif

        // m_BMW_CAN.LockCnt++;
        if(m_BMW_CAN.LockAbort)
        {
            //m_BMW_CAN.LockState = 0;
            //m_BMW_CAN.LockAbort = 0;


        }
        else if(wLockWinTimeout<10000)
        {
            //if( m_BMW_CAN.WinStateRecvFlag)m_BMW_CAN.LockState = 2;

        }
        if(m_BMW_CAN.LockCnt>=40)//40,35,50
        {
            m_BMW_CAN.LockState = 2;
            //m_BMW_CAN.WinStateRecvFlag=1;
            //m_BMW_CAN.LockCnt =0;
            //m_BMW_CAN.WinStateRecvFlagFL=1;//front left
            //  m_BMW_CAN.WinStateRecvFlagFR=1;//front right
        }
        break;
    case 2:
        gTxMessage.DLC=BWMWinLockTab[1].DLC;
        gTxMessage.StdId=BWMWinLockTab[1].StdId;
        gTxMessage.IDE=BWMWinLockTab[1].IDE;
        gTxMessage.RTR=BWMWinLockTab[1].RTR;
        gTxMessage.Data[0]=BWMWinLockTab[1].Data[0];
        gTxMessage.Data[1]=BWMWinLockTab[1].Data[1];
        gTxMessage.Data[2]=BWMWinLockTab[1].Data[2];
        gTxMessage.Data[3]=BWMWinLockTab[1].Data[3];
        gTxMessage.Data[4]=BWMWinLockTab[1].Data[4];
        gTxMessage.Data[5]=BWMWinLockTab[1].Data[5];
        gTxMessage.Data[6]=BWMWinLockTab[1].Data[6];
        gTxMessage.Data[7]=BWMWinLockTab[1].Data[7];
#if 0
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(20);
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(20);//10
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(20);//10
#else
        if(!wLockWinTimer2)
        {
            Can_Tx(CAN2, &gTxMessage);
            //SysDelay(20);//10
            wLockWinTimer2 =80;
            m_BMW_CAN.LockCnt++;
        }
#endif
#if 0
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(50);
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(50);
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(50);
        Can_Tx(CAN2, &gTxMessage);
        SysDelay(50);
#endif
        //gTxMessage=BWMWinLockTab[0];
        //Can_Tx(CAN2, &gTxMessage);


        if(m_BMW_CAN.LockAbort)
        {
            // m_BMW_CAN.LockState = 0;
            // m_BMW_CAN.LockAbort = 0;
        }
        else if(wLockWinTimeout<8000)
        {
            //if( m_BMW_CAN.WinStateRecvFlag)m_BMW_CAN.LockState = 2;

        }

#if 1 //millertao20150428
        if(m_BMW_CAN.LockCnt>=50)
        {
            if(m_BMW_CAN.WinStateRecvFlagRL)
            {
                m_BMW_CAN.WinStateRecvFlagRL = 0;
                Sys_CarWinInfo.RearLeftWin = 0;//closed
            }
            if(m_BMW_CAN.WinStateRecvFlagRR)
            {
                m_BMW_CAN.WinStateRecvFlagRR = 0;
                Sys_CarWinInfo.RearRightWin= 0;//closed
            }
        }
#endif
        //m_BMW_CAN.LockCnt++;
        if((Sys_CarWinInfo.RearRightWin==0)&&(Sys_CarWinInfo.RearLeftWin == 0))
        {
            m_BMW_CAN.LockState = 3;
            //m_BMW_CAN.WinStateRecvFlag=1;//sky win
            //m_BMW_CAN.WinStateRecvFlagFL=1;//front left
            //m_BMW_CAN.WinStateRecvFlagFR=1;//front right
            m_BMW_CAN.LockCnt =0;
        }
        else if(m_BMW_CAN.LockCnt>=60)//70,40
        {
            m_BMW_CAN.LockState = 3;
            //m_BMW_CAN.WinStateRecvFlag=1;//sky win
            //m_BMW_CAN.WinStateRecvFlagFL=1;//front left
            //m_BMW_CAN.WinStateRecvFlagFR=1;//front right
            m_BMW_CAN.LockCnt =0;
        }
        break;
    case 3:
        gTxMessage.DLC=BWMWinLockTab[2].DLC;
        gTxMessage.StdId=BWMWinLockTab[2].StdId;
        gTxMessage.IDE=BWMWinLockTab[2].IDE;
        gTxMessage.RTR=BWMWinLockTab[2].RTR;
#if 1
        gTxMessage.Data[0]=BWMWinLockTab[2].Data[0];
        gTxMessage.Data[1]=BWMWinLockTab[2].Data[1];
        gTxMessage.Data[2]=BWMWinLockTab[2].Data[2];
        gTxMessage.Data[3]=BWMWinLockTab[2].Data[3];
        gTxMessage.Data[4]=BWMWinLockTab[2].Data[4];
        gTxMessage.Data[5]=BWMWinLockTab[2].Data[5];
        gTxMessage.Data[6]=BWMWinLockTab[2].Data[6];
        gTxMessage.Data[7]=BWMWinLockTab[2].Data[7];
#else
        if((Sys_CarWinInfo.FrontLeftWin == 0)&&(Sys_CarWinInfo.FrontRightWin==0))
            gTxMessage.Data[0]=0x40;
        else
            gTxMessage.Data[0]=BWMWinLockTab[2].Data[0];

        if((Sys_CarWinInfo.FrontLeftWin == 0)&&(Sys_CarWinInfo.FrontRightWin==0))
            gTxMessage.Data[1]=0x40;
        else
            gTxMessage.Data[1]=BWMWinLockTab[2].Data[1];

        gTxMessage.Data[2]=BWMWinLockTab[2].Data[2];
        gTxMessage.Data[3]=BWMWinLockTab[2].Data[3];
        gTxMessage.Data[4]=BWMWinLockTab[2].Data[4];
        gTxMessage.Data[5]=BWMWinLockTab[2].Data[5];
        gTxMessage.Data[6]=BWMWinLockTab[2].Data[6];
        gTxMessage.Data[7]=BWMWinLockTab[2].Data[7];
#endif
        //send command
        if(!wLockWinTimer2)
        {
            Can_Tx(CAN2, &gTxMessage);
            //SysDelay(20);//10
            wLockWinTimer2 =80;
            m_BMW_CAN.LockCnt++;
        }
        //protect for  windows is closed
#if 1 //miller.tao20150428
        if(wLockWinTimeout<8000)
        {
            if(m_BMW_CAN.WinStateRecvFlagFL)
            {
                m_BMW_CAN.WinStateRecvFlagFL = 0;
                Sys_CarWinInfo.FrontLeftWin = 0;//closed
            }
            if(m_BMW_CAN.WinStateRecvFlagFR)
            {
                m_BMW_CAN.WinStateRecvFlagFR = 0;
                Sys_CarWinInfo.FrontRightWin= 0;//closed
            }
            if(m_BMW_CAN.LockCnt>8)//600
            {
                if( m_BMW_CAN.WinStateRecvFlag)
                {
                    Sys_CarWinInfo.SkyWin = 0;
                    m_BMW_CAN.WinStateRecvFlag = 0;
                }
            }
        }
#endif
        //m_BMW_CAN.LockCnt++;
        //exiting the case ,miller.tao20150423
        if(m_BMW_CAN.LockAbort)
        {
            // m_BMW_CAN.LockState = 0;
            //m_BMW_CAN.LockAbort = 0;

        }
        else if(m_BMW_CAN.LockCnt>600)//500,600
        {
            m_BMW_CAN.LockState = 0;
            m_BMW_CAN.LockCnt =0;
            g_stuSYSSRC.carlockflag = 1;

        }
        else if((Sys_CarWinInfo.SkyWin == 0)&&(Sys_CarWinInfo.FrontLeftWin==0)&&(Sys_CarWinInfo.FrontRightWin == 0))
        {
            m_BMW_CAN.LockState = 0;
            m_BMW_CAN.LockCnt =0;
            g_stuSYSSRC.carlockflag = 1;

        }
        else if(!wLockWinTimeout)//4000
        {
            //if( m_BMW_CAN.WinStateRecvFlag)
            {
                m_BMW_CAN.LockState = 0;
                g_stuSYSSRC.carlockflag = 1;
                m_BMW_CAN.LockCnt =0;
            }

        }
        break;
    case 0:
        //m_BMW_CAN.LockCnt =0;
        break;
    default:
        break;
    }
}

void BWM_SpeakerAlarm_Task(void)
{
    CanTxMsg gTxMessage;

    static u8 spearkerOn = 1;
    if(!m_BMW_CAN.AlarmFlag )
    {
        if(m_CarDoorInfo.uFront_Left==1||m_CarDoorInfo.uFront_Right==1||m_CarDoorInfo.uRear_Left==1||m_CarDoorInfo.uRear_Right==1||m_CarDoorInfo.rear==1)
        {
            if(!wLockWinTimer)
            {
                if(spearkerOn)
                {
                    gTxMessage.DLC=BWMWarnTab[0].DLC;
                    gTxMessage.StdId=BWMWarnTab[0].StdId;
                    gTxMessage.IDE=BWMWarnTab[0].IDE;
                    gTxMessage.RTR=BWMWarnTab[0].RTR;
                    gTxMessage.Data[0]=BWMWarnTab[0].Data[0];
                    gTxMessage.Data[1]=BWMWarnTab[0].Data[1];

                    Can_Tx(CAN2, &gTxMessage);
                    wLockWinTimer = 500;
                    //m_BMW_CAN.AlarmFlag = 1;

                    spearkerOn = 0;
                }
                else
                {
                    gTxMessage.DLC=BWMWarnTab[1].DLC;
                    gTxMessage.StdId=BWMWarnTab[1].StdId;
                    gTxMessage.IDE=BWMWarnTab[1].IDE;
                    gTxMessage.RTR=BWMWarnTab[1].RTR;
                    gTxMessage.Data[0]=BWMWarnTab[1].Data[0];
                    gTxMessage.Data[1]=BWMWarnTab[1].Data[1];

                    Can_Tx(CAN2, &gTxMessage);
                    wLockWinTimer = 500;
                    // m_BMW_CAN.AlarmFlag = 0;
                    m_BMW_CAN.AlarmCnt++;
                    if(m_BMW_CAN.AlarmCnt>1) m_BMW_CAN.AlarmFlag = 1;
                    spearkerOn =1;
                }

            }

        }

    }


}
void BWM_SpeakerAlarm_FindCar_Task(void)
{
    CanTxMsg gTxMessage;

    static u8 spearkerOn = 1;
    if(!wLockWinTimer)
    {
        if(spearkerOn)
        {
            gTxMessage.DLC=BWMWarnTab[0].DLC;
            gTxMessage.StdId=BWMWarnTab[0].StdId;
            gTxMessage.IDE=BWMWarnTab[0].IDE;
            gTxMessage.RTR=BWMWarnTab[0].RTR;
            gTxMessage.Data[0]=BWMWarnTab[0].Data[0];
            gTxMessage.Data[1]=BWMWarnTab[0].Data[1];

            Can_Tx(CAN2, &gTxMessage);
            wLockWinTimer = 500;
            //m_BMW_CAN.AlarmFlag = 1;

            spearkerOn = 0;
        }
        else
        {
            gTxMessage.DLC=BWMWarnTab[1].DLC;
            gTxMessage.StdId=BWMWarnTab[1].StdId;
            gTxMessage.IDE=BWMWarnTab[1].IDE;
            gTxMessage.RTR=BWMWarnTab[1].RTR;
            gTxMessage.Data[0]=BWMWarnTab[1].Data[0];
            gTxMessage.Data[1]=BWMWarnTab[1].Data[1];

            Can_Tx(CAN2, &gTxMessage);
            wLockWinTimer = 500;
            // m_BMW_CAN.AlarmFlag = 0;
            //	 m_BMW_CAN.AlarmCnt++;
            //	if(m_BMW_CAN.AlarmCnt>1) m_BMW_CAN.AlarmFlag = 1;
            spearkerOn =1;
            g_stuSYSSRC.car_keylockflag=0;
        }

    }



}


void BWM_up_window(void)
{
    //static BYTE window_count=0;
    BYTE i;

    CanTxMsg gTxMessage;

    //if(window_count==1)
    {
        //i=window_count;
        //window_count=0;

        for(i=0; i<1; i++) //
        {
            gTxMessage.DLC=window_cmd[i].DLC;
            gTxMessage.StdId=window_cmd[i].StdId;
            gTxMessage.IDE=window_cmd[i].IDE;
            gTxMessage.RTR=window_cmd[i].RTR;
            gTxMessage.Data[0]=window_cmd[i].Data[0];
            gTxMessage.Data[1]=window_cmd[i].Data[1];
            gTxMessage.Data[2]=window_cmd[i].Data[2];
            gTxMessage.Data[3]=window_cmd[i].Data[3];
            gTxMessage.Data[4]=window_cmd[i].Data[4];
            gTxMessage.Data[5]=window_cmd[i].Data[5];
            gTxMessage.Data[6]=window_cmd[i].Data[6];
            gTxMessage.Data[7]=window_cmd[i].Data[6];
            Can_Tx(CAN2, &gTxMessage);
            //SysDelay(5);
        }

    }

}


#if 1 //kang's function
#if 1//miller.tao20160908
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
   m_BMW_CAN.uAuxSendSn=__SN16_;
    break;
   case __SN16_:
   gTxMessage.DLC=KnobCntrTab[22].DLC;
   gTxMessage.StdId=KnobCntrTab[22].StdId;
   gTxMessage.IDE=KnobCntrTab[22].IDE;
   gTxMessage.RTR=KnobCntrTab[22].RTR;
   gTxMessage.Data[0]=KnobCntrTab[22].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[22].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[22].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[22].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[22].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[22].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[22].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[22].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN17_;
    break;
   case __SN17_:
   gTxMessage.DLC=KnobCntrTab[23].DLC;
   gTxMessage.StdId=KnobCntrTab[23].StdId;
   gTxMessage.IDE=KnobCntrTab[23].IDE;
   gTxMessage.RTR=KnobCntrTab[23].RTR;
   gTxMessage.Data[0]=KnobCntrTab[23].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[23].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[23].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[23].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[23].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[23].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[23].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[23].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN18_;
    break;  
case __SN18_:
	gTxMessage.DLC=KnobCntrTab[24].DLC;
	gTxMessage.StdId=KnobCntrTab[24].StdId;
	gTxMessage.IDE=KnobCntrTab[24].IDE;
	gTxMessage.RTR=KnobCntrTab[24].RTR;
	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
	gTxMessage.Data[3]=KnobCntrTab[24].Data[3];
	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN19_;
    break;
 case __SN19_://miller.tao20160908
    gTxMessage.DLC=KnobCntrTab[24].DLC;
	gTxMessage.StdId=KnobCntrTab[24].StdId;
	gTxMessage.IDE=KnobCntrTab[24].IDE;
	gTxMessage.RTR=KnobCntrTab[24].RTR;
	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
	gTxMessage.Data[3]=KnobCntrTab[24].Data[3]+1;
	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN20_;
	break;
   case __SN20_://miller.tao20160908
    gTxMessage.DLC=KnobCntrTab[24].DLC;
	gTxMessage.StdId=KnobCntrTab[24].StdId;
	gTxMessage.IDE=KnobCntrTab[24].IDE;
	gTxMessage.RTR=KnobCntrTab[24].RTR;
	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
	gTxMessage.Data[3]=KnobCntrTab[24].Data[3]+2;
	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN21_;
	break;
   case __SN21_://miller.tao20160908
    gTxMessage.DLC=KnobCntrTab[24].DLC;
	gTxMessage.StdId=KnobCntrTab[24].StdId;
	gTxMessage.IDE=KnobCntrTab[24].IDE;
	gTxMessage.RTR=KnobCntrTab[24].RTR;
	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
	gTxMessage.Data[3]=KnobCntrTab[24].Data[3]+3;
	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN22_;
	break;
  case __SN22_://miller.tao20160908
    gTxMessage.DLC=KnobCntrTab[24].DLC;
	gTxMessage.StdId=KnobCntrTab[24].StdId;
	gTxMessage.IDE=KnobCntrTab[24].IDE;
	gTxMessage.RTR=KnobCntrTab[24].RTR;
	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
	gTxMessage.Data[3]=KnobCntrTab[24].Data[3]+4;
	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN23_;
	break;
  case __SN23_://miller.tao20160908
    gTxMessage.DLC=KnobCntrTab[24].DLC;
	gTxMessage.StdId=KnobCntrTab[24].StdId;
	gTxMessage.IDE=KnobCntrTab[24].IDE;
	gTxMessage.RTR=KnobCntrTab[24].RTR;
	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
	gTxMessage.Data[3]=KnobCntrTab[24].Data[3]+5;
	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN24_;
	break;
  case __SN24_://miller.tao20160908
    gTxMessage.DLC=KnobCntrTab[24].DLC;
	gTxMessage.StdId=KnobCntrTab[24].StdId;
	gTxMessage.IDE=KnobCntrTab[24].IDE;
	gTxMessage.RTR=KnobCntrTab[24].RTR;
	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
	gTxMessage.Data[3]=KnobCntrTab[24].Data[3]+4;
	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN25_;
	break;
  case __SN25_:
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
   m_BMW_CAN.uAuxSendSn=__SN26_;
    break;
  case __SN26_:
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
   m_BMW_CAN.uAuxSendSn=__SN27_;
    break;
  case __SN27_:
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
   m_BMW_CAN.uAuxSendSn=__SN28_;
    break;
  case __SN28_:
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
   m_BMW_CAN.uAuxSendSn=__SN_END_;
   g_stuCurPower.wOptionTimeout =300;//2000
    break;
  default:
    m_BMW_CAN.uAuxSendSn=__SN_END_;
    break;
    
    
  }
}
//#else
void BMW_AuxContrl_old_Task(void)
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
   m_BMW_CAN.uAuxSendSn=__SN16_;
    break;
   case __SN16_:
   gTxMessage.DLC=KnobCntrTab[22].DLC;
   gTxMessage.StdId=KnobCntrTab[22].StdId;
   gTxMessage.IDE=KnobCntrTab[22].IDE;
   gTxMessage.RTR=KnobCntrTab[22].RTR;
   gTxMessage.Data[0]=KnobCntrTab[22].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[22].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[22].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[22].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[22].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[22].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[22].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[22].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN17_;
    break;
   case __SN17_:
   gTxMessage.DLC=KnobCntrTab[23].DLC;
   gTxMessage.StdId=KnobCntrTab[23].StdId;
   gTxMessage.IDE=KnobCntrTab[23].IDE;
   gTxMessage.RTR=KnobCntrTab[23].RTR;
   gTxMessage.Data[0]=KnobCntrTab[23].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[23].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[23].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[23].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[23].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[23].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[23].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[23].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN18_;
    break;  
case __SN18_:
	gTxMessage.DLC=KnobCntrTab[24].DLC;
	gTxMessage.StdId=KnobCntrTab[24].StdId;
	gTxMessage.IDE=KnobCntrTab[24].IDE;
	gTxMessage.RTR=KnobCntrTab[24].RTR;
	gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
	gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
	gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
	gTxMessage.Data[3]=KnobCntrTab[24].Data[3];
	gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
	gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
	gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
	gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN19_;
    break;
  case __SN19_:
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
   m_BMW_CAN.uAuxSendSn=__SN20_;
    break;
  case __SN20_:
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
   m_BMW_CAN.uAuxSendSn=__SN21_;
    break;
  case __SN21_:
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
   m_BMW_CAN.uAuxSendSn=__SN22_;
    break;
  case __SN22_:
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
   m_BMW_CAN.uAuxSendSn=__SN_END_;
   g_stuCurPower.wOptionTimeout =300;//2000
    break;
  default:
    m_BMW_CAN.uAuxSendSn=__SN_END_;
    break;
    
    
  }
}
#endif
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

#else//Miller.Tao20150123
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
   m_BMW_CAN.uAuxSendSn=__SN1_;//__SN4_;//__SN1_;
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
   m_BMW_CAN.uAuxSendSn=__SN4_;//__SN2_
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
	 
  // Can_Tx(CAN2, &gTxMessage);
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
	 
 //  Can_Tx(CAN2, &gTxMessage);
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
   m_BMW_CAN.uAuxSendSn=__SN8_;//__SN6_
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
	 
  // Can_Tx(CAN2, &gTxMessage);
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
	 
   //Can_Tx(CAN2, &gTxMessage);
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
	 
   //Can_Tx(CAN2, &gTxMessage);
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
   m_BMW_CAN.uAuxSendSn=__SN16_;
	break;
	case __SN16_:
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
	 m_BMW_CAN.uAuxSendSn=__SN17_;
	  break;
    case __SN17_:
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
   m_BMW_CAN.uAuxSendSn=__SN18_;
	break;
	case __SN18_:
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
	 m_BMW_CAN.uAuxSendSn=__SN19_;
	  break;
    case __SN19_:
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
   m_BMW_CAN.uAuxSendSn=__SN20_;
	break;
	case __SN20_:
   gTxMessage.DLC=KnobCntrTab[22].DLC;
   gTxMessage.StdId=KnobCntrTab[22].StdId;
   gTxMessage.IDE=KnobCntrTab[22].IDE;
   gTxMessage.RTR=KnobCntrTab[22].RTR;
   gTxMessage.Data[0]=KnobCntrTab[22].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[22].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[22].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[22].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[22].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[22].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[22].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[22].Data[7];
	 
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN21_;
	break;
	case __SN21_:
   gTxMessage.DLC=KnobCntrTab[23].DLC;
   gTxMessage.StdId=KnobCntrTab[23].StdId;
   gTxMessage.IDE=KnobCntrTab[23].IDE;
   gTxMessage.RTR=KnobCntrTab[23].RTR;
   gTxMessage.Data[0]=KnobCntrTab[23].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[23].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[23].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[23].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[23].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[23].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[23].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[23].Data[7];
	 
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN22_;
	break;
case __SN22_:
   gTxMessage.DLC=KnobCntrTab[24].DLC;
   gTxMessage.StdId=KnobCntrTab[24].StdId;
   gTxMessage.IDE=KnobCntrTab[24].IDE;
   gTxMessage.RTR=KnobCntrTab[24].RTR;
   gTxMessage.Data[0]=KnobCntrTab[24].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[24].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[24].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[24].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[24].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[24].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[24].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[24].Data[7];
	 
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN23_;
	break;
 case __SN23_:
   gTxMessage.DLC=KnobCntrTab[25].DLC;
   gTxMessage.StdId=KnobCntrTab[25].StdId;
   gTxMessage.IDE=KnobCntrTab[25].IDE;
   gTxMessage.RTR=KnobCntrTab[25].RTR;
   gTxMessage.Data[0]=KnobCntrTab[25].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[25].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[25].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[25].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[25].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[25].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[25].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[25].Data[7];
	 
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN24_;
	break;
  case __SN24_:
   gTxMessage.DLC=KnobCntrTab[26].DLC;
   gTxMessage.StdId=KnobCntrTab[26].StdId;
   gTxMessage.IDE=KnobCntrTab[26].IDE;
   gTxMessage.RTR=KnobCntrTab[26].RTR;
   gTxMessage.Data[0]=KnobCntrTab[26].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[26].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[26].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[26].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[26].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[26].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[26].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[26].Data[7];
	 
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN25_;
	break;
   case __SN25_:
   gTxMessage.DLC=KnobCntrTab[27].DLC;
   gTxMessage.StdId=KnobCntrTab[27].StdId;
   gTxMessage.IDE=KnobCntrTab[27].IDE;
   gTxMessage.RTR=KnobCntrTab[27].RTR;
   gTxMessage.Data[0]=KnobCntrTab[27].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[27].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[27].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[27].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[27].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[27].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[27].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[27].Data[7];
	 
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uAuxSendSn=__SN26_;
	break;
    case __SN26_:
   gTxMessage.DLC=KnobCntrTab[28].DLC;
   gTxMessage.StdId=KnobCntrTab[28].StdId;
   gTxMessage.IDE=KnobCntrTab[28].IDE;
   gTxMessage.RTR=KnobCntrTab[28].RTR;
   gTxMessage.Data[0]=KnobCntrTab[28].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[28].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[28].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[28].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[28].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[28].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[28].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[28].Data[7];
	 
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
   gTxMessage.DLC=KnobCntrTab[29].DLC;
   gTxMessage.StdId=KnobCntrTab[29].StdId;
   gTxMessage.IDE=KnobCntrTab[29].IDE;
   gTxMessage.RTR=KnobCntrTab[29].RTR;
   gTxMessage.Data[0]=KnobCntrTab[29].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[29].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[29].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[29].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[29].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[29].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[29].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[29].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uOptionSendSn=__SN1_;
    break;
  case __SN1_:
    gTxMessage.DLC=KnobCntrTab[30].DLC;
   gTxMessage.StdId=KnobCntrTab[30].StdId;
   gTxMessage.IDE=KnobCntrTab[30].IDE;
   gTxMessage.RTR=KnobCntrTab[30].RTR;
   gTxMessage.Data[0]=KnobCntrTab[30].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[30].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[30].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[30].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[30].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[30].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[30].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[30].Data[7];
    Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uOptionSendSn=__SN2_;
    break;
  case __SN2_:
   gTxMessage.DLC=KnobCntrTab[31].DLC;
   gTxMessage.StdId=KnobCntrTab[31].StdId;
   gTxMessage.IDE=KnobCntrTab[31].IDE;
   gTxMessage.RTR=KnobCntrTab[31].RTR;
   gTxMessage.Data[0]=KnobCntrTab[31].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[31].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[31].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[31].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[31].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[31].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[31].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[31].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uOptionSendSn=__SN3_;
    break;
  case __SN3_:
   gTxMessage.DLC=KnobCntrTab[32].DLC;
   gTxMessage.StdId=KnobCntrTab[32].StdId;
   gTxMessage.IDE=KnobCntrTab[32].IDE;
   gTxMessage.RTR=KnobCntrTab[32].RTR;
   gTxMessage.Data[0]=KnobCntrTab[32].Data[0];
   gTxMessage.Data[1]=KnobCntrTab[32].Data[1];
   gTxMessage.Data[2]=KnobCntrTab[32].Data[2];
   gTxMessage.Data[3]=KnobCntrTab[32].Data[3];
   gTxMessage.Data[4]=KnobCntrTab[32].Data[4];
   gTxMessage.Data[5]=KnobCntrTab[32].Data[5];
   gTxMessage.Data[6]=KnobCntrTab[32].Data[6];
   gTxMessage.Data[7]=KnobCntrTab[32].Data[7];
     
   Can_Tx(CAN2, &gTxMessage);
   m_BMW_CAN.uOptionSendSn=__SN0_;
    break;
  
  default:
    m_BMW_CAN.uOptionSendSn=__SN0_;
    break;
    
    
  }
}


#endif

/**********************
	左推键
*********************/
void LeftPushKey_Send(void)
{
	
	CanTxMsg gTxMessage;

    switch(m_BMW_CAN.uLeftPushSendSn)
    {
    case __SN0_:
        gTxMessage.DLC=LeftPushCntrTab[0].DLC;
        gTxMessage.StdId=LeftPushCntrTab[0].StdId;
        gTxMessage.IDE=LeftPushCntrTab[0].IDE;
        gTxMessage.RTR=LeftPushCntrTab[0].RTR;
        gTxMessage.Data[0]=LeftPushCntrTab[0].Data[0];
        gTxMessage.Data[1]=LeftPushCntrTab[0].Data[1];
        gTxMessage.Data[2]=LeftPushCntrTab[0].Data[2];
        gTxMessage.Data[3]=LeftPushCntrTab[0].Data[3];
        gTxMessage.Data[4]=LeftPushCntrTab[0].Data[4];
        gTxMessage.Data[5]=LeftPushCntrTab[0].Data[5];
        gTxMessage.Data[6]=LeftPushCntrTab[0].Data[6];
        gTxMessage.Data[7]=LeftPushCntrTab[0].Data[7];

        Can_Tx(CAN2, &gTxMessage);
        m_BMW_CAN.uLeftPushSendSn=__SN1_;

        break;
    case __SN1_:
        gTxMessage.DLC=LeftPushCntrTab[1].DLC;
        gTxMessage.StdId=LeftPushCntrTab[1].StdId;
        gTxMessage.IDE=LeftPushCntrTab[1].IDE;
        gTxMessage.RTR=LeftPushCntrTab[1].RTR;
        gTxMessage.Data[0]=LeftPushCntrTab[1].Data[0];
        gTxMessage.Data[1]=LeftPushCntrTab[1].Data[1];
        gTxMessage.Data[2]=LeftPushCntrTab[1].Data[2];
        gTxMessage.Data[3]=LeftPushCntrTab[1].Data[3];
        gTxMessage.Data[4]=LeftPushCntrTab[1].Data[4];
        gTxMessage.Data[5]=LeftPushCntrTab[1].Data[5];
        gTxMessage.Data[6]=LeftPushCntrTab[1].Data[6];
        gTxMessage.Data[7]=LeftPushCntrTab[1].Data[7];
        Can_Tx(CAN2, &gTxMessage);
        m_BMW_CAN.uLeftPushSendSn=__SN0_;
		m_BMW_CAN.UnCarSRC_TFT_flag = 0;
        break;
    default:
        m_BMW_CAN.uLeftPushSendSn=__SN0_;
        break;
    }
}

/****************************
	舒适功能的任务，上锁喇叭，关窗等
*****************************/
void SuitableTask(void)
{
	if( m_BMW_CAN.AudioPwr == SYSTEM_POWER_OFF)
    {
        if((Sys.FS_select.car_suit_set_id.akey==1)&&(Sys.FS_select.car_type_onoff_id==0x02||Sys.FS_select.car_type_onoff_id==0x04))
        {
            BWM_Lock_Op_Task();

        }
        if((Sys.FS_select.car_suit_set_id.warn==1))//&&(g_stuSYSINFO.FS_select.car_type_onoff_id==0x02||g_stuSYSINFO.FS_select.car_type_onoff_id==0x04))
        {
            BWM_SpeakerAlarm_Task();
        }
        if(Sys.FS_select.car_suit_set_id.find)
        {
            if(g_stuSYSSRC.car_keylockflag==1)
                BWM_SpeakerAlarm_FindCar_Task();
        }
    }
}

/**********************
	同步到AUX通道和发送OPtion键的任务
**********************/
void SyncOptionKeyTask(void)
{
	
	if(System_Power_Status==Powerwork&&(m_BMW_CAN.AudioPwr == SYSTEM_POWER_ON))
    {
        if(!g_stuCurPower.wKnobAuxContrlTimer)
        {
            if(m_BMW_CAN.uAuxSendSn==__SN_END_)
            {
                if(Sys.Main_Source!=SRC_CarMedia)
                {
					if(Sys.Main_Source ==SRC_CAM &&(Sys.FS_select.car_rearview_id==0 || Sys.FS_select.car_rearview_id==1|| Sys.FS_select.car_rearview_id==5))
					{
						//原车后视不发Option
					}
					else
					{
						if(m_BMW_CAN.wLeftPushTimeout)
						{
							if(m_BMW_CAN.UnCarSRC_TFT_flag == 1 || LeftPushSendFlag ==1)
							{
								LeftPushSendFlag = 0;
								LeftPushKey_Send();
								g_stuCurPower.wKnobAuxContrlTimer=50;//50ms
							}
						}
	                    if(g_stuCurPower.wOptionTimeout && m_BMW_CAN.UnCarSRC_TFT_flag == 0 )
	                    {
							if(g_stuSYSSRC.RingCallingFlag ==2)		//安卓蓝牙来电时不发option
							{
	                        	BMW_OptionKey_Task();
								
							}
	                        g_stuCurPower.wKnobAuxContrlTimer=50;//50ms
	                    }
					}
                }
            }
            else //if(g_stuSYSINFO.uOSDMainMode!=MAIN_OSD_MODE_IN_CAR_AUX)
            {
				if(g_stuSYSSRC.RingCallingFlag ==2)		//安卓蓝牙来电时不发同步
				{
                	if(Sys.FS_select.car_type_onoff_id == 0)
					{	//20161101 选择1S 老的同步方式
						BMW_AuxContrl_old_Task();
					}
					else
					{
                		BMW_AuxContrl_Task();
					}
				}

                g_stuCurPower.wKnobAuxContrlTimer=40;//50ms
            }
        }
    }
}


#undef _CANBUSSEND_C_
