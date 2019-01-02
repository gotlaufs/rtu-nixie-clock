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
Sheet 8 10
Title "Nixie Clock with IN-14 tubes and ESP8266 MCU"
Date "2017-11-02"
Rev "1.0"
Comp "Roberts Gotlaufs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1450 1400 0    60   Input ~ 0
DATA_IN
Text HLabel 1450 2400 0    60   Input ~ 0
CLK
Text HLabel 5750 3700 2    60   Input ~ 0
N1_[0..9]
Text HLabel 2650 5550 0    60   Input ~ 0
N2_[0..9]
Text HLabel 5600 6200 2    60   Input ~ 0
N3_[0..9]
Text HLabel 9700 3700 2    60   Input ~ 0
N4_[0..9]
Text HLabel 9750 5800 2    60   Input ~ 0
N6_[0..9]
Text HLabel 6500 4100 0    60   Input ~ 0
N5_[0..9]
Text HLabel 1450 3400 0    60   Input ~ 0
~BLANK
$Comp
L R R23
U 1 1 59F22D74
P 2150 1200
F 0 "R23" V 2230 1200 50  0000 C CNN
F 1 "10k" V 2150 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 1200 50  0001 C CNN
F 3 "" H 2150 1200 50  0001 C CNN
	1    2150 1200
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 59F22D7A
P 2400 1200
F 0 "R26" V 2480 1200 50  0000 C CNN
F 1 "1k" V 2400 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2330 1200 50  0001 C CNN
F 3 "" H 2400 1200 50  0001 C CNN
	1    2400 1200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR083
U 1 1 59F22D82
P 2150 1000
F 0 "#PWR083" H 2150 850 50  0001 C CNN
F 1 "+12V" H 2150 1140 50  0000 C CNN
F 2 "" H 2150 1000 50  0001 C CNN
F 3 "" H 2150 1000 50  0001 C CNN
	1    2150 1000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR084
U 1 1 59F22D89
P 2400 1000
F 0 "#PWR084" H 2400 850 50  0001 C CNN
F 1 "VCC" H 2400 1150 50  0000 C CNN
F 2 "" H 2400 1000 50  0001 C CNN
F 3 "" H 2400 1000 50  0001 C CNN
	1    2400 1000
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 59F23796
P 2150 2200
F 0 "R24" V 2230 2200 50  0000 C CNN
F 1 "10k" V 2150 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 2200 50  0001 C CNN
F 3 "" H 2150 2200 50  0001 C CNN
	1    2150 2200
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 59F2379C
P 2400 2200
F 0 "R27" V 2480 2200 50  0000 C CNN
F 1 "1k" V 2400 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2330 2200 50  0001 C CNN
F 3 "" H 2400 2200 50  0001 C CNN
	1    2400 2200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR085
U 1 1 59F237A5
P 2150 2000
F 0 "#PWR085" H 2150 1850 50  0001 C CNN
F 1 "+12V" H 2150 2140 50  0000 C CNN
F 2 "" H 2150 2000 50  0001 C CNN
F 3 "" H 2150 2000 50  0001 C CNN
	1    2150 2000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR086
U 1 1 59F237AC
P 2400 2000
F 0 "#PWR086" H 2400 1850 50  0001 C CNN
F 1 "VCC" H 2400 2150 50  0000 C CNN
F 2 "" H 2400 2000 50  0001 C CNN
F 3 "" H 2400 2000 50  0001 C CNN
	1    2400 2000
	1    0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 59F2392C
P 2150 3200
F 0 "R25" V 2230 3200 50  0000 C CNN
F 1 "10k" V 2150 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2080 3200 50  0001 C CNN
F 3 "" H 2150 3200 50  0001 C CNN
	1    2150 3200
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 59F23932
P 2400 3200
F 0 "R28" V 2480 3200 50  0000 C CNN
F 1 "1k" V 2400 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2330 3200 50  0001 C CNN
F 3 "" H 2400 3200 50  0001 C CNN
	1    2400 3200
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR087
U 1 1 59F2393B
P 2150 3000
F 0 "#PWR087" H 2150 2850 50  0001 C CNN
F 1 "+12V" H 2150 3140 50  0000 C CNN
F 2 "" H 2150 3000 50  0001 C CNN
F 3 "" H 2150 3000 50  0001 C CNN
	1    2150 3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR088
