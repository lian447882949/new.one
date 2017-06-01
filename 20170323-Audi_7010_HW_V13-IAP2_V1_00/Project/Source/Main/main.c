

/******************** (C) COPYRIGHT 2011 APTENON ********************
 * File Name          : main.c
 * Author             : edwin kang
 * Version            : V0.0
 * Date               : 09/8/2011
 * Description        : Main  file.
 *******************************************************************************/
#define __DUB_BACKTRACK__
#define __MAIN_C__
#include "includes.h"

#include "PortCheck.h"
//#include "Arm.h"
//#include "menu.h"
#include "string.h"
#include "SEGGER_RTT.h"


//#include "TW8836.h"
/*lint -e830 -e831 -e534 */ //return val
/*lint  -e525 -e725 -e539 */ //shuojin
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
/*******************************************************************************
 * Function Name  : main
 * Description    : Main program.
 * Input          : None
 * Output         : None
 * Return         : None.
 *******************************************************************************/
//BYTE System_Status;
typedef  void (*pFunction)(void);

void Gps_Send_POS(WORD X, WORD Y, BYTE status);
main(void)
{
	NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x8000);
    MCU_Init();
	//Flash 读保护
  //  Read_project();
    System_Init();


	Sys.Pre_Main_Source = SRC_NAVI;
	Sys.Main_Source = SRC_CarMedia;//SRC_NAVI;	/	//test NAVI input display

	//test
	m_BMW_CAN.Year_data   = 2011;
    m_BMW_CAN.Month_data  = 01;  
    m_BMW_CAN.day_data	  = 02 ;
	
    m_BMW_CAN.Hour_data = 12; //hour
    m_BMW_CAN.Minute_data = 12; //时间数据
    m_BMW_CAN.Sec_data = 01; //时间数据
    
	while(1)
    {

        IWDG_ReloadCounter();//清狗
        IWDG_load_Count=0;
        //ARM_data_Process();

		Time_Cnt_Opertion();
		SyncOptionKeyTask();
		SuitableTask();
		NAVI_PROCESS();
        switch(System_Power_Status)
        {
        case Power_acc_off:
            //Power_ACC_Off();
            System_Power_Status=Powerstanby;
            break;
        case Powerstanby:
            Wait_System_On();
            break;
        case Powerwork_init:
            System_on();
		//	Init_FontOSD();
            break;
        case Powerwork:
            Main_process();
            break;
        case Poweroff_init:
            Power_Off();
            break;
        }



    };
}

///////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////
void Power_off_det(void)
{
    if(!ACC_PIN_STATUS())//(1)//
    {
        m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
        m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
        m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;
    }
    else
    {
        if(!g_stuCurPower.wPowerOnByCanTimer2)
        {
            if(m_BMW_CAN.AudioPwr == SYSTEM_POWER_ON)
            {
                //m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
                m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
                m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
            }
        }

        if(!g_stuCurPower.wPowerOnByCanPwr)
        {
            if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
            {
                m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
                m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
                //m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
            }
        }
    }

    if(Sys.u8can_back_status==CAM_ON_from_can || g_stu360View.u360_view_is_on ==1 )
    {
        ;
    }
    else
    {
        if(m_BMW_CAN.AudioPwr == SYSTEM_POWER_OFF&&(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON))
        {
            System_Power_Status=Powerwork_init;
            Powerwork_init_Status=Powerwork_init_wait;
        }
        else if(m_BMW_CAN.AudioPwr == SYSTEM_POWER_OFF&&m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_OFF)
        {
            System_Power_Status=Poweroff_init;
            Poweroff_init_Status=Poweroff_init_start;
        }
    }
}



