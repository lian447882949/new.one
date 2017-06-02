/******************** (C) COPYRIGHT 2011  ********************
 * File Name          : avsw.h
 * Author             : edwin kang
 * Version            : V0.0
 * Date               : 09/8/2011
 * Description        : canbus.c head file.
 *******************************************************************************/
#ifndef _BENZE_BUS_H_
#define _BENZE_BUS_H_
#ifdef _BENZE_BUS_C_
#define _BENZE_BUS_EXT_
#else
#define _BENZE_BUS_EXT_  extern
#endif

#define CAR_MEDIA_SYSTEM_IN_AUX              0x00
#define CAR_MEDIA_SYSTEM_IN_RAD              0x01
#define CAR_MEDIA_SYSTEM_IN_CD               0x02
#define CAR_MEDIA_SYSTEM_IN_AIR              0x03
#define CAR_MEDIA_SYSTEM_IN_BT               0x04
#define CAR_MEDIA_SYSTEM_IN_NOSYN            0x05






#ifdef BMW_MAIN_BOARD_VER_3
   
#define BWM_CAN_STALLS_STD_ID                      0x021A
#define BWM_CAN_STEERINGANGLE_STD_ID       0x02F3
#define BWM_CAN_POWER_STD_ID                      0x019B
#define BWM_CAN_RADAR_DISP_STD_ID             0x039F
#define BWM_CAN_RADAR_VAL_STD_ID                      0x36D
#define BWM_CAN_STEER_KEY_STD__TYPE1_ID                0x01D6
#define BWM_CAN_STEER_KEY_STD__TYPE2_ID                0x01F7
#define BWM_CAN_STEER_KEY_STD__TYPE3_ID                0x0264
#define BWM_CAN_STEER_KEY_STD__TYPE4_ID                0x0267
   
#define BWM_CAN_KNOB_TUNE_STD_ID                  0x0264
#define BWM_CAN_KONB_KB_STD_ID                    0x0267
#define BMW_CAN_TIMER_STD_ID                      0x0000
#define BMW_CAN_SOURCE1_STD_ID                    0x0000
#define BMW_CAN_SOURCE2_STD_ID                    0x0001

#endif


#if 1 //def BMW_MAIN_BOARD_VER_4
   
#define BWM_CAN_STALLS_STD_ID                      0x021A
#define BWM_CAN_STEERINGANGLE_STD_ID       0x02F3
#define BWM_CAN_POWER_STD_ID                      0x019B
#define BWM_CAN_RADAR_DISP_STD_ID             0x039F
#define BWM_CAN_RADAR_VAL_STD_ID                      0x36D
#define BWM_CAN_STEER_KEY_STD__TYPE1_ID                0x01D6
#define BWM_CAN_STEER_KEY_STD__TYPE2_ID                0x01F7
#define BWM_CAN_STEER_KEY_STD__TYPE3_ID                0x0264
#define BWM_CAN_STEER_KEY_STD__TYPE4_ID                0x0267
   
#define BWM_CAN_KNOB_TUNE_STD_ID                  0x0264
#define BWM_CAN_KONB_KB_STD_ID                    0x0267
#define BMW_CAN_TIMER_STD_ID                      0x0000
#define BMW_CAN_SOURCE1_STD_ID                    0x0000
#define BMW_CAN_SOURCE2_STD_ID                    0x0001

#endif


#if 1 //Miller.Tao,2014-09-09,BWM_X1
#define BWMX1_CAN_STALLS_STD_ID                      0x021A
#define BWMX1_CAN_STEERINGANGLE_STD_ID       0x0C4
#define BWMX1_CAN_POWER_STD_ID                      0x04E2
//#define BWM_CAN_RADAR_DISP_STD_ID             0x039F
#define BWMX1_CAN_RADAR_VAL_STD_ID                      0x1C2
#define BWMX1_CAN_STEER_KEY_STD__TYPE1_ID                0x01D6
//#define BWM_CAN_STEER_KEY_STD__TYPE2_ID                0x01F7
//#define BWM_CAN_STEER_KEY_STD__TYPE3_ID                0x0264
//#define BWM_CAN_STEER_KEY_STD__TYPE4_ID                0x0267
   
//#define BWM_CAN_KNOB_TUNE_STD_ID                  0x0264
//#define BWM_CAN_KONB_KB_STD_ID                    0x0267
//#define BMW_CAN_TIMER_STD_ID                      0x0000
//#define BMW_CAN_SOURCE1_STD_ID                    0x0000
//#define BMW_CAN_SOURCE2_STD_ID                    0x0001


#endif

#if 1 //Miller.Tao,2014-09-25,Audi_Q3
#define AudiQ3_CAN_STALLS_STD_ID                      0x0531
#define AudiQ3_CAN_STEERINGANGLE_STD_ID       0x03C3
#define AudiQ3_CAN_POWER_STD_ID                      0x0551//ACC
#define AudiQ3_CAN_RADAR_DISP_STD_ID             0x0497
#define AudiQ3_CAN_RADAR_VAL_STD_ID                      0x0634
#define AudiQ3_CAN_STEER_KEY_STD__TYPE1_ID                0x05BF
//#define AudiQ3_CAN_STEER_KEY_STD__TYPE2_ID                0x01F7
//#define AudiQ3_CAN_STEER_KEY_STD__TYPE3_ID                0x0264
//#define AudiQ3_CAN_STEER_KEY_STD__TYPE4_ID                0x0267
   