U 1 1 59F23942
P 2400 3000
F 0 "#PWR088" H 2400 2850 50  0001 C CNN
F 1 "VCC" H 2400 3150 50  0000 C CNN
F 2 "" H 2400 3000 50  0001 C CNN
F 3 "" H 2400 3000 50  0001 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
Text Notes 800  1050 0    60   ~ 0
Logic level\nupconverters\n
Text HLabel 2550 4200 0    60   Input ~ 0
COLON_1
Text HLabel 6350 5300 0    60   Input ~ 0
COLON_2
$Comp
L HV5522 U5
U 1 1 59F67C28
P 4200 4450
F 0 "U5" H 3550 3250 60  0000 C CNN
F 1 "HV5522" H 4200 4350 60  0000 C CNN
F 2 "Housings_QFP:PQFP-44_10x10mm_Pitch0.8mm" H 4650 4150 60  0001 C CNN
F 3 "" H 4650 4150 60  0001 C CNN
	1    4200 4450
	1    0    0    -1  
$EndComp
$Comp
L HV5522 U6
U 1 1 59F6802D
P 8150 4450
F 0 "U6" H 7500 3250 60  0000 C CNN
F 1 "HV5522" H 8150 4350 60  0000 C CNN
F 2 "Housings_QFP:PQFP-44_10x10mm_Pitch0.8mm" H 8600 4150 60  0001 C CNN
F 3 "" H 8600 4150 60  0001 C CNN
	1    8150 4450
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR089
U 1 1 59F685C1
P 4500 2950
F 0 "#PWR089" H 4500 2800 50  0001 C CNN
F 1 "+12V" H 4500 3090 50  0000 C CNN
F 2 "" H 4500 2950 50  0001 C CNN
F 3 "" H 4500 2950 50  0001 C CNN
	1    4500 2950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR090
U 1 1 59F68A39
P 8450 2950
F 0 "#PWR090" H 8450 2800 50  0001 C CNN
F 1 "+12V" H 8450 3090 50  0000 C CNN
F 2 "" H 8450 2950 50  0001 C CNN
F 3 "" H 8450 2950 50  0001 C CNN
	1    8450 2950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR091
U 1 1 59F6A460
P 4200 2950
F 0 "#PWR091" H 4200 2800 50  0001 C CNN
F 1 "+12V" H 4200 3090 50  0000 C CNN
F 2 "" H 4200 2950 50  0001 C CNN
F 3 "" H 4200 2950 50  0001 C CNN
	1    4200 2950
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR092
U 1 1 59F6A81C
P 8150 2950
F 0 "#PWR092" H 8150 2800 50  0001 C CNN
F 1 "+12V" H 8150 3090 50  0000 C CNN
F 2 "" H 8150 2950 50  0001 C CNN
F 3 "" H 8150 2950 50  0001 C CNN
	1    8150 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR093
U 1 1 59F6B132
P 4500 5850
F 0 "#PWR093" H 4500 5600 50  0001 C CNN
F 1 "GND" H 4500 5700 50  0000 C CNN
F 2 "" H 4500 5850 50  0001 C CNN
F 3 "" H 4500 5850 50  0001 C CNN
	1    4500 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR094
U 1 1 59F6B1AC
P 8450 5850
F 0 "#PWR094" H 8450 5600 50  0001 C CNN
F 1 "GND" H 8450 5700 50  0000 C CNN
F 2 "" H 8450 5850 50  0001 C CNN
F 3 "" H 8450 5850 50  0001 C CNN
	1    8450 5850
	1    0    0    -1  
$EndComp
Entry Wire Line
	3000 4500 3100 4400
Entry Wire Line
	3000 4600 3100 4500
Entry Wire Line
	3000 4800 3100 4700
Entry Wire Line
	3000 4900 3100 4800
Entry Wire Line
	3000 5000 3100 4900
Entry Wire Line
	3000 5100 3100 5000
Entry Wire Line
	3000 5200 3100 5100
Entry Wire Line
	3000 5300 3100 5200
Entry Wire Line
	3000 5400 3100 5300
Text Label 5000 3800 0    60   ~ 0
N1_0
Text Label 5000 4800 0    60   ~ 0
N1_1
Text Label 5000 4700 0    60   ~ 0
N1_2
Text Label 5000 4500 0    60   ~ 0
N1_3
Text Label 5000 4400 0    60   ~ 0
N1_4
Text Label 5000 4300 0    60   ~ 0
N1_5
Text Label 5000 4200 0    60   ~ 0
N1_6
Text Label 5000 4100 0    60   ~ 0
N1_7
Text Label 5000 4000 0    60   ~ 0
N1_8
Text Label 5000 3900 0    60   ~ 0
N1_9
Entry Wire Line
	3000 5500 3100 5400
