#ifndef __PORT_H__
#define __PORT_H__
#ifdef __PORT_C__
#define __PORT_EXTERN__
#else
#define __PORT_EXTERN__  extern
#endif

#define BMW_7103_BOARD

#ifdef BMW_7103_BOARD

#define POWER_MAIN_PORT       GPIOB
#define POWER_MAIN_PIN        GPIO_Pin_5


#define TFT_LED_PWM_PORT       GPIOB
#define TFT_LED_PWM_PIN        GPIO_Pin_8

#define TFT_BLACK_ON_PORT       GPIOB
#define TFT_BLACK_ON_PIN        GPIO_Pin_9


//#define MTN5_CLK_PORT       GPIOB
//#define MTN5_CLK_PIN        GPIO_Pin_8

//#define MTN5_DATA_PORT       GPIOB
//#define MTN5_DATA_PIN        GPIO_Pin_9

#define MTN5_BUSY_PORT       GPIOC
#define MTN5_BUSY_PIN        GPIO_Pin_0


#define CTOUCH_INT_PORT       GPIOA
#define CTOUCH_INT_PIN        GPIO_Pin_7

#define CTOUCH_SCL_PORT       GPIOA
#define CTOUCH_SCL_PIN        GPIO_Pin_5

#define CTOUCH_SDA_PORT       GPIOA
#define CTOUCH_SDA_PIN        GPIO_Pin_6

#define CTOUCH_RST_PORT       GPIOA
#define CTOUCH_RST_PIN        GPIO_Pin_4

#define TO_8823_TX_PORT       GPIOA
#define TO_8823_TX_PIN        GPIO_Pin_9

#define TO_8823_RX_PORT       GPIOA
#define TO_8823_RX_PIN        GPIO_Pin_10


#define P_TW8823_SCL  GPIO_Pin_3
#define P_TW8823_SDA  GPIO_Pin_2
//Miller.Tao20150709,GPIOA

#define TW8836_RST_Pin GPIO_Pin_5
#define TW8836_RST_PORT GPIOC
/////////////////////////////////////////////


//define Acc detect pin ,GPIOA
#define P_ACC_PORT GPIOA
#define P_ACC_DET GPIO_Pin_1

//define LVDS enable PIN,GPIOA
#define P_LVDS_EN GPIO_Pin_4

//define HDMI enable pin,GPIOA
#define P_HDMI_EN GPIO_Pin_5
//define CAN Power Enable,GPIOA
//#define P_CAN_PWR_EN GPIO_Pin_8
#define P_CAN_RXD GPIO_Pin_11
#define P_CAN_TXD GPIO_Pin_12
//define screen ±³¹â,GPIOB
#define P_TFT_PWR GPIO_Pin_15

//define GPIOC,car recorder power pin
#define P_CarRecorder_PWR GPIO_Pin_6


#define CAN_STB_PORT              GPIOA
#define CAN_STB_PIN                 GPIO_Pin_9
#define CAN_EN_PORT                GPIOA
#define CAN_EN_PIN                   GPIO_Pin_10


//#ifdef  BMW_MAIN_BOARD_VER_4
//#define IR_USED
#define AV_IIC_CLK_PORT GPIOC
#define AV_IIC_CLK_PIN   GPIO_Pin_3
#define AV_IIC_DAT_PORT GPIOC
#define AV_IIC_DAT_PIN   GPIO_Pin_2


#define EEP_IIC_CLK_PORT GPIOC
#define EEP_IIC_CLK_PIN   GPIO_Pin_3
#define EEP_IIC_DAT_PORT GPIOC
#define EEP_IIC_DAT_PIN   GPIO_Pin_2

#define TDA7729_IIC_CLK_PORT GPIOB
#define TDA7729_IIC_CLK_PIN   GPIO_Pin_6

#define TDA7729_IIC_DAT_PORT GPIOB
#define TDA7729_IIC_DAT_PIN   GPIO_Pin_7

#define	A100_CS_PORT	GPIOA
#define	A100_CS_PIN		GPIO_Pin_8
#define	A100_IN_PORT	GPIOC
#define	A100_IN_PIN		GPIO_Pin_7

#define APIX_OE_PORT                 GPIOB
#define APIX_OE_PIN                  GPIO_Pin_14

#define DET_PARKCHECK_PORT               GPIOE
#define DET_PARKCHECK_PIN                GPIO_Pin_2

#define DET_ACCCHECK_PORT               GPIOA
#define DET_ACCCHECK_PIN                 GPIO_Pin_1

#define DET_CAM_PORT                                GPIOA
#define DET_CAM_PIN                                  GPIO_Pin_0

//
#define Q3_KEY_RX__PORT               GPIOC
#define Q3_KEY_RX__PIN                GPIO_Pin_11

#define Q3_KEY_TX__PORT               GPIOC
#define Q3_KEY_TX__PIN                GPIO_Pin_10