//#define AudiQ3_CAN_KNOB_TUNE_STD_ID                  0x0264
//#define AudiQ3_CAN_KONB_KB_STD_ID                    0x0267
//#define AudiQ3_CAN_TIMER_STD_ID                      0x0000
#define AudiQ3_CAN_SOURCE1_STD_ID                    0x0650  //media power
#define AudiQ3_CAN_SOURCE2_STD_ID                    0x0655  //media power
#define AudiQ3_CAN_AIR_Temp_STD_ID    0x0638//空调温度

#endif

#if 1 //Miller.Tao,2014-09-09
#define BWM5S_CAN_STALLS_STD_ID                      0x021A
#define BWM5S_CAN_STEERINGANGLE_STD_ID       0x02F3
#define BWM5S_CAN_POWER_STD_ID                      0x019B //ACC
#define BWM5S_CAN_POWER2_STD_ID                      0x0510
#define BWM5S_CAN_POWER3_STD_ID                      0x00A1
#define BWM5S_CAN_POWER4_STD_ID                      0x05e3


#define BWM5S_CAN_RADAR_DISP_STD_ID             0x039F
#define BWM5S_CAN_RADAR_VAL_STD_ID                      0x36D
#define BWM5S_CAN_RADAR_VAL_Front_STD_ID                0x365

#define BWM5S_CAN_STEER_KEY_STD__TYPE1_ID                0x01D6
#define BWM5S_CAN_STEER_KEY_STD__TYPE2_ID                0x01F7
#define BWM5S_CAN_STEER_KEY_STD__TYPE3_ID                0x0264
#define BWM5S_CAN_STEER_KEY_STD__TYPE4_ID                0x0267
#define BWM5S_CAN_STEER_KEY_STD__TYPE5_ID                0x00A2
   
#define BWM5S_CAN_KNOB_TUNE_STD_ID                  0x0264
#define BWM5S_CAN_KONB_KB_STD_ID                    0x0267

#define BMW5S_CAN_CarDoor_STD_ID                    0x00EC
#define BMW5S_CAN_CarSpeed_STD_ID                   0x02C5
#define BMW5S_CAN_CarMiles_STD_ID                   0x0330




#define BMW5S_CAN_TIMER_STD_ID                      0x02F8
//#define BMW5S_CAN_SOURCE1_STD_ID                    0x0000
//#define BMW5S_CAN_SOURCE2_STD_ID                    0x0001


#endif

#if 1 //BENZE New B,Miller.Tao20141128
  #define BENZE_CAN_AIR_INFO1_STD_ID 0x00BB  
  #define BENZE_CAN_AIR_INFO2_STD_ID 0x020B  
  #define BENZE_CAN_AIR_INFO3_STD_ID 0x00BC  

  #define BENZE_CAN_STEERING_1_STD_ID 0x0045  
  #define BENZE_CAN_STEERING_2_STD_ID 0x03f6

  #define BENZE_CAN_STEERINGANGLE_STD_ID 0x0003

  #define BENZE_CAN_ACC_STD_ID 0x0001
  #define BENZE_CAN_TIMER_STD_ID 0x039f
  #define BENZE_CAN_STALLS_STD_ID 0x010C //0x388

  #define BENZE_CAN_KNOB_STD_ID 0x00FD
  #define BENZE_CAN_KNOB_TUNE_ID 0x00FB

  #define BENZE_CAN_POWER_STD_ID 0x01EE
  #define BENZE_CAN_MUTE_STD_ID 0x01BB
  #define BENZE_CAN_MEDIA_SYSTEM_STD_ID 0x035C
  
  #define BENZE_CAN_RADAR_STD_ID 0x02EE
#endif
#if 1 //BENZE GLK,Miller.Tao20150409
  #define BENZE_GLK_CAN_AIR_INFO1_STD_ID 0x00BB  
  #define BENZE_GLK_CAN_AIR_INFO2_STD_ID 0x020B  
  #define BENZE_GLK_CAN_AIR_INFO3_STD_ID 0x00BC  

  #define BENZE_GLK_CAN_STEERING_1_STD_ID 0x0045  //left
  #define BENZE_GLK_CAN_STEERING_2_STD_ID 0x03f6 //right

  #define BENZE_GLK_CAN_STEERINGANGLE_STD_ID 0x0003

  #define BENZE_GLK_CAN_ACC_STD_ID 0x0001
  #define BENZE_GLK_CAN_TIMER_STD_ID 0x039f
  #define BENZE_GLK_CAN_STALLS_STD_ID 0x010C //0x388

  #define BENZE_GLK_CAN_KNOB_STD_ID 0x00FD
  #define BENZE_GLK_CAN_KNOB_TUNE_ID 0x00FB

  #define BENZE_GLK_CAN_POWER_STD_ID 0x01EE
  #define BENZE_GLK_CAN_MUTE_STD_ID 0x01BB
  #define BENZE_GLK_CAN_MEDIA_SYSTEM_STD_ID 0x035C

  #define BENZE_GLK_CAN_Car_SYSTEM_STD_ID 0x02E9 //miller.tao add 20150410
  
  #define BENZE_GLK_CAN_RADAR_STD_ID 0x02EE
