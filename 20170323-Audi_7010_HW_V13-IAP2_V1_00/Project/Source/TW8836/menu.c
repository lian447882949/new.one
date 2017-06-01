#define __MENU_C__

#include "includes.h"

//#include "menu.h"
//#include "SPIFlash.h"
#include "OSDFont.h"
//#include "TW8836.h"
#include <string.h>
#include <stdlib.h> 
#include <stdio.h>
#include "Util.h"
#include "MenuData.h"

extern uint8_t SpiOsdWinBase[];
menu_sitem_info_t *curr_menu;

RLE2_HEADER  gtRLE2Header;
IMAGE_HEADER gtImageHeader;


extern uint8_t SPICMD_x_READ  ;
extern uint8_t SPICMD_x_BYTES;
//extern uint8_t SpiFlash4ByteAddr;		//4Byte mode for big SPIFLASH
extern uint8_t gucSpiFlash4ByteMode;
#define SpiFlash4ByteAddr gucSpiFlash4ByteMode




/*
struct menu_sitem_info_s menu_door_info_page_items[] =
{

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	236,253,	ALIGN_TOPLEFT,	&door_right2,NULL,						0,SOSD_WIN4,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	114,253,	ALIGN_TOPLEFT,	&door_left2,NULL,						0,SOSD_WIN5,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	236,170,	ALIGN_TOPLEFT,	&door_right1,NULL,						0,SOSD_WIN6,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	114,170,	ALIGN_TOPLEFT,	&door_left1,NULL,						0,SOSD_WIN7,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+0,0+0,	ALIGN_TOPLEFT,	&mune1_door,NULL,						0,SOSD_WIN3,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+0,0+0,	ALIGN_TOPLEFT,	&mune3_back_lid,NULL,						0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+0,0+0,	ALIGN_TOPLEFT,	&mune5_font_lid,NULL,						0,SOSD_WIN1,0x000,	0,0,0,0},

};
*/



struct menu_sitem_info_s menu_home_source_page_items[1] =
{
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};



const struct menu_sitem_info_s Car_Bg_page_items[] =
{
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+800,0,	ALIGN_TOPLEFT,	&CarBg_01,NULL, 0,SOSD_WIN1,0x000,	0,0,0,0},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+800,0,	ALIGN_TOPLEFT,	&CarBg_02,NULL, 0,SOSD_WIN1,0x000,	0,0,0,0},	//5s Bg
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+800,0,	ALIGN_TOPLEFT,	&CarBg_02,NULL, 0,SOSD_WIN1,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};

const struct menu_sitem_info_s Car_Num_page_items[] =
{
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_00,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_01,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_02,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_03,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_04,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_05,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_06,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_07,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_08,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_09,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Num_Dot,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Unit_01,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},	
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Unit_02,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Unit_03,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0,0},
	{ TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Unit_03,NULL,	0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};


const struct menu_sitem_info_s menu_add_rada_font_L_icon_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_1_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_1_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_1_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_1_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_1_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_1_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_1_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_2_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_2_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_2_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_2_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_2_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_2_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_2_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_3_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_3_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_3_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_3_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_3_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_3_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_3_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_4_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_4_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_4_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_4_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_4_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_4_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_4_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_5_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_5_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_5_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_5_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_5_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_5_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_5_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_6_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_6_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_6_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_6_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_6_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_6_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_6_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_7_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_7_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_7_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_7_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_7_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_7_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_7_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_8_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_8_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_8_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_8_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_8_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_8_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_8_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_9_1,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_9_2,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_9_3,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_9_4,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_9_5,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_9_6,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,100,	ALIGN_TOPLEFT,	&left_font_9_7,NULL,	0,SOSD_WIN5,0x100,	0,0,0,0},
    
};


const struct menu_sitem_info_s menu_add_rada_font_R_icon_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_1_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_1_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_1_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_1_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_1_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_1_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_1_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_2_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_2_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_2_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_2_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_2_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_2_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_2_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_3_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_3_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_3_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_3_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_3_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_3_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_3_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_4_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_4_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_4_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_4_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_4_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_4_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_4_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_5_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_5_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_5_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_5_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_5_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_5_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_5_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_6_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_6_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_6_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_6_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_6_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_6_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_6_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_7_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_7_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_7_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_7_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_7_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_7_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_7_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_8_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_8_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_8_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_8_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_8_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_8_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_8_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_9_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_9_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_9_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_9_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_9_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_9_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	100,100,	ALIGN_TOPLEFT,	&right_font_9_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
   

};




const struct menu_sitem_info_s menu_add_rada_back_L_icon_page_items[] =
{

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_01_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_01_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_01_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_01_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_01_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_01_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_01_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_02_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_02_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_02_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_02_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_02_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_02_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_02_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_03_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_03_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_03_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_03_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_03_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_03_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_03_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_04_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_04_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_04_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_04_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_04_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_04_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_04_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_05_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_05_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_05_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_05_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_05_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_05_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_05_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_06_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_06_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_06_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_06_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_06_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_06_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_06_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_07_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_07_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_07_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_07_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_07_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_07_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_07_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_08_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_08_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_08_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_08_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_08_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_08_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_08_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_09_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_09_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_09_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_09_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_09_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_09_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_09_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_10_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_10_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_10_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_10_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_10_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_10_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_10_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_11_1,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_11_2,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_11_3,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_11_4,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_11_5,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_11_6,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	28,344,	ALIGN_TOPLEFT,	&left_back_11_7,NULL,	0,SOSD_WIN4,0x100,	0,0,0,0},
    

};



const struct menu_sitem_info_s menu_add_rada_back_R_icon_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_1_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_1_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_1_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_1_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_1_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_1_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_1_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_2_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_2_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_2_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_2_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_2_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_2_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_2_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_3_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_3_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_3_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_3_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_3_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_3_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_3_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_4_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_4_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_4_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_4_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_4_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_4_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_4_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_5_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_5_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_5_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_5_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_5_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_5_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_5_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_6_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_6_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_6_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_6_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_6_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_6_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_6_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_7_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_7_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_7_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_7_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_7_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_7_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_7_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_8_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_8_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_8_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_8_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_8_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_8_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_8_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_9_1 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_9_2 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_9_3 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_9_4 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_9_5 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_9_6 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_9_7 ,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_10_1,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_10_2,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_10_3,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_10_4,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_10_5,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_10_6,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_10_7,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_11_1,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_11_2,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_11_3,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_11_4,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_11_5,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_11_6,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	101,344,	ALIGN_TOPLEFT,	&right_back_11_7,NULL,	0,SOSD_WIN6,0x100,	0,0,0,0},
    
};	  
	  	  

/*
struct menu_sitem_info_s menu_add_air_L_temp_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_16,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_17,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_18,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_19,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_20,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_21,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_22,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_23,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_24,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_25,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_26,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_27,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_28,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_HI,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+504,435+0,	ALIGN_TOPLEFT,	&temp_LO,NULL,						0,SOSD_WIN4,0x100,	0,0,0,0},

};
struct menu_sitem_info_s menu_add_air_R_temp_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_16,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_17,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_18,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_19,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_20,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_21,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_22,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_23,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_24,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_25,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_26,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_27,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_28,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_HI,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1164,435+0,	ALIGN_TOPLEFT,	&temp_LO,NULL,						0,SOSD_WIN5,0x100,	0,0,0,0},

};
//模式
struct menu_sitem_info_s menu_add_air_wind_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+671,435+0,	ALIGN_TOPLEFT,	&wind_auto,NULL,						0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+671,435+0,	ALIGN_TOPLEFT,	&wind_U,NULL,						0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+671,435+0,	ALIGN_TOPLEFT,	&wind_UD,NULL,						0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+671,435+0,	ALIGN_TOPLEFT,	&wind_UM,NULL,						0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+671,435+0,	ALIGN_TOPLEFT,	&wind_UMD,NULL,						0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+671,435+0,	ALIGN_TOPLEFT,	&wind_D,NULL,						0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+671,435+0,	ALIGN_TOPLEFT,	&wind_M,NULL,						0,SOSD_WIN6,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+671,435+0,	ALIGN_TOPLEFT,	&wind_MD,NULL,						0,SOSD_WIN6,0x100,	0,0,0,0},

};
//风速
struct menu_sitem_info_s menu_add_air_windy_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1012,435+0,	ALIGN_TOPLEFT,	&windy_1,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1012,435+0,	ALIGN_TOPLEFT,	&windy_2,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1012,435+0,	ALIGN_TOPLEFT,	&windy_3,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1012,435+0,	ALIGN_TOPLEFT,	&windy_4,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1012,435+0,	ALIGN_TOPLEFT,	&windy_5,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1012,435+0,	ALIGN_TOPLEFT,	&windy_6,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1012,435+0,	ALIGN_TOPLEFT,	&windy_7,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+1012,435+0,	ALIGN_TOPLEFT,	&windy_auto,NULL,						0,SOSD_WIN7,0x100,	0,0,0,0},
};

struct menu_sitem_info_s menu_add_air_other_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+831,435+0,	ALIGN_TOPLEFT,	&AC_off,NULL,						0,SOSD_WIN8,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+831,435+0,	ALIGN_TOPLEFT,	&AC_ON,NULL,						0,SOSD_WIN8,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+0,423+0,	ALIGN_TOPLEFT,	&rada_R_part_22,NULL,						0,SOSD_WIN3,0x100,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+480,423+0,	ALIGN_TOPLEFT,	&air_black,NULL,						0,SOSD_WIN3,0x100,	0,0,0,0},

};
//高级设置页
struct menu_sitem_info_s menu_add_setup_main_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune25_setup_main,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},	//高级设置页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune27_setup_car,NULL,		0,SOSD_WIN3,0x000,	0,0,0,0},	//车型选择页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune26_setup_back,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},	//后视镜选择页

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&setup_18,NULL, 0,SOSD_WIN8,0x000,	4,4,3,3,3,0,0,{501,369,729,420}},//后视选择加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&setup_17,NULL, 0,SOSD_WIN8,0x000,	5,5,3,3,4,1,0,{501,316,729,369}},//车型选择字体加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+263,	ALIGN_TOPLEFT,	&setup_code_key_25,NULL, 0,SOSD_WIN8,0x000,	6,6,4,4,5,2,0,{501,263,729,316}},//开机LOGO加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+209,	ALIGN_TOPLEFT,	&setup_code_key_48,NULL, 0,SOSD_WIN8,0x000,	7,7,5,5,6,3,0,{501,209,729,263}},//原车导航加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+156,	ALIGN_TOPLEFT,	&setup_code_key_24,NULL, 0,SOSD_WIN8,0x000,	7,7,6,6,7,4,0,{501,156,729,209}},//版本信息加深

    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 					0,SOSD_WIN8,0x000,	0,0,0,0,8,4,0,{729,0,1280,480}},//圆点

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune29_version,NULL,		0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-版本信息页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune28_logo_setup,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-开机LOGO页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune32_navi_setup,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-原车导航页
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},//搜索结束

};

//英文高级设置页
struct menu_sitem_info_s menu_add_setup_main_page_items_en[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_seting,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},	//高级设置页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_Car_Type,NULL,		0,SOSD_WIN3,0x000,	0,0,0,0},	//车型选择页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_Camera,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},	//后视镜选择页

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&Camera_Option_item,NULL, 0,SOSD_WIN8,0x000,	4,4,3,3,3,0,0,{501,369,729,420}},//后视选择加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&Car_Option_item,NULL, 0,SOSD_WIN8,0x000,	5,5,3,3,4,1,0,{501,316,729,369}},//车型选择字体加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+263,	ALIGN_TOPLEFT,	&Logo_item,NULL, 0,SOSD_WIN8,0x000,	6,6,4,4,5,2,0,{501,263,729,316}},//开机LOGO加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+209,	ALIGN_TOPLEFT,	&OEM_Navi_item,NULL, 0,SOSD_WIN8,0x000,	7,7,5,5,6,3,0,{501,209,729,263}},//原车导航加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+156,	ALIGN_TOPLEFT,	&Firmware_item,NULL, 0,SOSD_WIN8,0x000,	7,7,6,6,7,4,0,{501,156,729,209}},//版本信息加深

    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 					0,SOSD_WIN8,0x000,	0,0,0,0,8,4,0,{729,0,1280,480}},//圆点

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_Version,NULL,		0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-版本信息页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_Logo,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-开机LOGO页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_OEM_Navi,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-原车导航页
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},//搜索结束

};


struct menu_sitem_info_s menu_add_setup_main_page_items_ct[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_seting_ct,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},	//高级设置页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_Car_Type_ct,NULL,		0,SOSD_WIN3,0x000,	0,0,0,0},	//车型选择页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_Camera_ct,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},	//后视镜选择页

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&Camera_Option_item_ct,NULL, 0,SOSD_WIN8,0x000,	4,4,3,3,3,0,0,{501,369,729,420}},//后视选择加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&Car_Option_item_ct,NULL, 0,SOSD_WIN8,0x000,	5,5,3,3,4,1,0,{501,316,729,369}},//车型选择字体加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+263,	ALIGN_TOPLEFT,	&Logo_item_ct,NULL, 0,SOSD_WIN8,0x000,	6,6,4,4,5,2,0,{501,263,729,316}},//开机LOGO加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+209,	ALIGN_TOPLEFT,	&OEM_Navi_item_ct,NULL, 0,SOSD_WIN8,0x000,	7,7,5,5,6,3,0,{501,209,729,263}},//原车导航加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+156,	ALIGN_TOPLEFT,	&Firmware_item_ct,NULL, 0,SOSD_WIN8,0x000,	7,7,6,6,7,4,0,{501,156,729,209}},//版本信息加深

    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 					0,SOSD_WIN8,0x000,	0,0,0,0,8,4,0,{729,0,1280,480}},//圆点

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_Version_ct,NULL,		0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-版本信息页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_Logo_ct,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-开机LOGO页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&Adv_OEM_Navi_ct,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},//高级设置-原车导航页
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},//搜索结束

};


//设置页
struct menu_sitem_info_s menu_add_setup1_main_page_items[] =
{																		//	mune33_SETUP1
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune38_SETUP1_Main_New,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},		//设置页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&setup_code_key_14,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,3,0,0,{501,300,729,369}},//低速雷达加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&setup_code_key_15,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,4,1,0,{501,369,729,420}},//高级设置加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&setup_code_key_14,NULL, 0,SOSD_WIN8,0x000,	5,5,4,4,3,0,0,{501,316,729,369}},//低速雷达加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&setup_code_key_15,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,4,1,0,{501,369,729,420}},//高级设置加深

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+263,	ALIGN_TOPLEFT,	&setup_code_key_53,NULL,0,SOSD_WIN8,0x000,	6,6,3,3,5,2,0,{501,263,729,316}},//导航显示加深
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+210,	ALIGN_TOPLEFT,	&Seting_Language_item,NULL,0,SOSD_WIN8,0x000,	6,6,5,5,6,3,0,{501,210,729,263}},//语言选择加深    Seting_Language
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 0,SOSD_WIN8,0x000,	0,0,0,0,0xff,2,2,{730,0,1280,480}},	//返回
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};

//英文显示-设置
struct menu_sitem_info_s menu_add_setup1_main_page_items_en[] =
{																		//
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&setp_main_en,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},		//设置页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&Setting_radar_item,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,3,0,0,{501,300,729,369}},//低速雷达加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&Setting_Setp_item,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,4,1,0,{501,369,729,420}},//高级设置加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&Setting_radar_item,NULL, 0,SOSD_WIN8,0x000,	5,5,4,4,3,0,0,{501,316,729,369}},//低速雷达加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&Setting_Setp_item,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,4,1,0,{501,369,729,420}},//高级设置加深

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+263,	ALIGN_TOPLEFT,	&Setting_maps_item,NULL,0,SOSD_WIN8,0x000,	6,6,3,3,5,2,0,{501,263,729,316}},//导航显示加深
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+210,	ALIGN_TOPLEFT,	&Seting_Language_item,NULL,0,SOSD_WIN8,0x000,	6,6,5,5,6,3,0,{501,210,729,263}},//语言选择加深    Seting_Language
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 0,SOSD_WIN8,0x000,	0,0,0,0,0xff,2,2,{730,0,1280,480}},	//返回
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};


struct menu_sitem_info_s menu_add_setup1_main_page_items_ct[] =
{																		//
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&setp_main_ct,NULL,	0,SOSD_WIN3,0x000,	0,0,0,0},		//设置页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&Setting_radar_item_ct,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,3,0,0,{501,300,729,369}},//低速雷达加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&Setting_Setp_item_ct,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,4,1,0,{501,369,729,420}},//高级设置加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+316,	ALIGN_TOPLEFT,	&Setting_radar_item_ct,NULL, 0,SOSD_WIN8,0x000,	5,5,4,4,3,0,0,{501,316,729,369}},//低速雷达加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+369,	ALIGN_TOPLEFT,	&Setting_Setp_item_ct,NULL, 0,SOSD_WIN8,0x000,	3,3,4,4,4,1,0,{501,369,729,420}},//高级设置加深

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+263,	ALIGN_TOPLEFT,	&Setting_maps_item_ct,NULL,0,SOSD_WIN8,0x000,	6,6,3,3,5,2,0,{501,263,729,316}},//导航显示加深
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+501,0+210,	ALIGN_TOPLEFT,	&Seting_Langange_item_ct,NULL,0,SOSD_WIN8,0x000,	6,6,5,5,6,3,0,{501,210,729,263}},//语言选择加深    Seting_Language
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 0,SOSD_WIN8,0x000,	0,0,0,0,0xff,2,2,{730,0,1280,480}},	//返回
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};

struct menu_sitem_info_s menu_add_setup1_navi_show_page_items[] =
{																		//mune34_navi_show_setup
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune40_SETUP1_Navi,NULL,	 0,SOSD_WIN3,0x000,	0,0,0,0},//设置-导航显示页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+209,	ALIGN_TOPLEFT,	&setup_code_key_49,NULL, 	 0,SOSD_WIN8,0x000,	1,1,2,2,1,0,3,{729,209,1060,263}},//全屏加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&setup_code_key_50,NULL, 	 0,SOSD_WIN8,0x000,	1,1,2,2,2,1,4,{729,263,1060,316}},//标准加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+209,	ALIGN_TOPLEFT,	&setup_code_key_51,NULL, 	 0,SOSD_WIN8,0x000,	0,0,0,0},	//全屏圆点加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&setup_code_key_52,NULL, 	 0,SOSD_WIN8,0x000,	0,0,0,0},	//标准圆点加深

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+222,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,5},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+275,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,6},
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,2,2,{500,0,729,480}},

    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};
//英文显示页
struct menu_sitem_info_s menu_add_setup1_navi_show_page_items_en[] =
{																				//setp_GPS_Display_en
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&setp_GPS_Display_en,NULL,	 0,SOSD_WIN3,0x000,	0,0,0,0},//设置-导航显示页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+209,	ALIGN_TOPLEFT,	&Full_none_en,NULL, 	 0,SOSD_WIN8,0x000,	1,1,2,2,1,0,3,{729,209,1060,263}},//全屏加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&Sta_none_en,NULL, 	 0,SOSD_WIN8,0x000,	1,1,2,2,2,1,4,{729,263,1060,316}},//标准加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+209,	ALIGN_TOPLEFT,	&Full_en,NULL, 	 0,SOSD_WIN8,0x000,	0,0,0,0},	//全屏圆点加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&Sta_en,NULL, 	 0,SOSD_WIN8,0x000,	0,0,0,0},	//标准圆点加深

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+222,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,5},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+275,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,6},
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,2,2,{500,0,729,480}},

    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};

struct menu_sitem_info_s menu_add_setup1_navi_show_page_items_ct[] =
{																				//setp_GPS_Display_en
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&setp_GPS_Display_ct,NULL,	 0,SOSD_WIN3,0x000,	0,0,0,0},//设置-导航显示页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+209,	ALIGN_TOPLEFT,	&Full_none_ct,NULL, 	 0,SOSD_WIN8,0x000,	1,1,2,2,1,0,3,{729,209,1060,263}},//全屏加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&Sta_none_ct,NULL, 	 0,SOSD_WIN8,0x000,	1,1,2,2,2,1,4,{729,263,1060,316}},//标准加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+209,	ALIGN_TOPLEFT,	&Full_ct,NULL, 	 0,SOSD_WIN8,0x000,	0,0,0,0},	//全屏圆点加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&Sta_ct,NULL, 	 0,SOSD_WIN8,0x000,	0,0,0,0},	//标准圆点加深

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+222,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,5},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+275,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,6},
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,2,2,{500,0,729,480}},

    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};



struct menu_sitem_info_s menu_add_setup1_auto_rada_page_items[] =
{
																					//mune35_SETUP1_rada	
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&mune39_SETUP1_Low_Radir,NULL, 0,SOSD_WIN3,0x000,	0,0,0,0},//设置-低速雷达页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+316,	ALIGN_TOPLEFT,	&setup_21,NULL,  0,SOSD_WIN8,0x000,	2,2,1,1,1,0,3,{729,316,1060,369}},//关闭加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&setup_20,NULL,  0,SOSD_WIN8,0x000,	2,2,1,1,2,1,4,{729,263,1060,316}},//打开加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+316,	ALIGN_TOPLEFT,	&setup_23,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0},	//关闭圆点加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&setup_22,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0},	//打开圆点加深

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+329,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,5},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+275,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,6},
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,2,2,{500,0,729,480}},

    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};
	//英文显示页
struct menu_sitem_info_s menu_add_setup1_auto_rada_page_items_en[] =
{																			
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+497,0+0,	ALIGN_TOPLEFT,	&setp_low_speed_sensor,NULL, 0,SOSD_WIN3,0x000,	0,0,0,0},//设置-低速雷达页
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+316,	ALIGN_TOPLEFT,	&Radar_Off_none,NULL,  0,SOSD_WIN8,0x000,	2,2,1,1,1,0,3,{729,316,1060,369}},//关闭加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&Radar_On_none,NULL,  0,SOSD_WIN8,0x000,	2,2,1,1,2,1,4,{729,263,1060,316}},//打开加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+316,	ALIGN_TOPLEFT,	&Radar_Off,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0},	//关闭圆点加深
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+729,0+263,	ALIGN_TOPLEFT,	&Radar_On,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0},	//打开圆点加深

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+329,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,5},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0+777,0+275,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN7,0x000,	0,0,0,0,6},
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,2,2,{500,0,729,480}},

    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL,  0,SOSD_WIN8,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};
*/

