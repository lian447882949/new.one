/******************** (C) COPYRIGHT 2011  ********************
 * File Name          : avsw.h
 * Author             : edwin kang
 * Version            : V0.0
 * Date               : 09/8/2011
 * Description        : canbus.c head file.
 *******************************************************************************/
#ifndef _BENZE_BUS_H_
#define _BENZE_BUS_H_
#ifdef _BENZE_BUS_C_
#define _BENZE_BUS_EXT_
#else
#define _BENZE_BUS_EXT_  extern
#endif

#define _ENABLE_FRONTVIEW  1

#define CAM_OFF                                                  0x00
#define CAM_ON                                                    0x01

#define CAM_off_id                                                  0x00
#define CAM_ON_from_can                                                    0x01
#define CAM_ON_from_IO                                                    0x02
#define CAM_ON_from_IO_and_can                                                    0x03


#define CAR_MEDIA_SYSTEM_IN_AUX              0x00
#define CAR_MEDIA_SYSTEM_IN_RAD              0x01
#define CAR_MEDIA_SYSTEM_IN_CD               0x02
#define CAR_MEDIA_SYSTEM_IN_AIR              0x03
#define CAR_MEDIA_SYSTEM_IN_BT               0x04
#define CAR_MEDIA_SYSTEM_IN_NOSYN            0x05












#if 1 //Miller.Tao,2014-09-09
#define BWM5S_CAN_STALLS_STD_ID                      0x021A
#define BWM5S_CAN_STEERINGANGLE_STD_ID       0x02F3
#define BWM2S_CAN_STEERINGANGLE_STD_ID       0x0302
#define BWM5S_CAN_STEERINGANGLE_STD_ID2       0x0302//2系长度7

#define BWM5S_CAN_POWER_STD_ID                      0x019B //ACC
#define BWM5S_CAN_POWER2_STD_ID                      0x0510
#define BWM5S_CAN_POWER3_STD_ID                      0x00A1
#define BWM5S_CAN_POWER4_STD_ID                      0x05e3


#define BWM5S_CAN_RADAR_DISP_STD_ID             0x039F
#define BWM5S_CAN_RADAR_VAL_STD_ID                      0x36D
#define BWM5S_CAN_RADAR_VAL_Front_STD_ID                0x365

#define BWM5S_CAN_STEER_KEY_STD__TYPE1_ID                0x01D6
#define BWM5S_CAN_STEER_KEY_STD__TYPE2_ID                0x01F7
#define BWM5S_CAN_STEER_KEY_STD__TYPE3_ID                0x0264
#define BWM5S_CAN_STEER_KEY_STD__TYPE4_ID                0x0267
#define BWM5S_CAN_STEER_KEY_STD__TYPE5_ID                0x00A2
   
#define BWM5S_CAN_KNOB_TUNE_STD_ID                  0x0264
#define BWM5S_CAN_KONB_KB_STD_ID                    0x0267

#define BMW5S_CAN_CarDoor_STD_ID                    0x00EC
#define BMW5S_CAN_CarSpeed_STD_ID                   0x02C5
#define BMW5S_CAN_CarMiles_STD_ID                   0x0330

#define BMW5S_CAN_SURPLLUS_KIL_STD_ID                   0x0366
#define BMW5S_CAN_OilConsumption_STD_ID                   0x0362
#define BMW5S_CAN_PC_SPEED_STD_ID                   0x0362

#define BWM5S_CAN_BT_statu_ID                0x44c

#define BWM5S_CAN_BACK_STATUS_ID2                0x12f


#define BMW5S_CAN_TIMER_STD_ID                      0x02F8

#define BMW5S_CAN_CarPhone_STD_ID                      0x044C

