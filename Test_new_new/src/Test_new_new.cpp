/*
===============================================================================
 Name        : main.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#if defined (__USE_LPCOPEN)
#if defined(NO_BOARD_LIB)
#include "chip.h"
#else
#include "board.h"
#endif
#endif
#include <stdio.h>
#include <cr_section_macros.h>


// TODO: insert other include files here

// TODO: insert other definitions and declarations here

int main(void) {

#if defined (__USE_LPCOPEN)
    // Read clock settings and update SystemCoreClock variable
    SystemCoreClockUpdate();
#if !defined(NO_BOARD_LIB)
    // Set up and initialize all required blocks and
    // functions related to the board hardware
    Board_Init();
    // Set the LED to the state of "On"

#endif
#endif

    // TODO: insert code here

    bool zmienna;

	Chip_Clock_EnablePeriphClock(SYSCTL_CLOCK_SWM);

	Chip_GPIO_SetPortDIROutput(LPC_GPIO_PORT, 0, 13);

	Chip_GPIO_SetPortDIRInput(LPC_GPIO_PORT,0, 1);





    // Force the counter to be placed into memory
    volatile static int i = 0;
    // Enter an infinite loop, just incrementing a counter
    while(1) {
        i++ ;

        zmienna = Chip_GPIO_GetPinState(LPC_GPIO_PORT,0,1);


        if(zmienna == true)
        {

        	Board_LED_Set(0, true);
        	Board_LED_Set(1, false);
        	Chip_GPIO_SetPinOutHigh(LPC_GPIO_PORT, 0, 13);
        	Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT, 0, 13);
        	Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, 13, false);
        	//Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, 1, false);
        	printf("test\n");
        }
        else
        {

        	Board_LED_Set(0, false);
        	Board_LED_Set(1, true);
        	//Chip_GPIO_SetPinOutLow(LPC_GPIO_PORT, 0, 1);
        	//Chip_GPIO_SetPinState(LPC_GPIO_PORT, 0, 1, true);
        }

    }
    return 0 ;
}