#if 1
const struct menu_sitem_info_s menu_add_rada_setup_page_items[] =	//倒车界面设置
{
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_1_0,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,85,155+70,85+54}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_0,NULL, 0,SOSD_WIN6,0x000,	0,1,2,1,1,1,1,{155,139,155+70,193}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_0,NULL, 0,SOSD_WIN6,0x000,	1,2,3,2,2,2,2,{155,193,155+70,247}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_4_0,NULL, 0,SOSD_WIN6,0x000,	2,3,3,3,3,3,3,{155,247,155+70,301}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};
#else
struct menu_sitem_info_s menu_add_rada_setup_page_items[] =	//倒车界面设置
{
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_1_0,NULL,						0,SOSD_WIN6,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_1_1,NULL,						0,SOSD_WIN6,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_0,NULL,						0,SOSD_WIN6,0x000,	3,3,2,2,2,3,2,{671+480,429,790+480,480}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_1,NULL, 					0,SOSD_WIN6,0x000,	4,4,2,2,3,2,3,{451+480,429,569+480,480}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_2,NULL, 					0,SOSD_WIN6,0x000,	5,5,3,3,4,1,4,{232+480,429,351+480,480}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_3,NULL, 					0,SOSD_WIN6,0x000,	5,5,4,4,5,0,5,{19+480,429,131+480,480}},
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 					0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
};
#endif

const struct menu_sitem_info_s menu_add_back_light_setup_page_items[] =
{
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_0,NULL, 0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_1,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_2,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_3,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},	
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_4,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_5,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_6,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_7,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_8,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_9,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
	{ TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_10,NULL,0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,139,155+70,193}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_1_0,NULL,	0,SOSD_WIN6,0x000,		0,0,1,0,11,11,11,{155,85,155+70,85+54}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_0,NULL, 0,SOSD_WIN6,0x000,		1,2,3,2,12,12,12,{155,193,155+70,247}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_4_0,NULL, 0,SOSD_WIN6,0x000,		2,3,3,3,13,13,13,{155,247,155+70,301}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
};

const struct menu_sitem_info_s menu_add_back_Contrast_setup_page_items[] =
{
    { TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_0,NULL, 0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_1,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_2,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_3,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},	
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_4,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_5,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_6,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_7,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_8,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_9,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_10,NULL,0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,193,155+70,247}},
    { TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_1_0,NULL,	0,SOSD_WIN6,0x000,		0,0,1,0,11,11,11,{155,85,155+70,85+54}},
    { TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_0,NULL, 0,SOSD_WIN6,0x000,		1,2,3,2,12,12,12,{155,139,155+70,193}},
    { TYPE_BG,OnOSDback_Contrast_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_4_0,NULL, 0,SOSD_WIN6,0x000,		2,3,3,3,13,13,13,{155,247,155+70,301}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
};

const struct menu_sitem_info_s menu_add_back_Camera_setup_page_items[] =
{
	{ TYPE_BG,OnOSDback_Camera_menu_setuptype_Click,	0,0,	ALIGN_TOPLEFT,	&Menu_1_1,NULL, 0,SOSD_WIN6,0x000,		2,3,3,3,0,0,0,{155,85,155+70,85+54}},
    { TYPE_BG,OnOSDback_Camera_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_0,NULL,	0,SOSD_WIN6,0x000,		0,0,1,0,1,1,1,{155,139,155+70,193}},
    { TYPE_BG,OnOSDback_Camera_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_0,NULL, 0,SOSD_WIN6,0x000,		1,2,3,2,2,2,2,{155,193,155+70,247}},
    { TYPE_BG,OnOSDback_Camera_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_4_0,NULL, 0,SOSD_WIN6,0x000,		2,3,3,3,3,3,3,{155,247,155+70,301}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};

const struct menu_sitem_info_s menu_add_back_Track_setup_page_items[] =
{
	{ TYPE_BG,OnOSDback_Track_menu_setuptype_Click,	0,0,	ALIGN_TOPLEFT,	&Menu_4_1,NULL, 0,SOSD_WIN6,0x000,		2,3,3,3,0,0,0,{155,247,155+70,301}},
    { TYPE_BG,OnOSDback_Track_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_1_0,NULL,	0,SOSD_WIN6,0x000,		0,0,1,0,1,1,1,{155,85,155+70,85+54}},
    { TYPE_BG,OnOSDback_Track_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_0,NULL, 0,SOSD_WIN6,0x000,		1,2,3,2,2,2,2,{155,139,155+70,193}},
    { TYPE_BG,OnOSDback_Track_menu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_0,NULL, 0,SOSD_WIN6,0x000,		2,3,3,3,3,3,3,{155,193,155+70,247}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
};

const struct menu_sitem_info_s menu_back_Track_Tick[] =
{
	{ TYPE_BG,OnOSDback_Camera_menu_setuptype_Click,	166,255,	ALIGN_TOPLEFT,	&P_00,NULL, 0,SOSD_WIN0,0x000,		2,3,3,3,13,13,13,},
	{ TYPE_BG,OnOSDback_Camera_menu_setuptype_Click,	166,255,	ALIGN_TOPLEFT,	&P_01,NULL, 0,SOSD_WIN0,0x000,		2,3,3,3,13,13,13,},

};

const struct menu_sitem_info_s menu_back_Camera_Tick[] =
{
	{ TYPE_BG,OnOSDback_Track_menu_setuptype_Click,	164,92,	ALIGN_TOPLEFT,	&R_00,NULL, 0,SOSD_WIN8,0x000,		2,3,3,3,13,13,13,},
	{ TYPE_BG,OnOSDback_Track_menu_setuptype_Click,	164,92,	ALIGN_TOPLEFT,	&R_01,NULL, 0,SOSD_WIN8,0x000,		2,3,3,3,13,13,13,},
};

 const struct menu_sitem_info_s  menu_add_rada_setup_page_items_en[] =	//英文版倒车原车界面区域
{
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_1_0,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,85,155+70,85+54}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_0,NULL, 0,SOSD_WIN6,0x000,	0,1,2,1,1,1,1,{155,139,155+70,193}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_0,NULL, 0,SOSD_WIN6,0x000,	1,2,3,2,2,2,2,{155,193,155+70,247}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_4_0,NULL, 0,SOSD_WIN6,0x000,	2,3,3,3,3,3,3,{155,247,155+70,301}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
};

 const struct menu_sitem_info_s menu_add_rada_setup_page_items_ct[] =	//倒车原车界面区域
{
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_1_0,NULL,	0,SOSD_WIN6,0x000,	0,0,1,0,0,0,0,{155,85,155+70,85+54}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_2_0,NULL, 0,SOSD_WIN6,0x000,	0,1,2,1,1,1,1,{155,139,155+70,193}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_3_0,NULL, 0,SOSD_WIN6,0x000,	1,2,3,2,2,2,2,{155,193,155+70,247}},
    { TYPE_BG,OnOSDbackmenu_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&Menu_4_0,NULL, 0,SOSD_WIN6,0x000,	2,3,3,3,3,3,3,{155,247,155+70,301}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
};

  
const menu_sitem_info_t menu_add_rada_angle_tr_page_items[] =
{
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_mid,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L1,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L2,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L3,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L4,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L5,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L6,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L7,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L8,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L9,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L10,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L11,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L12,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L13,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L14,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L15,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L16,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L17,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L18,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L19,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L20,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L21,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L22,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L23,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L24,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L25,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L26,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L27,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L28,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L29,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L30,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L31,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_L32,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
                                                                                                         
	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R1,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R2,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R3,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R4,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R5,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R6,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R7,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R8,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R9,NULL,		0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R10,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R11,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R12,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R13,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R14,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R15,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R16,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R17,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R18,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R19,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R20,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R21,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R22,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R23,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R24,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R25,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R26,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R27,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R28,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R29,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R30,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R31,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_R32,NULL,	0,SOSD_WIN1,0x000,	0,0,0,0},

	{ TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	0,0+0,	ALIGN_TOPLEFT,	&back_angle_tr_BG,NULL,		0,SOSD_WIN3,0x000,	0,0,0,0},
	

};	
  
	

struct menu_sitem_info_s menu_add_rada_obstacles_L_page_items[1] =
{
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
};
struct menu_sitem_info_s menu_add_rada_obstacles_R_page_items[1] =
{
	{ TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&Menu_1_0,NULL, 0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},
};

/*
struct menu_sitem_info_s menu_add_back_light_setup_page_items[] =
{
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+24,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,		0,SOSD_WIN0,0x000,	0,0,1,1,0,10,11,{600+480,24,790+480,60}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+60,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,		0,SOSD_WIN0,0x000,	0,0,2,2,1,9,12,{600+480,60,790+480,96}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+96,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,		0,SOSD_WIN0,0x000,	1,1,3,3,2,8,13,{600+480,96,790+480,132}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+132,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,	0,SOSD_WIN0,0x000,	2,2,4,4,3,7,14,{600+480,132,790+480,168}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+168,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,	0,SOSD_WIN0,0x000,	3,3,5,5,4,6,15,{600+480,168,790+480,205}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+205,	ALIGN_TOPLEFT,	&rada_R_part_02,NULL,	0,SOSD_WIN0,0x000,	4,4,6,6,5,5,16,{600+480,205,790+480,241}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+241,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,	0,SOSD_WIN0,0x000,	5,5,7,7,6,4,17,{600+480,241,790+480,277}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+277,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,	0,SOSD_WIN0,0x000,	6,6,8,8,7,3,18,{600+480,277,790+480,313}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+313,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,	0,SOSD_WIN0,0x000,	7,7,9,9,8,2,19,{600+480,313,790+480,349}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+349,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,	0,SOSD_WIN0,0x000,	8,8,10,10,9,1,20,{600+480,349,790+480,385}},
    { TYPE_BG,OnOSDback_light_menu_setuptype_Click,	600+480,0+385,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,	0,SOSD_WIN0,0x000,	9,9,10,10,10,0,21,{600+480,385,790+480,420}},

    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_14,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,11},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_13,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,12},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_12,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,13},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_11,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,14},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_10,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,15},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_09,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,16},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_08,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,17},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_07,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,18},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_06,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,19},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_05,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,20},
    { TYPE_BG,OnOSDSetupmenu_FS_setuptype_Click,	480+680,0+420,	ALIGN_TOPLEFT,	&rada_R_part_04,NULL,						0,SOSD_WIN8,0x000,	0,0,0,0,21},


    { TYPE_BG,OnOSDCommon_RetBtnClick,	600+480,0+385,	ALIGN_TOPLEFT,	&rada_R_part_01,NULL,	0,SOSD_WIN0,0x000,	2,2,3,4,22,3,2,{0+480,0,680+480,480}},
    { TYPE_BG,OnOSDCommon_RetBtnClick,	0+777,0+382,	ALIGN_TOPLEFT,	&setup_04,NULL, 					0,SOSD_WIN6,0x000,	0,0,0,0,0xff,0xff,0xff,{U16_MAX,U16_MAX,U16_MAX,U16_MAX}},

};
*/




