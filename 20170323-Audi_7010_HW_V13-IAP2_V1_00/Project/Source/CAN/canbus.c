/* Õâ·ÝÔ´´úÂëÎÄ¼þÒÑ±»Î´×¢²áµÄSourceFormatX¸ñÊ½»¯¹ý */
/* Èç¹ûÄúÏë²»ÔÙÌí¼Ó´ËÀàÐÅÏ¢£¬ÇëÄú×¢²áÕâ¸ö¹²ÏíÈí¼þ  */
/* ¸ü¶àÏà¹ØÐÅÏ¢Çë·ÃÎÊÍøÕ¾: http://cn.textrush.com  */

/******************** (C) COPYRIGHT 2011 APTENON ********************
 * File Name          : canbus.c
 * Author             : miller.tao
 * Version            : V0.0
 * Date               : 07/13/2015
 * Description        : canbus  file.
 *******************************************************************************/
#define _BENZE_BUS_C_
#include "includes.h"
//#include "can_config.h"


static vu8 uPreAction = 0;
static vu8 uPreVal = 0;

/******************************************************************
ËÙ¶È 1000   500  250  125  100  50     20    10
¾àÀë 40     130  270  530  620  1300   3300	  6700
CIAÍÆ¼öÖµ
75% when ²¨ÌØÂÊ ¡·800K
80% when ²¨ÌØÂÊ ¡·500K
87.5% when ²¨ÌØÂÊ < 500K
 *******************************************************************/








#if LF_CAN_TYPE == AudiA4CAN
void Audi_A4_CanBus_Config(void)
{
    CAN_InitTypeDef CAN_InitStructure;
    CAN_FilterInitTypeDef CAN_FilterInitStructure;
    /* CAN register init */
    // CAN_DeInit();
    /* CAN1 and CAN2 register init */
    CAN_DeInit(CAN1);
    CAN_DeInit(CAN2);


    /* Struct init*/
    CAN_StructInit(&CAN_InitStructure);

    /* CAN cell init */
    CAN_InitStructure.CAN_TTCM = DISABLE; //½ûÖ¹Ê±¼ä´¥·¢Í¨ÐÅÄ£Ê½
    CAN_InitStructure.CAN_ABOM = DISABLE;
    CAN_InitStructure.CAN_AWUM = DISABLE;
    CAN_InitStructure.CAN_NART = DISABLE;
    //CAN±¨ÎÄÖ»±»·¢ËÍ1´Î£¬²»¹Ü·¢ËÍµÄ½á¹ûÈçºÎ£¨³É¹¦¡¢³ö´í»òÖÙ²Ã¶ªÊ§£©
    CAN_InitStructure.CAN_RFLM = DISABLE;
    CAN_InitStructure.CAN_TXFP = DISABLE;
    CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;//CAN_Mode_Silent;

    CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
    CAN_InitStructure.CAN_BS1 = CAN_BS1_13tq; //1--16
    CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8
    CAN_InitStructure.CAN_Prescaler = 20;

	 ////(pclk1/((1+8+7)*16)) = 32Mhz/16/20 = 100Kbits
    CAN_Init(CAN2, &CAN_InitStructure);
   


    /* CAN cell init */
    CAN_InitStructure.CAN_TTCM = DISABLE; //½ûÖ¹Ê±¼ä´¥·¢Í¨ÐÅÄ£Ê½
    CAN_InitStructure.CAN_ABOM = DISABLE;
    CAN_InitStructure.CAN_AWUM = DISABLE;
    CAN_InitStructure.CAN_NART = DISABLE;
    //CAN±¨ÎÄÖ»±»·¢ËÍ1´Î£¬²»¹Ü·¢ËÍµÄ½á¹ûÈçºÎ£¨³É¹¦¡¢³ö´í»òÖÙ²Ã¶ªÊ§£©
    CAN_InitStructure.CAN_RFLM = DISABLE;
    CAN_InitStructure.CAN_TXFP = DISABLE;
    CAN_InitStructure.CAN_Mode = CAN_Mode_Normal;//CAN_Mode_Silent;

    CAN_InitStructure.CAN_SJW = CAN_SJW_1tq;
    CAN_InitStructure.CAN_BS1 = CAN_BS1_13tq; //1--16
    CAN_InitStructure.CAN_BS2 = CAN_BS2_2tq; //1--8
    CAN_InitStructure.CAN_Prescaler = 4;
    ////(pclk1/((1+8+7)*16)) = 32Mhz/16/4 = 500Kbits

    /*Initializes the CAN1	and CAN2 */
    CAN_Init(CAN1, &CAN_InitStructure);

#if 1
    CAN_FilterInitStructure.CAN_FilterNumber = 1; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_STEER_KEY_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý


    CAN_FilterInitStructure.CAN_FilterNumber = 2; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_POWER_STD3_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 3; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_POWER_STD2_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 4; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_POWER_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 5; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_RADAR_DISP_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 6; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_AIR_DISP_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 7; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_RADAR_INFO_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý


    CAN_FilterInitStructure.CAN_FilterNumber = 8; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_TIMER_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 9; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_SOURCE1_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 10; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_SOURCE2_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 11; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_MUTE_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý


    CAN_FilterInitStructure.CAN_FilterNumber = 14; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_STALLS_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 15; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_STEERINGANGLE_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 16; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_QUICK_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý

    CAN_FilterInitStructure.CAN_FilterNumber = 17; //Ñ¡Ôñ¹ýÂËÆ÷7
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdList;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh = AUD_CAN_angle_leftright_STD_ID << 5;
    CAN_FilterInitStructure.CAN_FilterIdLow = CAN_ID_STD; //

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º¯Êý
    //-------------------------------------------------------------

#else
	    CAN_FilterInitStructure.CAN_FilterNumber = 0; //
    CAN_FilterInitStructure.CAN_FilterMode = CAN_FilterMode_IdMask;
    CAN_FilterInitStructure.CAN_FilterScale = CAN_FilterScale_32bit;
    CAN_FilterInitStructure.CAN_FilterIdHigh=0x0000;  /* ÒÔÏÂËÄ¸ö¶¼Îª0, ±íÃ÷²»¹ýÂËÈÎºÎid */
	CAN_FilterInitStructure.CAN_FilterIdLow=0x0000;
	CAN_FilterInitStructure.CAN_FilterMaskIdHigh=0x0000;
	CAN_FilterInitStructure.CAN_FilterMaskIdLow=0x0000;

    CAN_FilterInitStructure.CAN_FilterFIFOAssignment = CAN_FIFO0; //Ñ¡ÔñFIFO0
    CAN_FilterInitStructure.CAN_FilterActivation = ENABLE; //Ê¹ÄÜ¹ýÂËÆ÷
    CAN_FilterInit(&CAN_FilterInitStructure); //½øÈë³õÊ¼»¯º
#endif

    CAN_SlaveStartBank(0);//Miller.Tao20141029

    /* CAN FIFO0 message pending interrupt enable */
    CAN_ITConfig(CAN1, CAN_IT_FMP0 | CAN_IT_FF0, ENABLE);
    /* CAN FIFO0 message pending interrupt enable */
    CAN_ITConfig(CAN2, CAN_IT_FMP0| CAN_IT_FF0, ENABLE);


}


