#ifndef _UNITY_CONFIG_INCLUDED
#define _UNITY_CONFIG_INCLUDED
//-------------------------MODULES USED-------------------------------------
#include "stm32l4x_target_uart.h"


//-------------------------DEFINITIONS AND MACORS---------------------------



#define UNITY_OUTPUT_CHAR(a)    stm32l4x_target_putc(a)
#define UNITY_OUTPUT_START()    stm32l4x_target_init_putc()
#define UNITY_OUTPUT_FLUSH()    stm32l4x_target_flush_putc()
#define UNITY_OUTPUT_COMPLETE() stm32l4x_target_close_putc()

#define UNITY_EXCLUDE_MATH_H
//-------------------------TYPEDEFS AND STRUCTURES--------------------------



//-------------------------EXPORTED VARIABLES ------------------------------
#ifndef _UNITY_CONFIG_C_SRC



#endif



//-------------------------EXPORTED FUNCTIONS-------------------------------



#endif