//struct menu_page_info_s menu_audio_page = {0,  menu_audio_page_items };
//struct menu_page_info_s menu_setup_page1 = { 3,	menu_add_setup_main_page_items}; //高级设置页 车型选择页 后视镜选择页 等
//struct menu_page_info_s menu_setup_page1_en = { 3,	menu_add_setup_main_page_items_en}; //英文高级设置页 车型选择页 后视镜选择页 等
//struct menu_page_info_s menu_setup_page1_ct = { 3,	menu_add_setup_main_page_items_ct}; //英文高级设置页 车型选择页 后视镜选择页 等

//struct menu_page_info_s menu_setup_page2_Version_key = { 0,menu_add_setup_Version_page_items};
//struct menu_page_info_s menu_setup_page2_navi_key = { 0,	menu_add_setup_NAV_key_page_items }; // 原车导航: 有 无
//struct menu_page_info_s menu_setup_page2_navi_key_en = { 0,	menu_add_setup_NAV_key_page_items_en }; // 英文原车导航: 有 无
//struct menu_page_info_s menu_setup_page2_navi_key_ct = { 0,	menu_add_setup_NAV_key_page_items_ct}; // 英文原车导航: 有 无

//struct menu_page_info_s menu_setup_page2_logo = { 0,	menu_add_setup_logo_page_items }; //开机LOGO: 有 无
//struct menu_page_info_s menu_setup_page2_logo_en = { 0,	menu_add_setup_logo_page_items_en }; //英文开机LOGO: 有 无
//struct menu_page_info_s menu_setup_page2_logo_ct = { 0,	menu_add_setup_logo_page_items_ct }; //英文开机LOGO: 有 无

//struct menu_page_info_s menu_setup_page2_car = { 0,	menu_add_setup_car_page_items }; //新C GLC
//struct menu_page_info_s menu_setup_page2_car_en = { 0,	menu_add_setup_car_page_items_en }; //英文新C GLC
//struct menu_page_info_s menu_setup_page2_car_ct = { 0,	menu_add_setup_car_page_items_ct }; //英文新C GLC

//struct menu_page_info_s menu_setup_page2_back = { 0,	menu_add_setup_back_page_items }; //后视选择:原车 加装 360 无
//struct menu_page_info_s menu_setup_page2_back_en = { 0,	menu_add_setup_back_page_items_en }; //英文后视选择:原车 加装 360 无
//struct menu_page_info_s menu_setup_page2_back_ct = { 0,	menu_add_setup_back_page_items_ct }; //英文后视选择:原车 加装 360 无


//struct menu_page_info_s menu_setup1_page1 = { 3,	menu_add_setup1_main_page_items}; //设置页
//struct menu_page_info_s menu_setup1_page1_en = { 3,	menu_add_setup1_main_page_items_en}; //英文设置页
//struct menu_page_info_s menu_setup1_page1_ct = { 3,	menu_add_setup1_main_page_items_ct}; //英文设置页

//struct menu_page_info_s menu_setup1_page1_navi_show = { 1,	menu_add_setup1_navi_show_page_items}; //导航显示页
//struct menu_page_info_s menu_setup1_page1_navi_show_en = { 1,	menu_add_setup1_navi_show_page_items_en}; //英文导航显示页
//struct menu_page_info_s menu_setup1_page1_navi_show_ct = { 1,	menu_add_setup1_navi_show_page_items_ct}; //英文导航显示页

//struct menu_page_info_s menu_setup1_page1_auto_rada = { 1,	menu_add_setup1_auto_rada_page_items}; //低速雷达页
//struct menu_page_info_s menu_setup1_page1_auto_rada_en = { 1,	menu_add_setup1_auto_rada_page_items_en}; //低速雷达页
//struct menu_page_info_s menu_setup1_page1_auto_rada_ct = { 1,	menu_add_setup1_auto_rada_page_items_ct}; //低速雷达页

//struct menu_page_info_s menu_setup1_page1_language_type = { 1,	menu_add_setup1_Language_Type_page_items}; //语言选择页
//struct menu_page_info_s menu_setup1_page1_language_type_en = { 1,	menu_add_setup1_Language_Type_page_items_en}; //语言选择页
//struct menu_page_info_s menu_setup1_page1_language_type_ct = { 1,	menu_add_setup1_Language_Type_page_items_ct}; //语言选择页


//struct menu_page_info_s menu_setup1_page1_code = { 1,	menu_add_setup1_code_page_items}; //键盘页
//struct menu_page_info_s menu_setup1_page1_code_en = { 1,	menu_add_setup1_code_page_items_en}; //英文键盘页
//struct menu_page_info_s menu_setup1_page1_code_ct = { 1,	menu_add_setup1_code_page_items_en}; //英文键盘页

struct menu_page_info_s menu_home_page = { 0,   menu_home_source_page_items }; //


struct menu_page_info_s menu_back_rada_page = { 0,   (menu_sitem_info_t *)menu_add_rada_setup_page_items }; //倒车

struct menu_page_info_s menu_back_rada_light_page = { 5,	(menu_sitem_info_t *)menu_add_back_light_setup_page_items }; //note 1 item

struct menu_page_info_s menu_back_rada_Contrast_page = { 5,	(menu_sitem_info_t *)menu_add_back_Contrast_setup_page_items }; //对比度


struct menu_page_info_s menu_back_rada_Camera_SW_page = { 0,	(menu_sitem_info_t *)menu_add_back_Camera_setup_page_items }; //

struct menu_page_info_s menu_back_rada_Track_SW_page = { 0,	(menu_sitem_info_t *)menu_add_back_Track_setup_page_items }; //





void Info_To_Header( IMAGE_INFO *tImageInfo )
{
    IMAGE_HEADER *tImageHeader = &gtImageHeader;

    tImageHeader->lut_type = tImageInfo->lut_type;
    tImageHeader->bpp      = tImageInfo->rle >> 0x04;
    tImageHeader->rle      = tImageInfo->rle &  0x0F;
    tImageHeader->dx       = tImageInfo->dx;
    tImageHeader->dy       = tImageInfo->dy;
    tImageHeader->lut_size = 0x004 << tImageHeader->bpp;
}


void RLE2_To_Header( RLE2_HEADER *tRLE2Header )
{
    IMAGE_HEADER *tImageHeader;

    uint8_t  bpp;
    uint16_t colors;

    tImageHeader = &gtImageHeader;

    tImageHeader->lut_type = tRLE2Header->lut_format & 0x01;

    colors = (uint16_t)tRLE2Header->lut_colors + 1;

    for(bpp = 0; bpp < 9; bpp++)
    {
        if(colors & 0x01) break;
        colors>>=1;
    }

    tImageHeader->bpp      = bpp;
    tImageHeader->rle      = tRLE2Header->rledata_cnt & 0x0F;
    tImageHeader->dx       = tRLE2Header->w;
    tImageHeader->dy       = tRLE2Header->h;
    tImageHeader->lut_size = 0x004 << bpp;
}


void MenuReadRLEHeader( uint32_t ulAddress, RLE2_HEADER *tRLE2Header )
{
    uint32_t ulTemp = 0;

    TW8836_WaitVBlank(1);

    SpiFlashReadRLE2Header((uint8_t *)tRLE2Header, ulAddress, sizeof(RLE2_HEADER));

    if((tRLE2Header->id[0] != 'I') || (tRLE2Header->id[1] != 'T'))
    {
    //    printf("\r\nMenu Read RLE Header Failed.");
        // return;
    }

    ulTemp = tRLE2Header->size;

    tRLE2Header->size   = ulTemp & 0x000000FF;
    tRLE2Header->size <<= 8;
    ulTemp >>= 8;
    tRLE2Header->size  |= ulTemp & 0x000000FF;
    tRLE2Header->size <<= 8;
    ulTemp >>= 8;
    tRLE2Header->size  |= ulTemp & 0x000000FF;
    tRLE2Header->size <<= 8;
    ulTemp >>= 8;
    tRLE2Header->size  |= ulTemp & 0x000000FF;
}


void MenuPrepareImageHeader( IMAGE_ITEM_INFO *tImageItemInfo )
{
    IMAGE_HEADER *tImageHeader = &gtImageHeader;

    //if(tImageItemInfo->type == 2)
    {
        MenuReadRLEHeader(tImageItemInfo->addr, &gtRLE2Header);

        RLE2_To_Header(&gtRLE2Header);

        tImageHeader->lut_addr = tImageItemInfo->addr + MRLE_INFO_SIZE;
        tImageHeader->img_addr = tImageItemInfo->addr + tImageHeader->lut_size + MRLE_INFO_SIZE;
    }
#if 0
    else if(tImageItemInfo->type == 2)
    {
        Info_To_Header(tImageItemInfo->info);

        tImageHeader->lut_addr  = tImageItemInfo->addr;
        tImageHeader->img_addr  = tImageItemInfo->addr + tImageHeader->lut_size;
        tImageHeader->lut_addr += MRLE_INFO_SIZE;
        tImageHeader->img_addr += MRLE_INFO_SIZE;
    }
    else
    {
        Info_To_Header(tImageItemInfo->info);

        tImageHeader->lut_addr = tImageItemInfo->addr;
        tImageHeader->img_addr = tImageItemInfo->addr + tImageHeader->lut_size;
    }
#endif
}

void SpiOsdWinHWEnable(BYTE winno, BYTE en)
{
    BYTE index;
    BYTE dat;

    index = SpiOsdWinBase[winno] + 0x00;
	WaitVBlank(1);
	TW8836_WritePage( TW8836_PAGE4_SPI_OSD );
    WriteTW88(0xff, 0x04);

    dat = ReadTW88(index);
    if( en )
    {
        WriteTW88(index, dat | 0x01);
    }
    else     
	{
		WriteTW88(index, dat & 0xfe);
    }
}

void SpiOsd_show1(BYTE winno)
{

    BYTE index;
    //BYTE dat;


    TW8836_WritePage( TW8836_PAGE4_SPI_OSD );
    index = SpiOsdWinBase[winno] + 0x00;

    WriteTW88(index+0x04, 0);
    WriteTW88(index+0x05, 0);

}

void SpiOsd_show(BYTE winno, BYTE en)
{
    BYTE index;
    BYTE dat;
	
	
    index = SpiOsdWinBase[winno] + 0x00;
	TW8836_WritePage( TW8836_PAGE4_SPI_OSD );
    dat = ReadTW88(index);

    WriteTW88(index, dat | 0x01);
    WriteTW88(index+0x0c, 0x7f);

    if( en )
    {
        WriteTW88(index, dat & 0xef);
    }
    else	 WriteTW88(index, dat | 0x10);
}


void SpiOsdWinHWOffAll(BYTE wait)
{
#if 1

    BYTE i,count;
    if(wait)
        WaitVBlank(wait);

    if(OSD_LUT_glag==2)
        count=i=3;//加载色表关闭所有窗口
    else if(OSD_LUT_glag)
        count=i=0;
    else
        count=i=3;

    TW8836_WritePage( TW8836_PAGE4_SPI_OSD );
    //SpiOsdEnableRLC(OFF);		//disable RLE
    for(; i<= 8; i++)
        SpiOsdWinHWEnable(i, 0);


    if(!count)
        SpiOsdClrRlc_updateReg();
#endif

}

void OSD_closed_windows(BYTE win1,BYTE win2)
{
    BYTE i;

 //   WaitVBlank(1);
 //   TW8836_WritePage( TW8836_PAGE4_SPI_OSD );

    for(i=win1; i<= win2; i++)
        SpiOsdWinHWEnable(i, 0);

}

void proc_rada_menu_bg(void)
{
    SpiOsdWinHWOffAll(1);

    proc_rada_menu_INIT_lut(menu_add_rada_angle_tr_page_items[65]);
    proc_rada_menu_INIT_lut(menu_add_rada_angle_tr_page_items[1]);
    proc_rada_menu_INIT_lut(menu_add_rada_font_R_icon_page_items[0]);
/*	
    if(0 == Sys.FS_select.System_Language)
	    proc_rada_menu_INIT_lut(menu_add_rada_setup_page_items[0]);
	else if(1 == Sys.FS_select.System_Language)
		;//proc_rada_menu_INIT_lut(menu_add_rada_setup_page_items_ct[0]);
	else
		;//proc_rada_menu_INIT_lut(menu_add_rada_setup_page_items_en[0]);
*/


}
/*
void proc_logo_menu_bg(void)
{
    SpiOsdWinHWOffAll(1);

    proc_rada_menu_INIT_lut(menu_logo_page_items[0]);
}

void proc_air_menu_bg(void)
{
    SpiOsdWinHWOffAll(1);

    proc_rada_menu_INIT_lut(menu_add_air_other_page_items[2]);
}
*/

void proc_rada_menu_INIT_lut(menu_sitem_info_t MUEN)
{
    if(!OSD_LUT_glag)
        return;

    //proc_menu_bg();

    {
        IMAGE_ITEM_INFO *tImage;
        IMAGE_HEADER    *tImageHeader = &gtImageHeader;
        BYTE WIN_DEMO;

        IMAGE_ITEM_INFO *tImageArray = MUEN.image;
        WIN_DEMO=MUEN.win;

        tImage = tImageArray;


        SpiOsdEnable(1);

        SpiOsdClrRlc();
        SpiOsdClrLut();
        SpiOsdClrReg();

        //TW8836_WaitVBlank(1);
        MenuPrepareImageHeader(tImage);

        // SOsd_Enable(WIN_DEMO,1);
        //

        SpiOsdSetLut(WIN_DEMO, tImageHeader->lut_type, MUEN.lut, tImageHeader->lut_size, tImageHeader->lut_addr, tImage->alpha);
        SpiOsdUpdateLut(WIN_DEMO, 0);//0

        //SpiOsdWinEnable(WIN_DEMO, 1);
        //TW8836_WaitVBlank(1);

        //SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);


    }
}


void proc_rada_menu_INIT_lut2(menu_sitem_info_t MUEN,BYTE count)
{
    if(1)
        //proc_menu_bg();

    {
        IMAGE_ITEM_INFO *tImage;
        IMAGE_HEADER    *tImageHeader = &gtImageHeader;
        BYTE WIN_DEMO;

        IMAGE_ITEM_INFO *tImageArray = MUEN.image;
        WIN_DEMO=count;//MUEN.win;

        tImage = tImageArray;


        SpiOsdEnable(1);

        SpiOsdClrRlc();
        SpiOsdClrLut();
        SpiOsdClrReg();

        TW8836_WaitVBlank(1);
        MenuPrepareImageHeader(tImage);

        // SOsd_Enable(WIN_DEMO,1);
        //

        SpiOsdSetLut(WIN_DEMO, tImageHeader->lut_type, MUEN.lut, tImageHeader->lut_size, tImageHeader->lut_addr, tImage->alpha);
        SpiOsdUpdateLut(WIN_DEMO, 0);//0

        //SpiOsdWinEnable(WIN_DEMO, 1);
        //TW8836_WaitVBlank(1);

        //SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);
    }
}


void MenuStart( void )
{
    SpiOsdInit();

    SpiOsdSetDeValue();
}


/*=========================
this function is to initial TW8836
by miller.tao20150829



===========================*/
void InitSystem( void )
{

    //printf("\r\nGD32F150C8T6 & TW8836 (" __DATE__ " - " __TIME__ ")");

    InitTW8836();


    MenuStart();

    // printf("\r\nInit System Finished.");
}
/*define image and relative function,miller.tao20150914*/


void proc_return_icon(void)
{

    //FOsdWinOffAll();

    //pop_menu_stack_level();
    //curr_menu->items[0].p();  //redraw parent
}

void SOsd_Enable(BYTE win, BYTE fOn)
{


    extern SPIOSD gtSpiOsd;

    uint8_t  *p;
    p = gtSpiOsd.reg[win];
    if(fOn) *p |= 0x01;
    else    *p &= 0xfe;
}