Text Label 3150 4400 0    60   ~ 0
N2_0
Text Label 3150 5400 0    60   ~ 0
N2_1
Text Label 3150 5300 0    60   ~ 0
N2_2
Text Label 3150 5200 0    60   ~ 0
N2_3
Text Label 3150 5100 0    60   ~ 0
N2_4
Text Label 3150 5000 0    60   ~ 0
N2_5
Text Label 3150 4900 0    60   ~ 0
N2_6
Text Label 3150 4800 0    60   ~ 0
N2_7
Text Label 3150 4700 0    60   ~ 0
N2_8
Text Label 3150 4500 0    60   ~ 0
N2_9
Text Label 5000 5300 0    60   ~ 0
N3_6
Text Label 5000 5200 0    60   ~ 0
N3_7
Text Label 5000 5100 0    60   ~ 0
N3_8
Text Label 5000 5000 0    60   ~ 0
N3_9
Entry Wire Line
	5300 5100 5400 5200
Entry Wire Line
	5300 5200 5400 5300
Entry Wire Line
	5300 5300 5400 5400
Entry Wire Line
	5300 5400 5400 5500
Entry Wire Line
	5300 5000 5400 5100
Entry Wire Line
	5300 4900 5400 5000
Entry Wire Line
	5300 4800 5400 4900
Entry Wire Line
	5300 4700 5400 4800
Entry Wire Line
	5300 4500 5400 4600
Entry Wire Line
	5300 4400 5400 4500
Entry Wire Line
	5300 4300 5400 4400
Entry Wire Line
	5300 4200 5400 4300
Entry Wire Line
	5300 4100 5400 4200
Entry Wire Line
	5300 4000 5400 4100
Text Label 8950 3800 0    60   ~ 0
N4_0
Text Label 8950 4800 0    60   ~ 0
N4_1
Text Label 8950 4700 0    60   ~ 0
N4_2
Text Label 8950 4500 0    60   ~ 0
N4_3
Text Label 8950 4400 0    60   ~ 0
N4_4
Text Label 8950 4300 0    60   ~ 0
N4_5
Text Label 8950 4200 0    60   ~ 0
N4_6
Text Label 8950 4100 0    60   ~ 0
N4_7
Text Label 8950 4000 0    60   ~ 0
N4_8
Text Label 8950 3900 0    60   ~ 0
N4_9
Text Label 7100 4200 0    60   ~ 0
N5_0
Text Label 7100 5200 0    60   ~ 0
N5_1
Text Label 7100 5100 0    60   ~ 0
N5_2
Text Label 7100 5000 0    60   ~ 0
N5_3
Text Label 7100 4900 0    60   ~ 0
N5_4
Text Label 7100 4800 0    60   ~ 0
N5_5
Text Label 7100 4700 0    60   ~ 0
N5_6
Text Label 7100 4500 0    60   ~ 0
N5_7
Text Label 7100 4400 0    60   ~ 0
N5_8
Text Label 7100 4300 0    60   ~ 0
N5_9
Text Label 8950 4900 0    60   ~ 0
N6_0
Text Label 7100 4100 0    60   ~ 0
N6_1
Text Label 7100 4000 0    60   ~ 0
N6_2
Text Label 7100 3900 0    60   ~ 0
N6_3
Text Label 7100 3800 0    60   ~ 0
N6_4
Text Label 8950 5400 0    60   ~ 0
N6_5
Text Label 8950 5300 0    60   ~ 0
N6_6
Text Label 8950 5200 0    60   ~ 0
N6_7
Text Label 8950 5100 0    60   ~ 0
N6_8
Text Label 8950 5000 0    60   ~ 0
N6_9
Text Label 5000 4900 0    60   ~ 0
N3_0
Text Label 3150 4100 0    60   ~ 0
N3_1
Text Label 3150 4000 0    60   ~ 0
N3_2
Text Label 3150 3900 0    60   ~ 0
N3_3
Text Label 3150 3800 0    60   ~ 0
N3_4
Text Label 5000 5400 0    60   ~ 0
N3_5
Entry Wire Line
	9250 5100 9350 5200
