
#define __IAPUSART_C__
#include "includes.h"

//#include <string.h>

//#include "stm32f10x_usart.h"
//#include "stm32f10x_gpio.h"
//#include "stm32f10x_rcc.h"
//#include "stm32f10x_nvic.h"



//#include "type.h"
//#include "FIFO.h"
//#include "IAPUsart.h"
//#include "bsp.h"
//#include "common.h"
//#include "BspTime3.h"
//#include "Port.h"


#define	IAP_USART	USART1


SerialBuffType m_SendBuff = SerialBuffDefault();
SerialBuffType m_ReceBuff = SerialBuffDefault();

//SerialBuffType *sb = &m_SendBuff;
//SerialBuffType *rb = &m_ReceBuff;

bool volatile eTXIdle = TRUE;

#define CMD_SEND_FROM_APP 0x00
#define CMD_SEND_FROM_MCU 0x01


//#define _EI() BSP_EnableINT_All()       
//#define _DI() BSP_DisableINT_All()

void BSP_EnableINT_All(void)
{
  //__RESETPRIMASK
 asm(" CPSIE i ");
 asm(" BX r14 ");
}
void BSP_DisableINT_All(void)
{
//__SETPRIMASK
  asm(" CPSID i ");
  asm(" BX r14 ");
}


void BSP_COM_TxEnable(USART_TypeDef *USARTx,u8 cmd)  
{	

    if(cmd==0) USART_ITConfig(USARTx, USART_IT_TXE, DISABLE);
    else USART_ITConfig(USARTx, USART_IT_TXE, ENABLE);
}



NEW_FIFO(McuUart3_TxFifo,MCU_UART3_TX_FIFO_SIZE,u8,u16);
NEW_FIFO(McuUart3_RxFifo,MCU_UART3_RX_FIFO_SIZE,u8,u16);

NEW_FIFO(McuUart2_TxFifo,MCU_UART2_TX_FIFO_SIZE,u8,u16);
NEW_FIFO(McuUart2_RxFifo,MCU_UART2_RX_FIFO_SIZE,u8,u16);





/*******************************************************************************
* Function Name :static s32 BspUsartxInit(void)
* Description   :串口及引脚初始化
* Input         :
* Output        :
* Other         :
* Date          :2013.01.27
*******************************************************************************/
void BspUsart1Init(void)
{

    GPIO_InitTypeDef GpioInitdef;
    USART_InitTypeDef UsartInitdef;
    NVIC_InitTypeDef NvicInitdef;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_USART1 | RCC_APB2Periph_AFIO, ENABLE);

    USART_StructInit( &UsartInitdef );
    UsartInitdef.USART_BaudRate = 19200;
    UsartInitdef.USART_StopBits = USART_StopBits_1;
    UsartInitdef.USART_WordLength = USART_WordLength_8b;
    UsartInitdef.USART_Parity = USART_Parity_No;

    UsartInitdef.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART1, &UsartInitdef);

    GpioInitdef.GPIO_Pin = GPIO_Pin_6; //
    GpioInitdef.GPIO_Speed = GPIO_Speed_10MHz;
    GpioInitdef.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOB, &GpioInitdef);

    GpioInitdef.GPIO_Pin = GPIO_Pin_7; //
    GpioInitdef.GPIO_Speed = GPIO_Speed_10MHz;
    GpioInitdef.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOB, &GpioInitdef);

    GPIO_PinRemapConfig(GPIO_Remap_USART1, ENABLE);

    USART_ITConfig(USART1, USART_IT_TXE, ENABLE);
    USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);

    NvicInitdef.NVIC_IRQChannel = USART1_IRQn;
    NvicInitdef.NVIC_IRQChannelPreemptionPriority = 1;
    NvicInitdef.NVIC_IRQChannelSubPriority = 0;
    NvicInitdef.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init( &NvicInitdef );

    USART_Cmd(USART1, ENABLE);
}