void SOsd_UpdateRlcB(void)
{
    BYTE bTemp;
    SPIOSD_RLC *pRlc;

    pRlc = &gtSpiOsd.rlc[0];
    WriteTW88(REG406, pRlc->winno<< 4);
    bTemp = pRlc->bpp;
    if(bTemp==7)	bTemp++;
    bTemp <<= 4;
    bTemp |= pRlc->counter;
    WriteTW88(REG407, bTemp);
}
void SOsd_UpdateRlcA(void)
{
    BYTE bTemp;
    SPIOSD_RLC *pRlc;

    pRlc = &gtSpiOsd.rlc[1];
    WriteTW88(REG404, pRlc->winno<< 4);
    bTemp = pRlc->bpp;
    if(bTemp==7)	bTemp++;
    bTemp <<= 4;
    bTemp |= pRlc->counter;
    WriteTW88(REG405, bTemp);
}


void SOsd_show(BYTE fClean)
{
    BYTE bTemp;
    BYTE win;
    WORD LutOffset;
    BYTE type;
    WORD wTemp;
    DWORD dTemp;
    SPIOSD_LUT *pLut;


#ifdef DEBUG_OSD
    dPuts("\n\rSOsd_show.....");
    SOsd_dump();
#endif


    WaitVBlank(1);
    //-----------------------------
    // time cirtical section start.
    //-----------------------------

    //-----------------------
    //disable all
    if(fClean)
    {
        WriteTW88(REG420, ReadTW88(REG420) & ~0x01);
        for(win=1; win <= 8; win++)
        {
            wTemp = REG430 + (win << 4);
            WriteTW88(wTemp, ReadTW88(wTemp) & ~0x01);
        }
    }
    //-----------------------
    // update Group B.
//	McuSpiClkToPclk(PLLCLK_DIV_3P0);
    for(win=1; win<=2; win++)
    {
        pLut = &gtSpiOsd.lut[win];
        type = pLut->type;
        if((type & 0x80)==0)
            continue;
        type &= LUTTYPE_MASK;
        LutOffset = pLut->offset;

        bTemp = SOSD_LUT_WEN | SOSD_LUT_BGRP;
        if(type==LUTTYPE_ADDR)		bTemp |= SOSD_LUT_INC_ADDR;
        else						bTemp |= SOSD_LUT_INC_COLM;

        WriteTW88(REG410, bTemp );
        WriteTW88(REG411, (BYTE)LutOffset ); 		// LUT addr.

        WriteTW88(REG4C4, 0x00 );					// DMA stop

        WriteTW88(REG4C3, 0x80 | SPICMD_x_BYTES + 0);

        wTemp = pLut->offset;
        if(type==LUTTYPE_ADDR)
        {
            WriteTW88(REG4C6, (BYTE)(wTemp >> 8));
            WriteTW88(REG4C7, (BYTE)wTemp);
        }
        else
        {
            WriteTW88(REG4C6, (BYTE)(wTemp >> 6));
            WriteTW88(REG4C7, (BYTE)(wTemp << 2));
        }
        wTemp = pLut->size;
        WriteTW88(REG4C8, (BYTE)(wTemp >> 8));
        WriteTW88(REG4C9, (BYTE)wTemp);

        WriteTW88(REG4CA, SPICMD_x_READ ); 				// SPI Command=R

        dTemp = pLut->addr;
        if(SpiFlash4ByteAddr)
        {
            WriteTW88(REG4CB, (BYTE)(dTemp>>24));
            WriteTW88(REG4CC, (BYTE)(dTemp>>16));
            WriteTW88(REG4CD, (BYTE)(dTemp>>8));
            WriteTW88(REG4CE, (BYTE)(dTemp));
        }
        else
        {
            WriteTW88(REG4CB, (BYTE)(dTemp>>16));
            WriteTW88(REG4CC, (BYTE)(dTemp>>8));
            WriteTW88(REG4CD, (BYTE)(dTemp));
        }

        WriteTW88(REG4C0+0x04, 0x01 ); 			// DMA Start
        //wait while(ReadTW88Page() != PAGE4_SPI);

        bTemp = pLut->alpha;
        //updata alpha..
        if(bTemp != 0xFF)
        {
            LutOffset += bTemp;
            bTemp = SOSD_LUT_WEN | SOSD_LUT_INC_NO | SOSD_LUT_BGRP | SOSD_LUT_ATTR;

            WriteTW88(REG410, bTemp);
            WriteTW88(REG411, (BYTE)LutOffset ); 		// alpha index
            WriteTW88(REG412, 0x7F); 					// alpha value
        }
    }
//	McuSpiClkRestore();
    SOsd_UpdateRlcB();
    SOsd_UpdateReg(1,2);

    WaitVBlank(1);
    //-----------------------
    // update Group A.
//	McuSpiClkToPclk(PLLCLK_DIV_3P0);
    for(win=0; win<=8; win++)
    {
        if(win==1 || win==2)
            continue;
        pLut = &gtSpiOsd.lut[win];
        type = pLut->type;
        if((type & 0x80)==0)
            continue;
        type &= LUTTYPE_MASK;
        LutOffset = pLut->offset;

        bTemp = SOSD_LUT_WEN;
        if(type==LUTTYPE_ADDR)	bTemp |= SOSD_LUT_INC_ADDR;
        else					bTemp |= SOSD_LUT_INC_COLM;
        if(LutOffset & 0x0F00)	bTemp |= SOSD_LUT_HIGH256;
        WriteTW88(REG410, bTemp );
        WriteTW88(REG411, (BYTE)LutOffset ); 		// LUT addr.

        WriteTW88(REG4C4, 0x00 );					// DMA stop

        WriteTW88(REG4C3, 0x80 | SPICMD_x_BYTES + 0);
        wTemp = pLut->offset;
        if(type==LUTTYPE_ADDR)
        {
            WriteTW88(REG4C6, (BYTE)(wTemp >> 8));
            WriteTW88(REG4C7, (BYTE)wTemp);
        }
        else
        {
            WriteTW88(REG4C6, (BYTE)(wTemp >> 6));
            WriteTW88(REG4C7, (BYTE)(wTemp << 2));
        }
        wTemp = pLut->size;
        WriteTW88(REG4C8, (BYTE)(wTemp >> 8));
        WriteTW88(REG4C9, (BYTE)wTemp);

        WriteTW88(REG4CA, SPICMD_x_READ ); 			// SPI Command=R
        dTemp = pLut->addr;
        if(SpiFlash4ByteAddr)
        {
            WriteTW88(REG4CB, (BYTE)(dTemp>>24));
            WriteTW88(REG4CC, (BYTE)(dTemp>>16));
            WriteTW88(REG4CD, (BYTE)(dTemp>>8));
            WriteTW88(REG4CE, (BYTE)(dTemp));
        }
        else
        {
            WriteTW88(REG4CB, (BYTE)(dTemp>>16));
            WriteTW88(REG4CC, (BYTE)(dTemp>>8));
            WriteTW88(REG4CD, (BYTE)(dTemp));
        }

        WriteTW88(REG4C0+0x04, 0x01 ); 			// DMA Start
        //wait while(ReadTW88Page() != PAGE4_SPI);

        bTemp = pLut->alpha;
        //updata alpha..
        if(bTemp != 0xFF)
        {
            LutOffset += bTemp;
            bTemp = SOSD_LUT_WEN | SOSD_LUT_INC_NO | SOSD_LUT_ATTR ;
            if(LutOffset >> 8)	bTemp |= SOSD_LUT_HIGH256;

            WriteTW88(REG410, bTemp);
            WriteTW88(REG411, (BYTE)LutOffset ); 		// alpha index
            WriteTW88(REG412, 0x7F/*value*/ ); 			// alpha value
        }
    }
//	McuSpiClkRestore();
    SOsd_UpdateReg(3,8);
    SOsd_UpdateReg(0,0);
    SOsd_UpdateRlcA();
    //-----------------------------
    // time cirtical section end
    //-----------------------------
}

#if 1


void SpiOsdRLC(BYTE winno,BYTE dcnt, BYTE ccnt)
{
    BYTE val;
    val = ( winno<<4 );
    //7 means 8BPP with 128 color.
    if(dcnt==7)
        dcnt++;

    TW8836_WritePage( TW8836_PAGE4_SPI_OSD );
    //WriteTW88(PAGE4_SOSD|0x05, (dcnt << 4) | (ccnt));
    //WriteTW88(PAGE4_SOSD|0x06, winno);

    if( winno == 1 || winno == 2 )				//Group B
    {
        WriteTW88(0x07, (dcnt << 4) | (ccnt));
        WriteTW88(0x06, val);
    }
    else if( winno >= 3 && winno <= 8 )			//Group A
    {
        WriteTW88(0x05, (dcnt << 4) | (ccnt));
        WriteTW88(0x04, val);
    }
}

void MenuDemo( const menu_sitem_info_t * menu_page)
{
    IMAGE_ITEM_INFO *tImage;
    IMAGE_HEADER    *tImageHeader = &gtImageHeader;
    BYTE WIN_DEMO;

    IMAGE_ITEM_INFO *tImageArray = menu_page->image;
    WIN_DEMO=menu_page->win;

    tImage = tImageArray;


    SpiOsdEnable(1);
    SpiOsdClrRlc();
    SpiOsdClrLut();
    SpiOsdClrReg();
 

    {
        tImageHeader->lut_type = 0x01;
        tImageHeader->bpp      = 0x08;
        if(menu_page->image->type)
            tImageHeader->rle      = menu_page->image->rledata_cnt& 0x0F;
        else
            tImageHeader->rle=0;
        tImageHeader->dx       = menu_page->image->w;
        tImageHeader->dy       = menu_page->image->h;
        tImageHeader->lut_size = 1024;
        tImageHeader->lut_addr = menu_page->image->addr   + MRLE_INFO_SIZE;
        tImageHeader->img_addr = menu_page->image->addr + tImageHeader->lut_size + MRLE_INFO_SIZE;
    }

    SpiOsdSpiStartAddress(WIN_DEMO, tImageHeader->img_addr);

    SpiOsdBuffWidth(WIN_DEMO, tImageHeader->dx, tImageHeader->dy);

    //SpiOsdWindowPosAndSize(WIN_DEMO, (1280-menu_page->x-tImageHeader->dx), menu_page->y, tImageHeader->dx, tImageHeader->dy);
    SpiOsdWindowPosAndSize(WIN_DEMO, menu_page->x, menu_page->y, tImageHeader->dx, tImageHeader->dy);


    SpiOsdSetBitsPixel(WIN_DEMO, tImageHeader->bpp);

    if(tImage->alpha!=0xFF)
        SpiOsdSetPixelAlpha( WIN_DEMO, tImage->alpha );
    else
        SpiOsdSetGlobalAlpha( WIN_DEMO, 0 /*EE_Read(EEP_OSD_TRANSPARENCY)*/);

    SpiOsdLutOffset(WIN_DEMO, 0);

    SpiOsdWinEnable(WIN_DEMO, 1);

    if(tImageHeader->rle)
    {
        SpiOsdSetRlc(WIN_DEMO, tImageHeader->bpp, tImageHeader->rle);
    }
    else
    {
        SpiOsdClrRlc();
    }
//   TW8836_WaitVBlank(1);

    {
        uint8_t  *data_p;

        data_p = gtSpiOsd.reg[WIN_DEMO];

        // *data_p &= 0xCF;

        data_p += SPIOSD_WIN_LUT_PTR;

        if(menu_page->lut& 0x0F00)
        {
            *data_p = 0x10;

            //TW8836_WaitVBlank(1);

            //SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);
        }
    }
//Delay_1ms(3);
    TW8836_WaitVBlank(1);
//SpiOsd_show1(WIN_DEMO);
    if(tImageHeader->rle)
        SpiOsdUpdateRlc_user(WIN_DEMO);

    //Delay_1ms(1);

    SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);


    ///SpiOsdEnableRLC(ON);
    //SpiOsdRLC( winno, rlc>>4,rlc&0x0F);
    //SpiOsdUpdateRlc();


#if 0
    {
        uint8_t  ucTemp = 0;
        if((WIN_DEMO == 1) || (WIN_DEMO == 2))
        {
            ucTemp |= SPIOSD_LUT_SEL;
        }
        else
        {
            if(menu_page.lut& 0x0F00)
            {
                ucTemp |= SPIOSD_LUT_ADDR_H;
            }
        }
    }
#endif







    // SpiOsdSetLut(WIN_DEMO, tImageHeader->lut_type, menu_page.lut, tImageHeader->lut_size, tImageHeader->lut_addr, tImage->alpha);
    // SpiOsdUpdateLut(WIN_DEMO, 0);//0

    // SpiOsdWinEnable(WIN_DEMO, 1);

    //SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);

    //	SpiOsd_show(WIN_DEMO,0);
    //TW8836_WritePage( TW8836_PAGE4_SPI_OSD );
    //SpiOsdEnableRLC(OFF);		//disable RLE
    //for(i=0; i<= 8; i++)
    //	SpiOsdWinHWEnable(WIN_DEMO, 1);


//	SpiOsd_show(WIN_DEMO,1);
    //TW8836_WaitVBlank(1);
}

void MenuDemo2( menu_sitem_info_t menu_page,BYTE count)
{
    IMAGE_ITEM_INFO *tImage;
    IMAGE_HEADER    *tImageHeader = &gtImageHeader;
    BYTE WIN_DEMO;

    IMAGE_ITEM_INFO *tImageArray = menu_page.image;
    WIN_DEMO=count;//menu_page.win;

    tImage = tImageArray;


    SpiOsdEnable(1);
    SpiOsdClrRlc();
    SpiOsdClrLut();
    SpiOsdClrReg();

    //SpiOsdWinHWOffAll(1);


    //SOsd_Enable(WIN_DEMO,1);
    //
    // TW8836_WaitVBlank(1);
    //TW8836_WritePage( TW8836_PAGE4_SPI_OSD );
    //SpiOsdWinHWEnable(WIN_DEMO, 0);

    //MenuPrepareImageHeader(tImage);
    {
        tImageHeader->lut_type = 0x01;
        tImageHeader->bpp      = 0x08;
        if(menu_page.image->type)
            tImageHeader->rle      = menu_page.image->rledata_cnt& 0x0F;
        else
            tImageHeader->rle=0;
        tImageHeader->dx       = menu_page.image->w;
        tImageHeader->dy       = menu_page.image->h;
        tImageHeader->lut_size = 1024;
        tImageHeader->lut_addr = menu_page.image->addr   + MRLE_INFO_SIZE;
        tImageHeader->img_addr = menu_page.image->addr + tImageHeader->lut_size + MRLE_INFO_SIZE;
    }

    SpiOsdSpiStartAddress(WIN_DEMO, tImageHeader->img_addr);

    SpiOsdBuffWidth(WIN_DEMO, tImageHeader->dx, tImageHeader->dy);

    //SpiOsdWindowPosAndSize(WIN_DEMO, (1280-menu_page.x-tImageHeader->dx), menu_page.y, tImageHeader->dx, tImageHeader->dy);
    SpiOsdWindowPosAndSize(WIN_DEMO, menu_page.x, menu_page.y, tImageHeader->dx, tImageHeader->dy);

    SpiOsdSetBitsPixel(WIN_DEMO, tImageHeader->bpp);

    if(tImage->alpha!=0xFF)
        SpiOsdSetPixelAlpha( WIN_DEMO, tImage->alpha );
    else
        SpiOsdSetGlobalAlpha( WIN_DEMO, 0 /*EE_Read(EEP_OSD_TRANSPARENCY)*/);

    SpiOsdLutOffset(WIN_DEMO, 0);

    SpiOsdWinEnable(WIN_DEMO, 1);

    if(tImageHeader->rle)
    {
        SpiOsdSetRlc(WIN_DEMO, tImageHeader->bpp, tImageHeader->rle);
    }
    else
    {
        SpiOsdClrRlc();
    }
    // TW8836_WaitVBlank(1);

    {
        uint8_t  *data_p;

        data_p = gtSpiOsd.reg[WIN_DEMO];

        // *data_p &= 0xCF;

        data_p += SPIOSD_WIN_LUT_PTR;

        if(menu_page.lut& 0x0F00)
        {
            *data_p = 0x10;

            TW8836_WaitVBlank(1);

            //SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);
        }
    }
    TW8836_WaitVBlank(1);
    if(tImageHeader->rle)
        SpiOsdUpdateRlc_user(WIN_DEMO);

    SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);


    ///SpiOsdEnableRLC(ON);
    //SpiOsdRLC( winno, rlc>>4,rlc&0x0F);
    //SpiOsdUpdateRlc();