Entry Wire Line
	9250 5200 9350 5300
Entry Wire Line
	9250 5300 9350 5400
Entry Wire Line
	9250 5400 9350 5500
Entry Wire Line
	9250 5000 9350 5100
Entry Wire Line
	9250 4900 9350 5000
Entry Wire Line
	9250 4800 9350 4900
Entry Wire Line
	9250 4700 9350 4800
Entry Wire Line
	9250 4500 9350 4600
Entry Wire Line
	9250 4400 9350 4500
Entry Wire Line
	9250 4300 9350 4400
Entry Wire Line
	9250 4200 9350 4300
Entry Wire Line
	9250 4100 9350 4200
Entry Wire Line
	9250 4000 9350 4100
Text HLabel 6350 5400 0    60   Input ~ 0
DECIMAL_2
Text HLabel 2550 4300 0    60   Input ~ 0
DECIMAL_1
NoConn ~ 7900 3450
$Comp
L Q_NPN_BEC Q8
U 1 1 59F9ECAB
P 1850 1500
F 0 "Q8" H 2050 1550 50  0000 L CNN
F 1 "BC847BW" H 2050 1450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 2050 1600 50  0001 C CNN
F 3 "" H 1850 1500 50  0001 C CNN
	1    1850 1500
	0    1    -1   0   
$EndComp
$Comp
L Q_NPN_BEC Q9
U 1 1 59F9EED0
P 1850 2500
F 0 "Q9" H 2050 2550 50  0000 L CNN
F 1 "BC847BW" H 2050 2450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 2050 2600 50  0001 C CNN
F 3 "" H 1850 2500 50  0001 C CNN
	1    1850 2500
	0    1    -1   0   
$EndComp
$Comp
L Q_NPN_BEC Q10
U 1 1 59F9EF29
P 1850 3500
F 0 "Q10" H 2050 3550 50  0000 L CNN
F 1 "BC847BW" H 2050 3450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-323_SC-70_Handsoldering" H 2050 3600 50  0001 C CNN
F 3 "" H 1850 3500 50  0001 C CNN
	1    1850 3500
	0    1    -1   0   
$EndComp
$Comp
L TestPoint TP18
U 1 1 59FDBB6A
P 1550 1350
F 0 "TP18" H 1550 1600 60  0000 C CNN
F 1 "TestPoint" H 1550 1250 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 1350 60  0001 C CNN
F 3 "" H 1550 1350 60  0001 C CNN
	1    1550 1350
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP19
U 1 1 59FDBE31
P 1550 2350
F 0 "TP19" H 1550 2600 60  0000 C CNN
F 1 "TestPoint" H 1550 2250 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 2350 60  0001 C CNN
F 3 "" H 1550 2350 60  0001 C CNN
	1    1550 2350
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP20
U 1 1 59FDC10A
P 1550 3350
F 0 "TP20" H 1550 3600 60  0000 C CNN
F 1 "TestPoint" H 1550 3250 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1550 3350 60  0001 C CNN
F 3 "" H 1550 3350 60  0001 C CNN
	1    1550 3350
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP23
U 1 1 59FDC721
P 2700 1350
F 0 "TP23" H 2700 1600 60  0000 C CNN
F 1 "TestPoint" H 2700 1250 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2700 1350 60  0001 C CNN
F 3 "" H 2700 1350 60  0001 C CNN
	1    2700 1350
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP21
U 1 1 59FDCA68
P 2650 2350
F 0 "TP21" H 2650 2600 60  0000 C CNN
F 1 "TestPoint" H 2650 2250 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2650 2350 60  0001 C CNN
F 3 "" H 2650 2350 60  0001 C CNN
	1    2650 2350
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP22
U 1 1 59FDCE2D
P 2650 3350
F 0 "TP22" H 2650 3600 60  0000 C CNN
F 1 "TestPoint" H 2650 3250 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2650 3350 60  0001 C CNN
F 3 "" H 2650 3350 60  0001 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP24
U 1 1 59FDDFF3
P 4100 2300
F 0 "TP24" H 4100 2550 60  0000 C CNN
F 1 "TestPoint" H 4100 2200 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 4100 2300 60  0001 C CNN
F 3 "" H 4100 2300 60  0001 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP25
U 1 1 59FE61EE
P 2650 4100
F 0 "TP25" H 2650 4350 60  0000 C CNN
F 1 "TestPoint" H 2650 4000 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2650 4100 60  0001 C CNN
F 3 "" H 2650 4100 60  0001 C CNN
	1    2650 4100
	1    0    0    -1  
