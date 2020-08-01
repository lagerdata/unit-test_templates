#ifndef _STM32L4X_TARGET_UART_INCLUDED
#define _STM32L4X_TARGET_UART_INCLUDED
//-------------------------MODULES USED-------------------------------------



//-------------------------DEFINITIONS AND MACORS---------------------------
#define PERIPH_BASE (0x40000000UL)
#define APB1PERIPH_BASE  PERIPH_BASE
#define APB2PERIPH_BASE (PERIPH_BASE + 0x00010000UL)
#define AHB1PERIPH_BASE (PERIPH_BASE + 0x00020000UL)
#define AHB2PERIPH_BASE (PERIPH_BASE + 0x08000000UL)

#define USART1_BASE (APB2PERIPH_BASE + 0x3800UL)
#define USART2_BASE (APB1PERIPH_BASE + 0x4400UL)
#define USART3_BASE (APB1PERIPH_BASE + 0x4800UL)
#define UART4_BASE  (APB1PERIPH_BASE + 0x4C00UL)
#define UART5_BASE  (APB1PERIPH_BASE + 0x5000UL)

#define GPIOA_BASE (AHB2PERIPH_BASE + 0x0000UL)
#define GPIOB_BASE (AHB2PERIPH_BASE + 0x0400UL)
#define GPIOC_BASE (AHB2PERIPH_BASE + 0x0800UL)
#define GPIOD_BASE (AHB2PERIPH_BASE + 0x0C00UL)
#define GPIOE_BASE (AHB2PERIPH_BASE + 0x1000UL)
#define GPIOF_BASE (AHB2PERIPH_BASE + 0x1400UL)
#define GPIOG_BASE (AHB2PERIPH_BASE + 0x1800UL)
#define GPIOH_BASE (AHB2PERIPH_BASE + 0x1C00UL)

#define RCC_BASE (AHB1PERIPH_BASE + 0x1000UL)



#define GPIO_PIN_TX 6
#define GPIO_PIN_RX 7


#define USART_BASE USART1_BASE
#define GPIO_BASE GPIOB_BASE
#define BAUDRATE (115200U)
#define BUSFREQ_HZ (80000000)
//-------------------------TYPEDEFS AND STRUCTURES--------------------------



//-------------------------EXPORTED VARIABLES ------------------------------
#ifndef _STM32L4X_TARGET_UART_C_SRC



#endif



//-------------------------EXPORTED FUNCTIONS-------------------------------
void stm32l4x_target_putc(char a);
void stm32l4x_target_init_putc(void);
void stm32l4x_target_flush_putc(void);
void stm32l4x_target_close_putc(void);


#endif
