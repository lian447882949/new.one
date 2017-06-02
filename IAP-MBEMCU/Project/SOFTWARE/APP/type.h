#ifndef TYPE_H
#define TYPE_H
//#include "compile.h"

//#include "tda7705.h"


#define FAR
#define CONST  static const //const	

#define TOUCH_PUSH		0x00
#define TOUCH_MOVE	0x01
#define TOUCH_RELEASE		0x02

//#define NULL					((void *) 0)//0xff	//ÎŞĞ§Âë

typedef unsigned char BYTE;
typedef unsigned char Byte;
typedef unsigned char UCHAR;
typedef unsigned int UINT;
typedef unsigned int WORD;
typedef	unsigned long 		DWORD;

//typedef unsigned char uint8_t;
//typedef unsigned int uint16_t;
//typedef	unsigned long 		uint32_t;


//typedef _bit			BIT;	// 1bit
typedef unsigned char 	BIT;	// 8bit

//typedef unsigned char 	UCHAR;	// 8bit
typedef unsigned char 	U08;
typedef unsigned char 	U8;

typedef signed char		SCHAR;
typedef signed char		S08;
//typedef unsigned int	UINT;	// 16bit
typedef unsigned int	U16;
typedef signed int		SINT;
typedef signed int		S16;
typedef unsigned long	ULONG;	// 32bit
typedef unsigned long	U32;
typedef signed long		SLONG;
typedef signed long		S32;
typedef unsigned char	BOOL;
//typedef unsigned char	BYTE;	//  8bit
//typedef unsigned short	WORD;	// 16bit
//typedef unsigned long	DWORD;	// 32bit
typedef float			F32;	// 32bit
typedef double			D64;	// 64bit

#define FAR
//typedef FAR CONST const;

typedef enum
{
    Power_acc_off=0,
    Powerstanby=1,
    Powerwork_init=2,
    Powerwork=3,
    Poweroff_init=4,
    Power_canbuswait_init=5,
    Power_back_opensystem=6,

} CP_PowerMode;
typedef enum
{
    Powerstanby_start=0,
    Powerstanby_ok=1,
    Powerstanby_exit=2,
} CP_Powerstany_init;
typedef enum
{
    Powerwork_init_start=0,
    Powerwork_init_wait=1,
    Powerwork_init_process=2,
    Powerwork_init_ok=3,
    Powerwork_init_exit=4,
    Powerwork_init_back=5,
} CP_Powerwork_init;

typedef enum
{
    Poweroff_init_start=0,
    Poweroff_init_ok=1,
    Poweroff_init_exit=2,
} CP_Poweroff_init;

typedef enum
{
    Power_canbuswait_start=0,
    Power_canbuswait_save=1,
    Power_canbuswait_ok=2,
    Power_canbuswait_exit=3,
} CP_Stanby_init;

typedef enum
{
    disable = 0,
    enable = 1
} EnableState;


//#define VALID	 0X55
#define INVALID 	 0xff
typedef struct
{
    UCHAR current_point:4;
    UCHAR backup_point:4;
} multi_freq_alignment;


typedef struct
{
    BYTE lsb;
    BYTE msb;

} WORD_BASE;



typedef struct
{
    BYTE min;
    BYTE sec;
} TRACK_TIME;

typedef struct
{
    BYTE min;
    BYTE sec;
    BYTE flame;
} TRACK_TIME_FLAME;

typedef struct
{
    unsigned int sec;
    BYTE min;
    BYTE hour;
} TIME;

struct	byte_struct
{
    unsigned char	byte_0;			/* MSB */
    unsigned char	byte_1;
    unsigned char	byte_2;
    unsigned char	byte_3;			/* LSB */
};

union DWORD_BYTE
{
    DWORD word_field;			/*define char field of union*/
    struct byte_struct byte_field;			/*define bit field of union*/
};

struct	bit_struct
{
    unsigned char	bit0:1;			/* MSB */
    unsigned char	bit1:1;
    unsigned char	bit2:1;
    unsigned char	bit3:1;
    unsigned char	bit4:1;
    unsigned char	bit5:1;
    unsigned char	bit6:1;
    unsigned char	bit7:1;			/* LSB */
};

