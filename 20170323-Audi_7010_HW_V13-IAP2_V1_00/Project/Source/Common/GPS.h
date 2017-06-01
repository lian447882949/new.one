#ifndef __GPS_H__
#define __GPS_H__
#ifdef __GPS_C__
#define __GPS_EXTERN__
#else
#define __GPS_EXTERN__  extern
#endif

#include "type.h"

#define MOD_SW_BUF_MAX          20
#define IPC_RX_GROUP_MAX        20

#define IPC_RX_BUF_MAX            50
#define IPC_TX_BUF_MAX            10

#define GPS_TSP_BUF_MAX                 20


typedef struct __GPS_TSP
{
    u16 wPOSX;
    u16 wPOSY;
    u8 uAction;
} GPS_TSP;


typedef struct __GPS_DATA
{
    vu8 uSoundFlag;
    vu8 uGPSExitFlag;
    vu8 uPreSoundFlag;
    vu8 uPreGPSExitFlag;
    u16 wPOSX;
    u16 wPOSY;
    vu8 X;
    vu8 Y;
    u8 uAction;
    vu8 bTouchFlag;
    u8 RxWriteIndex;
    u8 RxReadIndex;
    u8 Rx[IPC_RX_GROUP_MAX][IPC_RX_BUF_MAX + 10];
    u8 RxIndex;
    u8 RxEn;
    u16 RxFinishTimer;

    u16 HandWriteTimer;
	u16 MCUto8823_send_timer;

    GPS_TSP tsp_buf[GPS_TSP_BUF_MAX];
    u8 Tsp_FillIndex;
    u8 Tsp_FetchIndex;

} GPS_DATA;


typedef struct __MODSW_BUF
{

    u8 RxWriteIndex;
    u8 RxReadIndex;
    u8 Rx[MOD_SW_BUF_MAX];

} MODSW_BUF;
__GPS_EXTERN__  MODSW_BUF g_MODSW_BUF;

__GPS_EXTERN__ BYTE gGPSInitOk;//miller.tao20151127
__GPS_EXTERN__ BYTE gGPSSaveOk,gGPSSaveOk2;//miller.tao20151127

#define GPSCMDBUFFMAX 10
#define GPSCMDBUFFLENGTH 16

__GPS_EXTERN__ BYTE gGPSCmdBuffer[GPSCMDBUFFMAX][GPSCMDBUFFLENGTH];
__GPS_EXTERN__ BYTE gGPSCmdWrtIndex;
__GPS_EXTERN__ BYTE gGPSCmdRdIndex;

__GPS_EXTERN__ BYTE gNaviStatus;

//__GPS_EXTERN__ BYTE gNaviVoiceStatus;

__GPS_EXTERN__ BYTE gNaviVoiceCnt;

#define CMD_RT_BTGPS_on_BT                    0x90
#define CMD_RT_BTGPS_on_GPS                 0x92
#define CMD_RT_BTGPS_on_GPS_calibration                0xb1
#define CMD_RT_GPS_on_music                   0xa1
#define CMD_RT_GPS_on_vedio               0xa0
#define	RT_MP5_cmd_Instructions		0x13

__GPS_EXTERN__ u16 gNaviCnt;
__GPS_EXTERN__ u8 gNaviSendFlag;
__GPS_EXTERN__ u8 gNaviSystemOn;


__GPS_EXTERN__  GPS_DATA g_GPS_DATA;
__GPS_EXTERN__ void Navi_Controll_Send(BYTE cmd);
__GPS_EXTERN__ void Navi_Cmd_Proc(void);


/*==============Miller.Tao20151126===============*/
__GPS_EXTERN__ void Panel_Key_Send(BYTE keycode);
//__GPS_EXTERN__ void NAVI_PROCESS(msg_data_t op);
__GPS_EXTERN__ void NAVI_PROCESS(void);

__GPS_EXTERN__ void Init_navi_send(BYTE status);
__GPS_EXTERN__ void mcu_version_send(void);
 __GPS_EXTERN__ void Init_Navi_Variable(void);

__GPS_EXTERN__  void BL_Control_Send(BYTE cmd);
__GPS_EXTERN__ void Sys_SRC_Send(BYTE src);
__GPS_EXTERN__ void Sys_BTCall_Send(BYTE act);
__GPS_EXTERN__ void SoftReset(void);
__GPS_EXTERN__ void Sys_Time_Send(BYTE year_h,BYTE year_L,BYTE mon,BYTE day,BYTE hour,BYTE min,BYTE sec);



#define ZX_KEY_UP 0x00//0x03
#define ZX_KEY_DOWN 0x01//0x02
#define ZX_KEY_LEFT 0x02
#define ZX_KEY_RIGHT 0x03
#define ZX_KEY_LEFT_PUSH 0x04
#define ZX_KEY_RIGHT_PUSH 0x06

#define ZX_KEY_ENTER 0x07
#define ZX_KEY_INC 0x08
#define ZX_KEY_DEC 0x09
#define ZX_KEY_MEDIA 0x0A
#define ZX_KEY_RADIO 0x0B
#define ZX_KEY_MENU 0x0C
#define ZX_KEY_TEL 0x0D
#define ZX_KEY_NAVI 0x0E
#define ZX_KEY_BACK 0x0F
#define ZX_KEY_OPTION 0x10

#define ZX_KEY_Invalide 0xFF


#endif