void Touch_Deal(void)
{
	uint8_t point_num;
	static uint8_t touch_status = 0;
	static uint8_t pre_byTouch_buff = 0;
	static uint8_t double_falg = 0;
	if(Touch_flag)//(GPIO_ReadInputDataBit(CTOUCH_INT_PORT,CTOUCH_INT_PIN))//
    {
		
        //GPIO_WriteHigh(TFT_TOUCH_IN_PORT,MCU_TFT_PWM_pin);
        touch_i2cBurstReadBytes(GT911_adr,0x81,0x4e, touch_I2C_buff, 6);
        //x_count=buff[2]|(buff[3]<<8);
        //X_pos=x_count*800/2056;
        //Y_count=buff[4]|(buff[5]<<8);
        //Y_pos=Y_count*300/2056;
        // byTouchStatus=touch_I2C_buff[0];
        touch_I2C_buff[1]=touch_I2C_buff[0];
		byTouch_buff=touch_I2C_buff[0]&0x87;;
		point_num = touch_I2C_buff[0]&0x0f;
//		touch_status = byTouch_buff;
        touch_I2C_buff[0]=0;//0x7f;//
        touch_i2cBurstWriteBytes(GT911_adr,0x81,0x4e, &touch_I2C_buff[0], 1);

#if 0
        {
            X_POS=touch_I2C_buff[3]<<8|touch_I2C_buff[2];
            Y_POS= (touch_I2C_buff[5]<<8|touch_I2C_buff[4]);//*6/10;//800*480
            if((byTouch_buff==0))
                byTouchStatus=MSG_ACTION_BOUNCE;
            else if(byTouch_buff==128&&(PreTouchStatus==MSG_ACTION_KEEP))
                byTouchStatus=MSG_ACTION_BOUNCE;
            else if(byTouch_buff>=129&&(PreTouchStatus==MSG_ACTION_BOUNCE))//if(byTouchStatus==PreTouchStatus)
            {
                byTouchStatus=MSG_ACTION_PRESSED;
            }
            else if(byTouch_buff>=129)//if(byTouchStatus==PreTouchStatus)
            {
                byTouchStatus=MSG_ACTION_KEEP;
            }
			
            else
            {
				byTouchStatus=MSG_ACTION_BOUNCE;

            }
			
            if(PreTouchStatus!=byTouchStatus)
            {
				

                Touch_on_Click=1;
                PreTouchStatus=byTouchStatus;
                if(byTouchStatus==MSG_ACTION_PRESSED)
                {
                    if(!U8Tiemr_connect_press)
                    {
                        U8Tiemr_connect_press=250;
                        connect_press_one=1;
                    }
                    else
                    {
                        connect_press=1;
                        byTouch_moveStatus=TOUCHPRESSEDDB;
                        U8Tiemr_connect_press=0;
                        connect_press_one=0;
                    }

                }
            }
            else if(byTouchStatus==MSG_ACTION_KEEP)
            {
                Touch_on_Click=1;

            }

            if(Sys.Main_Source==SRC_NAVI)//&&Sys.main_osd==main_page_OSD_none)
            {
             if(gGPSInitOk)
                {
			 		Gps_Send_POS(X_POS, Y_POS,byTouchStatus);
					SEGGER_RTT_printf(0,"byTouch_buff=%x,",byTouch_buff);
					SEGGER_RTT_printf(0,"T_X=%d,T_Y=%d\n\r",X_POS,Y_POS);
				}
            }   
        }
#else
	
	if(point_num > 0)
	{
		touch_i2cBurstReadBytes(GT911_adr,0x81,0x4f, &touch_I2C_buff[1], point_num*8);
		X_POS=touch_I2C_buff[3]<<8|touch_I2C_buff[2];
        Y_POS= (touch_I2C_buff[5]<<8|touch_I2C_buff[4])*6/10;
		X1_POS = (touch_I2C_buff[11]<<8)|touch_I2C_buff[10];
		Y1_POS = ((touch_I2C_buff[13]<<8)|touch_I2C_buff[12])*6/10;
        
	}
	if(byTouch_buff ==0)
	{
		;//touch_status=POINT_1_BOUNCE;//POINT_ALL_BOUNCE;
	}
	else if(byTouch_buff == 0x81 && pre_byTouch_buff==0x00 ||
		byTouch_buff == 0x81 && pre_byTouch_buff==0x80)
	{
		touch_status=POINT_1_PRESSED;
		double_falg = 0;
		
	}
	else if((byTouch_buff == 0x82 && pre_byTouch_buff==0x81) || 
		(byTouch_buff == 0x82 && pre_byTouch_buff==0x80) ||
		(byTouch_buff == 0x82 && pre_byTouch_buff==0x0))
	{
		touch_status=POINT_2_PRESSED;
		double_falg = 1;
	}
	else if(byTouch_buff == 0x81 && pre_byTouch_buff==0x81)
	{
		touch_status=POINT_1_KEEP;
	}
	else if(byTouch_buff == 0x82 && pre_byTouch_buff==0x82)
	{
		touch_status=POINT_2_KEEP;
		double_falg = 1;
	}
	else if(byTouch_buff == 0x81 && pre_byTouch_buff==0x82)
	{
		touch_status=POINT_2_BOUNCE;	//两点，有一点弹起
	}
	else if(byTouch_buff == 0x80 && pre_byTouch_buff==0x82)
	{
		touch_status=POINT_ALL_BOUNCE;	//
	}
	else if(byTouch_buff == 0x80 && pre_byTouch_buff==0x81)
	{

		touch_status=POINT_1_BOUNCE;
	}
	else if(byTouch_buff == 0x80 && pre_byTouch_buff==0x80)
	{

		touch_status=POINT_1_BOUNCE;
	}
	else
	{
		touch_status=POINT_ALL_BOUNCE;
	}
	pre_byTouch_buff = byTouch_buff;

	if(Sys.Main_Source==SRC_NAVI)//&&Sys.main_osd==main_page_OSD_none)
    {

	switch(touch_status)
	{
		case POINT_1_PRESSED:
			if(gGPSInitOk)
				Gps_Send_Double_POS(X_POS, Y_POS,MSG_ACTION_1_PRESSED);
			break;
		case POINT_2_PRESSED:
			if(gGPSInitOk)
			{
				Gps_Send_Double_POS(X_POS, Y_POS,MSG_ACTION_1_PRESSED);
				Gps_Send_Double_POS(X1_POS, Y1_POS,MSG_ACTION_2_PRESSED);
			}
			break;
		case POINT_ALL_BOUNCE:	
			if(gGPSInitOk)
			{
				Gps_Send_Double_POS(X1_POS, Y1_POS,MSG_ACTION_2_BOUNCE);//10
				Gps_Send_Double_POS(X_POS, Y_POS,MSG_ACTION_1_BOUNCE);	//00 	//20160110
				
			}
			break;
		case POINT_1_BOUNCE:
			if(gGPSInitOk)
				Gps_Send_Double_POS(X_POS, Y_POS,MSG_ACTION_1_BOUNCE);
			break;
		case POINT_2_BOUNCE:
		
			if(gGPSInitOk)
				Gps_Send_Double_POS(X1_POS, Y1_POS,MSG_ACTION_2_BOUNCE);
			break;	
		case POINT_1_KEEP:
			if(gGPSInitOk)
				Gps_Send_Double_POS(X_POS, Y_POS,MSG_ACTION_1_PRESSED);
			break;
		case POINT_2_KEEP:
			if(gGPSInitOk)
			{
				Gps_Send_Double_POS(X_POS, Y_POS,MSG_ACTION_1_PRESSED);
				Gps_Send_Double_POS(X1_POS, Y1_POS,MSG_ACTION_2_PRESSED);
			}
			break;	
	}
	}
#if 1	
	if((byTouch_buff==0))
        byTouchStatus=MSG_ACTION_BOUNCE;
    else if(byTouch_buff==128&&(PreTouchStatus==MSG_ACTION_KEEP))
        byTouchStatus=MSG_ACTION_BOUNCE;
    else if(byTouch_buff>=129&&(PreTouchStatus==MSG_ACTION_BOUNCE))//if(byTouchStatus==PreTouchStatus)
    {
        byTouchStatus=MSG_ACTION_PRESSED;
    }
    else if(byTouch_buff>=129)//if(byTouchStatus==PreTouchStatus)
    {
        byTouchStatus=MSG_ACTION_KEEP;
    }
	
    else
    {
		byTouchStatus=MSG_ACTION_BOUNCE;

    }
	
	if(PreTouchStatus!=byTouchStatus)
    {
        Touch_on_Click=1;
        PreTouchStatus=byTouchStatus;

    }
    else if(byTouchStatus==MSG_ACTION_KEEP)
    {
        Touch_on_Click=1;

    }
#endif	

    if(Sys.Main_Source==SRC_NAVI)//&&Sys.main_osd==main_page_OSD_none)
    {
     
	 	/*
			SEGGER_RTT_printf(0,"point_num=%x,",point_num);
			SEGGER_RTT_printf(0,"byTouch_buff=%x,",byTouch_buff);
			SEGGER_RTT_printf(0,"T_X=%d,T_Y=%d\n\r",X_POS,Y_POS);
		*/	
    }

#endif
	Touch_flag=0;
    }
}


