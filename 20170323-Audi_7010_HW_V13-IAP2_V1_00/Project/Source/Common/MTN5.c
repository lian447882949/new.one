/*
this file is to define the functions using uart port

by Miller.Tao
date :20150730

*/
#define _MTN5_C_
#include "includes.h"


void MTN5_i2cSetSDA(BYTE is_hl)
{
	#if 0	//modify by Feng 20161026
	if(is_hl)
		GPIO_SetBits(MTN5_DATA_PORT,MTN5_DATA_PIN);
	else
		GPIO_ResetBits(MTN5_DATA_PORT,MTN5_DATA_PIN);
	#endif
}

#if 0 //modify by Feng 20161026
void MTN5_i2cSetSCL(BYTE is_hl)
{
if(is_hl)
	GPIO_SetBits(MTN5_CLK_PORT,MTN5_CLK_PIN);
else
	GPIO_ResetBits(MTN5_CLK_PORT,MTN5_CLK_PIN);
}




 void MTN5_i2cSetSCL_Chk(BYTE bSet)
{
    WORD ucDummy; // loop dummy
   // touch_i2cSetSCL(bSet); // set SCL pin
    if (bSet == _HIGH)
        // if set pin high
    {
        ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        while ((!touch_i2cSCL_PIN_STATUS()) && (ucDummy--))
            ;
        // check SCL pull high
    }
}

/////////////////////////////////////////
// Set I2C SDA pin high/low
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
 void MTN5_i2cSetSDA_Chk(BYTE bSet)
{
    WORD ucDummy; // loop dummy
    //touch_i2cSetSDA(bSet); // set SDA pin
    if (bSet == _HIGH)
        // if set pin high
    {
        ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        while ((!touch_i2cSDA_PIN_STATUS()) && (ucDummy--))
            ;
        // check SDA pull high
    }
}

//////////////////////////////////////////////////////////////
// Delay 4us
//////////////////////////////////////////////////////////////
 void MTN5_i2c_Delay(void)
{
    u32 i = 50;//,k=0;
	//for(;k<10;k++)
    while (i--) {}
	Delay_1ms(1);
}


//////////////////////////////////////////////////////////////////////////
// I2C send byte to device.
//
// Arguments: ucVal - send byte
// Return value: I2C acknowledge bit
//               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//////////////////////////////////////////////////////////////////////////
BYTE MTN5_i2c_SendByte(BYTE ucVal)
{
    BYTE ucMask = 0x01;
    BYTE bAck; // acknowledge bit
		//	SET_SDA_OUT();

	MTN5_i2cSetSDA(_HIGH);
    MTN5_i2c_Delay();
    MTN5_i2cSetSCL(_HIGH);
	
	MTN5_i2cSetSCL(_LOW);
	Delay_1ms(5);
    while (ucMask)
    {
   		 MTN5_i2cSetSCL(_LOW);
        if (ucVal & ucMask)
        {
            MTN5_i2cSetSDA(_HIGH);
        }
        else
        {
            MTN5_i2cSetSDA(_LOW);
        }
        MTN5_i2c_Delay();
        MTN5_i2cSetSCL(_HIGH); // clock
        MTN5_i2c_Delay();
		
        ucMask <<= 1; // next
    } // while
    // recieve acknowledge
    MTN5_i2cSetSDA(_HIGH);
    MTN5_i2cSetSCL(_HIGH);
	//touch_SET_SDA_IN();
    
    return 0;
}

#endif

void MTN5_init(void)
{
	//MTN5_i2c_SendByte(0xef);
	IR_HD_StartIrSend(0xef);

}

void IR_HD_StartIrSend(u8 pData)
{
	//if(g_stuIR_CNTR.u8SendProgress != IR_SEND_DATA_end)
	//	return;
	
    g_stuIR_CNTR.u8SendProgress = IR_SEND_HEAD_5MS;
    g_stuIR_CNTR.u8PulseLenCnt = 0;
    g_stuIR_CNTR.u8SendBitIndex = 0;

    g_stuIR_CNTR.u8SendBuff[0] = pData;
   // g_stuIR_CNTR.u8SendBuff[1] = HD_USER_CODE_2;
   // g_stuIR_CNTR.u8SendBuff[2] = pData;
   // g_stuIR_CNTR.u8SendBuff[3] = 0xFF ^ pData;
   // MTN5_i2cSetSDA(0); //'1'
	//Delay_1ms(5);
	//MTN5_i2cSetSDA(1);
	
	//capture = TIM_GetCapture1(TIM2);
	TIM_SetCompare1(TIM2, TIM_GetCapture1(TIM2) + CCR1_Val);
    TIM_ITConfig(TIM2, TIM_IT_CC1, ENABLE);
    //TIM_ITConfig(TIM2, TIM_IT_CC2, ENABLE);

    //SysDelay(100);
}

void IN_MTN5_IRSendCodeTask(void)
{
    switch (g_stuIR_CNTR.u8SendProgress)
    {
    case IR_SEND_HEAD_5MS:
		
		MTN5_i2cSetSDA(0); //'1'
		#if 1
		if(g_stuIR_CNTR.u8PulseLenCnt>=25)
			{
			//MTN5_i2cSetSDA(1);
			 g_stuIR_CNTR.u8PulseLenCnt = 0;
            g_stuIR_CNTR.u8SendBitIndex = 0;
			g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_SURE;
			}
		g_stuIR_CNTR.u8PulseLenCnt++;
		#endif
        break;
    case IR_SEND_DATA_SURE:
        //
        if (g_stuIR_CNTR.u8SendBitIndex >= 8)
        {
            //send finish
            g_stuIR_CNTR.u8PulseLenCnt = 0;
            g_stuIR_CNTR.u8SendBitIndex = 0;
            MTN5_i2cSetSDA(1);
            //TIM_ITConfig(TIM2, TIM_IT_CC1, DISABLE);
			g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_end;
            break;
        }
        if (g_stuIR_CNTR.u8SendBuff[g_stuIR_CNTR.u8SendBitIndex / 8] &(1 <<
                (g_stuIR_CNTR.u8SendBitIndex % 8)))
        {
            g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_1; //
            g_stuIR_CNTR.u8PulseLenCnt = 0;
            MTN5_i2cSetSDA(1);
        }
        else
        {
            g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_0;
            g_stuIR_CNTR.u8PulseLenCnt = 0;
            MTN5_i2cSetSDA(1);
        }
        break;
    case IR_SEND_DATA_1:
        if (g_stuIR_CNTR.u8PulseLenCnt >= 2)
        {
            MTN5_i2cSetSDA(0);
            g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_SURE;
            g_stuIR_CNTR.u8PulseLenCnt = 0;
            g_stuIR_CNTR.u8SendBitIndex++;
           // break;
        }
        else
        {
            MTN5_i2cSetSDA(1);
        }
        g_stuIR_CNTR.u8PulseLenCnt++;
        break;
    case IR_SEND_DATA_0:
			if(g_stuIR_CNTR.u8PulseLenCnt>=2)
				{
            g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_SURE;
            g_stuIR_CNTR.u8PulseLenCnt = 0;
            g_stuIR_CNTR.u8SendBitIndex++;
				}
         else
		 	MTN5_i2cSetSDA(0);
		 
        	g_stuIR_CNTR.u8PulseLenCnt++;
        break;
    default:
		g_stuIR_CNTR.u8SendProgress = IR_SEND_DATA_end;
        break;
    }
}

//////////////////////////////////////////////////////////////////////////
// I2C receive byte from device.
//
// Return value: receive byte
//////////////////////////////////////////////////////////////////////////

