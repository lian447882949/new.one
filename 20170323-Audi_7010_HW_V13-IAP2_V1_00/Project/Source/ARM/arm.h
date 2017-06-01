#ifndef _ARM_H_
#define _ARM_H_

#ifdef _ARM_C_
  #define _ARMDEC_
#else
  #define _ARMDEC_ extern
#endif

#define  ARM_rec_start_type	0X00
#define  ARM_rec_openlogo_init_type	0X01
#define  ARM_rec_save_type	0X04
#define  ARM_rec_beep_type	0X05
#define  ARM_rec_power_type	0X11
#define  ARM_rec_menu_req_type	0X12
#define  ARM_rec_src_type	0X13
#define  ARM_rec_touch_type	0X14
#define  ARM_rec_menu_type	0X41
	#define  ARM_rec_menu_main_type	0X01
	#define  ARM_rec_menu_radio_type	0X02
	#define  ARM_rec_menu_vcdc_type	0X03
	#define  ARM_rec_menu_bt_type		0X04
	#define  ARM_rec_menu_av_type		0X05
	#define  ARM_rec_menu_dvd_type	0X06
	#define  ARM_rec_menu_ipod_type	0X07
	#define  ARM_rec_menu_audioplay_type	0X08
	#define  ARM_rec_menu_videoplay_type	0X09
	#define  ARM_rec_menu_cam_type	0X0a
	#define  ARM_rec_menu_navi_type	0X0b
	#define  ARM_rec_menu_cdsave_type		0X0c
	#define  ARM_rec_menu_digitv_type		0X0e
	#define  ARM_rec_menu_analogtv_type	0X0f
	#define  ARM_rec_menu_dvr_type	0X10
	#define  ARM_rec_menu_app_type	0X11	
	#define  ARM_rec_menu_cambox_type 0X12	
	#define  ARM_rec_menu_setup_type	0X20
	#define  ARM_rec_menu_factory_type	0X21
	#define  ARM_rec_menu_steer_type	0X22
	#define  ARM_rec_menu_2zone_type	0X23
#define  ARM_rec_upgrade_type	0X60
#define  ARM_rec_system_config_type	0X61
#define  ARM_rec_function_config_type	0X62
#define  ARM_rec_get_version_type	0X63


#define  ARM_rec_canbus_type	0X80
	#define ARM_rec_canbus_tuguan 0x10
	#define ARM_rec_canbus_gm 0x11

#define  ARM_rec_canbox_upgrade_type	0X90
#define ARM_rec_ControlPolling 0xA1 //TSH2013-01-22,polling DVD disc position and back car
#define ARM_rec_TimeSet 0xA2 	//TSH2013-04-16
#define ARM_rec_HW_Mute 0xA3    //TSH,2013-04-24
#define ARM_rec_Radar 0xA4    //TSH,2013-05-30
#define ARM_rec_SetFM 0xA5    //TSH,2015-07-30


#define  ARM_send_init_type	0X00
#define  ARM_send_power_type	0X01
#define  ARM_send_arm_check_type	0X02
#define  ARM_send_vol_control_type	0X05
#define  ARM_send_touch_switch_type	0X06
#define  ARM_send_menu_type	0X10
//#define  ARM_send_src_power_type	0X11 //TSH,2013-05-11
#define  ARM_send_src_type	0X11

#define  ARM_send_mainmenu_type	0X41
#define  ARM_send_radio_type	0X42
#if 0//TSH,marked,2013-05-02
#define  ARM_send_ipod_type	0X43
#define  ARM_send_drv_type	0X44
#define  ARM_send_app_type	0X45
#define  ARM_send_vcdc_type	0X46
#define  ARM_send_bt_type		0X47
#define  ARM_send_cam_type	0X48
#define  ARM_send_dvd_type	0X49
#endif
#define  ARM_send_tv_type		0X4a
#if 0 //TSH,marked,2013-05-02
#define  ARM_send_navi_type	0X4b
#define  ARM_send_aux_type	0X4c
#define  ARM_send_videoplay_type	0X4d
#define  ARM_send_audioplay_type	0X4e
#define  ARM_send_cambox_type	0X4f
#endif
#define  ARM_send_setup_type	0X54
#define  ARM_send_steer_type	0X55
//#define  ARM_send_spectrum_type	0X56

#define  ARM_send_upgrade_type	0X60
#define  ARM_send_system_config_type	0X61
#define  ARM_send_factory_type	0X62
#define  ARM_send_version_type	0X63
#define  ARM_send_canbus_type	0X80
#define  ARM_send_canbusVer_type	0X81 //tsh20130803
	#define ARM_send_CANVER_ID 0x02 //tsh20130803
#define  ARM_send_can_upgrade_type	0X90



#define  COM_MCU_ID	0X90
#define  COM_ARM_ID	0X91
#define  APP_MCU_ID	0X55 //TSH,2013-01-18
#define  APP_ARM_ID	0XAA //TSH,2013-01-18

#define  ARM_rec_start_max	1
#define  ARM_rec_openlogo_init_max	2
#define  ARM_rec_save_max	1
#define  ARM_rec_beep_max	1
#define  ARM_rec_power_max	3
#define  ARM_rec_menu_req_max	2
#define  ARM_rec_src_max	2
#define  ARM_rec_touch_max	5
#define  ARM_rec_menu_main_max	 1
#define  ARM_rec_menu_radio_max	3
#define  ARM_rec_menu_vcdc_max 3
#define  ARM_rec_menu_bt_max 30
#define  ARM_rec_menu_av_max  1
#define  ARM_rec_menu_dvd_max	16 //4/
#define  ARM_rec_menu_ipod_max  8
#define  ARM_rec_menu_audioplay_max  8
#define  ARM_rec_menu_videoplay_max  8
#define  ARM_rec_menu_cam_max  1
#define  ARM_rec_menu_navi_max  1
#define  ARM_rec_menu_cdsave_max 1
#define  ARM_rec_menu_digitv_max 1
#define  ARM_rec_menu_analog_max	3
#define  ARM_rec_menu_dvr_max	2
#define  ARM_rec_menu_app_max	1
#define  ARM_rec_menu_cambox_max	35
#define  ARM_rec_menu_setup_max  13
#define  ARM_rec_menu_factory_max	 4
#define  ARM_rec_menu_steer_max	 80
#define  ARM_rec_menu_2zone_max	2
#define ARM_rec_upgrade_max 2
#define ARM_rec_system_config_max 67
#define ARM_rec_function_config_max 28
#define ARM_rec_fun_sel_max 3 //TSH,2013-04-28
//-------------------canbus------------
#define ARM_rec_canbus_tuguan_max 5
#define ARM_rec_canupgrade_max 80