#if 0
    {
        uint8_t  ucTemp = 0;
        if((WIN_DEMO == 1) || (WIN_DEMO == 2))
        {
            ucTemp |= SPIOSD_LUT_SEL;
        }
        else
        {
            if(menu_page.lut& 0x0F00)
            {
                ucTemp |= SPIOSD_LUT_ADDR_H;
            }
        }
    }
#endif







    // SpiOsdSetLut(WIN_DEMO, tImageHeader->lut_type, menu_page.lut, tImageHeader->lut_size, tImageHeader->lut_addr, tImage->alpha);
    // SpiOsdUpdateLut(WIN_DEMO, 0);//0

    SpiOsdWinEnable(WIN_DEMO, 1);

    SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);
    //TW8836_WaitVBlank(1);
}

void MenuDemo3( menu_sitem_info_t menu_page)
{
    // TW8836_WaitVBlank(1);
    proc_rada_menu_INIT_lut2(menu_page,3);
    MenuDemo2(menu_page,3);
    proc_rada_menu_INIT_lut2(menu_page,1);
    MenuDemo2(menu_page,1);
    TW8836_WaitVBlank(1);
    TW8836_WritePage( TW8836_PAGE4_SPI_OSD );
    SpiOsdWinHWEnable(3, 0);

}

void MenuDemo4( menu_sitem_info_t menu_page)
{
    IMAGE_ITEM_INFO *tImage;
    IMAGE_HEADER    *tImageHeader = &gtImageHeader;
    BYTE WIN_DEMO;

    IMAGE_ITEM_INFO *tImageArray = menu_page.image;
    WIN_DEMO=menu_page.win;

    tImage = tImageArray;


    SpiOsdEnable(1);
    SpiOsdClrRlc();
    SpiOsdClrLut();
    SpiOsdClrReg();


    {
        tImageHeader->lut_type = 0x01;
        tImageHeader->bpp      = 0x08;
        if(menu_page.image->type)
            tImageHeader->rle      = menu_page.image->rledata_cnt& 0x0F;
        else
            tImageHeader->rle=0;
        tImageHeader->dx       = menu_page.image->w;
        tImageHeader->dy       = menu_page.image->h;
        tImageHeader->lut_size = 1024;
        tImageHeader->lut_addr = menu_page.image->addr   + MRLE_INFO_SIZE;
        tImageHeader->img_addr = menu_page.image->addr + tImageHeader->lut_size + MRLE_INFO_SIZE;
    }

    SpiOsdSpiStartAddress(WIN_DEMO, tImageHeader->img_addr);

    SpiOsdBuffWidth(WIN_DEMO, tImageHeader->dx, tImageHeader->dy);

    //SpiOsdWindowPosAndSize(WIN_DEMO, (1280-menu_page.x-tImageHeader->dx), menu_page.y, tImageHeader->dx, tImageHeader->dy);
    SpiOsdWindowPosAndSize(WIN_DEMO, menu_page.x, menu_page.y, tImageHeader->dx, tImageHeader->dy);

    SpiOsdSetBitsPixel(WIN_DEMO, tImageHeader->bpp);

    if(tImage->alpha!=0xFF)
        SpiOsdSetPixelAlpha( WIN_DEMO, tImage->alpha );
    else
        SpiOsdSetGlobalAlpha( WIN_DEMO, 0 /*EE_Read(EEP_OSD_TRANSPARENCY)*/);

    SpiOsdLutOffset(WIN_DEMO, 0);

    SpiOsdWinEnable(WIN_DEMO, 0);

    if(tImageHeader->rle)
    {
        SpiOsdSetRlc(WIN_DEMO, tImageHeader->bpp, tImageHeader->rle);
    }
    else
    {
        SpiOsdClrRlc();
    }
//   TW8836_WaitVBlank(1);

    {
        uint8_t  *data_p;

        data_p = gtSpiOsd.reg[WIN_DEMO];

        // *data_p &= 0xCF;

        data_p += SPIOSD_WIN_LUT_PTR;

        if(menu_page.lut& 0x0F00)
        {
            *data_p = 0x10;

            //TW8836_WaitVBlank(1);

            //SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);
        }
    }
//Delay_1ms(3);
    TW8836_WaitVBlank(1);
//SpiOsd_show1(WIN_DEMO);
    if(tImageHeader->rle)
        SpiOsdUpdateRlc_user(WIN_DEMO);

    //Delay_1ms(1);

    SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);

}


void MenuDemo_noLUT( menu_sitem_info_t menu_page)
{
    IMAGE_ITEM_INFO *tImage;
    IMAGE_HEADER	*tImageHeader = &gtImageHeader;
    BYTE WIN_DEMO;

    IMAGE_ITEM_INFO *tImageArray = menu_page.image;
    WIN_DEMO=menu_page.win;

    tImage = tImageArray;

    //TW8836_WaitVBlank(1);

    //SpiOsdEnable(1);


    // SOsd_Enable(WIN_DEMO,0);
    //

    //MenuPrepareImageHeader(tImage);
    {
        tImageHeader->lut_type = 0x01;
        tImageHeader->bpp      = 0x08;
        if(menu_page.image->type)
            tImageHeader->rle      = menu_page.image->rledata_cnt& 0x0F;
        else
            tImageHeader->rle=0;
        tImageHeader->dx       = menu_page.image->w;
        tImageHeader->dy       = menu_page.image->h;
        tImageHeader->lut_size = 1024;
        tImageHeader->lut_addr = menu_page.image->addr   + MRLE_INFO_SIZE;
        tImageHeader->img_addr = menu_page.image->addr + tImageHeader->lut_size + MRLE_INFO_SIZE;
    }

    SpiOsdSpiStartAddress(WIN_DEMO, tImageHeader->img_addr);

    SpiOsdBuffWidth(WIN_DEMO, tImageHeader->dx, tImageHeader->dy);

    //SpiOsdWindowPosAndSize(WIN_DEMO, (1280-menu_page.x-tImageHeader->dx), menu_page.y, tImageHeader->dx, tImageHeader->dy);
    SpiOsdWindowPosAndSize(WIN_DEMO, menu_page.x, menu_page.y, tImageHeader->dx, tImageHeader->dy);
#if 0
    SpiOsdSetBitsPixel(WIN_DEMO, tImageHeader->bpp);

    if(tImage->alpha!=0xFF)
        SpiOsdSetPixelAlpha( WIN_DEMO, tImage->alpha );
    else
        SpiOsdSetGlobalAlpha( WIN_DEMO, 0 /*EE_Read(EEP_OSD_TRANSPARENCY)*/);
#endif
    //SpiOsdLutOffset(WIN_DEMO, 0);

    //SpiOsdWinEnable(WIN_DEMO, 1);




#if 1

    if(tImageHeader->rle)
    {
        SpiOsdSetRlc(WIN_DEMO, tImageHeader->bpp, tImageHeader->rle);
    }
    else
    {
        SpiOsdClrRlc();
    }

    TW8836_WaitVBlank(1);
#endif


    SpiOsdUpdateReg_update_win(WIN_DEMO, WIN_DEMO);
#if 1

    {
        int i=0;
        if(WIN_DEMO==1||WIN_DEMO==2)
            i=1;
        else
            i=0;
        {

            SPIOSD_RLC *rlc;
            BYTE temp=0;
            rlc = &gtSpiOsd.rlc[i];

            temp = rlc->bpp;

            if(temp == 7) temp++;

            temp <<= 0x04;

            temp |= (rlc->counter & 0x0F);

            TW8836_Write(REG405 + i * 2, temp);

        }
    }
#endif
    //TW8836_WaitVBlank(1);

    //SpiOsdUpdateRlc();



    //SpiOsdRLC( WIN_DEMO, rlc>>4,rlc&0x0F);

    //TW8836_WaitVBlank(1);


    //SpiOsdSetLut(WIN_DEMO, tImageHeader->lut_type, menu_page.lut, tImageHeader->lut_size, tImageHeader->lut_addr, tImage->alpha);
    //SpiOsdUpdateLut(WIN_DEMO, 0);//0

    //SpiOsdWinEnable(WIN_DEMO, 1);

    //SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);
}


#else
void MenuDemo( void )
{
    IMAGE_ITEM_INFO *tImage;
    IMAGE_HEADER    *tImageHeader = &gtImageHeader;

    IMAGE_ITEM_INFO *tImageArray[1] = { &image01 };

    tImage = tImageArray[0];

    TW8836_WaitVBlank(1);

    SpiOsdEnable(0);

    MenuPrepareImageHeader(tImage);

    SpiOsdSpiStartAddress(WIN_DEMO, tImageHeader->img_addr);

    SpiOsdBuffWidth(WIN_DEMO, tImageHeader->dx, tImageHeader->dy);

    SpiOsdWindowPosAndSize(WIN_DEMO, 960, 0, tImageHeader->dx, tImageHeader->dy);

    SpiOsdSetBitsPixel(WIN_DEMO, tImageHeader->bpp);

    SpiOsdLutOffset(WIN_DEMO, 0);

    SpiOsdWinEnable(WIN_DEMO, 1);

    if(tImageHeader->rle)
    {
        SpiOsdSetRlc(WIN_DEMO, tImageHeader->bpp, tImageHeader->rle);
    }
    else
    {
        SpiOsdClrRlc();
    }

    TW8836_WaitVBlank(1);


    SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);


    SpiOsdUpdateRlc();

    SpiOsdEnable(1);

    SpiOsdSetLut(WIN_DEMO, tImageHeader->lut_type, 0, tImageHeader->lut_size, tImageHeader->lut_addr, tImage->alpha);
    SpiOsdUpdateLut(WIN_DEMO, 0);//0


}

#endif

void StringSwap(char *InStr, char *OutStr)
{
	uint8_t len,i;
	char *in,*out;
	in = InStr;
	out = OutStr;
	len = strlen(in);
	for(i= len; i> 0; i--)
	{
		*out = *(in+i-1);
		out++;
	}
}

U16 MenuDemo_xy( IMAGE_ITEM_INFO menu_page,U8 win,U16 x,U16 y)
{
    IMAGE_ITEM_INFO *tImage;
    IMAGE_HEADER    *tImageHeader = &gtImageHeader;
    BYTE WIN_DEMO;

    //IMAGE_ITEM_INFO *tImageArray[1] =menu_page;
    WIN_DEMO=win;

    //tImage = tImageArray[0];


    SpiOsdEnable(1);
    SpiOsdClrRlc();
    SpiOsdClrLut();
    SpiOsdClrReg();

    {
        tImageHeader->lut_type = 0x01;
        tImageHeader->bpp      = 0x08;
        if(menu_page.type)
            tImageHeader->rle      = menu_page.rledata_cnt& 0x0F;
        else
            tImageHeader->rle=0;
        tImageHeader->dx       = menu_page.w;
        tImageHeader->dy       = menu_page.h;
        tImageHeader->lut_size = 1024;
        tImageHeader->lut_addr = menu_page.addr   + MRLE_INFO_SIZE;
        tImageHeader->img_addr = menu_page.addr + tImageHeader->lut_size + MRLE_INFO_SIZE;
    }

    SpiOsdSpiStartAddress(WIN_DEMO, tImageHeader->img_addr);

    SpiOsdBuffWidth(WIN_DEMO, tImageHeader->dx, tImageHeader->dy);

    //SpiOsdWindowPosAndSize(WIN_DEMO, (1280-x-tImageHeader->dx), y, tImageHeader->dx, tImageHeader->dy);
    SpiOsdWindowPosAndSize(WIN_DEMO, (x), y, tImageHeader->dx, tImageHeader->dy);

	SpiOsdSetBitsPixel(WIN_DEMO, tImageHeader->bpp);

    if(tImage->alpha!=0xFF)
        SpiOsdSetPixelAlpha( WIN_DEMO, tImage->alpha );
    else
        SpiOsdSetGlobalAlpha( WIN_DEMO, 0 /*EE_Read(EEP_OSD_TRANSPARENCY)*/);

    SpiOsdLutOffset(WIN_DEMO, 0);

    SpiOsdWinEnable(WIN_DEMO, 1);

    if(tImageHeader->rle)
    {
        SpiOsdSetRlc(WIN_DEMO, tImageHeader->bpp, tImageHeader->rle);
    }
    else
    {
        SpiOsdClrRlc();
    }
//   TW8836_WaitVBlank(1);

//Delay_1ms(3);
    TW8836_WaitVBlank(1);
//SpiOsd_show1(WIN_DEMO);
    if(tImageHeader->rle)
        SpiOsdUpdateRlc_user(WIN_DEMO);

    //Delay_1ms(1);

    SpiOsdUpdateReg(WIN_DEMO, WIN_DEMO);

    return menu_page.w;
}


void Menu_page_DrawImage(BYTE mainosd_index, BYTE subosd_index)
{
	int i;
//	if(Sys.sub_osd==subosd_index&&Sys.main_osd==main_page_OSD_Home&&Sys.main_osd==mainosd_index)
//		return;
    if(Sys.main_osd!=mainosd_index)
    {
        if(Sys.main_osd==main_page_OSD_Home||mainosd_index==main_page_OSD_setup||Sys.main_osd==main_page_OSD_navi||Sys.main_osd==main_Car_page_OSD)
            Sys.main_osd_last=Sys.main_osd;
        else
            Sys.main_osd_last=main_page_OSD_none;
        Sys.main_osd=mainosd_index;

        OSD_LUT_glag=1;
        Navi_osd_update_flag=1;
    }
    //else if(Sys.main_osd==main_page_OSD_Home&&Sys.sub_osd!=subosd_index)
    //	OSD_LUT_glag=1;
    else
        OSD_LUT_glag=0;

    Sys.sub_osd_last=Sys.sub_osd;
    Sys.sub_osd=subosd_index;
	
	if(0 == Sys.FS_select.System_Language)
	    curr_menu=(menu_home_page.items);

	
    switch(mainosd_index)
    {
    case main_page_OSD_none:
        SpiOsdWinHWOffAll(1);
		FOsdDisableAllWin();
        break;
    case main_page_OSD_logo:
   //     proc_logo_menu_bg();
   //     MenuDemo(menu_logo_page_items[0]);	//开机LOGO


        break;
    case main_page_OSD_Home:
		SpiOsdWinHWOffAll(1);
		FOsdDisableAllWin();
        switch(subosd_index)
        {
			
        case sub_page_OSD_Home_bt:
			
            
       /*     proc_rada_menu_INIT_lut(menu_home_source_page_items[0]);
            MenuDemo3(menu_home_source_page_items[0]);	//
		*/	
            break;
        default:
            break;
        }
        break;
	case main_Car_page_OSD:
		{
		 	SpiOsdWinHWOffAll(1);
            
			if(Sys.FS_select.car_input_res_id == 0)
			{
				Init_FontOSD();
				FOsdWinDisplayInit();
				proc_rada_menu_INIT_lut(Car_Bg_page_items[0]);
				proc_rada_menu_INIT_lut(Car_Num_page_items[0]);
				
				if(OSD_LUT_glag)
		        {
		            for(i=1; i<=3; i++)
		            {
		                SpiOsdPixelAlphaAttr_user(SOSD_WIN8,i,0x20);
		            }
		            SpiOsdPixelAlphaAttr_user(SOSD_WIN1,2,0x20);
		            SpiOsdPixelAlphaAttr_user(SOSD_WIN1,12,0x20);
		        }
		        
				if(Sys.FS_select.car_type_onoff_id == 2) //5s
				{
           	 		MenuDemo(&Car_Bg_page_items[1]);	//
				}
				else
				{
					MenuDemo(&Car_Bg_page_items[0]);	//
				}
				CarInfoBk.OILCONSUMPTION.OilConsumption = 0xffff;
				CarInfoBk.SurplusKil = 0xffff;
				CarInfoBk.CARSPEED.CarSpeed = 0xffff;
				CarInfoBk.CarSpeed_5S = 0xffff;
				CarInfoBk.TotalMil = 0xffffffff;
			}
			else
			{
				FOsdDisableAllWin();
			}
		}break;
    case	main_page_OSD_back_rada:
		FOsdDisableAllWin();
        proc_rada_menu_bg();
        if(OSD_LUT_glag)
        {
            for(i=1; i<=255; i++)
            {
             //   SpiOsdPixelAlphaAttr_user(SOSD_WIN1,i,0x35);
            }

        }
	//	for(i=1;i<=0xfe;i++)
	//	{
	//		SpiOsdPixelAlphaAttr_user(SOSD_WIN1,i,0x35);
	//	}
		for(i=1;i<=0xfe;i++)
		{
			SpiOsdPixelAlphaAttr_user(SOSD_WIN3,i,0x50);
		}
		for(i=0x101;i<=0x1fe;i++)
		{
			SpiOsdPixelAlphaAttr_user(SOSD_WIN4,i,0x50);
		}
		
        MenuDemo(&menu_add_rada_angle_tr_page_items[65]);//倒车状态，轨迹方框无时
		m_BMW_CAN.benze_Steering_angle_index = 0xff;	//20160819
#if 1
    //    if(m_RADAR.uFront_Left<0xff)
        {
            MenuDemo(&menu_add_rada_font_L_icon_page_items[m_RADAR.uFront_Left]);
        }

    
   //     if(m_RADAR.uRear_Right<0xff)
        {
            MenuDemo(&menu_add_rada_back_R_icon_page_items[m_RADAR.uRear_Right]);
        }

	//	if(m_RADAR.uRear_Left<0xff)
        {
			MenuDemo(&menu_add_rada_back_L_icon_page_items[m_RADAR.uRear_Left]);
        }

    //    if(m_RADAR.uFront_Right<0xff)
        {
            MenuDemo(&menu_add_rada_font_R_icon_page_items[m_RADAR.uFront_Right]);
        }


#endif
       
		curr_menu=(menu_back_rada_page.items);
		g_mouse_index=gmouse_back_main_page_setup1;
        FS_key_num=g_mouse[g_mouse_index];	//聚焦在第几个按键
        
		break;
    case	main_page_OSD_door_info:
	
        break;
    case	main_page_OSD_air_info:
   
		break;
    case	main_page_OSD_setup:
	  
        break;
    case	main_page_OSD_font_rada:
		FOsdDisableAllWin();
        SpiOsdWinHWOffAll(1);
	/*
		proc_rada_menu_INIT_lut(menu_add_rada_angle_tr_page_items[1]);
 	    proc_rada_menu_INIT_lut(menu_add_rada_back_R_icon_page_items[1]);
 	    proc_rada_menu_INIT_lut(menu_add_rada_setup_page_items[0]);

		MenuDemo(&menu_add_rada_angle_tr_page_items[65]);	//背景页
	*/


        break;
    case main_page_OSD_setup1:
	
        break;
    case main_page_OSD_navi	:
		FOsdDisableAllWin();
        if(!Sys.FS_select.NAV_setup_show)
        {
            SpiOsdWinHWOffAll(1);
        }
        else
        {
            SpiOsdWinHWOffAll(1);
		/*	
            proc_rada_menu_INIT_lut(menu_home_source_page_items[9]);
            proc_rada_menu_INIT_lut(menu_add_air_other_page_items[2]);
            MenuDemo(menu_home_source_page_items[9]);	//系统在导航状态时显示，导航的图标
			*/
        }
       
        break;
    default:

        break;
    }
	if(mainosd_index != main_page_OSD_back_rada)
	{
    	Menu_page_Draw_button(mainosd_index,subosd_index);
	}
}


