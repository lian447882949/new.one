/*
*
*this file iis used to config the CAN TYPE and CAR TYPE
*author :Miller.Tao,20140818
*/
#ifndef _CAN_CINFIG_
#define _CAN_CINFIG_

//define CAN type for different CAR
#define NO_CAN 0x00
#define AudiA4CAN 0x01
#define AudiQ3CAN 0x02
#define BWMX1CAN 0x03
//#define AudiQ3CAN 0x04
#define BWM5SCAN 0x04 //BWM 5S
#define BWM_3X_CAN 0x05
#define Benci_newC 0x06

#define LF_CAN_TYPE AudiA4CAN	//BWM5SCAN //you just need to change this value

///////define CAR type////////////

#define NO_CAR 0x00
#define Audi_A4L 0x01
#define Audi_Q3 0x02
#define BWM_X1 0x03
#define BWM_X5 0x04
#define BWM_3X 0x05


#define LF_CAR_TYPE Audi_A4L //you just change this value when you use different car

#endif
