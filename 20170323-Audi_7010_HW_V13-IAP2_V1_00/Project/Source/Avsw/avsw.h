/******************** (C) COPYRIGHT 2011  ********************
 * File Name          : avsw.h
 * Author             : edwin kang
 * Version            : V0.0
 * Date               : 09/8/2011
 * Description        : avsw.c head file.
 *******************************************************************************/
#ifndef _AVSW_H_
#define _AVSW_H_
#ifdef _AVSW_C_
#define _AVSW_EXT_
#else
#define _AVSW_EXT_  extern
#endif
#define AV_A_SLAVE_ADD                0x8C
#define AV_V_SLAVE_ADD                0x06

#define AV_TDA7719_SLAVE_ADD                0x88 //Miller.tao20151205


#define VOLUME2348_MAX         34
#define MAIN_GAIN2348_MAX         16
#define SUB_GAIN2348_MAX         16

#if 1	//modify by Feng 20161026 

#define AV_i2cSetSCL(is_hl)  	{                      \
  if(is_hl) AV_IIC_CLK_PORT->BSRR=AV_IIC_CLK_PIN;\
  else AV_IIC_CLK_PORT->BRR=AV_IIC_CLK_PIN;\
  }
#define AV_i2cSetSDA(is_hl)	{                      \
  if(is_hl) AV_IIC_DAT_PORT->BSRR=AV_IIC_DAT_PIN;\
  else AV_IIC_DAT_PORT->BRR=AV_IIC_DAT_PIN;\
  }
#define AV_i2cSCL_PIN_STATUS()	(AV_IIC_CLK_PORT->IDR&AV_IIC_CLK_PIN)
#define AV_i2cSDA_PIN_STATUS()     (AV_IIC_DAT_PORT->IDR&AV_IIC_DAT_PIN)

#else
	#define AV_i2cSetSCL(is_hl)  	{                      \
  if(is_hl) TDA7729_IIC_CLK_PORT->BSRR=TDA7729_IIC_CLK_PIN;\
  else TDA7729_IIC_CLK_PORT->BRR=TDA7729_IIC_CLK_PIN;\
  }
#define AV_i2cSetSDA(is_hl)	{                      \
  if(is_hl) TDA7729_IIC_DAT_PORT->BSRR=TDA7729_IIC_DAT_PIN;\
  else TDA7729_IIC_DAT_PORT->BRR=TDA7729_IIC_DAT_PIN;\
  }
#define AV_i2cSCL_PIN_STATUS()	(TDA7729_IIC_CLK_PORT->IDR&TDA7729_IIC_CLK_PIN)
#define AV_i2cSDA_PIN_STATUS()     (TDA7729_IIC_DAT_PORT->IDR&TDA7729_IIC_DAT_PIN)


#endif



//#define McuSetRearOutAudioMuteOn()           GPIO_SetBits(MUTE_ALL_OUT_MUTE_PORT,MUTE_ALL_OUT_MUTE_PIN)
//#define McuSetRearOutAudioMuteOff()          GPIO_ResetBits(MUTE_ALL_OUT_MUTE_PORT,MUTE_ALL_OUT_MUTE_PIN)

#define McuSetNaviMuteOn()           GPIO_SetBits(MUTE_NAVI_MUTE_PORT,MUTE_NAVI_MUTE_PIN)
#define McuSetNaviMuteOff()          GPIO_ResetBits(MUTE_NAVI_MUTE_PORT,MUTE_NAVI_MUTE_PIN)



#define VOL_MAX                            30
#define GPS_VOLUME_MIN                      0
#define GPS_VOLUME_MAX                     32

#define E_INPUT_SOURCE_TUNER     0x00
#define E_INPUT_SOURCE_CD        0x01
#define E_INPUT_SOURCE_MD        0x02
#define E_INPUT_SOURCE_CDC       0x03
#define E_INPUT_SOURCE_AUX       0x04
#define E_INPUT_SOURCE_NAVI      0x05
#define E_INPUT_SOURCE_AC3       0x06
#define E_INPUT_SOURCE_MUTE      0x07
#define E_INPUT_SUBSOURCE_MAIN   0x08
#define E_INPUT_SUBSOURCE_PRE    0x09
#define E_INPUT_SUBSOURCE_AC0    0x0A
#define E_INPUT_SUBSOURCE_AC1    0x0B
#define E_INPUT_SUBSOURCE_AC2    0x0C
#define E_INPUT_SUBSOURCE_AC3    0x0D
#define E_INPUT_SOURCE_NUM       0x0E

#define E_AUDIO_SOURCE_CMMB_DVB_TV   0x00
#define E_AUDIO_SOURCE_CMMB_MP5      0x01
#define E_AUDIO_SOURCE_CAM3          0x02
#define E_AUDIO_SOURCE_IPOD          0x03
#define E_AUDIO_SOURCE_SPK           0x04
#define E_AUDIO_SOURCE_AV            0x05
#define E_AUDIO_SOURCE_GPS           0x06
#define E_AUDIO_SOURCE_DVD           0x07
#define E_AUDIO_SOURCE_MUTE          0x08
#define E_AUDIO_SOURCE_RAD           0x09
#define E_EXINPUT_SOURCE_NUM         0x0a

