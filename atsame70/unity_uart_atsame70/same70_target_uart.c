#define _SAME70_TARGET_UART_C_SRC

//-------------------------MODULES USED-------------------------------------
#include <stdint.h>

#include "same70_target_uart.h"
//-------------------------DEFINITIONS AND MACORS---------------------------





//-------------------------TYPEDEFS AND STRUCTURES--------------------------
typedef struct
{
  volatile uint32_t US_CR;              // Offset: 0x00 ( /W  32) Control Register
  volatile uint32_t US_MR;              // Offset: 0x04 (R/W  32) Mode Register
  volatile uint32_t US_IER;             // Offset: 0x08 ( /W  32) Interrupt Enable Register
  volatile uint32_t US_IDR;             // Offset: 0x0C ( /W  32) Interrupt Disable Register
  volatile const uint32_t US_IMR;             // Offset: 0x10 (R/   32) Interrupt Mask Register
  volatile const uint32_t US_CSR;             // Offset: 0x14 (R/   32) Channel Status Register
  volatile const uint32_t US_RHR;             // Offset: 0x18 (R/   32) Receive Holding Register
  volatile uint32_t US_THR;             // Offset: 0x1C ( /W  32) Transmit Holding Register
  volatile uint32_t US_BRGR;            // Offset: 0x20 (R/W  32) Baud Rate Generator Register
  volatile uint32_t US_RTOR;            // Offset: 0x24 (R/W  32) Receiver Timeout Register
  volatile uint32_t US_TTGR;            // Offset: 0x28 (R/W  32) Transmitter Timeguard Register
  volatile const uint8_t Reserved1[0x14];
  volatile uint32_t US_FIDI;            // Offset: 0x40 (R/W  32) FI DI Ratio Register
  volatile const uint32_t US_NER;             // Offset: 0x44 (R/   32) Number of Errors Register
  volatile const uint8_t Reserved2[0x04];
  volatile uint32_t US_IF;              // Offset: 0x4C (R/W  32) IrDA Filter Register
  volatile uint32_t US_MAN;             // Offset: 0x50 (R/W  32) Manchester Configuration Register
  volatile uint32_t US_LINMR;           // Offset: 0x54 (R/W  32) LIN Mode Register
  volatile uint32_t US_LINIR;           // Offset: 0x58 (R/W  32) LIN Identifier Register
  volatile const uint32_t US_LINBRR;          // Offset: 0x5C (R/   32) LIN Baud Rate Register
  volatile uint32_t US_LONMR;           // Offset: 0x60 (R/W  32) LON Mode Register
  volatile uint32_t US_LONPR;           // Offset: 0x64 (R/W  32) LON Preamble Register
  volatile uint32_t US_LONDL;           // Offset: 0x68 (R/W  32) LON Data Length Register
  volatile uint32_t US_LONL2HDR;        // Offset: 0x6C (R/W  32) LON L2HDR Register
  volatile const uint32_t US_LONBL;           // Offset: 0x70 (R/   32) LON Backlog Register
  volatile uint32_t US_LONB1TX;         // Offset: 0x74 (R/W  32) LON Beta1 Tx Register
  volatile uint32_t US_LONB1RX;         // Offset: 0x78 (R/W  32) LON Beta1 Rx Register
  volatile uint32_t US_LONPRIO;         // Offset: 0x7C (R/W  32) LON Priority Register
  volatile uint32_t US_IDTTX;           // Offset: 0x80 (R/W  32) LON IDT Tx Register
  volatile uint32_t US_IDTRX;           // Offset: 0x84 (R/W  32) LON IDT Rx Register
  volatile uint32_t US_ICDIFF;          // Offset: 0x88 (R/W  32) IC DIFF Register
  volatile const uint8_t Reserved3[0x58];
  volatile uint32_t US_WPMR;            // Offset: 0xE4 (R/W  32) Write Protection Mode Register
  volatile const uint32_t US_WPSR;            // Offset: 0xE8 (R/   32) Write Protection Status Register
}_usart_registers_t;