void Mouse_buff_init(void)
{
//    g_mouse[gmouse_steup_main_page]=menu_setup_page1.select;
//    g_mouse[gmouse_steup_main_page_car]=menu_setup_page2_car.select;
//    g_mouse[gmouse_steup_main_page_back]=menu_setup_page2_back.select;
//    g_mouse[gmouse_steup1_main_page]=menu_setup1_page1.select;
//    g_mouse[gmouse_steup1_auto_rada_page]=menu_setup1_page1_auto_rada.select;
//    g_mouse[gmouse_steup1_code_page]=menu_setup1_page1_code.select;
    g_mouse[gmouse_back_main_page_setup1]=menu_back_rada_page.select;
    g_mouse[gmouse_back_light_page_setup2]=menu_back_rada_light_page.select;
 //   g_mouse[gmouse_steup_main_page_logo]=menu_setup_page2_logo.select;
//    g_mouse[gmouse_steup_main_page_navi_key]=menu_setup_page2_navi_key.select;
//    g_mouse[gmouse_steup_main_page_navi_show]=menu_setup1_page1_navi_show.select;
//	g_mouse[gmouse_steup_main_page_language_type]=menu_setup1_page1_language_type.select;
	g_mouse[gmouse_back_Contrast_page_setup]=menu_back_rada_Contrast_page.select;
	g_mouse[gmouse_back_Camera_SW_page_setup]=menu_back_rada_Camera_SW_page.select;
	g_mouse[gmouse_back_Track_SW_page_setup]=menu_back_rada_Track_SW_page.select;
}

void Displaly_5S_CarSpeed(U16 x,U16 y,char *instr)
{
    char *version=instr;
    U16 X_buff_date,Y_buff_date;
    BYTE win_num=8;
	BYTE win,wTemp;
    X_buff_date=x;
    Y_buff_date=y;

	//disable 4-8 win
	#if 0 
    WaitVBlank(1);
    TW8836_WritePage(TW8836_PAGE4_SPI_OSD);
    WriteTW88(REG420, ReadTW88(REG420) & ~0x01);
    for(win=4; win <= 8; win++)
    {
        wTemp = REG430 + (win << 4);
        WriteTW88(wTemp, ReadTW88(wTemp) & ~0x01);
    }
	#else	//modify by Feng 20161208
	for(win=4; win <= 8; win++)
    {
		SpiOsdWinHWEnable(win,OFF);
	}
	#endif
	
    while(*version)
    {
        switch(*version++)
        {
        //case 'V':
        //MenuDemo_xy(setup_code_key_40,8,500,200);
        //	break;
        case '1':
            X_buff_date+=MenuDemo_xy(Num_01,win_num,X_buff_date,Y_buff_date);

            break;
        case '2':
            X_buff_date+=MenuDemo_xy(Num_02,win_num,X_buff_date,Y_buff_date);
            break;
        case '3':
            X_buff_date+=MenuDemo_xy(Num_03,win_num,X_buff_date,Y_buff_date);
            break;
        case '4':
            X_buff_date+=MenuDemo_xy(Num_04,win_num,X_buff_date,Y_buff_date);
            break;
        case '5':
            X_buff_date+=MenuDemo_xy(Num_05,win_num,X_buff_date,Y_buff_date);
            break;
        case '6':
            X_buff_date+=MenuDemo_xy(Num_06,win_num,X_buff_date,Y_buff_date);
            break;
        case '7':
            X_buff_date+=MenuDemo_xy(Num_07,win_num,X_buff_date,Y_buff_date);
            break;
        case '8':
            X_buff_date+=MenuDemo_xy(Num_08,win_num,X_buff_date,Y_buff_date);
            break;
        case '9':
            X_buff_date+=MenuDemo_xy(Num_09,win_num,X_buff_date,Y_buff_date);
            break;
        case '0':
            X_buff_date+=MenuDemo_xy(Num_00,win_num,X_buff_date,Y_buff_date);
            break;
        case '.':
            X_buff_date+=MenuDemo_xy(Num_Dot,win_num,X_buff_date,Y_buff_date);
            break;
        default:
            if((win_num<=9)&&(win_num>=4))
                win_num++;
            //MenuDemo_xy(setup_code_key_40,8,500,200);
            break;
        }
        if((win_num<=9)&&(win_num>=4))
            win_num--;
        else
            break;
    }
	
}

void Menu_page_Draw_button(BYTE mainosd_index, BYTE subosd_index)
{
	char inbuffer[20],outbuffer[20];
	uint8_t len;
    Sys.sub_osd_last=Sys.sub_osd;
    Sys.sub_osd=subosd_index;

    switch(mainosd_index)
    {
    case main_page_OSD_back_rada:	//倒车状态
        switch(subosd_index)
        {
        case sub_page_OSD_back_only_updata_angle:
        //    Sys.sub_osd=sub_page_OSD_back_rada_angle;	//倒车方向盘
        //	if(Sys.TrackLineOnOff)
			{
            	MenuDemo(&menu_add_rada_angle_tr_page_items[m_BMW_CAN.benze_Steering_angle_index]);
        	}
			break;
       // default:	//低速雷达
       case sub_page_OSD_back_only_updata_Rada:
         //   if(m_RADAR.uFront_Left<0xff)
            {
                MenuDemo(&menu_add_rada_font_L_icon_page_items[m_RADAR.uFront_Left]);
            }

        
     //       if(m_RADAR.uRear_Right<0xff)
            {
                MenuDemo(&menu_add_rada_back_R_icon_page_items[m_RADAR.uRear_Right]);
            }

	//		if(m_RADAR.uRear_Left<0xff)
            {
				MenuDemo(&menu_add_rada_back_L_icon_page_items[m_RADAR.uRear_Left]);
            }

      //      if(m_RADAR.uFront_Right<0xff)
            {
                MenuDemo(&menu_add_rada_font_R_icon_page_items[m_RADAR.uFront_Right]);
            }

            break;
        }
        
        break;
    case main_page_OSD_setup:
	    
        break;
    case main_page_OSD_setup1:
	     
        break;


    case main_page_OSD_air_info	:		//显示空调信息
        
        break;
    case main_page_OSD_font_rada:	//显示低速雷达距离
    	#if 0 
    //    if(m_RADAR.uFront_Left<0xff)
            {
                MenuDemo(&menu_add_rada_font_L_icon_page_items[m_RADAR.uFront_Left]);
            }

        
         //   if(m_RADAR.uRear_Right<0xff)
            {
                MenuDemo(&menu_add_rada_back_R_icon_page_items[m_RADAR.uRear_Right]);
            }

		//	if(m_RADAR.uRear_Left<0xff)
            {
				MenuDemo(&menu_add_rada_back_L_icon_page_items[m_RADAR.uRear_Left]);
            }
 
          //  if(m_RADAR.uFront_Right<0xff)
            {
                MenuDemo(&menu_add_rada_font_R_icon_page_items[m_RADAR.uFront_Right]);
            }
	#endif
        break;
    case main_page_OSD_door_info:
        break;
	case main_page_OSD_navi:
		break;
	case main_Car_page_OSD:
		break;
    }
}

#if 1
void OnOSDNULLBtnClick(U8 pageindex, U8 itemindex, U8 bNormal)
{
    //Please add your button click event here
    pageindex = pageindex;
    itemindex = itemindex;
    bNormal = bNormal;
}

void OnOSDback_light_menu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal)
{
    // cpu2cpu_cmd_data_t cmd;
    pageindex = pageindex;
    itemindex = itemindex;
    bNormal = bNormal;
    if (bNormal == MSG_ACTION_PRESSED)//||bNormal == MSG_ACTION_KEEP
    {
        
     //   g_mouse[g_mouse_index]=FS_key_num;
     //   MenuDemo(curr_menu[FS_key_num]);
     //   MenuDemo(curr_menu[curr_menu[g_mouse[g_mouse_index]].press_button_ID]);

        //  MenuDemo(curr_menu[0]);

//	MenuDemo(curr_menu.items[g_stuMOUSE.uCurFoucusIndex]);
    }
    else if (bNormal == MSG_ACTION_BOUNCE)
    {
		g_mouse[g_mouse_index]=FS_key_num;
        FS_key_mouse_index=curr_menu[FS_key_num].button_mouse_id;
        switch(FS_key_mouse_index)
        {
        case 11: 
			g_mouse[gmouse_back_main_page_setup1] =  0;	//聚焦在倒车摄像机
			Sys.u8back_mode_status=0;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_angle);		
			OnOSDback_Camera_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);
			break;
		case 12: 
			g_mouse[gmouse_back_main_page_setup1] =  2;	//聚焦对比度
			Sys.u8back_mode_status=2;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_Contrast_setup);
			OnOSDback_Contrast_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);
			break;
		case 13: 
			g_mouse[gmouse_back_main_page_setup1] =  3;	//聚焦轨迹线
			Sys.u8back_mode_status=3;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_NONE_setup);		
			OnOSDback_Track_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);
			break;
		default:
	        Sys.BackBright++;
			if(Sys.BackBright > 10)
			{
				Sys.BackBright = 1;
			}
			FS_key_num=Sys.BackBright;
	        g_mouse[g_mouse_index]=FS_key_num;
	        //MenuDemo(curr_menu[curr_menu[g_mouse[g_mouse_index]].press_button_ID]);
			MenuDemo(&curr_menu[FS_key_num]);
			//Sys.light_value=FS_key_num;

			/*
			if(Sys_CAN_light.sun_mode==0x02)
	            back_decoder_light_set(0xD5-(0x08*Sys.light_value)+0x20);
	        else
	            back_decoder_light_set(0xD5-(0x10*Sys.light_value));
	         */
	         Bright_Adjust(((Sys.BackBright-1)*17)+64);

	        if(Sys.TrackLineOnOff)
			{
				MenuDemo(&menu_back_Track_Tick[0]);
			}
			if(Sys.CameraOnOff)
			{
				MenuDemo(&menu_back_Camera_Tick[0]);
			}

        }    
    }
    //else if (bNormal == MSG_ACTION_KEEP) {}
    else if (bNormal == MSG_ACTION_MOVE) {}
    else if (bNormal == MSG_ACTION_MOVE_BOUNCE) {}
}


void OnOSDback_Contrast_menu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal)
{
    // cpu2cpu_cmd_data_t cmd;
    pageindex = pageindex;
    itemindex = itemindex;
    bNormal = bNormal;
    if (bNormal == MSG_ACTION_PRESSED)//||bNormal == MSG_ACTION_KEEP
    {
        
     //   g_mouse[g_mouse_index]=FS_key_num;
     //   MenuDemo(curr_menu[FS_key_num]);
     //   MenuDemo(curr_menu[curr_menu[g_mouse[g_mouse_index]].press_button_ID]);

        //  MenuDemo(curr_menu[0]);

    }
    else if (bNormal == MSG_ACTION_BOUNCE)
    {
		g_mouse[g_mouse_index]=FS_key_num;
        FS_key_mouse_index=curr_menu[FS_key_num].button_mouse_id;
        switch(FS_key_mouse_index)
        {
        case 11: 
			g_mouse[gmouse_back_main_page_setup1] =  0;	//聚焦在倒车摄像机
			Sys.u8back_mode_status=0;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_angle);		
			OnOSDback_Camera_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);

			break;
		case 12: 
			g_mouse[gmouse_back_main_page_setup1] =  1;	//聚焦亮度
			Sys.u8back_mode_status=1;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_setup);
			OnOSDback_light_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);
			break;
		case 13: 
			g_mouse[gmouse_back_main_page_setup1] =  3;	//
			Sys.u8back_mode_status=3;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_NONE_setup);		
			OnOSDback_Track_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);

			break;
		default:
	        Sys.BackContrast++;
			if(Sys.BackContrast > 10)
			{
				Sys.BackContrast = 1;
			}
			FS_key_num=Sys.BackContrast;
	        g_mouse[g_mouse_index]=FS_key_num;
	        //MenuDemo(curr_menu[curr_menu[g_mouse[g_mouse_index]].press_button_ID]);
			MenuDemo(&curr_menu[FS_key_num]);
  			TW8836ContrastAdjust((17*(Sys.BackContrast-1))+64);
	        // MenuDemo(curr_menu[0]);
	        if(Sys.TrackLineOnOff)
			{
				MenuDemo(&menu_back_Track_Tick[0]);
			}
			if(Sys.CameraOnOff)
			{
				MenuDemo(&menu_back_Camera_Tick[0]);
			}
        }    
    }
    //else if (bNormal == MSG_ACTION_KEEP) {}
    else if (bNormal == MSG_ACTION_MOVE) {}
    else if (bNormal == MSG_ACTION_MOVE_BOUNCE) {}
}


void OnOSDback_Camera_menu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal)
{
    // cpu2cpu_cmd_data_t cmd;
    pageindex = pageindex;
    itemindex = itemindex;
    bNormal = bNormal;
    if (bNormal == MSG_ACTION_PRESSED)//||bNormal == MSG_ACTION_KEEP
    {
        
     //   g_mouse[g_mouse_index]=FS_key_num;
     //   MenuDemo(curr_menu[FS_key_num]);
     //   MenuDemo(curr_menu[curr_menu[g_mouse[g_mouse_index]].press_button_ID]);

        //  MenuDemo(curr_menu[0]);

    }
    else if (bNormal == MSG_ACTION_BOUNCE)
    {
	//	g_mouse[g_mouse_index]=FS_key_num;
        FS_key_mouse_index=curr_menu[FS_key_num].button_mouse_id;
        switch(FS_key_mouse_index)
        {
        case 1: 
			g_mouse[gmouse_back_main_page_setup1] =  1;	//聚焦亮度
			Sys.u8back_mode_status=1;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_setup);
			OnOSDback_light_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);
			break;
		case 2: 
			g_mouse[gmouse_back_main_page_setup1] =  2;	//聚焦对比度
			Sys.u8back_mode_status=2;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_Contrast_setup);
			OnOSDback_Contrast_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);
			break;
		case 3: 
			g_mouse[gmouse_back_main_page_setup1] =  3;	//
			Sys.u8back_mode_status=3;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_NONE_setup);		
			OnOSDback_Track_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);

			break;
		default:
			MenuDemo(&menu_add_back_Camera_setup_page_items[0]);
			Sys.CameraOnOff = !Sys.CameraOnOff;
			if(Sys.CameraOnOff)
			{
				MenuDemo(&menu_back_Camera_Tick[1]);
				OuputVideoEnable(ON);
			}
			else
			{
				SpiOsdWinHWEnable(SOSD_WIN8,OFF);
				OuputVideoEnable(OFF);
			}
  			
        }    
    }
    //else if (bNormal == MSG_ACTION_KEEP) {}
    else if (bNormal == MSG_ACTION_MOVE) {}
    else if (bNormal == MSG_ACTION_MOVE_BOUNCE) {}
}


