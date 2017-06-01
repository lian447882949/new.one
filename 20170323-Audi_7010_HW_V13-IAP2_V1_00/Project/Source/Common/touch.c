/*
this file is to define the functions using uart port

by Miller.Tao
date :20150730

*/
#define _TOUCH_C_
#include "includes.h"



#if 1//touch
void touch_i2cSetSCL(BYTE is_hl)
{
if(is_hl)
	GPIO_SetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
else
	GPIO_ResetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
}

void touch_i2cSetSDA(BYTE is_hl)
{
	if(is_hl)
		GPIO_SetBits(CTOUCH_SDA_PORT,CTOUCH_SDA_PIN);
	else
		GPIO_ResetBits(CTOUCH_SDA_PORT,CTOUCH_SDA_PIN);
}


 void touch_i2cSetSCL_Chk(BYTE bSet)
{
    WORD ucDummy; // loop dummy
    touch_i2cSetSCL(bSet); // set SCL pin
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
 void touch_i2cSetSDA_Chk(BYTE bSet)
{
    WORD ucDummy; // loop dummy
    touch_i2cSetSDA(bSet); // set SDA pin
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
 void touch_i2c_Delay(void)
{
    u32 i = 50;//,k=0;
	//for(;k<10;k++)
    while (i--) {}
}

//////////////////////////////////////////////////////
// I2C start signal.
// <comment>
//  SCL ________
//              \_________
//  SDA _____
//           \____________
//
// Return value: None
//////////////////////////////////////////////////////
bool touch_i2c_Start(void)
{
    bool bStatus = TRUE; // success status
    touch_i2cSetSDA_Chk(_HIGH);
    touch_i2c_Delay();
    touch_i2cSetSCL_Chk(_HIGH);
    touch_i2c_Delay();
    if ((touch_i2cSCL_PIN_STATUS() == _LOW) || (touch_i2cSDA_PIN_STATUS() == _LOW))
    {
        bStatus = FALSE;
    }
    else
    {
        touch_i2cSetSDA(_LOW);
        touch_i2c_Delay();
        touch_i2cSetSCL(_LOW);
    }
    return bStatus;
}

/////////////////////////////////////////
// I2C stop signal.
// <comment>
//              ____________
//  SCL _______/
//                 _________
//  SDA __________/
/////////////////////////////////////////
void touch_i2c_Stop(void)
{
    touch_i2cSetSCL(_LOW);
    touch_i2c_Delay();
    touch_i2cSetSDA(_LOW);
    touch_i2c_Delay();
    touch_i2cSetSCL(_HIGH);
    touch_i2c_Delay();
    touch_i2cSetSDA(_HIGH);
    touch_i2c_Delay();
}

//////////////////////////////////////////////////////////////////////////
// I2C send byte to device.
//
// Arguments: ucVal - send byte
// Return value: I2C acknowledge bit
//               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//////////////////////////////////////////////////////////////////////////
BYTE touch_i2c_SendByte(BYTE ucVal)
{
    BYTE ucMask = 0x80;
    BYTE bAck; // acknowledge bit
		//	SET_SDA_OUT();
    while (ucMask)
    {
        if (ucVal & ucMask)
        {
            touch_i2cSetSDA_Chk(_HIGH);
        }
        else
        {
            touch_i2cSetSDA_Chk(_LOW);
        }
        touch_i2c_Delay();
        touch_i2cSetSCL_Chk(_HIGH); // clock
        touch_i2c_Delay();
        touch_i2cSetSCL(_LOW);
        touch_i2c_Delay();
        ucMask >>= 1; // next
    } // while
    // recieve acknowledge
    touch_i2cSetSDA(_HIGH);
    touch_i2c_Delay();
    touch_i2cSetSCL(_HIGH);
    touch_i2c_Delay();
	//touch_SET_SDA_IN();
    if (touch_i2cSDA_PIN_STATUS())
    {
        bAck = _HIGH;
    }
    //no ack
    else
    {
        bAck = _LOW;
    }
    // recieve acknowlege
    touch_i2cSetSCL(_LOW);
	//touch_SET_SDA_OUT();
		touch_i2c_Delay();
    return (bAck);
}

//////////////////////////////////////////////////////////////////////////
// I2C receive byte from device.
//
// Return value: receive byte
//////////////////////////////////////////////////////////////////////////
BYTE touch_i2c_ReceiveByte(bool bAck)
{
    BYTE ucReceive = 0;
    BYTE ucMask = 0x80;
    while (ucMask)
    {
		//touch_SET_SDA_OUT();
        touch_i2cSetSDA(_HIGH);
		  touch_i2c_Delay();
        touch_i2cSetSCL(_HIGH);
		//i2c_Delay();
		//touch_SET_SDA_IN();
        if (touch_i2cSDA_PIN_STATUS())// == _HIGH)
        {
            ucReceive |= ucMask;
        }
        touch_i2cSetSCL(_LOW);
        touch_i2c_Delay();
        ucMask >>= 1;
    } // while

    if (bAck)
        // acknowledge
    {
        touch_i2cSetSDA_Chk(I2C_ACKNOWLEDGE);
    }
    else
        // non-acknowledge
    {
        touch_i2cSetSDA_Chk(I2C_NON_ACKNOWLEDGE);
    }
    touch_i2c_Delay();
    touch_i2cSetSCL(_HIGH);
    touch_i2c_Delay();
    touch_i2cSetSCL(_LOW);
    return ucReceive;
}

//////////////////////////////////////////////////////////////////////////
// I2C access start.
//
// Arguments: ucSlaveAdr - slave address
//            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//////////////////////////////////////////////////////////////////////////
bool touch_i2c_AccessStart(BYTE ucSlaveAdr, I2C_Direction trans_t)
{
    WORD ucDummy; // loop dummy
    if (trans_t == I2C_READ)
        // check i2c read or write
    {
        ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr);
		//i2c_Delay();
    }
    // read
    else
    {
        ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr);
		touch_i2c_Delay();
    }
    // write
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        touch_i2c_Delay();
		//i2c_Delay();
        if (touch_i2c_Start() == FALSE)
        {
            continue;
        }
        if (touch_i2c_SendByte(ucSlaveAdr) == I2C_ACKNOWLEDGE)
            // check acknowledge
        {
            return TRUE;
        }
        //printf("ucSlaveAdr====%x", ucSlaveAdr);
        touch_i2c_Stop();
		touch_i2c_Delay();
		touch_i2c_Delay();
       // SysDelay(2);
    }
    return FALSE;
}