#endif
#if 1 //benci_newC
#define Benci_newC_CAN_POWER_STD_ID                      0x0001 //
#define Benci_newC_CAN_POWER_ON_STD_ID                      0x02c5 //media pow
#define Benci_newC_CAN_mid_control_KEY_STD_ID                0x01f3
#define Benci_newC_CAN_mid_control_turn_KEY1_STD_ID          0x01ef      
#define Benci_newC_CAN_mid_control_turn_KEY2_STD_ID          0x01F7      
#define Benci_newC_CAN_light_mode_STD_ID                      0x0439
#define Benci_newC_CAN_car_touch1_STD_ID                      0x00c6
#define Benci_newC_CAN_car_TFT_ONOFF_STD_ID                      0x01f9


#define Benci_newC_CAN_back_STD_ID                      0x0143 //media pow
#define Benci_newC_CAN_back1_STD_ID                      0x0267 //media pow
#define Benci_newC_CAN_RADA_STD_ID                      0x0433 //
#define Benci_newC_CAN_DOOR_F_L_STD_ID                      0x0397 //
#define Benci_newC_CAN_DOOR_F_R_STD_ID                      0x039b//
#define Benci_newC_CAN_DOOR_R_L_STD_ID                      0x03a3 //
#define Benci_newC_CAN_DOOR_R_R_STD_ID                      0x03a5//
#define Benci_newC_CAN_DOOR_REAR_Lid_STD_ID                      0x0351 //
#define Benci_newC_CAN_DOOR_font_Lid_STD_ID                      0x0337 //
#define Benci_newC_CAN_STEERINGANGLE_STD_ID       0x002f
#define Benci_newC_CAN_air_wind_STD_ID       0x0353
#define Benci_newC_CAN_air_temp_STD_ID       0x0353
#define Benci_newC_CAN_STEER_KEY_L_STD_TYPE_ID                0x0045
#define Benci_newC_CAN_STEER_KEY_R_STD_TYPE_ID                0x03f6
#define Benci_newC_CAN_media_statu_STD_TYPE_ID                0x02d9
#define Benci_newC_CAN_steer_key_STD_TYPE_ID                0x0401
#define Benci_newC_CAN_font_rec_TYPE_ID                0x03d9

#endif

/**********************************************************
Sterring Key status
**********************************************************/
#define BENZE_KEY_ALL_BOUNCED              0x00
#define BENZE_KEY_STEERING_LEFT_KEY_MODE_PRESSED               0x01
#define BENZE_KEY_STEERING_LEFT_KEY_KNOB_PRESSED               0x02
#define BENZE_KEY_STEERING_LEFT_KEY_KNOBUP_PRESSED             0x03
#define BENZE_KEY_STEERING_LEFT_KEY_KNOBDN_PRESSED             0x04
#define BENZE_KEY_STEERING_LEFT_KEY_BT_PRESSED                 0x05
//Miller.Tao20141128,start
#define BENZE_KEY_STEERING_LEFT_KEY_UP_PRESSED				 0x06
 #define BENZE_KEY_STEERING_LEFT_KEY_DN_PRESSED 			  0x07
 #define BENZE_KEY_STEERING_LEFT_KEY_LEFT_PRESSED			  0x08
 #define BENZE_KEY_STEERING_LEFT_KEY_RIGHT_PRESSED			  0x09
 #define BENZE_KEY_STEERING_LEFT_KEY_ENTER_PRESSED			  0x0A
 #define BENZE_KEY_STEERING_LEFT_KEY_RET_PRESSED		  0x0B
 //Miller.Tao20141128,end



#define BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED               0x51
#define BENZE_KEY_STEERING_RIGHT_KEY_NAVI_PRESSED               0x52
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOB_PRESSED             0x53
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOBUP_PRESSED            0x54
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOBDN_PRESSED            0x55
#define BENZE_KEY_STEERING_RIGHT_KEY_BT_PRESSED            0x56
#define BENZE_KEY_STEERING_RIGHT_KEY_MODE_PRESSED            0x57
//Miller.Tao20141128,start

#define BENZE_KEY_STEERING_RIGHT_KEY_UP_PRESSED               0x58
#define BENZE_KEY_STEERING_RIGHT_KEY_DN_PRESSED               0x59
#define BENZE_KEY_STEERING_RIGHT_KEY_OFF_PRESSED             0x5A
#define BENZE_KEY_STEERING_RIGHT_KEY_CALL_PRESSED            0x5B
#define BENZE_KEY_STEERING_RIGHT_KEY_RET_PRESSED            0x5C
#define BENZE_KEY_STEERING_RIGHT_KEY_MUTE_PRESSED          0x5D
//Miller.Tao20141128,end