typedef struct
{
  volatile uint32_t PMC_SCER;           // Offset: 0x00 ( /W  32) System Clock Enable Register
  volatile uint32_t PMC_SCDR;           // Offset: 0x04 ( /W  32) System Clock Disable Register
  volatile const uint32_t PMC_SCSR;           // Offset: 0x08 (R/   32) System Clock Status Register
  volatile const uint8_t Reserved1[0x04];
  volatile uint32_t PMC_PCER0;          // Offset: 0x10 ( /W  32) Peripheral Clock Enable Register 0
  volatile uint32_t PMC_PCDR0;          // Offset: 0x14 ( /W  32) Peripheral Clock Disable Register 0
  volatile const uint32_t PMC_PCSR0;          // Offset: 0x18 (R/   32) Peripheral Clock Status Register 0
  volatile uint32_t CKGR_UCKR;          // Offset: 0x1C (R/W  32) UTMI Clock Register
  volatile uint32_t CKGR_MOR;           // Offset: 0x20 (R/W  32) Main Oscillator Register
  volatile uint32_t CKGR_MCFR;          // Offset: 0x24 (R/W  32) Main Clock Frequency Register
  volatile uint32_t CKGR_PLLAR;         // Offset: 0x28 (R/W  32) PLLA Register
  volatile const uint8_t Reserved2[0x04];
  volatile uint32_t PMC_MCKR;           // Offset: 0x30 (R/W  32) Master Clock Register
  volatile const uint8_t Reserved3[0x04];
  volatile uint32_t PMC_USB;            // Offset: 0x38 (R/W  32) USB Clock Register
  volatile const uint8_t Reserved4[0x04];
  volatile uint32_t PMC_PCK[8];         // Offset: 0x40 (R/W  32) Programmable Clock Register
  volatile uint32_t PMC_IER;            // Offset: 0x60 ( /W  32) Interrupt Enable Register
  volatile uint32_t PMC_IDR;            // Offset: 0x64 ( /W  32) Interrupt Disable Register
  volatile const uint32_t PMC_SR;             // Offset: 0x68 (R/   32) Status Register
  volatile const uint32_t PMC_IMR;            // Offset: 0x6C (R/   32) Interrupt Mask Register
  volatile uint32_t PMC_FSMR;           // Offset: 0x70 (R/W  32) Fast Startup Mode Register
  volatile uint32_t PMC_FSPR;           // Offset: 0x74 (R/W  32) Fast Startup Polarity Register
  volatile uint32_t PMC_FOCR;           // Offset: 0x78 ( /W  32) Fault Output Clear Register
  volatile const uint8_t Reserved5[0x68];
  volatile uint32_t PMC_WPMR;           // Offset: 0xE4 (R/W  32) Write Protection Mode Register
  volatile const uint32_t PMC_WPSR;           // Offset: 0xE8 (R/   32) Write Protection Status Register
  volatile const uint8_t Reserved6[0x14];
  volatile uint32_t PMC_PCER1;          // Offset: 0x100 ( /W  32) Peripheral Clock Enable Register 1
  volatile uint32_t PMC_PCDR1;          // Offset: 0x104 ( /W  32) Peripheral Clock Disable Register 1
  volatile const uint32_t PMC_PCSR1;          // Offset: 0x108 (R/   32) Peripheral Clock Status Register 1
  volatile uint32_t PMC_PCR;            // Offset: 0x10C (R/W  32) Peripheral Control Register
  volatile uint32_t PMC_OCR;            // Offset: 0x110 (R/W  32) Oscillator Calibration Register
  volatile uint32_t PMC_SLPWK_ER0;      // Offset: 0x114 ( /W  32) SleepWalking Enable Register 0
  volatile uint32_t PMC_SLPWK_DR0;      // Offset: 0x118 ( /W  32) SleepWalking Disable Register 0
  volatile const uint32_t PMC_SLPWK_SR0;      // Offset: 0x11C (R/   32) SleepWalking Status Register 0
  volatile const uint32_t PMC_SLPWK_ASR0;     // Offset: 0x120 (R/   32) SleepWalking Activity Status Register 0
  volatile const uint8_t Reserved7[0x0C];
  volatile uint32_t PMC_PMMR;           // Offset: 0x130 (R/W  32) PLL Maximum Multiplier Value Register
  volatile uint32_t PMC_SLPWK_ER1;      // Offset: 0x134 ( /W  32) SleepWalking Enable Register 1
  volatile uint32_t PMC_SLPWK_DR1;      // Offset: 0x138 ( /W  32) SleepWalking Disable Register 1
  volatile const uint32_t PMC_SLPWK_SR1;      // Offset: 0x13C (R/   32) SleepWalking Status Register 1
  volatile const uint32_t PMC_SLPWK_ASR1;     // Offset: 0x140 (R/   32) SleepWalking Activity Status Register 1

    volatile const uint32_t PMC_SLPWK_AIPR;     // Offset: 0x144 (R/   32) SleepWalking Activity In Progress Register
}_pmc_registers_t;

