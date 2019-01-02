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
Sheet 5 10
Title "Nixie Clock with IN-14 tubes and ESP8266 MCU"
Date "2017-11-02"
Rev "1.0"
Comp "Roberts Gotlaufs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1950 3650 0    60   Input ~ 0
LED_1
Text HLabel 4000 3600 0    60   Input ~ 0
SW_1
Text HLabel 4000 3750 0    60   Input ~ 0
SW_2
Text HLabel 4000 3900 0    60   Input ~ 0
SW_3
Text HLabel 8350 4500 2    60   Input ~ 0
PHOTO
$Comp
L R R11
U 1 1 59F39C0E
P 3300 4800
F 0 "R11" V 3380 4800 50  0000 C CNN
F 1 "300" V 3300 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3230 4800 50  0001 C CNN
F 3 "" H 3300 4800 50  0001 C CNN
	1    3300 4800
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 59F39C6B
P 3300 4200
F 0 "D4" H 3300 4300 50  0000 C CNN
F 1 "LED" H 3300 4100 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 3300 4200 50  0001 C CNN
F 3 "" H 3300 4200 50  0001 C CNN
	1    3300 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR054
U 1 1 59F39EA4
P 3300 5200
F 0 "#PWR054" H 3300 4950 50  0001 C CNN
F 1 "GND" H 3300 5050 50  0000 C CNN
F 2 "" H 3300 5200 50  0001 C CNN
F 3 "" H 3300 5200 50  0001 C CNN
	1    3300 5200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 59F3B203
P 4450 4250
F 0 "SW1" H 4500 4350 50  0000 L CNN
F 1 "SW_Push" H 4450 4190 50  0000 C CNN
F 2 "footprints:SW_SMD" H 4450 4450 50  0001 C CNN
F 3 "" H 4450 4450 50  0001 C CNN
	1    4450 4250
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW2
U 1 1 59F3B28F
P 5800 4250
F 0 "SW2" H 5850 4350 50  0000 L CNN
F 1 "SW_Push" H 5800 4190 50  0000 C CNN
F 2 "footprints:SW_SMD" H 5800 4450 50  0001 C CNN
F 3 "" H 5800 4450 50  0001 C CNN
	1    5800 4250
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW3
U 1 1 59F3B2C1
P 5150 4250
F 0 "SW3" H 5200 4350 50  0000 L CNN
F 1 "SW_Push" H 5150 4190 50  0000 C CNN
F 2 "footprints:SW_SMD" H 5150 4450 50  0001 C CNN
F 3 "" H 5150 4450 50  0001 C CNN
	1    5150 4250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR055
U 1 1 59F3B890
P 4450 5200
F 0 "#PWR055" H 4450 4950 50  0001 C CNN
F 1 "GND" H 4450 5050 50  0000 C CNN
F 2 "" H 4450 5200 50  0001 C CNN
F 3 "" H 4450 5200 50  0001 C CNN
	1    4450 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 59F3B8B0
P 5150 5200
F 0 "#PWR056" H 5150 4950 50  0001 C CNN
F 1 "GND" H 5150 5050 50  0000 C CNN
F 2 "" H 5150 5200 50  0001 C CNN
F 3 "" H 5150 5200 50  0001 C CNN
	1    5150 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 59F3B8D0
P 5800 5200
F 0 "#PWR057" H 5800 4950 50  0001 C CNN
F 1 "GND" H 5800 5050 50  0000 C CNN
F 2 "" H 5800 5200 50  0001 C CNN
F 3 "" H 5800 5200 50  0001 C CNN
	1    5800 5200
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 59F3BBFB
P 5150 3350
F 0 "R12" V 5230 3350 50  0000 C CNN
F 1 "10k" V 5150 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5080 3350 50  0001 C CNN
F 3 "" H 5150 3350 50  0001 C CNN
	1    5150 3350
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 59F3BC36
P 5800 3350
F 0 "R13" V 5880 3350 50  0000 C CNN
F 1 "10k" V 5800 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5730 3350 50  0001 C CNN
F 3 "" H 5800 3350 50  0001 C CNN
	1    5800 3350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR058