_ARMDEC_ Byte   ARM_rec_start_buff[ARM_rec_start_max];
_ARMDEC_ Byte   ARM_rec_openlogo_init_buff[ARM_rec_openlogo_init_max];
_ARMDEC_ Byte   ARM_rec_power_buff[ARM_rec_power_max];	
_ARMDEC_ Byte   ARM_rec_menu_req_buff[ARM_rec_menu_req_max];	
_ARMDEC_ Byte   ARM_rec_src_buff[ARM_rec_src_max];	
_ARMDEC_ Byte   ARM_rec_touch_buff[ARM_rec_touch_max];	
_ARMDEC_ Byte   ARM_rec_menu_main_buff[ARM_rec_menu_main_max];	
_ARMDEC_ Byte   ARM_rec_menu_radio_buff[ARM_rec_menu_radio_max];	
//_ARMDEC_ Byte   ARM_rec_menu_vcdc_buff[ARM_rec_menu_vcdc_max];	
_ARMDEC_ Byte   ARM_rec_menu_bt_buff[ARM_rec_menu_bt_max];	
//_ARMDEC_ Byte   ARM_rec_menu_av_buff[ARM_rec_menu_av_max];	
_ARMDEC_ Byte   ARM_rec_menu_dvd_buff[ARM_rec_menu_dvd_max];	
//_ARMDEC_ Byte   ARM_rec_menu_ipod_buff[ARM_rec_menu_ipod_max];	
_ARMDEC_ Byte   ARM_rec_menu_audioplay_buff[ARM_rec_menu_audioplay_max];	
_ARMDEC_ Byte   ARM_rec_menu_videoplay_buff[ARM_rec_menu_videoplay_max];	
_ARMDEC_ Byte   ARM_rec_menu_cam_buff[ARM_rec_menu_cam_max];	
_ARMDEC_ Byte   ARM_rec_menu_navi_buff[ARM_rec_menu_navi_max];	
//_ARMDEC_ Byte   ARM_rec_menu_cdsave_buff[ARM_rec_menu_cdsave_max];	
_ARMDEC_ Byte   ARM_rec_menu_digitv_buff[ARM_rec_menu_digitv_max];	
_ARMDEC_ Byte   ARM_rec_menu_analogtv_buff[ARM_rec_menu_analog_max];	
//_ARMDEC_ Byte   ARM_rec_menu_dvr_buff[ARM_rec_menu_dvr_max];	
_ARMDEC_ Byte   ARM_rec_menu_cambox_buff[ARM_rec_menu_cambox_max];	
//_ARMDEC_ Byte   ARM_rec_menu_app_buff[ARM_rec_menu_app_max];	
_ARMDEC_ Byte   ARM_rec_menu_setup_buff[ARM_rec_menu_setup_max];	
_ARMDEC_ Byte   ARM_rec_menu_factory_buff[ARM_rec_menu_factory_max];	
_ARMDEC_ Byte   ARM_rec_menu_steer_buff[ARM_rec_menu_steer_max];	
//_ARMDEC_ Byte   ARM_rec_menu_2zone_buff[ARM_rec_menu_2zone_max];	
_ARMDEC_ Byte   ARM_rec_upgrade_buff[ARM_rec_upgrade_max];	
_ARMDEC_ Byte   ARM_rec_system_config_buff[ARM_rec_system_config_max];	
_ARMDEC_ Byte   ARM_rec_function_config_buff[ARM_rec_function_config_max];	
_ARMDEC_ Byte	ARM_rec_ContrPoll_buff[2];
_ARMDEC_ Byte	ARM_rec_USART1_buff[1];
_ARMDEC_ Byte	ARM_rec_TimeSet_buff[6];
_ARMDEC_ Byte	ARM_rec_HWMute_buff[ARM_rec_fun_sel_max];
_ARMDEC_ Byte   ARM_rec_canupgrade_buff[ARM_rec_canupgrade_max];	


_ARMDEC_ Byte   WINCA_ProtocolFlag;//TSH,2013-01-21:1 stand for S100 协议，0代表OS协议
_ARMDEC_ Byte   ARM_USART1_Status;//0:on,1:off,TSH,2013-01-23
_ARMDEC_ Byte   Rem_SRC_long_set;

#define ARM_rec_canbus_tuguan_max 5
#define ARM_rec_canbus_camry_max 4
#define ARM_rec_canbus_cruze_max 12//11
#define ARM_rec_canbus_hyundai_max 3
#define ARM_rec_canbus_benz_max 4
#define ARM_rec_canbus_Mondeo_max 4
#define ARM_rec_canbus_opel_max  3
#define ARM_rec_canbus_fiesta_max 2 // 3//11
#define ARM_rec_canbus_outlander_max  5
#define ARM_rec_canbus_Mazda3_max  3
#define ARM_rec_canbus_B50_max  5
#define ARM_rec_canbus_CRV_max    5
#define ARM_rec_canbus_civic_max    5
#define ARM_rec_canbus_VOLVO_max 4   //d_?
#define ARM_rec_canbus_Megane3_max    2  //
#define ARM_rec_canbus_Megane2_max    1   //d_?
#define ARM_rec_canbus_B70_max 4 //tao20121203
#define ARM_rec_canbus_bz207_max    12
#define ARM_rec_canbus_bz206_max    3
#define ARM_rec_canbus_teana_max  7
#define ARM_rec_canbus_focus_max 30
#define ARM_rec_canbus_CitroenC4C5_hechi_max   7
#define ARM_rec_canbus_outlander_hechi_max    2  
#define ARM_rec_canbus_CitroenC4C5_max    7//CitroenC4C5_cantype
#define ARM_rec_canbus_C4_max   7 //C4L_hechi_cantype
#define  ARM_rec_canbus_bz308_max    5
#define ARM_rec_canbus_L200_max    21

