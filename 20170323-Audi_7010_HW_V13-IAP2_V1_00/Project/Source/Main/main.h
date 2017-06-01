/******************** (C) COPYRIGHT 2011 APTENON ********************
 * File Name          : main.h
 * Author             : edwin kang
 * Version            : V0.0
 * Date               : 09/8/2011
 * Description        : main.c head file.
 *******************************************************************************/
#ifndef __MAIN_H__
#define __MAIN_H__
#ifdef __MAIN_C__
#define __MAIN_EXTERN__
#else
#define __MAIN_EXTERN__  extern
#endif
#include "type.h"
#include "stm32f10x.h"

/**
  * @brief  IOE DMA Direction
  */
typedef enum
{
    I2C1_DMA_TX = 0,
    I2C1_DMA_RX = 1
} I2C1_DMADirection_TypeDef;

/**
  * @brief  TSENSOR Status
  */
typedef enum
{
    I2C1_OK = 0,
    I2C1_FAIL
} I2C1_Status_TypDef;
#define BACKLIGHT_TIMER_LEN  600//ms,700
#define I2C1_DR_ADD ((uint32_t)0x40005410)

#define I2C1_DMA_TX_CHANNEL              DMA1_Channel6
#define I2C1_DMA_RX_CHANNEL              DMA1_Channel7
#define I2C1_DMA_TX_TCFLAG               DMA1_FLAG_TC6
#define I2C1_DMA_RX_TCFLAG               DMA1_FLAG_TC7



#define I2C_SHORT_TIMEOUT         ((uint32_t)0x1000)
#define I2C_LONG_TIMEOUT         ((uint32_t)(10 * I2C_SHORT_TIMEOUT))
#define I2C_KEYBOARD_SlAVE_ADD    0x4E


#define JOY_SHIFT_LEFT                            0x01
#define JOY_SHIFT_RIGHT                          0x02
#define JOY_SHIFT_UP                               0x04
#define JOY_SHIFT_DN                               0x08
#define JOY_SHIFT_LEFT_KEEP                            0x10
#define JOY_SHIFT_RIGHT_KEEP                          0x20
#define JOY_SHIFT_UP_KEEP                               0x40
#define JOY_SHIFT_DN_KEEP                               0x80


#define MSG_ACTION_BOUNCE         0x00
#define MSG_ACTION_PRESSED       0x01
#define MSG_ACTION_KEEP              0x02
#define MSG_ACTION_MOVE             0x03
#define MSG_ACTION_MOVE_BOUNCE             0x04
#define MSG_ACTION_NONE			0x05

#define POINT_1_BOUNCE 0x06
#define POINT_2_BOUNCE 0x07
#define POINT_ALL_BOUNCE 0x08

#define POINT_1_KEEP 0x09
#define POINT_2_KEEP 0x0A

#define POINT_1_PRESSED 0x0B
#define POINT_2_PRESSED 0x0C


#define MSG_ACTION_1_PRESSED 0x01
#define MSG_ACTION_1_BOUNCE 0x00
#define MSG_ACTION_2_PRESSED 0x11 
#define MSG_ACTION_2_BOUNCE 0x10


#define SYSTEM_POWER_INIT                                                 0x00
#define SYSTEM_POWER_OFF                                                  0x01
#define SYSTEM_POWER_ON                                                   0x02



#define SYSTEM_MODE_IN_DVD         0x0
#define SYSTEM_MODE_IN_SD          0x1
#define SYSTEM_MODE_IN_USB         0x2
#define SYSTEM_MODE_IN_RADIO       0x3
#define SYSTEM_MODE_IN_NAVI        0x4
#define SYSTEM_MODE_IN_CAR_MEDIA   0x5
#define SYSTEM_MODE_IN_TV          0x6
#define SYSTEM_MODE_IN_BT          0x7
#define SYSTEM_MODE_IN_AUX         0x8//video
#define SYSTEM_MODE_IN_IPOD        0x9
#define SYSTEM_MODE_IN_CD          0xA
#define SYSTEM_MODE_IN_CARREC          0xB

#define SYSTEM_MODE_IN_REAR     0xC
#define SYSTEM_MODE_IN_SYN       0xd
#define SYSTEM_MODE_IN_mp5_music       0xe
#define SYSTEM_MODE_IN_SETREAR 0x0F //Miller.Tao20150112
//#define SYSTEM_MODE_IN_AUX_CMMB 0x10

