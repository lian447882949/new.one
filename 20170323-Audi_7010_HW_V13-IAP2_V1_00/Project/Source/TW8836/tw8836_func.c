#define _REG_C_

#include "compile.h"

#include "tw8836_const.h"

#include "i2c_driver.h"
#include "tw8836_func.h"

#include "pannel.h"
#include "main.h"


#include "libr.h"
#include "port.h"
#include"com.h"
#include "includes.h"

//=============================================================================
//初始化端口状态
//=============================================================================
#if 0
void	InitGPIO()
{
    WriteTW88(0xFF,0);
    WriteTW88(0x40 +0,0x03);		//Enable
    WriteTW88(0x50 + 0,0x07);	//OUT
    WriteTW88(0x90 + 0,0x07);		//PU

    WriteTW88(0x40 +8,0x30);		//Enable
    WriteTW88(0x50 + 8,0x30);	//OUT
    WriteTW88(0x90 + 8,0x30);		//PU

}
void	Write_GPIO(WORD pins,BYTE val)
{
    BYTE port,index;
    BYTE reg,reg_val;

    port = (BYTE)(pins >> 8);
    index = (BYTE)(pins%256);

    if(port > 0)
    {
        //GPIO
        WriteTW88(0xFF,0);
        reg = 0x70 + port - 1;
        reg_val = ReadTW88(reg);
        if(val)
            reg_val |= index;
        else
            reg_val &= (~index);

        WriteTW88(reg,reg_val);
    }

}
BYTE	Read_GPIO(WORD pins)
{
    BYTE port,index;
    BYTE reg,reg_val = 0;

    port = (BYTE)(pins >> 8);
    index = (BYTE)(pins%256);

    if(port > 0)
    {
        //GPIO
        WriteTW88(0xFF,0);
        reg = 0x60 + port - 1;
        reg_val = ReadTW88(reg);

        reg_val	&= index;
    }
    if(reg_val)
        return 1;
    else
        return 0;
}
#endif
//=============================================================================
//初始化屏
//=============================================================================
void	InitPanel()
{

}



void Init_TW8836_Variables(void)
{
    CVBS_Status=NTSC;
    CSYNC_Status=HAS_CSYNC;
    MainIsCvbs_ID=1;

    main_signal_Status=HAS_SIGNAL;
    pip1_signal_Status=HAS_SIGNAL;
    pip2_signal_Status=HAS_SIGNAL;
    main_signal_last_Status=HAS_SIGNAL;
    pip1_signal_last_Status=HAS_SIGNAL;
    pip2_signal_last_Status=HAS_SIGNAL;

    has_signal_Count=0;
    no_signal_Count=0;

    Mouse_buff_init();

}
void TW8836_Reset(void)
{
    GPIO_ResetBits(TW8836_RST_PORT, TW8836_RST_Pin);
    Delay_1ms(100);
    GPIO_SetBits(TW8836_RST_PORT, TW8836_RST_Pin);
}
void TW8836_init(void)
{


    Init_TW8836_Variables();
    TW8836_Reset();

    IWDG_ReloadCounter();//清狗


    //WritePannelData_Func(Pannel_TW8836_SWRST);	//
    WritePannelData_Func(Pannel_init_tw8836);////Pannel_ARM_type
}
/*
this function is to change tw8836 's registers when the system is in A33,car,cvbs;
writed by miller.tao
date:20150730

*/
void TW8836_Src(BYTE src)
{
    //TW8836_WaitVBlank(1);

    switch(src)
    {
    case SRC_NAVI:
		NAVI_OE_Reset();	//add by Feng
		CAMERA_OE_Set();	//
		//R24_OE_Set();		//V2 test
		
		WritePannelData_Func(Pannel_DTV_type);
		
        if(gGPSInitOk )
		{
			Sys_SRC_Send(1);
        }
        break;
    case SRC_CAM:
        if(Sys.FS_select.car_rearview_id==0 || Sys.FS_select.car_rearview_id==1|| Sys.FS_select.car_rearview_id==5)
        {
			NAVI_OE_Set();	//add by Feng
			//CAMERA_OE_Set();//Add by Feng 20161026
			//R24_OE_Reset();
			if(Sys.FS_select.car_input_res_id == 0)	//
			{
				WritePannelData_Func(Pannel_CarMedia_Small_type);

			}
			else if(Sys.FS_select.car_input_res_id == 1)//宽屏
			{
				WritePannelData_Func(Pannel_CarMedia_Small_type);
	
			}
			else
			{
            	WritePannelData_Func(Pannel_CarMedia_type);
			}

			
        }
        else if(Sys.FS_select.car_rearview_id==2 || Sys.FS_select.car_rearview_id==3)
        {
		
            WritePannelData_Func(Pannel_CVBS_type);
                
        }
        else if(Sys.FS_select.car_rearview_id==4)//360
        {
            WritePannelData_Func(Pannel_CVBS_type);

        }
        break;
    case SRC_CarMedia:
		
		NAVI_OE_Set();	//add by Feng
	//	CAMERA_OE_Set();//Add by Feng 20161026
	//	R24_OE_Reset();
	//	Delay_1ms(100);
		if(gGPSInitOk )
		{
		Sys_SRC_Send(0);	//暂停音源
		}
		if(Sys.FS_select.car_input_res_id == 0)	//标准
		{	
			WritePannelData_Func(Pannel_CarMedia_Small_type);
			
		}
		else if(Sys.FS_select.car_input_res_id == 1)//宽屏
		{		
			WritePannelData_Func(Pannel_CarMedia_Small_type);
			
		}
		else
		{
       	 	WritePannelData_Func(Pannel_CarMedia_type);
		}
        break;
	case SRC_FrontView:
		WritePannelData_Func(Pannel_CVBS_0_type);

		break;	
	case SRC_TV:
	{
	//	McuSetNaviMuteOn();
	//	SysMainModeAudioLoad(SYSTEM_MODE_IN_TV);	//ch0
	//	McuSetNaviMuteOff();
		if(gGPSInitOk )
		{
			Sys_SRC_Send(0);
		}
		WritePannelData_Func(Pannel_CVBS_0_type);
		TW8836_WritePage(0x02);
		TW8836_Write(0x09, 0x00);
		TW8836_Write(0x0a, 0x05);
	}break;

	case SRC_360:
		WritePannelData_Func(Pannel_CVBS_type);

		break;
    default :
        break;


    }
}

