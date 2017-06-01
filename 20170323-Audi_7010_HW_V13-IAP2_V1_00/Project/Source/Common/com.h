#ifndef _COM_H_
#define _COM_H_

#ifdef _COM_C_
  #define _COMDEC_
#else
  #define _COMDEC_ extern
#endif

#include "Type.h"
#include "stm32f10x.h"


//#define PAGE_SIZE  (u16)0x400  /* Page size */   

#if defined (STM32F10X_MD) || defined (STM32F10X_MD_VL)
 #define PAGE_SIZE                         (0x400)    /* 1 Kbyte */
 #define FLASH_SIZE                        (0x20000)  /* 128 KBytes */
#elif defined STM32F10X_CL
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x40000)  /* 256 KBytes */
#elif defined STM32F10X_HD
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x80000)  /* 512 KBytes */
#elif defined STM32F10X_XL
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x100000) /* 1 MByte */
#else 
 #error "Please select first the STM32 device"    
#endif

#define EEPROM_START_ADDRESS   ((u32)(0x08000000+0x400*256-PAGE_SIZE*2))//
//((u32)(0x08000000+0x400*256-PAGE_SIZE*2))//TEST ((u32)(0x08000000+0x400*256-PAGE_SIZE*2)) /*0x803f000 EEPROM emulation start address:*/ 
/* Pages 0 and 1 base and end addresses */
#define PAGE0_BASE_ADDRESS      ((u32)(EEPROM_START_ADDRESS + 0x000))
#define PAGE0_END_ADDRESS       ((u32)(EEPROM_START_ADDRESS + (PAGE_SIZE - 1)))

#define PAGE1_BASE_ADDRESS      ((u32)(EEPROM_START_ADDRESS + PAGE_SIZE))
#define PAGE1_END_ADDRESS       ((u32)(EEPROM_START_ADDRESS + (2 * PAGE_SIZE - 1)))

#define PAGE2_BASE_ADDRESS      ((u32)(EEPROM_START_ADDRESS + 2*PAGE_SIZE))//0x807f800  //0x8040000  78 56 34 12
#define PAGE2_END_ADDRESS       ((u32)(EEPROM_START_ADDRESS + (3 * PAGE_SIZE - 1)))

#define UPGRADE_NO_FINISH           0xABABABAB
#define UPGRADE_FINISH           0x12345678
#define NO_VALID_PAGE           0x00AB
#define ERASED                  0xFFFF     /* PAGE is empty */
#define RECEIVE_DATA         0xEEEE     /* PAGE is marked to receive data */
#define VALID_PAGE              0x0000     /* PAGE containing valid data */

#define	UPDATA_VALUE	0x55015502
#define ApplicationAddress      0x8008000       //APP程序首地址
//#define BackupAddress      0x8000000+0x2000+100*1024       //备份程序首地址
#define ApplicationSize         200*1024          //程序预留空间
#define	UpdataFlagAddress		((u32)(0x08000000+0x400*256-PAGE_SIZE*4))//0x83e000	//是否有升级标志的地址


#define MENU 0X4D
#define PLAY_RECORD 0X43
#define TAKE_PHOTO 0X4E
#define START_RECORD 0X58
#define STOP_RECORD 0X45
#define POW_OFF_STOP 0X50
#define SHOW_VERSION 0X56
#define UP 0X55
#define DOWN 0X44
#define LEFT 0X4C
#define RIGHT 0X52
#define OK  0X4F

#define SW_GPS_CAR_TO_GPS()           GPIO_SetBits(SW_GPS_CAR_PORT,SW_GPS_CAR_PIN)
#define SW_GPS_CAR_TO_CAR()          GPIO_ResetBits(SW_GPS_CAR_PORT,SW_GPS_CAR_PIN)
//#define BACK_PIN_STATUS() (DET_CAM_PORT->IDR&DET_CAM_PIN)


