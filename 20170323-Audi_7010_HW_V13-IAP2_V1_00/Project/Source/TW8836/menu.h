#ifndef __MENU_H__
#define __MENU_H__


//#undef  EXTERN


#ifdef  __MENU_C__
#define _MENU_DEC_
#else
#define _MENU_DEC_ extern
#endif

//#include "includes.h"

#include <stdio.h>
#include "stdint.h"

#include "type.h"
//#include "gd32f1x0.h"



#define SOsd_SetSpiStartOffset SpiOsdSpiStartAddress
#define SOsd_SetImageWidthHeight SpiOsdBuffWidth
#define SOsd_SetScreen SpiOsdBuffWidth
//#define SOsd_SetPixelAlpha SpiOsdSetPixelAlpha
//#define SOsd_SetPixelAlphaIndex SpiOsdSetPixelAlpha
#define SOsd_SetGlobalAlpha SpiOsdSetGlobalAlpha
#define SOsd_SetPixelWidth SpiOsdSetBitsPixel
#define SOsd_SetLutOffset SpiOsdLutOffset
//#define SOsd_Enable SpiOsdEnable
#define SOsd_SetRlc SpiOsdSetRlc
#define SOsd_SetLut SpiOsdSetLut
#define SOsd_CleanRlc SpiOsdClrRlc
#define SOsd_CleanLut SpiOsdClrLut
#define SOsd_CleanReg SpiOsdClrReg

#define WaitVBlank TW8836_WaitVBlank
#define SOsd_UpdateRlc SpiOsdUpdateRlc
#define SOsd_UpdateReg SpiOsdUpdateReg
#define SOsd_UpdateLut SpiOsdUpdateLut




typedef struct __RLE2_HEADER_STRUCT__
{
    uint8_t  id[2];

    uint8_t  op_bmpbits;
    uint8_t  rledata_cnt;

    uint16_t w;
    uint16_t h;

    uint32_t size;

    uint8_t  lut_format;
    uint8_t  lut_colors;

    uint8_t  dummy[2];
} RLE2_HEADER;


typedef struct __IMAGE_HEADER_STRUCT__
{
    uint32_t lut_addr;
    uint32_t img_addr;

    uint8_t  lut_type;  /*0:lut,address method; 1:luts,byte pointer method*/
    uint8_t  bpp;       /*bit per pixel*/
    uint8_t  rle;       /*compression ration,upper:bpp, bottom:RLE counter*/
    uint16_t dx;        /*width (pixel)*/
    uint16_t dy;        /*height(pixel)*/
    uint16_t lut_size;  /*we don't need it. we can assume lut size & image size*/
} IMAGE_HEADER;


typedef struct __IMAGE_INFO_STRUCT__
{
    uint8_t lut_type;   /*0:lut,address method; 1:luts,byte pointer method*/
    uint8_t rle;        /*upper:bpp, bottom:RLE counter*/
    uint16_t dx;        /*width*/
    uint16_t dy;        /*height*/
} IMAGE_INFO;

#if 1
typedef struct __IMAGE_ITEM_INFO_STRUCT__
{
    uint8_t     type;   /*0:LUT+Image, 1:Header+LUT+Image, 2:Image Only, 3:LTU Only, 4:Header Only*/
    uint32_t    addr;   /*Absolute Location On SPI Flash*/
    IMAGE_INFO *info;
    uint8_t     alpha;  /*Alpha Index, 0xFF:Ignore*/
	BYTE rledata_cnt;
    uint16_t w;
    uint16_t h;
} IMAGE_ITEM_INFO;

#endif
 struct image_item_info_s {
	uint8_t type;	//0:LUT+image, 1:header+lut+image 2:image_only 3: lut_only 4:header_only	
	uint32_t loc;  //absolute location on SpiFlash
	IMAGE_INFO *info;
	uint8_t alpha;		//alpha index. 0xFF:ignore.
} ;

