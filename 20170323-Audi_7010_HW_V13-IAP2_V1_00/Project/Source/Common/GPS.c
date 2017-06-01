#define __GPS_C__
#include "includes.h"

void Navi_Controll_Send(BYTE cmd)
{
    BYTE temp;
    BYTE checksum=0;
    temp=cmd;

    USART_SendData(USART3, 0x51);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
    USART_SendData(USART3, 0);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
    USART_SendData(USART3, temp);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
    USART_SendData(USART3, 0);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
    USART_SendData(USART3, 0);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
    checksum = 0x51 + temp;
    checksum = ~checksum;
    USART_SendData(USART3, checksum);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
}


void Init_Navi_Variable(void)
{
    BYTE i;
    gGPSInitOk=0;

    gGPSCmdRdIndex=0;
    gGPSCmdWrtIndex=0;

    for(i=0; i<GPSCMDBUFFMAX; i++)
    {
        gGPSCmdBuffer[i][2]=0xff;
    }
    //gNaviVoiceStatus=0;
    gNaviVoiceCnt=0;


    {
        // BYTE i;
        for(i=0; i<TW88_VER_LEN ; i++)
            Tw88_version[i]=0;//g_stuIPC_DATA.Rx[g_stuIPC_DATA.RxReadIndex][1+i];
    }
}

void Navi_Cmd_Proc(void)
{
    if(!gNaviCnt)
    {
        if(gNaviSystemOn)
        {
            // gNaviSystemOn=0;
            //gNaviCnt=600;
        }
        if(gNaviSendFlag)
        {

            Navi_Controll_Send(CMD_RT_BTGPS_on_GPS);//miller.tao20160323
            gNaviSendFlag = 0;

        }
    }
}


/*========================
void Mcu2Navi_Com()

=========================*/
void Mcu2Navi_Com(BYTE * buff,BYTE len)
{
    BYTE i;
    for(i=0; i<len; i++)
    {
        USART_SendData(USART3, *(buff+i));
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;

    }

}
#define CMD_SEND_FROM_ARM 0x00
#define CMD_SEND_FROM_MCU 0x01


#define CMD_HEAD_CODE 0xA0
//define CMD ID with communication between arm and mcu


#define CMD_ID_COM_NOTIFY 0x00

#define CMD_ID_PANAL 0x00
#define DATA_ID_CAMERA 0x01
#define DATA_ID_PANAL 0x02
#define DATA_ID_VERSION 0x04
#define DATA_ID_SIGNAL 0x06
#define DATA_ID_SCREENSIZE 0x12


#define CMD_ID_SETTING 0x80
#define DATA_ID_DISPLAY 0x00
#define DATA_ID_NAVI_SET 0x01
#define DATA_ID_FACTORY 0x02
#define DATA_ID_LANG 0x03
#define DATA_ID_SYS_RESET 0x04
#define DATA_ID_Center_CTRL 0x05
#define DATA_ID_SYS_SRC 0x06
#define DATA_ID_TV_CTRL 0x07
#define DATA_ID_DVD_CTRL 0x08
#define DATA_ID_BL_Switch_CTRL 0x09
#define DATA_ID_SRC_Switch_CTRL 0x0C //0x0B
#define DATA_ID_BT_Act_CTRL 0x0D 
#define DATA_ID_TIME_DATA 0x0E

/*=========================
Panel key send funtion
By Miller.Tao,20151126
==========================*/
void Panel_Key_Send(BYTE keycode)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] = CMD_ID_SETTING;// CMD_ID_PANAL;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_Center_CTRL;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = keycode ;//data 0
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);

}

/*==========================
void Init_navi_send(BYTE status)
parameter:status = 0,close system
                          = 1,init ok


===========================*/
void Init_navi_send(BYTE status)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_PANAL;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_PANAL;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = status ;//data 0
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void camera_sel_send(BYTE camera)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_COM_NOTIFY;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_CAMERA;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = camera ;//data 0
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_Display_Send(BYTE bright,BYTE contrast)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_DISPLAY;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = bright ;//data 0
    buffer[6] = contrast;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_NaviSet_Send(BYTE type,BYTE para)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_NAVI_SET;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = type ;//data 0
    buffer[6] = para;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_SuitSet_Send(BYTE akey,BYTE warn,BYTE find,BYTE radar)
{
    BYTE buffer[16],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 8;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_FACTORY;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = 0x00;//舒适设置
    buffer[6] = akey ;//data 0
    buffer[7] = warn;
    buffer[8] =find;
    buffer[9] = radar;

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_CarSet_Send(BYTE car)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_FACTORY;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = 0x01 ;//data 0
    buffer[6] = car;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}


