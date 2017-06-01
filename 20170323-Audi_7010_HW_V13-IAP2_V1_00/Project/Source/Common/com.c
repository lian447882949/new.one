#define _COM_C_

#include "compile.h"
#include "main.h"
#include "libr.h"

#include "stm32f10x_conf.h"
#include "port.h"

#include "i2c_driver.h"

#include "pannel.h"
#include "arm.h"

#include "tw8836_func.h"

#include        "pannel.h"
#include "Tw8836_const.h"
#include "includes.h"
#include "string.h"
#include "Type.h"
#include "com.h"
#include "PortCheck.h"
/*
handle some time event when time count arrival
by miller.tao20150731


*/

void Time_Cnt_Opertion(void)
{
    if(Time_10ms_arrival)
    {
        Time_10ms_arrival=0;
		PortCheck();
    }

    //------------50ms------------------
    if(Time_50ms_arrival)
    {
        Time_50ms_arrival=0;

        if(g_stuCurPower.WVedio_show_timer==1)
        {
            g_stuCurPower.WVedio_show_timer=0;
            BackLight(1);
			if(gGPSInitOk)
            {
				BL_Control_Send(1);
			}
            //TW8836_WritePage(0x02);
            //TW8836_Write(0x1e, TW8836_Read(0x1e)&0xfe);
        }

    }
    //------------100ms-----------------
    if(Time_100ms_arrival)
    {
        Time_100ms_arrival=0;
        if(Sys.Main_Source==SRC_NAVI)
        {
            if(Sys.main_osd==main_page_OSD_navi)
                if(Navi_osd_update_flag)
                {
                    Navi_osd_update_flag=0;
				/*	
                    if(Sys.FS_select.NAV_setup_show==0)
                        GPS_big_show();
                    else
                        GPS_small_show();
                        */
                }
        }



    }
    if(Time_300ms_arrival)
    {
        Time_300ms_arrival=0;

    }
    //-------------500ms-----------------
    if(Time_500ms_arrival)
    {
        Time_500ms_arrival=0;
    }
    if(Time_1s_arrival)
    {
        Time_1s_arrival=0;
	/*
        if(Sys_CAN_light.sun_mode==0x01)
            PWM_Configuration(200*Sys_CAN_light.sys_light_value+2000);
        else if(Sys_CAN_light.sun_mode==0x02)
            PWM_Configuration((200*Sys_CAN_light.sys_light_value)+20*(Sys_CAN_light.button_light_value-0x0c)+50);
	*/
    }
    if(Time_5s_arrival)
    {
        Time_5s_arrival=0;
        //LF_FrontContrl(0,Touch_status,X_POS,Y_POS);
    }
    if(Time_minute_arrival)
    {
        Time_minute_arrival=0;
    }
}


void Turn_source_power(BYTE Source)
{
    switch(Source)
    {
    case SRC_DVD:
    case SRC_vdisc:
        //GPIO_SetBits(GPIOC, P_DVD_RST);
        break;
    case SRC_TV:
        //GPIO_SetBits(GPIOC, P_TV_PWR);
        break;
    case SRC_Radio:
        //GPIO_SetBits(GPIOA, P_RADIO_PWR);//test
        //GPIO_ResetBits(GPIOA, P_RADIO_PWR);//test
        break;
    case SRC_Cambox:
        //GPIO_SetBits(GPIOA, P_DVR_PWR);
        break;
    default:	//
        break;
    }
}

BYTE ADC_GetValue (BYTE adc_channel)
{
    return 0;
}

void Video_FMS6501_init(void)
{}

void Video_FMS6501_switch(BYTE source)
{}

void Video_FMS6501_RCA_switch(BYTE source)
{}
void Video_FMS6501_REC_switch(BYTE source)
{}

void Video_switch(BYTE source)
{}

//u16 flash_temp[10];
//u16 flash_count=0;

u16 EE_Init(void)
{
    //u16  FlashStatus;

    Sys.valide_id=0xea;

    FLASH_Unlock();
    FLASH_ErasePage(EEPROM_START_ADDRESS);
    Save_Eerom_Data();

    FLASH_Lock();


    return FLASH_COMPLETE;
}/*
   	FLASH_ProgramHalfWord(PAGE0_BASE_ADDRESS+10, flash_count++);
    	FLASH_ProgramHalfWord(PAGE0_BASE_ADDRESS+12, flash_count++);
    	FLASH_ProgramHalfWord(PAGE0_BASE_ADDRESS+14, flash_count++);
    	FLASH_ProgramHalfWord(PAGE0_BASE_ADDRESS+16, flash_count++);


	   EE_ReadVariable(PAGE0_BASE_ADDRESS, &flash_temp[0]);
	   EE_ReadVariable(PAGE0_BASE_ADDRESS+2, &flash_temp[1]);
	   EE_ReadVariable(PAGE0_BASE_ADDRESS+4, &flash_temp[2]);
	   EE_ReadVariable(PAGE0_BASE_ADDRESS+6, &flash_temp[3]);
	   EE_ReadVariable(PAGE0_BASE_ADDRESS+8, &flash_temp[4]);
	   EE_ReadVariable(PAGE0_BASE_ADDRESS+10, &flash_temp[5]);
	   EE_ReadVariable(PAGE0_BASE_ADDRESS+12, &flash_temp[6]);
	   EE_ReadVariable(PAGE0_BASE_ADDRESS+14, &flash_temp[7]);
	   EE_ReadVariable(PAGE0_BASE_ADDRESS+16, &flash_temp[8]);*/