typedef struct
{
    WORD left;
    WORD top;
    WORD Right;
    WORD Bottom;
} UIRECTPOINT,  *LPUIRECTPOINT;

typedef struct menu_sitem_info_s {
	uint8_t osd_type;						//0:SpiOSD 1:FontOSD..failed. not using

	void (*p)(U8, U8, U8);					//linked function

	uint32_t x,y;							//start x, start y
	uint8_t align;							//align type

	//struct IMAGE_ITEM_INFO *image;	//focused image
	//struct IMAGE_ITEM_INFO *image1;	//pressed image
	IMAGE_ITEM_INFO *image;	//focused image
	IMAGE_ITEM_INFO *image1;	//pressed image
	uint8_t image_type;					//0:Background, icon, ....., fSOD info

	uint8_t win;							//upper:fosd, bottom:sosd
	uint32_t lut;							//lut start offset	   1110207 become 9bit
	uint8_t up,left,down,right;			//navi_key
	
	U16 button_id;//按键ID,根据数组位置
	uint8_t button_mouse_id;//根据按键数量从0(X)开始，根据该ID与设置值对比来显示已被设置的,
	uint8_t press_button_ID;//附加的按中状态，数组中的位置,如果设置值与button_mouse_id相等，显示该ID指向的条目
    UIRECTPOINT osd_dest;//触摸区域
} menu_sitem_info_t;


typedef struct menu_fitem_info_s {
	uint8_t winno;			//win#. start from 0.
	uint32_t osdram;		//start of osdram
	uint32_t x,y;
	uint8_t w,h;
	uint8_t zoom_h,zoom_v;

	uint8_t BPP1Color;		//bgColor << 4 | fgColor;
	uint8_t BPP3_palette;	//for 3BPP
	uint32_t BPP3_color;	//for 3BPP
} menu_fitem_info_t;

#define MENU_TYPE_NORMAL	0
#define MENU_TYPE_LIST		1
#define MENU_TYPE_SCRLDN	2
#define MENU_TYPE_DIALOG	3
#define MENU_TYPE_SLIDE		4
#define MENU_TYPE_SLIDE3	5
#define MENU_TYPE_NOTE		0x10	//need the selected note.
#define MENU_TYPE_TEST		0x20


#define ALIGN_TOPLEFT		0
#define ALIGN_TOPMIDDLE		1
#define ALIGN_TOPRIGHT		2
#define ALIGN_CENTER		3
#define ALIGN_BOTTOMLEFT	4
#define ALIGN_BOTTOMRIGHT	5
#define ALIGN_BOTTOMMIDDLE	6

typedef struct menu_page_info_s {
//	uint8_t type;					//menu_type	move_left2right, popup,...
//	uint8_t focus;					//focused item number
	uint8_t select;				//current selected item number. for input_page aspect_page...
//	uint8_t item_start;
//	uint8_t item_total;			// for touch area check. not include bg, and select bar.
	menu_sitem_info_t *items;	//sosd item
//	menu_fitem_info_t *texts;	//fosd item	
} menu_page_info_t;


typedef void(*CLICKCALLBACK)(U8, U8, U8);

typedef struct
{
	U16 button_id;

    UIRECTPOINT osd_dest;
    //UIRECTPOINT osd_dest_Aux1;
    
    //UIRECTPOINT BackupBuff_src;
    //UIRECTPOINT BackupBuff_src_Aux1;
    
    CLICKCALLBACK pFunItem;
    BYTE uUP;
    BYTE uDN;
    BYTE uLEFT;
    BYTE uRIGHT;
    BYTE uPosIndex;
} GUI_PAGE_ITEM;

typedef struct
{
    //DrawPageCALLBACK pFunDrawPage;
    GUI_PAGE_ITEM *pItem;
	BYTE button_status;
	
} GUI_PAGE;


#define U16_MAX    ((U16)0xFFFFuL)