U 1 1 59F3BF07
P 5150 2950
F 0 "#PWR058" H 5150 2800 50  0001 C CNN
F 1 "VCC" H 5150 3100 50  0000 C CNN
F 2 "" H 5150 2950 50  0001 C CNN
F 3 "" H 5150 2950 50  0001 C CNN
	1    5150 2950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR059
U 1 1 59F3BF30
P 5800 2950
F 0 "#PWR059" H 5800 2800 50  0001 C CNN
F 1 "VCC" H 5800 3100 50  0000 C CNN
F 2 "" H 5800 2950 50  0001 C CNN
F 3 "" H 5800 2950 50  0001 C CNN
	1    5800 2950
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 59F3CA4F
P 4100 4250
F 0 "C16" H 4125 4350 50  0000 L CNN
F 1 "100n" H 4125 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4138 4100 50  0001 C CNN
F 3 "" H 4100 4250 50  0001 C CNN
	1    4100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4650 3300 4350
Wire Wire Line
	1950 3650 3300 3650
Wire Wire Line
	3300 3650 3300 4050
Wire Wire Line
	3300 5200 3300 4950
Wire Wire Line
	4000 3900 4450 3900
Wire Wire Line
	4000 3750 5150 3750
Wire Wire Line
	5150 3500 5150 4050
Wire Wire Line
	4450 5200 4450 4450
Wire Wire Line
	5150 4450 5150 5200
Wire Wire Line
	5800 5200 5800 4450
Connection ~ 5150 3750
Wire Wire Line
	5150 3200 5150 2950
Wire Wire Line
	5800 3200 5800 2950
Wire Wire Line
	5800 4050 5800 3500
Wire Wire Line
	4100 4100 4100 3900
Connection ~ 4100 3900
$Comp
L GND #PWR060
U 1 1 59F3CC51
P 4100 5200
F 0 "#PWR060" H 4100 4950 50  0001 C CNN
F 1 "GND" H 4100 5050 50  0000 C CNN
F 2 "" H 4100 5200 50  0001 C CNN
F 3 "" H 4100 5200 50  0001 C CNN
	1    4100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5200 4100 4400
$Comp
L C C17
U 1 1 59F3CD46
P 4800 4250
F 0 "C17" H 4825 4350 50  0000 L CNN
F 1 "100n" H 4825 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4838 4100 50  0001 C CNN
F 3 "" H 4800 4250 50  0001 C CNN
	1    4800 4250
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 59F3CDAA
P 5450 4250
F 0 "C18" H 5475 4350 50  0000 L CNN
F 1 "100n" H 5475 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5488 4100 50  0001 C CNN
F 3 "" H 5450 4250 50  0001 C CNN
	1    5450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4100 4800 3750
Connection ~ 4800 3750
Wire Wire Line
	4000 3600 5800 3600
Connection ~ 5800 3600
Wire Wire Line
	5450 4100 5450 3600
Connection ~ 5450 3600
$Comp
L GND #PWR061
U 1 1 59F3D169
P 4800 5200
F 0 "#PWR061" H 4800 4950 50  0001 C CNN
F 1 "GND" H 4800 5050 50  0000 C CNN
F 2 "" H 4800 5200 50  0001 C CNN
F 3 "" H 4800 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR062
U 1 1 59F3D19B
P 5450 5200
F 0 "#PWR062" H 5450 4950 50  0001 C CNN
F 1 "GND" H 5450 5050 50  0000 C CNN
F 2 "" H 5450 5200 50  0001 C CNN
F 3 "" H 5450 5200 50  0001 C CNN
	1    5450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5200 5450 4400
Wire Wire Line
	4800 4400 4800 5200
Wire Wire Line
	4450 3900 4450 4050