void OnOSDback_Track_menu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal)
{
    // cpu2cpu_cmd_data_t cmd;
    pageindex = pageindex;
    itemindex = itemindex;
    bNormal = bNormal;
    if (bNormal == MSG_ACTION_PRESSED)//||bNormal == MSG_ACTION_KEEP
    {
        
     //   g_mouse[g_mouse_index]=FS_key_num;
     //   MenuDemo(curr_menu[FS_key_num]);
     //   MenuDemo(curr_menu[curr_menu[g_mouse[g_mouse_index]].press_button_ID]);

        //  MenuDemo(curr_menu[0]);

    }
    else if (bNormal == MSG_ACTION_BOUNCE)
    {
	//	g_mouse[g_mouse_index]=FS_key_num;
        FS_key_mouse_index=curr_menu[FS_key_num].button_mouse_id;
        switch(FS_key_mouse_index)
        {
		case 1: 
			g_mouse[gmouse_back_main_page_setup1] =  0;	//聚焦在倒车摄像机
			Sys.u8back_mode_status=0;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_angle);		
			OnOSDback_Camera_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);

			break;
        case 2: 
			g_mouse[gmouse_back_main_page_setup1] =  1;	//聚焦亮度
			Sys.u8back_mode_status=1;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_setup);
			OnOSDback_light_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);

			break;
		case 3: 
			g_mouse[gmouse_back_main_page_setup1] =  2;	//聚焦对比度
			Sys.u8back_mode_status=2;
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_Contrast_setup);
			OnOSDback_Contrast_menu_setuptype_Click(0,0,MSG_ACTION_BOUNCE);
			
			break;
		
		default:
			MenuDemo(&menu_add_back_Track_setup_page_items[0]);
			Sys.TrackLineOnOff = !Sys.TrackLineOnOff;
			if(Sys.TrackLineOnOff)
			{
				MenuDemo(&menu_back_Track_Tick[1]);
			//	SpiOsdWinHWEnable(SOSD_WIN1,ON);
				MenuDemo_noLUT(menu_add_rada_angle_tr_page_items[1+m_BMW_CAN.benze_Steering_angle_index]);

			}
			else
			{
				SpiOsdWinHWEnable(SOSD_WIN0,OFF);
			//	SpiOsdWinHWEnable(SOSD_WIN1,OFF);
				MenuDemo(&menu_add_rada_angle_tr_page_items[0]);//倒车状态，轨迹方框无时

			}
  			
        }    
    }
    //else if (bNormal == MSG_ACTION_KEEP) {}
    else if (bNormal == MSG_ACTION_MOVE) {}
    else if (bNormal == MSG_ACTION_MOVE_BOUNCE) {}
}

//倒车设置
void OnOSDbackmenu_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal)
{
    // cpu2cpu_cmd_data_t cmd;
    pageindex = pageindex;
    itemindex = itemindex;
    bNormal = bNormal;
    if (bNormal == MSG_ACTION_PRESSED)//||bNormal == MSG_ACTION_KEEP
    {
        // MsgSendBeep();
    //    g_mouse[g_mouse_index]=FS_key_num;
    //    MenuDemo(curr_menu[FS_key_num]);

        //  MenuDemo(curr_menu[0]);

//	MenuDemo(curr_menu.items[g_stuMOUSE.uCurFoucusIndex]);
    }
    else if (bNormal == MSG_ACTION_BOUNCE)
    {
        //	 MenuDemo(curr_menu[1]);

        g_mouse[g_mouse_index]=FS_key_num;
        FS_key_mouse_index=curr_menu[FS_key_num].button_mouse_id;
        switch(FS_key_mouse_index)
        {
        case 0:
				//聚焦在第几个按键 //关闭摄像机
            //MenuDemo(curr_menu[g_mouse[g_mouse_index]]);
            Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_angle);
            Sys.u8back_mode_status=0;	
            break;
        case 1:
			Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_setup);
            Sys.u8back_mode_status=1;	//亮度
            /*
            Sys.light_value++;
			if(Sys.light_value > 10)
			{
				Sys.light_value = 0;
			}
			MenuDemo(menu_add_back_light_setup_page_items[Sys.light_value]);
			*/
            break;
        case 2:
		/*	
            if(!(Sys.main_osd==main_page_OSD_back_rada&&Sys.sub_osd==sub_page_OSD_back_rada_obstacles))
                Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_obstacles);
            Sys.u8back_mode_status=1;	//
        */    
        	Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_Contrast_setup);
			Sys.u8back_mode_status=2;	//
            break;
        case 3:
            if(!(Sys.main_osd==main_page_OSD_back_rada&&Sys.sub_osd==sub_page_OSD_back_NONE_setup))
                Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_NONE_setup);
            Sys.u8back_mode_status=3;	//轨迹
            break;

		case 4:
			Sys.u8back_exit_auto=1;		//退出倒车
			break;
        }
        // MenuDemo(curr_menu[0]);
    }
    //else if (bNormal == MSG_ACTION_KEEP) {}
    else if (bNormal == MSG_ACTION_MOVE) {}
    else if (bNormal == MSG_ACTION_MOVE_BOUNCE) {}
}


void OnOSDSetupmenu_FS_setuptype_Click(U8 pageindex, U8 itemindex, U8 bNormal)
{
    // cpu2cpu_cmd_data_t cmd;
    pageindex = pageindex;
    itemindex = itemindex;
    bNormal = bNormal;
    if (bNormal == MSG_ACTION_PRESSED)//||bNormal == MSG_ACTION_KEEP
    {
        // MsgSendBeep();
        g_mouse[g_mouse_index]=FS_key_num;
        if((set_value_fun())==curr_menu[g_mouse[g_mouse_index]].button_mouse_id)
            MenuDemo(&curr_menu[curr_menu[g_mouse[g_mouse_index]].press_button_ID]);
        else
            MenuDemo(&curr_menu[FS_key_num]);

        //  MenuDemo(curr_menu[0]);

//	MenuDemo(curr_menu.items[g_stuMOUSE.uCurFoucusIndex]);
    }
    else if (bNormal == MSG_ACTION_BOUNCE)
    {
        //    MenuDemo(curr_menu[1]);

        g_mouse[g_mouse_index]=FS_key_num;
        FS_key_mouse_index=curr_menu[FS_key_num].button_mouse_id;
        switch(Sys.main_osd)
        {
	/*		
        case main_page_OSD_setup:
            switch(Sys.sub_osd)
            {
            case sub_page_OSD_setup_main:	//高级设置
                switch(FS_key_num)
                {
                case 3:
                    Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_back);
                    break;
                case 4:
                    Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_car);
                    break;
                case 5:
                    Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_logo);
                    break;
                case 6:
                    Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_navi);
                    break;
                case 7:
                    Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_version);
                    break;
                }
                break;
            case sub_page_OSD_setup_navi:	//高级设置-原车导航
                // Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_main);
                switch(FS_key_num)
                {
                case 0:
                case 1:
                    Sys.FS_select.NAV_key_type=FS_key_num;
                    MenuDemo(curr_menu[curr_menu[FS_key_num].press_button_ID]);

                    switch(Sys.FS_select.NAV_key_type)
                    {
                    case 0:
                        MenuDemo(menu_add_setup_NAV_key_page_items[4]);
                        break;
                    case 1:
                        MenuDemo(menu_add_setup_NAV_key_page_items[5]);
                        break;
                    }
                    break;
                }
                break;
            case sub_page_OSD_setup_logo:	//高级设置-开机LOGO
                // Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_main);
                switch(FS_key_num)
                {
                case 0:
                case 1:
                    Sys.FS_select.logo_type_onoff_id=FS_key_num;
                    MenuDemo(curr_menu[curr_menu[FS_key_num].press_button_ID]);//画圆点

                    switch(Sys.FS_select.logo_type_onoff_id)
                    {
                    case 0:
                        MenuDemo(menu_add_setup_logo_page_items[4]);
                        break;
                    case 1:
                        MenuDemo(menu_add_setup_logo_page_items[5]);
                        break;
                    }
                    break;
                }
                break;
            case sub_page_OSD_setup_car:	//高级设置-车型选择
                // Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_main);
                switch(FS_key_num)
                {
                case 0:
                case 1:
                    Sys.FS_select.car_type_onoff_id=FS_key_num;
                    MenuDemo(curr_menu[curr_menu[FS_key_num].press_button_ID]);

                    switch(Sys.FS_select.car_type_onoff_id)
                    {
                    case 0:
                        MenuDemo(menu_add_setup_car_page_items[4]);
                        break;
                    case 1:
                        MenuDemo(menu_add_setup_car_page_items[5]);
                        break;
                    }
                    break;
                }
                break;
            case sub_page_OSD_setup_back:	//高级设置-后视选择
                // Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_main);
                switch(FS_key_num)
                {
                case 0:
                case 1:
                case 2:
                case 3:
                    Sys.FS_select.cam_type_onoff_id=FS_key_num;
                    MenuDemo(curr_menu[curr_menu[FS_key_num].press_button_ID]);


                    switch(Sys.FS_select.cam_type_onoff_id)
                    {
                    case 0:
                        MenuDemo(menu_add_setup_back_page_items[8]);
                        break;
                    case 1:
                        MenuDemo(menu_add_setup_back_page_items[9]);
                        break;
                    case 2:
                        MenuDemo(menu_add_setup_back_page_items[10]);
                        break;
                    case 3:
                        MenuDemo(menu_add_setup_back_page_items[11]);
                        break;
                    }
                    break;
                }
                break;
            case    sub_page_OSD_setup1_main:	//设置(导航显示-低速雷达-高级设置)
                switch(FS_key_num)
                {
                case 3:
                    Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup1_auto_rada);
                    break;
                case 4:
                    Menu_page_DrawImage(main_page_OSD_setup1,sub_page_OSD_setup1_code);
                    break;
                case 5:
                    Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup1_navi_show);
					break;
				case 6:
					Menu_page_DrawImage(main_page_OSD_setup, sub_page_OSD_Setup1_language_type);
                    break;
                }
                break;
            case sub_page_OSD_setup1_auto_rada:	//设置-低速雷达
                switch(FS_key_num)
                {
                case 1:
                case 2:
                    Sys.FS_select.auto_rada_onoff_id=FS_key_mouse_index;
                    MenuDemo(curr_menu[curr_menu[FS_key_num].press_button_ID]);

                    switch(Sys.FS_select.auto_rada_onoff_id)
                    {
                    case 0:
                        MenuDemo(menu_add_setup1_auto_rada_page_items[5]);
                        break;
                    case 1:
                        MenuDemo(menu_add_setup1_auto_rada_page_items[6]);
                        break;
                    }
                    break;
                }
                break;
            case sub_page_OSD_setup1_navi_show:	//设置-导航显示
                switch(FS_key_num)
                {
                case 1:
                case 2:
                    Sys.FS_select.NAV_setup_show=FS_key_mouse_index;
                    MenuDemo(curr_menu[curr_menu[FS_key_num].press_button_ID]);

                    switch(Sys.FS_select.NAV_setup_show)
                    {
                    case 0:
                        MenuDemo(menu_add_setup1_navi_show_page_items[5]);
                        break;
                    case 1:
                        MenuDemo(menu_add_setup1_navi_show_page_items[6]);
                        break;
                    }
                    break;
                }
                break;
			case sub_page_OSD_Setup1_language_type:
				switch(FS_key_num)
                {
                case 1:
                case 2:
				case 3:
                    Sys.FS_select.System_Language=FS_key_mouse_index;
					//马上更新语言选择页
					if(Sys.FS_select.System_Language == 0)
						MenuDemo(menu_add_setup1_Language_Type_page_items[0]);//选择语言页
					else if(Sys.FS_select.System_Language == 1)
						MenuDemo(menu_add_setup1_Language_Type_page_items_ct[0]);
					else
						MenuDemo(menu_add_setup1_Language_Type_page_items_en[0]);
                    MenuDemo(curr_menu[curr_menu[FS_key_num].press_button_ID]);

                    switch(Sys.FS_select.System_Language)
                    {
                    case 0:
                        MenuDemo(menu_add_setup1_Language_Type_page_items[7]);
                        break;
                    case 1:
                        MenuDemo(menu_add_setup1_Language_Type_page_items[8]);
						break;
					case 2:
					  MenuDemo(menu_add_setup1_Language_Type_page_items[9]);
                        break;
                    }
                    break;
                }
                break;
            }
            break;
        case  main_page_OSD_setup1:	//设置-高级设置(键盘)
            switch(FS_key_num)
            {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                if(fs_code_buff.index<6)
                {
                    fs_code_buff.code_buff[fs_code_buff.index]=(BYTE)FS_key_num;
                    fs_code_buff.index++;
                }
                break;
            case 11:
                if(fs_code_buff.index)
                    fs_code_buff.index--;
                break;
            case 12:
                fs_code_buff.index=0;

                {
                    BYTE key_num,i,code_check=TRUE;

                    for(i=0; i<6; i++)
                    {
                        if(fs_code_buff.code_buff[i]!=8)
                            code_check=FALSE;
                        fs_code_buff.code_buff[i]=0;
                    }
                    if(code_check)
                    {
                        //进入高级设置
                        Menu_page_DrawImage(main_page_OSD_setup, sub_page_OSD_setup_main);
                    }
                }
                break;
            }
            {
                WORD count=0;
                TW8836_WritePage(0x04);
                count+=fs_code_buff.index*20;
                TW8836_Write(0x24, (BYTE)(count>>8));
                TW8836_Write(0x25, (BYTE)count);
            }
            break;
		*/	
        }
		
    }
    
    else if (bNormal == MSG_ACTION_MOVE) {}
    else if (bNormal == MSG_ACTION_MOVE_BOUNCE) {}
}


void OnOSDCommon_RetBtnClick(U8 pageindex, U8 itemindex, U8 bNormal)
{
    pageindex = pageindex;
    itemindex = itemindex;
    bNormal = bNormal;

    if (bNormal == MSG_ACTION_PRESSED)
    {
        // MsgSendBeep();
        press_timer=2000;
    }
    else if (bNormal == MSG_ACTION_BOUNCE)
    {
        press_timer=0;
        switch(Sys.main_osd)
        {
        case main_page_OSD_setup:
            switch(Sys.sub_osd)
            {
            case sub_page_OSD_setup_car:
            case sub_page_OSD_setup_back:
            case sub_page_OSD_setup_logo:
            case sub_page_OSD_setup_version:
            case sub_page_OSD_setup_navi:		//退出到高级设置
                if(Sys.sub_osd==sub_page_OSD_setup_version)
                    OSD_closed_windows(4,8);
                Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup_main);
                break;
            case 	sub_page_OSD_setup1_main:	//关闭设置
                OSD_closed_windows(3,8);
                OSD_closed_windows(0,0);
                Sys.main_osd=main_page_OSD_Home;
                Sys.sub_osd=sub_page_OSD_Home_bt;
			/*	
				if(0 == Sys.FS_select.System_Language)
	                curr_menu=(menu_home_page.items);
				else if(1 == Sys.FS_select.System_Language)
					curr_menu=(menu_home_page_ct.items);
				else
					curr_menu=(menu_home_page_en.items);
			*/		
                break;
            case sub_page_OSD_setup1_auto_rada:
            case sub_page_OSD_setup_main:
            case sub_page_OSD_setup1_navi_show:
			case sub_page_OSD_Setup1_language_type://退出到设置
                Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup1_main);
                break;
            }
            break;
        case 	main_page_OSD_back_rada:
            switch(Sys.sub_osd)
            {
            case sub_page_OSD_back_rada_setup:	//显示倒车
                Menu_page_Draw_button(main_page_OSD_back_rada,Sys.u8back_mode_status);
                break;
            }
            break;
        case main_page_OSD_setup1:	//返回设置页
            Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup1_main);
            break;
        case 	main_page_OSD_Home:

            break;
        }

    }
    else if (bNormal == MSG_ACTION_KEEP)
    {
        if(press_timer==1)
        {
            press_timer=0;
            switch(Sys.main_osd)	//长按键进入设置
            {
            case 	main_page_OSD_Home:
                Menu_page_DrawImage(main_page_OSD_setup,sub_page_OSD_setup1_main);
                break;
            }
        }
    }
    else if (bNormal == MSG_ACTION_MOVE) {}
    else if (bNormal == MSG_ACTION_MOVE_BOUNCE)
    {

    }
}