/////////////////////////////////////////////////////////////////
// I2C write bytes to device.
//
// Arguments: ucSlaveAdr - slave address
//            ucSubAdr - sub address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////
void touch_i2cBurstWriteBytes(BYTE ucSlaveAdr, BYTE ucSubAdr1, BYTE ucSubAdr2, BYTE 
*pBuf, BYTE

                       ucBufLen)
{
    WORD ucDummy; // loop dummy
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        if (touch_i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        {
            continue;
        }
        if (touch_i2c_SendByte(ucSubAdr1) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }

		if (touch_i2c_SendByte(ucSubAdr2) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }
        while (ucBufLen--)
            // loop of writting data
        {
            touch_i2c_SendByte(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while
        break;
    } // while
    touch_i2c_Stop();
	
}

/////////////////////////////////////////////////////////////////
// I2C read bytes from device.
//
// Arguments: ucSlaveAdr - slave address
//            ucSubAdr - sub address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////
void touch_i2cBurstReadBytes(BYTE ucSlaveAdr, BYTE ucSubAdr1, BYTE ucSubAdr2, BYTE *
pBuf, BYTE

                       ucBufLen)
{
    WORD ucDummy; // loop dummy
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        if (touch_i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        {
            continue;
        }
		if (touch_i2c_SendByte(ucSubAdr1) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }
      
		if (touch_i2c_SendByte(ucSubAdr2) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }
        if (touch_i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
        {
            continue;
        }
        while (ucBufLen--)
            // loop to burst read
        {
            if (ucBufLen)
            {
                *pBuf = touch_i2c_ReceiveByte(TRUE);
            }
            // receive byte
            else
            {
                *pBuf = touch_i2c_ReceiveByte(FALSE);
            }
            // receive byte
            pBuf++; // next byte pointer
        } // while
        break;
    } // while
    touch_i2c_Stop();
}

/////////////////////////////////////////////////////////////////
// I2C read current bytes from device.
//
// Arguments: ucSlaveAdr - slave address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////
void touch_i2cBurstCurrentBytes(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
{
    WORD ucDummy; // loop dummy
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        if (touch_i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
        {
            continue;
        }
        while (ucBufLen--)
            // loop to burst read
        {
            if (ucBufLen)
            {
                *pBuf = touch_i2c_ReceiveByte(TRUE);
            }
            // receive byte
            else
            {
                *pBuf = touch_i2c_ReceiveByte(FALSE);
            }
            // receive byte
            pBuf++; // next byte pointer
        } // while
        break;
    } // while
    touch_i2c_Stop();
}


/////////////////////////////////////////////////////////////////
// I2C write bytes to device.
//
// Arguments: ucSlaveAdr - slave address
//            ucSubAdr - sub address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////
void touch_i2cBurst_1addr_WriteBytes(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE
                       ucBufLen)
{
    WORD ucDummy; // loop dummy
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        if (touch_i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        {
            continue;
        }
        if (touch_i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }

        while (ucBufLen--)
            // loop of writting data
        {
            touch_i2c_SendByte(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while
        break;
    } // while
    touch_i2c_Stop();
	
	//Delay(10000);
}

/////////////////////////////////////////////////////////////////
// I2C read bytes from device.
//
// Arguments: ucSlaveAdr - slave address
//            ucSubAdr - sub address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////
void touch_i2cBurst_1addr_ReadBytes(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE
                       ucBufLen)
{
    WORD ucDummy; // loop dummy
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        if (touch_i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
        {
            continue;
        }
		if (touch_i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }
      //i2c_Stop();
        if (touch_i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
        {
            continue;
        }
        while (ucBufLen--)
            // loop to burst read
        {
            if (ucBufLen)
            {
                *pBuf = touch_i2c_ReceiveByte(TRUE);
            }
            // receive byte
            else
            {
                *pBuf = touch_i2c_ReceiveByte(FALSE);
            }
            // receive byte
            pBuf++; // next byte pointer
        } // while
        break;
    } // while
    touch_i2c_Stop();
}

#endif

void check_addr(void)
{
	if (touch_i2c_AccessStart(0xba, I2C_WRITE) == FALSE)
	{
		Delay_1ms(10);
		if (touch_i2c_AccessStart(0x28, I2C_WRITE) == TRUE)
		GT911_adr=0x28;
	}
	else 
		{
				Delay_1ms(10);
	if (touch_i2c_AccessStart(0xba, I2C_WRITE) == TRUE)	
		GT911_adr=0xba;
	}
}


void init_touch(void)
{

		GPIO_SetBits(CTOUCH_SDA_PORT,CTOUCH_SDA_PIN);
		Delay_1ms(1);
		GPIO_SetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
		Delay_1ms(1);
	
		GPIO_SetBits(CTOUCH_INT_PORT,CTOUCH_INT_PIN);
		Delay_1ms(10);
		GPIO_ResetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
		Delay_1ms(10);
		GPIO_SetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
	//	Delay(10000);
	//Delay(10000);
	//SysDelay(10000);
	Delay_1ms(10);
		{
		GPIO_InitTypeDef GPIO_InitStructure;
		GPIO_InitStructure.GPIO_Pin = CTOUCH_INT_PIN;
		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
		GPIO_Init(CTOUCH_INT_PORT,&GPIO_InitStructure);
	}
	Delay_1ms(10);
	check_addr();


#if 0
	GPIO_ResetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
	Delay_1ms(10);

	GPIO_SetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
	Delay_1ms(10);

	GPIO_ResetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
	Delay_1ms(10);

	GPIO_SetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
	Delay_1ms(10);
	GPIO_SetBits(CTOUCH_INT_PORT,CTOUCH_INT_PIN);
	Delay_1ms(10);
	GPIO_SetBits(CTOUCH_RST_PORT,CTOUCH_RST_PIN);
	Delay_1ms(10);
	Delay_1ms(10);
		{
		GPIO_InitTypeDef GPIO_InitStructure;
		GPIO_InitStructure.GPIO_Pin = CTOUCH_INT_PIN;
		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
		GPIO_Init(CTOUCH_INT_PORT,&GPIO_InitStructure);
	}
	//EXIT_Configuration();
    GPIO_SetBits(CTOUCH_SDA_PORT,CTOUCH_SDA_PIN);
	Delay_1ms(10);
	GPIO_SetBits(CTOUCH_SCL_PORT,CTOUCH_SCL_PIN);
	Delay_1ms(10);
	//  i2cBurstWriteBytes(GT911_adr,0x80,0x47, GT911_init, sizeof(GT911_init)/sizeof(GT911_init[0]));

	  #endif
	  
	  touch_I2C_buff[0]=0;
	  touch_i2cBurstWriteBytes(GT911_adr,0x80,0x40, &touch_I2C_buff[0], 1);
	  Delay_1ms(10);
	  touch_i2cBurstReadBytes(GT911_adr,0x81,0x4e, touch_I2C_buff, 6);
	  touch_I2C_buff[0]=0;
	  touch_i2cBurstWriteBytes(GT911_adr,0x81,0x4e, &touch_I2C_buff[0], 1);
}
