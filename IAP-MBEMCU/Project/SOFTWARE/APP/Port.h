
#ifndef __PORT_H__
#define __PORT_H__
#ifdef __PORT_C__
#define __PORT_EXTERN__
#else
#define __PORT_EXTERN__  extern
#endif

#include "stm32f10x.h"
//power
#define POWER_TFT_LED__PORT               GPIOB
#define POWER_TFT_LED__PIN                 GPIO_Pin_15

#define TFT_LED_PWM_PORT       GPIOB
#define TFT_LED_PWM_PIN        GPIO_Pin_8

#define POWER_SYSTEM_PORT       GPIOC
#define POWER_SYSTEM_PIN        GPIO_Pin_13

#define COM_GPS_RX_PORT               GPIOB
#define COM_GPS_RX_PIN                 GPIO_Pin_11
#define COM_GPS_TX_PORT               GPIOB
#define COM_GPS_TX_PIN                 GPIO_Pin_10

#define COM_DEBUG_RX_PORT            GPIOC
#define COM_DEBUG_RX_PIN             GPIO_Pin_11
#define COM_DEBUG_TX_PORT            GPIOC
#define COM_DEBUG_TX_PIN             GPIO_Pin_10



#define P_TW8823_SCL  GPIO_Pin_3
#define P_TW8823_SDA  GPIO_Pin_2

#define TW8836_RST_PIN GPIO_Pin_1
#define TW8836_RST_PORT GPIOB

#define MMCU_RST_PIN GPIO_Pin_1
#define MMCU_RST_PORT GPIOB


#define CAN_ERR_PORT               GPIOA
#define CAN_ERR_PIN                 GPIO_Pin_8
#define CAN_STB_PORT              GPIOA
#define CAN_STB_PIN                 GPIO_Pin_9
#define CAN_EN_PORT                GPIOA
#define CAN_EN_PIN                   GPIO_Pin_10

#define CAN_RX_PORT               GPIOA
#define CAN_RX_PIN                 GPIO_Pin_11
#define CAN_TX_PORT               GPIOA
#define CAN_TX_PIN                 GPIO_Pin_12

#define AV_IIC_CLK_PORT GPIOC
#define AV_IIC_CLK_PIN   GPIO_Pin_3
#define AV_IIC_DAT_PORT GPIOC
#define AV_IIC_DAT_PIN   GPIO_Pin_2


#define CAN2_RX_PORT               GPIOB
#define CAN2_RX_PIN                 GPIO_Pin_12
#define CAN2_TX_PORT               GPIOB
#define CAN2_TX_PIN                 GPIO_Pin_13

#define	A100_IN_PORT	GPIOC
#define	A100_IN_PIN		GPIO_Pin_7

#define NAVI_OE_PORT                 GPIOC
#define NAVI_OE_PIN                  GPIO_Pin_5



#define SYS_PowerOn()           GPIO_SetBits(POWER_SYSTEM_PORT,POWER_SYSTEM_PIN)
#define SYS_PowerOff()          GPIO_ResetBits(POWER_SYSTEM_PORT,POWER_SYSTEM_PIN)

#define TFT_LightOn()           GPIO_SetBits(POWER_TFT_LED__PORT,POWER_TFT_LED__PIN)
#define TFT_LightOff()          GPIO_ResetBits(POWER_TFT_LED__PORT,POWER_TFT_LED__PIN)

#define TFT_Light_PWM_On()           GPIO_SetBits(TFT_LED_PWM_PORT,TFT_LED_PWM_PIN)
#define TFT_Light_PWM_Off()          GPIO_ResetBits(TFT_LED_PWM_PORT,TFT_LED_PWM_PIN)



#define CAN_STB_SET()           GPIO_SetBits(CAN_STB_PORT,CAN_STB_PIN)
#define CAN_STB_RESET()         GPIO_ResetBits(CAN_STB_PORT,CAN_STB_PIN)

#define CAN_EN_SET()             GPIO_SetBits(CAN_EN_PORT,CAN_EN_PIN)
#define CAN_EN_RESET()           GPIO_ResetBits(CAN_EN_PORT,CAN_EN_PIN)


#define NAVI_OE_Set()	GPIO_SetBits(NAVI_OE_PORT,NAVI_OE_PIN)
#define NAVI_OE_Reset()	GPIO_ResetBits(NAVI_OE_PORT,NAVI_OE_PIN)


#define A100_IN_PORT_SET()           GPIO_SetBits(A100_IN_PORT,A100_IN_PIN)
#define A100_IN_PORT_RESET()          GPIO_ResetBits(A100_IN_PORT,A100_IN_PIN)


#endif



