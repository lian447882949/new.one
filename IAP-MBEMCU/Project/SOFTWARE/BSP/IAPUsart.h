#ifndef _DrvUsart1_h_
#define _DrvUsart1_h_

#ifdef __IAPUSART_C__
#define __IAPUSART_EXTERN__
#else
#define __IAPUSART_EXTERN__  extern
#endif

#include "stm32f10x.h"




#define USART1_BUFF_LANGTH     1048


typedef struct {
	u32 len;
	u16 ind;	
	u8  buf[USART1_BUFF_LANGTH];
}SerialBuffType;		//发送暂存区

#define SerialBuffDefault() {\
	{0,},\
	0,\
	0,\
}

#define COM_RECEI_MST779_ID 0x91
#define APP_ARM_ID2 0x92
#define COM_SEND_MST779_ID 0x90
#define COM_EMCU_ID 0x92

#define MCU_COM_ACK
#define ARM_Receive_Check_ok  0xff
#define ARM_Receive_Check_error  0xf0
#define ARM_Receive_Check_notsupport  0xf3
#define ARM_Receive_Check_busy  0xfc
//===uart2===
__IAPUSART_EXTERN__ u8 ARM_Receive_ack; //=1OK
__IAPUSART_EXTERN__ u8 ARM_Receive_OK;

__IAPUSART_EXTERN__ u8 ARM_send_id; //正在发送过程中?不能回馈ACK
__IAPUSART_EXTERN__ u8 ARM_ack_request; 
__IAPUSART_EXTERN__ u32 u32Systick; //1ms



__IAPUSART_EXTERN__ u8 g_Uart2CheckTick;//Miller.tao20160502
__IAPUSART_EXTERN__ u8 g_Uart5CheckTick;//Miller.tao20160520

#define UART_RECEIVE_INDEX_MAX  20 //20
#define UART_RECEIVE_CNT_MAX  50 //80
#define UART_RECEIVE_BUSY  0x55
#define UART_RECEIVE_FREE  0xaa
	
#define UART_RECEIVE_CHECK_OK  0xff
#define UART_RECEIVEe_CHECK_ERROR  0xf0
#define UART_RECEIVE_CHECK_NOSUPPORT  0xf3
#define UART_RECEIVE_CHECK_BUSY  0xfc

__IAPUSART_EXTERN__ u8 g_ucUart2RecvLength;
__IAPUSART_EXTERN__ u8 ARM_Rec_buffer[UART_RECEIVE_INDEX_MAX][UART_RECEIVE_CNT_MAX];
__IAPUSART_EXTERN__ u8 ARM_Receive_index;
__IAPUSART_EXTERN__ u8 ARM_Done_index;
__IAPUSART_EXTERN__ u8 g_Uart2CmdBuf2[UART_RECEIVE_CNT_MAX];
__IAPUSART_EXTERN__ u8 g_ucUart2BufIndex2;

#define  ARM_rec_src_max	2
__IAPUSART_EXTERN__ u8 ARM_rec_src_buff[ARM_rec_src_max];



#define MOD_SW_BUF_MAX          20
#define IPC_RX_GROUP_MAX        20

#define IPC_RX_BUF_MAX            50
#define IPC_TX_BUF_MAX            10

typedef struct __GPS_DATA
{
    vu8 uSoundFlag;
    vu8 uGPSExitFlag;
    vu8 uPreSoundFlag;
    vu8 uPreGPSExitFlag;
    u8 uAction;
    u8 RxWriteIndex;
    u8 RxReadIndex;
    u8 Rx[IPC_RX_GROUP_MAX][IPC_RX_BUF_MAX + 10];
    u8 RxIndex;
    u8 RxEn;
    u16 RxFinishTimer;

    u16 HandWriteTimer;


} GPS_DATA;

__IAPUSART_EXTERN__  GPS_DATA g_GPS_DATA;

#define GPSCMDBUFFMAX 10
#define GPSCMDBUFFLENGTH 16
__IAPUSART_EXTERN__ u8  gGPSCmdBuffer[GPSCMDBUFFMAX][GPSCMDBUFFLENGTH];
__IAPUSART_EXTERN__ u8  gGPSCmdWrtIndex;
__IAPUSART_EXTERN__ u8  gGPSCmdRdIndex;

extern SerialBuffType m_SendBuff;
extern SerialBuffType m_ReceBuff;
extern bool volatile eTXIdle;





void BspUsart1Init(void);
void BspUsart1Close(void);
void BspUsart2Close(void);

u16 IAPUsartSend(u8 *buf, u16 len);
u16 IAPUsart2Send(u8 *buf, u16 len);
u16 Usart3SendString(u8 *buf, u16 len);

u16 BspUsart1Receive(u8 *buf);
void BspUsart3Init(void);
void BspUsart4Init(void);

u8 Usart1ReceiveByte(void);
void BspUsart1IRQCallBack(void *fun);
void ReceOneChar(u8 ReceCharacter);
void BspUsart2Init(void);
void MApp_Bootloader_Upgrade_Send(void);
void ReceOneCharVerify(u8 ReceCharacter);
void MApp_Proc_Uart(void);
void Upgrade_CMD_PROCESS(void);
void ReceOneCharByandroid(u8 ReceCharacter);
void Request_Upgrade_Send(void);
void Request_Package_Sum_Send(void);
void Request_Package_Send(uint32_t num);

void delay_500us(void);
void delay_100us(void);
void delay_10us(void);
void delay_5us(void);
void delay_1us(void);
void Delay_1ms (u32 count);

#define MCU_UART3_TX_FIFO_SIZE 256
#define MCU_UART3_RX_FIFO_SIZE 256
#define MCU_UART2_TX_FIFO_SIZE 256
#define MCU_UART2_RX_FIFO_SIZE 256

EXPORT_FIFO_API(McuUart3_TxFifo,MCU_UART3_TX_FIFO_SIZE,u8,u16);
EXPORT_FIFO_API(McuUart3_RxFifo,MCU_UART3_RX_FIFO_SIZE,u8,u16);
EXPORT_FIFO_API(McuUart2_TxFifo,MCU_UART2_TX_FIFO_SIZE,u8,u16);
EXPORT_FIFO_API(McuUart2_RxFifo,MCU_UART2_RX_FIFO_SIZE,u8,u16);




#endif
/********************** END ***************************************************/