#define BMW5S_CAN_Lock_STD_ID 0x023A //0x2A0
#define BMW5S_CAN_LockOp_STD_ID 0x026E
//#define BMW5S_CAN_SOURCE1_STD_ID                    0x0000
//#define BMW5S_CAN_SOURCE2_STD_ID                    0x0001
#define BMW5S_CAN_LeftFrontWin_STD_ID 0x03B6
#define BMW5S_CAN_LeftRearWin_STD_ID 0x03B7
#define BMW5S_CAN_RightFrontWin_STD_ID 0x03B8
#define BMW5S_CAN_RightRearWin_STD_ID 0x03B9
#define BMW5S_CAN_SkyWin_STD_ID 0x03BA
#define BMW5S_CAN_5DoorStatus_STD_ID 0x0EC
#define BMW5S_CAN_TFT_Status_STD_ID 0x273

#define BMW5S_CAN_Turn_LIGHT_STD_ID 0x1F6	//转向灯

#endif


#if 1 //2015-0205,Audi_A4

#define AUD_CAN_STALLS_STD_ID        0x0102
#define AUD_CAN_STEERINGANGLE_STD_ID 0x0086
#define AUD_CAN_QUICK_STD_ID 		0x0100
#define AUD_CAN_angle_leftright_STD_ID 		0x0363



#define AUD_CAN_POWER_STD_ID         0x0655
#define AUD_CAN_POWER_STD2_ID        0x0650
#define AUD_CAN_POWER_STD3_ID        0x067B

#define AUD_CAN_RADAR_DISP_STD_ID    0x0603
#define AUD_CAN_AIR_DISP_STD_ID      0x0638

#define AUD_CAN_RADAR_INFO_STD_ID    0x0634
#define AUD_CAN_TIMER_STD_ID         0x062f
#define AUD_CAN_MUTE_STD_ID          0x0600
#define AUD_CAN_STEER_KEY_STD_ID     0x066a
#define AUD_CAN_SOURCE1_STD_ID       0x0490
#define AUD_CAN_SOURCE2_STD_ID       0x0491
#endif

/**********************************************************
Sterring Key status
**********************************************************/
#define BENZE_KEY_ALL_BOUNCED              0x00
#define BENZE_KEY_STEERING_LEFT_KEY_MODE_PRESSED               0x01
#define BENZE_KEY_STEERING_LEFT_KEY_KNOB_PRESSED               0x02
#define BENZE_KEY_STEERING_LEFT_KEY_KNOBUP_PRESSED             0x03
#define BENZE_KEY_STEERING_LEFT_KEY_KNOBDN_PRESSED             0x04
#define BENZE_KEY_STEERING_LEFT_KEY_BT_PRESSED                 0x05

#define BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED               0x51
#define BENZE_KEY_STEERING_RIGHT_KEY_NAVI_PRESSED               0x52
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOB_PRESSED             0x53
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOBUP_PRESSED            0x54
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOBDN_PRESSED            0x55
#define BENZE_KEY_STEERING_RIGHT_KEY_BT_PRESSED            0x56
#define BENZE_KEY_STEERING_RIGHT_KEY_MODE_PRESSED            0x57

#define BENZE_KEY_KnobAround_KEY_KNOBRT_PRESSED            0x60 
#define BENZE_KEY_KnobAround_KEY_KNOBLT_PRESSED            0x61 
#define BENZE_KEY_KnobAround_KEY_KNOBUP_PRESSED            0x62 
#define BENZE_KEY_KnobAround_KEY_KNOBDN_PRESSED            0x63 
#define BENZE_KEY_KnobAround_KEY_KNOBENTER_PRESSED            0x64 
#define BENZE_KEY_KnobAround_KEY_OPTION_PRESSED            0x65 
#define BENZE_KEY_KnobAround_KEY_BACK_PRESSED            0x66 
#define BENZE_KEY_KnobAround_KEY_RADIO_PRESSED            0x67 
#define BENZE_KEY_KnobAround_KEY_MEDIA_PRESSED            0x68 
#define BENZE_KEY_KnobAround_KEY_MENU_PRESSED            0x69 
#define BENZE_KEY_KnobAround_KEY_TEL_PRESSED            0x6A 
#define BENZE_KEY_KnobAround_KEY_MAP_PRESSED            0x6B 