/*u16 EE_ReadVariable(u32 VirtAddress, u16* Data)
{
  u16 FlashStatus=FLASH_COMPLETE ;

  *Data=*(vu16*)VirtAddress ;
  return FlashStatus;
}
u16 EE_WriteVariable(u32 VirtAddress, u16 Data)
{
  u16  FlashStatus;

  FlashStatus=FLASH_ProgramHalfWord(VirtAddress, Data);
  //FlashStatus=FLASH_ProgramWord(VirtAddress, Data);
  return FlashStatus;
}*/

void Read_Eerom_Data(void)
{
    int i;
    //BYTE aTmp;
#ifdef FLASH_EEROM_DEBUG
#else
    unsigned long temp=0;

    temp=*(vu32*)(EEPROM_START_ADDRESS);
    Sys.valide_id=LOBYTE(temp);
    if(Sys.valide_id==0xea)
    {
        //FLASH_Unlock();
        for(i=0; i<512; i++)
            EEPROM_DATA.write_buf[i]=*(vu32*)(EEPROM_START_ADDRESS+i*4 );
        // FLASH_Lock();

		memcpy((char *)write_buf_back,(char *)EEPROM_DATA.write_buf,sizeof(EEPROM_DATA));//
        //if(Is_Source_Valide(Sys.Main_Source)==FALSE)
        //Sys.Main_Source=SRC_Radio;

        Sys.DVR_Source%=SRC_Off;
        Sys.Volume%=41;


        //Read_Radio_Eerom_Variables();

        Sys.TFT_ID%=3;//==0 背光灭 ==1 背光白天模式 ==2 背光夜间模式
        Sys.ACC_auto_on%=2;
        //Sys.Power_Status;
        //Sys.VideoType ;

        Sys.BackBright%=11;	//亮度寄存器

        Sys.BackContrast%=11;	//对比度寄存器 41
        
		if(Sys.Bright < 64)
		{
			Sys.Bright = 64;
		}
 //       Sys.Bright%=213;	//亮度寄存器
        Bright_Adjust(Sys.Bright);
		if(Sys.Contrast < 64)
		{
			Sys.Contrast = 64;
		}
  //      Sys.Contrast%=213;	//对比度寄存器 41
        TW8836ContrastAdjust(Sys.Contrast);
        Sys.Color%=41;		//颜色寄存器
        //Sys.VideoMode%=user_videomode+1;	//视频模式0=自定义,1=柔和,2=标准,3=明亮

        Sys.voice_navi%=2;
        Sys.gps_voice_Source%=SRC_Off;


    }
    else
    {
        EE_Init();
    }
#endif
}


void Save_Eerom_Data(void)
{
    //u16  FlashStatus;
    int i;

#ifdef FLASH_EEROM_DEBUG
#else

    //Save_Radio_Eerom_Variables();

    FLASH_Unlock();
    FLASH_ErasePage(EEPROM_START_ADDRESS);
    for(i=0; i<512; i++)
        FLASH_ProgramWord(EEPROM_START_ADDRESS+4*i, EEPROM_DATA.write_buf[i]);
    FLASH_Lock();
#endif
}
void Write_Valid_Data(u32 value)
{
    //u16  FlashStatus;

    FLASH_Unlock();
    FLASH_ErasePage(EEPROM_START_ADDRESS);
    FLASH_ProgramWord(EEPROM_START_ADDRESS, value);

    FLASH_Lock();
}