#define ARM_rec_SetFM_max    2

#if 1//tao,2013-03-16

//here ,we define a common buffer to reducing use RAM space
#define ARM_rec_canbus_public_max 30//12
_ARMDEC_ Byte ARM_rec_canbus_public_buff[ARM_rec_canbus_public_max];
_ARMDEC_ UINT gFMFrequency;//miller.tao20150731

#if 0
_ARMDEC_ Byte   ARM_rec_canbus_tuguan_buff[ARM_rec_canbus_tuguan_max];	
_ARMDEC_ Byte   ARM_rec_canbus_camry_buff[ARM_rec_canbus_camry_max];	
_ARMDEC_ Byte   ARM_rec_canbus_cruze_buff[ARM_rec_canbus_cruze_max];	
_ARMDEC_ Byte   ARM_rec_canbus_hyundai_buff[ARM_rec_canbus_hyundai_max];	
_ARMDEC_ Byte   ARM_rec_canbus_benz_buff[ARM_rec_canbus_benz_max];	
_ARMDEC_ Byte   ARM_rec_canbus_Mondeo_buff[ARM_rec_canbus_Mondeo_max];
_ARMDEC_ Byte   ARM_rec_canbus_opel_buff[ARM_rec_canbus_opel_max];
_ARMDEC_ Byte   ARM_rec_canbus_fiesta_buff[ARM_rec_canbus_fiesta_max];	
_ARMDEC_ Byte   ARM_rec_canbus_B50_buff[ARM_rec_canbus_B50_max];
_ARMDEC_ Byte   ARM_rec_canbus_CRV_buff[ARM_rec_canbus_CRV_max];
_ARMDEC_ Byte   ARM_rec_canbus_civic_buff[ARM_rec_canbus_civic_max];
_ARMDEC_ Byte   ARM_rec_canbus_VOLVO_buff[ARM_rec_canbus_VOLVO_max];
_ARMDEC_ Byte   ARM_rec_canbus_outlander_buff[ARM_rec_canbus_outlander_max];
_ARMDEC_ Byte   ARM_rec_canbus_Megane3_buff[ARM_rec_canbus_Megane3_max];
_ARMDEC_ Byte   ARM_rec_canbus_Megane2_buff[ARM_rec_canbus_Megane2_max];
_ARMDEC_ Byte   ARM_rec_canbus_Mazda3_buff[ARM_rec_canbus_Mazda3_max];
_ARMDEC_ Byte   ARM_rec_canbus_B70_buff[ARM_rec_canbus_B70_max];
_ARMDEC_ Byte   ARM_rec_canbus_bz207_buff[ARM_rec_canbus_bz207_max];
_ARMDEC_ Byte   ARM_rec_canbus_bz206_buff[ARM_rec_canbus_bz206_max];
#endif

#endif
//-------------------------------------
#define ARM_Receive_index_max  10 //20
#define ARM_Receive_Cnt_max  100 //80
#define ARM_Receive_Busy  0x55
#define ARM_Receive_Free  0xaa

#define ARM_Receive_Check_ok  0xff
#define ARM_Receive_Check_error  0xf0
#define ARM_Receive_Check_notsupport  0xf3
#define ARM_Receive_Check_busy  0xfc

//========Tao define error status,20130107start==============
#define ARM_ERR_SUCCESS 0x00
#define ARM_ERR_FAIL    0x01
#define ARM_ERR_UnSurportBaudRate    0x02
#define ARM_ERR_InvalidTime    0x03
#define ARM_ERR_ClockHWFaiL    0x04



//========Tao define error status,20130107end==============
#ifdef YCFunction_EN //tao-2013-03-16
_ARMDEC_ Byte ycReceiveBuff[0x100];
_ARMDEC_ Byte ycSaveIndex;
_ARMDEC_ Byte ycGetIndex;
_ARMDEC_ Byte yctempBuff[40];
#endif
_ARMDEC_ Byte ARM_Rec_temp[ARM_Receive_Cnt_max];
_ARMDEC_ Byte ARM_Rec_buffer[ARM_Receive_index_max][ARM_Receive_Cnt_max];
_ARMDEC_ Byte ARM_Receive_index;
_ARMDEC_ Byte ARM_Done_index;
_ARMDEC_ Byte ARM_Receive_Cnt;
_ARMDEC_ Byte ARM_Max_Time_Cnt;//接受超时退出
_ARMDEC_ Byte ARM_Receive_OK; //=1接受完成
_ARMDEC_ Byte ARM_Receive_length; //长度
_ARMDEC_ Byte ARM_Receive_ack; //=1OK

_ARMDEC_ Byte ARM_send_id; //正在发送过程中?不能回馈ACK
_ARMDEC_ Byte ARM_ack_request; 

//===============TSH,20130107start=====================
_ARMDEC_ Byte ARM_Send_temp[ARM_Receive_Cnt_max];//所有要发送的数据放到这个数组中
_ARMDEC_ Byte ARM_Send_length; //发送长度
//Command ID:
#define Cmd_OpenCloseUSART 0x00
#define Cmd_IN_BackCar 0x01
#define Cmd_Out_BackCar 0x02
#define Cmd_SetSysTime 0x03
#define Cmd_OpenBackLight 0x04
#define Cmd_CloseBackLight 0x05
#define Cmd_SetLCDParam 0x06
#define Cmd_SetUsbVer 0x07
#define Cmd_Radar_func 0x08 //TSH,2013-05-30

#define Cmd_HandShake 0xA0
#define Cmd_DiscStatus 0xBA
#define Cmd_DiscLoadOrEject 0xBB


//================TSH,20130107end====================


//////////////////////////////////////////////////////////////////////////
#define COM_SRC_OFFLCD 0x0
#define COM_SRC_RADIO 0x01
#define COM_SRC_DVD 0x02
#define COM_SRC_NAVI 0x03
#define COM_SRC_BT 0x04 
#define COM_SRC_AV1 0x05 
#define COM_SRC_AV2 0x06 
#define COM_SRC_VIDEOPLAY 0x07 
//#define COM_SRC_AUDIOPLAY 0x08 
#define COM_SRC_SD 0x07 
#define COM_SRC_USB 0x08