$EndComp
$Comp
L TestPoint TP26
U 1 1 59FE63D1
P 6450 5250
F 0 "TP26" H 6450 5500 60  0000 C CNN
F 1 "TestPoint" H 6450 5150 60  0001 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 6450 5250 60  0001 C CNN
F 3 "" H 6450 5250 60  0001 C CNN
	1    6450 5250
	1    0    0    -1  
$EndComp
Text Notes 7900 6900 0    157  Italic 31
Nixie Tube Drivers
Text Notes 3200 6450 0    60   ~ 0
All HV channels open drain
Text Notes 5300 2600 0    60   ~ 0
Data daisy chain
$Comp
L GND #PWR095
U 1 1 5A043609
P 4950 3450
F 0 "#PWR095" H 4950 3200 50  0001 C CNN
F 1 "GND" H 4950 3300 50  0000 C CNN
F 2 "" H 4950 3450 50  0001 C CNN
F 3 "" H 4950 3450 50  0001 C CNN
	1    4950 3450
	1    0    0    -1  
$EndComp
$Comp
L C C24
U 1 1 5A0462F1
P 4950 3200
F 0 "C24" H 4975 3300 50  0000 L CNN
F 1 "100n" H 4975 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4988 3050 50  0001 C CNN
F 3 "" H 4950 3200 50  0001 C CNN
	1    4950 3200
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 5A046A31
P 9000 3250
F 0 "C25" H 9025 3350 50  0000 L CNN
F 1 "100n" H 9025 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9038 3100 50  0001 C CNN
F 3 "" H 9000 3250 50  0001 C CNN
	1    9000 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR096
U 1 1 5A04785A
P 9000 3500
F 0 "#PWR096" H 9000 3250 50  0001 C CNN
F 1 "GND" H 9000 3350 50  0000 C CNN
F 2 "" H 9000 3500 50  0001 C CNN
F 3 "" H 9000 3500 50  0001 C CNN
	1    9000 3500
	1    0    0    -1  
$EndComp
Entry Wire Line
	5300 3900 5400 4000
Entry Wire Line
	5300 3800 5400 3900
$Comp
L R R47
U 1 1 5A016C5D
P 4100 3250
F 0 "R47" V 4000 3250 50  0000 C CNN
F 1 "0R" V 4100 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4030 3250 50  0001 C CNN
F 3 "" H 4100 3250 50  0001 C CNN
	1    4100 3250
	1    0    0    -1  
$EndComp
$Comp
L R R48
U 1 1 5A018091
P 4300 3250
F 0 "R48" V 4400 3250 50  0000 C CNN
F 1 "0R" V 4300 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 3250 50  0001 C CNN
F 3 "" H 4300 3250 50  0001 C CNN
	1    4300 3250
	1    0    0    -1  
$EndComp
$Comp
L R R49
U 1 1 5A0180F1
P 8050 3250
F 0 "R49" V 7950 3250 50  0000 C CNN
F 1 "0R" V 8050 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7980 3250 50  0001 C CNN
F 3 "" H 8050 3250 50  0001 C CNN
	1    8050 3250
	1    0    0    -1  
$EndComp
$Comp
L R R50
U 1 1 5A0189E0
P 8250 3250
F 0 "R50" V 8350 3250 50  0000 C CNN
F 1 "0R" V 8250 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8180 3250 50  0001 C CNN
F 3 "" H 8250 3250 50  0001 C CNN
	1    8250 3250
	1    0    0    -1  
$EndComp
Entry Wire Line
	2900 4000 3000 4100
Entry Wire Line
	2900 3900 3000 4000
Entry Wire Line
	2900 3800 3000 3900
Entry Wire Line
	2900 3700 3000 3800
Entry Wire Line
	9250 3900 9350 4000
Entry Wire Line
	9250 3800 9350 3900
Entry Wire Line
	6950 5100 7050 5200
Entry Wire Line
	6950 5000 7050 5100
Entry Wire Line
	6950 4900 7050 5000
Entry Wire Line
	6950 4800 7050 4900
Entry Wire Line
	6950 4700 7050 4800
Entry Wire Line
	6950 4600 7050 4700
Entry Wire Line
	6950 4400 7050 4500
Entry Wire Line
	6950 4300 7050 4400
Entry Wire Line
	6950 4200 7050 4300