#define SYSTEM_MODE_IN_MAX            0x11




#define SYS_PowerOn()           GPIO_SetBits(GPIOC,P_POWER_MAIN)
#define SYS_PowerOff()          GPIO_ResetBits(GPIOC,P_POWER_MAIN)

#define TW8836_PowerOn()           GPIO_SetBits(GPIOB,GPIO_Pin_5)
#define TW8836_PowerOff()          GPIO_ResetBits(GPIOB,GPIO_Pin_5)


#define HDMI_PowerOn()           GPIO_SetBits(GPIOA,P_HDMI_EN)
#define HDMI_PowerOff()          GPIO_ResetBits(GPIOA,P_HDMI_EN)

#define LVDS_PowerOn()           GPIO_SetBits(GPIOA,P_LVDS_EN)
#define LVDS_PowerOff()          GPIO_ResetBits(GPIOA,P_LVDS_EN)

#define TFT_LightOn()           GPIO_SetBits(GPIOB,P_TFT_PWR)
#define TFT_LightOff()          GPIO_ResetBits(GPIOB,P_TFT_PWR)

//#define CAN_PowerOn()           GPIO_SetBits(GPIOA,P_CAN_PWR_EN)
//#define CAN_PowerOff()          GPIO_ResetBits(GPIOA,P_CAN_PWR_EN)

#define CAN_STB_SET()           GPIO_SetBits(CAN_STB_PORT,CAN_STB_PIN)
#define CAN_STB_RESET()         GPIO_ResetBits(CAN_STB_PORT,CAN_STB_PIN)

#define CAN_EN_SET()             GPIO_SetBits(CAN_EN_PORT,CAN_EN_PIN)
#define CAN_EN_RESET()           GPIO_ResetBits(CAN_EN_PORT,CAN_EN_PIN)

#define POWER_RearVideoOn()           GPIO_SetBits(POWER_REAR_CAMERA_PORT,POWER_REAR_CAMERA_PIN)
#define POWER_RearVideoOff()          GPIO_ResetBits(POWER_REAR_CAMERA_PORT,POWER_REAR_CAMERA_PIN)

//#define Car_Recorder_PowerOn()           GPIO_SetBits(GPIOC,P_CarRecorder_PWR)
//#define Car_Recorder_PowerOff()          GPIO_ResetBits(GPIOC,P_CarRecorder_PWR)
#define POWER_CarRecOn()           GPIO_SetBits(POWER_CarRec_PORT,POWER_CarRec_PIN)
#define POWER_CarRecOff()          GPIO_ResetBits(POWER_CarRec_PORT,POWER_CarRec_PIN)

#define NAVI_OE_Set()	GPIO_SetBits(NAVI_OE_PORT,NAVI_OE_PIN)
#define NAVI_OE_Reset()	GPIO_ResetBits(NAVI_OE_PORT,NAVI_OE_PIN)

#define R24_OE_Set()	GPIO_SetBits(R24_OE_PORT,R24_OE_PIN)
#define R24_OE_Reset()	GPIO_ResetBits(R24_OE_PORT,R24_OE_PIN)

#define CAMERA_OE_Set()	GPIO_SetBits(CAMERA_OE_PORT,CAMERA_OE_PIN)
#define CAMERA_OE_Reset()	GPIO_ResetBits(CAMERA_OE_PORT,CAMERA_OE_PIN)

#define DLVDS_OE_PORT_RESET()	GPIO_ResetBits(APIX_OE_PORT,APIX_OE_PIN)
#define DLVDS_OE_PORT_SET()		GPIO_SetBits(APIX_OE_PORT,APIX_OE_PIN)




//#define ACC_PIN_STATUS()  GPIO_ReadInputDataBit(P_ACC_PORT,P_ACC_DET)//(P_ACC_PORT->IDR&P_ACC_DET)//0//


#define TOUCHPRESS			1
#define TOUCHMOVED			2
#define TOUCHEND			3
#define TOUCHCLICK			4
#define TOUCHDOUBLECLICK	5
#define TOUCHMOVE			10
#define TOUCHMOVEUP			11
#define TOUCHMOVEDOWN		12
#define TOUCHMOVELEFT		13
#define TOUCHMOVERIGHT		14
#define TOUCHPRESSEDDB		15
#define TOUCH_DOWN			0x01
#define TOUCH_BUTTON		0x02
#define TOUCH_CLICK			0x04
#define TOUCH_DRAG			0x08
#define TOUCH_NULL			  0xff


