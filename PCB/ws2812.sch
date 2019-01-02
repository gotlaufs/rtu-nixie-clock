EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ESP8266
LIBS:components
LIBS:Zilog
LIBS:zetex
LIBS:Xicor
LIBS:Worldsemi
LIBS:wiznet
LIBS:video
LIBS:ttl_ieee
LIBS:triac_thyristor
LIBS:transf
LIBS:supertex
LIBS:stm32
LIBS:stm8
LIBS:silabs
LIBS:sensors
LIBS:RFSolutions
LIBS:rfcom
LIBS:references
LIBS:pspice
LIBS:Power_Management
LIBS:powerint
LIBS:Oscillators
LIBS:onsemi
LIBS:nxp_armmcu
LIBS:nxp
LIBS:nordicsemi
LIBS:msp430
LIBS:motor_drivers
LIBS:modules
LIBS:microchip_pic32mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic10mcu
LIBS:microchip_dspic33dsc
LIBS:mechanical
LIBS:maxim
LIBS:logic_programmable
LIBS:LEM
LIBS:leds
LIBS:Lattice
LIBS:ir
LIBS:intersil
LIBS:infineon
LIBS:hc11
LIBS:graphic_symbols
LIBS:gennum
LIBS:ftdi
LIBS:ESD_Protection
LIBS:elec-unifil
LIBS:diode
LIBS:dc-dc
LIBS:cmos_ieee
LIBS:brooktre
LIBS:bosch
LIBS:bbd
LIBS:battery_management
LIBS:analog_devices
LIBS:Altera
LIBS:allegro
LIBS:actel
LIBS:ac-dc
LIBS:74xgxx
LIBS:esp_nixie_clock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
Title "Nixie Clock with IN-14 tubes and ESP8266 MCU"
Date "2017-11-02"
Rev "1.0"
Comp "Roberts Gotlaufs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3300 3450 0    60   Input ~ 0
Data_In
$Comp
L WS2812 LED1
U 1 1 5A0045B7
P 6000 3350
F 0 "LED1" H 6000 3150 50  0000 C CNN
F 1 "WS2812" H 6000 3550 50  0000 C CNN
F 2 "LEDs:LED_WS2812-PLCC6" H 5900 3050 50  0001 C CNN
F 3 "" H 6000 3350 50  0001 C CNN
	1    6000 3350
	1    0    0    -1  
$EndComp
$Comp
L WS2812 LED2
U 1 1 5A0046A0
P 7100 3350
F 0 "LED2" H 7100 3150 50  0000 C CNN
F 1 "WS2812" H 7100 3550 50  0000 C CNN
F 2 "LEDs:LED_WS2812-PLCC6" H 7000 3050 50  0001 C CNN
F 3 "" H 7100 3350 50  0001 C CNN
	1    7100 3350
	1    0    0    -1  
$EndComp
$Comp
L WS2812 LED3
U 1 1 5A0048F0
P 8200 3350
F 0 "LED3" H 8200 3150 50  0000 C CNN
F 1 "WS2812" H 8200 3550 50  0000 C CNN
F 2 "LEDs:LED_WS2812-PLCC6" H 8100 3050 50  0001 C CNN
F 3 "" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
$Comp
L WS2812 LED4
U 1 1 5A0048F6
P 6000 4650
F 0 "LED4" H 6000 4450 50  0000 C CNN
F 1 "WS2812" H 6000 4850 50  0000 C CNN
F 2 "LEDs:LED_WS2812-PLCC6" H 5900 4350 50  0001 C CNN
F 3 "" H 6000 4650 50  0001 C CNN
	1    6000 4650
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5A006863
P 3600 5150
F 0 "C6" H 3625 5250 50  0000 L CNN
F 1 "100n" H 3625 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3638 5000 50  0001 C CNN
F 3 "" H 3600 5150 50  0001 C CNN
	1    3600 5150
	1    0    0    -1  
$EndComp
$Comp
L C C26
U 1 1 5A0068AE
P 4500 5150
F 0 "C26" H 4525 5250 50  0000 L CNN
F 1 "100n" H 4525 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4538 5000 50  0001 C CNN
F 3 "" H 4500 5150 50  0001 C CNN
	1    4500 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0105
U 1 1 5A006989
P 3600 5500
F 0 "#PWR0105" H 3600 5250 50  0001 C CNN
F 1 "GND" H 3600 5350 50  0000 C CNN
F 2 "" H 3600 5500 50  0001 C CNN
F 3 "" H 3600 5500 50  0001 C CNN
	1    3600 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0106
