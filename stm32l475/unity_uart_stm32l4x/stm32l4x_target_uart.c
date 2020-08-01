#define _STM32L4X_TARGET_UART_C_SRC

//-------------------------MODULES USED-------------------------------------
#include <stdint.h>
#include <string.h>
#include "stm32l4x_target_uart.h"
//-------------------------DEFINITIONS AND MACORS---------------------------




//-------------------------TYPEDEFS AND STRUCTURES--------------------------

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t ICSCR;
  volatile uint32_t CFGR;
  volatile uint32_t PLLCFGR;
  volatile uint32_t PLLSAI1CFGR;
  volatile uint32_t PLLSAI2CFGR;
  volatile uint32_t CIER;
  volatile uint32_t CIFR;
  volatile uint32_t CICR;
  uint32_t      RESERVED0;
  volatile uint32_t AHB1RSTR;
  volatile uint32_t AHB2RSTR;
  volatile uint32_t AHB3RSTR;
  uint32_t      RESERVED1;
  volatile uint32_t APB1RSTR1;
  volatile uint32_t APB1RSTR2;
  volatile uint32_t APB2RSTR;
  uint32_t      RESERVED2;
  volatile uint32_t AHB1ENR;
  volatile uint32_t AHB2ENR;
  volatile uint32_t AHB3ENR;
  uint32_t      RESERVED3;
  volatile uint32_t APB1ENR1;
  volatile uint32_t APB1ENR2;
  volatile uint32_t APB2ENR;
  uint32_t      RESERVED4;
  volatile uint32_t AHB1SMENR;
  volatile uint32_t AHB2SMENR;
  volatile uint32_t AHB3SMENR;
  uint32_t      RESERVED5;
  volatile uint32_t APB1SMENR1;
  volatile uint32_t APB1SMENR2;
  volatile uint32_t APB2SMENR;
  uint32_t      RESERVED6;
  volatile uint32_t CCIPR;
  uint32_t      RESERVED7;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;
} RCC_TypeDef;

typedef struct
{
  volatile uint32_t MODER;       /*!< GPIO port mode register,               Address offset: 0x00      */
  volatile uint32_t OTYPER;      /*!< GPIO port output type register,        Address offset: 0x04      */
  volatile uint32_t OSPEEDR;     /*!< GPIO port output speed register,       Address offset: 0x08      */
  volatile uint32_t PUPDR;       /*!< GPIO port pull-up/pull-down register,  Address offset: 0x0C      */
  volatile uint32_t IDR;         /*!< GPIO port input data register,         Address offset: 0x10      */
  volatile uint32_t ODR;         /*!< GPIO port output data register,        Address offset: 0x14      */
  volatile uint32_t BSRR;        /*!< GPIO port bit set/reset  register,     Address offset: 0x18      */
  volatile uint32_t LCKR;        /*!< GPIO port configuration lock register, Address offset: 0x1C      */
  volatile uint32_t AFR[2];      /*!< GPIO alternate function registers,     Address offset: 0x20-0x24 */
  volatile uint32_t BRR;         /*!< GPIO Bit Reset register,               Address offset: 0x28      */
  volatile uint32_t ASCR;        /*!< GPIO analog switch control register,   Address offset: 0x2C     */

} GPIO_TypeDef;




typedef struct
{
  volatile uint32_t CR1;         /*!< USART Control register 1,                 Address offset: 0x00 */
  volatile uint32_t CR2;         /*!< USART Control register 2,                 Address offset: 0x04 */
  volatile uint32_t CR3;         /*!< USART Control register 3,                 Address offset: 0x08 */
  volatile uint32_t BRR;         /*!< USART Baud rate register,                 Address offset: 0x0C */
  volatile uint16_t GTPR;        /*!< USART Guard time and prescaler register,  Address offset: 0x10 */
  uint16_t  RESERVED2;       /*!< Reserved, 0x12                                                 */
  volatile uint32_t RTOR;        /*!< USART Receiver Time Out register,         Address offset: 0x14 */
  volatile uint16_t RQR;         /*!< USART Request register,                   Address offset: 0x18 */
  uint16_t  RESERVED3;       /*!< Reserved, 0x1A                                                 */
  volatile uint32_t ISR;         /*!< USART Interrupt and status register,      Address offset: 0x1C */
  volatile uint32_t ICR;         /*!< USART Interrupt flag Clear register,      Address offset: 0x20 */
  volatile uint16_t RDR;         /*!< USART Receive Data register,              Address offset: 0x24 */
  uint16_t  RESERVED4;       /*!< Reserved, 0x26                                                 */
  volatile uint16_t TDR;         /*!< USART Transmit Data register,             Address offset: 0x28 */
  uint16_t  RESERVED5;       /*!< Reserved, 0x2A                                                 */
} USART_TypeDef;