void BspUsart2Init(void)
{

    GPIO_InitTypeDef GpioInitdef;
    USART_InitTypeDef UsartInitdef;
    NVIC_InitTypeDef NvicInitdef;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA 
							| RCC_APB2Periph_AFIO, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
    USART_StructInit( &UsartInitdef );
    UsartInitdef.USART_BaudRate = 115200;
    UsartInitdef.USART_StopBits = USART_StopBits_1;
    UsartInitdef.USART_WordLength = USART_WordLength_8b;
    UsartInitdef.USART_Parity = USART_Parity_No;

    UsartInitdef.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART2, &UsartInitdef);

	GpioInitdef.GPIO_Speed = GPIO_Speed_10MHz;
    GpioInitdef.GPIO_Pin = GPIO_Pin_3;
    GpioInitdef.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_Init(GPIOA, &GpioInitdef);
    GpioInitdef.GPIO_Pin = GPIO_Pin_2;
    GpioInitdef.GPIO_Speed = GPIO_Speed_10MHz;
    GpioInitdef.GPIO_Mode = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOA, &GpioInitdef);

    //GPIO_PinRemapConfig(GPIO_Remap_USART1, ENABLE);

    USART_ITConfig(USART2, USART_IT_TXE, ENABLE);
    USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);

    NvicInitdef.NVIC_IRQChannel = USART2_IRQn;
    NvicInitdef.NVIC_IRQChannelPreemptionPriority = 1;
    NvicInitdef.NVIC_IRQChannelSubPriority = 0;
    NvicInitdef.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init( &NvicInitdef );

    USART_Cmd(USART2, ENABLE);
}


void BspUsart3Init(void)
{

    GPIO_InitTypeDef GpioInitdef;
    USART_InitTypeDef UsartInitdef;
    NVIC_InitTypeDef NvicInitdef;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
    USART_StructInit( &UsartInitdef );
    UsartInitdef.USART_BaudRate = 115200;
    UsartInitdef.USART_StopBits = USART_StopBits_1;
    UsartInitdef.USART_WordLength = USART_WordLength_8b;
    UsartInitdef.USART_Parity = USART_Parity_No;

    UsartInitdef.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART3, &UsartInitdef);

	GpioInitdef.GPIO_Speed = GPIO_Speed_10MHz;
    GpioInitdef.GPIO_Pin = COM_GPS_RX_PIN;
	GpioInitdef.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(COM_GPS_RX_PORT, &GpioInitdef);
	GpioInitdef.GPIO_Pin = COM_GPS_TX_PIN;
	GpioInitdef.GPIO_Speed = GPIO_Speed_10MHz;
	GpioInitdef.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(COM_GPS_TX_PORT, &GpioInitdef);


    USART_ITConfig(USART3, USART_IT_TXE, ENABLE);
    USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);

    NvicInitdef.NVIC_IRQChannel = USART3_IRQn;
    NvicInitdef.NVIC_IRQChannelPreemptionPriority = 1;
    NvicInitdef.NVIC_IRQChannelSubPriority = 0;
    NvicInitdef.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init( &NvicInitdef );

    USART_Cmd(USART3, ENABLE);
}

void BspUsart4Init(void)
{
	
	USART_InitTypeDef USART_InitStructure;
    GPIO_InitTypeDef GpioInitdef;
	
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, ENABLE);

	GpioInitdef.GPIO_Pin = COM_DEBUG_RX_PIN;
	GpioInitdef.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(COM_DEBUG_RX_PORT, &GpioInitdef);
	GpioInitdef.GPIO_Pin = COM_DEBUG_TX_PIN;
	GpioInitdef.GPIO_Speed = GPIO_Speed_10MHz;
	GpioInitdef.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(COM_DEBUG_TX_PORT, &GpioInitdef);


	
	USART_InitStructure.USART_BaudRate = 115200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
	USART_Init(UART4, &USART_InitStructure);
	/* Enable USART1 DMA TX request */
	//USART_DMACmd(USART1, USART_DMAReq_Tx, ENABLE);
	//USART_ITConfig(UART4, USART_IT_RXNE, ENABLE);
	//USART_ITConfig(UART4, USART_IT_TXE, DISABLE);
	USART_Cmd(UART4, ENABLE);
}