void Adjust_Source(BYTE Source)
{

    if(Sys.Main_Source!=Source)
    {
        BackLight(0);	
		Sys.bOffScreenSwitch =1;
    }
    if(Source==SRC_CAM|| Source == SRC_360)
        POWER_RearVideoOn();
    else
        POWER_RearVideoOff();

	if(Source==SRC_FrontView || Source==SRC_TV)
        POWER_CarRecOn();
    else
        POWER_CarRecOff();

    TW8836_Src(Source);
	//BackLight(1);	//先将背光开 add by feng
	Sys.Pre_Main_Source = Sys.Main_Source; 
    Sys.Main_Source=Source;

   // if((!m_RADAR.power_on_statu)||(Sys.FS_select.auto_rada_onoff_id==0))//||m_RADAR.fDisp_on_p)
    {
        switch(Source)
        {
        case SRC_NAVI:
			Bright_Adjust(Sys.Bright);
	   		TW8836ContrastAdjust(Sys.Contrast);
            Menu_page_DrawImage(main_page_OSD_navi,0);

            break;
        case SRC_CAM:
			
			if(Sys.FS_select.car_rearview_id==0 ||Sys.FS_select.car_rearview_id==1||Sys.FS_select.car_rearview_id==5)
	        {
				Menu_page_DrawImage(main_page_OSD_none,0);
				Bright_Adjust(Sys.Bright);
	   			TW8836ContrastAdjust(Sys.Contrast);
	        }
	        else if(Sys.FS_select.car_rearview_id==2 || Sys.FS_select.car_rearview_id==3)
	        {
				
	        	Menu_page_DrawImage(main_page_OSD_back_rada,Sys.u8back_mode_status);
				//TW8836ContrastAdjust((17*(Sys.BackContrast-1))+64);
				//Bright_Adjust(((Sys.BackBright-1)*17)+64);
				Bright_Adjust(Sys.Bright);
	   			TW8836ContrastAdjust(Sys.Contrast);
			}
			 else if(Sys.FS_select.car_rearview_id==4)	//360
			 {
				Menu_page_DrawImage(main_page_OSD_font_rada,sub_page_OSD_none);
				Bright_Adjust(Sys.Bright);
	   			TW8836ContrastAdjust(Sys.Contrast);
			 }
			 else	//无
			 {
				Menu_page_DrawImage(main_page_OSD_none,0);
			 }
            break;
        case SRC_CarMedia:
			Bright_Adjust(Sys.Bright);
	   		TW8836ContrastAdjust(Sys.Contrast);
            Menu_page_DrawImage(main_Car_page_OSD,0);

            break;
		case SRC_FrontView:
			{
				TW8836ContrastAdjust((17*(Sys.BackContrast-1))+64);
				Bright_Adjust(((Sys.BackBright-1)*17)+64);
				Menu_page_DrawImage(main_page_OSD_font_rada,0);
			}break;	
		case SRC_TV:
		{
			Bright_Adjust(Sys.Bright);
	   		TW8836ContrastAdjust(Sys.Contrast);
			Menu_page_DrawImage(main_page_OSD_none,0);
		}break;

		case SRC_360:
			Bright_Adjust(Sys.Bright);
	   		TW8836ContrastAdjust(Sys.Contrast);
			Menu_page_DrawImage(main_page_OSD_font_rada,sub_page_OSD_none);
			break;
			
        default:
			Bright_Adjust(Sys.Bright);
	   		TW8836ContrastAdjust(Sys.Contrast);
            Menu_page_DrawImage(main_Car_page_OSD,Sys.Car_Main_Source);
            Sys.Main_Source=SRC_CarMedia;
            break;
        }
    }
	#if 0 
    else
    {
        switch(Source)
        {
        case SRC_NAVI:
			NAVI_OE_Reset();	//add by Feng
       //     GPS_small_show();
            Menu_page_DrawImage(main_page_OSD_navi,0);
            //Navi_Controll_Send(CMD_RT_BTGPS_on_GPS);//miller.tao20160323
            /*
            if(gNaviSystemOn)
            {
                gNaviCnt =4000;//3500;//2500;
            }
            else
                gNaviCnt =200;//500;
            gNaviSendFlag =1;
            */
            break;
        case SRC_CAM:
            if(Sys.FS_select.cam_type_onoff_id==0)
                Menu_page_DrawImage(main_page_OSD_font_rada,0);
            else if(Sys.FS_select.cam_type_onoff_id==1)
                Menu_page_DrawImage(main_page_OSD_back_rada,Sys.u8back_mode_status);
            else if(Sys.FS_select.cam_type_onoff_id==2)
                Menu_page_DrawImage(main_page_OSD_none,sub_page_OSD_none);
            break;
        case SRC_CarMedia:
			NAVI_OE_Set();	//add by Feng
            Menu_page_DrawImage(main_page_OSD_Home,0);

            break;
		case SRC_FrontView:
			{
				Menu_page_DrawImage(main_page_OSD_font_rada,0);
			}break;	
        default:
            Menu_page_DrawImage(main_page_OSD_Home,0);
            Sys.Main_Source=SRC_CarMedia;
            break;
        }

    }
	#endif


    g_stuCurPower.WVedio_show_timer=100;



}