#define COM_SRC_VDISC 0x09 
#define COM_SRC_TV 0x0a 
#define COM_SRC_CAM 0x0b 
#define COM_SRC_IPOD 0x0c 
#define COM_SRC_DVR 0x0d 
#define COM_SRC_APP 0x0e 
#define COM_SRC_CAMBOX 0x0f
#define COM_SRC_SET 0x10 
#define COM_SRC_MAINMENU 0x11 
#define COM_SRC_EXIT 0x12 
#define COM_SRC_ARM 0x13

#define COM_SRC_CarMedia 0x14
#define COM_SRC_CVBS 0x15


//////////////////////////////////////////////////////////////////////////
#define COM_MAIN_LCD_OFF 0x0
#define COM_MAIN_LCD_DAY 0x01
#define COM_MAIN_LCD_NIGHT 0x02
#define COM_MAIN_EXIT 0x03
#define COM_MAIN_LCD_MODE 0x04
#define COM_MAIN_MUTE 0x05
#define COM_MAIN_VOL 0x06
#define COM_MAIN_POWER_OFF 0x09
#define COM_MAIN_PIP 0x0A
#define COM_MAIN_DEVICE_ON 0x10
#define COM_MAIN_DEVICE_CLEAR 0x11
//////////////////////////////////////////////////////////////////////////
#define COM_RADIO_SEL_CH 0x10
#define COM_RADIO_SAVE_CH 0x11

#define COM_RADIO_FM 0x0
#define COM_RADIO_AM 0x01

#define COM_RADIO_SEARCH_NEXT 0x12
#define COM_RADIO_STEP_NEXT 0x13
#define COM_RADIO_SEARCH_UP 0x14
#define COM_RADIO_STEP_UP 0x15
#define COM_RADIO_AST 0x16
#define COM_RADIO_SCAN 0x17
#define COM_RADIO_LOC 0x18
#define COM_RADIO_ST 0x19
#define COM_RADIO_TA 0x1A
#define COM_RADIO_AF 0x1B
#define COM_RADIO_PTY_SEL 0x1C
#define COM_RADIO_PTY_SEARCH 0x1D
#define COM_RADIO_PTY_DEC 0X1E
#define COM_RADIO_PTY_ADD 0X1F

#define COM_RADIO_SEL_MENU 0x20
#define COM_RADIO_SET_FREQ 0x21
#define COM_RADIO_SCAN_DOWN 0x22
#define COM_RADIO_SCAN_UP 0x23
#define COM_RADIO_SET_UP 0x25
#define COM_RADIO_SET_DOWN 0x26

#define COM_RADIO_STATE_NORMAL 0x01
#define COM_RADIO_STATE_SEARCH 0x02
#define COM_RADIO_STATE_SCAN 0x03
//////////////////////////////////////////////////////////////////////////
#define COM_NAVI_VOICE_ON 0x01
#define COM_NAVI_VOICE_OFF 0x02
#define COM_NAVI_MAP_IN 0x03
#define COM_NAVI_MAP_EXIT 0x04
#define COM_NAVI_NO_MAPCARD 0x05
#define COM_NAVI_HAS_MAPCARD 0x06

//////////////////////////////////////////////////////////////////////////
#define COM_SETUP_EQ 0x01
#define COM_SETUP_TREBLE 0x2
#define COM_SETUP_MID 0x3
#define COM_SETUP_BASS 0x4
#define COM_SETUP_SUBWOOF 0x5
#define COM_SETUP_BALANCE 0x6
#define COM_SETUP_FADER 0x7
#define COM_SETUP_VOLUME 0x8
#define COM_SETUP_AUDIO_GAIN 0x0A
#define COM_SETUP_AUDIO_RESET 0x0B
#define COM_SETUP_VIDEO_MODE 0x0C
#define COM_SETUP_BRIGHT 0x0D
#define COM_SETUP_CONTRAST 0x0E
#define COM_SETUP_COLOR 0x0F
#define COM_SETUP_OPEN_MOVIE 0x10
#define COM_SETUP_VOICE_NAVI 0x11
#define COM_SETUP_BEEP 0x12
#define COM_SETUP_KEY_COLOR 0x13
#define COM_SETUP_BACKLIGHT 0x14
#define COM_SETUP_LAMP 0x15
#define COM_SETUP_BRAKE 0x16
#define COM_SETUP_BACK_DET 0x17
#define COM_SETUP_BACK_MUTE 0x18
#define COM_SETUP_BACK_OPEN 0x19
#define COM_SETUP_DVR_ACC 0x1A
#define COM_SETUP_DVR_POWER 0x1B
#define COM_SETUP_KEYLIGHT 0x1C
#define COM_SETUP_LCD 0x1d //TSH,2013-04-13,add
#define COM_SETUP_RESET 0x30
//////////////////////////////////////////////////////////////////////////
#define COM_FACTORY_ARM_VER 0x00
#define COM_FACTORY_RADIO_AREA 0x01
#define COM_FACTORY_RDS 0x02
#define COM_FACTORY_TV_MODULE 0x03
#define COM_FACTORY_MOTOR_TEST 0x04
#define COM_FACTORY_USER_SEL 0x05
#define COM_FACTORY_AMP 0x06
#define COM_FACTORY_CANBUS 0x07
#define COM_FACTORY_EQ 0x0a


#define COM_FACTORY_USB_MODE 0x20

//////////////////////////////////////////////////////////////////////////
#define COM_UPGRADE_MCU_REQ 0xB1
#define COM_UPGRADE_MCU_DATA 0xB2
#define COM_UPGRADE_MCU_FLASH 0xB3
//////////////////////////////////////////////////////////////////////////
#define COM_DVR_SRC 0x01
#define COM_DVR_CONTROL 0x02
//////////////////////////////////////////////////////////////////////////
#define COM_2ZONE_SRC 0x01
#define COM_2ZONE_CONTROL 0x02
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////