#define SOSD_WIN0	0x00
#define SOSD_WIN1	0x01
#define SOSD_WIN2	0x02
#define SOSD_WIN3	0x03
#define SOSD_WIN4	0x04
#define SOSD_WIN5	0x05
#define SOSD_WIN6	0x06
#define SOSD_WIN7	0x07
#define SOSD_WIN8	0x08

#define ON		1
#define OFF		0


#define MRLE_INFO_SIZE  0x10

#define TYPE_SOSD	0	//normal SOSD item
#define TYPE_FOSD	1	//normal FOSD item
#define TYPE_BG		2	//SOSD FIXED Background
#define TYPE_MBG	3	//SOSD MOVING Background
#define TYPE_SLIDE	4	//SOSD Slide area
#define TYPE_BOX	5	//SOSD BOX area

/*
#define BYTE uint8_t
#define WORD uint16_t
#define DWORD uint32_t
*/

#define key_null 0x00
#define key_up 0x01
#define key_down 0x02
#define key_left 0x03
#define key_right 0x04
#define key_enter 0x05
#define key_media 0x06
#define key_NAVI 0x07
#define key_cam 0x08
#define key_TV_SRC	0x09

#define key_menu_request 0xfe

 
#define main_page_OSD_none 0x00
#define sub_page_OSD_none 0x00
	
#define main_page_OSD_logo 0x01
#define sub_page_OSD_logo 0x00

#define main_page_OSD_Home 0x02
#define sub_page_OSD_Home_bt 0x00
#define sub_page_OSD_Home_radio 0x01
#define sub_page_OSD_Home_music 0x02
#define	sub_page_OSD_Home_Collision 0x03

#define main_page_OSD_back_rada 0x03	
#define sub_page_OSD_back_rada_angle 0x00	//摄像头开关
#define sub_page_OSD_back_rada_setup 0x01	//亮度设置
#define sub_page_OSD_back_Contrast_setup 0x02	//对比度
#define sub_page_OSD_back_NONE_setup 0x03		//轨迹开关
#define sub_page_OSD_back_rada_obstacles 0x05
#define sub_page_OSD_back_rada_main_setup	0x06

#define sub_page_OSD_back_only_updata_angle 0x10//updata angle
#define sub_page_OSD_back_only_updata_Rada 0x11



#define main_page_OSD_door_info 0x04
#define sub_page_OSD_back_lid 0x00
#define sub_page_OSD_font_lid 0x01
#define sub_page_OSD_LR_door 0x02

#define main_page_OSD_air_info 0x05
#define sub_page_OSD_air_info 0x00

#define main_page_OSD_setup 0x06
#define sub_page_OSD_setup_main 0x00
#define sub_page_OSD_setup_car 0x01
#define sub_page_OSD_setup_back 0x02
#define sub_page_OSD_setup1_main 0x03
#define sub_page_OSD_setup1_auto_rada 0x04
#define sub_page_OSD_setup_logo 0x05
#define sub_page_OSD_setup_version 0x06
#define sub_page_OSD_setup_navi 0x07
#define sub_page_OSD_setup1_navi_show 0x08
#define	sub_page_OSD_Setup1_language_type	0x09


#define main_page_OSD_font_rada 0x07
#define sub_page_OSD_font_rada 0x00

#define main_page_OSD_setup1 0x08
#define sub_page_OSD_setup1_code 0x00

#define main_page_OSD_navi 0x09
#define sub_page_OSD_navi 0x00

#define main_Car_page_OSD 0x10
#define sub_Car_page_OSD_Un5S  0x00
#define sub_Car_page_OSD_5S  0x01

 typedef struct
 {
	 BYTE code_buff[6];
	 U8 index;
 } FS_CODE;

 _MENU_DEC_ FS_CODE fs_code_buff;



 //#define WIN_DEMO 		  0x01 // 0x01
 _MENU_DEC_ uint8_t UseSOsdHwBuff;