void BspUsart1Close(void)
{
    while (eTXIdle != TRUE);
    USART_Cmd(USART1, DISABLE);

    USART_ITConfig(USART1, USART_IT_TXE, DISABLE);
    USART_ITConfig(USART1, USART_IT_RXNE, DISABLE);
    USART_ITConfig(USART1, USART_IT_TC, DISABLE);

    USART_ClearITPendingBit(USART1, USART_IT_TXE);
    USART_ClearITPendingBit(USART1, USART_IT_TC);
    USART_ClearITPendingBit(USART1, USART_IT_RXNE);
}



void BspUsart2Close(void)
{
    while (eTXIdle != TRUE);
    USART_Cmd(USART2, DISABLE);

    USART_ITConfig(USART2, USART_IT_TXE, DISABLE);
    USART_ITConfig(USART2, USART_IT_RXNE, DISABLE);
    USART_ITConfig(USART2, USART_IT_TC, DISABLE);

    USART_ClearITPendingBit(USART2, USART_IT_TXE);
    USART_ClearITPendingBit(USART2, USART_IT_TC);
    USART_ClearITPendingBit(USART2, USART_IT_RXNE);
}

void BspUsart3Close(void)
{
    while (eTXIdle != TRUE);
    USART_Cmd(USART3, DISABLE);

    USART_ITConfig(USART3, USART_IT_TXE, DISABLE);
    USART_ITConfig(USART3, USART_IT_RXNE, DISABLE);
    USART_ITConfig(USART3, USART_IT_TC, DISABLE);

    USART_ClearITPendingBit(USART3, USART_IT_TXE);
    USART_ClearITPendingBit(USART3, USART_IT_TC);
    USART_ClearITPendingBit(USART3, USART_IT_RXNE);
}



unsigned char Buff[25];


void Delay_1ms (u32 count)
{
#if 1
    u32Systick=0;
    for (;;)
    {	
		IWDG_ReloadCounter();
        if (u32Systick >= count)
        {
            break;
        }
    }
#endif
}
#if 0 //miller.tao2016010
void Delay_1ms (u32 count)
{
    u32 DelayMs,DelayUs;

    for(DelayMs=count; DelayMs; DelayMs--)
    {
        for(DelayUs=100; DelayUs; DelayUs--)
            delay_10us();

    }
}
#endif

void delay_500us(void)
{
    unsigned char i=0;

    for(i=0; i<50; i++)
        delay_10us();
}


void delay_100us(void)
{
    unsigned char i=0;

    for(i=0; i<10; i++)
        delay_10us();
}