void Set_RearViewSet_Send(BYTE viewmode)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_FACTORY;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = 0x02 ;//data 0
    buffer[6] = viewmode;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}


void Set_CarInputSet_Send(BYTE resolution)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_FACTORY;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = 0x03 ;//data 0
    buffer[6] = resolution;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_DVDSet_Send(BYTE mode)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_FACTORY;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = 0x04 ;//data 0
    buffer[6] = mode;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_TVSet_Send(BYTE mode)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_FACTORY;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = 0x05 ;//data 0
    buffer[6] = mode;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_CarRecoderSet_Send(BYTE mode)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_FACTORY;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = 0x06 ;//data 0
    buffer[6] = mode;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_SysLangSet_Send(BYTE lang)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_SETTING;//cmd type :here is 0x00, a common id
    buffer[3] =  DATA_ID_LANG;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = lang ;//data 0

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void Set_SysResetSet_Send(BYTE mode)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_SYS_RESET;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = mode ;//data 0

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}


void IsSignal_Send(BYTE sighas)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_COM_NOTIFY;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_SIGNAL;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = sighas ;//data 0

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

void SwitchScreenSize_Send(BYTE mode)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_COM_NOTIFY;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_SCREENSIZE;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = mode ;//data 0
    buffer[6] = 0;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}
void Set_SysSRC_Send(BYTE src,BYTE on)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 5;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_SYS_SRC;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = src ;//data 0
    buffer[6] = on;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);
}

void Dvd_Control_Send(BYTE cmd)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_DVD_CTRL;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = cmd ;//data 0

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);
}

void Tv_Control_Send(BYTE cmd)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_TV_CTRL;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = cmd ;//data 0

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);
}
/*
back light setting
*/
void BL_Control_Send(BYTE cmd)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_BL_Switch_CTRL;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = cmd ;//data 0

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);
}

void Sys_SRC_Send(BYTE src)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_SRC_Switch_CTRL;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = src ;//data 0

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);
}

/*
******************************************
fun:control BT ,
parameter:act=0,answer the phone
          act=2,eject the phone

*****************************************
*/
void Sys_BTCall_Send(BYTE act)
{
    BYTE buffer[10],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_BT_Act_CTRL;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = act ;//data 0

    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);
}


void Sys_Time_Send(BYTE year_h,BYTE year_L,BYTE mon,BYTE day,BYTE hour,BYTE min,BYTE sec)
{
    BYTE buffer[15],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 10;//length
    buffer[2] =  CMD_ID_SETTING;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_TIME_DATA;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    buffer[5] = year_h ;//data 0
    buffer[6] = year_L ;
	buffer[7] = mon ;
	buffer[8] = day ;
    buffer[9] = hour ;
	buffer[10] = min ;
	buffer[11] = sec ;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);
}


#if 1//miller.tao20160426
//#define MCU_FW_VER "MCU0003"
#define MCU_FW_VER "LF_MCU_HW13_V:1.11" //06

void mcu_version_send(void)
{
    BYTE buffer[40],i;
    BYTE checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 3+18;//length
    buffer[2] =  CMD_ID_COM_NOTIFY;//cmd tye :here is 0x00, a common id
    buffer[3] =  DATA_ID_VERSION;//data type
    buffer[4] = CMD_SEND_FROM_MCU;//send from
    for(i=0; i<18; i++) //7
        buffer[5+i] = *(MCU_FW_VER+i) ;//data 0
    /*    
    buffer[5+16] = 0;//'_';
    for(i=0; i<8; i++)
        buffer[22+i] = Tw88_version[i];// *(MCU_FW_VER+i) ;//data 0
    */    
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Mcu2Navi_Com(buffer,buffer[1]+3);


}

#else

#endif

