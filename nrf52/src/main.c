#define _MAIN_C_SRC

//-------------------------MODULES USED-------------------------------------
#include "nrf52_target_uart.h"

#include "unity.h"
#include "test1.h"
//-------------------------DEFINITIONS AND MACORS---------------------------



//-------------------------TYPEDEFS AND STRUCTURES--------------------------



//-------------------------PROTOTYPES OF LOCAL FUNCTIONS--------------------



//-------------------------EXPORTED VARIABLES ------------------------------



//-------------------------GLOBAL VARIABLES---------------------------------



//-------------------------EXPORTED FUNCTIONS-------------------------------
int main(void)
{

    UnityBegin("test1.c");
    DO_TEST(test_thatSucceeds);
    DO_TEST(test_succeedsWithCondition);
    UnityEnd();


    return 0;
}


//-------------------------LOCAL FUNCTIONS----------------------------------
void HardFault_Handler(void)
{
    while(1);
}