BOOL User_mouse_moves()
{
///	BYTE count;
    //count=FS_key_num;
    //if(Sys.Main_Source==SRC_CAM)
    //	return 0;
    if(curr_menu==menu_home_page.items )
    {
        switch(Can_key_cmd)
        {
        case key_down:
        case key_up:
        case key_left:
        case key_right:
        case key_enter:

            Can_key_cmd=key_null;
            Can_key_cmd_meun_mainosd=0;
            Can_key_cmd_meun_subosd=0;

            return 0;
        }
    }
/*	
    else if(curr_menu==menu_back_rada_page.items || curr_menu==menu_back_rada_page_en.items)
    {
        if(Can_key_cmd==key_left)
            Can_key_cmd=key_up;
        else if(Can_key_cmd==key_right)
            Can_key_cmd=key_down;
    }
*/    
#if 0
    else if(curr_menu==menu_setup1_page1_code.items)
    {
        if(Can_key_cmd==key_right)
            Can_key_cmd=key_down;
    }
#endif
    switch(Can_key_cmd)
    {
    case key_down:
	/*	
        FS_key_num=curr_menu[FS_key_num].down;
        if((set_value_fun())==curr_menu[FS_key_num].button_mouse_id)
            MenuDemo(&curr_menu[curr_menu[FS_key_num].press_button_ID]);
        else
            MenuDemo(&curr_menu[FS_key_num]);
    */
    	if(curr_menu == menu_back_rada_page.items 
			|| curr_menu==(menu_back_rada_Contrast_page.items) 
			|| curr_menu==(menu_back_rada_light_page.items)
			|| curr_menu==menu_back_rada_Camera_SW_page.items
			|| curr_menu==menu_back_rada_Track_SW_page.items)
    	{
			if(Sys.u8back_mode_status > 0 )
			{
				Sys.u8back_mode_status--;
				Menu_page_Draw_button(main_page_OSD_back_rada,Sys.u8back_mode_status);
			}	
		}
        break;
    case key_up:
	/*	
        FS_key_num=curr_menu[FS_key_num].up;
        if((set_value_fun())==curr_menu[FS_key_num].button_mouse_id)
            MenuDemo(&curr_menu[curr_menu[FS_key_num].press_button_ID]);
        else
            MenuDemo(&curr_menu[FS_key_num]);
    */        
    	if(curr_menu == menu_back_rada_page.items 
			|| curr_menu==(menu_back_rada_Contrast_page.items) 
			|| curr_menu==(menu_back_rada_light_page.items)
			|| curr_menu==menu_back_rada_Camera_SW_page.items
			|| curr_menu==menu_back_rada_Track_SW_page.items)
    	{
			if(Sys.u8back_mode_status < 3 )
			{
				Sys.u8back_mode_status++;
				Menu_page_Draw_button(main_page_OSD_back_rada,Sys.u8back_mode_status);
			}	
		}        
        break;
    case key_left:
        if(curr_menu == menu_back_rada_page.items 
			|| curr_menu==(menu_back_rada_Contrast_page.items) 
			|| curr_menu==(menu_back_rada_light_page.items)
			|| curr_menu==menu_back_rada_Camera_SW_page.items
			|| curr_menu==menu_back_rada_Track_SW_page.items)
    	{
	   		Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_rada_main_setup);
        }
        break;
    case key_right:
        FS_key_num=curr_menu[FS_key_num].right;
        //FS_key_num=curr_menu[g_mouse[FS_key_num]].right;
        MenuDemo(&curr_menu[FS_key_num]);
        break;
    case key_enter:
        curr_menu[FS_key_num].p(0, FS_key_num, MSG_ACTION_BOUNCE);
        break;
    case key_media:
        if(Sys.Main_Source!=SRC_CarMedia)
        {
            if(Sys.Main_Source==SRC_CAM)
                Sys.back_last_Main_Source=SRC_CarMedia;
			else if(Sys.Main_Source==SRC_FrontView)
				Sys.FrontView_last_Main_Source=SRC_CarMedia;
            else
                Adjust_Source(SRC_CarMedia);
        }
        break;
    case key_NAVI:
        if(Sys.Main_Source!=SRC_NAVI)
        {
            if(Sys.Main_Source==SRC_CAM)
                Sys.back_last_Main_Source=SRC_NAVI;
            else if(Sys.Main_Source==SRC_FrontView)
				Sys.FrontView_last_Main_Source=SRC_NAVI;
			else
                Adjust_Source(SRC_NAVI);
        }
        break;
    case key_cam:
        Adjust_Source(SRC_CAM);
        break;
	case key_TV_SRC:
	{
		if(Sys.Main_Source==SRC_NAVI)
        {
			Adjust_Source(SRC_TV);
		}
	}	break;
    case key_menu_request:
        Menu_page_DrawImage(Can_key_cmd_meun_mainosd,Can_key_cmd_meun_subosd);
        break;
    default:
        break;
    }

    Can_key_cmd=key_null;
    Can_key_cmd_meun_mainosd=0;
    Can_key_cmd_meun_subosd=0;

    return 0;
}

BYTE set_value_fun()
{
    switch(Sys.main_osd)
    {
    case main_page_OSD_setup:
        switch(Sys.sub_osd)
        {
        case sub_page_OSD_setup_navi:
            return Sys.FS_select.NAV_key_type;
        case sub_page_OSD_setup_logo:
            return Sys.FS_select.logo_type_onoff_id;
        case sub_page_OSD_setup_car:
            return Sys.FS_select.car_type_onoff_id;
        case sub_page_OSD_setup_back:
            return Sys.FS_select.car_rearview_id;
        case sub_page_OSD_setup1_auto_rada:
            return Sys.FS_select.auto_rada_onoff_id;
        case sub_page_OSD_setup1_navi_show:
            return Sys.FS_select.NAV_setup_show;
		case sub_page_OSD_Setup1_language_type:
			return Sys.FS_select.System_Language;
        }
        break;
    }
    return 0xfe;
}

BOOL User_PositionProcess(WORD Xpos, WORD Ypos, U8 Action)
{
    U8 i;
/*	
    if(Sys.Main_Source==SRC_CarMedia&&Sys.main_osd!=main_page_OSD_setup&&Sys.main_osd!=main_page_OSD_setup1)
    {
        switch(byTouch_moveStatus)
        {
        case TOUCHMOVEUP:
            byTouch_moveStatus=0;
            U8Tiemr_connect_press=0;
            connect_press_one=0;
            LF_BENCI_KEY_SEND_FUN(CAN2,benci_send_key_up);
            break;
        case TOUCHMOVEDOWN:
            byTouch_moveStatus=0;
            U8Tiemr_connect_press=0;
            connect_press_one=0;
            LF_BENCI_KEY_SEND_FUN(CAN2,benci_send_key_down);
            break;
        case TOUCHMOVELEFT:
            byTouch_moveStatus=0;
            U8Tiemr_connect_press=0;
            connect_press_one=0;
            LF_BENCI_KEY_SEND_FUN(CAN2,benci_send_key_left);
            break;
        case TOUCHMOVERIGHT:
            byTouch_moveStatus=0;
            U8Tiemr_connect_press=0;
            connect_press_one=0;
            LF_BENCI_KEY_SEND_FUN(CAN2,benci_send_key_right);
            break;
        case	TOUCHPRESSEDDB:
            byTouch_moveStatus=0;
            U8Tiemr_connect_press=0;
            connect_press_one=0;
            LF_BENCI_KEY_SEND_FUN(CAN2,benci_send_key_enter);
            break;
        default:
            byTouch_moveStatus=0;
            break;
        }
    }
*/
    for (i = 0; curr_menu[i].osd_dest.left!= U16_MAX; i++)
    {
        if (Xpos > curr_menu[i].osd_dest.left  \
                && Xpos < curr_menu[i].osd_dest.Right)
        {
            if (Ypos > curr_menu[i].osd_dest.top  \
                    && Ypos < curr_menu[i].osd_dest.Bottom)
            {
                break;
            }
        }
    }


    if (curr_menu[i].osd_dest.left == U16_MAX)
    {
        return FALSE;
    }

    FS_key_num=curr_menu[i].button_id;
    FS_key_mouse_index=curr_menu[i].button_mouse_id;
    if (Action == MSG_ACTION_PRESSED)
    {
        // g_stuMOUSE.uCurFoucusIndex = GUI_PAGE_SET[Sys.main_osd][Sys.sub_osd].pItem[i].uPosIndex;
        // MouseMemIndex(g_stuMOUSE.uCurFoucusIndex);
    }
    else if (Action == MSG_ACTION_BOUNCE)
    {
    }
    else if (Action == MSG_ACTION_KEEP) {}
    else if (Action == MSG_ACTION_MOVE) {}
    else if (Action == MSG_ACTION_MOVE_BOUNCE) {}

    curr_menu[i].p(0, i, Action);
    return TRUE;
}


void touch_process()
{
    switch(Sys.main_osd)
    {
    case main_page_OSD_setup:
        switch(Sys.sub_osd)
        {
        case sub_page_OSD_setup_main:
            //if()
            //Boutton_range
            break;
        }
        break;
    }
}
#endif
/*========the following is defined menu pages,miller.tao20150914==============*/

/**
* desc: draw the selected item. It can be background image, focused image,...
* use curr_menu.menu_info[item]
* tip: we need a osdlang.
* @param use1
*		0:Normal 1:focused Image.
* @param item
*		item number.
*
*/
//-----------------------------------------------------------------------------
/**
* Function
*
* Description
* @param use1
*	1:select second image, normally to indicate the pressed icon.
* @param item
*	item number on current menu page.
* @return
*/
void MenuDrawCurrImage(BYTE use1, BYTE item)
{
    //WORD sx,sy;
    menu_sitem_info_t *menu_item;
    IMAGE_ITEM_INFO *image;
    BYTE sosd_win;

    IMAGE_HEADER    *header = &gtImageHeader;
    //menu_image_header_t *header = &header_table;

 //   menu_item = &(menu_audio_page.items[1]);



    if(use1)	image = menu_item->image1;
    else		image = menu_item->image;


#if 0
    if(curr_menu == &menu_slider_page || curr_menu == &menu_slider3_page)
    {
        if(item == 1)
        {
            //slide title
            image = slide_title_img;
        }
    }
#endif
    //prepare header
    MenuPrepareImageHeader(image);

    //debug info
#ifdef DEBUG_MENU
    PrintCurrMenu();
    PrintCurrItem(item, header);
#endif

    //sx = menu_item->x;
    //sy = menu_item->y;
    sosd_win = menu_item->win;

    //adjust sx,sy
    if(menu_item->align != ALIGN_TOPLEFT)
    {
        //please adjust new sx,sy
    }

    //fill out sosd_buff
    SOsd_SetSpiStartOffset( sosd_win, header->lut_addr);
    SOsd_SetImageWidthHeight( sosd_win, header->dx, header->dy );
    SOsd_SetScreen( sosd_win,  header->dx, header->dy );
#if 0
    if(sosd_win==0)
    {
        SOsd_SetWin0ImageOffsetXY( 0, 0 );
        SOsd_SetWin0Animation( 1, 0, 0, 0);
    }
#endif
    if(image->alpha != 0xFF)
    {
        SpiOsdSetPixelAlpha( sosd_win, image->alpha );
        //SOsd_SetPixelAlpha( sosd_win, ON );
        //SOsd_SetPixelAlphaIndex(sosd_win,image->alpha); //BK130325
    }
    else
    {
        SOsd_SetGlobalAlpha( sosd_win, 0 /*EE_Read(EEP_OSD_TRANSPARENCY)*/);
    }
    SOsd_SetPixelWidth(sosd_win, header->bpp);
    SOsd_SetLutOffset(sosd_win,menu_item->lut);

    SOsd_Enable( sosd_win, ON );

    if(UseSOsdHwBuff)
    {
        //
        //write to buffer
        //
        if(header->rle)
            SOsd_SetRlc(sosd_win,header->bpp,header->rle);
        SOsd_SetLut(sosd_win, header->lut_type, menu_item->lut, header->lut_size, header->lut_addr, image->alpha);

        //pixel alpha blending. after load Palette
        //if(image->alpha != 0xFF)
        //	//SOsdHwBuffSetAlpha(sosd_win, menu_item->lut+image->alpha);
        //	SOsd_SetPixelAlphaIndex(sosd_win,image->alpha);
    }
    else
    {
        //
        //write to HW
        //

        //WaitVBlank(1);
        if(header->rle)  	//need RLE ?
        {
            SOsd_SetRlc( sosd_win, header->bpp,header->rle);
            SOsd_UpdateRlc();
        }
        else
        {
            //We using RLE only on the background.
            if(item == 0)
            {
                SOsd_CleanRlc();
                SOsd_UpdateRlc();
            }
        }
        WaitVBlank(1);

        //Load Palette.
        //SpiOsdLoadLUT(sosd_win, header->lut_type, menu_item->lut, header->lut_size, header->lut_loc,image->alpha);
        SOsd_SetLut(sosd_win, header->lut_type, menu_item->lut, header->lut_size, header->lut_addr,image->alpha);
        SOsd_UpdateLut(sosd_win, 1);

        //WaitVBlank(1);
        //update HW
        SOsd_UpdateReg(menu_item->win, menu_item->win);
    }
}



void proc_menu_bg(void)
{
    //BYTE curr_menu_type;
    //curr_menu_type = menu_audio_page.type & 0x0F;

    //CpuTouchSkipCount = 1*500*2;	//0.5 sec

    UseSOsdHwBuff = 1;
    SpiOsdClrLut();
    SpiOsdClrRlc();
    SpiOsdClrReg();
//	SOsd_CleanLutOffset();

    MenuDrawCurrImage(0,0);									//draw background
#if 0

    if(curr_menu_type==MENU_TYPE_LIST
            || curr_menu_type==MENU_TYPE_SCRLDN)
    {
        //update HW and clear UseSOsdHwBuff mode.
        SOsd_show(1);
        UseSOsdHwBuff = 0;
        if(menu_lock_scroll==0)
        {
            if(curr_menu_type == MENU_TYPE_LIST)
                MenuDrawScrollImage(1, NAVI_KEY_RIGHT);		//left side
            else if(curr_menu_type == MENU_TYPE_SCRLDN)
                MenuDrawScrollImage(1, NAVI_KEY_DOWN);		//top topdown moving
            else
            {
                dMenuPrintf("\n\rinvalid curr_menu->type:%bx",curr_menu->type);
                MenuDrawCurrImage(0,1);
            }
            menu_lock_scroll=1;
        }
        else
            MenuDrawCurrImage(0,1);
    }
#endif

    MenuDrawCurrImage(0,1);

    //MenuDrawCurrImage(0,menu_audio_page.focus);			//draw focused item
    //if(menu_audio_page.type & MENU_TYPE_NOTE ) 			//draw selected note symbol(bar or point)
    //	MenuDrawCurrImage(0,menu_audio_page.select+menu_audio_page.item_total);	//select

    //if(UseSOsdHwBuff)
    {
        SOsd_show(UseSOsdHwBuff);
        UseSOsdHwBuff = 0;
    }
}

//	TW8836亮度设置
void TW8836BrightAdjust(Byte value)
{
    TW8836_WritePage(0x02);
    TW8836_Write(0x87, value);
	TW8836_Write(0x88, value);
	TW8836_Write(0x89, value);
}
//	TW8836对比度设置
void TW8836ContrastAdjust(Byte value)
{
    TW8836_WritePage(0x02);
    TW8836_Write(0x81, value);
	TW8836_Write(0x82, value);
	TW8836_Write(0x83, value);
}
//=====================
// POSITION
//=====================


//----------------------
// position popup MENU
//manu->input->PC->set->position
//----------------------
//
//
//
//
//
//
//------------------------------------------
//description
