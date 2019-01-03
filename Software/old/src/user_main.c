/*
 * ESP8266-based Nixie clock project
 */
#include "ets_sys.h"
#include "osapi.h"
#include "gpio.h"
#include "os_type.h"
#include "eagle_soc.h"

#include "gpio16.h"
#include "i2c_master.h"

#include "build_time.h"
#include "defines.h"
#include "rtc_ic.h"
#include "hv_ic.h"
#include "nixie_driver.h"
#include "lean_time.h"
#include "display.h"

static volatile os_timer_t systick_timer, display_timer;
static volatile os_timer_t test_timer;

void ICACHE_FLASH_ATTR init_pins(){
    // Initialize the ESP8266 pins to appropriate functions:
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDI_U, FUNC_GPIO12);    // SW_1
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, FUNC_GPIO13);    // SW_2
    //PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, FUNC_GPIO14);    // SCL
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDO_U, FUNC_GPIO15);    // LED
    gpio16_output_conf();

    // Set switches as inputs

    // init I2C peripheral
    i2c_master_gpio_init();
    i2c_master_init();

    // HV5522 CLK line should idle LOW
    gpio_output_set(0, (1 << HV_CLK), 0, 0);

    // Set BLANK low
    //gpio_output_set(0, (1 << HV_BLANK), 0, 0);
    //gpio_output_set((1 << HV_BLANK), 0, 0, 0);
    GPIO_OUTPUT_SET(GPIO_ID_PIN(HV_BLANK), 1);
}

void ICACHE_FLASH_ATTR test_func(){
  struct tm tm_struct = time_tm();
  os_printf("%d\n", tm_struct.tm_sec);

}


void ICACHE_FLASH_ATTR user_init()
{
  // init gpio subsytem
  gpio_init();
  init_pins();
  nixie_off();

  // Set UART baud rate to 115200
  uart_div_modify(0, UART_CLK_FREQ / 115200);

  gpio_output_set(0, 0, (1 << LED_ONBOARD), 0);
  gpio_output_set(0, 0, (1 << LED), 0);


  os_timer_setfn(&systick_timer, (os_timer_func_t *)sys_tick_handler, NULL);
  os_timer_arm(&systick_timer, 100, 1);

  os_timer_setfn(&test_timer, (os_timer_func_t *)test_func, NULL);
  os_timer_arm(&test_timer, 1000, 1);

  os_timer_setfn(&display_timer, (os_timer_func_t *)show_time_simple, NULL);
  os_timer_arm(&display_timer, 1000, 1);

  // Test set time
  struct tm tm_struct;
  tm_struct.tm_min = BUILD_MIN;
  tm_struct.tm_hour = BUILD_HOUR;
  settime_tm(&tm_struct);

}