#define SEND_NO_Page 0xff
#define SEND_SRC_Page 1
#define SEND_Radio_Page 2
#define SEND_BT_Page 3
#define SEND_DVD_Page 4
#define SEND_CD_Page 5 
#define SEND_VCDC_Page 6 
#define SEND_TV_Page 7
#define SEND_AUX1_Page 8
#define SEND_AUX2_Page 9
#define SEND_CAM_Page 10 
#define SEND_IPOD_Page 11 
#define SEND_VIDEOPLAY_Page 12
#define SEND_AUDIOPLAY_Page 13  
#define SEND_DVR_Page 14
#define SEND_APP_Page 15
#define SEND_SETUP_Page 16
#define SEND_VIDEO_SETUP_Page 17
#define SEND_CAM_FORCE_Page 18 
#define SEND_NOSIGNAL_Page 0x13
#define SEND_OPENLOGOL_Page 0x14
#define SEND_NAVI_Page 0x15
/////////////////////////////////////////////////////////////////////////
#define SEND_VOL_AUDIOPLAY 0x01
#define SEND_VOL_VIDEOPLAY 0x02
#define SEND_VOL_APP 0x03
#define SEND_VOL_System 0x04
//////////////////////////////////////////////////////////////////////////

#define SEND_RADIO_SEND_LIST_TYPE 0x01
#define SEND_RADIO_FREQ_STATUS_TYPE 0x02
#define SEND_RADIO_ST_DIS_TYPE 0x03
#define SEND_RADIO_SET_ID_TYPE 0x04
#define SEND_RADIO_ST_SET_TYPE 0x05
#define SEND_RADIO_LOC_TYPE 0x06
#define SEND_RADIO_LIMIT_TYPE 0x07
#define SEND_RADIO_SAVE_TYPE 0x08
#define SEND_RADIO_RDSINFO_TYPE 0x09
#define SEND_RADIO_PTYSEL_TYPE 0x0A

#define SEND_RADIO_MONO_DIS 0x0
#define SEND_RADIO_ST_DIS 0x01

#define SEND_RADIO_LOC_DIS 0x0
#define SEND_RADIO_DX_DIS 0x01

//#define SEND_RADIO_EUROP 0x0
//#define SEND_RADIO_USA 0x01
//#define SEND_RADIO_JAPAN 0x02
//#define SEND_RADIO_ORIT 0x03
//#define SEND_RADIO_LATIN 0x04
//////////////////////////////////////////////////////////////////////////
#define SEND_IPOD_NUM0 0x10
#define SEND_IPOD_NUM1 0x11
#define SEND_IPOD_NUM2 0x12
#define SEND_IPOD_NUM3 0x13
#define SEND_IPOD_NUM4 0x14
#define SEND_IPOD_NUM5 0x15
#define SEND_IPOD_NUM6 0x16
#define SEND_IPOD_NUM7 0x17
#define SEND_IPOD_NUM8 0x18
#define SEND_IPOD_NUM9 0x19

#define SEND_IPOD_DISCONNECTED 0x0
#define SEND_IPOD_CONNECTED 0x01
#define SEND_IPOD_NEXT 0x02
#define SEND_IPOD_PREV 0x03
#define SEND_IPOD_PLAY 0x04
/////////////////////////////////////////////////////////////////////////
#define SEND_VCR_STOP 0x0
#define SEND_VCR_PAUSE 0x01
#define SEND_VCR_STAR 0x02
#define SEND_VCR_PREV 0x05
#define SEND_VCR_PLAY 0x06
#define SEND_VCR_NEXT 0x07
/////////////////////////////////////////////////////////////////////////
#define SEND_VCR_GETPOS_GET 0x01
#define SEND_VCR_GETPOS_STOP 0x02
#define SEND_VCR_GETPOS_GET_KCODE 0x03
#define SEND_VCR_GETPOS_STOP_KCODE 0x04
/////////////////////////////////////////////////////////////////////////
#define SEND_BT_NUM0 0x10
#define SEND_BT_NUM1 0x11
#define SEND_BT_NUM2 0x12
#define SEND_BT_NUM3 0x13
#define SEND_BT_NUM4 0x14
#define SEND_BT_NUM5 0x15
#define SEND_BT_NUM6 0x16
#define SEND_BT_NUM7 0x17
#define SEND_BT_NUM8 0x18
#define SEND_BT_NUM9 0x19

#define SEND_BT_RECEIVE 0x0
#define SEND_BT_END 0x01
#define SEND_BT_NEXT 0x02
#define SEND_BT_PREV 0x03
#define SEND_BT_PLAY 0x04

#define SEND_BT_CALLWAIT_SWITCH 0x05


#define SEND_BT_RECEIVE_CHECK 0x20
#define SEND_BT_REJECT_CHECK 0x21
/////////////////////////////////////////////////////////////////////////
#define SEND_DVD_PALYSTATUS_TYPE 0x01
#define SEND_DVD_PALYTIME_TYPE 0x02
#define SEND_DVD_TRACK_TYPE 0x03
#define SEND_DVD_REPEAT_TYPE 0x05
#define SEND_DVD_LOAD_TYPE 0x09
#define SEND_DVD_EJECT_TYPE 0x0A
#define SEND_DVD_REMOT_NUM_TYPE 0x0B

#define SEND_COPY_DISC_TYPE 0x00
#define SEND_COPY_FULL_TYPE 0x01
#define SEND_COPY_END_TYPE 0x02
#define SEND_VDISC_PLAYDISC_TYPE 0x10
#define SEND_VDISC_STATUS_TYPE 0x11
#define SEND_VDISC_FORMAT_TYPE 0x12

/////////////////////////////////////////////////////////////////////////
#define SEND_TV_MODULE_TYPE 0x01
#define SEND_TV_CALL_FREQ_TYPE 0x02
#define SEND_TV_SYSTEM_TYPE 0x03
#define SEND_TV_SEARCH_FREQ_TYPE 0x04
#define SEND_TV_SEARCH_SAVE_TYPE 0x05
#define SEND_TV_SEARCH_TOTLE_TYPE 0x06
#define SEND_TV_SignalCHK_TYPE 0x07


#define SEND_TV_VLF 1
#define SEND_TV_VHF 2
#define SEND_TV_UHF 3
/////////////////////////////////////////////////////////////////////////
#define SEND_NAVI_VOICE_OK 0x01
#define SEND_NAVI_MAP_CHECK 0x02

