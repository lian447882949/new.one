///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:40 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\TW8836\SPIFlash.c                  /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\TW8836\SPIFlash.c -D               /
//                    USE_STDPERIPH_DRIVER -D USE_STM32100B_EVAL -D           /
//                    STM32F10X_CL -lc F:\软件工程\平台正式代码001\Benze_Main /
//                    Board\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeri /
//                    ph_Template\EWARM\Debug\List\ -lA                       /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\List\ -o F:\软件工程\平台正式代码001\Benze_MainB /
//                    oard\baoma_36\benci_newC_V45\Project\STM32F10x_StdPerip /
//                    h_Template\EWARM\Debug\Obj\ --no_cse --no_unroll        /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M3 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_2\arm\INC\c\DLib_Config_Full.h" -I                  /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \ -I F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_ /
//                    36\benci_newC_V45\Project\STM32F10x_StdPeriph_Template\ /
//                    EWARM\..\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Libraries\STM32F10x_StdPeriph_Dr /
//                    iver\inc\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Libraries\STM32F10x_StdPeriph_Dr /
//                    iver\src\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Project/Common\ -I               /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/TW8836\ -I                            /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/CAN\ -I F:\软件工程\平台正式代码001\B /
//                    enze_MainBoard\baoma_36\benci_newC_V45\Project\STM32F10 /
//                    x_StdPeriph_Template\EWARM\..\..\..\Project/FM\ -I      /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/ARM\ -I F:\软件工程\平台正式代码001\B /
//                    enze_MainBoard\baoma_36\benci_newC_V45\Project\STM32F10 /
//                    x_StdPeriph_Template\EWARM\..\..\..\Libraries\CMSIS\CM3 /
//                    \DeviceSupport\ST\STM32F10x\ -On -I "C:\Program         /
//                    Files\IAR Systems\Embedded Workbench                    /
//                    6.0_2\arm\CMSIS\Include\"                               /
//    List file    =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\List\SPIFlash.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME SPIFlash

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN TW8836_Read
        EXTERN TW8836_Write
        EXTERN TW8836_WritePage

        PUBLIC SPICMD_x_BYTES
        PUBLIC SPICMD_x_READ
        PUBLIC SpiFlash4ByteAddr
        PUBLIC SpiFlashBusyControl
        PUBLIC SpiFlashDmaControl
        PUBLIC SpiFlashInit
        PUBLIC SpiFlashInitQuad
        PUBLIC SpiFlashReadChipRegister
        PUBLIC SpiFlashReadRLE2Header
        PUBLIC SpiFlashSet4ByteMode
        PUBLIC SpiFlashSetReadMode
        PUBLIC flasherr
        PUBLIC gManufacturerID
        PUBLIC gMemoryDensity
        PUBLIC gMemoryType
        PUBLIC gucSpiFlash4ByteMode
        PUBLIC gucSpiFlashVendor
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Project\TW8836\SPIFlash.c
//    1 #define __SPIFLASH_C__
//    2 
//    3 
//    4 //#include "kernel.h"
//    5 #include "SPIFlash.h"
//    6 #include "TW8836.h"
//    7 
//    8 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    9 uint8_t gucSpiFlashVendor    = SPI_FLASH_VENDOR_UNKNOW;
gucSpiFlashVendor:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   10 uint8_t gucSpiFlash4ByteMode = 0x00;
gucSpiFlash4ByteMode:
        DS8 1
//   11 
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8_t SPICMD_x_READ  = 0x00;
SPICMD_x_READ:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   14 uint8_t SPICMD_x_BYTES = 0x00;
SPICMD_x_BYTES:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   15 uint8_t SpiFlash4ByteAddr;		//4Byte mode for big SPIFLASH
SpiFlash4ByteAddr:
        DS8 1
//   16 
//   17 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function SpiFlashDmaControl
        THUMB
//   18 void SpiFlashDmaControl( uint8_t ucDestination, uint8_t ucAccessMode, uint8_t ucCount )
//   19 {
SpiFlashDmaControl:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   20     uint8_t ucREG4C3 = 0;
        MOVS     R7,#+0