void delay_50us(void)
{
    unsigned char i=0;

    for(i=0; i<5; i++)
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


void ARM_Uart_Char(unsigned char char_Temp)
{
    unsigned char TimeCnt;

    USART_SendData(USART2, char_Temp);
    TimeCnt=200;
    while((USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET)&&(--TimeCnt!=0))
    {
        delay_5us();
    }
}
//#define COM_MCU_ID 0x90
void ARM_Uart_ACK(unsigned char char_Temp)
{
    /*
    unsigned char TimeCnt=250;

    	USART_SendData(USART2, char_Temp);
    	TimeCnt=200;
    	while((USART_GetFlagStatus(USART2, USART_FLAG_TXE) == RESET)&&(--TimeCnt!=0))
    	{
    		delay_5us();
    	}
    */
    if(IAPUsart2Send(&char_Temp,1) != TRUE)
    {

    }
}

void ARM_Receive_ACK(unsigned char send_type)
{
    switch(send_type)
    {
    case  ARM_Receive_Check_ok:
        ARM_Uart_ACK(ARM_Receive_Check_ok);
        break;
    case  ARM_Receive_Check_error:
        ARM_Uart_ACK(ARM_Receive_Check_error);
        break;
    case  ARM_Receive_Check_notsupport:
        ARM_Uart_ACK(ARM_Receive_Check_notsupport);
        break;
    case  ARM_Receive_Check_busy:
        ARM_Uart_ACK(ARM_Receive_Check_busy);
        break;
    }
}

unsigned char ARM_data_Send_data(unsigned char *data)
{
    u16 length,i;

    length=*(data+3);
    ARM_Receive_ack = 0;
#ifdef MCU_COM_ACK//,miller.tao20160630S
    ARM_send_id=1;
#endif
    /*
    for(i=0;i<=(length+4);i++)
    {
    ARM_Uart_Char(*(data+i));
    }
    */
    if(IAPUsart2Send(data,length+5) != TRUE)
    {
        return FALSE;
    }
    //ARM_send_id=0;

#ifdef MCU_COM_ACK//miller.tao20160630S
    ARM_send_id=0;

    if(ARM_ack_request!=0)
    {
        ARM_Receive_ACK(ARM_ack_request);
        ARM_ack_request=0;
    }
    for(i=2000; i; i--)
    {
        if(ARM_Receive_ack==ARM_Receive_Check_ok)
            return TRUE;
        if(ARM_Receive_ack==ARM_Receive_Check_busy)
            return FALSE;
        delay_10us();
        //delay_50us();

    }
    return FALSE;
#else
    return TRUE;//FALSE;
#endif

}


void ARM_data_Send(u8 *data)
{
    //BYTE length,i;

    //ARM_Receive_ack=0;
    if(ARM_data_Send_data(data)==FALSE)
    {
        /*
        Delay_1ms(10);
        if(ARM_data_Send_data(data)==FALSE)
        {
        	Delay_1ms(10);
          	ARM_data_Send_data(data);
        }
        */
    }

}


/*******************************************************************************
* Function Name :s32 BspUsartSend(u8* buf, u32 len)
* Description   :发送一组字符串
* Input         :*buf:字符串指针。len:长度
* Output        :
* Other         :
* Date          :2012.05.11  11:45:38
*******************************************************************************/
u16 IAPUsartSend(u8 *buf, u16 len)
{
    if( (0 == m_SendBuff.len) && (len > 0) && (len <= USART1_BUFF_LANGTH) && (eTXIdle == TRUE))
    {
        USART_SendData(USART1, *buf++);
        eTXIdle = FALSE;
        m_SendBuff.len = len-1;
        m_SendBuff.ind = 0;
        memcpy(m_SendBuff.buf, buf, len - 1);
        USART_ITConfig(USART1, USART_IT_TXE, ENABLE);
        return TRUE;
    }

    return FALSE;
}

u16 IAPUsart2Send(u8 *buf, u16 len)
{
    if( (0 == m_SendBuff.len) && (len > 0) && (len <= USART1_BUFF_LANGTH) && (eTXIdle == TRUE))
    {
        USART_SendData(USART2, *buf++);
        eTXIdle = FALSE;
        m_SendBuff.len = len-1;
        m_SendBuff.ind = 0;
        memcpy(m_SendBuff.buf, buf, len - 1);
        USART_ITConfig(USART2, USART_IT_TXE, ENABLE);
        return TRUE;
    }

    return FALSE;
}

u16 Usart2SendString(u8 *buf, u16 len)
{
    if( (0 == m_SendBuff.len) && (len > 0) && (len <= USART1_BUFF_LANGTH) && (eTXIdle == TRUE))
    {
        USART_SendData(USART2, *buf++);
        eTXIdle = FALSE;
        m_SendBuff.len = len-1;
        m_SendBuff.ind = 0;
        memcpy(m_SendBuff.buf, buf, len - 1);
        USART_ITConfig(USART2, USART_IT_TXE, ENABLE);
        return TRUE;
    }

    return FALSE;
}



/*******************************************************************************
* Function Name :static void Print(u8 *str)
* Description   :打印消息  串口发送
* Input         :
* Output        :
* Other         :
* Date          :2013.03.01
*******************************************************************************/
void IAP_Print(u8 *str)
{
    u16 len = 0;

    len = strlen((const char *)str);

    while (IAPUsart2Send(str, len) != TRUE);
}


void MApp_Bootloader_Upgrade_Send(void)
{
    u8 i,check_sum=0;

    Buff[0]=0X2e;
    Buff[1]=COM_SEND_MST779_ID;
    Buff[2]=ARM_send_bootload_upgrade;//Cmd
    Buff[3]=0x1;//,length0x14
    Buff[4]=0x55;

    check_sum=Buff[1];
    for(i=2; i<=(Buff[3]+3); i++)
        check_sum=check_sum^Buff[i];//校验和
    Buff[Buff[3]+4]=check_sum;

    ARM_data_Send(Buff);
    //IAPUsart2Send(Buff,Buff[3]+5);
}


void IAPSendDataToMMCU(u8 *pdata,u16 len)
{
  u8 i=0;
  u8 checksum = 0; 

    #if!(USE_IEBUS==1)
     // _DI();
    #endif
    FIFO_PUT_ONE(McuUart2_TxFifo,0xA0);
    FIFO_PUT_ONE(McuUart2_TxFifo,len); 
    checksum = 0;
	checksum += len;
    while (i<len) 
    {
	  //if(i != 0)
	  checksum += pdata[i];
      FIFO_PUT_ONE(McuUart2_TxFifo,pdata[i]);
	  i++;
	  IWDG_ReloadCounter();//MSP_FeedWDT();
    }
    FIFO_PUT_ONE(McuUart2_TxFifo,checksum); 
    BSP_COM_TxEnable(USART2,1);
    #if!(USE_IEBUS==1)
    //  _EI();
    #endif
  printf("\r\n[EIAP >>>>>>> MMCU]:");
  for(i=0;i<len;i++) printf("0x%02X ",pdata[i]);
}
/********************
	请求进入升级
********************/
void Request_Upgrade_Send(void)
{
#if 1
	u8 buffer[4] = {CMD_UPGRADE,MCU_Bootloader_Ready,COM_EMCU_ID};
	buffer[3] = 0x01;
	IAPSendDataToMMCU(buffer,sizeof(buffer));
#else
    u8 buffer[10],i;
    u8 checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 4;//length
    buffer[2] = CMD_UPGRADE;// a common id
    buffer[3] =  MCU_Bootloader_Ready;//data type
    buffer[4] =  CMD_SEND_FROM_MCU;
	buffer[5] = 0x01;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;
	
	printf("\r\n[IAP >>>>>>> APP]:");
	for(i=0;i<buffer[1];i++) printf("0x%02X ",buffer[i+2]);
	
    Usart3SendString(buffer,buffer[1]+3);
#endif
}

/*********************
	请求总包数
********************/
void Request_Package_Sum_Send(void)
{
    u8 buffer[10],i;
    u8 checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 7;//length
    buffer[2] = 0x01;// CMD_ID_PANAL;//cmd tye :here is 0x00, a common id
    buffer[3] =  0x01;//data type
    buffer[4] =  0x0;//data type
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Usart3SendString(buffer,buffer[1]+3);

}


/*********************
	请求包数
********************/
void Request_Package_Send(uint32_t num)
{
    u8 buffer[10],i;
    u8 checksum=0;

    buffer[0] =  CMD_HEAD_CODE;
    buffer[1] = 7;//length
    buffer[2] = 0x01;// CMD_ID_PANAL;//cmd tye :here is 0x00, a common id
    buffer[3] =  0x02;//data type
    buffer[4] =  0x0;//data type
    buffer[5] =  (uint8_t)num;
	buffer[6] =  (uint8_t)num>>8;
	buffer[7] =  (uint8_t)num>>16;
	buffer[8] =  (uint8_t)num>>24;
    //calculation the checksum
    for(i=1; i<=(buffer[1]+1); i++)
    {
        checksum += buffer[i];

    }
    buffer[buffer[1] +2] = checksum;

    Usart3SendString(buffer,buffer[1]+3);

}

/*******************************************************************************
* Function Name :void ReceOneChar(u8 ReceCharacter)
* Description   :接收到一个字符
* Input         :
* Output        :
* Other         :
* Date          :2013.02.19
*******************************************************************************/
void ReceOneChar(u8 ReceCharacter)
{
    if (m_ReceData.ind >= USART1_BUFF_LANGTH)
        return;

    if (m_ReceData.len > 0)
        return;

    m_ReceData.buf[m_ReceData.ind++] = ReceCharacter;
    BspTim3Open();      //定时器重新计数
}


void ReceOneCharVerify(u8 ReceCharacter)
{

    u8 uRevData;
    u8 checksum = 0, i = 0;
    uRevData=ReceCharacter;

    g_Uart2CheckTick = 20;

    if (g_ucUart2BufIndex2 >= UART_RECEIVE_CNT_MAX)
    {
        g_ucUart2BufIndex2 = 0;
    }

    g_Uart2CmdBuf2[g_ucUart2BufIndex2] = uRevData;

    if(g_ucUart2BufIndex2==0)//check the start code
    {
        if(g_Uart2CmdBuf2[g_ucUart2BufIndex2]==0x2e)//is start code
        {
            g_ucUart2BufIndex2 =1;
        }
        else//no start code,ACK
        {
            switch(g_Uart2CmdBuf2[g_ucUart2BufIndex2])
            {
            case 0xFF:
                ARM_Receive_OK=1;
                ARM_Receive_ack=ARM_Receive_Check_ok;
                break;
            case 0xF0:
                ARM_Receive_OK=1;
                ARM_Receive_ack=ARM_Receive_Check_error;
                break;
            case 0xF3:
                ARM_Receive_OK=1;
                ARM_Receive_ack=ARM_Receive_Check_notsupport;
                break;
            case 0xFC:
                ARM_Receive_OK=1;
                ARM_Receive_ack=ARM_Receive_Check_busy;
                break;
            default:
                break;

            }
            g_Uart2CheckTick = 0;

        }
    }
    else if(g_ucUart2BufIndex2==1)
    {
        if(g_Uart2CmdBuf2[g_ucUart2BufIndex2]!=COM_RECEI_MST779_ID&&(g_Uart2CmdBuf2[g_ucUart2BufIndex2]!=0x55))//no a pckage
        {

#ifdef MCU_COM_ACK//,miller.tao20160630S
            if(ARM_send_id==1)
            {
                ARM_ack_request=ARM_Receive_Check_notsupport;
            }
            else
            {
                ARM_Receive_ACK(ARM_Receive_Check_notsupport);//应答
            }
#endif
            g_ucUart2BufIndex2 = 0;
            g_Uart2CheckTick = 0;
        }
        else
        {
            g_ucUart2BufIndex2++;
        }
    }
    else
    {
        if(g_ucUart2BufIndex2==3)//length
        {
            g_ucUart2RecvLength = g_Uart2CmdBuf2[g_ucUart2BufIndex2];
            if(g_ucUart2RecvLength > (UART_RECEIVE_CNT_MAX-3))
                g_ucUart2RecvLength = 0;
        }
        else if(g_ucUart2BufIndex2>3)
        {
            if(g_ucUart2BufIndex2>=(g_ucUart2RecvLength+4))
            {
                //-----接受完成
                /*==========BCC,start=============*/
                checksum = g_Uart2CmdBuf2[1];
                for(i=2; i<=(g_ucUart2RecvLength+3); i++)
                    checksum=checksum^g_Uart2CmdBuf2[i];//校验和

                if(checksum==(g_Uart2CmdBuf2[g_ucUart2RecvLength+4]))//a correct pakage
                {
                    g_ucUart2BufIndex2 = 0;
                    ARM_Receive_OK=1;
                    //g_Uart2CheckTick = 0;
                    // PrintfUart2(printf("checkok "));
                    if(ARM_Rec_buffer[ARM_Receive_index][UART_RECEIVE_CNT_MAX-1]!=UART_RECEIVE_BUSY)
                    {
                        for(i=0; i<(UART_RECEIVE_CNT_MAX-1); i++)
                            ARM_Rec_buffer[ARM_Receive_index][i]=g_Uart2CmdBuf2[i];
                        ARM_Rec_buffer[ARM_Receive_index][UART_RECEIVE_CNT_MAX-1]=UART_RECEIVE_BUSY;

                        //ack
                        if(ARM_Receive_index<(UART_RECEIVE_INDEX_MAX-1))
                            ARM_Receive_index++;
                        else
                            ARM_Receive_index=0;

#ifdef MCU_COM_ACK//,miller.tao20160630S
                        if(ARM_send_id==1)
                        {
                            ARM_ack_request=ARM_Receive_Check_ok;
                        }
                        else
                        {

                            ARM_Receive_ACK(ARM_Receive_Check_ok);//应答
                        }
#endif
                        //PrintfUart2(printf("pakeok "));
                    }
                    else
                    {
#ifdef MCU_COM_ACK//,miller.tao20160630S
                        if(ARM_send_id==1)
                        {
                            ARM_ack_request=ARM_Receive_Check_busy;
                        }
                        else
                        {
                            ARM_Receive_ACK(ARM_Receive_Check_busy);//应答
                        }
#endif
                        //busy,need to tell mcu
                    }
                    goto LF_OUT;

                }
                else//error package
                {
                    g_ucUart2BufIndex2 = 0;
                    g_Uart2CheckTick = 0;
#ifdef MCU_COM_ACK//,miller.tao20160630S
                    if(ARM_send_id==1)
                    {
                        ARM_ack_request=ARM_Receive_Check_error;
                    }
                    else
                    {
                        ARM_Receive_ACK(ARM_Receive_Check_error);//应答

                    }
#endif
                    //return;
                    goto LF_OUT;
                }
            }
        }
        g_ucUart2BufIndex2++;
    }
LF_OUT:
    ;
}

void ReceOneCharByandroid(u8 ReceCharacter)
{

    u8 uRevData;
    u8 uChecksum = 0, i = 0;
    uRevData=ReceCharacter;

    if(g_GPS_DATA.RxFinishTimer ==0)
    {
        g_GPS_DATA.RxIndex=0;
        g_GPS_DATA.RxWriteIndex++;
        g_GPS_DATA.RxWriteIndex %= IPC_RX_GROUP_MAX;
    }

    g_GPS_DATA.RxFinishTimer = 10;//30;//10

    g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][g_GPS_DATA.RxIndex] = uRevData;

    g_GPS_DATA.RxIndex++;
    if (g_GPS_DATA.RxIndex >= IPC_RX_BUF_MAX)
    {
        g_GPS_DATA.RxIndex = IPC_RX_BUF_MAX - 1;
    }
	if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][0] == 0xA0)//正芯
    {
        //Miller.tao20151127
        if(g_GPS_DATA.RxIndex>5)
        {
            if(g_GPS_DATA.RxIndex > (g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]+2))
            {
                uChecksum=0;
                //checksum calculation
                for(i=1; i<=(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]+1); i++)
                {
                    uChecksum+=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];

                }
                if(uChecksum==g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]+2])
                {
                    if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][3] != 0x05)
                    {
                        for(i=0; i<=(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][1]+2); i++)
                        {
                      //      cmd.msgbuf[i]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];
                      //      GPSDebug[i]=cmd.msgbuf[i];
                            gGPSCmdBuffer[gGPSCmdWrtIndex][i]=g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][i];//cmd.msgbuf[i];
                        }
                        gGPSCmdWrtIndex++;
                        if(gGPSCmdWrtIndex>=GPSCMDBUFFMAX)gGPSCmdWrtIndex = 0;

                        //if(g_GPS_DATA.Rx[g_GPS_DATA.RxWriteIndex][3] != 0x05)
                        //MSG_SendcmdMesssage(&cmd);
                    }
					g_GPS_DATA.RxFinishTimer = 0;
                }
				else
                {
                    g_GPS_DATA.RxIndex = 0;

				}
            }
        }
    }
}



