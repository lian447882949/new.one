#define _LIBR_C_

#include "libr.h"
#include "stm32f10x.h"


void delay_500us(void);
void delay_100us(void);
void delay_10us(void);
void delay_5us(void);
extern DWORD u32Systick;

	
void Delay_1ms (UINT count)
{
#if 1
	u32Systick=0;
    for (;;)
    {
        if (u32Systick >= count)
        {
            break;
        }
    }
	#endif
}

void delay_500us(void)
{
	 BYTE i=0;

	 for(i=0;i<50;i++)
		delay_10us();	
}


void delay_100us(void)
{
	 BYTE i=0;

	 for(i=0;i<10;i++)
		delay_10us();	
}

void delay_50us(void)
{
	 BYTE i=0;

	 for(i=0;i<5;i++)
		delay_10us();
	 
}

void delay_10us(void)
{
	delay_5us();
	delay_5us();
}

void delay_5us(void)
{
	delay_1us();
	delay_1us();
	delay_1us();
	delay_1us();
	delay_1us();	
}

//32M
void delay_1us(void)
{
#if defined(keil) 
	 __ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
	__ASM("NOP");
#else
	asm("nop");
	  asm("nop");
	  asm("nop");
	  asm("nop");	  
	  asm("nop");
	  asm("nop");
	  asm("nop");
	  asm("nop");	  

	  asm("nop");
	  asm("nop");
	  asm("nop");
	
#endif
	  /*asm("nop");   
	  asm("nop");
	  asm("nop");
	  asm("nop");
	  asm("nop");		

	  asm("nop");//tiger add	 
	  asm("nop");
	  asm("nop");*/
}