void SoftReset(void)
{
	__set_FAULTMASK(1);      // 关闭所有中端
	NVIC_SystemReset();// 复位
}
/*==========================
This function is to handle the CMD from android navi
By Miller.Tao20151120

==========================*/

#define CMD_COMMON 0x00
#define ARM_INIT_DATA 0x00
#define ARM_KEYCODE_DATA 0x03
#define ARM_VOICE_DATA 0x05
#define ARM_TOUCH_DATA 0x0A
#define ARM_MENU_DATA 0x0D
#define ARM_CAR_TYPE_DATA 0x0F
#define ARM_MP5_VIDEO_STA_DATA 0x11
#define ARM_GPS_SPEED_DATA 0x13

#define CMD_SETTING 0x80
#define ARM_DISPLAY_DATA 0x00
#define ARM_NAVI_SET_DATA 0x01
#define ARM_Factory_SET_DATA 0x02
#define ARM_Lang_Set_DATA 0x03
#define ARM_Sys_Reset_DATA 0x04
#define ARM_Center_Control_DATA 0x05
#define ARM_CHG_SRC_DATA 0x06
#define ARM_TV_CTRL_DATA 0x07
#define ARM_DVD_CTRL_DATA 0x08
#define ARM_BL_CTRL_DATA 0x09
#define ARM_NAVI_STATE_DATA 0x0A
#define ARM_NAVI_VOICE_DATA 0x0B
#define ARM_BT_CALL_STATUS_DATA 0x0D
#define ARM_REQ_TIME_DATA 0x0E

#define CMD_UPGRADE	0x02
#define Send_Bootload_Upgrade	0x01
#define MCU_Bootloader_Ready 0x02
#define Send_Android_Upgrade_Ready	0x03


