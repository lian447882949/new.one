
#ifndef _CANBUSSEND_H_
#define _CANBUSSEND_H_
#ifdef _CANBUSSEND_C_
#define _CANBUSSEND_EXT_
#else
#define _CANBUSSEND_EXT_  extern
#endif

_CANBUSSEND_EXT_ void Can_Tx(CAN_TypeDef *CANx, CanTxMsg *TxMessage);

_CANBUSSEND_EXT_ void BWM_up_window(void);
_CANBUSSEND_EXT_ void BWM_Lock_Op_Task(void);
_CANBUSSEND_EXT_ void BWM_SpeakerAlarm_Task(void);
_CANBUSSEND_EXT_ void BWM_SpeakerAlarm_FindCar_Task(void);
_CANBUSSEND_EXT_ void SuitableTask(void);
_CANBUSSEND_EXT_ void SyncOptionKeyTask(void);
_CANBUSSEND_EXT_ void LeftPushKey_Send(void);

#endif