typedef struct
{
  volatile uint32_t PIO_PER;            // Offset: 0x00 ( /W  32) PIO Enable Register
  volatile uint32_t PIO_PDR;            // Offset: 0x04 ( /W  32) PIO Disable Register
  volatile const uint32_t PIO_PSR;            // Offset: 0x08 (R/   32) PIO Status Register
  volatile const uint8_t Reserved1[0x04];
  volatile uint32_t PIO_OER;            // Offset: 0x10 ( /W  32) Output Enable Register
  volatile uint32_t PIO_ODR;            // Offset: 0x14 ( /W  32) Output Disable Register
  volatile const uint32_t PIO_OSR;            // Offset: 0x18 (R/   32) Output Status Register
  volatile const uint8_t Reserved2[0x04];
  volatile uint32_t PIO_IFER;           // Offset: 0x20 ( /W  32) Glitch Input Filter Enable Register
  volatile uint32_t PIO_IFDR;           // Offset: 0x24 ( /W  32) Glitch Input Filter Disable Register
  volatile const uint32_t PIO_IFSR;           // Offset: 0x28 (R/   32) Glitch Input Filter Status Register
  volatile const uint8_t Reserved3[0x04];
  volatile uint32_t PIO_SODR;           // Offset: 0x30 ( /W  32) Set Output Data Register
  volatile uint32_t PIO_CODR;           // Offset: 0x34 ( /W  32) Clear Output Data Register
  volatile uint32_t PIO_ODSR;           // Offset: 0x38 (R/W  32) Output Data Status Register
  volatile const uint32_t PIO_PDSR;           // Offset: 0x3C (R/   32) Pin Data Status Register
  volatile uint32_t PIO_IER;            // Offset: 0x40 ( /W  32) Interrupt Enable Register
  volatile uint32_t PIO_IDR;            // Offset: 0x44 ( /W  32) Interrupt Disable Register
  volatile const uint32_t PIO_IMR;            // Offset: 0x48 (R/   32) Interrupt Mask Register
  volatile const uint32_t PIO_ISR;            // Offset: 0x4C (R/   32) Interrupt Status Register
  volatile uint32_t PIO_MDER;           // Offset: 0x50 ( /W  32) Multi-driver Enable Register
  volatile uint32_t PIO_MDDR;           // Offset: 0x54 ( /W  32) Multi-driver Disable Register
  volatile const uint32_t PIO_MDSR;           // Offset: 0x58 (R/   32) Multi-driver Status Register
  volatile const uint8_t Reserved4[0x04];
  volatile uint32_t PIO_PUDR;           // Offset: 0x60 ( /W  32) Pull-up Disable Register
  volatile uint32_t PIO_PUER;           // Offset: 0x64 ( /W  32) Pull-up Enable Register
  volatile const uint32_t PIO_PUSR;           // Offset: 0x68 (R/   32) Pad Pull-up Status Register
  volatile const uint8_t Reserved5[0x04];
  volatile uint32_t PIO_ABCDSR[2];      // Offset: 0x70 (R/W  32) Peripheral ABCD Select Register 0
  volatile const uint8_t Reserved6[0x08];
  volatile uint32_t PIO_IFSCDR;         // Offset: 0x80 ( /W  32) Input Filter Slow Clock Disable Register
  volatile uint32_t PIO_IFSCER;         // Offset: 0x84 ( /W  32) Input Filter Slow Clock Enable Register
  volatile const uint32_t PIO_IFSCSR;         // Offset: 0x88 (R/   32) Input Filter Slow Clock Status Register
  volatile uint32_t PIO_SCDR;           // Offset: 0x8C (R/W  32) Slow Clock Divider Debouncing Register
  volatile uint32_t PIO_PPDDR;          // Offset: 0x90 ( /W  32) Pad Pull-down Disable Register
  volatile uint32_t PIO_PPDER;          // Offset: 0x94 ( /W  32) Pad Pull-down Enable Register
  volatile const uint32_t PIO_PPDSR;          // Offset: 0x98 (R/   32) Pad Pull-down Status Register
  volatile const uint8_t Reserved7[0x04];
  volatile uint32_t PIO_OWER;           // Offset: 0xA0 ( /W  32) Output Write Enable
  volatile uint32_t PIO_OWDR;           // Offset: 0xA4 ( /W  32) Output Write Disable
  volatile const uint32_t PIO_OWSR;           // Offset: 0xA8 (R/   32) Output Write Status Register
  volatile const uint8_t Reserved8[0x04];
  volatile uint32_t PIO_AIMER;          // Offset: 0xB0 ( /W  32) Additional Interrupt Modes Enable Register
  volatile uint32_t PIO_AIMDR;          // Offset: 0xB4 ( /W  32) Additional Interrupt Modes Disable Register
  volatile const uint32_t PIO_AIMMR;          // Offset: 0xB8 (R/   32) Additional Interrupt Modes Mask Register
  volatile const uint8_t Reserved9[0x04];
  volatile uint32_t PIO_ESR;            // Offset: 0xC0 ( /W  32) Edge Select Register
  volatile uint32_t PIO_LSR;            // Offset: 0xC4 ( /W  32) Level Select Register
  volatile const uint32_t PIO_ELSR;           // Offset: 0xC8 (R/   32) Edge/Level Status Register
  volatile const uint8_t Reserved10[0x04];
  volatile uint32_t PIO_FELLSR;         // Offset: 0xD0 ( /W  32) Falling Edge/Low-Level Select Register
  volatile uint32_t PIO_REHLSR;         // Offset: 0xD4 ( /W  32) Rising Edge/High-Level Select Register
  volatile const uint32_t PIO_FRLHSR;         // Offset: 0xD8 (R/   32) Fall/Rise - Low/High Status Register
  volatile const uint8_t Reserved11[0x04];
  volatile const uint32_t PIO_LOCKSR;         // Offset: 0xE0 (R/   32) Lock Status
  volatile uint32_t PIO_WPMR;           // Offset: 0xE4 (R/W  32) Write Protection Mode Register
  volatile const uint32_t PIO_WPSR;           // Offset: 0xE8 (R/   32) Write Protection Status Register
  volatile const uint8_t Reserved12[0x14];
  volatile uint32_t PIO_SCHMITT;        // Offset: 0x100 (R/W  32) Schmitt Trigger Register
  volatile const uint8_t Reserved13[0x14];
  volatile uint32_t PIO_DRIVER;         // Offset: 0x118 (R/W  32) I/O Drive Register
  volatile const uint8_t Reserved14[0x34];
  volatile uint32_t PIO_PCMR;           // Offset: 0x150 (R/W  32) Parallel Capture Mode Register
  volatile uint32_t PIO_PCIER;          // Offset: 0x154 ( /W  32) Parallel Capture Interrupt Enable Register
  volatile uint32_t PIO_PCIDR;          // Offset: 0x158 ( /W  32) Parallel Capture Interrupt Disable Register
  volatile const uint32_t PIO_PCIMR;          // Offset: 0x15C (R/   32) Parallel Capture Interrupt Mask Register
  volatile const uint32_t PIO_PCISR;          // Offset: 0x160 (R/   32) Parallel Capture Interrupt Status Register
  volatile const uint32_t PIO_PCRHR;          // Offset: 0x164 (R/   32) Parallel Capture Reception Holding Register
}_pio_registers_t;