union char_bit
{
    unsigned char char_field;			/*define char field of union*/
    struct bit_struct bit_field;			/*define bit field of union*/
};





struct	BandInfo
{
    unsigned char	Modulation;
    unsigned int	StartFreq;
    unsigned int	MaxFreq;
    unsigned char	StepFreq;
    unsigned char AutoStepFreq;


    unsigned int	PresetMem[6];

};

/*define the included bands in this country*/
struct Country_Info
{
    unsigned char	Max_Band;
    unsigned char	BandType[6];
};

union char_int
{
    unsigned int dint;
    unsigned char dchar[2];
};

union char_long
{
    unsigned char dchar[4];
    unsigned long dlong;
};

//////////////////////////////////////////////
// Macro
//////////////////////////////////////////////


#define HIBYTE_REF(addr)          (BYTE )  (addr>>8)
#define LOBYTE_REF(addr)          (BYTE ) addr
#define MAKEWORD(value1, value2)  (((WORD)(value1)) * 0x100) + (value2)

#define MAKE_DWORD(value3, value2,value1,value0) \
					(((DWORD)(value3)) * 0x1000000)+(((DWORD)(value2)) * 0x10000)\
					+(((DWORD)(value1)) * 0x100) + (DWORD)(value0)

#define H3BYTE(value)             ((BYTE)((value) / 0x1000000))
#define H2BYTE(value)             ((BYTE)((value) / 0x10000))
#define HIBYTE(value)             ((BYTE)((value) / 0x100))
#define LOBYTE(value)             ((BYTE)(value))

#define HINIBBLE(value)           ((value) / 0x10)
#define LONIBBLE(value)           ((value) & 0x0f)

#define max(a, b)                 (((a) > (b)) ? (a) : (b))
#define min(a ,b)                 (((a) < (b)) ? (a) : (b))

//////////////////////////////////////////////
// Others
//////////////////////////////////////////////
#define _ENABLE      1
#define _DISABLE     0


#define _HIGH    1
#define _LOW     0


#define     H   0
#define     L   1

#define I2C_ACKNOWLEDGE        _LOW
#define I2C_NON_ACKNOWLEDGE    _HIGH

#define _BIT0	0x0001
#define _BIT1	0x0002
#define _BIT2	0x0004
#define _BIT3	0x0008
#define _BIT4	0x0010
#define _BIT5	0x0020
#define _BIT6	0x0040
#define _BIT7	0x0080
#define _BIT8	0x0100
#define _BIT9	0x0200
#define _BIT10	0x0400
#define _BIT11	0x0800
#define _BIT12	0x1000
#define _BIT13	0x2000
#define _BIT14	0x4000
#define _BIT15	0x8000

#define _bit0_(val)  ((bit)(val & _BIT0))
#define _bit1_(val)  ((bit)(val & _BIT1))
#define _bit2_(val)  ((bit)(val & _BIT2))
#define _bit3_(val)  ((bit)(val & _BIT3))
#define _bit4_(val)  ((bit)(val & _BIT4))
#define _bit5_(val)  ((bit)(val & _BIT5))
#define _bit6_(val)  ((bit)(val & _BIT6))
#define _bit7_(val)  ((bit)(val & _BIT7))
#define _bit8_(val)  ((bit)(val & _BIT8))
#define _bit9_(val)  ((bit)(val & _BIT9))
#define _bit10_(val) ((bit)(val & _BIT10))
#define _bit11_(val) ((bit)(val & _BIT11))
#define _bit12_(val) ((bit)(val & _BIT12))
#define _bit13_(val) ((bit)(val & _BIT13))
#define _bit14_(val) ((bit)(val & _BIT14))
#define _bit15_(val) ((bit)(val & _BIT15))

//-----------------------radio----------------------------------------
typedef struct BitChar
{
    unsigned B0:1;
    unsigned B1:1;
    unsigned B2:1;
    unsigned B3:1;
    unsigned B4:1;
    unsigned B5:1;
    unsigned B6:1;
    unsigned B7:1;
} SBitChar;
typedef union  CharField
{
    unsigned char	byte;
    SBitChar	field;
} UCharField;
///////////////////////////////////////////////////////
#define FM_BAND_NUM 1
#define AM_BAND_NUM 1
#define BAND_NUM  2

