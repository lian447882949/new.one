#ifndef _PANNEL_H_
#define _PANNEL_H_

#ifdef _PANNEL_C_
  #define _PANNELDEC_
#else
  #define _PANNELDEC_ extern
#endif

#include "Type.h"

#define Panelhannstar07_DT		1
#define Panelhannstar62_DT		2
#define PanelFoxconn07_DT		3
#define PanelFoxconn08_DT		4
#define Panelhannstar08_DT	5
#define Panelhannstar09_DT	7
#define Panelhannstar0695_DT	9
#define Panelhannstar5_DT	10
#define PanelPVI695_DT		15
#define PanelQIMEI07_DT		16


typedef enum
{
 		Pannel_init_osd=0,						
 		Pannel_init_tw8836=1,	
		Pannel_Poweron=2,	
		Pannel_poweroff=3,	
		
 		Pannel_NTSC_type=4,						
 		Pannel_PAL_type=5,						
 		Pannel_SECAM_type=6,						
 		Pannel_RGB_dvd_type=7,						
 		Pannel_DTV_888_type=8,
			
 		//PIP video
		Pannel_2PIP_DTV_YUV=9,
		Pannel_2PIP_YUV_DTV=0x0a,
  		Pannel_RGB_cam_type=0x2a,//yw cam_rgb					
		
		Pannel_2PIP_CVBS_PAL_DTV=0x0b,
		Pannel_2PIP_CVBS_PAL_YUV=0x0c,
		Pannel_2PIP_DTV_CVBS_PAL=0x0d,
		Pannel_2PIP_YUV_CVBS_PAL=0x0e,	
		
		Pannel_2PIP_CVBS_NTSC_DTV=0x0f,
		Pannel_2PIP_CVBS_NTSC_YUV=0x10,
		Pannel_2PIP_DTV_CVBS_NTSC=0x11,
		Pannel_2PIP_YUV_CVBS_NTSC=0x12,	

		Pannel_3PIP_YUV_CVBS_PAL_DTV=0x13,
		Pannel_3PIP_YUV_DTV_CVBS_PAL=0x14,
		Pannel_3PIP_DTV_CVBS_PAL_YUV=0x15,
		Pannel_3PIP_DTV_YUV_CVBS_PAL=0x16,		
		Pannel_3PIP_CVBS_PAL_DTV_YUV=0x17,
		Pannel_3PIP_CVBS_PAL_YUV_DTV=0x18,

		Pannel_3PIP_YUV_CVBS_NTSC_DTV=0x19,
		Pannel_3PIP_YUV_DTV_CVBS_NTSC=0x1a,
		Pannel_3PIP_DTV_CVBS_NTSC_YUV=0x1b,
		Pannel_3PIP_DTV_YUV_CVBS_NTSC=0x1c,		
		Pannel_3PIP_CVBS_NTSC_DTV_YUV=0x1d,
		Pannel_3PIP_CVBS_NTSC_YUV_DTV=0x1e,
		
		//dvd set
		Pannel_DVD_SET_PIP=0x1f, 		
		
		Pannel_TV_PAL_SET_PIP=0x20, 		
		Pannel_TV_NTSC_SET_PIP=0x21, 	
		
		Pannel_Video_PAL_SET_PIP=0x22,//20120321	
		Pannel_Video_NTSC_SET_PIP=0x23,	
		
		Pannel_PARK_PAL_SET_PIP=0x24,	
		Pannel_PARK_NTSC_SET_PIP=0x25,	
		
		Pannel_AUX_PAL_SET_PIP=0x26, 	//20120321	
		Pannel_AUX_NTSC_SET_PIP=0x27, 			
		Pannel_TW8836_SWRST=0x28,
		//=====A33 case========
		Pannel_ARM_type=0x29,//miller.tao add 20150711
        Pannel_CarMedia_type=0x2A,
        Pannel_CVBS_type =0x2B,
		Pannel_DTV_type =0x2c,
		Pannel_CVBS_0_type =0x2D,	//frontview
		Pannel_CarMedia_Small_type=0x2e,	//Ð¡·Ö±æÂÊ
		Pannel_max						
} PANNEL_INIT_Type;

typedef enum
{
 		zoom_cvbsntsc_pip_dvdmain,	
 		zoom_cvbspal_pip_dvdmain,	
 		zoom_cvbssecam_pip_dvdmain,	
		
		zoom_cvbsntsc_pip_gpsmain,	
		zoom_cvbspal_pip_gpsmain,	
		zoom_cvbssecam_pip_gpsmain,	

		
		zoom_dvdpip_cvbsmain,	
		zoom_gpspip_cvbsmain	
						
} PANNEL_PIPZOOM_Type;
/*typedef enum
{
        Pannel_init_tw8836=1,	
        Pannel_ARM_type=2,						
	Pannel_CarMedia_type=3,						
	Pannel_CVBS_type=4,						
}PANNEL_WORK_STATUS;*/

#define PIP_WINDOW1  1
#define PIP_WINDOW2  2

#define PIP_ON  0
#define PIP_OFF  1

_PANNELDEC_  void Pannel_include(void);
_PANNELDEC_  void WritePannelData(BYTE sys);
_PANNELDEC_  void WritePannelData_Func(BYTE sys);
_PANNELDEC_  void  Set_PIP_Zoom(BYTE type,BYTE zoom);
_PANNELDEC_  void  Set_PIP_Position(BYTE winno,UINT xpos,UINT ypos);
_PANNELDEC_  void  Set_PIP_Window(BYTE winno,BYTE on_off);
_PANNELDEC_  void Clear_all_PIP(void);
_PANNELDEC_  void DownLoadGamma(void);
_PANNELDEC_ void TW8836_Reset(void);

#endif

