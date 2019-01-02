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
Sheet 7 10
Title "Nixie Clock with IN-14 tubes and ESP8266 MCU"
Date "2017-11-02"
Rev "1.0"
Comp "Roberts Gotlaufs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 8600 3950 2    60   Input ~ 0
LED_1
Text HLabel 3750 3850 0    60   Input ~ 0
SW_1
Text HLabel 3750 3950 0    60   Input ~ 0
SW_2
Text HLabel 8600 3750 2    60   Input ~ 0
SW_3
Text HLabel 3750 3750 0    60   Input ~ 0
SCL
Text HLabel 8600 3850 2    60   Input ~ 0
SDA
Text HLabel 3750 3650 0    60   Input ~ 0
MOSI
Text HLabel 8600 3650 2    60   Input ~ 0
CLK
$Comp
L VCC #PWR071
U 1 1 59F121B6
P 5850 2250
F 0 "#PWR071" H 5850 2100 50  0001 C CNN
F 1 "VCC" H 5850 2400 50  0000 C CNN
F 2 "" H 5850 2250 50  0001 C CNN
F 3 "" H 5850 2250 50  0001 C CNN
	1    5850 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR072
U 1 1 59F1220A
P 5850 4700
F 0 "#PWR072" H 5850 4450 50  0001 C CNN
F 1 "GND" H 5850 4550 50  0000 C CNN
F 2 "" H 5850 4700 50  0001 C CNN
F 3 "" H 5850 4700 50  0001 C CNN
	1    5850 4700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03_Male J2
U 1 1 59F12416
P 8800 3050
F 0 "J2" H 8800 3250 50  0000 C CNN
F 1 "Conn_01x03_Male" H 8800 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8800 3050 50  0001 C CNN
F 3 "" H 8800 3050 50  0001 C CNN
	1    8800 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 2250 5850 2750
Wire Wire Line
	5850 4700 5850 4550
$Comp
L GND #PWR073
U 1 1 59F124BF
P 8500 3200
F 0 "#PWR073" H 8500 2950 50  0001 C CNN
F 1 "GND" H 8500 3050 50  0000 C CNN
F 2 "" H 8500 3200 50  0001 C CNN
F 3 "" H 8500 3200 50  0001 C CNN
	1    8500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3200 8500 3150
Wire Wire Line
	8500 3150 8600 3150
Text Notes 8450 2750 0    60   ~ 0
Programming\nHeader
$Comp
L R R18
U 1 1 59F12739
P 4300 2850
F 0 "R18" V 4380 2850 50  0000 C CNN
F 1 "10k" V 4300 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 2850 50  0001 C CNN
F 3 "" H 4300 2850 50  0001 C CNN
	1    4300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3000 4300 4000
Wire Wire Line
	4300 3350 4950 3350
$Comp
L VCC #PWR074
U 1 1 59F12767
P 7650 2600
F 0 "#PWR074" H 7650 2450 50  0001 C CNN
F 1 "VCC" H 7650 2750 50  0000 C CNN
F 2 "" H 7650 2600 50  0001 C CNN
F 3 "" H 7650 2600 50  0001 C CNN
	1    7650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2600 4300 2700
$Comp
L R R17
U 1 1 59F127F9
P 4100 2850
F 0 "R17" V 4180 2850 50  0000 C CNN
F 1 "10k" V 4100 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4030 2850 50  0001 C CNN
F 3 "" H 4100 2850 50  0001 C CNN
	1    4100 2850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR075
U 1 1 59F12819
P 7450 2600
F 0 "#PWR075" H 7450 2450 50  0001 C CNN
F 1 "VCC" H 7450 2750 50  0000 C CNN
F 2 "" H 7450 2600 50  0001 C CNN
F 3 "" H 7450 2600 50  0001 C CNN
	1    7450 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2600 4100 2700
Wire Wire Line
	4950 3550 4100 3550
Wire Wire Line
	4100 3550 4100 3000
$Comp
L SW_Push SW4
U 1 1 59F13198
P 4300 4200
F 0 "SW4" H 4350 4300 50  0000 L CNN
F 1 "SW_Push" H 4300 4140 50  0000 C CNN
F 2 "footprints:SW_SMD" H 4300 4400 50  0001 C CNN
F 3 "" H 4300 4400 50  0001 C CNN
	1    4300 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR076
U 1 1 59F1325E
P 4300 4700
F 0 "#PWR076" H 4300 4450 50  0001 C CNN
F 1 "GND" H 4300 4550 50  0000 C CNN
F 2 "" H 4300 4700 50  0001 C CNN
F 3 "" H 4300 4700 50  0001 C CNN
	1    4300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4700 4300 4400
Connection ~ 4300 3350
$Comp
L C C22
U 1 1 59F13716
P 6750 2650
F 0 "C22" H 6775 2750 50  0000 L CNN
F 1 "100n" H 6775 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6788 2500 50  0001 C CNN
F 3 "" H 6750 2650 50  0001 C CNN
	1    6750 2650
	1    0    0    -1  
$EndComp
$Comp
L CP C23
U 1 1 59F13773
P 7100 2650
F 0 "C23" H 7125 2750 50  0000 L CNN
F 1 "10u" H 7125 2550 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 7138 2500 50  0001 C CNN
F 3 "" H 7100 2650 50  0001 C CNN
	1    7100 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 59F138DA