void MApp_Proc_Uart(void)
{
    u8 i,j;
    u8 arm_rec_type=0xFF;//0x00
    u32 tempfalg = UPDATA_VALUE;
//    U8 arm_rec_index=0;

    if(ARM_Done_index>(UART_RECEIVE_INDEX_MAX-1))
        ARM_Done_index=0;
    for(j=0; j<UART_RECEIVE_INDEX_MAX; j++)
    {
        if(ARM_Rec_buffer[ARM_Done_index][UART_RECEIVE_CNT_MAX-1]==UART_RECEIVE_BUSY)
        {
            arm_rec_type=0xFF;//0;

            if(ARM_Rec_buffer[ARM_Done_index][1] == COM_RECEI_MST779_ID)
            {
                switch(ARM_Rec_buffer[ARM_Done_index][2])  //buffer data
                {
                case ARM_Rec_upgrade_ready_type:
                    m_Mode = eCOMInput;
                    UpgradeReady = 1;
                    break;
                default:
                    break;
                }

                ARM_Rec_buffer[ARM_Done_index][UART_RECEIVE_CNT_MAX-1]=UART_RECEIVE_FREE;
                //handle data received from uart
                switch(arm_rec_type)
                {

                default:
                    break;
                }
            }
        }
#if 0
        if(ARM_Done_index<(UART_RECEIVE_INDEX_MAX-1))
            ARM_Done_index++;
        else
            ARM_Done_index=0;
#endif
        ARM_Done_index++;
        if(ARM_Done_index>(UART_RECEIVE_INDEX_MAX-1)) ARM_Done_index=0;
    }
}