#define BENZE_KEY_STEERING_LEFT_KEY_MODE_KEEP               0x71
#define BENZE_KEY_STEERING_LEFT_KEY_KNOB_KEEP               0x72
#define BENZE_KEY_STEERING_LEFT_KEY_KNOBUP_KEEP             0x73
#define BENZE_KEY_STEERING_LEFT_KEY_KNOBDN_KEEP            0x74
#define BENZE_KEY_STEERING_LEFT_KEY_BT_KEEP            0x75

#define BENZE_KEY_STEERING_RIGHT_KEY_VOICE_KEEP               0xE1
#define BENZE_KEY_STEERING_RIGHT_KEY_NAVI_KEEP               0xE2
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOB_KEEP             0xE3
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOBUP_KEEP            0xE4
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOBDN_KEEP            0xE5
#define BENZE_KEY_STEERING_RIGHT_KEY_BT_KEEP            0xE6


#define BENZE_KEY_KnobAround_KEY_KNOBRT_KEEP                 0xF0       
#define BENZE_KEY_KnobAround_KEY_KNOBLT_KEEP                 0xF1       
#define BENZE_KEY_KnobAround_KEY_KNOBUP_KEEP                 0xF2       
#define BENZE_KEY_KnobAround_KEY_KNOBDN_KEEP                 0xF3       
#define BENZE_KEY_KnobAround_KEY_KNOBENTER_KEEP              0xF4       
#define BENZE_KEY_KnobAround_KEY_OPTION_KEEP                 0xF5       
#define BENZE_KEY_KnobAround_KEY_BACK_KEEP                   0xF6       
#define BENZE_KEY_KnobAround_KEY_RADIO_KEEP                  0xF7       
#define BENZE_KEY_KnobAround_KEY_MEDIA_KEEP                  0xF8       
#define BENZE_KEY_KnobAround_KEY_MENU_KEEP                   0xF9       
#define BENZE_KEY_KnobAround_KEY_TEL_KEEP                    0xFA       
#define BENZE_KEY_KnobAround_KEY_MAP_KEEP                    0xFB       



/**********************************************************
canbus Key cmd
**********************************************************/
#define BENZE_CMD_KNOB_UP_PRESSED               0x01
#define BENZE_CMD_KNOB_DN_PRESSED               0x02
#define BENZE_CMD_KNOB_LEFT_PRESSED             0x03
#define BENZE_CMD_KNOB_RIGHT_PRESSED            0x04
#define BENZE_CMD_KNOB_ENTER_PRESSED            0x05
#define BENZE_CMD_KNOB_TUNEDEC_PRESSED          0x06
#define BENZE_CMD_KNOB_TUNEINC_PRESSED          0x07


#define BENZE_CMD_KNOB_DVD         0x08
#define BENZE_CMD_KNOB_vedio         0x09
#define BENZE_CMD_KNOB_music         0x0a
#define BENZE_CMD_KNOB_TV        0x0b
#define BENZE_CMD_KNOB_OPT 0x0D

#define BENZE_CMD_KNOB_BACK 0x0E

#define BENZE_CMD_KNOB_Release 0x0F
#define BENZE_CMD_KNOB_ANSWER_CALL 0x10 //miller.tao20160728
#define BENZE_CMD_KNOB_EJECT_CALL 0x11 //miller.tao20160728

#define BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED          0x20
#define BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED          0x21