#define BENZE_KEY_KnobAround_KEY_KNOBRT_PRESSED            0x60 
#define BENZE_KEY_KnobAround_KEY_KNOBLT_PRESSED            0x61 
#define BENZE_KEY_KnobAround_KEY_KNOBUP_PRESSED            0x62 
#define BENZE_KEY_KnobAround_KEY_KNOBDN_PRESSED            0x63 
#define BENZE_KEY_KnobAround_KEY_KNOBENTER_PRESSED            0x64 
#define BENZE_KEY_KnobAround_KEY_OPTION_PRESSED            0x65 
#define BENZE_KEY_KnobAround_KEY_BACK_PRESSED            0x66 
#define BENZE_KEY_KnobAround_KEY_RADIO_PRESSED            0x67 
#define BENZE_KEY_KnobAround_KEY_MEDIA_PRESSED            0x68 
#define BENZE_KEY_KnobAround_KEY_MENU_PRESSED            0x69 
#define BENZE_KEY_KnobAround_KEY_TEL_PRESSED            0x6A 
#define BENZE_KEY_KnobAround_KEY_MAP_PRESSED            0x6B 
//Miller.Tao20141128 add,start
#define BENZE_KEY_KnobAround_KEY_C_PRESSED				0x6C
#define BENZE_KEY_KnobAround_KEY_RET_PRESSED 			0x6D
//Miller.Tao20141128 add,end



#define BENZE_KEY_STEERING_LEFT_KEY_MODE_KEEP               0x71
#define BENZE_KEY_STEERING_LEFT_KEY_KNOB_KEEP               0x72
#define BENZE_KEY_STEERING_LEFT_KEY_KNOBUP_KEEP             0x73
#define BENZE_KEY_STEERING_LEFT_KEY_KNOBDN_KEEP            0x74
#define BENZE_KEY_STEERING_LEFT_KEY_BT_KEEP            0x75
//Miller.Tao20141128,start
#define BENZE_KEY_STEERING_LEFT_KEY_UP_KEEP				 0x76
 #define BENZE_KEY_STEERING_LEFT_KEY_DN_KEEP 			  0x77
 #define BENZE_KEY_STEERING_LEFT_KEY_LEFT_KEEP			  0x78
 #define BENZE_KEY_STEERING_LEFT_KEY_RIGHT_KEEP			  0x79
 #define BENZE_KEY_STEERING_LEFT_KEY_ENTER_KEEP			  0x7A
 #define BENZE_KEY_STEERING_LEFT_KEY_RET_KEEP		  0x7B
 //Miller.Tao20141128,end


#define BENZE_KEY_STEERING_RIGHT_KEY_VOICE_KEEP               0xE1
#define BENZE_KEY_STEERING_RIGHT_KEY_NAVI_KEEP               0xE2
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOB_KEEP             0xE3
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOBUP_KEEP            0xE4
#define BENZE_KEY_STEERING_RIGHT_KEY_KNOBDN_KEEP            0xE5
#define BENZE_KEY_STEERING_RIGHT_KEY_BT_KEEP            0xE6
#define BENZE_KEY_STEERING_RIGHT_KEY_MODE_KEEP            0xE7

//Miller.Tao20141128,start

#define BENZE_KEY_STEERING_RIGHT_KEY_UP_KEEP               0xE8
#define BENZE_KEY_STEERING_RIGHT_KEY_DN_KEEP               0xE9
#define BENZE_KEY_STEERING_RIGHT_KEY_OFF_KEEP             0xEA
#define BENZE_KEY_STEERING_RIGHT_KEY_CALL_KEEP            0xEB
#define BENZE_KEY_STEERING_RIGHT_KEY_RET_KEEP            0xEC
#define BENZE_KEY_STEERING_RIGHT_KEY_MUTE_KEEP          0xED
//Miller.Tao20141128,end


#define BENZE_KEY_KnobAround_KEY_KNOBRT_KEEP                 0xF0       
#define BENZE_KEY_KnobAround_KEY_KNOBLT_KEEP                 0xF1       
#define BENZE_KEY_KnobAround_KEY_KNOBUP_KEEP                 0xF2       
#define BENZE_KEY_KnobAround_KEY_KNOBDN_KEEP                 0xF3       
#define BENZE_KEY_KnobAround_KEY_KNOBENTER_KEEP              0xF4       
#define BENZE_KEY_KnobAround_KEY_OPTION_KEEP                 0xF5       
#define BENZE_KEY_KnobAround_KEY_BACK_KEEP                   0xF6       
#define BENZE_KEY_KnobAround_KEY_RADIO_KEEP                  0xF7       
#define BENZE_KEY_KnobAround_KEY_MEDIA_KEEP                  0xF8       
#define BENZE_KEY_KnobAround_KEY_MENU_KEEP                   0xF9       
#define BENZE_KEY_KnobAround_KEY_TEL_KEEP                    0xFA       
#define BENZE_KEY_KnobAround_KEY_MAP_KEEP                    0xFB       
//Miller.Tao20141128 add,start
#define BENZE_KEY_KnobAround_KEY_C_KEEP				0xFC
#define BENZE_KEY_KnobAround_KEY_RET_KEEP 			0xFD
//Miller.Tao20141128 add,end