typedef struct FMBand_stuct
{
    unsigned int BandFreq;
#ifndef NOT_SAVE_BAND_AF
    unsigned short BandPI;
    unsigned char BandAFList[8];
    unsigned char BandAFNum;
#endif
    unsigned int MemFreq[100];
    unsigned char MemSmeter[100];
    unsigned short PI[100];
    unsigned char MemAFList[100][8];
    unsigned char MemAFNum[100];
    unsigned char CurrentMem;
    unsigned char MaxMem;
    unsigned char MemPSList[100][8];
} FMBandStuct;


typedef struct Radio_stuct
{
    unsigned char SeekMode;
    unsigned char WorkMode;
    unsigned char CurrentBand;
    unsigned int ReqFreq;
    unsigned int Freq;
    unsigned int BackupFreq;
    unsigned int ScanBackupFreq;
    unsigned char TunerBuff[40];
    UCharField ReadBuff;
    //unsigned int TestPointFreq;
    //signed char TestPointVal;
    //signed int Slope;
    //signed int Slope2;
    FMBandStuct FMBand[BAND_NUM];

    unsigned int MaxFreq;
    unsigned int MinFreq;
    unsigned char Step;
    unsigned char SeekStep;
    unsigned char Area;
    signed char Direction;

    unsigned char Smeter;
    unsigned char Multipath;
    unsigned char AdjChannel;
    unsigned char Detuning;
    unsigned char HITAddressBuff[3];
    unsigned char HITDataBuff[40];
    unsigned char IFBW;
    unsigned char IS;

    unsigned F_ForceSetBuff:1;
    unsigned F_GoodStation:1;
    unsigned F_SeekFullCycle:1;
    unsigned F_AutoSeek:1;
    unsigned F_TunerDispReq:1;
    unsigned F_ManualSeek:1;
    unsigned F_LocDx:1;
    unsigned F_Scan:1;
    //unsigned F_HIT_SPIComm:1;// ---1: SPI; 0 I2C
    unsigned F_AlignDone:1;// 1: aligne done
    unsigned F_TDBusy:1;// 1---Tuner driver busy
    unsigned F_QualDisplay:1;

    /*	float Quality;
    	float Qual_fs_factor;
    	float Qual_ac_factor;
    	float Qual_mp_fator;
    	float Qual_det_fator;
    */

} RadioStuct;
//-------------------------------------------------------------------
#ifdef	ADAU1401_EN
typedef struct
{
    BYTE SuperPhatSwitch;
    BYTE SuperBassSwitch;
    BYTE SuperPhatSpreadFreq;
    BYTE SuperPhatEffectGain;
    BYTE SuperBassXover;
    BYTE SuperBassIntensity;
    BYTE SuperBassGain;
    BYTE EqBand[11];
} DSP_EFFECT;

#endif

typedef struct _suitable_set_struct
{
    U8 akey;
    U8 warn;
    U8 find;
    U8 autoradar;
} structSuitType;

typedef struct _fac_select_type_struct
{
    U8 angle_rada_onoff_id;
    U8 car_type_onoff_id;
    U8 auto_rada_onoff_id;
    U8 cam_type_onoff_id;
    U8 DVD_onoff_id;
    U8 cmmb_type_onoff_id;
    U8 rec_type_onoff_id;
    U8 logo_type_onoff_id;
    U8 NAV_key_type;
    U16 set_back_tr_X;
    U16 set_back_tr_Y;
    U8 NAV_setup_vol;
    U8 NAV_setup_show;
    U8 System_Language;
    U8 AUXILIARY_function;//=bit0 upwin, bit1 SpeakerAlarm, bit2 find car ,bit3 auto rada, bit4 nav key,//value=1 open
    //nav key =1Ô­³§=0¼Ó×°
    structSuitType car_suit_set_id;
    U8 car_rearview_id;		//	0=Ô­³µºóÊÓ£¬1=Ô­³µºóÊÓ+Ç°ÊÓ£¬2=¼Ó×°ºóÊÓ£¬3=¼Ó×°ºóÊÓ+Ç°ÊÓ£¬4=360£,5=ÎŞ
    U8 car_input_res_id;//Ô­³µ·Ö±æÂÊÊäÈëÑ¡Ôñ
} fac_select_type_struct;