P 7100 2900
F 0 "#PWR077" H 7100 2650 50  0001 C CNN
F 1 "GND" H 7100 2750 50  0000 C CNN
F 2 "" H 7100 2900 50  0001 C CNN
F 3 "" H 7100 2900 50  0001 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 59F13F26
P 6900 4200
F 0 "R20" V 6980 4200 50  0000 C CNN
F 1 "10k" V 6900 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6830 4200 50  0001 C CNN
F 3 "" H 6900 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4050 6900 3950
Wire Wire Line
	6750 3950 8600 3950
$Comp
L GND #PWR078
U 1 1 59F13FAE
P 6900 4700
F 0 "#PWR078" H 6900 4450 50  0001 C CNN
F 1 "GND" H 6900 4550 50  0000 C CNN
F 2 "" H 6900 4700 50  0001 C CNN
F 3 "" H 6900 4700 50  0001 C CNN
	1    6900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4700 6900 4350
$Comp
L R R21
U 1 1 59F14123
P 7450 2850
F 0 "R21" V 7530 2850 50  0000 C CNN
F 1 "10k" V 7450 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7380 2850 50  0001 C CNN
F 3 "" H 7450 2850 50  0001 C CNN
	1    7450 2850
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 59F141FE
P 7650 2850
F 0 "R22" V 7730 2850 50  0000 C CNN
F 1 "10k" V 7650 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7580 2850 50  0001 C CNN
F 3 "" H 7650 2850 50  0001 C CNN
	1    7650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3850 8600 3850
$Comp
L VCC #PWR079
U 1 1 59F142AC
P 4300 2600
F 0 "#PWR079" H 4300 2450 50  0001 C CNN
F 1 "VCC" H 4300 2750 50  0000 C CNN
F 2 "" H 4300 2600 50  0001 C CNN
F 3 "" H 4300 2600 50  0001 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR080
U 1 1 59F142B2
P 4100 2600
F 0 "#PWR080" H 4100 2450 50  0001 C CNN
F 1 "VCC" H 4100 2750 50  0000 C CNN
F 2 "" H 4100 2600 50  0001 C CNN
F 3 "" H 4100 2600 50  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2600 7450 2700
Wire Wire Line
	7650 2600 7650 2700
Wire Wire Line
	7450 3750 7450 3000
Wire Wire Line
	7650 3850 7650 3000
Text Notes 3900 4300 0    60   ~ 0
Reset\nbutton
Text Notes 2250 5550 0    60   ~ 0
ESP8266 boot setting:\n\nBoot from Flash:\n	GPIO0 = High\n	GPIO2 = High\n	GPIO15 = Low\nDownload Firmware:\n	GPIO0 = Low\n	GPIO2 = High\n	GPIO15 = Low
Wire Wire Line
	6750 3750 8600 3750
Connection ~ 6900 3950
Wire Wire Line
	3750 3750 4950 3750
Wire Wire Line
	3750 3650 4950 3650
Text HLabel 3750 3450 0    60   Input ~ 0
PHOTO
Wire Wire Line
	3750 3450 4950 3450
Wire Wire Line
	6750 3350 8000 3350
Wire Wire Line
	8000 3350 8000 2950
Wire Wire Line
	8000 2950 8600 2950
Wire Wire Line
	6750 3450 8100 3450
Wire Wire Line
	8100 3450 8100 3050
Wire Wire Line
	8100 3050 8600 3050
Connection ~ 7450 3750
Connection ~ 7650 3850
Wire Wire Line
	3750 3850 4950 3850
Wire Wire Line
	4950 3950 3750 3950
Wire Wire Line
	8600 3650 6750 3650
Wire Wire Line
	8600 3550 6750 3550
$Comp
L ESP-12 U4
U 1 1 59F0FCB4
P 5850 3650
F 0 "U4" H 5850 3550 50  0000 C CNN
F 1 "ESP-12" H 5850 3750 50  0000 C CNN
F 2 "footprints:ESP-12-SMD" H 5850 3650 50  0001 C CNN
F 3 "" H 5850 3650 50  0001 C CNN
	1    5850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2900 7100 2800
$Comp
L GND #PWR081
U 1 1 59F36B26
P 6750 2900
F 0 "#PWR081" H 6750 2650 50  0001 C CNN
F 1 "GND" H 6750 2750 50  0000 C CNN
F 2 "" H 6750 2900 50  0001 C CNN
F 3 "" H 6750 2900 50  0001 C CNN
	1    6750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2900 6750 2800
Wire Wire Line
	6750 2500 6750 2450
Wire Wire Line
	5850 2450 7100 2450
Connection ~ 5850 2450
Wire Wire Line
	7100 2450 7100 2500
Connection ~ 6750 2450
$Comp
L R R19
U 1 1 59F16FEA
P 4750 2850
F 0 "R19" V 4830 2850 50  0000 C CNN
F 1 "10k" V 4750 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4680 2850 50  0001 C CNN
F 3 "" H 4750 2850 50  0001 C CNN
	1    4750 2850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR082
U 1 1 59F170AA
P 4750 2600
F 0 "#PWR082" H 4750 2450 50  0001 C CNN
F 1 "VCC" H 4750 2750 50  0000 C CNN
F 2 "" H 4750 2600 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2700 4750 2600
Wire Wire Line
	4750 3000 4750 3750
Connection ~ 4750 3750
Text HLabel 8600 3550 2    60   Input ~ 0
~BLANK
Text Notes 8200 6950 0    157  Italic 31
ESP8266 MCU\n
Text Label 8200 2950 0    60   ~ 0
TXD
Text Label 8200 3050 0    60   ~ 0
RXD
$EndSCHEMATC