void Main_process(void)
{

    //GPIO_WriteBit(GPIOB, P_PEC_CLK, (BitAction)(1-GPIO_ReadOutputDataBit(GPIOB, P_PEC_CLK)));
    //主循环时间140us  0329

    

    LF_CanBus_FetchCmdTask();
    

    Touch_Deal();
    
    if(Touch_on_Click)//(!((PreTouchStatus==MSG_ACTION_BOUNCE)&&(byTouchStatus==MSG_ACTION_BOUNCE)))
    {
		if(Sys.bOffScreenSwitch)
        {
            Sys.bOffScreenSwitch =0;
			BackLight(1);
			if(gGPSInitOk)
            {
				BL_Control_Send(1);
			}
		}
		if(Sys.Main_Source==SRC_CarMedia && byTouchStatus == MSG_ACTION_BOUNCE )
		{
			if(X_POS != 0 && Y_POS != 0)
			{
				Can_key_cmd=key_NAVI;
			}
		}
		if(Sys.Main_Source==SRC_TV && gNaviStatus == 6 && byTouchStatus == MSG_ACTION_BOUNCE)
		{
			Panel_Key_Send(ZX_KEY_LEFT_PUSH);
			Panel_Key_Send(ZX_KEY_Invalide);
			Can_key_cmd=key_NAVI;
		}
        User_PositionProcess(X_POS,Y_POS,byTouchStatus);
        Touch_on_Click=0;
		
    }

    User_mouse_moves();

    source_process_fun();

    Power_off_det();
 //   Navi_Cmd_Proc();

}