_MENU_DEC_ uint8_t OSD_LUT_glag;//=1 load
_MENU_DEC_ uint8_t Navi_osd_update_flag;//=1

_MENU_DEC_ uint8_t FS_key_num;//按键在数组的位置
_MENU_DEC_ uint8_t FS_key_mouse_index;//按键值ID

_MENU_DEC_ uint8_t g_mouse[20];//存按键位置ID
_MENU_DEC_ uint8_t g_mouse_index;//按键位置ID索引
_MENU_DEC_ uint16_t press_timer;//
_MENU_DEC_ uint8_t code_pressed_index;//


#define gmouse_steup_main_page 0
#define gmouse_steup_main_page_car 1
#define gmouse_steup_main_page_back 2
#define gmouse_back_main_page_setup1 3
#define gmouse_back_light_page_setup2 4
#define gmouse_steup1_main_page 5
#define gmouse_steup1_auto_rada_page 6
#define gmouse_steup1_code_page 7
#define gmouse_steup_main_page_logo 8
#define gmouse_steup_main_page_navi_key 9
#define gmouse_steup_main_page_navi_show 10
#define	gmouse_steup_main_page_language_type 11
#define gmouse_back_Contrast_page_setup		12
#define gmouse_back_Camera_SW_page_setup		13
#define gmouse_back_Track_SW_page_setup		14




_MENU_DEC_ void MenuStart( void );
_MENU_DEC_ 	void MenuDemo( const menu_sitem_info_t * menu_page);
_MENU_DEC_ 	void MenuDemo_noLUT( menu_sitem_info_t menu_page);
_MENU_DEC_ void MenuDemo4( menu_sitem_info_t menu_page);


_MENU_DEC_ void InitSystem( void );
_MENU_DEC_ void proc_audio_bg(void);
_MENU_DEC_ void proc_return_icon(void);
_MENU_DEC_ void proc_menu_bg(void);
 
_MENU_DEC_ void Menu_page_DrawImage(BYTE mainosd_index, BYTE subosd_index);	 

_MENU_DEC_ void proc_rada_menu_bg(void);

_MENU_DEC_ void proc_rada_menu_INIT_lut(menu_sitem_info_t MUEN); 

_MENU_DEC_ void SOsd_Enable(BYTE win, BYTE fOn);
_MENU_DEC_ void SpiOsdWinHWOffAll(BYTE wait);

_MENU_DEC_ void OnOSDSetupmenu_FS_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal);
_MENU_DEC_ void OnOSDbackmenu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal);
_MENU_DEC_ void OnOSDback_light_menu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal);
_MENU_DEC_ void OnOSDback_Contrast_menu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal);


_MENU_DEC_ void OnOSDNULLBtnClick(U8 pageindex, U8 itemindex, U8 bNormal);
_MENU_DEC_ void OnOSDCommon_RetBtnClick(U8 pageindex, U8 itemindex, U8 bNormal);
_MENU_DEC_ void Menu_page_Draw_button(BYTE mainosd_index, BYTE subosd_index);
_MENU_DEC_ void Mouse_buff_init(void);
_MENU_DEC_ BOOL User_mouse_moves();
_MENU_DEC_ BOOL User_PositionProcess(WORD Xpos, WORD Ypos, U8 Action);
_MENU_DEC_ BYTE set_value_fun();
_MENU_DEC_ void TW8836BrightAdjust(Byte value);
_MENU_DEC_ void TW8836ContrastAdjust(Byte value);
_MENU_DEC_ U16 MenuDemo_xy( IMAGE_ITEM_INFO menu_page,U8 win,U16 x,U16 y);
_MENU_DEC_ void Menu_page_version_Draw();
_MENU_DEC_ void OnOSDback_Camera_menu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal);
_MENU_DEC_ void OnOSDback_Track_menu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal);





#endif


