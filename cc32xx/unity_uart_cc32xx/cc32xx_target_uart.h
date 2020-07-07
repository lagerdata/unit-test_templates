#ifndef _CC32XX_TARGET_UART_INCLUDED
#define _CC32XX_TARGET_UART_INCLUDED
//-------------------------MODULES USED-------------------------------------



//-------------------------DEFINITIONS AND MACORS---------------------------
#define UART0 0x4000C000
#define UART1 0x4000D000

#define UART0TX_3 0x702
#define UART0TX_53 0x934
#define UART0TX_55 0x336
#define UART0TX_62 0xB3D

#define UART1TX_1 0x700
#define UART1TX_7 0x506
#define UART1TX_16 0x20F
#define UART1TX_55 0x636
#define UART1TX_58 0x639


#define PARITY_NONE 0
#define PARITY_EVEN ((1<<1) | (1<<2))
#define PARITY_ODD ((1<<1) | (1<<3))

#define STOP_BITS_ONE 0
#define STOP_BITS_TWO (1<<3)

#define CPU_CLOCK_HZ ((uint32_t) 80000000)

#define UARTMODULE UART0
#define UARTTX_PIN UART0TX_55

#define BAUDRATE 115200
#define PARITY PARITY_NONE
#define STOP_BITS STOP_BITS_ONE
//-------------------------TYPEDEFS AND STRUCTURES--------------------------



//-------------------------EXPORTED VARIABLES ------------------------------
#ifndef _CC32XX_TARGET_UART_C_SRC



#endif



//-------------------------EXPORTED FUNCTIONS-------------------------------
void cc32xx_target_putc(char a);
void cc32xx_target_init_putc(void);
void cc32xx_target_flush_putc(void);
void cc32xx_target_close_putc(void);


#endif