//
#define BENZE_CMD_STEERING_LEFT_KEY_UP_PRESSED               0x0a
#define BENZE_CMD_STEERING_LEFT_KEY_DN_PRESSED               0x0b
#define BENZE_CMD_STEERING_LEFT_KEY_LEFT_PRESSED             0x0c
#define BENZE_CMD_STEERING_LEFT_KEY_RIGHT_PRESSED            0x0d
#define BENZE_CMD_STEERING_LEFT_KEY_ENTER_PRESSED            0x0e
#define BENZE_CMD_STEERING_LEFT_KEY_RET_PRESSED          0x0f
#define BENZE_CMD_STEERING_LEFT_KEY_MODE_PRESSED          0x10
#define BENZE_CMD_STEERING_LEFT_KEY_KNOB_PRESSED          0x11
#define BENZE_CMD_STEERING_LEFT_KEY_KNOBUP_PRESSED          0x12
#define BENZE_CMD_STEERING_LEFT_KEY_KNOBDN_PRESSED          0x13

#define BENZE_CMD_STEERING_RIGHT_KEY_UP_PRESSED               0x50
#define BENZE_CMD_STEERING_RIGHT_KEY_DN_PRESSED               0x51
#define BENZE_CMD_STEERING_RIGHT_KEY_OFF_PRESSED             0x52
#define BENZE_CMD_STEERING_RIGHT_KEY_CALL_PRESSED            0x53
#define BENZE_CMD_STEERING_RIGHT_KEY_RET_PRESSED            0x54
#define BENZE_CMD_STEERING_RIGHT_KEY_MUTE_PRESSED          0x55
#define BENZE_CMD_STEERING_RIGHT_KEY_VOICE_PRESSED          0x56
#define BENZE_CMD_STEERING_RIGHT_KEY_KNOB_PRESSED          0x58
#define BENZE_CMD_STEERING_RIGHT_KEY_KNOBUP_PRESSED          0x59
#define BENZE_CMD_STEERING_RIGHT_KEY_KNOBDN_PRESSED          0x5a
#define BENZE_CMD_STEERING_RIGHT_KEY_OPTION_PRESSED          0x5b

#define BENZE_CMD_MENU_PRESSED                                 0x5D

//LONG PRESSED
#define BENZE_CMD_KNOB_UP_KEEP               0xA1
#define BENZE_CMD_KNOB_DN_KEEP               0xA2
#define BENZE_CMD_KNOB_LEFT_KEEP             0xA3
#define BENZE_CMD_KNOB_RIGHT_KEEP           0xA4
#define BENZE_CMD_KNOB_ENTER_KEEP            0xA5
#define BENZE_CMD_KNOB_TUNEDEC_KEEP          0xA6
#define BENZE_CMD_KNOB_TUNEINC_KEEP          0xA7
#define BENZE_CMD_KNOB_BACK_KEEP_ANDROID_REBOOT          0xA8
//
#define BENZE_CMD_STEERING_LEFT_KEY_UP_KEEP               0xAa
#define BENZE_CMD_STEERING_LEFT_KEY_DN_KEEP               0xAb
#define BENZE_CMD_STEERING_LEFT_KEY_LEFT_KEEP             0xAc
#define BENZE_CMD_STEERING_LEFT_KEY_RIGHT_KEEP            0xAd
#define BENZE_CMD_STEERING_LEFT_KEY_ENTER_KEEP            0xAe
#define BENZE_CMD_STEERING_LEFT_KEY_RET_KEEP               0xAf
#define BENZE_CMD_STEERING_LEFT_KEY_MODE_KEEP          0xB0
#define BENZE_CMD_STEERING_LEFT_KEY_KNOB_KEEP          0xB1
#define BENZE_CMD_STEERING_LEFT_KEY_KNOBUP_KEEP          0xB2
#define BENZE_CMD_STEERING_LEFT_KEY_KNOBDN_KEEP          0xB3

