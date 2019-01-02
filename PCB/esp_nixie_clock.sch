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
Sheet 1 10
Title "Nixie Clock with IN-14 tubes and ESP8266 MCU"
Date "2017-11-02"
Rev "1.0"
Comp "Roberts Gotlaufs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3650 3200 500  750 
U 59EB6C5A
F0 "3V3 power" 60
F1 "power_3V3.sch" 60
F2 "3V3" I R 4150 3300 60 
$EndSheet
$Sheet
S 3650 4500 500  650 
U 59EB6C7E
F0 "HV power" 60
F1 "power_HV.sch" 60
F2 "+HV" I R 4150 4600 60 
$EndSheet
$Sheet
S 8250 3250 700  850 
U 59EB6D1A
F0 "Real Time Clock" 60
F1 "rtc.sch" 60
F2 "SCL" I L 8250 3350 60 
F3 "SDA" I L 8250 3450 60 
$EndSheet
$Sheet
S 6100 2000 1150 850 
U 59EB6D2B
F0 "User I/O" 60
F1 "gpio.sch" 60
F2 "LED_1" I L 6100 2150 60 
F3 "SW_1" I L 6100 2400 60 
F4 "SW_2" I L 6100 2500 60 
F5 "SW_3" I L 6100 2600 60 
F6 "PHOTO" I L 6100 2750 60 
$EndSheet
$Sheet
S 2300 3600 500  650 
U 59EB6DF5
F0 "Input power" 60
F1 "power_in.sch" 60
F2 "+12V" I R 2800 3750 60 
$EndSheet
$Comp
L +12V #PWR01
U 1 1 59EDEB11
P 2900 3300
F 0 "#PWR01" H 2900 3150 50  0001 C CNN
F 1 "+12V" H 2900 3440 50  0000 C CNN
F 2 "" H 2900 3300 50  0001 C CNN
F 3 "" H 2900 3300 50  0001 C CNN
	1    2900 3300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 59EDEB3F
P 4300 2950
F 0 "#PWR02" H 4300 2800 50  0001 C CNN
F 1 "VCC" H 4300 3100 50  0000 C CNN
F 2 "" H 4300 2950 50  0001 C CNN
F 3 "" H 4300 2950 50  0001 C CNN
	1    4300 2950
	1    0    0    -1  
$EndComp
$Sheet
S 6100 3250 1150 950 
U 59EB6C93
F0 "MCU ESP-12" 60
F1 "esp12.sch" 60
F2 "LED_1" I L 6100 3450 60 
F3 "SW_1" I L 6100 3900 60 
F4 "SW_2" I L 6100 4000 60 
F5 "SW_3" I L 6100 4100 60 
F6 "SCL" I R 7250 3350 60 
F7 "SDA" I R 7250 3450 60 
F8 "MOSI" I R 7250 3800 60 
F9 "CLK" I R 7250 3900 60 
F10 "PHOTO" I L 6100 3700 60 
F11 "~BLANK" I R 7250 3700 60 
$EndSheet
$Comp
L +HV #PWR03
U 1 1 59F09004
P 4300 4450
F 0 "#PWR03" H 4300 4300 50  0001 C CNN
F 1 "+HV" H 4300 4590 50  0000 C CNN
F 2 "" H 4300 4450 50  0001 C CNN
F 3 "" H 4300 4450 50  0001 C CNN
	1    4300 4450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 59F84D1A
P 900 6900
F 0 "#FLG04" H 900 6975 50  0001 C CNN
F 1 "PWR_FLAG" H 900 7050 50  0000 C CNN
F 2 "" H 900 6900 50  0001 C CNN
F 3 "" H 900 6900 50  0001 C CNN
	1    900  6900
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 59F86E89
P 900 6350
F 0 "#FLG05" H 900 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 900 6500 50  0000 C CNN
F 2 "" H 900 6350 50  0001 C CNN
F 3 "" H 900 6350 50  0001 C CNN
	1    900  6350
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 59F8706D
P 1350 6350
F 0 "#FLG06" H 1350 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 6500 50  0000 C CNN
F 2 "" H 1350 6350 50  0001 C CNN
F 3 "" H 1350 6350 50  0001 C CNN
	1    1350 6350
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 59F87162
P 1800 6350
F 0 "#FLG07" H 1800 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 6500 50  0000 C CNN
F 2 "" H 1800 6350 50  0001 C CNN
F 3 "" H 1800 6350 50  0001 C CNN
	1    1800 6350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 59F8ABF9