void APPCmdAnalysis(u8 *DataP,u16 len)  //TOM.DENG 2016..21
{
	if(CMD_SEND_FROM_MCU == DataP[2])
	{
	    switch(DataP[0])
	    {
	    case CMD_UPGRADE:
			if(Send_Android_Upgrade_Ready == DataP[1])
			{
				m_Mode = eCOMInput;
				UpgradeReady = 1;
				printf("\r\nReadyToUpdata");
			}
			
	        break;
	    default:
	        break;
	    }
	}
}


void DealMainMcuComMag(void) //TOM.DENG 2016.11.30
{
	u8 i,data;        
	static u16 MagLen,MagLenMax;	
    static u8 ComMagStatus;
    static u8 checksum;
	static u8 MsgPackage[256];

     //DealLinHostProc();
	 //return;
	 
    if( FIFO_GET_ONE(McuUart2_RxFifo,&data))
    {        

        switch (ComMagStatus)
		{
		case 0:
			if (data == 0xA0) 
			{
				ComMagStatus = 1;
				checksum  = 0;
				//printf("\r\n0x%02X ",data);
			}
			else ComMagStatus = 0;
			break;
		case 1:
			{
				ComMagStatus = 2;
                MagLenMax = data;
				MagLen = 0;
				checksum += data;
				//printf("\r\n0x%02X ",data);
			}
			break;
		case 2:
			if(MagLen < MagLenMax)
			{
				MsgPackage[MagLen] = data;
				checksum += data;
				MagLen ++;
			}
			else
			{
				MsgPackage[MagLen] = data;
				if(data == checksum)
				{
				#if 1
					printf("\r\n[MMCU >>>>>>> EIAP]:");
					for(i=0;i<MagLen;i++) 
					{
						printf("0x%02X ",MsgPackage[i]);
					}
					printf("\r\n"); 
				#endif
					APPCmdAnalysis(MsgPackage,MagLen);
				}
				else
				{
				#if 1
				  	  printf("\n[MMCU >>>>>>> EIAP]:--->ERROR:");
					  for(i=0;i<(MagLen+1);i++)
					  {
							printf("0x%02X ",MsgPackage[i]);
					  }
					  printf("\n");	
				#endif
				}
				ComMagStatus = 0;
			}
			break;
		default:
			ComMagStatus = 0;
			break;
		}
    }
}





