
#define _I2C_DRIVER_C_

/* Includes ------------------------------------------------------------------*/
#include "includes.h"

//#include "i2c_driver.h"
//#include "main.h"
//#include "libr.h"

//#include "system_config.h"
//#include "port.h"
//#include "Type.h"


//static GPIO_InitTypeDef GPIO_InitStructure;
#if 0
//void i2cSetSCL(BYTE bSet);
//void i2cSetSDA(BYTE bSet);
void i2c_Delay(void);
BYTE i2c_Start(void);
BYTE i2c_ReceiveByte(BYTE bAck);

void i2cSetSCL_tw8823(BYTE bSet);
void i2cSetSDA_tw8823(BYTE bSet);
void i2c_Delay_tw8823(void);
//BYTE i2c_Start_tw8823(void);
//void i2c_Stop_tw8823(void);
//BYTE i2c_SendByte_tw8823(BYTE ucVal);
//BYTE i2c_ReceiveByte_tw8823(BYTE bAck);

/////////////////////////////////////////
// Set I2C SCL pin high/low.
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
/*
void i2cSetSCL(BYTE bSet)
{
    if(bSet) GPIO_SetBits(GPIOB, P_MAIN_SCL);
    else GPIO_ResetBits(GPIOB, P_MAIN_SCL);	
}
/////////////////////////////////////////
// Set I2C SDA pin high/low
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
void i2cSetSDA(BYTE bSet)
{
	   if(bSet) GPIO_SetBits(GPIOB, P_MAIN_SDA);
	   else   GPIO_ResetBits(GPIOB, P_MAIN_SDA);

}
*/
//////////////////////////////////////////////////////////////
// Delay 4us
//////////////////////////////////////////////////////////////
void i2c_Delay(void)
{
   delay_10us();
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
BYTE i2c_Start(void)
{
    BYTE bStatus = TRUE; // success status

   
    i2cSetSDA(_HIGH);
    i2c_Delay();
    i2cSetSCL(_HIGH);
    i2c_Delay();

   if ((i2cSCL_PIN_STATUS() == _LOW) || (i2cSDA_PIN_STATUS() == _LOW))
    {	
        bStatus = FALSE;		
    }
    else
    {	
        i2cSetSDA(_LOW);
        i2c_Delay();
        i2cSetSCL(_LOW);
	 i2c_Delay();
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
void i2c_Stop(void)
{
  /* Configure I2C1 pins: SCL and SDA */ 

    i2cSetSCL(_LOW);
    i2c_Delay();
    i2cSetSDA(_LOW);
    i2c_Delay();
    i2cSetSCL(_HIGH);
    i2c_Delay();
    i2cSetSDA(_HIGH);
    i2c_Delay();
}

//////////////////////////////////////////////////////////////////////////
// I2C send byte to device.
//
// Arguments: ucVal - send byte
// Return value: I2C acknowledge bit
//               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//////////////////////////////////////////////////////////////////////////
BYTE i2c_SendByte(BYTE ucVal)
{
    BYTE    ucMask = 0x80;
    BYTE     bAck=FALSE; // acknowledge bit
    BYTE     i;

    while(ucMask)
    {
        if (ucVal & ucMask)
		{	
            i2cSetSDA(_HIGH);
		}
        else
		{
            i2cSetSDA(_LOW);
		}
        i2c_Delay();
        i2cSetSCL(_HIGH); // clock
        i2c_Delay();
        i2cSetSCL(_LOW);
        i2c_Delay();

        ucMask >>= 1; // next
    } // while

    // recieve acknowledge
    i2cSetSDA(_HIGH);
    i2c_Delay();
    i2cSetSCL(_HIGH);
    i2c_Delay();

   ////////////////////////////////////////////////////////////	
   ///ACK check
	    for(i=0;i<100;i++)
	    {
		if(i2cSDA_PIN_STATUS()==0)
			break;

	    	i2c_Delay();
	    }
	    
	     bAck = i2cSDA_PIN_STATUS(); // recieve acknowlege

    ///////////////////////////////////////////////////////////	
    i2cSetSCL(_LOW);
	
    return (bAck);
}
//////////////////////////////////////////////////////////////////////////
// I2C receive byte from device.
//
// Return value: receive byte
//////////////////////////////////////////////////////////////////////////
#if 1
BYTE i2c_ReceiveByte(BYTE bAck)
{
    BYTE    ucReceive = 0;
    BYTE    ucMask = 0x80;

   i2cSetSDA(_HIGH);

    while(ucMask)
    {
		i2cSetSCL(_HIGH);
		i2c_Delay();
		if(GPIO_ReadInputDataBit(GPIOB, P_MAIN_SDA) == _HIGH)
			ucReceive |= ucMask;
	
		i2cSetSCL(_LOW);
		i2c_Delay();

        ucMask >>= 1;
    } // while
   
	if (bAck) // acknowledge
	{
        i2cSetSDA(I2C_ACKNOWLEDGE);
	}
    else // non-acknowledge
	{
        i2cSetSDA(I2C_NON_ACKNOWLEDGE);
	}

    i2c_Delay();
    i2cSetSCL(_HIGH);
    i2c_Delay();
    i2cSetSCL(_LOW);

    return ucReceive;

}
#endif	
//////////////////////////////////////////////////////////////////////////
// I2C access start.
//
// Arguments: ucSlaveAdr - slave address
//            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//////////////////////////////////////////////////////////////////////////
BYTE i2c_AccessStart(BYTE ucSlaveAdr, I2C_Direction trans_t)
{
    BYTE ucDummy; // loop dummy

    if (trans_t == I2C_READ) // check i2c read or write
        ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
    else
        ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write

    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {    
	i2c_Delay();
        if (i2c_Start() == FALSE)
            continue;

        if (i2c_SendByte(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
            return TRUE;
		//printf("ucSlaveAdr====%x", ucSlaveAdr);
        //i2c_Stop();
        //Delay_1ms(1);
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
BOOL i2cWrite_Sub(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while(ucDummy--)
    {
        if (i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;
        if (i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        while(ucBufLen--) // loop of writting data
        {
            i2c_SendByte(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    if(ucDummy==0)
    {
		return FALSE;
    }
    else
    {
		i2c_Stop();
		return TRUE;
    }
}

/////////////////////////////////////////////////////////////////
// I2C read bytes from device.
//
// Arguments: ucSlaveAdr - slave address
//            ucSubAdr - sub address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////

BOOL i2cRead_Sub(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while(ucDummy--)
    {
        if (i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;

        if (i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        if (i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
            continue;

        while(ucBufLen--) // loop to burst read
        {
            *pBuf = i2c_ReceiveByte(ucBufLen); // receive byte

            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    if(ucDummy==0)
    {
		return FALSE;
    }
    else
    {
		i2c_Stop();
		return TRUE;
    }
}

// I2C read current bytes from device.
//
// Arguments: ucSlaveAdr - slave address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////
BOOL i2cCurrent_Read(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while(ucDummy--)
    {
        if (i2c_AccessStart(ucSlaveAdr, I2C_READ) == FALSE)
            continue;

        while(ucBufLen--) // loop to burst read
        {
            *pBuf = i2c_ReceiveByte(ucBufLen); // receive byte

            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    if(ucDummy==0)
    {
		return FALSE;
    }
    else
    {
		i2c_Stop();
		return TRUE;
    }
}

BOOL i2cCurrent_Write(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
{ 
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while(ucDummy--)
    {
        if (i2c_AccessStart(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;

        while(ucBufLen--) // loop of writting data
        {
            i2c_SendByte(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    if(ucDummy==0)
    {
		return FALSE;
    }
    else
    {
		i2c_Stop();
		return TRUE;
    }
}
#endif

#if 1
///////////////////////////////////////////////////////////////////////////////////
//////I2C    sound
/////////////////////////////////////////
// Set I2C SCL pin high/low.
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
void i2cSetSCL_tw8823(BYTE bSet)
{

    if(bSet) GPIO_SetBits(GPIOC, P_TW8823_SCL);
    else GPIO_ResetBits(GPIOC, P_TW8823_SCL);	

}
/////////////////////////////////////////
// Set I2C SDA pin high/low
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
void i2cSetSDA_tw8823(BYTE bSet)
{

	   if(bSet) GPIO_SetBits(GPIOC, P_TW8823_SDA);
	   else   GPIO_ResetBits(GPIOC, P_TW8823_SDA);
	   
}
//////////////////////////////////////////////////////////////
// Delay 4us
//////////////////////////////////////////////////////////////
#define i2c_Delay_tw8823()
//{
   //delay_10us();
   //delay_5us();
	//delay_1us();
	//delay_1us();
	//delay_1us();
//}
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
BYTE i2c_Start_tw8823(void)
{
    BYTE bStatus = TRUE; // success status
   
    i2cSetSDA_tw8823(_HIGH);
    i2c_Delay_tw8823();
    i2cSetSCL_tw8823(_HIGH);
    i2c_Delay_tw8823();


   if ((i2cSCL_PIN_STATUS_tw8823() == _LOW) || (i2cSDA_PIN_STATUS_tw8823() == _LOW))
    {
	
        bStatus = FALSE;		
    }
    else
    {
	
        i2cSetSDA_tw8823(_LOW);
        i2c_Delay_tw8823();
        i2cSetSCL_tw8823(_LOW);
	 i2c_Delay_tw8823();
	
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
void i2c_Stop_tw8823(void)
{
  /* Configure I2C1 pins: SCL and SDA */ 

    i2cSetSCL_tw8823(_LOW);
    i2c_Delay_tw8823();
    i2cSetSDA_tw8823(_LOW);
    i2c_Delay_tw8823();
    i2cSetSCL_tw8823(_HIGH);
    i2c_Delay_tw8823();
    i2cSetSDA_tw8823(_HIGH);
    i2c_Delay_tw8823();

}

//////////////////////////////////////////////////////////////////////////
// I2C send byte to device.
//
// Arguments: ucVal - send byte
// Return value: I2C acknowledge bit
//               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//////////////////////////////////////////////////////////////////////////
BYTE i2c_SendByte_tw8823(BYTE ucVal)
{
    BYTE    ucMask = 0x80;
    BYTE     bAck=FALSE; // acknowledge bit
    BYTE     i;

    while(ucMask)
    {
        if (ucVal & ucMask)
            i2cSetSDA_tw8823(_HIGH);
        else
            i2cSetSDA_tw8823(_LOW);
        i2c_Delay_tw8823();
        i2cSetSCL_tw8823(_HIGH); // clock
        i2c_Delay_tw8823();
        i2cSetSCL_tw8823(_LOW);
        i2c_Delay_tw8823();

        ucMask >>= 1; // next
    } // while

    // recieve acknowledge
    i2cSetSDA_tw8823(_HIGH);
    i2c_Delay_tw8823();
    i2cSetSCL_tw8823(_HIGH);
    i2c_Delay_tw8823();

   ////////////////////////////////////////////////////////////	
   ///ACK check


	    for(i=0;i<100;i++)
	    {
		if(i2cSDA_PIN_STATUS_tw8823()==0)
		{
			break;
		}

	    	i2c_Delay_tw8823();
	    }

	//	if(i<100)
	//		i=9;
	//	else
	//		i=0;
	     bAck = i2cSDA_PIN_STATUS_tw8823(); // recieve acknowlege

    ///////////////////////////////////////////////////////////	
    i2cSetSCL_tw8823(_LOW);
	
    return (bAck);
}
//////////////////////////////////////////////////////////////////////////
// I2C receive byte from device.
//
// Return value: receive byte
//////////////////////////////////////////////////////////////////////////
BYTE i2c_ReceiveByte_tw8823(BYTE bAck)
{
    BYTE    ucReceive = 0;
    BYTE    ucMask = 0x80;

   i2cSetSDA_tw8823(_HIGH);

    while(ucMask)
    {
		i2cSetSCL_tw8823(_HIGH);
		i2c_Delay_tw8823();
		if(GPIO_ReadInputDataBit(GPIOC, P_TW8823_SDA) == _HIGH)
			ucReceive |= ucMask;
	
		i2cSetSCL_tw8823(_LOW);
		i2c_Delay_tw8823();

        ucMask >>= 1;
    } // while
   
  if (bAck) // acknowledge
        i2cSetSDA_tw8823(I2C_ACKNOWLEDGE);
    else // non-acknowledge
        i2cSetSDA_tw8823(I2C_NON_ACKNOWLEDGE);

    i2c_Delay_tw8823();
    i2cSetSCL_tw8823(_HIGH);
    i2c_Delay_tw8823();
    i2cSetSCL_tw8823(_LOW);

    return ucReceive;

}

//////////////////////////////////////////////////////////////////////////
// I2C access start.
//
// Arguments: ucSlaveAdr - slave address
//            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//////////////////////////////////////////////////////////////////////////
BYTE i2c_AccessStart_tw8823(BYTE ucSlaveAdr, I2C_Direction trans_t)
{
    BYTE ucDummy; // loop dummy

    if (trans_t == I2C_READ) // check i2c read or write
        ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
    else
        ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write

    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {    
	i2c_Delay_tw8823();
        if (i2c_Start_tw8823() == FALSE)
            continue;

        if (i2c_SendByte_tw8823(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
            return TRUE;
		//printf("ucSlaveAdr====%x", ucSlaveAdr);
       // i2c_Stop_tw8823();
       // Delay_1ms(1);
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
BOOL i2cWrite_Sub_tw8823(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy
	//BYTE i;

    //i2c_Stop_tw8823();
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while(ucDummy--)
    {
        if (i2c_AccessStart_tw8823(ucSlaveAdr, I2C_WRITE) == FALSE)
        {
            continue;
        }
        if (i2c_SendByte_tw8823(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        while(ucBufLen--) // loop of writting data
        {
            i2c_SendByte_tw8823(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while

        break;
    } // while

	i2c_Stop_tw8823();

    if(ucDummy==0)
    {
		return FALSE;
    }
    else
    {
		return TRUE;
    }
}

/////////////////////////////////////////////////////////////////
// I2C read bytes from device.
//
// Arguments: ucSlaveAdr - slave address
//            ucSubAdr - sub address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////

BOOL i2cRead_Sub_tw8823(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop_tw8823();
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while(ucDummy--)
    {
        if (i2c_AccessStart_tw8823(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;

        if (i2c_SendByte_tw8823(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        if (i2c_AccessStart_tw8823(ucSlaveAdr, I2C_READ) == FALSE)
            continue;

        while(ucBufLen--) // loop to burst read
        {
            *pBuf = i2c_ReceiveByte_tw8823(ucBufLen); // receive byte

            pBuf++; // next byte pointer
        } // while

        break;
    } // while

	i2c_Stop_tw8823();

    if(ucDummy==0)
    {
		return FALSE;
    }
    else
    {
		return TRUE;
    }
}

void WriteTW88(Byte addr,Byte b)	
{
	Byte buff[1];

	buff[0]=b;
   	i2cWrite_Sub_tw8823(TW8823_ADDRESS,addr,buff,1);
}
Byte ReadTW88(Byte addr)
{
	Byte buff[1];

	i2cRead_Sub_tw8823(TW8823_ADDRESS,addr,buff,1);
	return buff[0];
}	
void WriteTW88_Page(WORD addr,Byte b)	
{
	WriteTW88( 0xff, HIBYTE(addr ));	
	WriteTW88(LOBYTE(addr),b);
}
Byte ReadTW88_Page(WORD addr)
{
	WriteTW88( 0xff, HIBYTE(addr) );	
	return  ReadTW88(LOBYTE(addr));
}	


void WriteRadioFM(Byte addr,Byte b)	
{
	Byte buff[1];

	buff[0]=b;
   	i2cWrite_Sub_tw8823(RadioFM_ADDRESS,addr,buff,1);
}
Byte ReadRadioFM(Byte addr)
{
	Byte buff[1];

	i2cRead_Sub_tw8823(RadioFM_ADDRESS,addr,buff,1);
	return buff[0];
}

#endif
#if 0
void i2cSetSCL_TV(BYTE bSet);
void i2cSetSDA_TV(BYTE bSet);
void i2c_Delay_TV(void);
BYTE i2c_Start_TV(void);
BYTE i2c_ReceiveByte_TV(BYTE bAck);

/////////////////////////////////////////
// Set I2C SCL pin high/low.
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
void i2cSetSCL_TV(BYTE bSet)
{
    if(bSet) GPIO_SetBits(GPIOD, P_DTVTXD_ATVSCL);
    else GPIO_ResetBits(GPIOD, P_DTVTXD_ATVSCL);	
} 
/////////////////////////////////////////
// Set I2C SDA pin high/low
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
void i2cSetSDA_TV(BYTE bSet)
{
	   if(bSet) GPIO_SetBits(GPIOB, P_TV_SDA);
	   else   GPIO_ResetBits(GPIOB, P_TV_SDA);
}

//////////////////////////////////////////////////////////////
// Delay 4us
//////////////////////////////////////////////////////////////
void i2c_Delay_TV(void)
{
   delay_10us();
  // delay_50us();//tiger 0723
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
BYTE i2c_Start_TV(void)
{
    BYTE bStatus = TRUE; // success status

   
    i2cSetSDA_TV(_HIGH);
    i2c_Delay_TV();
    i2cSetSCL_TV(_HIGH);
    i2c_Delay_TV();

   if ((i2cSCL_PIN_STATUS_TV() == _LOW) || (i2cSDA_PIN_STATUS_TV() == _LOW))
    {	
        bStatus = FALSE;		
    }
    else
    {	
        i2cSetSDA_TV(_LOW);
        i2c_Delay_TV();
        i2cSetSCL_TV(_LOW);
	 i2c_Delay_TV();
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
void i2c_Stop_TV(void)
{
  /* Configure I2C1 pins: SCL and SDA */ 

    i2cSetSCL_TV(_LOW);
    i2c_Delay_TV();
    i2cSetSDA_TV(_LOW);
    i2c_Delay_TV();
    i2cSetSCL_TV(_HIGH);
    i2c_Delay_TV();
    i2cSetSDA_TV(_HIGH);
    i2c_Delay_TV();
}

//////////////////////////////////////////////////////////////////////////
// I2C send byte to device.
//
// Arguments: ucVal - send byte
// Return value: I2C acknowledge bit
//               I2C_ACKNOWLEDGE/I2C_NON_ACKNOWLEDGE
//////////////////////////////////////////////////////////////////////////
BYTE i2c_SendByte_TV(BYTE ucVal)
{
    BYTE    ucMask = 0x80;
    BYTE     bAck=FALSE; // acknowledge bit
    BYTE     i;

    while(ucMask)
    {
        if (ucVal & ucMask)
            i2cSetSDA_TV(_HIGH);
        else
            i2cSetSDA_TV(_LOW);
        i2c_Delay_TV();
        i2cSetSCL_TV(_HIGH); // clock
        i2c_Delay_TV();
        i2cSetSCL_TV(_LOW);
        i2c_Delay_TV();

        ucMask >>= 1; // next
    } // while

    // recieve acknowledge
    i2cSetSDA_TV(_HIGH);
    i2c_Delay_TV();
    i2cSetSCL_TV(_HIGH);
    i2c_Delay_TV();

   ////////////////////////////////////////////////////////////	
   ///ACK check
	    for(i=0;i<100;i++)
	    {
		if(i2cSDA_PIN_STATUS_TV()==0)
			break;

	    	i2c_Delay_TV();
	    }
	    
	     bAck = i2cSDA_PIN_STATUS_TV(); // recieve acknowlege

    ///////////////////////////////////////////////////////////	
    i2cSetSCL_TV(_LOW);
	
    return (bAck);
}
//////////////////////////////////////////////////////////////////////////
// I2C receive byte from device.
//
// Return value: receive byte
//////////////////////////////////////////////////////////////////////////
BYTE i2c_ReceiveByte_TV(BYTE bAck)
{
    BYTE    ucReceive = 0;
    BYTE    ucMask = 0x80;

   i2cSetSDA_TV(_HIGH);

    while(ucMask)
    {
		i2cSetSCL_TV(_HIGH);
		i2c_Delay_TV();
		if(GPIO_ReadInputDataBit(GPIOB, P_TV_SDA) == _HIGH)
			ucReceive |= ucMask;
	
		i2cSetSCL_TV(_LOW);
		i2c_Delay_TV();

        ucMask >>= 1;
    } // while
   
  if (bAck) // acknowledge
        i2cSetSDA_TV(I2C_ACKNOWLEDGE);
    else // non-acknowledge
        i2cSetSDA_TV(I2C_NON_ACKNOWLEDGE);

    i2c_Delay_TV();
    i2cSetSCL_TV(_HIGH);
    i2c_Delay_TV();
    i2cSetSCL_TV(_LOW);

    return ucReceive;

}

//////////////////////////////////////////////////////////////////////////
// I2C access start.
//
// Arguments: ucSlaveAdr - slave address
//            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//////////////////////////////////////////////////////////////////////////
BYTE i2c_AccessStart_TV(BYTE ucSlaveAdr, I2C_Direction trans_t)
{
    BYTE ucDummy; // loop dummy

    if (trans_t == I2C_READ) // check i2c read or write
        ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
    else
        ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write

    ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
    while (ucDummy--)
    {    
	i2c_Delay_TV();
        if (i2c_Start_TV() == FALSE)
            continue;

        if (i2c_SendByte_TV(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
            return TRUE;
		//printf("ucSlaveAdr====%x", ucSlaveAdr);
        i2c_Stop_TV();
        Delay_1ms(1);
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
void i2cWrite_Sub_TV(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
    while(ucDummy--)
    {
        if (i2c_AccessStart_TV(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;
        if (i2c_SendByte_TV(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        while(ucBufLen--) // loop of writting data
        {
            i2c_SendByte_TV(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    i2c_Stop_TV();
}

/////////////////////////////////////////////////////////////////
// I2C read bytes from device.
//
// Arguments: ucSlaveAdr - slave address
//            ucSubAdr - sub address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////

void i2cRead_Sub_TV(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
    while(ucDummy--)
    {
        if (i2c_AccessStart_TV(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;

        if (i2c_SendByte_TV(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        if (i2c_AccessStart_TV(ucSlaveAdr, I2C_READ) == FALSE)
            continue;

        while(ucBufLen--) // loop to burst read
        {
            *pBuf = i2c_ReceiveByte_TV(ucBufLen); // receive byte

            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    i2c_Stop_TV();
}

// I2C read current bytes from device.
//
// Arguments: ucSlaveAdr - slave address
//            pBuf - pointer of buffer
//            ucBufLen - length of buffer
/////////////////////////////////////////////////////////////////
void i2cCurrent_Read_TV(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
    while(ucDummy--)
    {
        if (i2c_AccessStart_TV(ucSlaveAdr, I2C_READ) == FALSE)
            continue;

        while(ucBufLen--) // loop to burst read
        {
            *pBuf = i2c_ReceiveByte_TV(ucBufLen); // receive byte

            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    i2c_Stop_TV();
}

void i2cCurrent_Write_TV(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)
{ 
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME_TV;
    while(ucDummy--)
    {
        if (i2c_AccessStart_TV(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;

        while(ucBufLen--) // loop of writting data
        {
            i2c_SendByte_TV(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    i2c_Stop_TV();

}
#endif
#if 0
void i2cSetSCL_keylight(BYTE kSet);   //20120724
void i2cSetSDA_keylight(BYTE kSet);
void i2c_Delay_keylight(void);
BYTE i2c_Start_keylight(void);
BYTE i2c_ReceiveByte_keylight(BYTE bAck);

void i2cSetSCL_keylight(BYTE kSet)      // 20120724
{
    if(kSet) GPIO_SetBits(GPIOD, P_LED_COL2);
    else GPIO_ResetBits(GPIOD, P_LED_COL2);	
} 

void i2cSetSDA_keylight(BYTE kSet)    // 20120724
{
	   if(kSet) GPIO_SetBits(GPIOD, P_LED_COL1);
	   else   GPIO_ResetBits(GPIOD, P_LED_COL1);
}

void i2c_Delay_keylight(void)      // 20120724  
{
   delay_5us();
}

BYTE i2c_Start_keylight(void)     //20120724
{
    BYTE kStatus = TRUE; // success status

   
    i2cSetSDA_keylight(_HIGH);
    i2c_Delay_keylight();
    i2cSetSCL_keylight(_HIGH);
    i2c_Delay_keylight();

   if ((i2cSCL_PIN_STATUS_keylight() == _LOW) || (i2cSDA_PIN_STATUS_keylight() == _LOW))
    {	
        kStatus = FALSE;		
    }
    else
    {	
        i2cSetSDA_keylight(_LOW);
        i2c_Delay_keylight();
        i2cSetSCL_keylight(_LOW);
	 i2c_Delay_keylight();
    }

    return kStatus;
}


void i2c_Stop_keylight(void)         // 20120724
{
  /* Configure I2C1 pins: SCL and SDA */ 

    i2cSetSCL_keylight(_LOW);
    i2c_Delay_keylight();
    i2cSetSDA_keylight(_LOW);
    i2c_Delay_keylight();
    i2cSetSCL_keylight(_HIGH);
    i2c_Delay_keylight();
    i2cSetSDA_keylight(_HIGH);
    i2c_Delay_keylight();
}


BYTE i2c_SendByte_keylight(BYTE ucVal)    // 20120724
{
    BYTE    ucMask = 0x80;
    BYTE     bAck=FALSE; // acknowledge bit
    BYTE     i;

    while(ucMask)
    {
        if (ucVal & ucMask)
            i2cSetSDA_keylight(_HIGH);
        else
            i2cSetSDA_keylight(_LOW);
        i2c_Delay_keylight();
        i2cSetSCL_keylight(_HIGH); // clock
        i2c_Delay_keylight();
        i2cSetSCL_keylight(_LOW);
        i2c_Delay_keylight();

        ucMask >>= 1; // next
    } // while

    // recieve acknowledge
    i2cSetSDA_keylight(_HIGH);
    i2c_Delay_keylight();
    i2cSetSCL_keylight(_HIGH);
    i2c_Delay_keylight();

   ////////////////////////////////////////////////////////////	
   ///ACK check
   /*
	    for(i=0;i<100;i++)
	    {
		if(i2cSDA_PIN_STATUS_keylight()==0)
			break;

	    	i2c_Delay();
	    }
	    
	     bAck = i2cSDA_PIN_STATUS_keylight(); // recieve acknowlege
*/
		     for(i=0;i<100;i++)
	    {
		if(i2cSDA_PIN_STATUS_keylight()==0)
		{
			break;
		}

	    	i2c_Delay_keylight();
	    }

		if(i<100)
			i=9;
		else
			i=0;
	     bAck = i2cSDA_PIN_STATUS_keylight(); // recieve acknowlege

    ///////////////////////////////////////////////////////////	
    i2cSetSCL_keylight(_LOW);
	
    return (bAck);
}


BYTE i2c_ReceiveByte_keylight(BYTE bAck)              // 20120724
{
    BYTE    ucReceive = 0;
    BYTE    ucMask = 0x80;

   i2cSetSDA_TV(_HIGH);

    while(ucMask)
    {
		i2cSetSCL_keylight(_HIGH);
		i2c_Delay_keylight();
		if(GPIO_ReadInputDataBit(GPIOB, P_LED_COL1) == _HIGH)
			ucReceive |= ucMask;
	
		i2cSetSCL_keylight(_LOW);
		i2c_Delay_keylight();

        ucMask >>= 1;
    } // while
   
  if (bAck) // acknowledge
        i2cSetSDA_keylight(I2C_ACKNOWLEDGE);
    else // non-acknowledge
        i2cSetSDA_keylight(I2C_NON_ACKNOWLEDGE);

    i2c_Delay_keylight();
    i2cSetSCL_keylight(_HIGH);
    i2c_Delay_keylight();
    i2cSetSCL_keylight(_LOW);

    return ucReceive;

}

BYTE i2c_AccessStart_keylight(BYTE ucSlaveAdr, I2C_Direction trans_t)  //20120724
{
    BYTE ucDummy; // loop dummy

    if (trans_t == I2C_READ) // check i2c read or write
        ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
    else
        ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write

    ucDummy = I2C_ACCESS_DUMMY_TIME1;
    while (ucDummy--)
    {    
	i2c_Delay_keylight();
        if (i2c_Start_keylight() == FALSE)
            continue;

        if (i2c_SendByte_keylight(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
            return TRUE;
		//printf("ucSlaveAdr====%x", ucSlaveAdr);
        i2c_Stop_keylight();
        Delay_1ms(1);
    }

    return FALSE;
}


void i2cWrite_Sub_keylight(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)     //20120724
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME1;
    while(ucDummy--)
    {
        if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;
        if (i2c_SendByte_keylight(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        while(ucBufLen--) // loop of writting data
        {
            i2c_SendByte_keylight(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    i2c_Stop_keylight();
}


BOOL i2cRead_Sub_keylight(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)    //20120724
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME1;
    while(ucDummy--)
    {
        if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;

        if (i2c_SendByte_keylight(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_READ) == FALSE)
            continue;

        while(ucBufLen--) // loop to burst read
        {
            *pBuf = i2c_ReceiveByte_keylight(ucBufLen); // receive byte

            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    i2c_Stop_keylight();
    if(ucDummy==0)
		return FALSE;
    else
		return TRUE;
}


void i2cCurrent_Read_keylight(BYTE ucSlaveAdr, BYTE *pBuf, BYTE ucBufLen)    //20120724
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop_Sound();
    ucDummy = I2C_ACCESS_DUMMY_TIME1;
    while(ucDummy--)
    {
        if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_READ) == FALSE)
            continue;

        while(ucBufLen--) // loop to burst read
        {
            *pBuf = i2c_ReceiveByte_keylight(ucBufLen); // receive byte

            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    i2c_Stop_keylight();
}

void i2cCurrent_Write_keylight(BYTE ucSlaveAdr, BYTE * pBuf, BYTE ucBufLen)   //20120724
{ 
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME1;
    while(ucDummy--)
    {
        if (i2c_AccessStart_keylight(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;

        while(ucBufLen--) // loop of writting data
        {
            i2c_SendByte_keylight(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    i2c_Stop_keylight();

}

#endif

#ifdef	ADAU1401_EN
void i2c_Delay_ADAU1401(void)
{
   delay_10us();
   delay_10us();
   delay_10us();
}

BYTE i2c_Start_ADAU1401(void)
{
    BYTE bStatus = TRUE; // success status

   
    i2cSetSDA(_HIGH);
    i2c_Delay_ADAU1401();
    i2cSetSCL(_HIGH);
    i2c_Delay_ADAU1401();

   if ((i2cSCL_PIN_STATUS() == _LOW) || (i2cSDA_PIN_STATUS() == _LOW))
    {	
        bStatus = FALSE;		
    }
    else
    {	
        i2cSetSDA(_LOW);
        i2c_Delay_ADAU1401();
        i2cSetSCL(_LOW);
	 i2c_Delay_ADAU1401();
    }

    return bStatus;
}

void i2c_Stop_ADAU1401(void)
{
  /* Configure I2C1 pins: SCL and SDA */ 

    i2cSetSCL(_LOW);
    i2c_Delay_ADAU1401();
    i2cSetSDA(_LOW);
    i2c_Delay_ADAU1401();
    i2cSetSCL(_HIGH);
    i2c_Delay_ADAU1401();
    i2cSetSDA(_HIGH);
    i2c_Delay_ADAU1401();
}

BYTE i2c_SendByte_ADAU1401(BYTE ucVal)
{
    BYTE    ucMask = 0x80;
    BYTE     bAck=FALSE; // acknowledge bit
    BYTE     i;

    while(ucMask)
    {
        if (ucVal & ucMask)
            i2cSetSDA(_HIGH);
        else
            i2cSetSDA(_LOW);
        i2c_Delay_ADAU1401();
        i2cSetSCL(_HIGH); // clock
        i2c_Delay_ADAU1401();
        i2cSetSCL(_LOW);
        i2c_Delay_ADAU1401();

        ucMask >>= 1; // next
    } // while

    // recieve acknowledge
    i2cSetSDA(_HIGH);
    i2c_Delay_ADAU1401();
    i2cSetSCL(_HIGH);
    i2c_Delay_ADAU1401();

   ////////////////////////////////////////////////////////////	
   ///ACK check
	    for(i=0;i<100;i++)
	    {
		if(i2cSDA_PIN_STATUS()==0)
			break;

	    	i2c_Delay_ADAU1401();
	    }
	    
	     bAck = i2cSDA_PIN_STATUS(); // recieve acknowlege

    ///////////////////////////////////////////////////////////	
    i2cSetSCL(_LOW);
	
    return (bAck);
}
BYTE i2c_AccessStart_ADAU1401(BYTE ucSlaveAdr, I2C_Direction trans_t)
{
    BYTE ucDummy; // loop dummy

    if (trans_t == I2C_READ) // check i2c read or write
        ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
    else
        ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write

    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {    
	i2c_Delay_ADAU1401();
        if (i2c_Start_ADAU1401() == FALSE)
            continue;

        if (i2c_SendByte_ADAU1401(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
            return TRUE;
		//printf("ucSlaveAdr====%x", ucSlaveAdr);
        //i2c_Stop();
        //Delay_1ms(1);
    }

    return FALSE;
}

BOOL i2cWrite_Sub_ADAU1401(BYTE ucSlaveAdr, BYTE ucSubAdr, BYTE *pBuf, BYTE ucBufLen)
{
    BYTE ucDummy; // loop dummy

    //i2c_Stop();
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while(--ucDummy)
    {
        if (i2c_AccessStart_ADAU1401(ucSlaveAdr, I2C_WRITE) == FALSE)
            continue;
        if (i2c_SendByte_ADAU1401(ucSubAdr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
            continue;

        while(ucBufLen--) // loop of writting data
        {
            i2c_SendByte_ADAU1401(*pBuf); // send byte
            pBuf++; // next byte pointer
        } // while

        break;
    } // while

    if(ucDummy==0)
    {
		return FALSE;
    }
    else
    {
		i2c_Stop_ADAU1401();
		return TRUE;
    }
}

#if 1

void i2c_Delay_ADAU1761(void)
{
  	delay_5us();
}

BYTE i2c_Start_ADAU1761(void)
{
    BYTE bStatus = TRUE; // success status
    i2cSetSDA(_HIGH);
    i2c_Delay_ADAU1761();
    i2cSetSCL(_HIGH);
    i2c_Delay_ADAU1761();

   if ((i2cSCL_PIN_STATUS() == _LOW) || (i2cSDA_PIN_STATUS() == _LOW))
    {	
        bStatus = FALSE;		
    }
    else
    {	
        i2cSetSDA(_LOW);
        i2c_Delay_ADAU1761();
        i2cSetSCL(_LOW);
	 i2c_Delay_ADAU1761();
    }

    return bStatus;
}

void i2c_Stop_ADAU1761(void)
{
  /* Configure I2C1 pins: SCL and SDA */ 

    i2cSetSCL(_LOW);
    i2c_Delay_ADAU1761();
    i2cSetSDA(_LOW);
    i2c_Delay_ADAU1761();
    i2cSetSCL(_HIGH);
    i2c_Delay_ADAU1761();
    i2cSetSDA(_HIGH);
    i2c_Delay_ADAU1761();
}

BYTE i2c_SendByte_ADAU1761(BYTE ucVal)
{
    BYTE    ucMask = 0x80;
    BYTE     bAck=FALSE; // acknowledge bit
    BYTE     i;

    while(ucMask)
    {
        if (ucVal & ucMask)
            i2cSetSDA(_HIGH);
        else
            i2cSetSDA(_LOW);
        i2c_Delay_ADAU1761();
        i2cSetSCL(_HIGH); // clock
        i2c_Delay_ADAU1761();
        i2cSetSCL(_LOW);
        i2c_Delay_ADAU1761();

        ucMask >>= 1; // next
    } // while

    // recieve acknowledge
    i2cSetSDA(_HIGH);
    i2c_Delay_ADAU1761();
    i2cSetSCL(_HIGH);
    i2c_Delay_ADAU1761();

   ////////////////////////////////////////////////////////////	
   ///ACK check
	    for(i=0;i<100;i++)
	    {
		if(i2cSDA_PIN_STATUS()==0)
			break;

	    	i2c_Delay_ADAU1761();
	    }
	    
	     bAck = i2cSDA_PIN_STATUS(); // recieve acknowlege

    ///////////////////////////////////////////////////////////	
    i2cSetSCL(_LOW);
	
    return (bAck);
}
BYTE i2c_AccessStart_ADAU1761(BYTE ucSlaveAdr, I2C_Direction trans_t)
{
    BYTE ucDummy; // loop dummy

    if (trans_t == I2C_READ) // check i2c read or write
        ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr); // read
    else
        ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr); // write

    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {    
		i2c_Delay_ADAU1761();
        if (i2c_Start_ADAU1761() == FALSE)
            continue;

        if (i2c_SendByte_ADAU1761(ucSlaveAdr) == I2C_ACKNOWLEDGE) // check acknowledge
            return TRUE;
    }

    return FALSE;
}
void SIGMA_WRITE_DELAY(unsigned char subAddr, unsigned int length, unsigned const char *pData)
{
	BYTE ucDummy; // loop dummy
	ucDummy = I2C_ACCESS_DUMMY_TIME;
	while(--ucDummy)
	{
		if (i2c_AccessStart_ADAU1761(subAddr, I2C_WRITE) == FALSE)
			continue;
		//if (i2c_SendWord_ADAU1401(Addr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
		//  continue;
		while(length--) // loop of writting data
		{
			i2c_SendByte_ADAU1761(*pData); // send byte
			pData++; // next byte pointer
		} // while

		break;
	} // while
	i2c_Stop_ADAU1761();
	delay_10us();

}

BYTE i2c_SendWord_ADAU1761(UINT ucVal)
{
	BYTE     bAck=FALSE; // acknowledge bit
	bAck=i2c_SendByte_ADAU1761((ucVal>>8)&0xff);
	bAck|=i2c_SendByte_ADAU1761(ucVal&0xff);
	return (bAck);
}
unsigned char SIGMA_WRITE_REGISTER_BLOCK(unsigned char subAddr, unsigned int Addr, unsigned int length, unsigned const char *pData)
{
	unsigned char ucDummy; // loop dummy
	unsigned int i;

	ucDummy = I2C_ACCESS_DUMMY_TIME;
	while(--ucDummy)
	{
		if (i2c_AccessStart_ADAU1761(0x70, I2C_WRITE) == FALSE)
			continue;
		if (i2c_SendWord_ADAU1761(Addr) == I2C_NON_ACKNOWLEDGE) // check non-acknowledge
			continue;
		for(i=0;i<length;i++)
		{
		 	i2c_SendByte_ADAU1761(pData[i]); // send byte
		}

		break;
	} // while

	if(ucDummy==0)
	{
		return FALSE;
	}
	else
	{
		i2c_Stop_ADAU1761();
		return TRUE;
	}
}
#endif

#endif