//////////////////////////////////////////////////////////////////////////
#define SEND_VIDEOPLAY_NUM0 0x10
#define SEND_VIDEOPLAY_NUM1 0x11
#define SEND_VIDEOPLAY_NUM2 0x12
#define SEND_VIDEOPLAY_NUM3 0x13
#define SEND_VIDEOPLAY_NUM4 0x14
#define SEND_VIDEOPLAY_NUM5 0x15
#define SEND_VIDEOPLAY_NUM6 0x16
#define SEND_VIDEOPLAY_NUM7 0x17
#define SEND_VIDEOPLAY_NUM8 0x18
#define SEND_VIDEOPLAY_NUM9 0x19

#define SEND_VIDEOPLAY_NEXT 0x02
#define SEND_VIDEOPLAY_PREV 0x03
#define SEND_VIDEOPLAY_PLAY 0x04
//////////////////////////////////////////////////////////////////////////
#define SEND_AUDIOPLAY_NUM0 0x10
#define SEND_AUDIOPLAY_NUM1 0x11
#define SEND_AUDIOPLAY_NUM2 0x12
#define SEND_AUDIOPLAY_NUM3 0x13
#define SEND_AUDIOPLAY_NUM4 0x14
#define SEND_AUDIOPLAY_NUM5 0x15
#define SEND_AUDIOPLAY_NUM6 0x16
#define SEND_AUDIOPLAY_NUM7 0x17
#define SEND_AUDIOPLAY_NUM8 0x18
#define SEND_AUDIOPLAY_NUM9 0x19

#define SEND_AUDIOPLAY_NEXT 0x02
#define SEND_AUDIOPLAY_PREV 0x03
#define SEND_AUDIOPLAY_PLAY 0x04
/////////////////////////////////////////////////////////////////////////
#define SEND_SETUP_EQ 0x01
#define SEND_SETUP_TREBLE 0x2
#define SEND_SETUP_MID 0x3
#define SEND_SETUP_BASS 0x4
#define SEND_SETUP_SUBWOOF 0x5
#define SEND_SETUP_BALANCE 0x6
#define SEND_SETUP_FADER 0x7
#define SEND_SETUP_VOLUME 0x8
#define SEND_SETUP_BT_VOLUME 0X09 //TSH,add,2013-05-03 
#define SEND_SETUP_AUDIO_GAIN 0x0A
#define SEND_SETUP_AUDIO_RESET 0x0B
#define SEND_SETUP_VIDEO_MODE 0x0C
#define SEND_SETUP_BRIGHT 0x0D
#define SEND_SETUP_CONTRAST 0x0E
#define SEND_SETUP_COLOR 0x0F
#define SEND_SETUP_OPEN_MOVIE 0x10
#define SEND_SETUP_VOICE_NAVI 0x11
#define SEND_SETUP_BEEP 0x12
#define SEND_SETUP_KEY_COLOR 0x13
#define SEND_SETUP_BACKLIGHT 0x14
#define SEND_SETUP_LAMP 0x15
#define SEND_SETUP_BRAKE 0x16
#define SEND_SETUP_BACK_DET 0x17
#define SEND_SETUP_BACK_MUTE 0x18
#define SEND_SETUP_BACK_OPEN 0x19
#define SEND_SETUP_DVR_ACC 0x1A
#define SEND_SETUP_DVR_POWER 0x1B
#define SEND_SETUP_RESET 0x30
//////////////////////////////////////////////////////////////////////////
#define SEND_UPGRADE_MCU_INIT  0x011
#define SEND_UPGRADE_MCU_READY  0x22
#define SEND_UPGRADE_MCU_REC_BUSY  0x33
#define SEND_UPGRADE_MCU_REC_OK  0x44
#define SEND_UPGRADE_MCU_REC_REPEAT  0x55
#define SEND_UPGRADE_MCU_REC_COMPLETE  0x66
#define SEND_UPGRADE_FLASH_READY  0x77
#define SEND_UPGRADE_FLASH_COMPLETE  0x88

#define SEND_UPGRADE_MCU_EEROR  0x99
#define SEND_Key_FuncValue   0xA0//TSH,2013-01-22,
#define SEND_Disc_Status 0xA1 //TSH,2013-01-22,
/////////////////////////////////////////////////////////////////////////
#define SEND_STEER_INFO_CLEAR  0x0
#define SEND_STEER_INFO_SEL_FUNC  0x01
#define SEND_STEER_INFO_PRESS_START  0x02
#define SEND_STEER_INFO_PRESS_BUTTON  0x03
#define SEND_STEER_INFO_KEY_OK  0x04
#define SEND_STEER_INFO_KEY_ERROR  0x05
#define SEND_STEER_INFO_SAVE_OK  0x06
#define SEND_STEER_INFO_SAVE_ERROR  0x07
#define SEND_STEER_ALL_VALUE  0x08
#define SEND_STEER_RESIS_SEL  0x09
#define SEND_STEER_INFO_CURRENT_VALUE  0x0a
/////////////////////////////////////////////////////////////////////////
#define SEND_FACTORY_INFO  0x01
#define SEND_FACTORY_RADIOAREA   0x02
#define SEND_FACTORY_RDS   0x03
#define SEND_FACTORY_TVTYPE   0x04
#define SEND_FACTORY_MOTOR   0x05
#define SEND_FACTORY_CUSTOM   0x06
#define SEND_FACTORY_AMPLIFILE   0x07
#define SEND_FACTORY_CANBUS   0x08
#define SEND_FACTORY_EQ   0x0a//lts20130422


/////////////////////////////////////////////////////////////////////////
#define SEND_CANBUS_CONFIG  0x01
#define SEND_CANBUS_TUGUAN  0x10
	#define SEND_CANBUS_TUGUAN_AIR  0x01
	#define SEND_CANBUS_TUGUAN_RADAR  0x02
	#define SEND_CANBUS_TUGUAN_SPEED  0x04

