#ifndef _UNITY_CONFIG_INCLUDED
#define _UNITY_CONFIG_INCLUDED
//-------------------------MODULES USED-------------------------------------
#include "cc32xx_target_uart.h"


//-------------------------DEFINITIONS AND MACORS---------------------------



#define UNITY_OUTPUT_CHAR(a)    cc32xx_target_putc(a)
#define UNITY_OUTPUT_START()    cc32xx_target_init_putc()
#define UNITY_OUTPUT_FLUSH()    cc32xx_target_flush_putc()
#define UNITY_OUTPUT_COMPLETE() cc32xx_target_close_putc()

#define UNITY_EXCLUDE_MATH_H
//-------------------------TYPEDEFS AND STRUCTURES--------------------------



//-------------------------EXPORTED VARIABLES ------------------------------
#ifndef _UNITY_CONFIG_C_SRC



#endif



//-------------------------EXPORTED FUNCTIONS-------------------------------



#endif