typedef struct
{
    BYTE    	valide_id;	//==0xea
    BYTE   	back_last_Main_Source;
	BYTE	FrontView_last_Main_Source;
    BYTE   	Main_Source;	//ĞÅºÅ×´Ì¬(0=DVD,1=SD,2=USB,3=TV,4=RADIO,5=GPS,6=AUX,7=CAM,8=EXIT,9=OFF,10=OPEN,11=SRC,12=ACC)
	BYTE	Pre_Main_Source;
	BYTE	Audio_Source;
	BYTE	Audio_Source_Delay;
	BYTE	 	Car_Main_Source;
    BYTE	 	Car_updata_flag;

    BYTE   	bluetooth_last;
    BYTE        GPS_last;

    BYTE   	DVR_Source;	//ĞÅºÅ×´Ì¬(0=DVD,1=SD,2=USB,3=TV,4=RADIO,5=GPS,6=AUX,7=CAM,8=EXIT,9=OFF,10=OPEN,11=SRC,12=ACC)
    BYTE    	Volume;	//ÒôÁ¿¼Ä´æÆ÷

    BYTE      TFT_ID;//==0 ±³¹âÃğ ==1 ±³¹â°×ÌìÄ£Ê½ ==2 ±³¹âÒ¹¼äÄ£Ê½
    BYTE      ACC_auto_on;
    //BYTE      Power_Status;
    BYTE      VideoType ;
    BYTE 		lcd_type;
    BYTE		 u8can_back_status;
    BYTE		 u8IO_back_status;
    BYTE		 u8back_status;
	BYTE 	u8Drive_status;

    BYTE		 u8back_exit_auto;//ÊÖ¶¯ÍË³ö=1
    BYTE		 u8back_mode_status;	//ÖØĞÂ½øÈëµ¹³µ°´¼ü¾Û½¹¼ÇÂ¼


    BYTE    	Bright;	//ÁÁ¶È¼Ä´æÆ÷
    BYTE    	sun_Bright;	//
    BYTE    	Contrast;	//¶Ô±È¶È¼Ä´æÆ÷
    BYTE    	Color;		//ÑÕÉ«¼Ä´æÆ÷
    BYTE     	VideoMode;	//ÊÓÆµÄ£Ê½0=×Ô¶¨Òå,1=ÈáºÍ,2=±ê×¼,3=Ã÷ÁÁ
    BYTE     	BackBright;//light_value;	//µ¹³µÁÁ¶È
    BYTE 		BackContrast;	//µ¹³µ¶Ô±È¶È
    BYTE		CameraOnOff;	//0=off 1 = on
    BYTE		TrackLineOnOff;	//0=off 1 = on

    BYTE     	show_TFT_p;

    BYTE    	voice_navi;
    BYTE   	gps_voice_Source;

    BYTE 		NaviVolum;
    BYTE 	NaviType;	//0Ô­³µ×Ô´øµ¼º½£¬¶Ì°´NAVI½øÈëÔ­³µ£¬³¤°´½øÈë¼Ó×°µÄ¡£1¼Ó×°µ¼º½£¬¶Ì°´NAVI½øÈë¼Ó×°
    U16 wOptionTimeout;
    BYTE bOffScreenSwitch;
    BYTE uCurDimmerType; //1
    BYTE uCurDimmerVal; //1
    BYTE uCurOSDLang;



    struct _fac_select_type_struct FS_select;
    BYTE main_osd;
    BYTE sub_osd;
    BYTE main_osd_last;
    BYTE sub_osd_last;

    WORD wPowerOnByCanTimer;
    WORD wPowerOnByCanTimer2;
    WORD wRearOnByCanTimer;
    WORD WVedio_show_timer;
    WORD wKnobAuxContrlTimer;

} SystemSettingType ;

union EEPROM_unit
{
    unsigned long write_buf[512];			/*define char field of union*/
    SystemSettingType  byte_buf;			/*define bit field of union*/
};
#endif