U 1 1 5A0069BC
P 4050 5500
F 0 "#PWR0106" H 4050 5250 50  0001 C CNN
F 1 "GND" H 4050 5350 50  0000 C CNN
F 2 "" H 4050 5500 50  0001 C CNN
F 3 "" H 4050 5500 50  0001 C CNN
	1    4050 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0107
U 1 1 5A0069E8
P 4500 5500
F 0 "#PWR0107" H 4500 5250 50  0001 C CNN
F 1 "GND" H 4500 5350 50  0000 C CNN
F 2 "" H 4500 5500 50  0001 C CNN
F 3 "" H 4500 5500 50  0001 C CNN
	1    4500 5500
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR0108
U 1 1 5A006D63
P 3600 4500
F 0 "#PWR0108" H 3600 4350 50  0001 C CNN
F 1 "+12V" H 3600 4640 50  0000 C CNN
F 2 "" H 3600 4500 50  0001 C CNN
F 3 "" H 3600 4500 50  0001 C CNN
	1    3600 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0109
U 1 1 5A006FD5
P 4500 4500
F 0 "#PWR0109" H 4500 4350 50  0001 C CNN
F 1 "+5V" H 4500 4640 50  0000 C CNN
F 2 "" H 4500 4500 50  0001 C CNN
F 3 "" H 4500 4500 50  0001 C CNN
	1    4500 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0110
U 1 1 5A007784
P 5500 3000
F 0 "#PWR0110" H 5500 2850 50  0001 C CNN
F 1 "+5V" H 5500 3140 50  0000 C CNN
F 2 "" H 5500 3000 50  0001 C CNN
F 3 "" H 5500 3000 50  0001 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0111
U 1 1 5A007B5E
P 6600 3000
F 0 "#PWR0111" H 6600 2850 50  0001 C CNN
F 1 "+5V" H 6600 3140 50  0000 C CNN
F 2 "" H 6600 3000 50  0001 C CNN
F 3 "" H 6600 3000 50  0001 C CNN
	1    6600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3350 6550 3350
Wire Wire Line
	6550 3350 6550 3450
Wire Wire Line
	6550 3450 6700 3450
Wire Wire Line
	7500 3350 7650 3350
Wire Wire Line
	7650 3350 7650 3450
Wire Wire Line
	7650 3450 7800 3450
Wire Wire Line
	8600 3350 8900 3350
Wire Wire Line
	3600 5500 3600 5300
Wire Wire Line
	4050 5150 4050 5500
Wire Wire Line
	4500 5500 4500 5300
Wire Wire Line
	4500 4500 4500 5000
Wire Wire Line
	4350 4850 4750 4850
Wire Wire Line
	3750 4850 3600 4850
Wire Wire Line
	3600 4500 3600 5000
Connection ~ 3600 4850
Connection ~ 4500 4850
Wire Wire Line
	5500 3000 5500 3350
Wire Wire Line
	5500 3250 5600 3250
Wire Wire Line
	5500 3350 5600 3350
Connection ~ 5500 3250
Wire Wire Line
	6600 3350 6700 3350
Wire Wire Line
	6600 3000 6600 3350
Wire Wire Line
	6700 3250 6600 3250
Connection ~ 6600 3250
$Comp
L +5V #PWR0112
U 1 1 5A007EE1
P 7700 3000
F 0 "#PWR0112" H 7700 2850 50  0001 C CNN
F 1 "+5V" H 7700 3140 50  0000 C CNN
F 2 "" H 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0001 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3000 7700 3350
Wire Wire Line
	7700 3250 7800 3250
Wire Wire Line
	7700 3350 7800 3350
Connection ~ 7700 3250
$Comp
L +5V #PWR0113
U 1 1 5A008920
P 5500 4300
F 0 "#PWR0113" H 5500 4150 50  0001 C CNN
F 1 "+5V" H 5500 4440 50  0000 C CNN
F 2 "" H 5500 4300 50  0001 C CNN
F 3 "" H 5500 4300 50  0001 C CNN
	1    5500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4300 5500 4650
Wire Wire Line
	5500 4650 5600 4650
Wire Wire Line
	5600 4550 5500 4550