#define BENZE_CMD_STEERING_RIGHT_KEY_UP_KEEP               0xE0
#define BENZE_CMD_STEERING_RIGHT_KEY_DN_KEEP               0xE1
#define BENZE_CMD_STEERING_RIGHT_KEY_OFF_KEEP             0xE2
#define BENZE_CMD_STEERING_RIGHT_KEY_CALL_KEEP            0xE3
#define BENZE_CMD_STEERING_RIGHT_KEY_RET_KEEP            0xE4
#define BENZE_CMD_STEERING_RIGHT_KEY_MUTE_KEEP          0xE5
#define BENZE_CMD_STEERING_RIGHT_KEY_VOICE_KEEP          0xE6
#define BENZE_CMD_STEERING_RIGHT_KEY_NAVI_KEEP          0xE7
#define BENZE_CMD_STEERING_RIGHT_KEY_KNOB_KEEP          0xE8
//---------------------------------------------------------------------------

#define BENZE_CMD_NULL   0xFF

#define BENZE_CAN_CNTR_BUF_MAX     15

#define BENZE_CAN_Steering_angle_BUF_MAX     2


//------------------------------------------------
#define benci_send_key_up 0
#define benci_send_key_down 1
#define benci_send_key_left 2
#define benci_send_key_right 3
#define benci_send_key_enter	 4






typedef enum __AUX_SEND_SN__
{
  __SN_S_,
  __SN0_,
  __SN1_,
  __SN2_,
  __SN3_,
  __SN4_,
  __SN5_,
  __SN6_,
  __SN7_,
  __SN8_,
  __SN9_,
  __SN10_,
  __SN11_,
  __SN12_,
  __SN13_,
  __SN14_,
  __SN15_,
  __SN16_,
  /////////MillerTao,ADD20150123////
  __SN17_,
  __SN18_,
  __SN19_,
  __SN20_,
  __SN21_,
  __SN22_,
  __SN23_,
  __SN24_,
  __SN25_,
  __SN26_,
  __SN27_,
  __SN28_,
  
  __SN_END_,
  
  
}AUX_SEND_SN;


typedef struct __BENZE_CAN
{
    vu8 uKeyID;
    vu8 uKeyKeepCnt;
    vu8 uKeyKeepInDepCnt;
    vu8 bKeyKeepOneTime;

    vu16 uKeyID2;
    vu8 uKeyKeepCnt2;
    vu8 bKeyKeepOneTime2;

    vu8 uKeyID3;
    vu8 uKeyKeepCnt3;
    vu8 bKeyKeepOneTime3;

    //
    AUX_SEND_SN uAuxSendSn;
    AUX_SEND_SN uOptionSendSn;
	AUX_SEND_SN uLeftPushSendSn;
	u16 wLeftPushTimeout;
    vu8 uCanSendCmdBuf[BENZE_CAN_CNTR_BUF_MAX];
    u8 uCanSendCmdIndex;
    u8 uCanFetchCmdIndex;
    vu16 wLoopTimer;
    //info
    //air
    vu8 benze_air_Disp;
    u8 prebenze_air_Disp;
    vu8 benze_air_wind_speed;
    vu8 benze_air_auto;
    vu8 benze_air_wind_mode;
    vu8 benze_air_wind_off;
    vu8 benze_air_wind_speed_max;
    vu8 benze_air_zone;
    vu8 benze_air_fornt;
    vu8 benze_air_wind_cycle;
    vu8 benze_air_ac, benze_air_dual;
    vu8 benze_air_rear;
    vu8 benze_air_left_temperature;
    vu8 benze_air_right_temperature;
    u8 benze_out_temperature;
	u8 air_send_id;
    vu16 benze_Steering_angle;//[BENZE_CAN_Steering_angle_BUF_MAX];
	vu16 benze_air_show_Timer;
	u8 benze_Steering_angle_index;
    u8 volatile benze_Pwr_acc; //点火
    u8 AudioPwr;
    u8 AccPwr;
    u8 benze_Pwr_acc_Aux;
    
    u16 Year_data;
    u8 Month_data;
    u8 day_data;
    u8 week_data;
    
    u8 Hour_data;
    u8 Minute_data;
    u8 Sec_data;
	u8 send_time_flag;
    
    u8 CarAudioSoure;
	
    u8 Car_font_rec_flag;
	u8 Car_font_rec_source;
    volatile CanRxMsg RxMessage;
    volatile CanRxMsg g_StanbyCanRxMessage;

	volatile u8 LockState;//for closed window
	volatile u16 LockCnt;//for closed window
	u8 LockAbort;//20150415
	u8 AlarmCnt;//20150417
	u8 AlarmFlag;//
	volatile u8 WinStateRecvFlag;
	volatile u8 WinStateRecvFlagFL;//front left win
	volatile u8 WinStateRecvFlagFR;//front right win
	volatile u8 WinStateRecvFlagRL;//rear left win
	volatile u8 WinStateRecvFlagRR;//rear right win
	u8 Car_TFT_flag;
	u8 UnCarSRC_TFT_flag;	//不在原车状态下，原车关背光标志
} BMW_CAN;