void Upgrade_CMD_PROCESS(void)
{
    u8 cmd,datatype;
    if(gGPSCmdRdIndex==gGPSCmdWrtIndex)
		return;

    cmd  = gGPSCmdBuffer[gGPSCmdRdIndex][2];
    datatype = gGPSCmdBuffer[gGPSCmdRdIndex][3];
    switch(cmd)
    {
   		case CMD_UPGRADE:	//IAP
		{
	        switch(datatype)
	        {
				case Send_Android_Upgrade_Ready:	//
				{
					m_Mode = eCOMInput;
                    UpgradeReady = 1;
				}break;
				

				default:break;
			}
    	}break;
		
    }
	gGPSCmdRdIndex++;
    if(gGPSCmdRdIndex>=GPSCMDBUFFMAX)gGPSCmdRdIndex=0;
}

/*******************************************************************************
* Function Name :u16 BspUsart1Receive(u8 *buf)
* Description   :读取接收的字符串
* Input         :buf: 缓冲变量
* Output        :
* Other         :
* Date          :2013.02.20
*******************************************************************************/
//u16 BspUsart1Receive(u8 *buf)
//{
//    u16 len = rb->ind;
//
//    memcpy(buf, rb->buf, len );
//    rb->ind = 0;
//
//    return len;
//}


/********************** END ***************************************************/


