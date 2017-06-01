#define _PANNEL_C_

#include "compile.h"
#include "pannel.h"
#include "pannel_includ.h"

#include "libr.h"
//#include "main.h"

#include "tw8836_func.h"



#include "i2c_driver.h"
void SetAutoDetectStd(void)
{
    BYTE val;
    BYTE page;

    page = ReadTW88(0xFF);

    val = ReadTW88_Page(0xb09);
    WriteTW88(0x09,val|0x01);		// SDTR

    WriteTW88(0xFF,page);
}


void Pannel_include(void)
{

}

void WritePannelData(BYTE sys)
{


    switch(sys)
    {
    case	Pannel_init_tw8836:
    case	Pannel_Poweron:
    case	Pannel_poweroff:
    case	Pannel_init_osd:
    case Pannel_TW8836_SWRST:
        WritePannelData_Func(sys);
        break;
    //case	Pannel_init_tw8836:
    case Pannel_ARM_type:
    case Pannel_CarMedia_type:
    case Pannel_CVBS_type:
        WritePannelData_Func(sys);
        //Delay_1ms(100);//
        //BackLight(1);
        break;
    default:
        return;
    }
}

void WritePannelData_Func(BYTE sys)
{
    UINT j ;
    BYTE index,val;

    if(Sys.show_TFT_p!=sys)
    {
        Sys.show_TFT_p=sys;
        BackLight(0);
		Sys.bOffScreenSwitch =1;
    }


    for(j = 0; j<8194; j += 2)
    {
        switch(Sys.lcd_type)
        {


        case Panelhannstar09_DT:
            switch(sys)
            {
            case	Pannel_init_tw8836:
                index =tInit_tw8836_9inch[j];
                val =tInit_tw8836_9inch[j+1];
                break;
           
          
            case	Pannel_DTV_888_type:
                index =tInit_DTV_9inch[j];
                val =tInit_DTV_9inch[j+1];
                break;


            case Pannel_CarMedia_type:
                index = tInit_CarMedia_9inch[j];	//
                val = tInit_CarMedia_9inch[j+1];
                break;
			case Pannel_CarMedia_Small_type:	
				index = tInit_CarMedia_Small_9inch[j];
				val = tInit_CarMedia_Small_9inch[j+1];
				break;
            case Pannel_CVBS_type:
                index = tInit_CVBS_9inch[j];
                val = tInit_CVBS_9inch[j+1];
                break;
            case Pannel_DTV_type:
                index = tInit_DTV_9inch[j];
                val = tInit_DTV_9inch[j+1];
                break;
			case Pannel_CVBS_0_type:
				index = tInit_CVBS_0_9inch[j];
                val = tInit_CVBS_0_9inch[j+1];
				break;	
            default:
                return;
            }
            break;

        default:


            break;
        }


        if(val == 0xFF && index == 0xFF)
            break;

        WriteTW88(index, val);

    }

    //SetAutoDetectStd();//自动制式检测


    WriteTW88(0xff, 0x00);		// set page 0
    //PannelType_last=sys;
}
void DownLoadGamma(void)
{}

void  Set_PIP_Zoom(BYTE type,BYTE zoom)
{
}
void  Set_PIP_Position(BYTE winno,UINT xpos,UINT ypos)
{
}
void  Set_PIP_Window(BYTE winno,BYTE on_off)
{
    WORD index = 0x616;
    BYTE dat;

    if(winno==PIP_WINDOW1)
    {
        index = 0x616;

    }
    else// if(winno==PIP_WINDOW2)
    {
        index = 0x646;
    }
    dat = ReadTW88_Page(index);
    if(on_off==PIP_ON) WriteTW88(index, dat | 0x20);
    else     WriteTW88(index, dat & 0xdf);
}

void Clear_all_PIP(void)
{
    Set_PIP_Window(PIP_WINDOW1,PIP_OFF);
    Set_PIP_Window(PIP_WINDOW2,PIP_OFF);
}