Entry Wire Line
	6950 4100 7050 4200
Entry Wire Line
	7000 4000 7100 4100
Entry Wire Line
	7000 3900 7100 4000
Entry Wire Line
	7000 3800 7100 3900
Entry Wire Line
	7000 3700 7100 3800
Wire Wire Line
	2050 1400 3850 1400
Wire Wire Line
	2150 1350 2150 1400
Wire Wire Line
	2150 1000 2150 1050
Wire Wire Line
	1850 1750 1850 1700
Wire Wire Line
	1450 1400 1650 1400
Wire Wire Line
	1850 1750 2400 1750
Wire Wire Line
	2400 1750 2400 1350
Wire Wire Line
	2400 1050 2400 1000
Connection ~ 2150 1400
Wire Wire Line
	2050 2400 7700 2400
Wire Wire Line
	2150 2350 2150 2400
Wire Wire Line
	2150 2000 2150 2050
Wire Wire Line
	1850 2750 1850 2700
Wire Wire Line
	1450 2400 1650 2400
Wire Wire Line
	1850 2750 2400 2750
Wire Wire Line
	2400 2750 2400 2350
Wire Wire Line
	2400 2050 2400 2000
Connection ~ 2150 2400
Wire Wire Line
	2150 3350 2150 3400
Wire Wire Line
	2150 3000 2150 3050
Wire Wire Line
	1850 3750 1850 3700
Wire Wire Line
	1450 3400 1650 3400
Wire Wire Line
	1850 3750 2400 3750
Wire Wire Line
	2400 3750 2400 3350
Wire Wire Line
	2400 3050 2400 3000
Connection ~ 2150 3400
Wire Wire Line
	4500 2950 4500 3450
Wire Wire Line
	8450 2950 8450 3450
Wire Wire Line
	3750 2400 3750 3450
Wire Wire Line
	7700 2400 7700 3450
Connection ~ 3750 2400
Wire Wire Line
	3850 1400 3850 3450
Wire Wire Line
	3950 3450 3950 2650
Wire Wire Line
	3950 2650 7800 2650
Wire Wire Line
	7800 2650 7800 3450
Wire Wire Line
	8150 2950 8150 3450
Wire Wire Line
	4500 5850 4500 5650
Wire Wire Line
	8450 5850 8450 5650
Wire Wire Line
	3400 3800 3000 3800
Wire Wire Line
	3000 3900 3400 3900
Wire Wire Line
	3000 4000 3400 4000
Wire Wire Line
	3000 4100 3400 4100
Wire Wire Line
	2550 4200 3400 4200
Wire Wire Line
	2550 4300 3400 4300
Wire Wire Line
	3400 4400 3100 4400
Wire Wire Line
	3100 4500 3400 4500
Wire Wire Line
	3400 4700 3100 4700
Wire Wire Line
	3400 4800 3100 4800
Wire Wire Line
	3400 4900 3100 4900
Wire Wire Line
	3100 5000 3400 5000
Wire Wire Line
	3400 5100 3100 5100
Wire Wire Line
	3100 5200 3400 5200
Wire Wire Line
	3400 5300 3100 5300
Wire Wire Line
	3400 5400 3100 5400
Wire Wire Line
	4950 5100 5300 5100
Wire Wire Line
	4950 5200 5300 5200
Wire Wire Line
	5300 5300 4950 5300
Wire Wire Line
	4950 5400 5300 5400
Wire Wire Line
	5300 4000 4950 4000
Wire Wire Line
	4950 4100 5300 4100
Wire Wire Line
	5300 4200 4950 4200
Wire Wire Line
	4950 4300 5300 4300
Wire Wire Line
	5300 4400 4950 4400
Wire Wire Line
	4950 4500 5300 4500
Wire Wire Line
	5300 4700 4950 4700
Wire Wire Line
	4950 4800 5300 4800
Wire Wire Line
	5300 4900 4950 4900
Wire Wire Line
	4950 5000 5300 5000
Wire Wire Line
	7050 4200 7350 4200
Wire Wire Line
	7350 4300 7050 4300
Wire Wire Line
	7050 4400 7350 4400
Wire Wire Line
	7350 4500 7050 4500
Wire Wire Line
	7050 4700 7350 4700
Wire Wire Line
	7350 4800 7050 4800
Wire Wire Line
	7050 4900 7350 4900
Wire Wire Line
	7350 5000 7050 5000