void AudiCanA4_FetchSteerKeyInfo(CanRxMsg RxMessage)
{
    static vu8 uCKeepFlag = 0;
    static vu8 uRetKeepFlag = 0;
    static vu16 wBounceCnt = 0;
    BYTE i;

    m_BMW_CAN.RxMessage.DLC = RxMessage.DLC;
    if (!(RxMessage.StdId == AUD_CAN_STEER_KEY_STD_ID && RxMessage.DLC == 4))
    {
        return ;
    }
    for(i = 0; i < 4; i++)
        m_BMW_CAN.RxMessage.Data[i] = RxMessage.Data[i];
    //initial
    m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
    //
    if (RxMessage.Data[0] & 0x01)
        //mode
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_LEFT_KEY_MODE_PRESSED;
    }
    else if (RxMessage.Data[0] & 0x10)
        //knob enter
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_LEFT_KEY_KNOB_PRESSED;
    }
    else if ((RxMessage.Data[2] & 0x0F) == 0x01)
        //knob UP
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_LEFT_KEY_KNOBUP_PRESSED;
    }
    else if ((RxMessage.Data[2] & 0x0F) == 0x0F)
        //knob DN
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_LEFT_KEY_KNOBDN_PRESSED;
    }
    else if (RxMessage.Data[1] & 0x01)
        //voice
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED;
    }
    else if (RxMessage.Data[3] & 0x10)
        //navi
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_NAVI_PRESSED;
    }
    else if (RxMessage.Data[1] & 0x10)
        //KNOB enter
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_KNOB_PRESSED;
    }
    else if ((RxMessage.Data[2] & 0xF0) == 0x010)
        //right knob up
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_KNOBUP_PRESSED;
    }
    else if ((RxMessage.Data[2] & 0xF0) == 0xF0)
        //Knob DN
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_KNOBDN_PRESSED;
    }
    else if (RxMessage.Data[0] & 0x04)
        //mode keep
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_LEFT_KEY_MODE_KEEP;

    }
    else if (RxMessage.Data[0] & 0x40)
        //knob enter keep
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_LEFT_KEY_KNOB_KEEP;

    }
    else if (RxMessage.Data[1] & 0x04)
        //voice keep
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_VOICE_KEEP;

    }
    else if (RxMessage.Data[3] & 0x40)
        //navi keep
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_NAVI_KEEP;

    }
    else if (RxMessage.Data[1] & 0x40)
        //right knob enter keep
    {
        m_BMW_CAN.uKeyID2 = BENZE_KEY_STEERING_RIGHT_KEY_KNOB_KEEP;

    }
    else
    {

        //-------------------------------------------------------
        wBounceCnt++;
        if (wBounceCnt >= 1)
        {
            uCKeepFlag = 0;
            uRetKeepFlag = 0;
            m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
            wBounceCnt = 0;
        }
        m_BMW_CAN.uKeyKeepCnt2 = 0;
        m_BMW_CAN.bKeyKeepOneTime2 = 0;

    }


    switch (m_BMW_CAN.uKeyID2)
    {
    case BENZE_KEY_ALL_BOUNCED:
        uCKeepFlag = 0;
        uRetKeepFlag = 0;
        m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        wBounceCnt = 0;
        m_BMW_CAN.uKeyKeepCnt2 = 0;
        m_BMW_CAN.bKeyKeepOneTime2 = 0;
        break;
    case BENZE_KEY_STEERING_LEFT_KEY_MODE_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_LEFT_KEY_MODE_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_STEERING_LEFT_KEY_KNOB_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_LEFT_KEY_KNOB_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_STEERING_LEFT_KEY_KNOBUP_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_LEFT_KEY_KNOBUP_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_STEERING_LEFT_KEY_KNOBDN_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_LEFT_KEY_KNOBDN_PRESSED);
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
        }
        break;
    case BENZE_KEY_STEERING_RIGHT_KEY_NAVI_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            AudiCanBus_SendControlCmd(BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED);//
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
        }
        break;

    case BENZE_KEY_STEERING_RIGHT_KEY_VOICE_PRESSED:
        m_BMW_CAN.uKeyKeepCnt2++;
        if (m_BMW_CAN.uKeyKeepCnt2 == 1)
            //bounce
        {
            //process first pressed data
            //AudiCanBus_SendControlCmd(CMD_KEY_MEDIA_BT2);
        }
        else if (m_BMW_CAN.uKeyKeepCnt2 >= 10)
            //keep
        {
            m_BMW_CAN.uKeyKeepCnt2 = 2;
            //process keep data
        }
        break;

    default:
        m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
        m_BMW_CAN.uKeyKeepCnt2 = 0;
        m_BMW_CAN.bKeyKeepOneTime2 = 0;
        break;
    }
}