//BYTE navitemp[8];
#if 1//miller.tao20160224
void NAVI_PROCESS(void)
{
//	static BYTE Tv_Status = 0;
    BYTE cmd,datatype;
	u32 tempfalg = UPDATA_VALUE;
	u8 temp_bright,temp_contrast;

    if(gGPSCmdRdIndex==gGPSCmdWrtIndex)return;

    cmd  = gGPSCmdBuffer[gGPSCmdRdIndex][2];
    datatype = gGPSCmdBuffer[gGPSCmdRdIndex][3];
    switch(cmd)
    {
    case CMD_COMMON:
        switch(datatype)
        {
        case ARM_INIT_DATA:
            if(gGPSCmdBuffer[gGPSCmdRdIndex][5]==0x00)//close system
            {

            }
            else if(gGPSCmdBuffer[gGPSCmdRdIndex][5] ==0x01)//init ok
            {
#if 1//miller.tao20160224
                //  if(gGPSInitOk==0)
                {
                    Init_navi_send(1);

                    mcu_version_send();
                    gGPSInitOk = 1;

					if(Sys.Bright <= 80)
					{
						temp_bright = 1;
					}
					else if(Sys.Bright <= 150)
					{
						temp_bright = 2;
					}
					else 
					{
						temp_bright = 3;
					}

					if(Sys.Contrast <= 80)
					{
						temp_contrast = 1;
					}
					else if(Sys.Contrast <= 150)
					{
						temp_contrast = 2;
					}
					else 
					{
						temp_contrast = 3;
					}
                    Set_Display_Send(temp_bright,temp_contrast);
                    Set_NaviSet_Send(0x01, Sys.NaviVolum);
                    Set_NaviSet_Send(0x02,Sys.NaviType);

                    Set_SuitSet_Send( Sys.FS_select.car_suit_set_id.akey, Sys.FS_select.car_suit_set_id.warn,Sys.FS_select.car_suit_set_id.find,Sys.FS_select.car_suit_set_id.autoradar);
                    Set_CarSet_Send(Sys.FS_select.car_type_onoff_id);
                    Set_RearViewSet_Send(Sys.FS_select.car_rearview_id);
                    Set_CarInputSet_Send(Sys.FS_select.car_input_res_id);
                    Set_DVDSet_Send( Sys.FS_select.DVD_onoff_id);
                    Set_TVSet_Send( Sys.FS_select.cmmb_type_onoff_id);
                    Set_CarRecoderSet_Send(Sys.FS_select.rec_type_onoff_id);
					Sys_Time_Send((BYTE)(m_BMW_CAN.Year_data>>8),(BYTE)m_BMW_CAN.Year_data,m_BMW_CAN.Month_data,m_BMW_CAN.day_data,m_BMW_CAN.Hour_data,m_BMW_CAN.Minute_data,m_BMW_CAN.Sec_data);
                }
#endif
            }
            else if(gGPSCmdBuffer[gGPSCmdRdIndex][5]==0x02)//info have saved
            {
                gGPSSaveOk = 1;
            }
            break;
        case ARM_KEYCODE_DATA://key

            break;
        case ARM_VOICE_DATA:

            break;
        case ARM_TOUCH_DATA:
            break;
        case ARM_MENU_DATA:
            break;
        case ARM_CAR_TYPE_DATA:

            break;
        case ARM_MP5_VIDEO_STA_DATA:
            SwitchScreenSize_Send(gGPSCmdBuffer[gGPSCmdRdIndex][5]);
			
            break;
        case ARM_GPS_SPEED_DATA:
            break;
        default:
            break;
        }
        break;
    case CMD_SETTING:
        switch(datatype)
        {
        case ARM_DISPLAY_DATA:
            temp_bright = gGPSCmdBuffer[gGPSCmdRdIndex][5];	//最少64，一级17 最大213
            temp_contrast = gGPSCmdBuffer[gGPSCmdRdIndex][6];//
			if(temp_contrast == 0x01)
			{
				//low
				Sys.Contrast = 80;
			}
			else if(temp_contrast == 0x02)
			{
				//mid
				Sys.Contrast = 150;
			}
			else if(temp_contrast == 0x03)
			{
				//hig
				Sys.Contrast = 200;
			}
			if(Sys.Contrast < 64)
   			{
				Sys.Contrast = 64;
			}
			
			if(temp_bright == 0x01)
			{
				//low
				Sys.Bright = 80;
			}
			else if(temp_bright == 0x02)
			{
				//mid
				Sys.Bright = 150;
			}
			else if(temp_bright == 0x03)
			{
				//hig
				Sys.Bright = 200;
			}
			
       		Bright_Adjust(Sys.Bright);
	   		TW8836ContrastAdjust(Sys.Contrast);
            break;
        case ARM_NAVI_SET_DATA:
            if(gGPSCmdBuffer[gGPSCmdRdIndex][5]==0x02)
                Sys.NaviType= gGPSCmdBuffer[gGPSCmdRdIndex][6];
            else if(gGPSCmdBuffer[gGPSCmdRdIndex][5]==0x01)
                Sys.NaviVolum= gGPSCmdBuffer[gGPSCmdRdIndex][6];

            //Set_NaviSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][5],gGPSCmdBuffer[gGPSCmdRdIndex][6]);
            break;
        case ARM_Factory_SET_DATA:
            switch(gGPSCmdBuffer[gGPSCmdRdIndex][5])
            {
            case 0x00://suitable setting
                Sys.FS_select.car_suit_set_id.akey=gGPSCmdBuffer[gGPSCmdRdIndex][6];
                Sys.FS_select.car_suit_set_id.warn=gGPSCmdBuffer[gGPSCmdRdIndex][7];
                Sys.FS_select.car_suit_set_id.find=gGPSCmdBuffer[gGPSCmdRdIndex][8];
                Sys.FS_select.car_suit_set_id.autoradar=gGPSCmdBuffer[gGPSCmdRdIndex][9];

                //Set_SuitSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][6],gGPSCmdBuffer[gGPSCmdRdIndex][7],gGPSCmdBuffer[gGPSCmdRdIndex][8],gGPSCmdBuffer[gGPSCmdRdIndex][9]);
                break;
            case 0x01://car type
                Sys.FS_select.car_type_onoff_id =gGPSCmdBuffer[gGPSCmdRdIndex][6];
                //Set_CarSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][6]);
         //       Ipc_Send_FS_setup();
                break;
            case 0x02://rear view
                // Sys.FS_select.angle_rada_onoff_id =gGPSCmdBuffer[gGPSCmdRdIndex][6];
                Sys.FS_select.car_rearview_id= gGPSCmdBuffer[gGPSCmdRdIndex][6];
                switch(Sys.FS_select.car_rearview_id)
                {
                case 0x00://car rear view
                    Sys.FS_select.angle_rada_onoff_id = 2;
                    Sys.FS_select.cam_type_onoff_id = 0;
                    break;
                case 0x01://car rearview +front view
                    Sys.FS_select.angle_rada_onoff_id = 2;
                    Sys.FS_select.cam_type_onoff_id = 0;
                    break;
                case 0x02://add rearview
                    Sys.FS_select.angle_rada_onoff_id = 1;
                    Sys.FS_select.cam_type_onoff_id = 1;
                    break;
                case 0x03://add rearview +front view
                    Sys.FS_select.angle_rada_onoff_id = 1;
                    Sys.FS_select.cam_type_onoff_id = 1;
                    break;
                case 0x04://360
                    Sys.FS_select.angle_rada_onoff_id = 3;
                    Sys.FS_select.cam_type_onoff_id = 1;
                    break;
                case 0x05://no
                    Sys.FS_select.cam_type_onoff_id = 2;
                    break;
                default:
                    Sys.FS_select.cam_type_onoff_id = 2;
                    break;
                }
                //Set_RearViewSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][6]);
           //     Ipc_Send_FS_setup();
                break;
            case 0x03://input selection
                Sys.FS_select.car_input_res_id =gGPSCmdBuffer[gGPSCmdRdIndex][6];
                //Set_CarInputSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][6]);
            //    Ipc_Send_FS_setup();
                break;
            case 0x04://dvd selection
                Sys.FS_select.DVD_onoff_id =gGPSCmdBuffer[gGPSCmdRdIndex][6];
                //Set_DVDSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][6]);
           //     Ipc_Send_FS_setup();
                break;
            case 0x05://cmmb selection
                Sys.FS_select.cmmb_type_onoff_id =gGPSCmdBuffer[gGPSCmdRdIndex][6];
                //Set_TVSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][6]);
            //    Ipc_Send_FS_setup();
                break;
            case 0x06://car recorder selection
                Sys.FS_select.rec_type_onoff_id = gGPSCmdBuffer[gGPSCmdRdIndex][6];
                //Set_CarRecoderSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][6]);
           //     Ipc_Send_FS_setup();
                break;
            default:
                break;

            }
            break;
        case ARM_Lang_Set_DATA:
            Sys.uCurOSDLang=gGPSCmdBuffer[gGPSCmdRdIndex][5];
            //Set_SysLangSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][5]);
            break;
        case ARM_Sys_Reset_DATA:
            Set_SysResetSet_Send(gGPSCmdBuffer[gGPSCmdRdIndex][5]);
            break;
        case ARM_CHG_SRC_DATA://PIP Open
            
            if(Sys.Main_Source==SRC_NAVI)
            {
				if(gGPSCmdBuffer[gGPSCmdRdIndex][5] == 0x01 || gGPSCmdBuffer[gGPSCmdRdIndex][5] == 0x0)//TV src
				{
					
				}
				else if(gGPSCmdBuffer[gGPSCmdRdIndex][5] == 0x02)
				{
					//原车
					Can_key_cmd = key_media;
					
				}
            }
            
            break;
        case ARM_TV_CTRL_DATA:
            Tv_Control_Send(gGPSCmdBuffer[gGPSCmdRdIndex][5]);
            break;
        case ARM_DVD_CTRL_DATA:
   //         DVD_Fill_OpCmd(gGPSCmdBuffer[gGPSCmdRdIndex][5]);

            break;
        case ARM_BL_CTRL_DATA:
            
            if(gGPSCmdBuffer[gGPSCmdRdIndex][5]==0)//closed
            {
                Sys.bOffScreenSwitch =1;
				BackLight(0);
				BL_Control_Send(0);
            //    Ipc_RESend_fun((int)Ipc_Send_TFT_onoff,Sys.bOffScreenSwitch);
            }
            else//open
            {
                Sys.bOffScreenSwitch = 0;
				BackLight(1);
				BL_Control_Send(1);
             //   Ipc_RESend_fun((int)Ipc_Send_TFT_onoff,Sys.bOffScreenSwitch);
            }
            break;
        case ARM_NAVI_STATE_DATA:
            gNaviStatus = gGPSCmdBuffer[gGPSCmdRdIndex][5];
			if(gNaviStatus == 0x06)
			{
				//if(Tv_Status)	//在TV是才切源	//开机第一次操作，貌似没有发源信息过来
				if(Sys.FS_select.car_rearview_id != 1 && Sys.FS_select.car_rearview_id != 3)
				{
					//输入源与前视是同一个接口，选择了前视就不能用TV
					//Can_key_cmd = key_TV_SRC;
				}
			}
            break;
        case ARM_NAVI_VOICE_DATA:
        {
            BYTE temp=0;
            temp = gGPSCmdBuffer[gGPSCmdRdIndex][5];
            //g_GPS_DATA.uSoundFlag = gGPSCmdBuffer[gGPSCmdRdIndex][5];
            if(g_GPS_DATA.uSoundFlag)
            {

            }
            else
            {
                if(temp==1)
					gNaviVoiceCnt=100;
            }
            g_GPS_DATA.uSoundFlag=temp;
        }
        break;
		case ARM_BT_CALL_STATUS_DATA:
		{
            BYTE call=0xff;
            call=gGPSCmdBuffer[gGPSCmdRdIndex][5];	//0：蓝牙来电；1：蓝牙去电；2：蓝牙挂断电话
            //g_stuSYSSRC.RingCallingFlag = gGPSCmdBuffer[gGPSCmdRdIndex][5];
#if 1//miller.tao20160713
            if(g_stuSYSSRC.RingCallingFlag!=call)
            {
                g_stuSYSSRC.RingCallingFlag=call;
                if((g_stuSYSSRC.RingCallingFlag ==1)||(g_stuSYSSRC.RingCallingFlag ==0))
                {
					
                    if(Sys.Main_Source!=SRC_NAVI)
			        {
						Can_key_cmd=key_NAVI;
						g_stuSYSSRC.event_occurse=1;
			        }
                    McuSetNaviMuteOn();
                    DisableNaviAudiout();
                    g_stuSYSSRC.soft_mute_Delay=200;//100
                    //gNaviVoiceCnt = 100;
                }
                else
                {
					
                    if(Sys.Main_Source==SRC_NAVI)
                    {
                        if(g_stuSYSSRC.event_occurse)
                        {
                            g_stuSYSSRC.event_occurse=0;
                            if(Sys.Pre_Main_Source==SRC_CarMedia)
		         			{
								Can_key_cmd=key_media;
                                m_BMW_CAN.uAuxSendSn=__SN_END_;
                            }
                        }

                    }
                    McuSetNaviMuteOn();
                    DisableNaviAudiout();
                    Delay_1ms(1);
                    g_stuCurPower.wOptionTimeout = 0;

                    g_stuSYSSRC.soft_mute_Delay=2000;//500;//100
                    //gNaviVoiceCnt=100;

                }
            }
#endif
        }break;	
		
		case ARM_REQ_TIME_DATA:
			Sys_Time_Send((BYTE)(m_BMW_CAN.Year_data>>8),(BYTE)m_BMW_CAN.Year_data,m_BMW_CAN.Month_data,
				m_BMW_CAN.day_data,m_BMW_CAN.Hour_data,m_BMW_CAN.Minute_data,m_BMW_CAN.Sec_data);
			//Delay_1ms(2);
			
			break;
        default:
            break;
        }
        break;
	case CMD_UPGRADE:
	{
		switch(datatype)
		{
			case Send_Bootload_Upgrade:
				FLASH_Unlock();
				if( FLASH_COMPLETE == FLASH_ErasePage(UpdataFlagAddress))
				{
					FLASH_ProgramWord(UpdataFlagAddress,tempfalg);
					if (tempfalg == *(vu32 *)UpdataFlagAddress)
					{
						FLASH_Lock();
						SoftReset();
					}
				}
			break;
			default:break;
		}
	}break;
    default:
        break;
    }
    gGPSCmdRdIndex++;
    if(gGPSCmdRdIndex>=GPSCMDBUFFMAX)gGPSCmdRdIndex=0;
}

#else

#endif