void Wait_System_On(void)
{
    //BYTE i;

    switch(Powerstany_Status)
    {
    case Powerstanby_start:
        //GPIO_Off_Init();

        CAN_STB_SET() ;
        CAN_EN_SET();
        g_stuCurPower.wPowerWamkeupTimer=2000;

#if 1//miller.tao20150801
        //SYS_PowerOff() ;
        BackLight(0);
		Sys.bOffScreenSwitch =1;
#endif
        System_init_ok=0;
        Powerstany_Status=Powerstanby_ok;
        Delay_1ms(1000);
        //RemValue=NULL;
        break;
    case Powerstanby_ok:
        while(1)
        {
			if(Time_10ms_arrival)
		    {
		        Time_10ms_arrival=0;
				PortCheck();
		    }
            if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
                break;
            if(!g_stuCurPower.wPowerWamkeupTimer)
                break;
            if(!ACC_PIN_STATUS())
                break;
        }


        System_Power_Status=Powerwork_init;
        Powerwork_init_Status=Powerwork_init_start;

        if(!ACC_PIN_STATUS())
            return;

        if(m_BMW_CAN.benze_Pwr_acc != SYSTEM_POWER_ON)
        {
            //----------------------------before  enter standby to close clk
            //System_Standby_Reset_ClkSetup();
            //SYS_PowerOff();
            //GPIO_DeInit(GPIOA);
            //GPIO_DeInit(GPIOB);
            //GPIO_DeInit(GPIOC);
            // GPIO_DeInit(GPIOD);
            //GPIO_DeInit(GPIOE);//Miller.Tao
            //GPIO_DeInit(GPIOF);
            //GPIO_DeInit(GPIOG);
            // CAN_STB_RESET();
            // CAN_EN_RESET();


#if 1
            CAN_STB_SET();
            CAN_EN_SET();
            Delay_1ms(100);
            CAN_EN_RESET();
            CAN_STB_RESET();	//CAN 进入复位，INH没有信号输出，MCU断电
            Delay_1ms(100);
            CAN_EN_SET();
            Delay_1ms(50);
            CAN_EN_RESET();
#endif
            //-----------------------------

            // PWR_EnterSTANDBYMode();
        }

        break;
    case Powerstanby_exit:
        break;
    }
}
void Power_Off(void)
{
    //BYTE i;

    switch(Poweroff_init_Status)
    {
    case Poweroff_init_start:
        //HARD_MUTE_ON();
        //WavePlayer_Warning(warn_off_type);

        System_save_ok=0;
      
        /*if(Sys.can_type!=tuguan_cantype)
        {
        	Delay_1ms(200);
        	Canbus_send_data(canbus_off,"off");
        	Delay_1ms(200);
        	Canbus_send_data(canbus_off,"off");
        }*/
        Poweroff_init_Status=Poweroff_init_exit;
        Poweroff_init_count=1;//等待ARM记忆
        break;
    case Poweroff_init_ok:
        if(Poweroff_init_count==0)
            Poweroff_init_Status=Poweroff_init_exit;
        else if(System_save_ok==1)
            Poweroff_init_Status=Poweroff_init_exit;
        break;
    case Poweroff_init_exit:

		if(memcmp((char *)write_buf_back,(char *)EEPROM_DATA.write_buf,sizeof(EEPROM_DATA)))//
		{
      	  Save_Eerom_Data();
		}
        BackLight(0);
		Sys.bOffScreenSwitch =1;
        Delay_1ms(100);//关屏后延时3秒关电，以保证系统的数据保存 20121105

        System_Power_Status=Powerstanby;
        Powerstany_Status=Powerstanby_start;


        break;
    }

}
void  System_on(void)
{
//    WORD i;
    //Byte light;

    //light=0;
    switch(Powerwork_init_Status)
    {
    case Powerwork_init_start:
        //HARD_MUTE_ON();
        // GPIO_SetBits(GPIOD, P_TW8823_RST);//test
        //Delay_1ms(2000);
        //EXIT_Control(INT_ARM_UART4,ENABLE);
        //GPIO_On_Init();


        //Init_Poweron_Variables();
        //PANEL_TYPE=Panelhannstar07_DT;	 //test
        //Pannel_include();
        //GPIO_SetBits(GPIOD, P_STBY);
        // GPIO_SetBits(GPIOD, P_MUTE_ZONE);
        // GPIO_ResetBits(GPIOD, P_MUTE);
#if 1 //miller.tao20150801
        SYS_PowerOn() ;
        CAN_STB_SET() ;
        CAN_EN_SET();
        TW8836_PowerOff();
        Delay_1ms(50);
        TW8836_PowerOn();
        POWER_CarRecOn();//miller.tao20160324
#endif
        //Delay_1ms(1000);
        System_openlogo_init_ok=0;


        //Sys.canbus_type=tuguan_cantype;//tuguan_cantype;//test



        Delay_1ms(500);
        init_touch();
        IWDG_ReloadCounter();//清狗
        IWDG_load_Count=0;
        TW8836_init();
       // MTN5_init();
        InitSystem();
		
	//	Delay_1ms(200);
	//	Init_FontOSD();	//test



		IWDG_ReloadCounter();//清狗
        IWDG_load_Count=0;
	/*	
		DLVDS_OE_PORT_RESET();
		Delay_1ms(10);
		A91_date_checked();
		Delay_1ms(50);
		DLVDS_OE_PORT_SET();
		Delay_1ms(50);
	*/	
		Audio_Checked();
		Delay_1ms(50);
		Audio_Init();
		

        IWDG_ReloadCounter();//清狗
        IWDG_load_Count=0;
		
        g_GPS_DATA.uSoundFlag = 0;

  //    McuSetRearOutAudioMuteOff();	//modify by Feng 20161026
        SW_GPS_CAR_TO_CAR();

        McuSetNaviMuteOn();
   //     AudioMainSPKSource(E_AUDIO_SOURCE_GPS);//open gps sound
   //     AudioMainSource(E_AUDIO_SOURCE_GPS);//millertao20160317
   //      De_Audio_SetVol(Sys.NaviVolum, SYSTEM_MODE_IN_NAVI);
		SysMainModeAudioLoad(SYSTEM_MODE_IN_NAVI);	//ch6
		Sys.Audio_Source = SYSTEM_MODE_IN_NAVI;
        McuSetNaviMuteOff();

        
        System_init_ok=0;



        if(CanPowerOnCheck()==2)
        {
            Powerwork_init_Status=Powerwork_init_process;
            Powerwork_init_count=200;
        }
        else
        {
            Powerwork_init_Status=Powerwork_init_wait;
            Powerwork_init_count=200;//300;//等待ARM初始化
        }
        break;
    case	Powerwork_init_wait:
        if(ACC_PIN_STATUS()==1)//guan ACC
        {
            if(CanPowerOnCheck()==2)
            {
                Powerwork_init_Status=Powerwork_init_ok;
                Powerwork_init_count=200;
            }
            else if((Sys.u8can_back_status==CAM_ON_from_can&&Sys.FS_select.car_rearview_id!=0) || (!BACK_PIN_STATUS() && Sys.FS_select.car_rearview_id==5) )
            {
                Powerwork_init_Status=Powerwork_init_ok;
                Powerwork_init_count=200;
            }
            else if(CanPowerOnCheck())//等待
            {
				McuSetNaviMuteOn();	//20170208
                BackLight(0);
				Sys.bOffScreenSwitch =1;
            }
            else
            {
                System_Power_Status=Poweroff_init;
                Poweroff_init_Status=Poweroff_init_exit;//直接关电不需要记忆
            }
        }
        else
        {
            Powerwork_init_Status=Powerwork_init_process;
            Powerwork_init_count=200;
        }

        break;
    case	 Powerwork_init_process:
	/*	
        BackLight(1);
		if(gGPSInitOk)
        {
			BL_Control_Send(1);
		}
		Sys.bOffScreenSwitch = 0;
	*/	
        OSD_LUT_glag=1;
        if(!Sys.FS_select.logo_type_onoff_id)
            Menu_page_DrawImage(main_page_OSD_logo,0);
        //Delay_1ms(300);
        Powerwork_init_Status=Powerwork_init_ok;
        Powerwork_init_count=200;
        break;
    case Powerwork_init_ok:

        m_BMW_CAN.benze_air_Disp=0;
#if 0
        Adjust_Source(SRC_NAVI);
#else
        if(Sys.u8can_back_status==CAM_ON_from_can)
		{
            Adjust_Source(SRC_CAM);
		}
		else if((!BACK_PIN_STATUS() && Sys.FS_select.car_rearview_id==5))
		{
			Adjust_Source(SRC_360);
		}
        else
        {
            if(Sys.Main_Source==SRC_CarMedia||Sys.Main_Source==SRC_NAVI ||Sys.Main_Source==SRC_FrontView)
                Adjust_Source(Sys.Main_Source);
            else
                Adjust_Source(SRC_CarMedia);
        }
#endif

		McuSetNaviMuteOff();
        BackLight(1);
		if(gGPSInitOk)
        {
			BL_Control_Send(1);
		}
		Sys.bOffScreenSwitch = 0;

        System_Power_Status=Powerwork;
        //	}

        break;
    case Powerwork_init_exit:
        break;
    }

    /*
    if(ACC_volt_eeror==1)
    {Byte i;

    	ACC_volt_eeror=0;
    	Sys.ACC_auto_on=1;//Acc On Auto Open
    	Volt_low_Off();
    	System_Power_Status=Poweroff;

    	for(i=0;i<100;i++)
    	{
    		if(Volt_detect()==TRUE)
    			break;
    		Delay_1ms(20);
    	}
    	if(i>=100)
    		Volt_low_close();
    	//判断是关ACC  收屏等处理
    }*/
//}
}
void System_Init(void)
{
	int i;

    Init_GlobalVariables();



    Read_Eerom_Data();

// 	Init_GlobalVariables(); //test

    System_Power_Status=Powerstanby;//Powerwork_init;//Powerstanby;
    Powerstany_Status=Powerstanby_start;
    Powerwork_init_Status=Powerwork_init_start;
    Poweroff_init_Status=Poweroff_init_start;
    Power_canbuswait_Status=Power_canbuswait_start;

    Powerstany_count=0;//==1  100MS
    Powerwork_init_count=0;//==1  100MS
    Poweroff_init_count=0;//==1  100MS

    //System_reset_auto_on=1;
    Sys.lcd_type = Panelhannstar09_DT;
    Sys.u8can_back_status = CAM_off_id;
    Sys.u8IO_back_status = CAM_off_id;
    Sys.u8back_status = CAM_OFF;

    m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
    m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_OFF;//Miller.Tao20141104
    m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
    m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
    g_stuCurPower.WVedio_show_timer=0;
    Sys.u8back_exit_auto=0;
    Sys.show_TFT_p=0xff;
	u8BackCurState_ID2 = 0;

    m_BMW_CAN.benze_Steering_angle=0x2000;

    byTouchStatus=0;
    PreTouchStatus=0xff;
    IWDG_load_Count=0;
    for(i=0; i<sizeof(touch_I2C_buff)/sizeof(touch_I2C_buff[0]); i++)
        touch_I2C_buff[i]=0;

    Can_key_cmd=key_null;
    //Sys.FS_select.cam_type_onoff_id=1;
    CAN_turner.count=0x80;
    CAN_turner.count2=0x80;
    Sys.main_osd=0xff;
    Sys.sub_osd=0xff;

    gNaviSystemOn = 1;
    gNaviCnt = 0;
    gNaviSendFlag = 0;
    Touch_flag=0;
	Sys.bOffScreenSwitch =0;
	Audio_IC_Addr=AV_A_SLAVE_ADD;
	gSyncToCarAux = 0;

	Sys_CarWinInfo.RetryFlag = 0;
    Sys_CarWinInfo.FrontLeftWin = 1;
    Sys_CarWinInfo.RearLeftWin = 1;
    Sys_CarWinInfo.FrontRightWin = 1;
    Sys_CarWinInfo.RearRightWin = 1;
    Sys_CarWinInfo.SkyWin = 1;

    m_BMW_CAN.AlarmFlag = 1;
    m_BMW_CAN.AlarmCnt = 0;

    wLockWinTimeout=0;
    m_BMW_CAN.WinStateRecvFlag = 0;

    m_BMW_CAN.LockState = 0;//init,miller.tao20150428
    m_BMW_CAN.LockCnt = 0;
	CarInfoBk.OILCONSUMPTION.OilConsumption = 0xffff;
	CarInfoBk.SurplusKil = 0xffff;
	CarInfoBk.CARSPEED.CarSpeed = 0xffff;
	CarInfoBk.CarSpeed_5S = 0xffff;
	CarInfoBk.TotalMil = 0xffffffff;

	g_stuSYSSRC.RingCallingFlag=2;//0;
	g_stuSYSSRC.event_occurse = 0;
	g_stuSYSSRC.soft_mute_Delay=0;
	g_stuSYSSRC.uCarPhoneFlag=0;
	LeftPushSendFlag = 0;

	BackStatus = 1;
	AccStatus = 1;
	PortDataBk = 0xff;
	

}