void source_process_fun(void)
{
//	int i;
    BackAllCheck();


    if(Sys.u8back_status&&(Sys.u8back_exit_auto==0))
    {	//进入倒车
        if(Sys.Main_Source!=SRC_CAM)
        {
            Sys.back_last_Main_Source=Sys.Main_Source;
            Adjust_Source(SRC_CAM);
			

        }
    }
    else if(Sys.u8back_status&&Sys.u8back_exit_auto)
    {	//按键退出倒车
        if(Sys.Main_Source==SRC_CAM)
        {
            Delay_1ms(100);
            Adjust_Source(Sys.back_last_Main_Source);
        }
    }
    else if(Sys.Main_Source==SRC_CAM)
    {
        if(Sys.Main_Source==SRC_CAM)
        {
			
            Delay_1ms(100);
            Adjust_Source(Sys.back_last_Main_Source);
        }
    }

	//360 view
	if(g_stu360View.u360_view_is_on ==1 && Sys.u8back_status == 0)
	{
		if(Sys.Main_Source!=SRC_360)
        {
            g_stu360View.u360_last_mian_source = Sys.Main_Source;
            Adjust_Source(SRC_360);
        }
	}
	else
	{
		if(Sys.Main_Source == SRC_360)
        {
            Delay_1ms(10);
            Adjust_Source(g_stu360View.u360_last_mian_source);
        }
	}

	//FrontView Source sw
	//if(m_RADAR.power_on_statu&&g_stuFrontViewCNTR.ufront_is_on == 1)
	if(g_stuFrontViewCNTR.ufront_is_on == 1 && Sys.u8back_status == 0 )	//&&m_RADAR.power_on_statu == 1
	{
		 if(Sys.Main_Source!=SRC_FrontView)
        {
            Sys.FrontView_last_Main_Source=Sys.Main_Source;
            Adjust_Source(SRC_FrontView);
        }
	}
	else
	{
		if(Sys.Main_Source==SRC_FrontView)
        {
            Delay_1ms(200);
            Adjust_Source(Sys.FrontView_last_Main_Source);
        }
	}


    switch(Sys.Main_Source)
    {
    case SRC_CAM:
        if(Sys.FS_select.car_rearview_id==0 ||Sys.FS_select.car_rearview_id==1)
        {
			/*
            if(m_RADAR.fDisp)
            {
                m_RADAR.fDisp=0;
                Menu_page_Draw_button(main_page_OSD_font_rada,0);
            }
            */
        }
        else if(Sys.FS_select.car_rearview_id==2 || Sys.FS_select.car_rearview_id==3)
        {
            //BYTE osd_updata_flag=0;
            WORD angle_index_count;
            angle_index_count=CBackTrack_GetAngleIndex(m_BMW_CAN.benze_Steering_angle);
            if(m_RADAR.fDisp)
            {
                m_RADAR.fDisp=0;
                //osd_updata_flag=1;
               // Menu_page_Draw_button(main_page_OSD_back_rada,Sys.u8back_mode_status);
               Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_only_updata_Rada);
            }

            if(m_BMW_CAN.benze_Steering_angle_index != angle_index_count)
            {
                m_BMW_CAN.benze_Steering_angle_index = angle_index_count;
                //osd_updata_flag=2;

                //if(Sys.main_osd==main_page_OSD_back_rada&&Sys.sub_osd==sub_page_OSD_back_rada_angle)
                if(Sys.main_osd==main_page_OSD_back_rada)
                    Menu_page_Draw_button(main_page_OSD_back_rada,sub_page_OSD_back_only_updata_angle);
            }

           
            //m_BMW_CAN.benze_Steering_angle+=100;
        }
		 else if(Sys.FS_select.car_rearview_id==4)	//360
		 {
			if(m_RADAR.fDisp)
            {
                m_RADAR.fDisp=0;
                if(Sys.main_osd!=main_page_OSD_font_rada)
                    Menu_page_DrawImage(main_page_OSD_font_rada,0);
                else
                    Menu_page_Draw_button(main_page_OSD_font_rada,0);
            }
		 }
		 else	//无
		 {

		 }
        break;
    case SRC_NAVI:
		if(Sys.main_osd!=main_page_OSD_navi)
			Menu_page_DrawImage(main_page_OSD_navi,0);
		else
			Menu_page_Draw_button(main_page_OSD_navi,0);
	 
        break;
    case SRC_CarMedia:
     
        if(Sys.main_osd!=main_Car_page_OSD)
			Menu_page_DrawImage(main_Car_page_OSD,0);
		else
			Menu_page_Draw_button(main_Car_page_OSD,0);
 
        break;
	case SRC_FrontView:
		{
 
		//	if(m_RADAR.power_on_statu)
	        {
	            if(m_RADAR.fDisp)
	            {
	                m_RADAR.fDisp=0;
	                if(Sys.main_osd!=main_page_OSD_font_rada)
	                    Menu_page_DrawImage(main_page_OSD_font_rada,0);
	                else
	                    Menu_page_Draw_button(main_page_OSD_font_rada,0);
	            }
	        }
	        
		}
		break;	

	case SRC_360:
		if(m_RADAR.fDisp)
        {
            m_RADAR.fDisp=0;
            if(Sys.main_osd!=main_page_OSD_font_rada)
                Menu_page_DrawImage(main_page_OSD_font_rada,0);
            else
                Menu_page_Draw_button(main_page_OSD_font_rada,0);
        }
		break;	
    }

//    Door_data_pro_fun();
//	CollisionWarringDeal();

    if(g_GPS_DATA.uSoundFlag||(g_stuSYSSRC.RingCallingFlag ==1)||(g_stuSYSSRC.RingCallingFlag ==0))
    {

        if(!gNaviVoiceCnt)
        {
        	SW_GPS_CAR_TO_GPS();
        }
    }
    else
    {
        SW_GPS_CAR_TO_CAR();
    }

	AduioSwitchTask();


}





