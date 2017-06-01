/*==========================
this file is defined for FM by Miller.tao
date :20150713
===========================*/
#define _RADIO_FM_C_
#include "radiofm.h"
#include "i2c_driver.h"
#include "includes.h"
#if 1 //miller.tao20150715
void radio_fm_init(void)
{
        BYTE fm_init_data[20];
        BYTE i = 0;

	fm_init_data[0] = 0x21;//reg0:SYSTEM
	fm_init_data[1] = 0x00;//reg1:CH1
	fm_init_data[2] = 0xB9;//0xBA;//0xB9;//0xA9,reg2:GPLT
	fm_init_data[3] = 0x10;//reg3:REG_XTL
	fm_init_data[4] = 0x83;//0x87,0x82;//0xB2,reg4:REG_VGA

	//fm_init_data[5] = 0x80;//reg5:CID1
	//fm_init_data[6] = 0x80;//reg6:CID2
	//fm_init_data[7] = 0x80;//reg7:STATUS
	fm_init_data[8] = 0x00;//reg8:RDSD0
	fm_init_data[9] = 0x00;//reg9:RDSD1
        fm_init_data[10] = 0x00;//reg10:RDSD2
	fm_init_data[11] = 0x00;//reg11:RDSD3
	fm_init_data[12] = 0x00;//reg12:RDSD4
	fm_init_data[13] = 0x00;//reg13:RDSD5
	fm_init_data[14] = 0x00;//reg14:RDSD6
	fm_init_data[15] = 0x00;//reg15:RDSD7
	fm_init_data[16] = 0x7F;//0x7F,reg16:PAC
	fm_init_data[17] = 0xA1;//0x81,reg17:FDV
	fm_init_data[18] = 0x06;//reg18:RDS

	for(i = 0;i<5;i++)
	{
              WriteRadioFM(i,fm_init_data[i]);
	      Delay_1ms(5);
	}

	for(i = 8;i<19;i++)
	{
              WriteRadioFM(i,fm_init_data[i]);
	      Delay_1ms(5);
	}


}
#else
void radio_fm_init(void)
{
          WriteRadioFM(0,0x81);
          Delay_1ms(100);

          WriteRadioFM(3,0x10);
          WriteRadioFM(4,0xB2);
          Delay_1ms(100);
           WriteRadioFM(0,0x41);
	   WriteRadioFM(0,0x41);
           Delay_1ms(200);
	   WriteRadioFM(1,0x00);
	   WriteRadioFM(2,0xB9);
           Delay_1ms(100);
	   WriteRadioFM(0,0x21);
}

#endif

void radio_fm_set_freq(UINT frequency)
{
      
      BYTE temp,temp2;

     temp =  ReadRadioFM(FM_REG_SYS);
    
     temp2 = (frequency>>8)&0x03;
     temp =temp&(~0x03)|temp2;
     WriteRadioFM(FM_REG_SYS,temp);
     Delay_1ms(5);
     temp2 = frequency&0xFF;
    WriteRadioFM(FM_REG_CH1,temp2);
}

void radio_fm_set_gain(BYTE gain)
{


}

