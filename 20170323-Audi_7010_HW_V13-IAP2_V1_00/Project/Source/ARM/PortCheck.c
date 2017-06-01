
#define _PORTCHECK_C_

#include "PortCheck.h"

uint8_t PortData;

uint8_t PortBk;
uint8_t PortCheckCnt;

void PortCheck(void)
{
	
	PortData = 0;
	if(ACC_PORT()==0)
	{
		PortData |= 0x01; 
	}
	
	if(BACK_PORT() == 0)
	{
		PortData |= 0x02; 
	}
	

	if(PortData^PortBk)
	{
		PortCheckCnt = 0;
	}
	else
	{
		PortCheckCnt++;
	}
	PortBk = PortData;
	if(PortCheckCnt > 10)//10*10=100ms
	{
		PortCheckCnt = 0;
		if(PortData ^ PortDataBk)
		{
			if((PortData&0x01) == 1)
			{
				AccStatus = 0;
			}
			else
			{
				AccStatus = 1;
			}

			if((PortData&0x02) == 0x02)
			{
				BackStatus = 0;
			}
			else
			{
				BackStatus = 1;
			}

		}

		PortDataBk = PortData;
	}
}


uint8_t BACK_PIN_STATUS(void)
{
	return BackStatus;
}

uint8_t ACC_PIN_STATUS(void)
{
	return AccStatus;
}