//power
#define POWER_TFT_LED__PORT               GPIOB
#define POWER_TFT_LED__PIN                 GPIO_Pin_15

//#define POWER_AUDIO_PORT       GPIOC
//#define POWER_AUDIO_PIN        GPIO_Pin_8

#define POWER_SYSTEM_PORT       GPIOC
#define POWER_SYSTEM_PIN        GPIO_Pin_13
#define P_POWER_MAIN 			GPIO_Pin_13

#define POWER_CarRec_PORT       GPIOC
#define POWER_CarRec_PIN        GPIO_Pin_6
//#define POWER_LVDS_PORT       GPIOB
//#define POWER_LVDS_PIN        GPIO_Pin_5


#define POWER_REAR_CAMERA_PORT       GPIOC
#define POWER_REAR_CAMERA_PIN        GPIO_Pin_9




//#define POWER_DVD_PORT       GPIOC
//#define POWER_DVD_PIN        GPIO_Pin_0

//#define POWER_DVBCMMB_PORT       GPIOC
//#define POWER_DVBCMMB_PIN        GPIO_Pin_7

#define POWER_SYSTEM_AUDIO_PORT                                GPIOC
#define POWER_SYSTEM_AUDIO_PIN                                 GPIO_Pin_3

#define SW_GPS_CAR_PORT                                GPIOC
#define SW_GPS_CAR_PIN                                 GPIO_Pin_4

//#define MUTE_ALL_OUT_MUTE_PORT       GPIOC
//#define MUTE_ALL_OUT_MUTE_PIN        GPIO_Pin_1


#define MUTE_PHONE_MUTE_PORT       GPIOA
#define MUTE_PHONE_MUTE_PIN        GPIO_Pin_7

#define MUTE_NAVI_MUTE_PORT       GPIOB
#define MUTE_NAVI_MUTE_PIN        GPIO_Pin_0


#define KEY_DVD_CP_PORT                 GPIOA
#define KEY_DVD_CP_PIN                  GPIO_Pin_5
//============Miller.Tao200140911,Key,start=====================
//#define DIMMER_PORT                 GPIOB
//#define DIMMER_PIN                  GPIO_Pin_1
//#define KnobENC_ENDA_PORT                 GPIOB
//#define KnobENC_ENDA_PIN                  GPIO_Pin_1

#define NAVI_OE_PORT                 GPIOB
#define NAVI_OE_PIN                  GPIO_Pin_1

#define R24_OE_PORT                 GPIOC
#define R24_OE_PIN                  GPIO_Pin_1

#define CAMERA_OE_PORT       GPIOB
#define CAMERA_OE_PIN        GPIO_Pin_8

#define KnobKey_PORT             GPIOA
#define KnobKey_PIN              GPIO_Pin_4

//============Miller.Tao20140911,Key,end=======================

#define CMMB_IR_PORT               GPIOA
#define CMMB_IR_PIN                 GPIO_Pin_6
#define COM_DVD_IPOD_CMMB_MP5_TX_PORT               GPIOC
#define COM_DVD_IPOD_CMMB_MP5_TX_PIN                 GPIO_Pin_12
#define COM_DVD_IPOD_CMMB_MP5_RX_PORT               GPIOD
#define COM_DVD_IPOD_CMMB_MP5_RX_PIN                 GPIO_Pin_2
#define COM_MCU_TX_PORT                                GPIOA
#define COM_MCU_TX_PIN                                  GPIO_Pin_2
#define COM_MCU_RX_PORT                                GPIOA
#define COM_MCU_RX_PIN                                  GPIO_Pin_3
#define COM_CAM3_IR_PORT               GPIOA
#define COM_CAM3_IR_PIN                 GPIO_Pin_11



#define COM_GPS_RX_PORT               GPIOB
#define COM_GPS_RX_PIN                 GPIO_Pin_11
#define COM_GPS_TX_PORT               GPIOB
#define COM_GPS_TX_PIN                 GPIO_Pin_10
//#define CAN_ERR_PORT               GPIOA
//#define CAN_ERR_PIN                 GPIO_Pin_8
//#define CAN_STB_PORT              GPIOA
//#define CAN_STB_PIN                 GPIO_Pin_9
//#define CAN_EN_PORT                GPIOA
//#define CAN_EN_PIN                   GPIO_Pin_10

#define CAN_RX_PORT               GPIOA
#define CAN_RX_PIN                 GPIO_Pin_11
#define CAN_TX_PORT               GPIOA
#define CAN_TX_PIN                 GPIO_Pin_12

#define CAN2_RX_PORT               GPIOB
#define CAN2_RX_PIN                 GPIO_Pin_12
#define CAN2_TX_PORT               GPIOB
#define CAN2_TX_PIN                 GPIO_Pin_13


#define TFT_LED_LUM_PORT		GPIOC
#define TFT_LED_LUM_PIN			GPIO_Pin_8


#else

#endif

#endif