Text Notes 3550 3450 0    60   ~ 0
SW1 has pullup on MCU sheet.\nIt doubles as\nFirmware Download\nbutton
$Comp
L LDR03 R14
U 1 1 59F8C32D
P 7200 4250
F 0 "R14" V 7000 4250 50  0000 C CNN
F 1 "LDR" V 7275 4250 50  0000 C TNN
F 2 "Opto-Devices:Resistor_LDR_10x8.5_RM7.6" V 7375 4250 50  0001 C CNN
F 3 "" H 7200 4200 50  0001 C CNN
	1    7200 4250
	1    0    0    -1  
$EndComp
$Comp
L POT RV3
U 1 1 59F8C5C6
P 7050 3350
F 0 "RV3" V 6875 3350 50  0000 C CNN
F 1 "100k" V 6950 3350 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3214G" H 7050 3350 50  0001 C CNN
F 3 "" H 7050 3350 50  0001 C CNN
	1    7050 3350
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 59F8D16D
P 7700 4250
F 0 "R15" V 7780 4250 50  0000 C CNN
F 1 "330k" V 7700 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7630 4250 50  0001 C CNN
F 3 "" H 7700 4250 50  0001 C CNN
	1    7700 4250
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 59F8D4FD
P 7700 4750
F 0 "R16" V 7780 4750 50  0000 C CNN
F 1 "100k" V 7700 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7630 4750 50  0001 C CNN
F 3 "" H 7700 4750 50  0001 C CNN
	1    7700 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR063
U 1 1 59F8D53C
P 7200 5200
F 0 "#PWR063" H 7200 4950 50  0001 C CNN
F 1 "GND" H 7200 5050 50  0000 C CNN
F 2 "" H 7200 5200 50  0001 C CNN
F 3 "" H 7200 5200 50  0001 C CNN
	1    7200 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR064
U 1 1 59F8D571
P 7700 5200
F 0 "#PWR064" H 7700 4950 50  0001 C CNN
F 1 "GND" H 7700 5050 50  0000 C CNN
F 2 "" H 7700 5200 50  0001 C CNN
F 3 "" H 7700 5200 50  0001 C CNN
	1    7700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5200 7700 4900
Wire Wire Line
	7700 4600 7700 4400
Wire Wire Line
	7700 3750 7700 4100
Wire Wire Line
	7700 3800 7200 3800
Connection ~ 7200 3800
Wire Wire Line
	7200 4400 7200 5200
$Comp
L VCC #PWR065
U 1 1 59F8D73E
P 7050 2950
F 0 "#PWR065" H 7050 2800 50  0001 C CNN
F 1 "VCC" H 7050 3100 50  0000 C CNN
F 2 "" H 7050 2950 50  0001 C CNN
F 3 "" H 7050 2950 50  0001 C CNN
	1    7050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3200 7050 2950
Wire Wire Line
	8350 4500 7700 4500
Connection ~ 7700 4500
NoConn ~ 7050 3500
Wire Wire Line
	7200 3350 7200 4100
Text Notes 8150 3850 0    60   ~ 0
Voltage divider for ESP ADC range
$Comp
L TestPoint TP15
U 1 1 59FD684B
P 7700 3750
F 0 "TP15" H 7700 4000 60  0000 C CNN
F 1 "TestPoint" H 7700 3650 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7700 3750 60  0001 C CNN
F 3 "" H 7700 3750 60  0001 C CNN
	1    7700 3750
	1    0    0    -1  
$EndComp
Connection ~ 7700 3800
$Comp
L TestPoint TP16
U 1 1 59FD6ACC
P 8050 4400
F 0 "TP16" H 8050 4650 60  0000 C CNN
F 1 "TestPoint" H 8050 4300 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8050 4400 60  0001 C CNN
F 3 "" H 8050 4400 60  0001 C CNN
	1    8050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4400 8050 4500
Connection ~ 8050 4500
Text Notes 7350 6950 0    157  Italic 31
User I/O and Light Detector
Text Notes 7300 3250 0    60   ~ 0
LDR calibration\npot
$EndSCHEMATC