void AudiCanA4_FetchStallsInfo(CanRxMsg RxMessage)
{
    if (!(RxMessage.StdId == AUD_CAN_STALLS_STD_ID && RxMessage.DLC == 8))
    {
        return ;
    }

    if ((RxMessage.Data[5] & 0xF0) == 0x60)
        //back
    {

        //g_stuBACKCNTR.u8CurState = CAM_ON;

        Sys.u8can_back_status=CAM_ON_from_can;


    }
    else if ((RxMessage.Data[5] & 0xF0) == 0x70)
        //park
    {


            Sys.u8can_back_status=CAM_off_id;

    }
    else
    {

            Sys.u8can_back_status=CAM_off_id;

    }



}

/*
********************************************************
·½ÏòÅÌ×ª½Ç
********************************************************
*/
void AudiA4_CanBus_FetchSteerAngleInfo(CanRxMsg RxMessage)
{
	if (!(RxMessage.StdId == AUD_CAN_STEERINGANGLE_STD_ID && RxMessage.DLC == 8))
    {
        return ;
    }
	
	if (RxMessage.StdId == AUD_CAN_STEERINGANGLE_STD_ID && RxMessage.DLC == 8)
    {
        m_BMW_CAN.benze_Steering_angle = (((RxMessage.Data[3] & 0x3F) << 8) | RxMessage.Data[2]); //·½ÏòÅÌ½Ç¶ÈÐÅÏ¢
    }
}


