/*-------------------------------------------------------------------------

                            �ӿ�ͷ�ļ�
                            
-------------------------------------------------------------------------*/



#ifndef _COMMON_H_
#define _COMMON_H_

#include "stm32f10x.h"
#include "stm32f10x_conf.h"
//#include "BspTime3.h"
#include "IAPUsart.h"

#define ANDROID_UPGRADE


/* Constants used by Serial Command Line Mode */
#define CMD_STRING_SIZE         128
#define	UPDATA_VALUE	0x55015502
#define ApplicationAddress      0x8008000       //APP�����׵�ַ
//#define BackupAddress      0x8000000+0x2000+100*1024       //���ݳ����׵�ַ
#define ApplicationSize         200*1024          //����Ԥ���ռ�
#define	UpdataFlagAddress		((u32)(0x08000000+0x400*256-PAGE_SIZE*4))//0x83e000	//�Ƿ���������־�ĵ�ַ

//#define STM32F10X_HD                            //��ѡ��оƬΪ������оƬ
//#define ApplicationSize			((*(vu16 *)(0x1FFFF7E0)) * 1000) //оƬ�洢�ռ�



#if defined (STM32F10X_MD) || defined (STM32F10X_MD_VL)
 #define PAGE_SIZE                         (0x400)    /* 1 Kbyte */
 #define FLASH_SIZE                        (0x20000)  /* 128 KBytes */
#elif defined STM32F10X_CL
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x40000)  /* 256 KBytes */
#elif defined STM32F10X_HD
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x80000)  /* 512 KBytes */
#elif defined STM32F10X_XL
 #define PAGE_SIZE                         (0x800)    /* 2 Kbytes */
 #define FLASH_SIZE                        (0x100000) /* 1 MByte */
#else 
 #error "Please select first the STM32 device"    
#endif


#define ADU_LENGTH 0x400

#define ARM_send_bootload_upgrade	0x21
#define  ARM_Rec_upgrade_ready_type	0X61
#define COM_SEND_MST779_ID 0x90

#define CMD_HEAD_CODE 0xA0

#define CMD_SEND_FROM_ARM 0x00
#define CMD_SEND_FROM_MCU 0x01

#define CMD_UPGRADE	0x02
#define Send_Bootload_Upgrade	0x01
#define MCU_Bootloader_Ready 0x02
#define Send_Android_Upgrade_Ready	0x03

/* Exported types 
------------------------------------------------------------*/
typedef enum {
    eCOMChoose, 
    eCOMInput,
    eCOMReceive,
    eCOMFlashAddr,
    eCOMFromFlash,
}eCOM_STATUS;

typedef  void (*FunVoidType)(void);
typedef u32 (*FunWriteType)(u8*, u32, u16);
typedef void (*FunProcessType)(u8 *, u32 *, volatile eCOM_STATUS *);

typedef struct
{
    u32 UpgrageOrNot;			 // 1Ϊ������   0Ϊû��Ҫ����
    u32 OldOrNew;
    struct FileInfo
    {
        u32 BinLength;			 //�ļ�����
        u32 CRCValue;			 //CRCУ��	
        u32 Version;			 //����ʱ�жϵİ汾
        u32 BinIndex;
//        u8 Firmware_Version[32]; //�̼��汾
    }BinInfo[2];
}Update_Set_TypeDef;


extern volatile SerialBuffType m_ReceData;

extern volatile eCOM_STATUS m_Mode;

extern u8 UpgradeReady;

extern u8 Tw8836InitFlag;


/* Exported constants --------------------------------------------------------*/









void CommonInit(void);
void JumpToApp(void);
void CommonExec(void);
void IAP_Print(u8 *str);
void Acc_Wdg_Config(void);



#endif
/*********************************** END **************************************/