Connection ~ 5500 4550
$Comp
L GND #PWR0114
U 1 1 5A008E36
P 6500 3650
F 0 "#PWR0114" H 6500 3400 50  0001 C CNN
F 1 "GND" H 6500 3500 50  0000 C CNN
F 2 "" H 6500 3650 50  0001 C CNN
F 3 "" H 6500 3650 50  0001 C CNN
	1    6500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3450 6500 3450
Wire Wire Line
	6500 3450 6500 3650
$Comp
L GND #PWR0115
U 1 1 5A0090D5
P 7600 3650
F 0 "#PWR0115" H 7600 3400 50  0001 C CNN
F 1 "GND" H 7600 3500 50  0000 C CNN
F 2 "" H 7600 3650 50  0001 C CNN
F 3 "" H 7600 3650 50  0001 C CNN
	1    7600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3650 7600 3450
Wire Wire Line
	7600 3450 7500 3450
$Comp
L GND #PWR0116
U 1 1 5A00912B
P 8700 3650
F 0 "#PWR0116" H 8700 3400 50  0001 C CNN
F 1 "GND" H 8700 3500 50  0000 C CNN
F 2 "" H 8700 3650 50  0001 C CNN
F 3 "" H 8700 3650 50  0001 C CNN
	1    8700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3650 8700 3450
Wire Wire Line
	8700 3450 8600 3450
$Comp
L WS2812 LED5
U 1 1 5A009456
P 7100 4650
F 0 "LED5" H 7100 4450 50  0000 C CNN
F 1 "WS2812" H 7100 4850 50  0000 C CNN
F 2 "LEDs:LED_WS2812-PLCC6" H 7000 4350 50  0001 C CNN
F 3 "" H 7100 4650 50  0001 C CNN
	1    7100 4650
	1    0    0    -1  
$EndComp
$Comp
L WS2812 LED6
U 1 1 5A00945C
P 8200 4650
F 0 "LED6" H 8200 4450 50  0000 C CNN
F 1 "WS2812" H 8200 4850 50  0000 C CNN
F 2 "LEDs:LED_WS2812-PLCC6" H 8100 4350 50  0001 C CNN
F 3 "" H 8200 4650 50  0001 C CNN
	1    8200 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0117
U 1 1 5A00946E
P 6600 4300
F 0 "#PWR0117" H 6600 4150 50  0001 C CNN
F 1 "+5V" H 6600 4440 50  0000 C CNN
F 2 "" H 6600 4300 50  0001 C CNN
F 3 "" H 6600 4300 50  0001 C CNN
	1    6600 4300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0118
U 1 1 5A009474
P 7700 4300
F 0 "#PWR0118" H 7700 4150 50  0001 C CNN
F 1 "+5V" H 7700 4440 50  0000 C CNN
F 2 "" H 7700 4300 50  0001 C CNN
F 3 "" H 7700 4300 50  0001 C CNN
	1    7700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4650 7650 4650
Wire Wire Line
	7650 4650 7650 4750
Wire Wire Line
	7650 4750 7800 4750
Wire Wire Line
	6600 4300 6600 4650
Wire Wire Line
	6600 4550 6700 4550
Wire Wire Line
	6600 4650 6700 4650
Connection ~ 6600 4550
Wire Wire Line
	7700 4650 7800 4650
Wire Wire Line
	7700 4300 7700 4650
Wire Wire Line
	7800 4550 7700 4550
Connection ~ 7700 4550
$Comp
L GND #PWR0119
U 1 1 5A0094A1
P 7600 4950
F 0 "#PWR0119" H 7600 4700 50  0001 C CNN
F 1 "GND" H 7600 4800 50  0000 C CNN
F 2 "" H 7600 4950 50  0001 C CNN
F 3 "" H 7600 4950 50  0001 C CNN
	1    7600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4750 7600 4750
Wire Wire Line
	7600 4750 7600 4950
$Comp
L GND #PWR0120
U 1 1 5A0094A9
P 8700 4950
F 0 "#PWR0120" H 8700 4700 50  0001 C CNN
F 1 "GND" H 8700 4800 50  0000 C CNN
F 2 "" H 8700 4950 50  0001 C CNN
F 3 "" H 8700 4950 50  0001 C CNN
	1    8700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4950 8700 4750
Wire Wire Line
	8700 4750 8600 4750
Wire Wire Line
	5200 4750 5200 3950