void AudiA4_CanBus_work_data_analytic(CanRxMsg RxMessage)
{
    static u8 uPreMediaStatus, uPrePreMediaStatus;
    static u8 uPreAirStatus, uPrePreAirStatus;
    uPreMediaStatus = uPreMediaStatus;
    uPrePreMediaStatus = uPrePreMediaStatus;
    uPreAirStatus = uPreAirStatus;
    uPrePreAirStatus = uPrePreAirStatus;


    

    if (RxMessage.StdId == AUD_CAN_POWER_STD3_ID && RxMessage.DLC == 8) //ACC INFO
    {
		/*
        if (RxMessage.Data[0] & 0x04)
        {
            m_BMW_CAN.AccPwr = SYSTEM_POWER_OFF;


        }
        else
        {
            m_BMW_CAN.AccPwr = SYSTEM_POWER_ON;

        }
		*/

    }
    if (RxMessage.StdId == AUD_CAN_POWER_STD2_ID && RxMessage.DLC == 8) //aux power INFO
    {
	/*
        if (RxMessage.Data[0] & 0x03)
        {
            m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_ON;

        }
        else
        {
            m_BMW_CAN.benze_Pwr_acc_Aux = SYSTEM_POWER_OFF;
            m_RADAR.fDisp=0;

        }
	*/

    }

    if (RxMessage.StdId == AUD_CAN_POWER_STD_ID && RxMessage.DLC == 8)
    {
        //ID:001
        //DCL:
        //if(uPrePreMediaStatus == uPreMediaStatus && uPreMediaStatus == RxMessage.Data[0])
        {
            if ((RxMessage.Data[0] & 0x0F) == 0x03)
            {
                m_BMW_CAN.AudioPwr = SYSTEM_POWER_ON;
                m_BMW_CAN.AccPwr=SYSTEM_POWER_ON;
				g_stuCurPower.wPowerOnByCanTimer2 = 2000;
            }
            else
            {

                m_BMW_CAN.AudioPwr = SYSTEM_POWER_OFF;
				m_BMW_CAN.AccPwr=SYSTEM_POWER_OFF;
            }


            

        }

        uPrePreMediaStatus = uPreMediaStatus;
        uPreMediaStatus = RxMessage.Data[0];

    }

#if 0
	
    if (RxMessage.StdId == AUD_CAN_RADAR_DISP_STD_ID && RxMessage.DLC == 4)
    {
        //ID:001
        //DCL:

        if (RxMessage.Data[2] == 0x01)
        {
#if !COMPILE_BACK_BY_STALL
            g_stuBACKCNTR.u8CurState = CAM_ON;
            g_stuPARKCNTR.u8CurState = PARK_OFF;
            POWER_RearVideoOn();
#endif
            m_RADAR.fDisp = 1;
            if(g_stuSYSINFO.FS_select.rec_type_onoff_id==2)
                g_stuBACKCNTR.u8can_rada_status=CAM_ON_from_can;


        }
        else
        {
#if !COMPILE_BACK_BY_STALL
            g_stuBACKCNTR.u8CurState = CAM_OFF;
            g_stuPARKCNTR.u8CurState = PARK_OFF;
            POWER_RearVideoOff();
#endif
            m_RADAR.fDisp = 0;
            if(g_stuSYSINFO.FS_select.rec_type_onoff_id==2)
                g_stuBACKCNTR.u8can_rada_status=CAM_off_id;

        } 
    }

	
    if (RxMessage.StdId == AUD_CAN_AIR_DISP_STD_ID && RxMessage.DLC == 5)
    {

        //ID:001
        //DCL:


        if ((RxMessage.Data[3] & 0x01) && (RxMessage.Data[3] <= 0x01))
        {

            // m_BMW_CAN.benze_air_Disp = 1;


        }
        else
        {
            //m_BMW_CAN.benze_air_Disp = 0;

        }



    }
    if (RxMessage.StdId == AUD_CAN_AIR_DISP_STD_ID && RxMessage.DLC == 4)
    {
        //¿Õµ÷ÎÂ¶È
        //ID:001
        //DCL:
        if(RxMessage.Data[1] == 0x5B&&RxMessage.Data[0] == 0x40)//Light
        {
            m_BMW_CAN.benze_air_left_temperature = RxMessage.Data[2];
            m_BMW_CAN.air_send_id=1;
            m_BMW_CAN.benze_air_Disp =3;
        }
        else if(RxMessage.Data[1] == 0x61&&RxMessage.Data[0] == 0x40)//Right
        {
            m_BMW_CAN.benze_air_right_temperature = RxMessage.Data[2];
            m_BMW_CAN.air_send_id=1;
            m_BMW_CAN.benze_air_Disp =6;
        }
    }
    if (RxMessage.StdId == AUD_CAN_AIR_DISP_STD_ID && RxMessage.DLC == 3)
    {
        //¿Õµ÷·çÁ¿
        if(RxMessage.Data[1] == 0x5c&&RxMessage.Data[0] == 0x40)
        {
            //if(m_BMW_CAN.benze_air_wind_speed!= RxMessage.Data[2])
            {
                m_BMW_CAN.benze_air_wind_speed = RxMessage.Data[2];
                if(m_BMW_CAN.benze_air_auto!=1)
                {
                    m_BMW_CAN.air_send_id=1;
                    m_BMW_CAN.benze_air_Disp =1;
                }
            }
        }
        else if(RxMessage.Data[1] == 0x62&&RxMessage.Data[0] == 0x40)
        {
            //if(m_BMW_CAN.benze_air_wind_speed!= RxMessage.Data[2])
            {
                m_BMW_CAN.benze_air_right_wind_speed = RxMessage.Data[2];
                if(m_BMW_CAN.benze_air_right_auto!=1)
                {
                    m_BMW_CAN.air_send_id=1;
                    m_BMW_CAN.benze_air_Disp =4;
                }
            }
        }

    }
    if (RxMessage.StdId == AUD_CAN_AIR_DISP_STD_ID && RxMessage.DLC == 6)
    {
        //·çÏò
        //ID:001
        //DCL:
        if(RxMessage.Data[1] == 0x5e&&RxMessage.Data[0] == 0x40)//light
        {
            /*
            static BYTE air_buff[10][6],count_air=0;
            for(int i=0;i<6;i++)
            	air_buff[count_air][i]=RxMessage.Data[i];
            count_air++;
            count_air%=10;
            */
            m_BMW_CAN.air_send_id=1;
            m_BMW_CAN.benze_air_Disp =2;
            m_BMW_CAN.benze_air_auto = 0;
            if(RxMessage.Data[2]==0&&RxMessage.Data[3]==0&&RxMessage.Data[4]==0&&RxMessage.Data[5]==0x03)
            {
                m_BMW_CAN.benze_air_wind_mode = 0;
                m_BMW_CAN.benze_air_auto = 1;
            }
            else if(RxMessage.Data[2]==0&&RxMessage.Data[3]==0&&RxMessage.Data[4]==0)//&&RxMessage.Data[5]==0x00)
            {
                m_BMW_CAN.benze_air_wind_mode = 0;
                m_BMW_CAN.benze_air_auto = 0;
                m_BMW_CAN.air_send_id=1;
            }
            else if(RxMessage.Data[2]==0&&RxMessage.Data[3]==0&&RxMessage.Data[4]==0)
                m_BMW_CAN.benze_air_wind_mode = 0;
            else if(RxMessage.Data[2]==0x0c&&RxMessage.Data[3]==0x00&&RxMessage.Data[4]==0x0c)
                m_BMW_CAN.benze_air_wind_mode = 1;
            else if(RxMessage.Data[2]==0x0c&&RxMessage.Data[3]==0x00&&RxMessage.Data[4]==0x00)
                m_BMW_CAN.benze_air_wind_mode = 2;
            else if(RxMessage.Data[2]==0x0c&&RxMessage.Data[3]==0x0c&&RxMessage.Data[4]==0x00)
                m_BMW_CAN.benze_air_wind_mode = 3;
            else if(RxMessage.Data[2]==0x00&&RxMessage.Data[3]==0x0c&&RxMessage.Data[4]==0x00)
                m_BMW_CAN.benze_air_wind_mode = 4;
            else if(RxMessage.Data[2]==0x00&&RxMessage.Data[3]==0x0c&&RxMessage.Data[4]==0x0c)
                m_BMW_CAN.benze_air_wind_mode = 5;
            else if(RxMessage.Data[2]==0x00&&RxMessage.Data[3]==0x00&&RxMessage.Data[4]==0x0c)
                m_BMW_CAN.benze_air_wind_mode = 6;
            else if(RxMessage.Data[2]==0x0c&&RxMessage.Data[3]==0x0c&&RxMessage.Data[4]==0x0c)
                m_BMW_CAN.benze_air_wind_mode = 7;
        }
        else if(RxMessage.Data[1] == 0x64&&RxMessage.Data[0] == 0x40)//right
        {
            /*
            static BYTE air_buff[10][6],count_air=0;
            for(int i=0;i<6;i++)
            	air_buff[count_air][i]=RxMessage.Data[i];
            count_air++;
            count_air%=10;
            */
            m_BMW_CAN.air_send_id=1;
            m_BMW_CAN.benze_air_Disp =5;
            m_BMW_CAN.benze_air_right_auto = 0;
            if(RxMessage.Data[2]==0&&RxMessage.Data[3]==0&&RxMessage.Data[4]==0&&RxMessage.Data[5]==0x03)
            {
                m_BMW_CAN.benze_air_right_wind_mode = 0;
                m_BMW_CAN.benze_air_right_auto = 1;
            }
            else if(RxMessage.Data[2]==0&&RxMessage.Data[3]==0&&RxMessage.Data[4]==0)//&&RxMessage.Data[5]==0x00)
            {
                m_BMW_CAN.benze_air_right_wind_mode = 0;
                m_BMW_CAN.benze_air_right_auto = 0;
                m_BMW_CAN.air_send_id=1;
            }
            else if(RxMessage.Data[2]==0&&RxMessage.Data[3]==0&&RxMessage.Data[4]==0)
                m_BMW_CAN.benze_air_right_wind_mode = 0;
            else if(RxMessage.Data[2]==0x0c&&RxMessage.Data[3]==0x00&&RxMessage.Data[4]==0x0c)
                m_BMW_CAN.benze_air_right_wind_mode = 1;
            else if(RxMessage.Data[2]==0x0c&&RxMessage.Data[3]==0x00&&RxMessage.Data[4]==0x00)
                m_BMW_CAN.benze_air_right_wind_mode = 2;
            else if(RxMessage.Data[2]==0x0c&&RxMessage.Data[3]==0x0c&&RxMessage.Data[4]==0x00)
                m_BMW_CAN.benze_air_right_wind_mode = 3;
            else if(RxMessage.Data[2]==0x00&&RxMessage.Data[3]==0x0c&&RxMessage.Data[4]==0x00)
                m_BMW_CAN.benze_air_right_wind_mode = 4;
            else if(RxMessage.Data[2]==0x00&&RxMessage.Data[3]==0x0c&&RxMessage.Data[4]==0x0c)
                m_BMW_CAN.benze_air_right_wind_mode = 5;
            else if(RxMessage.Data[2]==0x00&&RxMessage.Data[3]==0x00&&RxMessage.Data[4]==0x0c)
                m_BMW_CAN.benze_air_right_wind_mode = 6;
            else if(RxMessage.Data[2]==0x0c&&RxMessage.Data[3]==0x0c&&RxMessage.Data[4]==0x0c)
                m_BMW_CAN.benze_air_right_wind_mode = 7;
        }

    }
#endif

    if (RxMessage.StdId == AUD_CAN_RADAR_INFO_STD_ID && RxMessage.DLC == 6)
    {
        //ID:001
        //DCL:


        if (RxMessage.Data[1] == 0x92)
        {
            m_RADAR.uFront_Left = (RxMessage.Data[2] >> 4) & 0xFF;
            m_RADAR.uFront_MidLeft = (RxMessage.Data[3] >> 4) & 0xFF;
            m_RADAR.uFront_MidRight = (RxMessage.Data[4] >> 4) & 0xFF;
            m_RADAR.uFront_Right = (RxMessage.Data[5] >> 4) & 0xFF;

			m_RADAR.uFront_Left = m_RADAR.uFront_MidLeft*5+m_RADAR.uFront_Left;
			m_RADAR.uFront_Right = m_RADAR.uFront_MidRight*5+m_RADAR.uFront_Right;

			if(m_RADAR_Bk.uFront_Left != m_RADAR.uFront_Left)
			{
				m_RADAR_Bk.uFront_Left = m_RADAR.uFront_Left;
				m_RADAR.fDisp = 1;
			}
			if(m_RADAR_Bk.uFront_Right != m_RADAR.uFront_Right)
			{
				m_RADAR_Bk.uFront_Right = m_RADAR.uFront_Right;
				m_RADAR.fDisp = 1;
			}			

        }
        else if (RxMessage.Data[1] == 0x93)
        {
            m_RADAR.uRear_Left = (RxMessage.Data[2] >> 4) & 0xFF;
            m_RADAR.uRear_MidLeft = (RxMessage.Data[3] >> 4) & 0xFF;
            m_RADAR.uRear_MidRight = (RxMessage.Data[4] >> 4) & 0xFF;
            m_RADAR.uRear_Right = (RxMessage.Data[5] >> 4) & 0xFF;

			m_RADAR.uRear_Left = m_RADAR.uRear_MidLeft*5+m_RADAR.uRear_Left;
			m_RADAR.uRear_Right = m_RADAR.uRear_MidRight*5+m_RADAR.uRear_Right;

			if(m_RADAR_Bk.uRear_Left != m_RADAR.uRear_Left)
			{
				m_RADAR_Bk.uRear_Left = m_RADAR.uRear_Left;
				m_RADAR.fDisp = 1;
			}
			if(m_RADAR_Bk.uRear_Right != m_RADAR.uRear_Right)
			{
				m_RADAR_Bk.uRear_Right = m_RADAR.uRear_Right;
				m_RADAR.fDisp = 1;
			}
        }



    }

    if (RxMessage.StdId == AUD_CAN_TIMER_STD_ID)
    {
        //ID:39F
        //DCL:
        m_BMW_CAN.Hour_data = RxMessage.Data[2]; //hour
        m_BMW_CAN.Minute_data = RxMessage.Data[3]; //Ê±¼äÊý¾Ý
        m_BMW_CAN.Sec_data = RxMessage.Data[4]; //Ê±¼äÊý¾Ý

    }

    if (RxMessage.StdId == AUD_CAN_MUTE_STD_ID)
    {
        //ID:39F
        //DCL:


    }
	#if 0
    if(Sys.FS_select.rec_type_onoff_id==2)
    {
        if(RxMessage.StdId==AUD_CAN_QUICK_STD_ID&& RxMessage.DLC == 8)
        {
            m_BMW_CAN.Carquick=RxMessage.Data[5]<<8|RxMessage.Data[4];
        }


        if(RxMessage.StdId==AUD_CAN_angle_leftright_STD_ID&& RxMessage.DLC == 4)
        {
            if(RxMessage.Data[1]==0x02||RxMessage.Data[1]==0x0a)
            {
                if(m_BMW_CAN.Car_angle_light!=2)
                {
                    m_BMW_CAN.Car_angle_light=2;
                    m_BMW_CAN.Car_angle_light_updata_id=3;
                }
            }
            else if(RxMessage.Data[1]==0x01||RxMessage.Data[1]==0x09)
            {
                if(m_BMW_CAN.Car_angle_light!=1)
                {
                    m_BMW_CAN.Car_angle_light=1;
                    m_BMW_CAN.Car_angle_light_updata_id=3;
                }
            }
            else if(RxMessage.Data[1]==0x00)
            {
                if(m_BMW_CAN.Car_angle_light!=0)
                {
                    m_BMW_CAN.Car_angle_light=0;
                    m_BMW_CAN.Car_angle_light_updata_id=3;
                }
            }
        }
    }
	#endif





}