#define SEND_CANBUS_GM  0x11
/////////////////////////////////////////////////////////////////////////
//凯美瑞
#define SEND_CANBUS_CAMRY_TRIPINFO 0x21
#define SEND_CANBUS_CAMRY_TRIPINFOOIL 0x22
#define SEND_CANBUS_CAMRY_TRIPHIST 0x23
#define SEND_CANBUS_CAMRY_BASIC 0x24
#define SEND_CANBUS_CAMRY_TPMS 0x25
#define SEND_CANBUS_CAMRY_SETTING 0x26
#define SEND_CANBUS_CAMRY_OIL_15M 0x27
#define SEND_CANBUS_Camry_Air 0x28
#define SEND_CANBUS_CAMRY_EPS 0x29
#define SEND_CANBUS_CAMRY_MENU 0x2A
#define SEND_CANBUS_CAMRY_AmpInfo1 0x31
#define SEND_CANBUS_CAMRY_AmpInfo2 0x32
#define SEND_CANBUS_CAMRY_entrysys  0x33
#define SEND_CANBUS_CAMRY_IG  0x34
//科鲁兹
#define SEND_CANBUS_Cruze_Air 0x01
#define SEND_CANBUS_Cruze_Control 0x02
#define SEND_CANBUS_Cruze_RadarOnOff 0x03
#define SEND_CANBUS_Cruze_OnstarPhone 0x04
#define SEND_CANBUS_Cruze_OnstarStatus 0x05
#define SEND_CANBUS_Cruze_RoadInfo 0x06
#define SEND_CANBUS_Cruze_Guide 0x07
#define SEND_CANBUS_Cruze_AirControl 0x08
#define SEND_CANBUS_Cruze_Menu 0x09
#define SEND_CANBUS_Cruze_Key  0x0a
#define SEND_CANBUS_Cruze_Src  0x0b
#define SEND_CANBUS_Cruze_BtLastSrc  0x0c
#define SEND_CANBUS_Cruze_Door  0x24
#define SEND_CANBUS_Cruze_WarningVol  0x0d
//C4L_hechi_cantype
#define SEND_CANBUS_C4_STEER    0x02
#define SEND_CANBUS_C4_PAGE0    0x33
#define SEND_CANBUS_C4_PAGE1    0x34
#define SEND_CANBUS_C4_PAGE2    0x35
#define SEND_CANBUS_C4_TEMP    0x36
#define SEND_CANBUS_C4_WARNING    0x37
#define SEND_CANBUS_C4_STATUS    0x38
#define SEND_CANBUS_C4_FUNC    0x39
#define SEND_CANBUS_C4_DIAGNOSE    0x3A
#define SEND_CANBUS_C4_POPWARN    0x3B
#define SEND_CANBUS_C4_AIR    0x41
#define SEND_CANBUS_C4_SPEED    0x43
#define SEND_CANBUS_C4_ECO    0x44
#define SEND_CANBUS_C4_CANPAGE    0xF0

//三菱L200
#define SEND_CANBUS_L200_rvmeter  0x00
#define SEND_CANBUS_L200_compass   0x10
#define SEND_CANBUS_L200_compass_req  0x11
#define SEND_CANBUS_L200_compass_study  0x12
#define SEND_CANBUS_L200_compass_studyexit   0x13
#define SEND_CANBUS_L200_compass_gap_req  0x14
#define SEND_CANBUS_L200_compass_gap  0x15
#define SEND_CANBUS_L200_barometer    0x20
#define SEND_CANBUS_L200_barometer_req    0x21
#define SEND_CANBUS_L200_barometer_set    0x22
#define SEND_CANBUS_L200_barometer_reset    0x23
#define SEND_CANBUS_L200_meter_dec   0x24
#define SEND_CANBUS_L200_meter_add   0x25
#define SEND_CANBUS_L200_temp     0x30
#define SEND_CANBUS_L200_temp_req     0x31
#define SEND_CANBUS_L200_fuel    0x40
#define SEND_CANBUS_L200_fuel_req    0x41
#define SEND_CANBUS_L200_clear_baoyang   0x42
#define SEND_CANBUS_L200_fuel_reset    0x43
#define SEND_CANBUS_L200_speed_reset    0x44
#define SEND_CANBUS_L200_steerwheel    0x50
#define SEND_CANBUS_L200_air     0x32
#define SEND_CANBUS_L200_Menu  0x82


//现代hyundai_cantype
#define SEND_CANBUS_HYUNDAI_AIR 0x21
#define SEND_CANBUS_HYUNDAI_TEMP 0x27
#define SEND_CANBUS_HYUNDAI_MENU 0x51
#define SEND_CANBUS_HYUNDAI_STEER 0x20
#define SEND_CANBUS_MEGANE3_TEMP      0x01  //车外温度信息, 总线命令
#define SEND_CANBUS_MEGANE3_DOOR     0x02  //车门状态信息, 总线命令

#define SEND_CANBUS_Fiesta_Source 0x23
#define SEND_CANBUS_Fiesta_Volume 0x24
#define SEND_CANBUS_Fiesta_Radio 0x25
#define SEND_CANBUS_Fiesta_CdUsb 0x26
#define SEND_CANBUS_Fiesta_Eq 0x27
#define SEND_CANBUS_Fiesta_Doors 0x28
#define SEND_CANBUS_Fiesta_Page 0x51
//现代雅尊Azera_cantype
#define SEND_CANBUS_AZERA_AIR 0x21
#define SEND_CANBUS_AZERA_TEMP 0x27
#define SEND_CANBUS_AZERA_PAGE 0x2A
//奔腾B50
#define SEND_CANBUS_B50_AIR  0x21
#define SEND_CANBUS_B50  0x0A
//CRV
#define SEND_CANBUS_CRV_Backlight  0x14
#define SEND_CANBUS_CRV_Steer  0x20
#define SEND_CANBUS_CRV_UsbIpod 0x21
#define SEND_CANBUS_CRV_Basic  0x24
#define SEND_CANBUS_CRV_TimeSet 0xD1
#define SEND_CANBUS_CRV_Compass  0xD2
#define SEND_CANBUS_CRV_SysVol     0xC4
#define SEND_CANBUS_CRV_Menu     0x82
#define SEND_CANBUS_CRV_Menu2     0x84
//12款新思域
#define SEND_CANBUS_civic_Backlight  0x14
#define SEND_CANBUS_civic_Steer  0x20
#define SEND_CANBUS_civic_UsbIpod 0x21
#define SEND_CANBUS_civic_Basic  0x24
#define SEND_CANBUS_civic_TimeSet 0xD1
#define SEND_CANBUS_civic_Compass  0xD2
#define SEND_CANBUS_civic_SysVol     0xC4 
//标志308
#define SEND_CANBUS_bz308_steer   0x02
#define SEND_CANBUS_bz308_door    0x38
#define SEND_CANBUS_bz308_bt    0x3C