#define E_VIDEO_SOURCE_CMMB_GPS_MP5   0x00
#define E_VIDEO_SOURCE_CAM1 0x01
#define E_VIDEO_SOURCE_CAM2 0x02
#define E_VIDEO_SOURCE_CAM3 0x03
#define E_VIDEO_SOURCE_AV 0x04
#define E_VIDEO_SOURCE_CMMB_DVB_TV 0x05
#define E_VIDEO_SOURCE_NEWDVD 0x06
#define E_VIDEO_SOURCE_NEWIPOD 0x07
#define E_VIDEO_SOURCE_MUTE 0x08
#define E_VIDEO_SOURCE_NUM 0x09

//TDA7719,Miller.Tao20151207
//input config 
#define CFG0 0x00
#define CFG1 0x20
#define CFG2 0x40
#define CFG3 0x60
#define CFG4 0x80
#define CFG5 0xA0
#define CFG6 0xC0
#define CFG7 0xE0
//input channel
#define CH_IN0 0x00
#define CH_IN1 0x01
#define CH_IN2 0x02
#define CH_IN3 0x03
#define CH_IN4 0x04
#define CH_IN5 0x05
#define CH_IN6 0x06
#define CH_IN7 0x07
//define subadr 0
#define MS_FG_MD1 0x00 //MS:main selector
#define MS_FG_MD2 0x08
#define MS_INPUT_GAIN_0dB 0x00
#define MS_INPUT_GAIN_3dB 0x10
//define output path
#define OUT_MAIN_PATH 0x10//0x00
#define OUT_DIRC_PATH 0x00//

//==========
#define E_INPUT_SOURCE_QD1     0x00
#define E_INPUT_SOURCE_QD2        0x01
#define E_INPUT_SOURCE_QD3        0x02
#define E_INPUT_SOURCE_QD4       0x03
#define E_INPUT_SOURCE_SE1       0x04
#define E_INPUT_SOURCE_SE2      0x05
#define E_INPUT_SOURCE_SE3       0x06
#define E_INPUT_SOURCE_SE4     0x07

typedef enum ___SYSTEM_IN_SOURCE
{
    E_SYSTEM_INPUTSOURCE_RADIO, E_SYSTEM_INPUTSOURCE_CMMB_GPS_MP5,
    E_SYSTEM_INPUTSOURCE_CAM1, E_SYSTEM_INPUTSOURCE_CAM2,
    E_SYSTEM_INPUTSOURCE_CAM3, E_SYSTEM_INPUTSOURCE_AV,
    E_SYSTEM_INPUTSOURCE_CMMB_DVB_TV, E_SYSTEM_INPUTSOURCE_NEWDVD,
    E_SYSTEM_INPUTSOURCE_NEWIPOD, E_SYSTEM_INPUTSOURCE_BT,
    E_SYSTEM_INPUTSOURCE_MUTE, E_SYSTEM_INPUTSOURCE_GPS,
    E_SYSTEM_INPUTSOURCE_MP5,
    E_SYSTEM_INPUTSOURCE_NUM,
} SYSTEM_IN_SOURCE;
typedef struct
{
    SYSTEM_IN_SOURCE uCurMainInputSource;
    SYSTEM_IN_SOURCE uCurSpkInputSource;
    SYSTEM_IN_SOURCE uCurSub1InputSource;
    SYSTEM_IN_SOURCE uCurSub2InputSource;
} SYSTEM_INPUT_SOURCE;

typedef struct SYS_AUDIO
{
    u8 uSysVolume;
    u8 uMuteFlag;
    u8 uTreb;
    u8 uBass;
    u8 uMid;
    u8 uFad;
    u8 uBal;
    u8 uSubwoofer;
} SYS_AUDIO_DATA;




_AVSW_EXT_ unsigned char AudioI2CBuf[30];
_AVSW_EXT_ unsigned char VideoI2CBuf[5];
_AVSW_EXT_ SYS_AUDIO_DATA struSYS_AUDIO_DATA;
_AVSW_EXT_ SYSTEM_INPUT_SOURCE g_stuSYSTEM_INPUT_SOURCE;
_AVSW_EXT_ BYTE Audio_IC_Addr;


//audio
_AVSW_EXT_ void Audio_Init(void);
_AVSW_EXT_ void De_Audio_SetGpsVol(u8 vol);
_AVSW_EXT_ void De_Audio_SetVol(u8 vol, u8 uAdjVolMode);

_AVSW_EXT_ void AudioAUX2Source(BYTE subsource2);
_AVSW_EXT_ void AudioAUX1Source(BYTE subsource1);
_AVSW_EXT_ void AudioMainSPKSource(BYTE Rearource);
_AVSW_EXT_ void AudioMainSource(BYTE source);

//video
_AVSW_EXT_ void VideoAux2Source(BYTE Subsource2);
_AVSW_EXT_ void VideoAux1Source(BYTE Subsource1);
_AVSW_EXT_ void VideoMainSource(BYTE Mainsource);
_AVSW_EXT_ void Video_Init(void);
_AVSW_EXT_ void VideoSwitch(void);
_AVSW_EXT_ void Audio_Checked(void);
_AVSW_EXT_ void SysMainModeAudioLoad(BYTE mode);
_AVSW_EXT_ void AduioSwitchTask(void);
_AVSW_EXT_ void EnableNaviAudiout(void);
_AVSW_EXT_ void DisableNaviAudiout(void);


#endif