/**********************************************************
canbus Key cmd
**********************************************************/
#define BENZE_CMD_KNOB_UP_PRESSED               0x01
#define BENZE_CMD_KNOB_DN_PRESSED               0x02
#define BENZE_CMD_KNOB_LEFT_PRESSED             0x03
#define BENZE_CMD_KNOB_RIGHT_PRESSED            0x04
#define BENZE_CMD_KNOB_ENTER_PRESSED            0x05
#define BENZE_CMD_KNOB_TUNEDEC_PRESSED          0x06
#define BENZE_CMD_KNOB_TUNEINC_PRESSED          0x07
//Miller.Tao20141128 start
//#define BENZE_CMD_KNOB_C_PRESSED                0x08

#define BENZE_CMD_KNOB_C_KEEP                   0x08
#define BENZE_CMD_KNOB_RET_KEEP                 0x09

//Miller.Tao20141128 end

//
#define BENZE_CMD_STEERING_LEFT_KEY_UP_PRESSED               0x0a
#define BENZE_CMD_STEERING_LEFT_KEY_DN_PRESSED               0x0b
#define BENZE_CMD_STEERING_LEFT_KEY_LEFT_PRESSED             0x0c
#define BENZE_CMD_STEERING_LEFT_KEY_RIGHT_PRESSED            0x0d
#define BENZE_CMD_STEERING_LEFT_KEY_ENTER_PRESSED            0x0e
#define BENZE_CMD_STEERING_LEFT_KEY_RET_PRESSED          0x0f
#define BENZE_CMD_STEERING_LEFT_KEY_MODE_PRESSED          0x10
#define BENZE_CMD_STEERING_LEFT_KEY_KNOB_PRESSED          0x11
#define BENZE_CMD_STEERING_LEFT_KEY_KNOBUP_PRESSED          0x12
#define BENZE_CMD_STEERING_LEFT_KEY_KNOBDN_PRESSED          0x13

#define BENZE_CMD_KNOB_MENU_PRESSED                           0x20

#define BENZE_CMD_MID_CONTROL_KEY_RADIO_PRESSED            0x30
#define BENZE_CMD_MID_CONTROL_KEY_MEDIA_PRESSED            0x31
#define BENZE_CMD_MID_CONTROL_KEY_TEL_PRESSED              0x32
#define BENZE_CMD_MID_CONTROL_KEY_CAR_PRESSED              0x33

#define BENZE_CMD_STEERING_RIGHT_KEY_UP_PRESSED               0x50
#define BENZE_CMD_STEERING_RIGHT_KEY_DN_PRESSED               0x51
#define BENZE_CMD_STEERING_RIGHT_KEY_OFF_PRESSED             0x52
#define BENZE_CMD_STEERING_RIGHT_KEY_CALL_PRESSED            0x53
#define BENZE_CMD_STEERING_RIGHT_KEY_RET_PRESSED            0x54
#define BENZE_CMD_STEERING_RIGHT_KEY_MUTE_PRESSED          0x55
#define BENZE_CMD_STEERING_RIGHT_KEY_VOICE_PRESSED          0x56
#define BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED          0x57
#define BENZE_CMD_STEERING_RIGHT_KEY_KNOB_PRESSED          0x58
#define BENZE_CMD_STEERING_RIGHT_KEY_KNOBUP_PRESSED          0x59
#define BENZE_CMD_STEERING_RIGHT_KEY_KNOBDN_PRESSED          0x5a
#define BENZE_CMD_STEERING_RIGHT_KEY_OPTION_PRESSED          0x5b
#define BENZE_CMD_STEERING_RIGHT_KEY_CarMedia_PRESSED          0x5c


//#define BENZE_CMD_MENU_PRESSED          0x5d


//LONG PRESSED
#define BENZE_CMD_KNOB_UP_KEEP               0xA1
#define BENZE_CMD_KNOB_DN_KEEP               0xA2
#define BENZE_CMD_KNOB_LEFT_KEEP             0xA3
#define BENZE_CMD_KNOB_RIGHT_KEEP           0xA4
#define BENZE_CMD_KNOB_ENTER_KEEP            0xA5
#define BENZE_CMD_KNOB_TUNEDEC_KEEP          0xA6
#define BENZE_CMD_KNOB_TUNEINC_KEEP          0xA7
//
#define BENZE_CMD_STEERING_LEFT_KEY_UP_KEEP               0xAa
#define BENZE_CMD_STEERING_LEFT_KEY_DN_KEEP               0xAb
#define BENZE_CMD_STEERING_LEFT_KEY_LEFT_KEEP             0xAc
#define BENZE_CMD_STEERING_LEFT_KEY_RIGHT_KEEP            0xAd
#define BENZE_CMD_STEERING_LEFT_KEY_ENTER_KEEP            0xAe
#define BENZE_CMD_STEERING_LEFT_KEY_RET_KEEP               0xAf
#define BENZE_CMD_STEERING_LEFT_KEY_MODE_KEEP          0xB0
#define BENZE_CMD_STEERING_LEFT_KEY_KNOB_KEEP          0xB1
#define BENZE_CMD_STEERING_LEFT_KEY_KNOBUP_KEEP          0xB2
#define BENZE_CMD_STEERING_LEFT_KEY_KNOBDN_KEEP          0xB3