#define _USART ((USART_TypeDef *)USART_BASE)
#define _GPIO ((GPIO_TypeDef *)GPIO_BASE)
#define _RCC ((RCC_TypeDef *)RCC_BASE)

//-------------------------PROTOTYPES OF LOCAL FUNCTIONS--------------------


//-------------------------EXPORTED VARIABLES ------------------------------



//-------------------------GLOBAL VARIABLES---------------------------------



//-------------------------EXPORTED FUNCTIONS-------------------------------
void stm32l4x_target_putc(char a)
{
    while(0==((_USART->ISR>>7)&0x01));
    _USART->TDR = a;
}

void stm32l4x_target_init_putc(void)
{

    //enable USART Clock
#if USART_BASE == USART1_BASE
    _RCC->APB2ENR |= (1<<14);
#elif USART_BASE ==USART2_BASE
    _RCC->APB1ENR1 |= (1<<17);
#elif USART_BASE ==USART3_BASE
    _RCC->APB1ENR1 |= (1<<18);
#elif USART_BASE ==UART4_BASE
    _RCC->APB1ENR1 |= (1<<19);
#elif USART_BASE ==UART5_BASE
    _RCC->APB1ENR1 |= (1<<20);
#endif




#if GPIO_BASE == GPIOA_BASE
    _RCC->AHB2ENR |= (1<<0);
#elif GPIO_BASE == GPIOB_BASE
    _RCC->AHB2ENR |= (1<<1);
#elif GPIO_BASE == GPIOC_BASE
    _RCC->AHB2ENR |= (1<<2);
#elif GPIO_BASE == GPIOD_BASE
    _RCC->AHB2ENR |= (1<<3);
#elif GPIO_BASE == GPIOE_BASE
    _RCC->AHB2ENR |= (1<<4);
#elif GPIO_BASE == GPIOF_BASE
    _RCC->AHB2ENR |= (1<<5);
#elif GPIO_BASE == GPIOG_BASE
    _RCC->AHB2ENR |= (1<<6);
#elif GPIO_BASE == GPIOH_BASE
    _RCC->AHB2ENR |= (1<<7);
#endif




    uint32_t pin_tx = 1<<GPIO_PIN_TX;
    uint32_t pin_rx = 1<<GPIO_PIN_RX;
    //Set Mode to alternative function
    _GPIO->MODER &= ~((3<<(GPIO_PIN_TX*2)) | (3<<(GPIO_PIN_RX*2)));
    _GPIO->MODER |= ((2<<(GPIO_PIN_TX*2)) | (2<<(GPIO_PIN_RX*2)));

    //Set To Push-Pull
    _GPIO->OTYPER &= ~(pin_tx|pin_rx);

    //Set Speed to Super Fast
    _GPIO->OSPEEDR |= (3<<(GPIO_PIN_TX*2)) | (2<<(GPIO_PIN_RX*2));

    //No Pullup/Pulldown
    _GPIO->PUPDR &= ~((3<<(GPIO_PIN_TX*2)) | (3<<(GPIO_PIN_RX*2)));


    //Select Alternative Function
    _GPIO->AFR[GPIO_PIN_TX>>3] &= ~((0x0f<<(4*GPIO_PIN_TX)));
    _GPIO->AFR[GPIO_PIN_TX>>3] |= (0x07<<(4*GPIO_PIN_TX));

    _GPIO->AFR[GPIO_PIN_RX>>3] &= ~((0x0f<<(4*GPIO_PIN_RX)));
    _GPIO->AFR[GPIO_PIN_RX>>3] |= (0x07<<(4*GPIO_PIN_RX));

    //Disconnect from analog
    _GPIO->ASCR &= ~(pin_tx | pin_rx);


    //UART Control Register 1
    _USART->CR1 = 0;
    //8 bits no parity
    _USART->CR1 = (1<<3)|(1<<0);
    //1 stop bit
    _USART->CR2 = 0;
    //No CTS or RTS
    _USART->CR3 = 0;
    //Baud
    _USART->BRR = (BUSFREQ_HZ/BAUDRATE);

    _USART->ICR |= (1<<6);

}

void stm32l4x_target_flush_putc(void)
{

    _USART->ICR |= (1<<6);

}

void stm32l4x_target_close_putc(void)
{

    _USART->CR1 = 0;

}



//-------------------------LOCAL FUNCTIONS----------------------------------