void Init_Poweron_Variables(void)
{


    g_src_flag1.char_field=0;//初始化标志
    g_src_flag2.char_field=0;//初始化标志

    Touch_status=0xff;
    Touch_valide_count=0;
    ACC_volt_eeror=0;

    System_openlogo_init_ok=0;
}

void Init_GlobalVariables(void)
{
	/******* EEPROM data 默认值 	***************/
    
    Sys.FS_select.car_suit_set_id.akey = 0;			//一键升窗，折叠后视
 	Sys.FS_select.car_suit_set_id.warn = 0;			//未关门报警
 	Sys.FS_select.car_suit_set_id.find = 0;			//寻车提示
 	Sys.FS_select.car_suit_set_id.autoradar = 0;	//自动开启雷达
 	Sys.FS_select.car_rearview_id=0x02;		//后视
    Sys.FS_select.car_input_res_id = 1;		//输出选择
    Sys.FS_select.car_type_onoff_id = 2;	//车型
    Sys.FS_select.DVD_onoff_id = 2;			//DVD选择
    Sys.FS_select.cmmb_type_onoff_id = 2;	//数字电视选择	
    Sys.FS_select.rec_type_onoff_id	= 2;	//记录仪选择
    
	Sys.Bright = 132;			//亮度值
	Sys.Contrast = 132;			//对比度值
	Sys.BackBright = 5;			//倒车亮度值
	Sys.BackContrast = 5;		//倒车对比度值

	Sys.NaviVolum = 0xff;		//导航音量
    Sys.NaviType = 1;				//导航类型

	Sys.CameraOnOff = 1;
	Sys.TrackLineOnOff = 1;

};



