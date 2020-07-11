#define _CC32XX_TARGET_UART_C_SRC

//-------------------------MODULES USED-------------------------------------
#include <stdint.h>

#include "cc32xx_target_uart.h"
//-------------------------DEFINITIONS AND MACORS---------------------------
#define REG_CAST(x) (*((volatile unsigned long *)(x)))

#define ARCM_BASE 0x44025000
#define APPS_RCM_O_UART_A0_CLK_GATING 0x00000080
#define APPS_RCM_O_UART_A0_SOFT_RESET 0x00000084

#define PRCM_RUN_MODE_CLK 0x00000001
#define PRCM_SLP_MODE_CLK 0x00000100

#define PRCM_SOFT_RESET    0x00000001
#define PRCM_ENABLE_STATUS 0x00000002

#define PIN_TYPE_STD 0x00000000
#define PIN_STRENGTH_2MA  0x00000020

#define PAD_MODE_MASK 0x0000000F
#define PAD_STRENGTH_MASK 0x000000E0
#define PAD_TYPE_MASK  0x00000310
#define PAD_CONFIG_BASE	(0x4402E0A0)

#define UART_O_DR 0x00000000
#define UART_O_FR 0x00000018
#define UART_O_IBRD 0x00000024
#define UART_O_FBRD 0x00000028
#define UART_O_LCRH 0x0000002C
#define UART_O_CTL 0x00000030
#define UART_O_ICR 0x00000044


#define UART_FR_BUSY 0x00000008  // UART Busy
#define UART_FR_TXFF 0x00000020  // UART Transmit FIFO Full

#define UART_LCRH_FEN 0x00000010  // UART Enable FIFOs

#define UART_CTL_UARTEN 0x00000001  // UART Enable
#define UART_CTL_TXE 0x00000100  // UART Transmit Enable
#define UART_CTL_RXE 0x00000200  // UART Receive Enable
#define UART_CTL_HSE 0x00000020  // High-Speed Enable
#define UART_CTL_EOT 0x00000010  // End of Transmission

#define UART_FLOWCONTROL_TX 0x00008000
#define UART_FLOWCONTROL_RX 0x00004000
#define UART_FLOWCONTROL_NONE 0x00000000

#define UART_DATA_LEN_8 (3<<5)

#define UART_INT_RT 0x040       // Receive Timeout Interrupt Mask
#define UART_INT_TX 0x020       // Transmit Interrupt Mask
#define UART_INT_RX 0x010       // Receive Interrupt Mask

#define PAD_RESET_STATE 0xC61
//-------------------------TYPEDEFS AND STRUCTURES--------------------------



//-------------------------PROTOTYPES OF LOCAL FUNCTIONS--------------------



//-------------------------EXPORTED VARIABLES ------------------------------



//-------------------------GLOBAL VARIABLES---------------------------------



//-------------------------EXPORTED FUNCTIONS-------------------------------
void cc32xx_target_putc(char a)
{
    //
    // Wait until space is available.
    while(REG_CAST(UARTMODULE + UART_O_FR) & UART_FR_TXFF);

    //
    // Send the char.
    REG_CAST(UARTMODULE + UART_O_DR) = (uint8_t)a;

}