P 900 7150
F 0 "#PWR08" H 900 6900 50  0001 C CNN
F 1 "GND" H 900 7000 50  0000 C CNN
F 2 "" H 900 7150 50  0001 C CNN
F 3 "" H 900 7150 50  0001 C CNN
	1    900  7150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR09
U 1 1 59F8BFE7
P 900 6100
F 0 "#PWR09" H 900 5950 50  0001 C CNN
F 1 "+12V" H 900 6240 50  0000 C CNN
F 2 "" H 900 6100 50  0001 C CNN
F 3 "" H 900 6100 50  0001 C CNN
	1    900  6100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 59F8EF38
P 1350 6100
F 0 "#PWR010" H 1350 5950 50  0001 C CNN
F 1 "VCC" H 1350 6250 50  0000 C CNN
F 2 "" H 1350 6100 50  0001 C CNN
F 3 "" H 1350 6100 50  0001 C CNN
	1    1350 6100
	1    0    0    -1  
$EndComp
$Comp
L +HV #PWR011
U 1 1 59F8FBCC
P 1800 6100
F 0 "#PWR011" H 1800 5950 50  0001 C CNN
F 1 "+HV" H 1800 6240 50  0000 C CNN
F 2 "" H 1800 6100 50  0001 C CNN
F 3 "" H 1800 6100 50  0001 C CNN
	1    1800 6100
	1    0    0    -1  
$EndComp
$Sheet
S 6100 5100 1150 1200
U 59EB6CE0
F0 "Nixie Tube drivers" 60
F1 "nixie_drivers.sch" 60
F2 "DATA_IN" I L 6100 5450 60 
F3 "CLK" I L 6100 5350 60 
F4 "~BLANK" I L 6100 5550 60 
F5 "COLON_1" I R 7250 6100 60 
F6 "COLON_2" I R 7250 6200 60 
F7 "DECIMAL_1" I R 7250 5850 60 
F8 "DECIMAL_2" I R 7250 5950 60 
F9 "N1_[0..9]" I R 7250 5200 60 
F10 "N2_[0..9]" I R 7250 5300 60 
F11 "N3_[0..9]" I R 7250 5400 60 
F12 "N4_[0..9]" I R 7250 5500 60 
F13 "N6_[0..9]" I R 7250 5700 60 
F14 "N5_[0..9]" I R 7250 5600 60 
$EndSheet
$Sheet
S 7700 5100 750  1200
U 59EB6D02
F0 "Nixie Tubes" 60
F1 "nixie_tubes.sch" 60
F2 "DECIMAL_1" I L 7700 5850 60 
F3 "DECIMAL_2" I L 7700 5950 60 
F4 "COLON_1" I L 7700 6100 60 
F5 "COLON_2" I L 7700 6200 60 
F6 "N1_[0..9]" I L 7700 5200 60 
F7 "N2_[0..9]" I L 7700 5300 60 
F8 "N3_[0..9]" I L 7700 5400 60 
F9 "N4_[0..9]" I L 7700 5500 60 
F10 "N5_[0..9]" I L 7700 5600 60 
F11 "N6_[0..9]" I L 7700 5700 60 
$EndSheet
$Comp
L Mounting_Hole_PAD MK1
U 1 1 59FB21A5
P 3050 6600
F 0 "MK1" H 3050 6800 50  0000 C CNN
F 1 "Mounting_Hole_PAD" H 3050 6775 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 3050 6600 50  0001 C CNN
F 3 "" H 3050 6600 50  0001 C CNN
	1    3050 6600
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_PAD MK3
U 1 1 59FB21AC
P 3800 6600
F 0 "MK3" H 3800 6800 50  0000 C CNN
F 1 "Mounting_Hole_PAD" H 3800 6775 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 3800 6600 50  0001 C CNN
F 3 "" H 3800 6600 50  0001 C CNN
	1    3800 6600
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_PAD MK2
U 1 1 59FB21B3
P 3050 7350
F 0 "MK2" H 3050 7550 50  0000 C CNN
F 1 "Mounting_Hole_PAD" H 3050 7525 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 3050 7350 50  0001 C CNN
F 3 "" H 3050 7350 50  0001 C CNN
	1    3050 7350
	1    0    0    -1  
$EndComp
$Comp
L Mounting_Hole_PAD MK4
U 1 1 59FB21BA
P 3800 7350
F 0 "MK4" H 3800 7550 50  0000 C CNN
F 1 "Mounting_Hole_PAD" H 3800 7525 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 3800 7350 50  0001 C CNN
F 3 "" H 3800 7350 50  0001 C CNN
	1    3800 7350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 59FB21C1
