#include "osapi.h"

#include "stdint.h"
#include "c_types.h"

#include "hv_ic.h"
#include "defines.h"

#include "gpio.h"
#include "eagle_soc.h"

int HV_BRIGHTNESS_LEVEL = 100;
enum hv_status_enum HV_STATUS = HV_NORMAL;

void hv_blank_pwm(void *arg){
    static int counter = 0;

    if (HV_STATUS == HV_NORMAL){
        if (counter <= HV_BRIGHTNESS_LEVEL){
            // HV_BLANK
            // Turn tubes ON (blank is active LOW)
            gpio_output_set(0, (1 << HV_BLANK), 0, 0);
        }
        else{
            // Turn tubes OFF (blank is active LOW)
            gpio_output_set((1 << HV_BLANK), 0, 0, 0);
        }
    }
    else{
        gpio_output_set((1 << HV_BLANK), 0, 0, 0);
    }

    counter++;

    if (counter > 100){
        counter = 0;
    }
}

void ICACHE_FLASH_ATTR hv_push_byte(uint8_t data){
    // uint8_t mask = 0x01;

    // // Push out LSB first
    // // HV_DATA is on GPIO16
    // while (mask){
    //     if (data & mask){
    //         gpio16_output_set(1);
    //     }
    //     else{
    //         gpio16_output_set(0);
    //     }

    //     // Make a clock edge. Data is read on CLK H->L
    //     gpio_output_set(0, (1 << HV_CLK), 0, 0);
    //     // Shift reg operates @max 8 MHz, add some delay
    //     os_delay_us(1);
    //     gpio_output_set((1 << HV_CLK), 0, 0, 0);

    //     mask = mask << 1;
    // }
    uint8_t mask = 0x80;

    // TODO: Remove this
    GPIO_OUTPUT_SET(GPIO_ID_PIN(HV_BLANK), 0);

    // Push out MSB first
    // HV_DATA is on GPIO16
    while (mask){
        if (data & mask){
            gpio16_output_set(1);
        }
        else{
            gpio16_output_set(0);
        }
        // Make a clock edge. Data is read on CLK H->L
        GPIO_OUTPUT_SET(GPIO_ID_PIN(HV_CLK), 1);
        // Shift reg operates @max 8 MHz, add some delay
        os_delay_us(1);
        GPIO_OUTPUT_SET(GPIO_ID_PIN(HV_CLK), 0);
        os_delay_us(1);

        mask = mask >> 1;
    }

    // TODO: Remove this
    GPIO_OUTPUT_SET(GPIO_ID_PIN(HV_BLANK), 1);
}