typedef enum
{
	SRC_Stanby=0,
	SRC_Radio=1,
	SRC_DVD=2,
	SRC_NAVI=3,	
	SRC_Bluetooth=4,
	SRC_AUX1=5,
	SRC_AUX2=6,
	SRC_videoplay=7,
	SRC_audioplay=8,
	SRC_vdisc=9,	
	SRC_TV=0x0a,
	SRC_CAM=0x0b,	
	SRC_Ipod=0x0c,
	SRC_VCR=0x0d,//video cassette recorder
	SRC_App=0x0e,
	SRC_Cambox=0x0f,
	//miller.tao add 20150730S
	SRC_ARM=0x10,
	SRC_CVBS=0x11,
	SRC_CarMedia=0x12,
	//miller.tao add 20150730E
	SRC_Off=0x13,		
	SRC_Setup=0x14,	//开机后才能用
	SRC_FrontView=0x15,	//前视摄像头
	SRC_OSD=0x16,	//设置菜单，不切视频源
	SRC_NIG_REC=0x17,
	SRC_REC=0x18,
	SRC_360=0x19,
	SRC_Exit,
}SOURCETYPE;

typedef enum
{
	Video_Input_off =0,
	Video_Input_pv210_cvbs =1,
	Video_Input_aux1 =2,
	Video_Input_aux2=3,//DVR
	Video_Input_tv=4,
	Video_Input_dvr=5,
	Video_Input_dvd_cvbs=6,
	Video_Input_ipod=7,
	Video_Input_cam=8

}VIDEO_INPUT_NUM;

typedef enum
{
	VIDEO_LCD_OUT=1,
	VIDEO_RCA_OUT=2,
	VIDEO_REC_OUT=3
}VIDEO_OUTPU_TYPE;
typedef enum
{
	BT_UNCONNECT=1,
	BT_CONNECT=2,
	BT_CALLEND=3,
	BT_CALLING=4,
	BT_INCOME=5,
	BT_TALKING=6,
	BT_VOICE_START=7,
	BT_VOICE_END=8,
	BT_MUSIC_STOP=10,
	BT_MUSIC_PAUSE=11,
	BT_MUSIC_PLAY=12
}BT_STATUS_TYPE;

typedef enum
{
	Cambox_GPS_pos=1,
	Cambox_Key=2,
}CAMBOX_CONTROL_TYPE;

#define ADDR_OUT1_2_SELECT	0
#define ADDR_OUT3_4_SELECT	1
#define ADDR_OUT5_6_SELECT	2
#define ADDR_INPUT_CLAMP	3
#define ADDR_OUTPUT_GAIN	4




_COMDEC_ BYTE VIDEO_LCD_OUT_buf;
_COMDEC_ BYTE VIDEO_RCA_OUT_buf;

_COMDEC_ BYTE Audioplay_play_status;
_COMDEC_ BYTE Audioplay_play_hour;
_COMDEC_ BYTE Audioplay_play_minute;
_COMDEC_ BYTE Audioplay_play_second;
_COMDEC_ WORD Audioplay_current_track;
_COMDEC_ WORD Audioplay_totle_track;
_COMDEC_ BYTE Audioplay_totle_hour;
_COMDEC_ BYTE Audioplay_totle_minute;
_COMDEC_ BYTE Audioplay_totle_second;

_COMDEC_ BYTE Videoplay_play_status;
_COMDEC_ BYTE Videoplay_play_hour;
_COMDEC_ BYTE Videoplay_play_minute;
_COMDEC_ BYTE Videoplay_play_second;
_COMDEC_ WORD Videoplay_current_track;
_COMDEC_ WORD Videoplay_totle_track;
_COMDEC_ BYTE Videoplay_totle_hour;
_COMDEC_ BYTE Videoplay_totle_minute;
_COMDEC_ BYTE Videoplay_totle_second;

_COMDEC_ BYTE ipod_play_status;
_COMDEC_ BYTE ipod_play_hour;
_COMDEC_ BYTE ipod_play_minute;
_COMDEC_ BYTE ipod_play_second;
_COMDEC_ WORD ipod_current_track;
_COMDEC_ WORD ipod_totle_track;
_COMDEC_ BYTE ipod_totle_hour;
_COMDEC_ BYTE ipod_totle_minute;
_COMDEC_ BYTE ipod_totle_second;

