/*-------------------------------------------------------------------------

                            �ӿڲ���
                            
                            
-------------------------------------------------------------------------*/
#include "includes.h"



//#include <string.h>

//#include "stm32f10x_flash.h"
//#include "YModem.h"
//#include "common.h"
//#include "Download.h"
//#include "bsp.h"
//#include "BspTime2.h"
//#include "Port.h"
//#include "Pannel.h"



/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
static FunVoidType JumpToApplication;
static FunVoidType FunReceEnter = NULL;
static FunVoidType FunReceExit = NULL;
static FunWriteType FunWrite = NULL;
static FunProcessType FunCurrentProcess = NULL;

static u32 m_JumpAddress;
static u32 m_ProgramAddr = ApplicationAddress;
volatile SerialBuffType m_ReceData = SerialBuffDefault();

volatile eCOM_STATUS m_Mode;
static vu32 m_FlashAddress = 0;
static vu32 m_ExtFlashCounter = 0;       //�ⲿFLASH������������
static u8 FileReceiTimeout = 0;			//�ȴ������ļ���־��10S�ȴ�

u8 pArray[1028] = {0,};
u8 UpgradeReady = 0;
u8 Tw8836InitFlag = 0;

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/




void SoftReset(void)
{
	__set_FAULTMASK(1);      // �ر������ж�
	NVIC_SystemReset();// ��λ
}


void Acc_Wdg_Config(void)
{

    /* Check if the system has resumed from IWDG reset */
    if (RCC_GetFlagStatus(RCC_FLAG_IWDGRST) != RESET)
    {
        /* IWDGRST flag set */


        /* Clear reset flags */
        RCC_ClearFlag();
    }
    else
    {
        /* IWDGRST flag is not set */
        /* Reset GPIO_LED pin 6 */

    }

    /* IWDG timeout equal to 280 ms (the timeout may varies due to LSI frequency
       dispersion) */
    /* Enable write access to IWDG_PR and IWDG_RLR registers */
    IWDG_WriteAccessCmd(IWDG_WriteAccess_Enable);

    /* IWDG counter clock: 40KHz(LSI) / 32 = 1.25 KHz */
    IWDG_SetPrescaler(IWDG_Prescaler_32);

    /* Set counter reload value to 349 */
    IWDG_SetReload(2500);//2s    xs (if 3s is 30000/8=? fill here)

    /* Reload IWDG counter */
    IWDG_ReloadCounter();

    /* Enable IWDG (the LSI oscillator will be enabled by hardware) */
    IWDG_Enable();
}

/*******************************************************************************
* Function Name :void JumpToApp(void)
* Description   :��ת��Ӧ�ó�����
* Input         :None
* Output        :None
* Other         :None
* Date          :2013.02.19
*******************************************************************************/

void JumpToApp(void)
{
    if (((*(vu32*)ApplicationAddress) & 0x2FFE0000 ) == 0x20000000)
    { 
        BspClose();
        // Jump to user application 
        m_JumpAddress = *(vu32*) (ApplicationAddress + 4);
        JumpToApplication = (FunVoidType) m_JumpAddress;

        // Initialize user application's Stack Pointer 
        __set_MSP(*(vu32*) ApplicationAddress);
        JumpToApplication();
    }
}



/*******************************************************************************
* Function Name :static void AppChoose(u8 *pData, u32 *pLen, volatile eCOM_STATUS *peStat)
* Description   :����ѡ��   300ms���� �յ� �ַ�C ����bootload��
* Input         :
* Output        :
* Other         :
* Date          :2013.02.26
*******************************************************************************/

static void AppChoose(u8 *pData, u32 *pLen, volatile eCOM_STATUS *peStat)
{
    
	#if updatamode == 1
	if ((BKP_ReadBackupRegister(BKP_DR1)==0x5A5A)&&(FileReceiTimeout==0))	//�ж��Ƿ���������־�ͽ����ļ�û�г�ʱ
	#else
	if ((UPDATA_VALUE == *(vu32 *)UpdataFlagAddress)&&(FileReceiTimeout==0))	//�ж��Ƿ���������־�ͽ����ļ�û�г�ʱ
	#endif
	{
		MApp_PowerStatus_Send(2);
		if (IS_TIMEOUT_1MS(eTimeWaitStart, NAK_TIMEOUT) 
			&& UpgradeReady == 0)            //���ȴ���ʱ 3s
        { 
			IWDG_ReloadCounter();
			#ifdef ANDROID_UPGRADE
				MApp_PowerStatus_Send(2);
				Request_Upgrade_Send();
			#else
				MApp_Bootloader_Upgrade_Send();
			#endif
		}
		
	}
    else
	{
		UpgradeReady = 0; 
		//SYS_PowerOff();
		printf("\n\rRunToUserProgram");
        JumpToApp(); 
     
        while (1);
     }
     
}