#define BENZE_CMD_STEERING_RIGHT_KEY_UP_KEEP               0xE0
#define BENZE_CMD_STEERING_RIGHT_KEY_DN_KEEP               0xE1
#define BENZE_CMD_STEERING_RIGHT_KEY_OFF_KEEP             0xE2
#define BENZE_CMD_STEERING_RIGHT_KEY_CALL_KEEP            0xE3
#define BENZE_CMD_STEERING_RIGHT_KEY_RET_KEEP            0xE4
#define BENZE_CMD_STEERING_RIGHT_KEY_MUTE_KEEP          0xE5
#define BENZE_CMD_STEERING_RIGHT_KEY_VOICE_KEEP          0xE6
#define BENZE_CMD_STEERING_RIGHT_KEY_NAVI_KEEP          0xE7
#define BENZE_CMD_STEERING_RIGHT_KEY_KNOB_KEEP          0xE8
//---------------------------------------------------------------------------

#define BENZE_CMD_NULL   0xFF

#define BENZE_CAN_CNTR_BUF_MAX     15
#if 1 //miller.tao20160521
#define key_null 0x00
#define key_up 0x01
#define key_down 0x02
#define key_left 0x03
#define key_right 0x04
#define key_enter 0x05
#define key_vmedia 0x06
#define key_navi 0x07
#define key_cam 0x08
#define key_car 0x09
#define key_bt 0x0A
#define key_inc 0x0B
#define key_dec 0x0C
#define key_back 0x0D
#define key_menu 0x0E //星号键，主页
#define key_radio 0x0F
#define key_media 0x10
#define key_tel   0x11
//#define key_car   0x12

#define key_menu_request 0xfe
#endif
typedef enum __AUX_SEND_SN__
{
  __SN_S_,
  __SN0_,
  __SN1_,
  __SN2_,
  __SN3_,
  __SN4_,
  __SN5_,
  __SN6_,
  __SN7_,
  __SN8_,
  __SN9_,
  __SN10_,
  __SN11_,
  __SN12_,
  __SN13_,
  __SN14_,
  __SN15_,
  __SN16_,
  __SN17_,
  __SN18_,
  __SN19_,
  __SN20_,
  __SN21_,
  __SN22_,
  __SN23_,
  __SN24_,
  __SN25_,
  __SN26_,
  __SN27_,
  __SN28_,
  __SN29_,
  __SN30_,
  __SN31_,
  __SN32_,
  __SN33_,
  __SN34_,
  __SN35_,
  __SN36_,
  __SN37_,
  __SN38_,
  __SN39_,
  __SN40_,
  __SN41_,
  __SN42_,
  __SN43_,
  __SN44_,
  __SN45_,
  __SN46_,
  __SN47_,
  __SN48_,
  __SN_END_,
  
  
}AUX_SEND_SN;

typedef enum
 {

   BENZ_CAN_SYN_SYN0, BENZ_CAN_SYN_SYN1, BENZ_CAN_SYN_SYN2, BENZ_CAN_SYN_SYN3,
	 BENZ_CAN_SYN_SYN4, 

 } ENUM_BENZ_CAN_SYN;
typedef enum
 {

   BENZ_CAN_KEY_OK,
   BENZ_CAN_KEY_LEFT, 
   BENZ_CAN_KEY_RIGHT, 
   BENZ_CAN_KEY_UP,
   BENZ_CAN_KEY_DN,
   BENZ_CAN_KEY_CAR,
   BENZ_CAN_KEY_STAR,
   BENZ_CAN_KEY_STAR1,
   BENZ_CAN_KEY_STAR2,
   BENZ_CAN_KEY_RADIO,
   BENZ_CAN_KEY_MEDIA,
   BENZ_CAN_KEY_PREV,
   BENZ_CAN_KEY_NEXT,
   BENZ_CAN_KEY_TOUCH,
   BENZ_CAN_KEY_INVALID,
   BENZ_CAN_KEY_INVALID2, 
   BENZ_CAN_KEY_BT,
   BENZ_CAN_KEY_NAVI,//原车导航
   BENZ_CAN_KEY_TEL,
   BENZ_CAN_KEY_NULL,
 } ENUM_BENZ_CAN_KEY;