void	BackLight(BYTE on)
{
    //背光
    if(on)
    {
//		WriteTW88(0xff, 0x09);
//		WriteTW88( 0xF5, 0x02);
//		Delay_1ms(200);
//		WriteTW88( 0xF5, 0x03);
//		Delay_1ms(200);

        //SET_BACKLIGHT;
        //GPIO_SetBits(GPIOB, P_TFT_PWR);
        GPIO_SetBits(GPIOB, P_TFT_PWR);

        /*		WriteTW88(0xff, 0x00);
        		WriteTW88( 0x40, ReadTW88(0x40)|0x01 );
        		WriteTW88( 0x50, ReadTW88(0x40)|0x01 );
        		WriteTW88( 0x60, ReadTW88(0x40)|0x01 );
        		WriteTW88( 0x70, ReadTW88(0x40)|0x01 );	 */

//		WriteTW88(0xff, 0x09);
//		WriteTW88( 0xF5, 0x07);
//		Delay_1ms(20);
    }
    else
    {
        //CLR_BACKLIGHT;
        /*		WriteTW88(0xff, 0x00);
        		WriteTW88( 0x40, ReadTW88(0x40)&0xFE );
        		WriteTW88( 0x50, ReadTW88(0x40)&0xFE );
        		WriteTW88( 0x60, ReadTW88(0x40)&0xFE );
        		WriteTW88( 0x70, ReadTW88(0x40)&0xFE );	*/

//		WriteTW88(0xff, 0x09);
//		WriteTW88( 0xF5, 0x00);
        //GPIO_ResetBits(GPIOB, P_TFT_PWR);
        GPIO_ResetBits(GPIOB, P_TFT_PWR);
    }
}

//FREERUN
void	PanelMute(BYTE on)
{
    BYTE page;
    page = ReadTW88(0xFF);
    if(on)
    {
        //WriteTW88(0xff, 0x01);
        //WriteTW88(0x06, 0x0F);
        WriteTW88(0xff, 0x04);
        WriteTW88(0x8A, 0x04);//ReadTW88(0x8A)|0x0C);
        WriteTW88(0x70, 0x20);//ReadTW88(0x70)|0x20);
    }
    else
    {
        //WriteTW88(0xff, 0x01);
        //WriteTW88(0x06, 0x00);

        WriteTW88(0xff, 0x04);
        //WriteTW88(0x8A, ReadTW88(0x8A)&0xf3);
        //delay(200);
        //WriteTW88(0x70, ReadTW88(0x70)&0xdd);
        WriteTW88(0x8A, 0x00);
        WriteTW88(0x70, 0x00);
    }

    WriteTW88(0xFF,page);
}
void	PanelBlack(BYTE on)
{
    if(on)
    {
        WriteTW88(0xff, 0x04);
        WriteTW88(0x70, ReadTW88(0x70)|0x20);
    }
    else
    {
        WriteTW88(0xff, 0x04);
        WriteTW88(0x70, ReadTW88(0x70)&0xDF);
    }
}