void BackAllCheck(void)
{
    if(!BACK_PIN_STATUS()) //(1)//
    {

        //if(Sys.FS_select.car_rearview_id!=5)
        {
            //g_stuBACKCNTR.u8CurState = CAM_ON;
            Sys.u8IO_back_status=CAM_ON_from_IO;
            //POWER_RearVideoOn();
        }

    }
    else
    {
        if(!g_stuCurPower.wRearOnByCanTimer)
        {
            //if((Sys.FS_select.car_rearview_id!=5)&&(Sys.u8can_back_status!=CAM_ON_from_can))
			if(Sys.u8can_back_status!=CAM_ON_from_can)
			{
                Sys.u8IO_back_status=CAM_off_id;

            }
        }

    }


    if((Sys.u8IO_back_status==CAM_ON_from_IO)||(Sys.u8can_back_status==CAM_ON_from_can))//||(g_stuBACKCNTR.u8can_rada_status==CAM_ON_from_can))
    {
        if(Sys.FS_select.car_rearview_id!=5)
        {
            if(Sys.Main_Source==SRC_CarMedia && 
				Sys.FS_select.car_input_res_id != 0 &&
				(Sys.FS_select.car_rearview_id==0 || Sys.FS_select.car_rearview_id==1))
			{
				//Add by Feng 20161224 原车后视不切源
				if(Sys.bOffScreenSwitch)
		        {	//如果背光关闭，打开
		            Sys.bOffScreenSwitch =0;
					BackLight(1);
					if(gGPSInitOk)
		            {
						BL_Control_Send(1);
					}
				}
			}
			else
			{
            	Sys.u8back_status = CAM_ON;
			}
        }
		else if(Sys.FS_select.car_rearview_id==5)//原车后视+360
		{
			if((Sys.u8can_back_status==CAM_ON_from_can))
			{
				if(Sys.Main_Source==SRC_CarMedia && 
				Sys.FS_select.car_input_res_id != 0 )
				{
					//Add by Feng 20161224 原车后视不切源
					if(Sys.bOffScreenSwitch)
			        {	//如果背光关闭，打开
			            Sys.bOffScreenSwitch =0;
						BackLight(1);
						if(gGPSInitOk)
			            {
							BL_Control_Send(1);
						}
					}
				}
				else
				{
	            	Sys.u8back_status = CAM_ON;
				}
			}
			else if(Sys.u8IO_back_status==CAM_ON_from_IO)
			{
				Sys.u8back_status = CAM_OFF;
				g_stu360View.u360_view_is_on = 1;
				
			}
		}
    }
    else
    {
        if(Sys.FS_select.car_rearview_id!=5)
        {
        	Sys.u8back_status = CAM_OFF;
		}
		else if(Sys.FS_select.car_rearview_id==5)
		{
			Sys.u8back_status = CAM_OFF;
			g_stu360View.u360_view_is_on = 0;
	
				
		}
    }


}

void GPS_small_show()
{
    TW8836_WritePage(0x02);
    TW8836_Write(0x04, 0x20);
    TW8836_Write(0x03, 0x00);
    TW8836_Write(0x0C, 0x33);

}

void GPS_big_show()
{
    TW8836_WritePage(0x02);
    TW8836_Write(0x04, 0x14);
    TW8836_Write(0x03, 0x00);
    TW8836_Write(0x0C, 0x2b);

}

void Source_init(BYTE Source)
{}
void Source_init_twozone(BYTE Source)
{
    switch(Sys.Main_Source)
    {
    case SRC_vdisc://主信号源是碟盒时 ，后区不能是DVD
        if(Source==SRC_DVD)
            Source_init(SRC_vdisc);
        else
            Source_init(Source);
        //DVD_UartSend(Dvd_Key, DVD_PLAY);
        break;
    case SRC_DVD:
        //DVD_UartSend(Dvd_Key, DVD_PLAY);
        break;
    default:
        Source_init(Source);
        break;
    }
}
void AUX_Function(void)
{}

void CAM_Function(void)
{}

void BLUETOOTH_Function(void)
{
    //RemValue=BLUETOOTH_Command(RemValue);
}

BYTE BLUETOOTH_Command(BYTE value)
{
    return 0;
}

void GPS_Function(void)
{}
void Videoplay_function(void)
{

}

BYTE Videoplay_Command(BYTE value)
{
    return 0;
}

void Audioplay_function(void)
{

}

BYTE Audioplay_Command(BYTE value)
{
    return 0;
}
void APPplay_function(void)
{

}

BYTE APPplay_Command(BYTE value)
{
    return 0;
}

void VCR_function(void)
{
    //RemValue=VCR_Command(RemValue);
}

BYTE VCR_Command(BYTE value)
{
    return 0;
}

void IPOD_function(void)
{

}

BYTE Ipod_Command(BYTE value)
{
    return 0;
}

void Cambox_Function(void)
{}


///发送DVD/VDISC控制命令
void Cambox_UartSend(BYTE command, BYTE param)
{}