#define _UART ((_usart_registers_t *)UART)
#define _PMC ((_pmc_registers_t *)PMC)
#define _PIO ((_pio_registers_t *)PIO)

//-------------------------PROTOTYPES OF LOCAL FUNCTIONS--------------------



//-------------------------EXPORTED VARIABLES ------------------------------



//-------------------------GLOBAL VARIABLES---------------------------------



//-------------------------EXPORTED FUNCTIONS-------------------------------
void same70_target_putc(char a)
{
    _UART->US_THR = a;
    int cnt = 0;
    while((1 != ((_UART->US_CSR>>1)&0x01)) && (cnt < 10000000)){
        cnt++;
    }
}

void same70_target_init_putc(void)
{
    //enable peripheral uart and usart clocks(UART0, UART1, USART0, USART1, USART2)
    _PMC->PMC_PCER0= 0x80 | 0x100 | 0x2000 | 0x4000 | 0x8000;

    //enable peripheral uart clocks (UART2, UART3, UART4)
    _PMC->PMC_PCER1 = 0x1000 | 0x2000 | 0x4000;


    uint32_t clk_type = (_PMC->PMC_MCKR & 0x03);
    uint32_t f_periph = 0;
    switch(clk_type){
        case 0:{//Slow Clock
            f_periph = 32768;
            break;
        }

        case 1:{//Main Clock
            f_periph = MAINCLOCK_HZ;
            break;
        }

        case 2:{//PLC Clock
            f_periph = MAINCLOCK_HZ*(((_PMC->CKGR_PLLAR>>16) & 0x7ff)+1)/(_PMC->CKGR_PLLAR&0xff);
            break;
        }

        case 3:{//USB Clock
            f_periph = 480000000/((_PMC->PMC_MCKR>>13)&0x01);
            break;
        }
        default:{//error
            break;
        }
    }

    //Divide peripheral clock by pre-scaler and master clock division
    uint32_t pres = (((_PMC->PMC_MCKR>>4)&0x07));
    pres = 1<<pres;
    uint32_t mdiv = ((_PMC->PMC_MCKR>>8)&0x03);
    mdiv = 1<<mdiv;
    if(8 == mdiv){
        mdiv = 3;
    }

    f_periph /= (pres * mdiv);

    //CD = fperiph/16*BAUDRATE
    uint32_t cd = f_periph/16;
    cd /= BAUDRATE;
    _UART->US_BRGR = cd;

    //set pins
    //Disable PB4, and enable for peripheral
    _PIO->PIO_PDR = (1<<PIN);
    _PIO->PIO_ODR = 1<<PIN;
    _PIO->PIO_IFDR = 1<<PIN;
    _PIO->PIO_CODR = 0;
    _PIO->PIO_IDR = 0xffff;
    _PIO->PIO_MDER = 0;
    _PIO->PIO_MDDR = 1<<PIN;
    _PIO->PIO_PUDR = 1<<PIN;
    _PIO->PIO_PUER = 0;
    _PIO->PIO_PPDDR = 1<<PIN;
    //Peripheral Select Register
    _PIO->PIO_ABCDSR[0] = ((PERIPH&0x01)<<PIN);
    _PIO->PIO_ABCDSR[1] = (((PERIPH>>1)&0x01)<<PIN);



    // normal mode, peripheral clock, no parity, no digital filter
    _UART->US_MR = 0;
    _UART->US_MR = (DATABITS<<6) | (PARITY<<9) | (STOP_BITS<<12);

    //enable TX
    _UART->US_CR = 0;
    _UART->US_CR = (1<<6);
    while(1 != ((_UART->US_CSR>>1)&0x01));


}

void same70_target_flush_putc(void)
{

    _UART->US_CR = 1<<7;
    _UART->US_CR = 0;
    _UART->US_CR = (1<<6);
    while(1 != ((_UART->US_CSR>>1)&0x01));

}

void same70_target_close_putc(void)
{
    //disable peripheral uart and usart clocks
    _PMC->PMC_PCDR0 = (0x80) | (0x100) | (0x2000) | (0x4000) | (0x8000);
    _PMC->PMC_PCDR1 = (0x1000) | (0x2000) | (0x4000);
    //Reset TX
    _UART->US_CR = (1<<3);
    //Disable TX
    _UART->US_CR = (1<<7);


}


//-------------------------LOCAL FUNCTIONS----------------------------------