/**************************************************************************/
/*                                                                        */
/**************************************************************************/
/*********************************************
Function:		Gps_Send_POS
Description:
Write/Modify:	edwin
Time:		2011-12-8
 *********************************************/

#if 1
void Gps_Send_POS(WORD X, WORD Y, BYTE status)
{
    U32 tempX;
    U32 tempY;
    BYTE checksum = 0;
	BYTE action;
	
    tempX = X;
    tempY = Y;

#if 1
	
	USART_SendData(USART3, 0xa0);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	USART_SendData(USART3, 0x08);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	USART_SendData(USART3, 0x00);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	USART_SendData(USART3, 0x09);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	USART_SendData(USART3, 0x01);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	
    if (status == MSG_ACTION_BOUNCE)
    {
        USART_SendData(USART3, 0xe1);
		action=0xe1;
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
			;
    }
	else if(status == MSG_ACTION_KEEP)
    {
        USART_SendData(USART3, 0xa1);
		action=0xa1;
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
			;
    }		
	else
    {
        USART_SendData(USART3, 0x61);
		action=0x61;
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
			;
    }

	USART_SendData(USART3, tempX & 0xFF);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
	// SysDelay(GPS_SEND_DELAY);
	USART_SendData(USART3, (tempX >> 8) & 0xFF);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
	// SysDelay(GPS_SEND_DELAY);
	USART_SendData(USART3, tempY & 0xFF);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
	// SysDelay(GPS_SEND_DELAY);
	USART_SendData(USART3, (tempY >> 8) & 0xFF);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
	checksum = 0x08+0x00+0x09+0x01+action + ((BYTE)(tempX & 0xFF)) + ((BYTE)((tempX >> 8) & 0xFF)) + ((BYTE)(tempY & 0xFF)) + ((BYTE)((tempY >> 8) & 0xFF));
	//checksum = ~checksum;
	USART_SendData(USART3, checksum);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;

#else
    if (status == MSG_ACTION_BOUNCE)
    {
        USART_SendData(USART3, 0xe1);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        // SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, tempX & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        // SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, (tempX >> 8) & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        // SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, tempY & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        // SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, (tempY >> 8) & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        checksum = 0xe1 + ((BYTE)(tempX & 0xFF)) + ((BYTE)((tempX >> 8) & 0xFF)) + ((BYTE)(tempY & 0xFF)) + ((BYTE)((tempY >> 8) & 0xFF));
        checksum = ~checksum;
        USART_SendData(USART3, checksum);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
    }
    else if (status == MSG_ACTION_KEEP)
    {
        USART_SendData(USART3, 0xa1);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        // SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, tempX & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        // SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, (tempX >> 8) & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        //SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, tempY & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        //SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, (tempY >> 8) & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        checksum = 0xa1 + ((BYTE)(tempX & 0xFF)) + ((BYTE)((tempX >> 8) & 0xFF)) + ((BYTE)(tempY & 0xFF)) + ((BYTE)((tempY >> 8) & 0xFF));
        checksum = ~checksum;
        USART_SendData(USART3, checksum);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
    }
    else
    {

        //SWITC_GPS_ON();
        USART_SendData(USART3, 0x61);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
        //SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, tempX & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET);
        //SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, (tempX >> 8) & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        //SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, tempY & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        //SysDelay(GPS_SEND_DELAY);
        USART_SendData(USART3, (tempY >> 8) & 0xFF);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;
        checksum = 0x61 + ((BYTE)(tempX & 0xFF)) + ((BYTE)((tempX >> 8) & 0xFF)) + ((BYTE)(tempY & 0xFF)) + ((BYTE)((tempY >> 8) & 0xFF));
        checksum = ~checksum;
        USART_SendData(USART3, checksum);
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
            ;

    }
	#endif	
}