/*******************************************************************************
* Function Name :static void InputSelect(u8 *pData, u32 *pLen, volatile eCOM_STATUS *peStat)
* Description   :����ѡ��
* Input         :
* Output        :
* Other         :
* Date          :2013.02.26
*******************************************************************************/
static void InputSelect(u8 *pData, u32 *pLen, volatile eCOM_STATUS *peStat)
{
	
	m_ProgramAddr = ApplicationAddress; 
	FunReceEnter = FLASH_ProgramStart;
	FunWrite = FLASH_WriteBank;
	FunReceExit = FLASH_ProgramDone;
	*peStat = eCOMReceive;
//	IAP_Print("1\r\n��ѡ��Ҫ�����ļ�");
	*pLen = 0;

}



/*******************************************************************************
* Function Name :static void ReceiveData(u8 *pData, u32 *pLen, volatile eCOM_STATUS *peStat)
* Description   :YModemЭ��������ݣ����洢����
* Input         :
* Output        :
* Other         :
* Date          :2013.02.26
*******************************************************************************/
static void ReceiveData(u8 *pData, u32 *pLen, volatile eCOM_STATUS *peStat)
{
	
    int len = 0;
    //pArray ��Ч������ len��Ч�����ݳ���
    switch (YmodemReceive((char *)(pData), (int *)pLen, (char *)pArray, (int *)&len))
    {
    case YM_FILE_INFO: 
		printf("\r\nUpdataing.");
        if (FunReceEnter) (*FunReceEnter)();    //��ʼ���� ����Flash��
        IS_TIMEOUT_1MS(eTimExitRec, 1);
        break;
        
    case YM_FILE_DATA: 
		printf(".");
        if (FunWrite) (*FunWrite)(pArray, m_ProgramAddr, len);  //�������ݺ��� дһ֡���ݵ�Flash
        m_ProgramAddr += len;
		IS_TIMEOUT_1MS(eTimExitRec, 1);
        break;
        
    case YM_EXIT: 
		printf("\r\nYM_EXIT");
        if (FunReceExit) (*FunReceExit)();      //������Ϻ��� FLASH_Lock
        FunCurrentProcess = eCOMChoose;
        FunReceEnter = NULL;
        FunWrite = NULL;
        FunReceExit = NULL;
        *peStat = eCOMChoose;
		UpgradeReady = 0;
		IS_TIMEOUT_1MS(eTimeWaitStart, 1);
        break;
    }

}



/*******************************************************************************
* Function Name :void CommonExec(void)
* Description   :�ӿں���
* Input         :
* Output        :
* Other         :
* Date          :2013.02.20
*******************************************************************************/
void CommonExec(void)
{
    switch (m_Mode)
    {
    case eCOMChoose:    //�ж��Ƿ�������
        FunCurrentProcess = AppChoose;
		IS_TIMEOUT_1MS(eTimExitRec, 1);
        break;
        
    case eCOMInput:     //IAP����ѡ��
        FunCurrentProcess = InputSelect;
		IS_TIMEOUT_1MS(eTimExitRec, 1);
        break;

    case eCOMReceive:   //YMODEM ��������
        FunCurrentProcess = ReceiveData;
		FileReceiTimeout = 0; 
		if(IS_TIMEOUT_1MS(eTimExitRec, 10000))
		{
			m_Mode = eCOMChoose;	//10s��û�������յ����˳�����
			FileReceiTimeout = 1; 
			IWDG_ReloadCounter();
		}
        break;
        
    default:
        m_Mode = eCOMInput;
        break;
    }
	IWDG_ReloadCounter();
    (*FunCurrentProcess)((u8 *)(m_ReceData.buf), (u32 *)&(m_ReceData.len), &m_Mode);
}






/*********************************** END **************************************/