P 3050 6750
F 0 "#PWR012" H 3050 6500 50  0001 C CNN
F 1 "GND" H 3050 6600 50  0000 C CNN
F 2 "" H 3050 6750 50  0001 C CNN
F 3 "" H 3050 6750 50  0001 C CNN
	1    3050 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59FB21C7
P 3800 6750
F 0 "#PWR013" H 3800 6500 50  0001 C CNN
F 1 "GND" H 3800 6600 50  0000 C CNN
F 2 "" H 3800 6750 50  0001 C CNN
F 3 "" H 3800 6750 50  0001 C CNN
	1    3800 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59FB21CD
P 3050 7500
F 0 "#PWR014" H 3050 7250 50  0001 C CNN
F 1 "GND" H 3050 7350 50  0000 C CNN
F 2 "" H 3050 7500 50  0001 C CNN
F 3 "" H 3050 7500 50  0001 C CNN
	1    3050 7500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 59FB21D3
P 3800 7500
F 0 "#PWR015" H 3800 7250 50  0001 C CNN
F 1 "GND" H 3800 7350 50  0000 C CNN
F 2 "" H 3800 7500 50  0001 C CNN
F 3 "" H 3800 7500 50  0001 C CNN
	1    3800 7500
	1    0    0    -1  
$EndComp
$Comp
L Fiducial F1
U 1 1 59FB21DD
P 4500 6550
F 0 "F1" H 4500 6350 60  0000 C CNN
F 1 "Fiducial" H 4500 6750 60  0001 C CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 4500 6550 60  0001 C CNN
F 3 "" H 4500 6550 60  0001 C CNN
	1    4500 6550
	1    0    0    -1  
$EndComp
$Comp
L Fiducial F2
U 1 1 59FB21E4
P 4800 6550
F 0 "F2" H 4800 6350 60  0000 C CNN
F 1 "Fiducial" H 4800 6750 60  0001 C CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 4800 6550 60  0001 C CNN
F 3 "" H 4800 6550 60  0001 C CNN
	1    4800 6550
	1    0    0    -1  
$EndComp
$Comp
L Fiducial F3
U 1 1 59FB21EB
P 5100 6550
F 0 "F3" H 5100 6350 60  0000 C CNN
F 1 "Fiducial" H 5100 6750 60  0001 C CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 5100 6550 60  0001 C CNN
F 3 "" H 5100 6550 60  0001 C CNN
	1    5100 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3750 2900 3750
Wire Wire Line
	2900 3750 2900 3300
Wire Wire Line
	4150 3300 4300 3300
Wire Wire Line
	4300 3300 4300 2950
Wire Wire Line
	7250 3350 8250 3350
Wire Wire Line
	8250 3450 7250 3450
Wire Bus Line
	7700 5200 7250 5200
Wire Bus Line
	7250 5300 7700 5300
Wire Bus Line
	7700 5400 7250 5400
Wire Bus Line
	7250 5500 7700 5500
Wire Bus Line
	7700 5600 7250 5600
Wire Bus Line
	7250 5700 7700 5700
Wire Wire Line
	6100 3450 5950 3450
Wire Wire Line
	5950 3450 5950 2150
Wire Wire Line
	5950 2150 6100 2150
Wire Wire Line
	5800 2400 6100 2400
Wire Wire Line
	6100 5350 6000 5350
Wire Wire Line
	6000 5350 6000 4550
Wire Wire Line
	6000 4550 7350 4550
Wire Wire Line
	7350 4550 7350 3900
Wire Wire Line
	7350 3900 7250 3900
Wire Wire Line
	7250 3800 7400 3800
Wire Wire Line
	7400 3800 7400 4600
Wire Wire Line
	7400 4600 5950 4600
Wire Wire Line
	5950 4600 5950 5450
Wire Wire Line
	5950 5450 6100 5450
Wire Wire Line
	4150 4600 4300 4600
Wire Wire Line
	4300 4600 4300 4450
Wire Wire Line
	6100 3700 5850 3700
Wire Wire Line
	5850 3700 5850 2750
Wire Wire Line
	5850 2750 6100 2750
Wire Wire Line
	5800 1400 5800 3900
Wire Wire Line
	5800 3900 6100 3900
Wire Wire Line
	6100 2500 5750 2500
Wire Wire Line
	5750 2500 5750 4000
Wire Wire Line
	5750 4000 6100 4000
Wire Wire Line
	6100 2600 5700 2600
Wire Wire Line
	5700 2600 5700 4100