_COMDEC_ BYTE BT_connect_status;
_COMDEC_ BYTE BT_call_status;
_COMDEC_ BYTE BT_voice_status;
_COMDEC_ BYTE BT_music_status;
_COMDEC_ BYTE BT_number[20];


_COMDEC_ BYTE BT_connect_status_last;
_COMDEC_ BYTE BT_music_status_last;
_COMDEC_ BYTE BT_call_status_last;
_COMDEC_ BYTE Audioplay_play_status_last;
_COMDEC_ BYTE Audioplay_current_track_last;
_COMDEC_ BYTE Audioplay_totle_track_last;
_COMDEC_ BYTE ipod_play_status_last;
_COMDEC_ BYTE ipod_current_track_last;
_COMDEC_ BYTE ipod_totle_track_last;




_COMDEC_ void Time_Cnt_Opertion(void);
_COMDEC_ void Turn_source_power(BYTE Source);
_COMDEC_ BYTE ADC_GetValue (BYTE adc_channel);

_COMDEC_ void Video_FMS6501_init(void);
_COMDEC_ void Video_switch(BYTE source);
_COMDEC_ void Video_FMS6501_switch(BYTE source);
_COMDEC_ void Video_FMS6501_REC_switch(BYTE source);
_COMDEC_ void Video_FMS6501_RCA_switch(BYTE source);


_COMDEC_ u16 EE_Init(void);
//_COMDEC_ u16 EE_ReadVariable(u32 VirtAddress, u16* Data);
//_COMDEC_ u16 EE_WriteVariable(u32 VirtAddress, u16 Data);
_COMDEC_ void Read_Eerom_Data(void);
_COMDEC_ void Save_Eerom_Data(void);
_COMDEC_ void Write_Valid_Data(u32 value);


_COMDEC_ void Adjust_Source(BYTE Source);
_COMDEC_ void Source_init(BYTE Source);
_COMDEC_ void Source_init_twozone(BYTE Source);

_COMDEC_ void AUX_Function(void);
_COMDEC_ void CAM_Function(void);
_COMDEC_ void BLUETOOTH_Function(void);
_COMDEC_ BYTE BLUETOOTH_Command(BYTE value);
_COMDEC_ BYTE BLUETOOTH_Command(BYTE value);
_COMDEC_ void GPS_Function(void);	
_COMDEC_ void Videoplay_function(void);
_COMDEC_ BYTE Videoplay_Command(BYTE value);
_COMDEC_ void Audioplay_function(void);
_COMDEC_ BYTE Audioplay_Command(BYTE value);
_COMDEC_ void APPplay_function(void);
_COMDEC_ BYTE APPplay_Command(BYTE value);
_COMDEC_ void VCR_function(void);
_COMDEC_ BYTE VCR_Command(BYTE value);
_COMDEC_ void IPOD_function(void);
_COMDEC_ BYTE Ipod_Command(BYTE value);
_COMDEC_ void Cambox_Function(void);
 _COMDEC_ void Cambox_UartSend(BYTE command, BYTE param);
 _COMDEC_ void Ipod_MUL_Function(void);
 _COMDEC_ void Audioplay_MUL_Function(void);
 _COMDEC_ void Videoplay_MUL_Function(void);
 _COMDEC_ void BLUETOOTH_MUL_Function(void);
 _COMDEC_ void GetLockCode(void);//20131217 test
 
 //_COMDEC_ void Gps_Send_POS(WORD X, WORD Y, BYTE status);
 _COMDEC_ void source_process_fun(void);
 _COMDEC_ void Door_data_pro_fun(void);
 _COMDEC_ void CollisionWarringDeal(void);
 
 _COMDEC_ BYTE CBackTrack_GetAngleIndex(U16 angle_val);
 _COMDEC_ void Adjust_menu_Source(BYTE Source);
 _COMDEC_ void GPS_small_show(void);
 _COMDEC_ void GPS_big_show(void);
 _COMDEC_ void BackAllCheck(void);
#endif



