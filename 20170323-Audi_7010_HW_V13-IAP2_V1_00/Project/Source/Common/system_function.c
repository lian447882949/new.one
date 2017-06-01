#define	_SYSTEM_FUNCTION_C_

#include "compile.h"
#include "includes.h"
#include "stm32f10x_conf.h"
#include "system_config.h"
#include "libr.h"
#include "system_function.h"

#include "main.h"

#include "port.h"

#include "com.h"





#include "i2c_driver.h"




/*******************************************
 * 函数名称：CanPowerOnCheck
 * 内容简介：detect can power on or not
 * 函数变量：无
 *				  :   检测时间为10ms
 *				  :
 *	返回值	  :     ret =0( can Off)
                                          = 1(can on)
                                          =2(sleep/idle)
*******************************************/
BYTE CanPowerOnCheck (void)
{
    BYTE  ret =0;
    if(!g_stuCurPower.wPowerOnByCanTimer2)
    {
#if 1 //Miller.Tao20141104
        if(m_BMW_CAN.AudioPwr == SYSTEM_POWER_ON)
        {
            //m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
            m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
            m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
        }
#endif

    }


    if(!g_stuCurPower.wPowerOnByCanPwr)
    {
#if 1 //Miller.Tao20141107
        if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON)
        {
            m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_OFF;
            m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;//Miller.Tao20150119
            //m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;
        }
#endif

    }


    if((m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_OFF))
        ret = 0;
    else if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON&&m_BMW_CAN.AudioPwr == SYSTEM_POWER_OFF)
        ret =1;
    else if(m_BMW_CAN.benze_Pwr_acc == SYSTEM_POWER_ON&&m_BMW_CAN.AudioPwr == SYSTEM_POWER_ON)
        ret = 2;

    return ret;


}



