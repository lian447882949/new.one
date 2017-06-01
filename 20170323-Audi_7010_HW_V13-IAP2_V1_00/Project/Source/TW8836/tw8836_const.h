#ifndef		_CONST_H_
#define		_CONST_H_


typedef enum
{
	VIDEO_CVBS=0,
	VIDEO_YUV=1,
	VIDEO_DTV=2,
	VIDEO_PIP_CVBS=3,
	VIDEO_PIP_YUV=4,
	VIDEO_PIP_DTV=5,	
	VIDEO_YUV_cam=6,
	VIDEO_PIP_YUV_cam=7,	
	VIDEO_NULL
}CP_VideoType;

typedef enum
{
	VIDEO_NO_PIP=0,
	VIDEO_PIP_HAS_CVBS=1,
	VIDEO_PIP_NO_CVBS=2,
}CP_PIP_VideoType;

//#define 		ON			1
//#define 		OFF			0

//#define     	MAX_BT_PHONE_NUM           			21
//#define     	MAX_BT_UART_BUFF           			32



#define 		MCU_PAGE			0x0f
#define 		REMO_PAGE			0x0d
#define 		OSD_PAGE			0x07
#define 		DDR_PAGE			0x0c


#define			PNL_W				800
#define 			PNL_H				480

#define			WIN1_OFFSET			1000
#define			WIN1_BUFF			500
#define			WIN4_OFFSET			1000

#define			WIN_SIZE_W			800//1024//
#define			WIN_SIZE_H			480//600//

#define			WIN0_DDR_START			0x480000L//0xa0000L//
#define			WIN1_DDR_START			0x600000L//0x600000L
#define			WIN4_DDR_START			0x200000L//0x000000L//
#define			LINEAR_DDR_START		0xa00000L//0x800000L

#define			DISPLAY_BUFF_START		0x000000L
#define			DISPLAY_PIP1_START		0x1000000L //0xf0000=2048*480
#define			DISPLAY_PIP2_START		0x1100000L
//DDR:
/************************************************
KS561238
256Mb==32MBYTE

0x2000000L
************************************************/
#define			HEARDER_INFO_LEN		8//64


#define AUTO	0
#define NTSC	1			
#define PAL		2
#define SECAM	3
#define NTSC4	4
#define PALM	5
#define PALN	6
#define PAL60	7

#define NOSIGNAL			0xfb//无CVBS信号
#define VIDEO_DETECTING	0xfc//信号检测中 CVBS制式不能确定
#define UNKNOWN			0xfe//Not valid
#define NODECODER				0xFF//当前通道不是CVBS


#define HAS_CSYNC	1
#define NO_CSYNC	0

#define HAS_SIGNAL	1
#define NO_SIGNAL	0

////////////////////////////////////////////////////////////////////////////
#define		GPIO00				0x0101
#define		GPIO01				0x0102
#define		GPIO02				0x0104
#define		GPIO03				0x0108
#define		GPIO04				0x0110
#define		GPIO05				0x0120
#define		GPIO06				0x0140
#define		GPIO07				0x0180

#define		GPIO10				0x0201
#define		GPIO11				0x0202
#define		GPIO12				0x0204
#define		GPIO13				0x0208
#define		GPIO14				0x0210
#define		GPIO15				0x0220
#define		GPIO16				0x0240
#define		GPIO17				0x0280

#define		GPIO20				0x0301
#define		GPIO21				0x0302
#define		GPIO22				0x0304
#define		GPIO23				0x0308
#define		GPIO24				0x0310
#define		GPIO25				0x0320
#define		GPIO26				0x0340
#define		GPIO27				0x0380

#define		GPIO30				0x0401
#define		GPIO31				0x0402
#define		GPIO32				0x0404
#define		GPIO33				0x0408
#define		GPIO34				0x0410
#define		GPIO35				0x0420
#define		GPIO36				0x0440
#define		GPIO37				0x0480

#define		GPIO40				0x0501
#define		GPIO41				0x0502
#define		GPIO42				0x0504
#define		GPIO43				0x0508
#define		GPIO44				0x0510
#define		GPIO45				0x0520
#define		GPIO46				0x0540
#define		GPIO47				0x0580

#define		GPIO50				0x0601
#define		GPIO51				0x0602
#define		GPIO52				0x0604
#define		GPIO53				0x0608
#define		GPIO54				0x0610
#define		GPIO55				0x0620
#define		GPIO56				0x0640
#define		GPIO57				0x0680

#define		GPIO60				0x0701
#define		GPIO61				0x0702
#define		GPIO62				0x0704
#define		GPIO63				0x0708
#define		GPIO64				0x0710
#define		GPIO65				0x0720
#define		GPIO66				0x0740
#define		GPIO67				0x0780

#define		GPIO70				0x0801
#define		GPIO71				0x0802
#define		GPIO72				0x0804
#define		GPIO73				0x0808
#define		GPIO74				0x0810
#define		GPIO75				0x0820
#define		GPIO76				0x0840
#define		GPIO77				0x0880

#define		GPIO80				0x0901
#define		GPIO81				0x0902
#define		GPIO82				0x0904
#define		GPIO83				0x0908
#define		GPIO84				0x0910
#define		GPIO85				0x0920
#define		GPIO86				0x0940
#define		GPIO87				0x0980

#define		P10					0x0010
#define		P11					0x0011
#define		P12					0x0012
#define		P13					0x0013
#define		P14					0x0014
#define		P15					0x0015
#define		P16					0x0016
#define		P17					0x0017

#define		P30					0x0030
#define		P31					0x0031
#define		P32					0x0032
#define		P33					0x0033
#define		P34					0x0034
#define		P35					0x0035
#define		P36					0x0036
#define		P37					0x0037
//Pins
#define			PIN0						1
#define			PIN1						(1<<1)
#define			PIN2						(1<<2)
#define			PIN3						(1<<3)
#define			PIN4						(1<<4)
#define			PIN5						(1<<5)
#define			PIN6						(1<<6)
#define			PIN7						(1<<7)


//其他
	#define			PIN_BACKLIGHT				GPIO00
		#define		SET_BACKLIGHT				Write_GPIO(PIN_BACKLIGHT,1)
		#define		CLR_BACKLIGHT				Write_GPIO(PIN_BACKLIGHT,0)

	#define			PIN_PANEL_VOL				GPIO01
		#define		SET_PANEL_VOL				Write_GPIO(PIN_PANEL_VOL,1)
		#define		CLR_PANEL_VOL				Write_GPIO(PIN_PANEL_VOL,0)
		
	#define			PIN_PANEL_PWM				GPIO02
		#define		SET_PANEL_PWM				Write_GPIO(PIN_PANEL_PWM,1)
		#define		CLR_PANEL_PWM				Write_GPIO(PIN_PANEL_PWM,0)
		
	#define			PIN_PANEL_MIRROR 			GPIO85
		#define		SET_PANEL_MIRROR			Write_GPIO(PIN_PANEL_MIRROR,1)
		#define		CLR_PANEL_MIRROR			Write_GPIO(PIN_PANEL_MIRROR,0)
		
	#define			PIN_PANEL_UPDOWN 			GPIO84
		#define		SET_PANEL_UPDOWN			Write_GPIO(PIN_PANEL_UPDOWN,1)
		#define		CLR_PANEL_UPDOWN			Write_GPIO(PIN_PANEL_UPDOWN,0)



#endif