typedef struct __RADAR
{

    u8 uFront_Left;
    u8 uFront_MidLeft;
    u8 uFront_MidRight;
    u8 uFront_Right;
    //
    u8 uRear_Left;
    u8 uRear_MidLeft;
    u8 uRear_MidRight;
    u8 uRear_Right;
    //
    u8 fDisp;
	u8 power_on_statu;
	u8 fDisp_on_p;
	u8 Collision;	//碰撞提示
	u8 CollisionUpdata;
	u8 CollisionDataBack;

} RADAR;


typedef struct __CARDOORINFO
{
    u8 SendFlag;
    u8 uFront_Left;
    u8 uFront_Right;
    u8 uRear_Left;
    u8 uRear_Right;
    //
    u8 front;//前盖
	u8 rear;//后备箱
	u8 show_id;//显示那一张
	u8 show_flag;//是否要显示

	U16 door_show_timer;
} CARDOORINFO;//Miller.Tao20141020
typedef struct __CARSPEEDINFO
{
    u8 SendFlag;
    u8 Hi_Speed;
    u8 Lo_Speed;
	u16 car_speed;
} CARSPEEDINFO;//Miller.Tao20141020
typedef struct __CARMILEINFO
{
   u8 SendFlag;
   //BYTE 4,3,2,1
    u8 Mile4Byte;
    u8 Mile3Byte;
	u8 Mile2Byte;
    u8 Mile1Byte;
} CARMILEINFO;//Miller.Tao20141020

typedef struct __CARTURNER
{
   u8 count;
   u8 count2;
   u8 flag;
} CARTURNER;


typedef struct __LIGHT_CAN
{
   u8 sun_light;
   //BYTE 4,3,2,1
    u8 sun_mode;
    u8 button_light_value;
	u8 sys_light_value;
	
	u8 car_tft_onoff;
} LIGHT_CAN;


typedef struct __CARWININFO
{
    u8 RetryFlag;
   
    u8 FrontLeftWin;
    u8 FrontRightWin;
	u8 RearLeftWin;
    u8 RearRightWin;
	u8 SkyWin;
} CARWININFO;//Miller.Tao20141020

typedef struct
{
    u8 ufront_is_on;
    u8 in_front_flag;
    u8 ufront_is_dis_on;//车速快=1，不在倒车=1	

} FRONTVIEWCNTR;


typedef struct
{
	u8 u360_view_is_on;
	u8 u360_last_mian_source;
		
}STR_360_VIEW;

typedef struct
{
	//U8 CarSpeed;
	union{
	float CarSpeed;
	char CarSpeedStr[4];
	}CARSPEED;
	//U8 OilConsumption;
	union{
	float OilConsumption;
	char OilConsumptionStr[4];
	}OILCONSUMPTION;
	U16 SurplusKil;	//剩下公里数
	U16 CarSpeed_5S;
	U32 TotalMil;
	U16 SendTime;

}CAR_INFO;

_BENZE_BUS_EXT_ CAR_INFO CarInfo;
_BENZE_BUS_EXT_ CAR_INFO CarInfoBk;