//   21 
//   22     ucREG4C3 = ((ucDestination << 6) & 0xC0) | ((ucAccessMode << 4) & 0x30) | (ucCount & 0x0F);
        LSLS     R0,R5,#+4
        ANDS     R0,R0,#0x30
        ORRS     R0,R0,R4, LSL #+6
        ANDS     R1,R6,#0xF
        ORRS     R0,R1,R0
        MOVS     R7,R0
//   23 
//   24     TW8836_Write(REG4C3, ucREG4C3);
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+195
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   25 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock0
//   26 
//   27 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function SpiFlashBusyControl
          CFI NoCalls
        THUMB
//   28 uint8_t SpiFlashBusyControl( uint8_t ucCommand )
//   29 {
SpiFlashBusyControl:
        MOVS     R1,R0
//   30     uint8_t temp = 0;
        MOVS     R0,#+0
//   31 
//   32     switch(ucCommand)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,R1
        CMP      R2,#+1
        BEQ.N    ??SpiFlashBusyControl_0
        CMP      R2,#+2
        BEQ.N    ??SpiFlashBusyControl_1
        CMP      R2,#+3
        BEQ.N    ??SpiFlashBusyControl_0
        CMP      R2,#+11
        BEQ.N    ??SpiFlashBusyControl_0
        CMP      R2,#+32
        BEQ.N    ??SpiFlashBusyControl_2
        CMP      R2,#+82
        BEQ.N    ??SpiFlashBusyControl_2
        CMP      R2,#+96
        BEQ.N    ??SpiFlashBusyControl_2
        CMP      R2,#+216
        BEQ.N    ??SpiFlashBusyControl_2
        CMP      R2,#+235
        BEQ.N    ??SpiFlashBusyControl_0
        B.N      ??SpiFlashBusyControl_3
//   33     {
//   34         case FLASH_CMD_PP       :   temp = 0x02;    break;
??SpiFlashBusyControl_1:
        MOVS     R2,#+2
        MOVS     R0,R2
        B.N      ??SpiFlashBusyControl_4
//   35         case FLASH_CMD_READ     :
//   36         case FLASH_CMD_FAST_READ:
//   37         case FLASH_CMD_4READ    :
//   38         case FLASH_CMD_WRSR     :   temp = 0x04;    break;
??SpiFlashBusyControl_0:
        MOVS     R2,#+4
        MOVS     R0,R2
        B.N      ??SpiFlashBusyControl_4
//   39         case FLASH_CMD_SE       :
//   40         case FLASH_CMD_BE       :
//   41         case FLASH_CMD_BE_32K   :
//   42         case FLASH_CMD_CE       :   temp = 0x06;    break;
??SpiFlashBusyControl_2:
        MOVS     R2,#+6
        MOVS     R0,R2
        B.N      ??SpiFlashBusyControl_4
//   43         default:
//   44             break;
//   45     }
//   46 
//   47     return temp;
??SpiFlashBusyControl_3:
??SpiFlashBusyControl_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   48 }
//   49 
//   50 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function SpiFlashReadChipRegister
        THUMB
//   51 uint8_t SpiFlashReadChipRegister( DMA_RW_CHIP_REGISTER *tDMARWChipRegister )
//   52 {
SpiFlashReadChipRegister:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//   53     uint8_t  i = 0, ucREG4C4 = 0;
        MOVS     R6,#+0
        MOVS     R5,#+0