void Gps_Send_Double_POS(WORD X, WORD Y, BYTE status)
{
    U32 tempX;
    U32 tempY;
    BYTE checksum = 0;
	BYTE action;
	
    tempX = X;
    tempY = Y;


	
	USART_SendData(USART3, 0xa0);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	USART_SendData(USART3, 0x08);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	USART_SendData(USART3, 0x00);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	USART_SendData(USART3, 0x09);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
	USART_SendData(USART3, 0x01);
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;
#if 0 	
    if (status == MSG_ACTION_BOUNCE)
    {
        USART_SendData(USART3, 0xe1);
		action=0xe1;
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
			;
    }
	else if(status == MSG_ACTION_KEEP)
    {
        USART_SendData(USART3, 0xa1);
		action=0xa1;
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
			;
    }		
	else
    {
        USART_SendData(USART3, 0x61);
		action=0x61;
        while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
			;
    }

#endif	
	USART_SendData(USART3, status);
	action=status;
    while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
	;

	USART_SendData(USART3, tempX & 0xFF);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
	USART_SendData(USART3, (tempX >> 8) & 0xFF);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
	USART_SendData(USART3, tempY & 0xFF);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
	USART_SendData(USART3, (tempY >> 8) & 0xFF);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
	checksum = 0x08+0x00+0x09+0x01+action + ((BYTE)(tempX & 0xFF)) + ((BYTE)((tempX >> 8) & 0xFF)) + ((BYTE)(tempY & 0xFF)) + ((BYTE)((tempY >> 8) & 0xFF));
	//checksum = ~checksum;
	USART_SendData(USART3, checksum);
	while (USART_GetFlagStatus(USART3, USART_FLAG_TXE) == RESET)
		;
}