void AudiA4_CanBus_InputSource_data_analytic(CanRxMsg RxMessage)
{
    static vu8 uTxtInfoBuf[30];
    static vu8 uTxtIndex = 0;
    BYTE i;



    if (RxMessage.StdId == AUD_CAN_SOURCE2_STD_ID && RxMessage.DLC == 1) //list info
    {
        uTxtIndex = 0;
        //------------------------------------------------------------------
        if(uTxtInfoBuf[5] == 'A' && uTxtInfoBuf[6] == 'U' && uTxtInfoBuf[7] == 'X')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_AUX;

        }
        else if(uTxtInfoBuf[5] == 'E' && uTxtInfoBuf[6] == 'x' && uTxtInfoBuf[7] == 't')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_AUX;

        }
        //-------------------------------------------------------------------
        if(uTxtInfoBuf[5] == 'F' && uTxtInfoBuf[6] == 'M')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;

        }
        else if(uTxtInfoBuf[5] == 'R' && uTxtInfoBuf[6] == 'a' && uTxtInfoBuf[7] == 'd')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;

        }
        else if(uTxtInfoBuf[5] == 'A' && uTxtInfoBuf[6] == 'M')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_RAD;

        }
        else if(uTxtInfoBuf[5] == 'C' && uTxtInfoBuf[6] == 'D')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;

        }
        else if(uTxtInfoBuf[5] == 'S' && uTxtInfoBuf[6] == 'D')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;

        }
        else if(uTxtInfoBuf[5] == 'T' && uTxtInfoBuf[6] == 'r' && uTxtInfoBuf[7] == 'a')
        {
            m_BMW_CAN.CarAudioSoure = CAR_MEDIA_SYSTEM_IN_CD;

        }
        //--------------------------------------------------------------------


        if(m_BMW_CAN.CarAudioSoure == CAR_MEDIA_SYSTEM_IN_RAD||m_BMW_CAN.CarAudioSoure == CAR_MEDIA_SYSTEM_IN_CD)
        {
         //   work_first_on=0;
        }



    }
    if (RxMessage.StdId == AUD_CAN_SOURCE1_STD_ID)//txt info
    {
        for(i = 0; i < RxMessage.DLC; i++)
        {
            uTxtInfoBuf[uTxtIndex%30] = RxMessage.Data[i];
            uTxtIndex++;
            if(uTxtIndex >= 30)
                uTxtIndex = 29;
        }
    }


}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/