//--------------------------------------------------------------------
_BENZE_BUS_EXT_ BYTE m_RADAR_last_buff[2];
_BENZE_BUS_EXT_ LIGHT_CAN Sys_CAN_light;
_BENZE_BUS_EXT_ CARTURNER CAN_turner;

_BENZE_BUS_EXT_  BYTE gCarKeyEvent;//miller.tao20160318
_BENZE_BUS_EXT_  BYTE gCarMenuKeyEvent;//miller.tao20160318


_BENZE_BUS_EXT_ RADAR m_RADAR,m_RADAR_Bk;
_BENZE_BUS_EXT_ BMW_CAN m_BMW_CAN;
_BENZE_BUS_EXT_ volatile BYTE m_AUDI_CAN_PowerOn;
_BENZE_BUS_EXT_ BYTE can_door_last_statu;


_BENZE_BUS_EXT_ CARDOORINFO m_CarDoorInfo;//Miller.Tao20141020
_BENZE_BUS_EXT_ CARDOORINFO m_CarDoorInfo_last;//Miller.Tao20141020
_BENZE_BUS_EXT_ BYTE door_show_buff[3],door_index;

_BENZE_BUS_EXT_ CARSPEEDINFO m_CarSpeedInfo;//Miller.Tao20141020
_BENZE_BUS_EXT_ CARMILEINFO m_CarMilesInfo;//Miller.Tao20141020
_BENZE_BUS_EXT_ volatile CARWININFO Sys_CarWinInfo;

_BENZE_BUS_EXT_ volatile FRONTVIEWCNTR g_stuFrontViewCNTR;
_BENZE_BUS_EXT_ BYTE u8BackCurState_ID2;
_BENZE_BUS_EXT_ STR_360_VIEW g_stu360View;

_BENZE_BUS_EXT_ BYTE LeftPushSendFlag;

//-------------------------------------------------------------------
_BENZE_BUS_EXT_ void AudiCan_Key_Process(void);
_BENZE_BUS_EXT_ void AudiCanBus_SendControlCmd(BYTE cmd);
_BENZE_BUS_EXT_ void AudiCanBus_FetchCmdTask(void);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo_Type1(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo_Type2(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo_Type3(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo_Type4(CanRxMsg RxMessage);

_BENZE_BUS_EXT_ void Audi_CanBus_work_data_analytic(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void AudiCan_FetchStallsInfo(CanRxMsg RxMessage);
//_BENZE_BUS_EXT_ void Can_Tx(CAN_TypeDef* CANx,CanTxMsg *TxMessage);
_BENZE_BUS_EXT_ void Audi_CanBus_InputSource_data_analytic(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void BMW_KnobContrl(BYTE bEn);
_BENZE_BUS_EXT_ void BMW_AuxContrl_Task(void);
_BENZE_BUS_EXT_ void BMW_AuxContrl_old_Task(void);
_BENZE_BUS_EXT_ void BMW_OptionKey_Task(void);
_BENZE_BUS_EXT_ void LF_FrontContrl(BYTE cantype,BYTE state,WORD x,WORD y);

/////////////Miller.Tao add,2014-09-10/////////////////////////////
_BENZE_BUS_EXT_ void CAN1_USER_HANDLER(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void CAN2_USER_HANDLER(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CanBus_Contrl_Task(void);
_BENZE_BUS_EXT_ void LF_CanBus_FetchCmdTask(void);
_BENZE_BUS_EXT_ void LF_CANBus_Knob_Task(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CANBus_Stalls_Task(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CanBus_SteerKey_Task(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CanBus_work_data_analytic(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CanBus_Config(void);
_BENZE_BUS_EXT_ BYTE LF_CanBus_FetchCmd(void);
_BENZE_BUS_EXT_ void LF_CanBus_InitVar(void);
_BENZE_BUS_EXT_ void LF_CanBus_PowerOn(CanRxMsg RxMessage);

void AudiA4_CanBus_FetchSteerAngleInfo(CanRxMsg RxMessage);






#endif