Wire Wire Line
	5700 4100 6100 4100
Wire Wire Line
	7250 3700 7450 3700
Wire Wire Line
	7450 3700 7450 4650
Wire Wire Line
	7450 4650 5900 4650
Wire Wire Line
	5900 4650 5900 5550
Wire Wire Line
	5900 5550 6100 5550
Wire Wire Line
	7250 5850 7700 5850
Wire Wire Line
	7700 5950 7250 5950
Wire Wire Line
	900  6900 900  7150
Wire Wire Line
	900  6100 900  6350
Wire Wire Line
	1350 6100 1350 6350
Wire Wire Line
	1800 6100 1800 6350
Wire Wire Line
	7250 6100 7700 6100
Wire Wire Line
	7700 6200 7250 6200
Wire Wire Line
	3050 6750 3050 6700
Wire Wire Line
	3800 6750 3800 6700
Wire Wire Line
	3800 7500 3800 7450
Wire Wire Line
	3050 7500 3050 7450
$Comp
L TestPoint TP2
U 1 1 59FBD14F
P 1200 7000
F 0 "TP2" H 1200 7250 60  0000 C CNN
F 1 "TestPoint" H 1200 6900 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1200 7000 60  0001 C CNN
F 3 "" H 1200 7000 60  0001 C CNN
	1    1200 7000
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP3
U 1 1 59FBD2B0
P 1400 7000
F 0 "TP3" H 1400 7250 60  0000 C CNN
F 1 "TestPoint" H 1400 6900 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1400 7000 60  0001 C CNN
F 3 "" H 1400 7000 60  0001 C CNN
	1    1400 7000
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP5
U 1 1 59FBD3FD
P 1600 7000
F 0 "TP5" H 1600 7250 60  0000 C CNN
F 1 "TestPoint" H 1600 6900 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1600 7000 60  0001 C CNN
F 3 "" H 1600 7000 60  0001 C CNN
	1    1600 7000
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP6
U 1 1 59FBD531
P 1800 7000
F 0 "TP6" H 1800 7250 60  0000 C CNN
F 1 "TestPoint" H 1800 6900 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1800 7000 60  0001 C CNN
F 3 "" H 1800 7000 60  0001 C CNN
	1    1800 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 7050 1800 7000
Wire Wire Line
	900  7050 1800 7050
Connection ~ 900  7050
Wire Wire Line
	1200 7000 1200 7050
Connection ~ 1200 7050
Wire Wire Line
	1400 7000 1400 7050
Connection ~ 1400 7050
Wire Wire Line
	1600 7000 1600 7050
Connection ~ 1600 7050
$Comp
L TestPoint TP1
U 1 1 59FC719E
P 1100 6200
F 0 "TP1" H 1100 6450 60  0000 C CNN
F 1 "TestPoint" H 1100 6100 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1100 6200 60  0001 C CNN
F 3 "" H 1100 6200 60  0001 C CNN
	1    1100 6200
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP4
U 1 1 59FC72F6
P 1550 6200
F 0 "TP4" H 1550 6450 60  0000 C CNN
F 1 "TestPoint" H 1550 6100 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 6200 60  0001 C CNN
F 3 "" H 1550 6200 60  0001 C CNN
	1    1550 6200
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP7
U 1 1 59FC743D
P 2050 6200
F 0 "TP7" H 2050 6450 60  0000 C CNN
F 1 "TestPoint" H 2050 6100 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2050 6200 60  0001 C CNN
F 3 "" H 2050 6200 60  0001 C CNN
	1    2050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6200 1100 6250
Wire Wire Line
	1100 6250 900  6250
Connection ~ 900  6250
Wire Wire Line
	1550 6200 1550 6250
Wire Wire Line
	1550 6250 1350 6250
Connection ~ 1350 6250
Wire Wire Line
	2050 6200 2050 6250
Wire Wire Line
	2050 6250 1800 6250
Connection ~ 1800 6250
Text Notes 3100 6250 0    60   ~ 0
Mounting Holes\n
Text Notes 4650 6350 0    60   ~ 0
Fiducials
Text Notes 1200 5750 0    60   ~ 0
Power Nets
Text Notes 7700 6950 0    157  Italic 31
Schematic Hierarchy
$Sheet
S 6100 1100 1100 500 
U 59FFB7E0
F0 "Programmable LEDs" 60
F1 "ws2812.sch" 60
F2 "Data_In" I L 6100 1400 60 
$EndSheet
Wire Wire Line
	5800 1400 6100 1400
Connection ~ 5800 2400
$EndSCHEMATC