//   54 
//   55     TW8836_WritePage(TW8836_PAGE4_SPI_MCU);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//   56 
//   57     SpiFlashDmaControl(DMA_RW_DEST_CHIPREG, DMA_RW_MODE_INCREASE, tDMARWChipRegister->w_size + 0x01);
        LDRB     R0,[R4, #+10]
        ADDS     R2,R0,#+1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall SpiFlashDmaControl
        BL       SpiFlashDmaControl
//   58 
//   59     /*DMA Page & Index Register*/
//   60     TW8836_Write(REG4C6, DMA_RW_BUFFER_REG_PAGE);
        MOVS     R1,#+4
        MOVS     R0,#+198
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   61     TW8836_Write(REG4C7, DMA_RW_BUFFER_REG_INDEX);
        MOVS     R1,#+208
        MOVS     R0,#+199
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   62 
//   63     /*DMA Lenght HIGH , MID , LOW Byte Register*/
//   64     TW8836_Write(REG4DA, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+218
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   65     TW8836_Write(REG4C8, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+200
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   66     TW8836_Write(REG4C9, tDMARWChipRegister->r_size);
        LDRB     R1,[R4, #+9]
        MOVS     R0,#+201
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   67 
//   68     /*DMA Command Buffer Register*/
//   69     TW8836_Write(REG4CA, tDMARWChipRegister->command);
        LDRB     R1,[R4, #+0]
        MOVS     R0,#+202
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   70 
//   71     for(i = 0; i < tDMARWChipRegister->w_size; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??SpiFlashReadChipRegister_0:
        LDRB     R0,[R4, #+10]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R0
        BCS.N    ??SpiFlashReadChipRegister_1
//   72     {
//   73         TW8836_Write(REG4CB + i, tDMARWChipRegister->parameter[i]);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R6,R4
        LDRB     R1,[R0, #+1]
        SUBS     R0,R6,#+53
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   74     }
        ADDS     R6,R6,#+1
        B.N      ??SpiFlashReadChipRegister_0
//   75 
//   76     ucREG4C4 |= SpiFlashBusyControl(tDMARWChipRegister->command);
??SpiFlashReadChipRegister_1:
        LDRB     R0,[R4, #+0]
          CFI FunCall SpiFlashBusyControl
        BL       SpiFlashBusyControl
        ORRS     R0,R0,R5
        MOVS     R5,R0
//   77 
//   78     TW8836_Write(REG4C4, ucREG4C4 | 0x01);   /* Start command execution. Self cleared */
        ORRS     R1,R5,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+196
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//   79 
//   80     while(TW8836_Read(REG4C4) & 0x01);
??SpiFlashReadChipRegister_2:
        MOVS     R0,#+196
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        LSLS     R0,R0,#+31
        BMI.N    ??SpiFlashReadChipRegister_2
//   81 
//   82     /*DMA Read/Write Buffer Register*/
//   83     for(i = 0; i < tDMARWChipRegister->r_size; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??SpiFlashReadChipRegister_3:
        LDRB     R0,[R4, #+9]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R0
        BCS.N    ??SpiFlashReadChipRegister_4
//   84     {
//   85         tDMARWChipRegister->buffer[i] = TW8836_Read(REG4D0 + i);
        SUBS     R0,R6,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R6,R4
        STRB     R0,[R1, #+11]
//   86     }
        ADDS     R6,R6,#+1
        B.N      ??SpiFlashReadChipRegister_3
//   87 
//   88     return 0;
??SpiFlashReadChipRegister_4:
        MOVS     R0,#+0
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2
//   89 }
//   90 
//   91 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function SpiFlashReadRLE2Header
        THUMB
//   92 void SpiFlashReadRLE2Header( uint8_t *dest_loc, uint32_t src_loc, uint16_t size )
//   93 {
SpiFlashReadRLE2Header:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   94     uint16_t i = 0, j = 0, rSize = 0;
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
//   95 
//   96     uint8_t *ptr;
//   97 
//   98     uint8_t ucREG4C1 = 0;
        MOVS     R11,#+0
//   99 
//  100     ptr = (uint8_t *)dest_loc;
        MOV      R10,R4
//  101 
//  102     TW8836_WritePage(TW8836_PAGE4_SPI_MCU);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  103 
//  104     ucREG4C1 = TW8836_Read(REG4C1);
        MOVS     R0,#+193
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        MOV      R11,R0
//  105 
//  106     /*DMA Start Mode : Immediately*/
//  107     TW8836_Write(REG4C1, ucREG4C1 & 0xFE);
        ANDS     R1,R11,#0xFE
        MOVS     R0,#+193
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  108 
//  109     SpiFlashDmaControl(DMA_RW_DEST_CHIPREG, DMA_RW_MODE_INCREASE, 0x05);
        MOVS     R2,#+5
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall SpiFlashDmaControl
        BL       SpiFlashDmaControl
//  110 
//  111     /*DMA Page & Index Register*/
//  112     TW8836_Write(REG4C6, DMA_RW_BUFFER_REG_PAGE);
        MOVS     R1,#+4
        MOVS     R0,#+198
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  113     TW8836_Write(REG4C7, DMA_RW_BUFFER_REG_INDEX);
        MOVS     R1,#+208
        MOVS     R0,#+199
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  114 
//  115     /*DMA Command Buffer Register*/
//  116     TW8836_Write(REG4CA, FLASH_CMD_FAST_READ);      /*SPI Command : Fast Read*/
        MOVS     R1,#+11
        MOVS     R0,#+202
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  117 
//  118     for(i = 0; i < size; i+=8)
        MOVS     R0,#+0
        MOVS     R7,R0
??SpiFlashReadRLE2Header_0:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R7,R6
        BCS.N    ??SpiFlashReadRLE2Header_1
//  119     {
//  120         /*DMA Command Buffer Register*/
//  121         TW8836_Write(REG4CB, (uint8_t)((src_loc + i) >> 0x10));
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R5
        LSRS     R1,R0,#+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+203
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  122     	TW8836_Write(REG4CC, (uint8_t)((src_loc + i) >> 0x08));
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        ADDS     R0,R7,R5
        LSRS     R1,R0,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+204
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  123     	TW8836_Write(REG4CD, (uint8_t)((src_loc + i) >> 0x00));
        ADDS     R1,R7,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+205
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  124 
//  125         if(i+0x08 <= size) rSize = 0x08;
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        ADDS     R0,R7,#+8
        CMP      R6,R0
        BLT.N    ??SpiFlashReadRLE2Header_2
        MOVS     R0,#+8
        MOV      R9,R0
        B.N      ??SpiFlashReadRLE2Header_3
//  126         else               rSize = size - i;
??SpiFlashReadRLE2Header_2:
        SUBS     R0,R6,R7
        MOV      R9,R0
//  127 
//  128         /*DMA Lenght HIGH , MID , LOW Byte Register*/
//  129         TW8836_Write(REG4DA, 0x00);
??SpiFlashReadRLE2Header_3:
        MOVS     R1,#+0
        MOVS     R0,#+218
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  130         TW8836_Write(REG4C8, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+200
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  131         TW8836_Write(REG4C9, rSize);
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+201
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  132 
//  133         /*SPI Flash Read Mode : Fast*/
//  134         TW8836_Write(REG4C0, (TW8836_Read(REG4C0) & 0xF8) | 0x01);
        MOVS     R0,#+192
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ANDS     R0,R0,#0xF8
        ORRS     R1,R0,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+192
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  135 
//  136         /*Flash Busy Control : Busy Check And DMA Start Read*/
//  137         TW8836_Write(REG4C4, 0x05);
        MOVS     R1,#+5
        MOVS     R0,#+196
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  138 
//  139         /*Wait DMA Execution Finished*/
//  140         while(TW8836_Read(REG4C4) & 0x01);
??SpiFlashReadRLE2Header_4:
        MOVS     R0,#+196
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        LSLS     R0,R0,#+31
        BMI.N    ??SpiFlashReadRLE2Header_4
//  141 
//  142         /*SPI Flash Read Mode : QUAD-IO*/
//  143         TW8836_Write(REG4C0, (TW8836_Read(REG4C0) & 0xF8) | 0x03);
        MOVS     R0,#+192
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ANDS     R0,R0,#0xF8
        ORRS     R1,R0,#0x3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+192
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  144 
//  145         for(j = 0; j < rSize; j++)
        MOVS     R0,#+0
        MOV      R8,R0
??SpiFlashReadRLE2Header_5:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R8,R9
        BCS.N    ??SpiFlashReadRLE2Header_6
//  146         {
//  147             /*DMA Read/Write Buffer Register*/
//  148             *ptr++ = TW8836_Read(REG4D0 + j);
        MOV      R0,R8
        SUBS     R0,R0,#+48
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        STRB     R0,[R10, #+0]
        ADDS     R10,R10,#+1
//  149         }
        ADDS     R8,R8,#+1
        B.N      ??SpiFlashReadRLE2Header_5
//  150     }
??SpiFlashReadRLE2Header_6:
        ADDS     R7,R7,#+8
        B.N      ??SpiFlashReadRLE2Header_0
//  151 
//  152     /*Restore The Register Value*/
//  153     TW8836_Write(REG4C1, ucREG4C1);
??SpiFlashReadRLE2Header_1:
        MOV      R1,R11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+193
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  154 }
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock3
//  155 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  156 uint8_t gManufacturerID=0, gMemoryType=0, gMemoryDensity=0;//miller.tao20150829 for test
gManufacturerID:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
gMemoryType:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
gMemoryDensity:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  157 uint8_t flasherr=0;
flasherr:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function SpiFlashInitQuad
        THUMB
//  158 void SpiFlashInitQuad( void )
//  159 {
SpiFlashInitQuad:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        SUB      SP,SP,#+24
          CFI CFA R13+48
//  160     uint8_t status = 0, value = 0;
        MOVS     R4,#+0
        MOVS     R5,#+0
//  161 
//  162     uint8_t ManufacturerID, MemoryType, MemoryDensity;
//  163 
//  164     DMA_RW_CHIP_REGISTER tDMARWChipRegister;
//  165 
//  166     tDMARWChipRegister.command = FLASH_CMD_RDID;
        MOVS     R0,#+159
        STRB     R0,[SP, #+0]
//  167     tDMARWChipRegister.r_size  = 0x03;
        MOVS     R0,#+3
        STRB     R0,[SP, #+9]
//  168     tDMARWChipRegister.w_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//  169 
//  170     status = SpiFlashReadChipRegister(&tDMARWChipRegister);
        ADD      R0,SP,#+0
          CFI FunCall SpiFlashReadChipRegister
        BL       SpiFlashReadChipRegister
        MOVS     R4,R0
//  171 
//  172     if(status)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SpiFlashInitQuad_0
//  173     {
//  174         //printf("\r\nRead Flash's Identification Fail.");
//  175         flasherr = 1;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  176     }
//  177 
//  178     ManufacturerID = tDMARWChipRegister.buffer[0];
??SpiFlashInitQuad_0:
        LDRB     R0,[SP, #+11]
        MOVS     R6,R0
//  179     MemoryType     = tDMARWChipRegister.buffer[1];
        LDRB     R0,[SP, #+12]
        MOVS     R7,R0
//  180     MemoryDensity  = tDMARWChipRegister.buffer[2];
        LDRB     R0,[SP, #+13]
        MOV      R8,R0
//  181 
//  182     gManufacturerID= ManufacturerID;
        LDR.N    R0,??DataTable3_1
        STRB     R6,[R0, #+0]
//  183 	 gMemoryType= MemoryType;
        LDR.N    R0,??DataTable3_2
        STRB     R7,[R0, #+0]
//  184 	 gMemoryDensity =MemoryDensity;
        LDR.N    R0,??DataTable3_3
        STRB     R8,[R0, #+0]
//  185    // printf("\r\nSPI Flash JEDEC ID : 0x%x, 0x%x, 0x%x", ManufacturerID, MemoryType, MemoryDensity);
//  186 
//  187     switch(ManufacturerID)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        CMP      R0,#+28
        BEQ.N    ??SpiFlashInitQuad_1
        CMP      R0,#+194
        BEQ.N    ??SpiFlashInitQuad_2
        B.N      ??SpiFlashInitQuad_3
//  188     {
//  189         case 0x1C:
//  190             gucSpiFlashVendor = SPI_FLASH_VENDOR_EON;
??SpiFlashInitQuad_1:
        LDR.N    R0,??DataTable3_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  191 
//  192             if(MemoryType == 0x70 && MemoryDensity == 0x19)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+112
        BNE.N    ??SpiFlashInitQuad_4
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+25
        BNE.N    ??SpiFlashInitQuad_4
//  193             {
//  194                 gucSpiFlashVendor = SPI_FLASH_VENDOR_EON_256;
        LDR.N    R0,??DataTable3_4
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  195             }
//  196             break;
??SpiFlashInitQuad_4:
        B.N      ??SpiFlashInitQuad_5
//  197        case 0xC2://millertao add 20150829
//  198                 gucSpiFlashVendor = SPI_FLASH_VENDOR_MX;
??SpiFlashInitQuad_2:
        LDR.N    R0,??DataTable3_4
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  199 		break;
        B.N      ??SpiFlashInitQuad_5
//  200         default:
//  201             //printf("\r\nUnknow SPI Flash.");
//  202             break;
//  203     }
//  204 
//  205     /*Read Status Register*/
//  206     if(ManufacturerID == 0x1C || ManufacturerID == 0xC2)    /* EON:0x1C , MX:0xC2 */
??SpiFlashInitQuad_3:
??SpiFlashInitQuad_5:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+28
        BEQ.N    ??SpiFlashInitQuad_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+194
        BNE.N    ??SpiFlashInitQuad_7
//  207     {
//  208         tDMARWChipRegister.command = FLASH_CMD_RDSR;
??SpiFlashInitQuad_6:
        MOVS     R0,#+5
        STRB     R0,[SP, #+0]
//  209         tDMARWChipRegister.r_size  = 0x01;
        MOVS     R0,#+1
        STRB     R0,[SP, #+9]
//  210         tDMARWChipRegister.w_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//  211 
//  212         status = SpiFlashReadChipRegister(&tDMARWChipRegister);
        ADD      R0,SP,#+0
          CFI FunCall SpiFlashReadChipRegister
        BL       SpiFlashReadChipRegister
        MOVS     R4,R0
//  213 
//  214         value  = tDMARWChipRegister.buffer[0];
        LDRB     R0,[SP, #+11]
        MOVS     R5,R0
//  215     }
//  216 
//  217     //printf("\r\nSPI Flash Status Register Value : 0x%x", value);
//  218 
//  219     if(value) return;
??SpiFlashInitQuad_7:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??SpiFlashInitQuad_8
//  220 
//  221 
//  222     /* Enable Quad IO Mode */
//  223     if(ManufacturerID == 0x1C || ManufacturerID == 0xC2)    /* EON:0x1C , MX:0xC2 */
??SpiFlashInitQuad_9:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+28
        BEQ.N    ??SpiFlashInitQuad_10
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+194
        BNE.N    ??SpiFlashInitQuad_11
//  224     {
//  225         tDMARWChipRegister.command = FLASH_CMD_WREN;
??SpiFlashInitQuad_10:
        MOVS     R0,#+6
        STRB     R0,[SP, #+0]
//  226         tDMARWChipRegister.r_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//  227         tDMARWChipRegister.w_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//  228 
//  229         SpiFlashReadChipRegister(&tDMARWChipRegister);
        ADD      R0,SP,#+0
          CFI FunCall SpiFlashReadChipRegister
        BL       SpiFlashReadChipRegister
//  230 
//  231 
//  232         tDMARWChipRegister.command = FLASH_CMD_WRSR;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//  233         tDMARWChipRegister.r_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//  234         tDMARWChipRegister.w_size  = 0x01;
        MOVS     R0,#+1
        STRB     R0,[SP, #+10]
//  235         tDMARWChipRegister.parameter[0] = 0x40;
        MOVS     R0,#+64
        STRB     R0,[SP, #+1]
//  236 
//  237         SpiFlashReadChipRegister(&tDMARWChipRegister);
        ADD      R0,SP,#+0
          CFI FunCall SpiFlashReadChipRegister
        BL       SpiFlashReadChipRegister
//  238 
//  239 
//  240         tDMARWChipRegister.command = FLASH_CMD_WRDI;
        MOVS     R0,#+4
        STRB     R0,[SP, #+0]
//  241         tDMARWChipRegister.r_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//  242         tDMARWChipRegister.w_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//  243 
//  244         SpiFlashReadChipRegister(&tDMARWChipRegister);
        ADD      R0,SP,#+0
          CFI FunCall SpiFlashReadChipRegister
        BL       SpiFlashReadChipRegister
//  245     }
//  246 
//  247     //printf("\r\nSPI Flash Quad IO Mode Enable.");
//  248 }
??SpiFlashInitQuad_11:
??SpiFlashInitQuad_8:
        ADD      SP,SP,#+24
          CFI CFA R13+24
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock4
//  249 
//  250 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SpiFlashSetReadMode
        THUMB
//  251 void SpiFlashSetReadMode( uint8_t ucMode )
//  252 {
SpiFlashSetReadMode:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  253     TW8836_WritePage(TW8836_PAGE4_SPI_MCU);
        MOVS     R0,#+4
          CFI FunCall TW8836_WritePage
        BL       TW8836_WritePage
//  254 
//  255     TW8836_Write(REG4C0, (TW8836_Read(REG4C0) & 0xF8) | ucMode);
        MOVS     R0,#+192
          CFI FunCall TW8836_Read
        BL       TW8836_Read
        ANDS     R0,R0,#0xF8
        ORRS     R1,R4,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+192
          CFI FunCall TW8836_Write
        BL       TW8836_Write
//  256 
//  257 		switch( ucMode ) {
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SpiFlashSetReadMode_0
        CMP      R4,#+2
        BEQ.N    ??SpiFlashSetReadMode_1
        BCC.N    ??SpiFlashSetReadMode_2
        CMP      R4,#+4
        BEQ.N    ??SpiFlashSetReadMode_3
        BCC.N    ??SpiFlashSetReadMode_4
        CMP      R4,#+6
        BEQ.N    ??SpiFlashSetReadMode_5
        BCC.N    ??SpiFlashSetReadMode_6
        B.N      ??SpiFlashSetReadMode_7
//  258 			case 0: //--- Slow
//  259 				//max speed is 50MHz.
//  260 				//but, normally, 54MHz is working.
//  261 				SPICMD_x_READ	= 0x03; 
??SpiFlashSetReadMode_0:
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  262 				SPICMD_x_BYTES	= 4;	//(8+24)/8
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  263 				break;
        B.N      ??SpiFlashSetReadMode_8
//  264 			case 1: //--- Fast
//  265 				SPICMD_x_READ	= 0x0b; 
??SpiFlashSetReadMode_2:
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+11
        STRB     R1,[R0, #+0]
//  266 				SPICMD_x_BYTES	= 5;   //(8+24+8)/8. 8 dummy
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//  267 				break;
        B.N      ??SpiFlashSetReadMode_8
//  268 			case 2: //--- Dual
//  269 				SPICMD_x_READ	= 0x3b;
??SpiFlashSetReadMode_1:
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+59
        STRB     R1,[R0, #+0]
//  270 				SPICMD_x_BYTES	= 5;
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//  271 				break;
        B.N      ??SpiFlashSetReadMode_8
//  272 			case 3: //--- Quad
//  273 				SPICMD_x_READ	= 0x6b; 
??SpiFlashSetReadMode_4:
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+107
        STRB     R1,[R0, #+0]
//  274 				SPICMD_x_BYTES	= 5;
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//  275 				break;
        B.N      ??SpiFlashSetReadMode_8
//  276 			case 4: //--- Dual-IO
//  277 				SPICMD_x_READ	= 0xbb; 
??SpiFlashSetReadMode_3:
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+187
        STRB     R1,[R0, #+0]
//  278 				SPICMD_x_BYTES	= 5;	//(8+12*2+4*2)/8. Note:*2 means 2 lines.
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//  279 				break;
        B.N      ??SpiFlashSetReadMode_8
//  280 			case 5: //--- Quad-IO
//  281 				SPICMD_x_READ	= 0xeb;  
??SpiFlashSetReadMode_6:
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+235
        STRB     R1,[R0, #+0]
//  282 				SPICMD_x_BYTES	= 7;   //(8+6*4+2*4+4*4)/8. Note:*4 means 4 lines.
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+7
        STRB     R1,[R0, #+0]
//  283 				break;
        B.N      ??SpiFlashSetReadMode_8
//  284 			case 6: //--- DEdge. DTR(Double Transfer Rate)
//  285 				SPICMD_x_READ	= 0xed;  
??SpiFlashSetReadMode_5:
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+237
        STRB     R1,[R0, #+0]
//  286 				SPICMD_x_BYTES	= 12;	//.
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+12
        STRB     R1,[R0, #+0]
//  287 				break;
        B.N      ??SpiFlashSetReadMode_8
//  288 			default:
//  289 				//fast read mode can support Extender/Qual/Quad.
//  290 				SPICMD_x_READ	= 0x0b; 
??SpiFlashSetReadMode_7:
        LDR.N    R0,??DataTable3_5
        MOVS     R1,#+11
        STRB     R1,[R0, #+0]
//  291 				SPICMD_x_BYTES	= 5;   //(8+24+8)/8. 8 dummy
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//  292 				break;
//  293 			}
//  294 
//  295 }
??SpiFlashSetReadMode_8:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock5
//  296 
//  297 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function SpiFlashSet4ByteMode
        THUMB
//  298 void SpiFlashSet4ByteMode( uint8_t ucMode )
//  299 {
SpiFlashSet4ByteMode:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+20
          CFI CFA R13+32
        MOVS     R4,R0
//  300     uint8_t ucCommand = 0;
        MOVS     R5,#+0
//  301     DMA_RW_CHIP_REGISTER tDMARWChipRegister;
//  302 
//  303     if(ucMode)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SpiFlashSet4ByteMode_0
//  304     {
//  305         if(gucSpiFlash4ByteMode == 0)
        LDR.N    R0,??DataTable3_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SpiFlashSet4ByteMode_1
//  306         {
//  307             gucSpiFlash4ByteMode = 1;
        LDR.N    R0,??DataTable3_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  308             ucCommand = FLASH_CMD_EN4B;
        MOVS     R0,#+183
        MOVS     R5,R0
        B.N      ??SpiFlashSet4ByteMode_1
//  309         }
//  310     }
//  311     else
//  312     {
//  313         if(gucSpiFlash4ByteMode == 1)
??SpiFlashSet4ByteMode_0:
        LDR.N    R0,??DataTable3_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??SpiFlashSet4ByteMode_1
//  314         {
//  315             gucSpiFlash4ByteMode = 0;
        LDR.N    R0,??DataTable3_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  316             ucCommand = FLASH_CMD_EX4B;
        MOVS     R0,#+233
        MOVS     R5,R0
//  317         }
//  318     }
//  319 
//  320     if(ucCommand)
??SpiFlashSet4ByteMode_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SpiFlashSet4ByteMode_2
//  321     {
//  322         tDMARWChipRegister.command = ucCommand;
        STRB     R5,[SP, #+0]
//  323         tDMARWChipRegister.r_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//  324         tDMARWChipRegister.w_size  = 0x00;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//  325         
//  326         SpiFlashReadChipRegister(&tDMARWChipRegister);
        ADD      R0,SP,#+0
          CFI FunCall SpiFlashReadChipRegister
        BL       SpiFlashReadChipRegister
//  327     }
//  328 }
??SpiFlashSet4ByteMode_2:
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock6
//  329 
//  330 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function SpiFlashInit
        THUMB
//  331 void SpiFlashInit( void )
//  332 {
SpiFlashInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  333     SpiFlashInitQuad();
          CFI FunCall SpiFlashInitQuad
        BL       SpiFlashInitQuad
//  334 
//  335     if(gucSpiFlashVendor == SPI_FLASH_VENDOR_EON_256)
        LDR.N    R0,??DataTable3_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??SpiFlashInit_0
//  336     {
//  337         SpiFlashSet4ByteMode(1);
        MOVS     R0,#+1
          CFI FunCall SpiFlashSet4ByteMode
        BL       SpiFlashSet4ByteMode
//  338 
//  339         if(gucSpiFlash4ByteMode)
//  340         {
//  341             //printf("\r\nSPI Flash Enter 4-Byte Mode.");
//  342         }
//  343     }
//  344 
//  345     SpiFlashSetReadMode(SPI_READ_MODE);
??SpiFlashInit_0:
        MOVS     R0,#+2
          CFI FunCall SpiFlashSetReadMode
        BL       SpiFlashSetReadMode
//  346 
//  347     //printf("\r\nSPI Flash Init Finished.");
//  348 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     flasherr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     gManufacturerID

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     gMemoryType

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     gMemoryDensity

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     gucSpiFlashVendor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     SPICMD_x_READ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     SPICMD_x_BYTES

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     gucSpiFlash4ByteMode

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  349 
//  350 
// 
//     9 bytes in section .bss
// 1 178 bytes in section .text
// 
// 1 178 bytes of CODE memory
//     9 bytes of DATA memory
//
//Errors: none
//Warnings: none