typedef struct
{
    u8 u8CurState;
    u8 u8PreState;
    //u8 u8SavedState;
    u8 uWaitAck;
    vu32 u32CheckDelayStart; //ms
    vu32 u32ACCPoweroffDelay;
    //
    u8 uAccSynSwit;
    //
    u8 uAccActionProgress;
    //
    vu16 wPowerWamkeupTimer;

	WORD wOptionTimeout;
	WORD wPowerOnByCanPwr;
    WORD wPowerOnByCanTimer2;
    WORD wRearOnByCanTimer;
    WORD WVedio_show_timer;
    WORD wKnobAuxContrlTimer;
} ACCCNTR;

typedef struct __SYSTEMSRCREQ
{
   u8 uReqFlag;
   u8 uPreSrc;
   u8 CurSrc;
   u8 RingCallingFlag;
   u8 uCarPhoneFlag;//原车蓝牙
   u8 uMediaStatus;
   u8 MediaStatusSendFlag;
   u8 carlockflag;
     u8 car_keylockflag;//寻车
    u16 soft_mute_Delay;
	u8 event_occurse;
}SYSSRCREQ;
__MAIN_EXTERN__ ACCCNTR g_stuCurPower;
__MAIN_EXTERN__ SYSSRCREQ g_stuSYSSRC;

#define QUE_MSG_NUMBER  10//10
#define MSG_BUF_MAX         20 //30//10,Miller.tao20151127,increase the buffer size
#define QUE_CMD_NUMBER 10

typedef struct msg_data_t_
{
    U8 msgbuf[MSG_BUF_MAX];
    U8 mtype, flag;
} msg_data_t;

#ifdef FLASH_EEROM_DEBUG
_MAINDEC_	SystemSettingType  Sys;
#else
#define Sys  EEPROM_DATA.byte_buf
#endif
__MAIN_EXTERN__ union EEPROM_unit EEPROM_DATA;
__MAIN_EXTERN__ unsigned long write_buf_back[512];	//EEPROM的数据备份

__MAIN_EXTERN__	BYTE System_Power_Status;
__MAIN_EXTERN__	BYTE Powerstany_Status;
__MAIN_EXTERN__	BYTE Powerwork_init_Status;
__MAIN_EXTERN__	BYTE Poweroff_init_Status;
__MAIN_EXTERN__	BYTE Power_canbuswait_Status;

__MAIN_EXTERN__	WORD Powerstany_count;//==1  100MS
__MAIN_EXTERN__	WORD Powerwork_init_count;//==1  100MS
__MAIN_EXTERN__	WORD Poweroff_init_count;//==1  100MS
__MAIN_EXTERN__	WORD Power_canbuswait_count;//==1  100MS

__MAIN_EXTERN__ BYTE	System_init_ok;//==1  ok
__MAIN_EXTERN__ BYTE	System_openlogo_init_ok;//==1  ok
__MAIN_EXTERN__ BYTE	System_save_ok;//==1  ok

__MAIN_EXTERN__ 	BYTE System_reset_auto_on;
__MAIN_EXTERN__ 	BYTE Canbus_power_on_id;

//===for TW8823 or TW8836,S,Miller.tao20150709====
__MAIN_EXTERN__ BYTE	 	MainIsCvbs_ID;


__MAIN_EXTERN__ BYTE	 	CVBS_Status;
__MAIN_EXTERN__ BYTE	 	CSYNC_Status;
__MAIN_EXTERN__ BYTE	 	main_signal_Status;
__MAIN_EXTERN__ BYTE	 	pip1_signal_Status;
__MAIN_EXTERN__ BYTE	 	pip2_signal_Status;
__MAIN_EXTERN__ BYTE	 	main_signal_last_Status;
__MAIN_EXTERN__ BYTE	 	pip1_signal_last_Status;
__MAIN_EXTERN__ BYTE	 	pip2_signal_last_Status;

__MAIN_EXTERN__ BYTE	 	has_signal_Count;
__MAIN_EXTERN__ BYTE	 	no_signal_Count;
//===for TW8823 or TW8836,E,Miller.tao20150709====
__MAIN_EXTERN__ BYTE Uart_data_temp;
__MAIN_EXTERN__ 	BYTE 		 ACC_volt_eeror;//==1 volt error