void cc32xx_target_init_putc(void)
{
    //enable uart peripheral clock
    REG_CAST(ARCM_BASE + APPS_RCM_O_UART_A0_CLK_GATING) |= (PRCM_RUN_MODE_CLK | PRCM_SLP_MODE_CLK);


    //deassert the reset
    REG_CAST(ARCM_BASE + APPS_RCM_O_UART_A0_SOFT_RESET)&= ~PRCM_SOFT_RESET;

    //wait until ready bit set
    unsigned long ready_bit = 0;
    do{
        ready_bit = REG_CAST(ARCM_BASE + APPS_RCM_O_UART_A0_SOFT_RESET) & PRCM_ENABLE_STATUS;
    }while(0 == ready_bit);

    //periphearl reset
    REG_CAST(ARCM_BASE + APPS_RCM_O_UART_A0_SOFT_RESET)|= PRCM_SOFT_RESET;

    //
    // Delay a little bit.
    //
    volatile unsigned long ulDelay;
    for(ulDelay = 0; ulDelay < 16; ulDelay++);

    //deassert the reset
    REG_CAST(ARCM_BASE + APPS_RCM_O_UART_A0_SOFT_RESET)&= ~PRCM_SOFT_RESET;

    //set pin mode
    uint16_t txpin = (UARTTX_PIN & 0xff) + 1;
    uint16_t mode = (UARTTX_PIN >> 8) & 0xff;
    unsigned long pad = 0;
    unsigned long _pad = 0;
    switch(txpin){
        case 1:{
            _pad = ((10<<2) + PAD_CONFIG_BASE);
            pad = 10;
            break;
        }
        case 3:{
            _pad = ((12<<2) + PAD_CONFIG_BASE);
            pad = 12;
            break;
        }
        case 7:{
            _pad = ((16<<2) + PAD_CONFIG_BASE);
            pad = 16;
            break;
        }
        case 16:{
            _pad = ((23<<2) + PAD_CONFIG_BASE);
            pad = 23;
            break;
        }
        case 53:{
            _pad = ((30<<2) + PAD_CONFIG_BASE);
            pad = 30;
            break;
        }
        case 55:{
            _pad = ((1<<2) + PAD_CONFIG_BASE);
            pad = 1;
            break;
        }
        case 58:{
            _pad = ((3<<2) + PAD_CONFIG_BASE);
            pad = 3;
            break;
        }
        case 62:{
            _pad = ((7<<2) + PAD_CONFIG_BASE);
            pad = 7;
            break;
        }
    }
    REG_CAST(_pad) = (((REG_CAST(_pad) & ~PAD_MODE_MASK) | mode) & ~(3<<10));



    //config tx pin
    REG_CAST(0x4402E144) &= ~((0x80 << pad) & (0x1e << 8));
    REG_CAST(_pad) = ((REG_CAST(_pad) & ~(PAD_STRENGTH_MASK | PAD_TYPE_MASK)) | (PIN_STRENGTH_2MA | PIN_TYPE_STD));




    //clear UART Int(UARTICR)
    REG_CAST(UARTMODULE + UART_O_ICR) = (UART_INT_TX | UART_INT_RX | UART_INT_RT);


    //disable UART FIFO(Character mode)(UARTLCRH)
    REG_CAST(UARTMODULE + UART_O_LCRH) &= ~(UART_LCRH_FEN);

    //enable UART TX(UARTCTL)
    REG_CAST(UARTMODULE + UART_O_CTL) |= (UART_CTL_UARTEN | UART_CTL_TXE | UART_CTL_EOT);

    //set FIFO Level(UARTIFLS)
    //FIFO Disabled

    //disable flow control(UARTCTL)
    REG_CAST(UARTMODULE + UART_O_CTL) = (REG_CAST(UARTMODULE + UART_O_CTL) & ~(UART_FLOWCONTROL_TX | UART_FLOWCONTROL_RX));

    //set config
    // Wait for end of TX.
    while(REG_CAST(UARTMODULE + UART_O_FR) & UART_FR_BUSY);


    // Disable the UART.
    REG_CAST(UARTMODULE + UART_O_CTL) &= ~(UART_CTL_UARTEN | UART_CTL_TXE | UART_CTL_RXE);


    // Disable high speed mode.(UARTCTL)
    REG_CAST(UARTMODULE + UART_O_CTL) &= ~(UART_CTL_HSE);

    // Set the baud rate.(UARTIBRD, UARTFBRD)
    unsigned long div = (((CPU_CLOCK_HZ * 8)/BAUDRATE) + 1)/2;
    REG_CAST(UARTMODULE + UART_O_IBRD) = div/64;
    REG_CAST(UARTMODULE + UART_O_FBRD) = div % 64;

    // Set parity, data length, FIFO, and number of stop bits.
    REG_CAST(UARTMODULE + UART_O_LCRH) = UART_DATA_LEN_8 | PARITY | STOP_BITS | UART_LCRH_FEN;

    // Clear the flags register.
    REG_CAST(UARTMODULE + UART_O_FR) = 0;


    // Enable TX, and the UART.
    REG_CAST(UARTMODULE + UART_O_CTL) |= (UART_CTL_UARTEN | UART_CTL_TXE);

}

void cc32xx_target_flush_putc(void)
{
    // Wait for tx to shift out
    while(REG_CAST(UARTMODULE + UART_O_FR) & UART_FR_BUSY);
    // enable the FIFO.
    REG_CAST(UARTMODULE + UART_O_LCRH) &= ~(UART_LCRH_FEN);

    //
    // Disable the UART.
    REG_CAST(UARTMODULE + UART_O_CTL) &= ~(UART_CTL_UARTEN | UART_CTL_TXE | UART_CTL_RXE);


    // Enable TX, and the UART.
    REG_CAST(UARTMODULE + UART_O_CTL) |= (UART_CTL_UARTEN | UART_CTL_TXE);

}

void cc32xx_target_close_putc(void)
{
    //disable uart peripheral clock
    REG_CAST(ARCM_BASE + APPS_RCM_O_UART_A0_CLK_GATING) &= ~(PRCM_RUN_MODE_CLK | PRCM_SLP_MODE_CLK);

    //reset pin pads
    uint16_t txpin = (UARTTX_PIN & 0xff) + 1;
    unsigned long _pad = 0;
    switch(txpin){
        case 1:{
            _pad = ((10<<2) + PAD_CONFIG_BASE);
            break;
        }
        case 3:{
            _pad = ((12<<2) + PAD_CONFIG_BASE);
            break;
        }
        case 7:{
            _pad = ((16<<2) + PAD_CONFIG_BASE);
            break;
        }
        case 16:{
            _pad = ((23<<2) + PAD_CONFIG_BASE);
            break;
        }
        case 53:{
            _pad = ((30<<2) + PAD_CONFIG_BASE);
            break;
        }
        case 55:{
            _pad = ((1<<2) + PAD_CONFIG_BASE);
            break;
        }
        case 58:{
            _pad = ((3<<2) + PAD_CONFIG_BASE);
            break;
        }
        case 62:{
            _pad = ((7<<2) + PAD_CONFIG_BASE);
            break;
        }
    }

    REG_CAST(_pad) = PAD_RESET_STATE;
}


//-------------------------LOCAL FUNCTIONS----------------------------------
