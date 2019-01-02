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
Sheet 6 10
Title "Nixie Clock with IN-14 tubes and ESP8266 MCU"
Date "2017-11-02"
Rev "1.0"
Comp "Roberts Gotlaufs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7500 3100 1    60   Input ~ 0
+12V
$Comp
L CP C19
U 1 1 59F3F952
P 6450 3650
F 0 "C19" H 6475 3750 50  0000 L CNN
F 1 "220u" H 6475 3550 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 6488 3500 50  0001 C CNN
F 3 "" H 6450 3650 50  0001 C CNN
F 4 "Nichicon" H 6450 3650 60  0001 C CNN "Manufacturer"
F 5 "UWT1E221MNL1GS" H 6450 3650 60  0001 C CNN "Manufacturer Part Number"
F 6 "25V" H 6450 3650 60  0001 C CNN "Notes"
	1    6450 3650
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 59F3F9D6
P 6750 3650
F 0 "C20" H 6775 3750 50  0000 L CNN
F 1 "1u" H 6775 3550 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 6788 3500 50  0001 C CNN
F 3 "" H 6750 3650 50  0001 C CNN
	1    6750 3650
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 59F3FA21
P 7050 3650
F 0 "C21" H 7075 3750 50  0000 L CNN
F 1 "100n" H 7075 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7088 3500 50  0001 C CNN
F 3 "" H 7050 3650 50  0001 C CNN
	1    7050 3650
	1    0    0    -1  
$EndComp
$Comp
L Barrel_Jack J1
U 1 1 59F3FAD7
P 4400 3400
F 0 "J1" H 4400 3610 50  0000 C CNN
F 1 "Power Jack" H 4400 3225 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 4450 3360 50  0001 C CNN
F 3 "" H 4450 3360 50  0001 C CNN
	1    4400 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3500 6450 3300
Wire Wire Line
	5800 3300 7500 3300
Wire Wire Line
	7500 3300 7500 3100
Wire Wire Line
	6750 3500 6750 3300
Connection ~ 6750 3300
Wire Wire Line
	7050 3500 7050 3300
Connection ~ 7050 3300
Wire Wire Line
	6450 3800 6450 4000
Wire Wire Line
	6750 3800 6750 4000
Wire Wire Line
	7050 4000 7050 3800
Wire Wire Line
	4700 3500 4950 3500
Wire Wire Line
	4950 3500 4950 4000
Wire Wire Line
	4700 3300 5400 3300
Connection ~ 6450 3300
Wire Wire Line
	5600 3600 5600 4000
$Comp
L GND #PWR066
U 1 1 59EFCB11
P 4950 4000
F 0 "#PWR066" H 4950 3750 50  0001 C CNN
F 1 "GND" H 4950 3850 50  0000 C CNN
F 2 "" H 4950 4000 50  0001 C CNN
F 3 "" H 4950 4000 50  0001 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR067
U 1 1 59EFCB2F
P 5600 4000
F 0 "#PWR067" H 5600 3750 50  0001 C CNN
F 1 "GND" H 5600 3850 50  0000 C CNN
F 2 "" H 5600 4000 50  0001 C CNN
F 3 "" H 5600 4000 50  0001 C CNN
	1    5600 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR068
U 1 1 59EFCB4D
P 6450 4000
F 0 "#PWR068" H 6450 3750 50  0001 C CNN
F 1 "GND" H 6450 3850 50  0000 C CNN
F 2 "" H 6450 4000 50  0001 C CNN
F 3 "" H 6450 4000 50  0001 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR069
U 1 1 59EFCB6B
P 6750 4000
F 0 "#PWR069" H 6750 3750 50  0001 C CNN
F 1 "GND" H 6750 3850 50  0000 C CNN
F 2 "" H 6750 4000 50  0001 C CNN
F 3 "" H 6750 4000 50  0001 C CNN
	1    6750 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 59EFCB89
P 7050 4000
F 0 "#PWR070" H 7050 3750 50  0001 C CNN
F 1 "GND" H 7050 3850 50  0000 C CNN
F 2 "" H 7050 4000 50  0001 C CNN
F 3 "" H 7050 4000 50  0001 C CNN
	1    7050 4000
	1    0    0    -1  
$EndComp
NoConn ~ 4700 3400
$Comp
L Q_PMOS_GDS Q7
U 1 1 59FB1DD6
P 5600 3400
F 0 "Q7" V 5500 3500 50  0000 L CNN
F 1 "NTF5P03T3G" V 5750 2800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 5800 3500 50  0001 C CNN
F 3 "" H 5600 3400 50  0001 C CNN
	1    5600 3400
	0    -1   -1   0   
$EndComp
$Comp
L TestPoint TP17
U 1 1 59FCF1DC
P 5050 3250
F 0 "TP17" H 5050 3500 60  0000 C CNN
F 1 "TestPoint" H 5050 3150 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5050 3250 60  0001 C CNN
F 3 "" H 5050 3250 60  0001 C CNN
	1    5050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3250 5050 3300
Connection ~ 5050 3300
Text Notes 8200 6950 0    157  Italic 31
Power Input
Text Notes 5450 3100 0    60   ~ 0
Reverse Polarity\nProtection
Text Label 4800 3300 0    60   ~ 0
VIN
$EndSCHEMATC