typedef enum
{
  CAR_STATE_START,
  CAR_STATE_CHECK,

  CAR_STATE_UP,
  CAR_STATE_DN,
  CAR_STATE_LT,
  CAR_STATE_RT,
  CAR_STATE_INVALID1,
  CAR_STATE_INVALID2,
  CAR_STATE_END,
}ENUM_CAR_MEDIA_STATE;
typedef struct __BENZE_CAN
{
    vu8 uKeyID;
    vu8 uKeyKeepCnt;
    vu8 uKeyKeepInDepCnt;
    vu8 bKeyKeepOneTime;

    vu16 uKeyID2;
    vu8 uKeyKeepCnt2;
    vu8 bKeyKeepOneTime2;

    vu8 uKeyID3;
    vu8 uKeyKeepCnt3;
    vu8 bKeyKeepOneTime3;

	vu8 uKeyLongPress;
    //
    AUX_SEND_SN uAuxSendSn;
    AUX_SEND_SN uOptionSendSn;
    vu8 uCanSendCmdBuf[BENZE_CAN_CNTR_BUF_MAX];
    u8 uCanSendCmdIndex;
    u8 uCanFetchCmdIndex;
    vu16 wLoopTimer;
    //info
    //air
    vu8 benze_air_Disp;
    u8 prebenze_air_Disp;
    vu8 benze_air_wind_speed;
    vu8 benze_air_auto;
    vu8 benze_air_wind_mode;
    vu8 benze_air_wind_off;
    vu8 benze_air_wind_speed_max;
    vu8 benze_air_zone;
    vu8 benze_air_fornt;
    vu8 benze_air_wind_cycle;
    vu8 benze_air_ac, benze_air_dual;
    vu8 benze_air_rear;
    vu8 benze_air_left_temperature;
    vu8 benze_air_right_temperature;
    u8 benze_out_temperature;
	u8 air_send_id;
    vu16 benze_Steering_angle;
    u8 volatile benze_Pwr_acc; //点火
    u8 AudioPwr;
    u8 AccPwr;
    u8 benze_Pwr_acc_Aux;
    
    u16 Year_data;
    u8 Month_data;
    u8 day_data;
    u8 week_data;
    
    u8 Hour_data;
    u8 Minute_data;
    u8 Sec_data;
	u8 send_time_flag;
    
    u8 CarAudioSoure;
    volatile CanRxMsg RxMessage;
    volatile CanRxMsg g_StanbyCanRxMessage;

	U16 syntimer;
	ENUM_BENZ_CAN_SYN synprogress;

	u8 CmdSendTimes;//for benz c key
} BMW_CAN;

typedef struct __RADAR
{

    u8 uFront_Left;
    u8 uFront_MidLeft;
    u8 uFront_MidRight;
    u8 uFront_Right;
    //
    u8 uRear_Left;
    u8 uRear_MidLeft;
    u8 uRear_MidRight;
    u8 uRear_Right;
    //
    u8 fDisp;
    u8 power_on_statu;
u8 fDisp_on_p;

} RADAR;


typedef struct __CARDOORINFO
{
    u8 SendFlag;
    u8 uFront_Left;
    u8 uFront_Right;
    u8 uRear_Left;
    u8 uRear_Right;
    //
    u8 front;//前盖
	u8 rear;//后备箱
} CARDOORINFO;//Miller.Tao20141020
typedef struct __CARSPEEDINFO
{
    u8 SendFlag;
    u8 Hi_Speed;
    u8 Lo_Speed;
} CARSPEEDINFO;//Miller.Tao20141020
typedef struct __CARMILEINFO
{
   u8 SendFlag;
   //BYTE 4,3,2,1
    u8 Mile4Byte;
    u8 Mile3Byte;
	u8 Mile2Byte;
    u8 Mile1Byte;
} CARMILEINFO;//Miller.Tao20141020
typedef struct __LIGHT_CAN
{
   u8 sun_light;
   //BYTE 4,3,2,1
    u8 sun_mode;
    u8 button_light_value;
	u8 sys_light_value;
	
	u8 car_tft_onoff;
} LIGHT_CAN;

typedef struct __SYSPOWEROFFDELAY
{
  u8 uPoweroffDelayState;
  U32 wSysSwitchOffDelay;
}SYSPOWEROFFDELAY;
typedef struct _CHARGECAR
{
    BYTE car_mouse_status;
	BYTE car_mouse_up_event;//
	BYTE car_mouse_current;//光标当前位置
	BYTE car_mouse_position;
	BYTE car_mouse_All;//光标可移动的数量
	BYTE uMainModeBk;	//备份的模式
	BYTE BkFlag;	//==1//切换到原车;==2原车切换到其他源
	BYTE BkFlag_2;	//==1//切换到原车;==2原车切换到其他源
	CanRxMsg CanDataBk;
	
}CHARGECAR;


//--------------------------------------------------------------------
_BENZE_BUS_EXT_ RADAR m_RADAR;
_BENZE_BUS_EXT_ BMW_CAN m_BMW_CAN;
_BENZE_BUS_EXT_ volatile BYTE m_AUDI_CAN_PowerOn;

_BENZE_BUS_EXT_ LIGHT_CAN Sys_CAN_light;
_BENZE_BUS_EXT_ BYTE m_RADAR_last_buff[2];

_BENZE_BUS_EXT_ CARDOORINFO m_CarDoorInfo;//Miller.Tao20141020
_BENZE_BUS_EXT_ CARDOORINFO m_CarDoorInfo_last;//Miller.Tao20141020