#endif

void Read_project(void)
{
#ifdef _ENABL_CES

    FlagStatus flashstatus = RESET;;

    //if(Sys.code_protected==0)
    {
        //flashstatus=FLASH_EnableWriteProtection(FLASH_WRProt_Pages0to3);

        //FLASH_ReadOutProtection(ENABLE);
        //Sys.code_protected = 1;
        /* Unlock the Flash Program Erase controller */
        flashstatus = FLASH_GetReadOutProtectionStatus();
        if(!flashstatus)
        {
            FLASH_Unlock();
            /* Erase all the option Bytes */
            FLASH_EraseOptionBytes();
            Delay_1ms(10);
            FLASH_ReadOutProtection(ENABLE);
            NVIC_SystemReset();
        }
        //FLASH_Lock();
    }
#endif
}


#ifdef DEBUG
/*******************************************************************************
 * Function Name  : assert_failed
 * Description    : Reports the name of the source file and the source line number
 *                  where the assert_param error has occurred.
 * Input          : - file: pointer to the source file name
 *                  - line: assert_param error line source number
 * Output         : None
 * Return         : None
 *******************************************************************************/
void assert_failed(u8 *file, u32 line)
{
    /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
    /* Infinite loop */
    while (1) {}
}
#endif


#undef __MAIN_C__
/******************* (C) COPYRIGHT 2008 STMicroelectronics *****END OF
     FILE****/