$Comp
L GND #PWR0121
U 1 1 5A009670
P 6500 4950
F 0 "#PWR0121" H 6500 4700 50  0001 C CNN
F 1 "GND" H 6500 4800 50  0000 C CNN
F 2 "" H 6500 4950 50  0001 C CNN
F 3 "" H 6500 4950 50  0001 C CNN
	1    6500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4950 6500 4750
Wire Wire Line
	6500 4750 6400 4750
$Comp
L R R4
U 1 1 5A00D1BF
P 4250 3250
F 0 "R4" V 4330 3250 50  0000 C CNN
F 1 "10k" V 4250 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4180 3250 50  0001 C CNN
F 3 "" H 4250 3250 50  0001 C CNN
	1    4250 3250
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A00D1C6
P 4500 3250
F 0 "R5" V 4580 3250 50  0000 C CNN
F 1 "1k" V 4500 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4430 3250 50  0001 C CNN
F 3 "" H 4500 3250 50  0001 C CNN
	1    4500 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR0122
U 1 1 5A00D1D3
P 4500 3050
F 0 "#PWR0122" H 4500 2900 50  0001 C CNN
F 1 "VCC" H 4500 3200 50  0000 C CNN
F 2 "" H 4500 3050 50  0001 C CNN
F 3 "" H 4500 3050 50  0001 C CNN
	1    4500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3400 4250 3450
Wire Wire Line
	4250 3050 4250 3100
Wire Wire Line
	3950 3800 3950 3750
Wire Wire Line
	3300 3450 3750 3450
Wire Wire Line
	3950 3800 4500 3800
Wire Wire Line
	4500 3800 4500 3400
Wire Wire Line
	4500 3100 4500 3050
Connection ~ 4250 3450
$Comp
L Q_NPN_BEC Q11
U 1 1 5A00D1E2
P 3950 3550
F 0 "Q11" H 4150 3600 50  0000 L CNN
F 1 "BC847BW" H 4150 3500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 4150 3650 50  0001 C CNN
F 3 "" H 3950 3550 50  0001 C CNN
	1    3950 3550
	0    1    -1   0   
$EndComp
Wire Wire Line
	3650 3400 3650 3450
Connection ~ 3650 3450
$Comp
L TestPoint TP28
U 1 1 5A00D1F2
P 4750 3400
F 0 "TP28" H 4750 3650 60  0000 C CNN
F 1 "TestPoint" H 4750 3300 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4750 3400 60  0001 C CNN
F 3 "" H 4750 3400 60  0001 C CNN
	1    4750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3450 4750 3400
Connection ~ 4750 3450
Wire Wire Line
	4150 3450 5600 3450
$Comp
L +5V #PWR0123
U 1 1 5A00E9CE
P 4250 3050
F 0 "#PWR0123" H 4250 2900 50  0001 C CNN
F 1 "+5V" H 4250 3190 50  0000 C CNN
F 2 "" H 4250 3050 50  0001 C CNN
F 3 "" H 4250 3050 50  0001 C CNN
	1    4250 3050
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP27
U 1 1 5A00D1E9
P 3650 3400
F 0 "TP27" H 3650 3650 60  0000 C CNN
F 1 "TestPoint" H 3650 3300 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3650 3400 60  0001 C CNN
F 3 "" H 3650 3400 60  0001 C CNN
	1    3650 3400
	1    0    0    -1  
$EndComp
Text Notes 7650 6950 0    157  Italic 31
Programmable RGB LEDs
NoConn ~ 8600 4650
Wire Wire Line
	5200 4750 5600 4750
Wire Wire Line
	5200 3950 8900 3950
Wire Wire Line
	8900 3950 8900 3350
$Comp
L TestPoint TP29
U 1 1 5A018383
P 4750 4600
F 0 "TP29" H 4750 4850 60  0000 C CNN
F 1 "TestPoint" H 4750 4500 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4750 4600 60  0001 C CNN
F 3 "" H 4750 4600 60  0001 C CNN
	1    4750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4850 4750 4600
Wire Wire Line
	6400 4650 6550 4650
Wire Wire Line
	6550 4650 6550 4750
Wire Wire Line
	6550 4750 6700 4750
$Comp
L AZ1117-3.3 U7
U 1 1 59FF76B4
P 4050 4850
F 0 "U7" H 3900 4975 50  0000 C CNN
F 1 "AZ1117-3.3" H 4050 4975 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 4050 5100 50  0001 C CIN
F 3 "" H 4050 4850 50  0001 C CNN
	1    4050 4850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