_BENZE_BUS_EXT_ CARSPEEDINFO m_CarSpeedInfo;//Miller.Tao20141020
_BENZE_BUS_EXT_ CARMILEINFO m_CarMilesInfo;//Miller.Tao20141020
_BENZE_BUS_EXT_ SYSPOWEROFFDELAY LF_PowerOffDelay;
_BENZE_BUS_EXT_ CanRxMsg hhhkkRxMessage;//
_BENZE_BUS_EXT_ CHARGECAR m_CarCharge;//miller.tao20160618
_BENZE_BUS_EXT_ BYTE gKeySendOneTime;//miller.tao20160627
_BENZE_BUS_EXT_ ENUM_CAR_MEDIA_STATE car_state,car_state2,car_state3;
_BENZE_BUS_EXT_ BYTE car_mouse_mid;
_BENZE_BUS_EXT_ BYTE car_act;
_BENZE_BUS_EXT_ BYTE car_dn_event,car_dn_event3;
_BENZE_BUS_EXT_ BYTE car_up_event,car_up_event2,car_up_event3;

_BENZE_BUS_EXT_ BYTE gTouchFlag;
_BENZE_BUS_EXT_ BYTE gTouchRetry,gTouchRetry3;
_BENZE_BUS_EXT_ CanRxMsg RxMessageTouchCtrl;
_BENZE_BUS_EXT_ BYTE gTurn_key_count;

//-------------------------------------------------------------------
_BENZE_BUS_EXT_ void AudiCan_Key_Process(void);
_BENZE_BUS_EXT_ void AudiCanBus_SendControlCmd(BYTE cmd);
_BENZE_BUS_EXT_ void AudiCanBus_FetchCmdTask(void);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo_Type1(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo_Type2(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo_Type3(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Can_FetchSteerKeyInfo_Type4(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void Car_BackCar_Ctrl_Proc(void);

_BENZE_BUS_EXT_ void Audi_CanBus_work_data_analytic(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void AudiCan_FetchStallsInfo(CanRxMsg RxMessage);
//_BENZE_BUS_EXT_ void Can_Tx(CAN_TypeDef* CANx,CanTxMsg *TxMessage);
_BENZE_BUS_EXT_ void Audi_CanBus_InputSource_data_analytic(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void BMW_KnobContrl(BYTE bEn);
_BENZE_BUS_EXT_ void BMW_AuxContrl_Task(void);
_BENZE_BUS_EXT_ void BMW_OptionKey_Task(void);

/////////////Miller.Tao add,2014-09-10/////////////////////////////
_BENZE_BUS_EXT_ void BENZ_AuxContrl_Task(void);

_BENZE_BUS_EXT_ void CAN1_USER_HANDLER(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void CAN2_USER_HANDLER(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CanBus_Contrl_Task(void);
_BENZE_BUS_EXT_ void LF_CanBus_FetchCmdTask(void);
_BENZE_BUS_EXT_ void LF_CANBus_Knob_Task(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CANBus_Stalls_Task(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CanBus_SteerKey_Task(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CanBus_work_data_analytic(CanRxMsg RxMessage);
_BENZE_BUS_EXT_ void LF_CanBus_Config(void);
_BENZE_BUS_EXT_ BYTE LF_CanBus_FetchCmd(void);
_BENZE_BUS_EXT_ void LF_CanBus_SendControlCmd(BYTE cmd);
_BENZE_BUS_EXT_ void LF_CanBus_InitVar(void);
_BENZE_BUS_EXT_ void CanIntercept_Init(void);
_BENZE_BUS_EXT_ void CanIntercept_2_Proc(void);
_BENZE_BUS_EXT_ void CanIntercept_1_Proc(void);

_BENZE_BUS_EXT_ void Benci_newC_CanKey(ENUM_BENZ_CAN_KEY keycode);

_BENZE_BUS_EXT_ void Car_Media_Ctrl_Proc(void);
_BENZE_BUS_EXT_ void Car_Touch_Ctrl_Proc(void);
_BENZE_BUS_EXT_ void Benci_newC_SyncButton(CanRxMsg *data);

_BENZE_BUS_EXT_ void Can1Data_Task(void);
_BENZE_BUS_EXT_ void Can2Data_Task(void);
_BENZE_BUS_EXT_ void DealCan1Rec(CanRxMsg CanRecData);
_BENZE_BUS_EXT_ void DealCan2Rec(CanRxMsg CanRecData);

//////////////////////////////////////////////////////////////////// 

#define _EI() BSP_EnableINT_All()       
#define _DI() BSP_DisableINT_All()

#define  CAN_TX_FIFO_SIZE 128
#define  CAN_RX_FIFO_SIZE 128



EXPORT_FIFO_API(CAN1_RxFifo, CAN_RX_FIFO_SIZE, CanRxMsg, u8);
EXPORT_FIFO_API(CAN1_TxFifo, CAN_TX_FIFO_SIZE, CanTxMsg, u8);

EXPORT_FIFO_API(CAN2_RxFifo, CAN_RX_FIFO_SIZE, CanRxMsg, u8);
EXPORT_FIFO_API(CAN2_TxFifo, CAN_TX_FIFO_SIZE, CanTxMsg, u8);
extern void BSP_EnableINT_All(void);
extern void BSP_DisableINT_All(void);


#endif
