#ifndef _UART_FUN_H_
#define _UART_FUN_H_

#ifdef  _UART_FUN_C_
  #define  _UART_FUNDEC_
#else
  #define  _UART_FUNDEC_ extern
#endif
#include "type.h"

_UART_FUNDEC_ union char_bit g_src_flag1;
#define F_Src_dvd_init_id				g_src_flag1.bit_field.bit0
#define F_Src_vdisc_init_id			g_src_flag1.bit_field.bit1
#define F_Src_usb_init_id				g_src_flag1.bit_field.bit2
#define F_Src_sd_init_id				g_src_flag1.bit_field.bit3
#define F_Src_tv_init_id				g_src_flag1.bit_field.bit4
#define F_Src_radio_init_id			g_src_flag1.bit_field.bit5
#define F_Src_bt_init_id				g_src_flag1.bit_field.bit6
#define F_Src_ipod_init_id			g_src_flag1.bit_field.bit7

_UART_FUNDEC_ union char_bit g_src_flag2;
#define F_Src_aux1_init_id				g_src_flag2.bit_field.bit0
#define F_Src_aux2_init_id				g_src_flag2.bit_field.bit1
#define F_Src_navi_init_id				g_src_flag2.bit_field.bit2
#define F_Src_cambox_init_id			g_src_flag2.bit_field.bit3
#define F_Src_videoplay_init_id			g_src_flag2.bit_field.bit4
#define F_Src_audioplay_init_id			g_src_flag2.bit_field.bit5
#define F_Src_vcr_init_id			g_src_flag2.bit_field.bit6
#define F_Src_app_init_id			g_src_flag2.bit_field.bit7

#define  TOUCH_VALIDE_500MS   5
#define  TOUCH_VALIDE_1000MS   10
_UART_FUNDEC_ BYTE 	Touch_valide_count;
_UART_FUNDEC_ WORD		Touch_status;
_UART_FUNDEC_ WORD		X_POS,Y_POS;
_UART_FUNDEC_ WORD		X1_POS,Y1_POS;

_UART_FUNDEC_ void UART_get_version_process(void);

_UART_FUNDEC_ void UART_arm_ACC_Send(BYTE acc,BYTE power);

_UART_FUNDEC_ void UART_SRC_process(void);
_UART_FUNDEC_ void UART_SetFM_process(UINT freq);
_UART_FUNDEC_ void UART_Touch_process(void);

#endif