static BYTE AudiCan_FetchCmd(void)
{
    BYTE temp;
    if (m_BMW_CAN.uCanFetchCmdIndex != m_BMW_CAN.uCanSendCmdIndex)
    {

        m_BMW_CAN.uCanFetchCmdIndex++;
        if (m_BMW_CAN.uCanFetchCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
        {
            m_BMW_CAN.uCanFetchCmdIndex = 0;
        }
        temp = m_BMW_CAN.uCanFetchCmdIndex;

        return m_BMW_CAN.uCanSendCmdBuf[temp];


    }
    else
    {
        return BENZE_CMD_NULL;
    }
}


void AudiCanBusA4_FetchCmdTask(void)
{
    BYTE action = 0;

    if (!m_BMW_CAN.wLoopTimer)
    {

#if 0
        if(m_BMW_CAN.air_send_id)
        {
            m_BMW_CAN.air_send_id=0;
            //if(m_BMW_CAN.CarAudioSoure == CAR_MEDIA_SYSTEM_IN_AUX)
            if(!((g_stuSYSINFO.sys_main.uMainMode==SYSTEM_MODE_IN_CAR_MEDIA)&&(g_stuSYSINFO.uOSDMainMode==MAIN_OSD_MODE_IN_CAR_AUX)))
                Ipc_Send_Car_Air(m_BMW_CAN.benze_air_Disp,m_BMW_CAN.benze_air_wind_speed,m_BMW_CAN.benze_air_wind_mode,m_BMW_CAN.benze_air_left_temperature,m_BMW_CAN.benze_air_right_wind_speed,m_BMW_CAN.benze_air_right_wind_mode,m_BMW_CAN.benze_air_right_temperature,0);
        }
#endif
        switch (AudiCan_FetchCmd())
        {
        case BENZE_CMD_STEERING_LEFT_KEY_KNOBUP_PRESSED:


            break;
        case BENZE_CMD_STEERING_LEFT_KEY_KNOBDN_PRESSED:

            break;

        case BENZE_CMD_STEERING_LEFT_KEY_KNOB_PRESSED:


            break;
        case BENZE_CMD_STEERING_LEFT_KEY_MODE_PRESSED:

            break;
        case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_PRESSED:

            break;
        case BENZE_CMD_STEERING_RIGHT_KEY_VOICE_PRESSED:

            break;
        case BENZE_CMD_STEERING_RIGHT_KEY_NAVI_KEEP:

            break;
        case BENZE_CMD_STEERING_RIGHT_KEY_VOICE_KEEP:

            break;

        case BENZE_CMD_STEERING_LEFT_KEY_MODE_KEEP://

            break;


            break;

        default:
            break;
        }
        m_BMW_CAN.wLoopTimer = 10;
    }
}


void AudiCanBus_SendControlCmd(BYTE cmd)
{
    m_BMW_CAN.uCanSendCmdIndex++;
    if (m_BMW_CAN.uCanSendCmdIndex >= BENZE_CAN_CNTR_BUF_MAX)
    {
        m_BMW_CAN.uCanSendCmdIndex = 0;
    }
    m_BMW_CAN.uCanSendCmdBuf[m_BMW_CAN.uCanSendCmdIndex] = cmd;
}



#endif


#if 1 //Miller.Tao,2014-09-09
/*define unity API for All CAN function*/

/*
========================
initial can varibale
========================
*/
void LF_CanBus_InitVar(void)
{
    m_BMW_CAN.benze_Steering_angle = 0;

    m_RADAR.uRear_Left    =0;
    m_RADAR.uRear_MidLeft =0;
    m_RADAR.uRear_MidRight=0;
    m_RADAR.uRear_Right   =0;

    m_BMW_CAN.uKeyID2 = BENZE_KEY_ALL_BOUNCED;
    m_RADAR.fDisp=0;

    can_door_last_statu=0x50;
    door_index=0;
    m_CarDoorInfo.show_id=0;

}


void LF_CanBus_FetchCmdTask(void)
{
	AudiCanBusA4_FetchCmdTask();
}

//////////////the 2 following functions is for CAN1,CAN2 ISR ///////////////////////
/*==========================================
*Func:CAN1_USER_HANDLER
*description:handle user's application code of CAN1,a unity interface
*Author:Miller.Tao
*date:20140818
=============================================*/
void CAN1_USER_HANDLER(CanRxMsg RxMessage)
{

	m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
    g_stuCurPower.wPowerOnByCanPwr=2000;
	AudiCanA4_FetchStallsInfo(RxMessage);
	AudiA4_CanBus_FetchSteerAngleInfo(RxMessage);
	AudiA4_CanBus_work_data_analytic(RxMessage);
}


/*==========================================
*Func:CAN2_USER_HANDLER
*description:handle user's application code of CAN2,a unity interface
*Author:Miller.Tao
*date:20140818
=============================================*/

void CAN2_USER_HANDLER(CanRxMsg RxMessage)
{
	//100k
	m_BMW_CAN.benze_Pwr_acc = SYSTEM_POWER_ON;
    g_stuCurPower.wPowerOnByCanPwr=2000;
	AudiA4_CanBus_work_data_analytic(RxMessage);


}

#endif


/**************************************************************************/
/*                                                                        */
/**************************************************************************/
#undef _BENZE_BUS_C_