__MAIN_EXTERN__ WORD Time_Bus_Cnt;
__MAIN_EXTERN__ BYTE Time_10ms_arrival;
__MAIN_EXTERN__ BYTE Time_50ms_arrival;
__MAIN_EXTERN__ BYTE Time_100ms_arrival;
__MAIN_EXTERN__ BYTE Time_300ms_arrival;
__MAIN_EXTERN__ BYTE Time_500ms_arrival;
__MAIN_EXTERN__ BYTE Time_1s_arrival;
__MAIN_EXTERN__ BYTE Time_5s_arrival;
__MAIN_EXTERN__ BYTE Time_minute_arrival;
__MAIN_EXTERN__ BYTE IWDG_load_Count;
__MAIN_EXTERN__ BYTE U8Tiemr_connect_press;
__MAIN_EXTERN__ BYTE connect_press_one,connect_press;


//__MAIN_EXTERN__ WORD wPowerOnByCanTimer;
//__MAIN_EXTERN__ WORD wPowerOnByCanTimerAux ;


__MAIN_EXTERN__ vu16 CCR1_Val;
__MAIN_EXTERN__ vu16 CCR2_Val;
__MAIN_EXTERN__ vu16 CCR3_Val;
__MAIN_EXTERN__ vu16 CCR4_Val;
__MAIN_EXTERN__ BYTE byTouch_buff;
__MAIN_EXTERN__ BYTE byTouchStatus;
__MAIN_EXTERN__ BYTE byTouch_moveStatus;

__MAIN_EXTERN__ BYTE PreTouchStatus;
__MAIN_EXTERN__ BYTE Can_key_cmd_meun_mainosd,Can_key_cmd_meun_subosd;
__MAIN_EXTERN__ BYTE Can_key_cmd;
__MAIN_EXTERN__ BYTE Can_key_cmd_meun_request;

#define TW88_VER_LEN 9
__MAIN_EXTERN__ BYTE Tw88_version[TW88_VER_LEN];

__MAIN_EXTERN__ vu16 wLockWinTimer2;//millertao20150417
__MAIN_EXTERN__ vu16 wLockWinTimeout;//millertao20150417
__MAIN_EXTERN__ vu16 wLockWinTimer;//millertao20150409
__MAIN_EXTERN__ BYTE gCarTypeCode;//miller.tao20150704  =0xf1 2X
//__MAIN_EXTERN__ PIP_TYPE gPIP_Status;//miller.tao20160303
__MAIN_EXTERN__ BYTE gSyncToCarAux;//miller.tao20160413

#if 0
__MAIN_EXTERN__ void Main_SetSysClockToHSE(void);
__MAIN_EXTERN__ void NVIC_Configuration(void);
__MAIN_EXTERN__ void USART_Configuration(void);
__MAIN_EXTERN__ void Main_SysTick_Config(void);
__MAIN_EXTERN__ void TIMER_Configuration(void);
__MAIN_EXTERN__ void ADC_Configuration(void);
//__MAIN_EXTERN__ void DMA_Configuration(void);
__MAIN_EXTERN__ void EXIT_Configuration(void);
__MAIN_EXTERN__ void CAN_Configuration(void);
__MAIN_EXTERN__ void NVIC_STANBY_CAN_Configuration(void);
__MAIN_EXTERN__ void System_Standby_Reset_ClkSetup(void);
__MAIN_EXTERN__ void System_Normal_ClkSetup(void);
__MAIN_EXTERN__ void System_IO_Standby_Reset_Setup(void);
__MAIN_EXTERN__ void NVIC_RTC_Configuration(void);
__MAIN_EXTERN__ void I2C_Configuration(void);
__MAIN_EXTERN__ void GPIO_I2C_Config(bool bInput);
__MAIN_EXTERN__ void GPIO_BT_Configuration(void);
__MAIN_EXTERN__ void GPIO_Configuration(void);

#endif
//=======================

__MAIN_EXTERN__ void Main_process(void);
__MAIN_EXTERN__ void Power_Off(void);
__MAIN_EXTERN__ void Wait_System_On(void);
__MAIN_EXTERN__ void  System_on(void);
__MAIN_EXTERN__ void System_Init(void);

__MAIN_EXTERN__ void MCU_Init(void);
__MAIN_EXTERN__ void Init_GlobalVariables(void);
__MAIN_EXTERN__ void Read_project(void);
__MAIN_EXTERN__ void Gps_Send_Double_POS(WORD X, WORD Y, BYTE status);



#endif