void	Ipod_MUL_Function(void)
{}

void	Audioplay_MUL_Function(void)
{}
void	Videoplay_MUL_Function(void)
{}
void	BLUETOOTH_MUL_Function(void)
{

}

void GetLockCode(void)
{}

#define CBACK_TRACK_MAX_ANGLE                      33//32
#define TT 126//比32等分略小(128-2)
#define bwm_angle_count 0x2000

#define bwm2x_TT 380
#define bwm2x_angle_count 0x8000

const U16 CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE+1] =
{

#if LF_CAN_TYPE == AudiA4CAN 
0x0000,//  0+
0x00A1,//  1+
0x0142,//  2+
0x01E3,//  3+
0x0284,//  4+
0x0325,//  5+
0x03C6,//  6+
0x0467,//  7+
0x0508,//  8+
0x05A9,//  9+
0x064A,//  10+
0x06EB,//  11+
0x078C,//  12+
0x082D,//  13+
0x08CE,//  14+
0x096F,//  15+
0x0A10,//  16+
0x0AB1,//  17+
0x0B52,//  18+
0x0BF3,//  19+
0x0C94,//  20+
0x0D35,//  21+
0x0DD6,//  22+
0x0E77,//  23+
0x0F18,//  24+
0x0FB9,//  25+
0x105A,//  26+
0x10FB,//  27+
0x119C,//  28+
0x123D,//  29+
0x12DE,//  30+
0x137F,//  31+
0x1420,//  32+
0x15FF,//

#endif

#if LF_CAN_TYPE == Benci_newC 
	
    bwm_angle_count,//	0+
    bwm_angle_count-TT*1,//  1+
    bwm_angle_count-TT*2,//  2+
    bwm_angle_count-TT*3,//  3+
    bwm_angle_count-TT*4,//  4+
    bwm_angle_count-TT*5,//  5+
    bwm_angle_count-TT*6,//  6+
    bwm_angle_count-TT*7,//  7+
    bwm_angle_count-TT*8,//  8+
    bwm_angle_count-TT*9,//  9+
    bwm_angle_count-TT*10,//  10+
    bwm_angle_count-TT*11,//  11+
    bwm_angle_count-TT*12,//  12+
    bwm_angle_count-TT*13,//  13+
    bwm_angle_count-TT*14,//  14+
    bwm_angle_count-TT*15,//  15+
    bwm_angle_count-TT*16,//  16+
    bwm_angle_count-TT*17,//  17+
    bwm_angle_count-TT*18,//  18+
    bwm_angle_count-TT*19,//  19+
    bwm_angle_count-TT*20,//  20+
    bwm_angle_count-TT*21,//  21+
    bwm_angle_count-TT*22,//  22+
    bwm_angle_count-TT*23,//  23+
    bwm_angle_count-TT*24,//  24+
    bwm_angle_count-TT*25,//  25+
    bwm_angle_count-TT*26,//  26+
    bwm_angle_count-TT*27,//  27+
    bwm_angle_count-TT*28,//  28+
    bwm_angle_count-TT*29,//  29+
    bwm_angle_count-TT*30,//  30+
    bwm_angle_count-TT*31,//  31+
    bwm_angle_count-TT*32,//  31+
#endif

};
const  U16 CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE+1] =
{

#if LF_CAN_TYPE == AudiA4CAN 
	0x2000,//  0+
	0x20A2,//  1+
	0x2144,//  2+
	0x21E6,//  3+
	0x2288,//  4+
	0x232A,//  5+
	0x23CC,//  6+
	0x246E,//  7+
	0x2510,//  8+
	0x25B2,//  9+
	0x2654,//  10+
	0x26F6,//  11+
	0x2798,//  12+
	0x283A,//  13+
	0x28DC,//  14+
	0x297E,//  15+
	0x2A20,//  16+
	0x2AC2,//  17+
	0x2B64,//  18+
	0x2C06,//  19+
	0x2CA8,//  20+
	0x2D4A,//  21+
	0x2DEC,//  22+
	0x2E8E,//  23+
	0x2F30,//  24+
	0x2FD2,//  25+
	0x3074,//  26+
	0x3116,//  27+
	0x31B8,//  28+
	0x325A,//  29+
	0x32FC,//  30+
	0x339E,//  31+
	0x3440,//  32+
	0x35FF,//
#endif

#if LF_CAN_TYPE == Benci_newC 

    bwm_angle_count,//	0+
    bwm_angle_count+TT*1,//  1+
    bwm_angle_count+TT*2,//  2+
    bwm_angle_count+TT*3,//  3+
    bwm_angle_count+TT*4,//  4+
    bwm_angle_count+TT*5,//  5+
    bwm_angle_count+TT*6,//  6+
    bwm_angle_count+TT*7,//  7+
    bwm_angle_count+TT*8,//  8+
    bwm_angle_count+TT*9,//  9+
    bwm_angle_count+TT*10,//  10+
    bwm_angle_count+TT*11,//  11+
    bwm_angle_count+TT*12,//  12+
    bwm_angle_count+TT*13,//  13+
    bwm_angle_count+TT*14,//  14+
    bwm_angle_count+TT*15,//  15+
    bwm_angle_count+TT*16,//  16+
    bwm_angle_count+TT*17,//  17+
    bwm_angle_count+TT*18,//  18+
    bwm_angle_count+TT*19,//  19+
    bwm_angle_count+TT*20,//  20+
    bwm_angle_count+TT*21,//  21+
    bwm_angle_count+TT*22,//  22+
    bwm_angle_count+TT*23,//  23+
    bwm_angle_count+TT*24,//  24+
    bwm_angle_count+TT*25,//  25+
    bwm_angle_count+TT*26,//  26+
    bwm_angle_count+TT*27,//  27+
    bwm_angle_count+TT*28,//  28+
    bwm_angle_count+TT*29,//  29+
    bwm_angle_count+TT*30,//  30+
    bwm_angle_count+TT*31,//  31+
    bwm_angle_count+TT*32,//  31+
#endif

};