Wire Wire Line
	7050 5100 7350 5100
Wire Wire Line
	7350 5200 7050 5200
Wire Wire Line
	6350 5300 7350 5300
Wire Wire Line
	6350 5400 7350 5400
Wire Wire Line
	8900 5400 9250 5400
Wire Wire Line
	9250 5300 8900 5300
Wire Wire Line
	8900 5200 9250 5200
Wire Wire Line
	9250 5100 8900 5100
Wire Wire Line
	8900 5000 9250 5000
Wire Wire Line
	9250 4900 8900 4900
Wire Wire Line
	8900 4800 9250 4800
Wire Wire Line
	9250 4700 8900 4700
Wire Wire Line
	9250 4500 8900 4500
Wire Wire Line
	8900 4400 9250 4400
Wire Wire Line
	9250 4300 8900 4300
Wire Wire Line
	8900 4200 9250 4200
Wire Wire Line
	9250 4100 8900 4100
Wire Wire Line
	8900 4000 9250 4000
Wire Wire Line
	4200 2950 4200 3450
Wire Wire Line
	1550 1350 1550 1400
Connection ~ 1550 1400
Wire Wire Line
	1550 2350 1550 2400
Connection ~ 1550 2400
Wire Wire Line
	1550 3350 1550 3400
Connection ~ 1550 3400
Wire Wire Line
	2700 1350 2700 1400
Connection ~ 2700 1400
Wire Wire Line
	2650 2350 2650 2400
Connection ~ 2650 2400
Wire Wire Line
	2650 3400 2650 3350
Connection ~ 2650 3400
Wire Wire Line
	4100 2300 4100 2650
Connection ~ 4100 2650
Wire Wire Line
	4950 3450 4950 3350
Wire Wire Line
	4950 3050 4950 3000
Wire Wire Line
	4950 3000 4500 3000
Connection ~ 4500 3000
Wire Wire Line
	9000 3500 9000 3400
Wire Wire Line
	9000 3100 9000 3050
Wire Wire Line
	9000 3050 8450 3050
Connection ~ 8450 3050
Wire Wire Line
	4950 3900 5300 3900
Wire Wire Line
	4950 3800 5300 3800
Wire Bus Line
	5400 3700 5400 4900
Wire Bus Line
	5400 3700 5750 3700
Wire Bus Line
	3000 4500 3000 5550
Wire Bus Line
	3000 5550 2650 5550
Wire Wire Line
	2650 4100 2650 4200
Connection ~ 2650 4200
Wire Wire Line
	4100 3450 4100 3400
Wire Wire Line
	4100 3100 4100 3000
Wire Wire Line
	4100 3000 4200 3000
Connection ~ 4200 3000
Wire Wire Line
	4300 3450 4300 3400
Wire Wire Line
	8050 3450 8050 3400
Wire Wire Line
	8250 3400 8250 3450
Wire Wire Line
	8050 3100 8050 3000
Wire Wire Line
	8050 3000 8150 3000
Connection ~ 8150 3000
Wire Wire Line
	4300 3100 4300 2750
Wire Wire Line
	2950 2750 8250 2750
Wire Wire Line
	8250 2750 8250 3100
Wire Wire Line
	2950 3400 2950 2750
Wire Wire Line
	2050 3400 2950 3400
Connection ~ 4300 2750
Wire Bus Line
	2900 3650 2900 6200
Wire Bus Line
	2900 6200 5600 6200
Wire Bus Line
	5400 5000 5400 6200
Wire Wire Line
	8900 3900 9250 3900
Wire Wire Line
	8900 3800 9250 3800
Wire Bus Line
	9350 3700 9350 4900
Wire Bus Line
	9350 3700 9700 3700
Wire Wire Line
	6450 5250 6450 5300
Connection ~ 6450 5300
Wire Bus Line
	6950 5150 6950 4100
Wire Bus Line
	6950 4100 6500 4100
Wire Wire Line
	7350 3800 7100 3800
Wire Wire Line
	7100 3900 7350 3900
Wire Wire Line
	7350 4000 7100 4000
Wire Wire Line
	7100 4100 7350 4100
Wire Bus Line
	7000 4000 7000 3700
Wire Bus Line
	7000 3700 6850 3700
Wire Bus Line
	6850 3700 6850 5800
Wire Bus Line
	6850 5800 9750 5800
Wire Bus Line
	9350 5800 9350 5000
$EndSCHEMATC