#define SEND_CANBUS_bz308_Page0    0x33
#define SEND_CANBUS_bz308_Page1    0x34
#define SEND_CANBUS_bz308_Page2    0x35
#define SEND_CANBUS_bz308_temp    0x36
#define SEND_CANBUS_bz308_warning    0x3b


#define SEND_CANBUS_bz308_menu   0x40

//标志207
#define SEND_CANBUS_bz207_carstatus  0x01
#define SEND_CANBUS_bz207  0x1F
#define SEND_CANBUS_bz207_Menu    0x02
//C4C5_hechi_cantype
#define SEND_CANBUS_CitroenC4C5_hechi_STEER    0x02
#define SEND_CANBUS_CitroenC4C5_hechi_RADAR    0x32
#define SEND_CANBUS_CitroenC4C5_hechi_PAGE0    0x33
#define SEND_CANBUS_CitroenC4C5_hechi_PAGE1    0x34
#define SEND_CANBUS_CitroenC4C5_hechi_PAGE2    0x35
#define SEND_CANBUS_CitroenC4C5_hechi_TEMP    0x36
#define SEND_CANBUS_CitroenC4C5_hechi_WARNING    0x47    //0x37
#define SEND_CANBUS_CitroenC4C5_hechi_STATUS    0x38
#define SEND_CANBUS_CitroenC4C5_hechi_DOOR   0x3C
#define SEND_CANBUS_CitroenC4C5_hechi_FUNC     0x49      //0x39
#define SEND_CANBUS_CitroenC4C5_hechi_DIAGNOSE    0x3A
#define SEND_CANBUS_CitroenC4C5_hechi_POPWARN    0x3B
#define SEND_CANBUS_CitroenC4C5_hechi_AIR    0x41
#define SEND_CANBUS_CitroenC4C5_hechi_SPEED    0x43
#define SEND_CANBUS_CitroenC4C5_hechi_CANPAGE    0xF3
//CitroenC4C5_cantype(尚摄)
#define SEND_CANBUS_CITROENC4C5_DOOR  0x12
#define SEND_CANBUS_CITROENC4C5_PAGE1  0x13
#define SEND_CANBUS_CITROENC4C5_PAGE2  0x14
#define SEND_CANBUS_CITROENC4C5_PAGE3  0x15
#define SEND_CANBUS_CITROENC4C5_AIR  0x31
#define SEND_CANBUS_CITROENC4C5_WARNING  0x42
#define SEND_CANBUS_CITROENC4C5_CARSET  0x68
#define SEND_CANBUS_CITROENC4C5_STEER  0x11
#define SEND_CANBUS_CITROENC4C5_MENU  0xF0
//Focus
enum
{
	SEND_CANBUS_FOCUS_AIR=0x01,
	SEND_CANBUS_FOCUS_BASIC=0x04,
	SEND_CANBUS_FOCUS_SYNC_STATUS=0x05,
	SEND_CANBUS_FOCUS_TIME=0x06,
	SEND_CANBUS_FOCUS_LANGUAGE=0x07,
	SEND_CANBUS_FOCUS_SYNC_VERSION=0x08,
	SEND_CANBUS_FOCUS_SYNC_V3_MENU_INFO=0x09,
	SEND_CANBUS_FOCUS_SYNC_V3_MENU_ITEM_INFO=0x0A,
	SEND_CANBUS_FOCUS_SYNC_V3_MEDIA_TIME=0x0B,
	SEND_CANBUS_FOCUS_SYNC_V3_CALLING_TIME=0x0C,
	SEND_CANBUS_FOCUS_SYNC_AUTO_PARK=0x0D,
	SEND_CANBUS_FOCUS_MENU=0x0e,
	SEND_CANBUS_FOCUS_TEMP=0x0f,
	SEND_CANBUS_FOCUS_CTRL_CMD=0x10,

	SEND_CANBUS_FOCUS_SYNC_STR_UP=0x11,
	SEND_CANBUS_FOCUS_SYNC_STR_DOWN=0x12,
	SEND_CANBUS_FOCUS_SYNC_STR_SHORT=0x13,

	SEND_CANBUS_FOCUS_MANUAL_AIR=0x14,

	SEND_CANBUS_FOCUS_WARNING_INFO=0x15,
	SEND_CANBUS_FOCUS_VEHICLE_SETTING=0x16,
	SEND_CANBUS_FOCUS_FIEST_FUEL_MODE=0x17,

//#ifdef Focus_O_Sync
#if 0
********************************************欧版*************************************************************
	SEND_CANBUS_FOCUS_EUROPE_SYNC_STATE=0x18,
	SEND_CANBUS_FOCUS_EUROPE_SYNC_BT_STATE=0x19,
	SEND_CANBUS_FOCUS_EUROPE_USB_STATE=0x1a,
	SEND_CANBUS_FOCUS_EUROPE_IPOD_STATE=0x1b,
	SEND_CANBUS_FOCUS_EUROPE_TEXT_INFO=0x1c,
	SEND_CANBUS_FOCUS_EUROPE_BT_SERVICE_LIST=0x1d,
	SEND_CANBUS_FOCUS_EUROPE_BT_CALLS_RECORD=0x1e,
	SEND_CANBUS_FOCUS_EUROPE_USB_TRACK_LIST=0x1f,
	SEND_CANBUS_FOCUS_EUROPE_IPOD_CATALOG_LIST=0x20,
	SEND_CANBUS_FOCUS_EUROPE_BT_CALLING_TIME=0x21,
********************************************欧版**************************************************************
#endif
	SEND_CANBUS_FOCUS_AUTO_AIR=0x22,
	SEND_CANBUS_FOCUS_SYNC_FLAG=0x23,
};
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////

_ARMDEC_  void ARM_data_Process(void);





#endif