const U16 CBackTrack_TAB_TUNE_LF_bwm2X_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE+1] =
{
bwm2x_angle_count,//	0+	
bwm2x_angle_count+bwm2x_TT*1,//  1+  
bwm2x_angle_count+bwm2x_TT*2,//  2+  
bwm2x_angle_count+bwm2x_TT*3,//  3+  
bwm2x_angle_count+bwm2x_TT*4,//  4+  
bwm2x_angle_count+bwm2x_TT*5,//  5+  
bwm2x_angle_count+bwm2x_TT*6,//  6+  
bwm2x_angle_count+bwm2x_TT*7,//  7+  
bwm2x_angle_count+bwm2x_TT*8,//  8+  
bwm2x_angle_count+bwm2x_TT*9,//  9+  
bwm2x_angle_count+bwm2x_TT*10,//  10+ 
bwm2x_angle_count+bwm2x_TT*11,//  11+ 
bwm2x_angle_count+bwm2x_TT*12,//  12+ 
bwm2x_angle_count+bwm2x_TT*13,//  13+ 
bwm2x_angle_count+bwm2x_TT*14,//  14+ 
bwm2x_angle_count+bwm2x_TT*15,//  15+ 
bwm2x_angle_count+bwm2x_TT*16,//  16+ 
bwm2x_angle_count+bwm2x_TT*17,//  17+ 
bwm2x_angle_count+bwm2x_TT*18,//  18+ 
bwm2x_angle_count+bwm2x_TT*19,//  19+ 
bwm2x_angle_count+bwm2x_TT*20,//  20+ 
bwm2x_angle_count+bwm2x_TT*21,//  21+ 
bwm2x_angle_count+bwm2x_TT*22,//  22+ 
bwm2x_angle_count+bwm2x_TT*23,//  23+ 
bwm2x_angle_count+bwm2x_TT*24,//  24+ 
bwm2x_angle_count+bwm2x_TT*25,//  25+ 
bwm2x_angle_count+bwm2x_TT*26,//  26+ 
bwm2x_angle_count+bwm2x_TT*27,//  27+ 
bwm2x_angle_count+bwm2x_TT*28,//  28+ 
bwm2x_angle_count+bwm2x_TT*29,//  29+ 
bwm2x_angle_count+bwm2x_TT*30,//  30+ 
bwm2x_angle_count+bwm2x_TT*31,//  31+ 
bwm2x_angle_count+bwm2x_TT*32,//  31+

};
const  U16 CBackTrack_TAB_TUNE_RT_bwm2X_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE+1] =
{
bwm2x_angle_count,//	0+	
bwm2x_angle_count-bwm2x_TT*1,//  1+  
bwm2x_angle_count-bwm2x_TT*2,//  2+  
bwm2x_angle_count-bwm2x_TT*3,//  3+  
bwm2x_angle_count-bwm2x_TT*4,//  4+  
bwm2x_angle_count-bwm2x_TT*5,//  5+  
bwm2x_angle_count-bwm2x_TT*6,//  6+  
bwm2x_angle_count-bwm2x_TT*7,//  7+  
bwm2x_angle_count-bwm2x_TT*8,//  8+  
bwm2x_angle_count-bwm2x_TT*9,//  9+  
bwm2x_angle_count-bwm2x_TT*10,//  10+ 
bwm2x_angle_count-bwm2x_TT*11,//  11+ 
bwm2x_angle_count-bwm2x_TT*12,//  12+ 
bwm2x_angle_count-bwm2x_TT*13,//  13+ 
bwm2x_angle_count-bwm2x_TT*14,//  14+ 
bwm2x_angle_count-bwm2x_TT*15,//  15+ 
bwm2x_angle_count-bwm2x_TT*16,//  16+ 
bwm2x_angle_count-bwm2x_TT*17,//  17+ 
bwm2x_angle_count-bwm2x_TT*18,//  18+ 
bwm2x_angle_count-bwm2x_TT*19,//  19+ 
bwm2x_angle_count-bwm2x_TT*20,//  20+ 
bwm2x_angle_count-bwm2x_TT*21,//  21+ 
bwm2x_angle_count-bwm2x_TT*22,//  22+ 
bwm2x_angle_count-bwm2x_TT*23,//  23+ 
bwm2x_angle_count-bwm2x_TT*24,//  24+ 
bwm2x_angle_count-bwm2x_TT*25,//  25+ 
bwm2x_angle_count-bwm2x_TT*26,//  26+ 
bwm2x_angle_count-bwm2x_TT*27,//  27+ 
bwm2x_angle_count-bwm2x_TT*28,//  28+ 
bwm2x_angle_count-bwm2x_TT*29,//  29+ 
bwm2x_angle_count-bwm2x_TT*30,//  30+ 
bwm2x_angle_count-bwm2x_TT*31,//  31+ 
bwm2x_angle_count-bwm2x_TT*32,//  31+
};
BYTE CBackTrack_GetAngleIndex(U16 angle_val)
{

    static BYTE index;

#if LF_CAN_TYPE== BWM5SCAN 

	if (angle_val == 0x8000)
		return 0;
	else
		{
		if (angle_val < 0x8000 )
		{
			for(index = 0; index < CBACK_TRACK_MAX_ANGLE; index++)
			{
				if((angle_val >= CBackTrack_TAB_TUNE_RT_bwm2X_ANGLE_MAP_TAB[index+1]) && (angle_val < CBackTrack_TAB_TUNE_RT_bwm2X_ANGLE_MAP_TAB[index]))
				{
					return index + CBACK_TRACK_MAX_ANGLE;
				}
			}
			if(index >= CBACK_TRACK_MAX_ANGLE)
				return CBACK_TRACK_MAX_ANGLE - 1 + CBACK_TRACK_MAX_ANGLE;
			else
				return index + CBACK_TRACK_MAX_ANGLE;
		}
		else if (angle_val >= 0x8000)
		{
			for(index = 0; index < CBACK_TRACK_MAX_ANGLE; index++)
			{
				if((angle_val >= CBackTrack_TAB_TUNE_LF_bwm2X_ANGLE_MAP_TAB[index]) && (angle_val < CBackTrack_TAB_TUNE_LF_bwm2X_ANGLE_MAP_TAB[index+1]))
				{
					return index;
				}
			}
			if(index >= CBACK_TRACK_MAX_ANGLE)
				return CBACK_TRACK_MAX_ANGLE - 1;
			else
				return index;
		}

	}
	return 0;

#endif

#if LF_CAN_TYPE == AudiA4CAN 
if (angle_val == 0x0000)
	return 0;
else
{

	if (angle_val >= 0x2000 )
		//Right tune
	{
		for(index = 0; index < CBACK_TRACK_MAX_ANGLE; index++)
		{
			if((angle_val >= CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[index]) && (angle_val < CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[index+1]))
			{
				if(index==0)
					return index;
				
				return index + CBACK_TRACK_MAX_ANGLE-1;
			}
		}
		if(index >= CBACK_TRACK_MAX_ANGLE)
			return CBACK_TRACK_MAX_ANGLE - 1 + CBACK_TRACK_MAX_ANGLE;
		else
			return index + CBACK_TRACK_MAX_ANGLE;
	}
	else if (angle_val < 0x2000)
		//left tune
	{
		for(index = 0; index < CBACK_TRACK_MAX_ANGLE; index++)
		{
			if((angle_val >= CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[index]) && (angle_val < CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[index+1]))
			{
				return index;
			}
		}
		if(index >= CBACK_TRACK_MAX_ANGLE)
			return CBACK_TRACK_MAX_ANGLE - 1;
		else
			return index;
	}

}
return 0;

#endif
	
	
#if LF_CAN_TYPE == Benci_newC 
	//benc_NewC
    angle_val=angle_val&0xff00;


    if (angle_val == CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[0])
        return 0;
    else
    {

        if (angle_val > CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[1] )
            //Right tune
        {
            for(index = 0; index < CBACK_TRACK_MAX_ANGLE; index++)
            {
                if((angle_val <= CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[index+1]) && (angle_val > CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[index]))
                {
                    return index;
                }
            }

            if(angle_val > CBackTrack_TAB_TUNE_RT_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE] )
                return CBACK_TRACK_MAX_ANGLE-1;
            else
                return 0;
        }
        else// if (angle_val >= 0x7F6C)
            //left tune
        {
            for(index = 0; index < CBACK_TRACK_MAX_ANGLE; index++)
            {
                if((angle_val <= CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[index]) && (angle_val > CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[index+1]))
                {
                    return index+CBACK_TRACK_MAX_ANGLE;
                }
            }

            if(angle_val<CBackTrack_TAB_TUNE_LF_ANGLE_MAP_TAB[CBACK_TRACK_MAX_ANGLE])
                return CBACK_TRACK_MAX_ANGLE+CBACK_TRACK_MAX_ANGLE-1;
            //else
            //	return CBACK_TRACK_MAX_ANGLE;
        }

    }
    return 0;
	#endif	
}



