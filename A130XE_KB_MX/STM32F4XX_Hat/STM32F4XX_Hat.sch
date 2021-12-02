EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "STM32F407VET6 Hat Pin Header Adapter PCB"
Date "2021-12-02"
Rev "0.1"
Comp "RetroBit Lab"
Comment1 "Keyboard A130XE Adapter"
Comment2 "Perliminary version"
Comment3 "https://stm32-base.org/boards/STM32F407VET6-STM32-F4VE-V2.0"
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x17_Counter_Clockwise J4
U 1 1 61A8E6F5
P 5050 3800
F 0 "J4" H 5100 2750 50  0000 C CNN
F 1 "Conn_02x17_Counter_Clockwise" H 5100 2850 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x17_P2.54mm_Vertical" H 5050 3800 50  0001 C CNN
F 3 "~" H 5050 3800 50  0001 C CNN
	1    5050 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x32 J5
U 1 1 61A8FBB5
P 3700 3750
F 0 "J5" H 3800 3750 50  0000 L CNN
F 1 "Conn_01x32" H 2650 3750 50  0000 L CNN
F 2 "RetroBitLab:MOLEX-FFC-1.25mm-RA-52044-3245" H 3700 3750 50  0001 C CNN
F 3 "~" H 3700 3750 50  0001 C CNN
	1    3700 3750
	1    0    0    -1  
$EndComp
Text GLabel 5250 3000 2    50   Output ~ 0
IN_0
Text GLabel 5250 3100 2    50   Output ~ 0
IN_3
Text GLabel 5250 3600 2    50   Output ~ 0
IN_1
Text GLabel 5250 3700 2    50   Output ~ 0
IN_5
Text GLabel 5250 3800 2    50   Output ~ 0
IN_7
Text GLabel 5250 3900 2    50   Output ~ 0
IN_2
Text GLabel 5250 4300 2    50   Output ~ 0
IN_6
Text GLabel 4750 3100 0    50   Output ~ 0
IN_4
Text GLabel 4750 3200 0    50   Output ~ 0
RSC
Text GLabel 4750 3300 0    50   Output ~ 0
START
Text GLabel 4750 3700 0    50   Output ~ 0
LSC
Text GLabel 4750 3600 0    50   Output ~ 0
RESET
Text GLabel 4750 3500 0    50   Output ~ 0
OPTION
Text GLabel 4750 3400 0    50   Output ~ 0
SELECT
Text GLabel 4750 3000 0    50   Input ~ 0
OUT_0
Text GLabel 4750 3800 0    50   Input ~ 0
OUT_FN
Text GLabel 5250 3200 2    50   Input ~ 0
OUT_2
Text GLabel 5250 3300 2    50   Input ~ 0
OUT_4
Text GLabel 5250 3400 2    50   Input ~ 0
OUT_1
Text GLabel 5250 3500 2    50   Input ~ 0
OUT_6
Text GLabel 5250 4000 2    50   Input ~ 0
OUT_7
Text GLabel 5250 4100 2    50   Input ~ 0
OUT_5
Text GLabel 5250 4200 2    50   Input ~ 0
OUT_3
Text GLabel 5650 4500 2    50   Input ~ 0
~LED
NoConn ~ 4750 3900
NoConn ~ 4750 4000
NoConn ~ 4750 4100
NoConn ~ 4750 4200
NoConn ~ 4750 4300
NoConn ~ 4750 4400
NoConn ~ 4750 4500
NoConn ~ 4750 4600
Text GLabel 3500 4050 0    50   Output ~ 0
IN_4
Text GLabel 3500 4150 0    50   Output ~ 0
RSC
Text GLabel 3500 4250 0    50   Output ~ 0
START
Text GLabel 3500 4650 0    50   Output ~ 0
LSC
Text GLabel 3500 4550 0    50   Output ~ 0
RESET
Text GLabel 3500 4450 0    50   Output ~ 0
OPTION
Text GLabel 3500 4350 0    50   Output ~ 0
SELECT
Text GLabel 3500 3950 0    50   Input ~ 0
OUT_0
Text GLabel 3500 4750 0    50   Input ~ 0
OUT_FN
$Comp
L power:+5V #PWR06
U 1 1 61AAA355
P 5400 4600
F 0 "#PWR06" H 5400 4450 50  0001 C CNN
F 1 "+5V" H 5400 4800 50  0000 C CNN
F 2 "" H 5400 4600 50  0001 C CNN
F 3 "" H 5400 4600 50  0001 C CNN
	1    5400 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 4500 5250 4500
Wire Wire Line
	5250 4600 5400 4600
Text GLabel 3500 3850 0    50   Output ~ 0
IN_0
Text GLabel 3500 3750 0    50   Output ~ 0
IN_3
Text GLabel 3500 3250 0    50   Output ~ 0
IN_1
Text GLabel 3500 3150 0    50   Output ~ 0
IN_5
Text GLabel 3500 3050 0    50   Output ~ 0
IN_7
Text GLabel 3500 2950 0    50   Output ~ 0
IN_2
Text GLabel 3500 2550 0    50   Output ~ 0
IN_6
Text GLabel 3500 3650 0    50   Input ~ 0
OUT_2
Text GLabel 3500 3550 0    50   Input ~ 0
OUT_4
Text GLabel 3500 3450 0    50   Input ~ 0
OUT_1
Text GLabel 3500 3350 0    50   Input ~ 0
OUT_6
Text GLabel 3500 2850 0    50   Input ~ 0
OUT_7
Text GLabel 3500 2750 0    50   Input ~ 0
OUT_5
Text GLabel 3500 2650 0    50   Input ~ 0
OUT_3
Text GLabel 2950 2250 1    50   Input ~ 0
~LED
$Comp
L power:+5V #PWR03
U 1 1 61AB4557
P 3350 2250
F 0 "#PWR03" H 3350 2100 50  0001 C CNN
F 1 "+5V" H 3350 2450 50  0000 C CNN
F 2 "" H 3350 2250 50  0001 C CNN
F 3 "" H 3350 2250 50  0001 C CNN
	1    3350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2250 3350 2250
NoConn ~ 3500 4850
NoConn ~ 3500 4950
NoConn ~ 3500 5050
NoConn ~ 3500 5150
NoConn ~ 3500 5250
NoConn ~ 3500 5350
$Comp
L Mechanical:MountingHole H1
U 1 1 61AC5250
P 850 5950
F 0 "H1" H 950 6000 50  0000 L CNN
F 1 "MountingHole" H 950 5950 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 850 5950 50  0001 C CNN
F 3 "~" H 850 5950 50  0001 C CNN
	1    850  5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61AC722D
P 1800 5950
F 0 "H2" H 1900 6000 50  0000 L CNN
F 1 "MountingHole" H 1900 5950 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 1800 5950 50  0001 C CNN
F 3 "~" H 1800 5950 50  0001 C CNN
	1    1800 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61AC7824
P 2800 5950
F 0 "H3" H 2900 6000 50  0000 L CNN
F 1 "MountingHole" H 2900 5950 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 2800 5950 50  0001 C CNN
F 3 "~" H 2800 5950 50  0001 C CNN
	1    2800 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61AC7C02
P 3800 5950
F 0 "H4" H 3900 6000 50  0000 L CNN
F 1 "MountingHole" H 3900 5950 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm" H 3800 5950 50  0001 C CNN
F 3 "~" H 3800 5950 50  0001 C CNN
	1    3800 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 61AD1A82
P 2650 2350
F 0 "R1" V 2750 2350 50  0000 C CNN
F 1 "330" V 2550 2350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 2650 2350 50  0001 C CNN
F 3 "~" H 2650 2350 50  0001 C CNN
	1    2650 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 2350 2950 2350
Wire Wire Line
	2950 2250 2950 2350
Connection ~ 2950 2350
Wire Wire Line
	2950 2350 3500 2350
$Comp
L power:+5V #PWR01
U 1 1 61AD30D1
P 2400 2350
F 0 "#PWR01" H 2400 2200 50  0001 C CNN
F 1 "+5V" H 2400 2550 50  0000 C CNN
F 2 "" H 2400 2350 50  0001 C CNN
F 3 "" H 2400 2350 50  0001 C CNN
	1    2400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2350 2550 2350
$Comp
L Device:LED D1
U 1 1 61AD54E3
P 2950 2500
F 0 "D1" V 2950 2650 50  0000 R CNN
F 1 "LED" V 2850 2700 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2950 2500 50  0001 C CNN
F 3 "~" H 2950 2500 50  0001 C CNN
	1    2950 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61AD638A
P 2950 2650
F 0 "#PWR02" H 2950 2400 50  0001 C CNN
F 1 "GND" H 3000 2450 50  0000 C CNN
F 2 "" H 2950 2650 50  0001 C CNN
F 3 "" H 2950 2650 50  0001 C CNN
	1    2950 2650
	1    0    0    -1  
$EndComp
NoConn ~ 3600 1050
NoConn ~ 3700 1050
NoConn ~ 3800 1050
NoConn ~ 3900 1050
NoConn ~ 4000 1050
NoConn ~ 4100 1050
NoConn ~ 4200 1050
NoConn ~ 4300 1050
NoConn ~ 4400 1050
NoConn ~ 4500 1050
NoConn ~ 4600 1050
NoConn ~ 4700 1050
NoConn ~ 4800 1050
NoConn ~ 4900 1050
NoConn ~ 5000 1550
NoConn ~ 4900 1550
NoConn ~ 4800 1550
NoConn ~ 4700 1550
NoConn ~ 4600 1550
NoConn ~ 4500 1550
NoConn ~ 4400 1550
NoConn ~ 4300 1550
NoConn ~ 4200 1550
NoConn ~ 4100 1550
NoConn ~ 4000 1550
NoConn ~ 3900 1550
NoConn ~ 3800 1550
NoConn ~ 3700 1550
$Comp
L AmigaComponents:LOGO LOGO1
U 1 1 61A9B360
P 7350 5450
F 0 "LOGO1" H 7400 5550 59  0000 L CNN
F 1 "LOGO" H 7400 5400 59  0000 L CNN
F 2 "RetroBitLab:atari_ready_8mm_rev" H 7350 5450 59  0001 C CNN
F 3 "" H 7350 5450 59  0001 C CNN
	1    7350 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x24_Odd_Even J2
U 1 1 61AAD7C7
P 6850 3900
F 0 "J2" H 6900 2450 50  0000 C CNN
F 1 "Conn_02x24_Odd_Even" H 6900 2550 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x24_P2.54mm_Vertical" H 6850 3900 50  0001 C CNN
F 3 "~" H 6850 3900 50  0001 C CNN
	1    6850 3900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x24_Odd_Even J3
U 1 1 61AB2D48
P 1500 3950
F 0 "J3" H 1550 5300 50  0000 C CNN
F 1 "Conn_02x24_Odd_Even" H 1500 2600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x24_P2.54mm_Vertical" H 1500 3950 50  0001 C CNN
F 3 "~" H 1500 3950 50  0001 C CNN
	1    1500 3950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x16_Odd_Even J1
U 1 1 61AC4DFC
P 4300 1350
F 0 "J1" V 4400 2150 50  0000 L CNN
F 1 "Conn_02x16_Odd_Even" V 4350 2150 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x16_P2.54mm_Vertical" H 4300 1350 50  0001 C CNN
F 3 "~" H 4300 1350 50  0001 C CNN
	1    4300 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 61AD3DAC
P 5100 1550
F 0 "#PWR0101" H 5100 1400 50  0001 C CNN
F 1 "+3V3" H 5100 1750 50  0000 C CNN
F 2 "" H 5100 1550 50  0001 C CNN
F 3 "" H 5100 1550 50  0001 C CNN
	1    5100 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61AD653E
P 5000 1050
F 0 "#PWR0102" H 5000 800 50  0001 C CNN
F 1 "GND" V 5050 900 50  0000 R CNN
F 2 "" H 5000 1050 50  0001 C CNN
F 3 "" H 5000 1050 50  0001 C CNN
	1    5000 1050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61AD6AA5
P 5100 1050
F 0 "#PWR0103" H 5100 800 50  0001 C CNN
F 1 "GND" V 5150 900 50  0000 R CNN
F 2 "" H 5100 1050 50  0001 C CNN
F 3 "" H 5100 1050 50  0001 C CNN
	1    5100 1050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61ADAC5C
P 3600 1550
F 0 "#PWR0104" H 3600 1300 50  0001 C CNN
F 1 "GND" V 3650 1400 50  0000 R CNN
F 2 "" H 3600 1550 50  0001 C CNN
F 3 "" H 3600 1550 50  0001 C CNN
	1    3600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 61ADD39A
P 7100 5100
F 0 "#PWR0105" H 7100 4950 50  0001 C CNN
F 1 "+5V" H 7100 5300 50  0000 C CNN
F 2 "" H 7100 5100 50  0001 C CNN
F 3 "" H 7100 5100 50  0001 C CNN
	1    7100 5100
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 61ADDAD9
P 6500 5100
F 0 "#PWR0106" H 6500 4950 50  0001 C CNN
F 1 "+5V" H 6500 5300 50  0000 C CNN
F 2 "" H 6500 5100 50  0001 C CNN
F 3 "" H 6500 5100 50  0001 C CNN
	1    6500 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 4900 6500 4900
Wire Wire Line
	6500 4900 6500 5000
Wire Wire Line
	6550 5000 6500 5000
Connection ~ 6500 5000
Wire Wire Line
	6500 5000 6500 5100
Wire Wire Line
	7050 5000 7100 5000
Wire Wire Line
	7100 5000 7100 5100
Wire Wire Line
	7050 4900 7100 4900
Wire Wire Line
	7100 4900 7100 5000
Connection ~ 7100 5000
$Comp
L power:+3V3 #PWR0107
U 1 1 61AE032F
P 6450 4700
F 0 "#PWR0107" H 6450 4550 50  0001 C CNN
F 1 "+3V3" V 6350 4800 50  0000 L CNN
F 2 "" H 6450 4700 50  0001 C CNN
F 3 "" H 6450 4700 50  0001 C CNN
	1    6450 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 61AE14C0
P 7150 4700
F 0 "#PWR0108" H 7150 4550 50  0001 C CNN
F 1 "+3V3" V 7250 4750 50  0000 L CNN
F 2 "" H 7150 4700 50  0001 C CNN
F 3 "" H 7150 4700 50  0001 C CNN
	1    7150 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 4700 7150 4700
Wire Wire Line
	7050 4800 7050 4700
Connection ~ 7050 4700
Wire Wire Line
	6550 4800 6550 4700
Wire Wire Line
	6550 4700 6450 4700
Connection ~ 6550 4700
$Comp
L power:GND #PWR0109
U 1 1 61AE4059
P 6550 4600
F 0 "#PWR0109" H 6550 4350 50  0001 C CNN
F 1 "GND" V 6550 4450 50  0000 R CNN
F 2 "" H 6550 4600 50  0001 C CNN
F 3 "" H 6550 4600 50  0001 C CNN
	1    6550 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 61AE4BC4
P 7050 4600
F 0 "#PWR0110" H 7050 4350 50  0001 C CNN
F 1 "GND" V 7050 4450 50  0000 R CNN
F 2 "" H 7050 4600 50  0001 C CNN
F 3 "" H 7050 4600 50  0001 C CNN
	1    7050 4600
	0    -1   -1   0   
$EndComp
Text Label 7050 4500 0    50   ~ 0
PE2
Text Label 7050 4400 0    50   ~ 0
PE4
Text Label 7050 4300 0    50   ~ 0
PE6
Text Label 7050 4200 0    50   ~ 0
PC0
Text Label 7050 4100 0    50   ~ 0
PC2
Text Label 7050 4000 0    50   ~ 0
VREF-
Text Label 7050 3900 0    50   ~ 0
PA0-WK_UP
Text Label 7050 3800 0    50   ~ 0
PA2
Text Label 7050 3700 0    50   ~ 0
PA4
Text Label 7050 3600 0    50   ~ 0
PA6
Text Label 7050 3500 0    50   ~ 0
PC4
Text Label 7050 3400 0    50   ~ 0
PB0
Text Label 7050 3300 0    50   ~ 0
PE7
Text Label 7050 3200 0    50   ~ 0
PE9
Text Label 7050 3100 0    50   ~ 0
PE11
Text Label 7050 3000 0    50   ~ 0
PE13
Text Label 7050 2900 0    50   ~ 0
PE15
Text Label 7050 2800 0    50   ~ 0
PB11
Text Label 7050 2700 0    50   ~ 0
PB13
Text Label 6550 2700 2    50   ~ 0
PB14
Text Label 6550 2800 2    50   ~ 0
PB12
Text Label 6550 2900 2    50   ~ 0
PB10
Text Label 6550 3000 2    50   ~ 0
PE14
Text Label 6550 3100 2    50   ~ 0
PE12
Text Label 6550 3200 2    50   ~ 0
PE10
Text Label 6550 3300 2    50   ~ 0
PE8
Text Label 6550 3400 2    50   ~ 0
PB1
Text Label 6550 3500 2    50   ~ 0
PC5
Text Label 6550 3600 2    50   ~ 0
PA7
Text Label 6550 3700 2    50   ~ 0
PA5
Text Label 6550 3800 2    50   ~ 0
PA3
Text Label 6550 3900 2    50   ~ 0
PA1
Text Label 6550 4000 2    50   ~ 0
VREF+
Text Label 6550 4100 2    50   ~ 0
PC3
Text Label 6550 4200 2    50   ~ 0
PC1
Text Label 6550 4300 2    50   ~ 0
PC13
Text Label 6550 4400 2    50   ~ 0
PE5
Text Label 6550 4500 2    50   ~ 0
PE3
$Comp
L power:+3V3 #PWR0111
U 1 1 61B05AA1
P 1800 5100
F 0 "#PWR0111" H 1800 4950 50  0001 C CNN
F 1 "+3V3" H 1700 5250 50  0000 L CNN
F 2 "" H 1800 5100 50  0001 C CNN
F 3 "" H 1800 5100 50  0001 C CNN
	1    1800 5100
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 61B09ECA
P 1100 5100
F 0 "#PWR0112" H 1100 4950 50  0001 C CNN
F 1 "+3V3" H 1000 5250 50  0000 L CNN
F 2 "" H 1100 5100 50  0001 C CNN
F 3 "" H 1100 5100 50  0001 C CNN
	1    1100 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 4950 1800 4950
Wire Wire Line
	1800 4950 1800 5050
Wire Wire Line
	1700 5050 1800 5050
Connection ~ 1800 5050
Wire Wire Line
	1800 5050 1800 5100
Wire Wire Line
	1200 5050 1100 5050
Wire Wire Line
	1100 5050 1100 5100
Wire Wire Line
	1200 4950 1100 4950
Wire Wire Line
	1100 4950 1100 5050
Connection ~ 1100 5050
$Comp
L power:GND #PWR0113
U 1 1 61B0F7B2
P 1800 4750
F 0 "#PWR0113" H 1800 4500 50  0001 C CNN
F 1 "GND" V 1800 4550 50  0000 C CNN
F 2 "" H 1800 4750 50  0001 C CNN
F 3 "" H 1800 4750 50  0001 C CNN
	1    1800 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 4750 1700 4750
Wire Wire Line
	1700 4650 1700 4750
Connection ~ 1700 4750
$Comp
L power:GND #PWR0114
U 1 1 61B11497
P 1100 4750
F 0 "#PWR0114" H 1100 4500 50  0001 C CNN
F 1 "GND" V 1100 4550 50  0000 C CNN
F 2 "" H 1100 4750 50  0001 C CNN
F 3 "" H 1100 4750 50  0001 C CNN
	1    1100 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 4750 1100 4750
Wire Wire Line
	1200 4650 1200 4750
Connection ~ 1200 4750
Text Label 1700 4850 0    50   ~ 0
BOOT0
Text Label 1200 4850 2    50   ~ 0
PB2-BOOT1
Text Label 1700 4550 0    50   ~ 0
PE1
Text Label 1700 4450 0    50   ~ 0
PB9
Text Label 1700 4350 0    50   ~ 0
PB7
Text Label 1700 4250 0    50   ~ 0
PB5
Text Label 1700 4150 0    50   ~ 0
PD7
Text Label 1700 4050 0    50   ~ 0
PD5
Text Label 1700 3950 0    50   ~ 0
PD3
Text Label 1700 3850 0    50   ~ 0
PD1
Text Label 1700 3750 0    50   ~ 0
PC12
Text Label 1700 3650 0    50   ~ 0
PC10
Text Label 1700 3550 0    50   ~ 0
PA12-USB_DP
Text Label 1700 3450 0    50   ~ 0
PA10-RXD1
Text Label 1700 3350 0    50   ~ 0
PA8
Text Label 1700 3250 0    50   ~ 0
PC8
Text Label 1700 3150 0    50   ~ 0
PC6
Text Label 1700 3050 0    50   ~ 0
PD14
Text Label 1700 2950 0    50   ~ 0
PD12
Text Label 1700 2850 0    50   ~ 0
PD10
Text Label 1700 2750 0    50   ~ 0
PD8
Text Label 1200 2750 2    50   ~ 0
PB15
Text Label 1200 2850 2    50   ~ 0
PD9
Text Label 1200 2950 2    50   ~ 0
PD11
Text Label 1200 3050 2    50   ~ 0
PD13
Text Label 1200 3150 2    50   ~ 0
PD15
Text Label 1200 3250 2    50   ~ 0
PC7
Text Label 1200 3350 2    50   ~ 0
PC9
Text Label 1200 3450 2    50   ~ 0
PA9-TXD1
Text Label 1200 3550 2    50   ~ 0
PA11-USB_DM
Text Label 1200 3650 2    50   ~ 0
PA15-TDI_SWD
Text Label 1200 3750 2    50   ~ 0
PC11
Text Label 1200 3850 2    50   ~ 0
PD0
Text Label 1200 3950 2    50   ~ 0
PD2
Text Label 1200 4050 2    50   ~ 0
PD4
Text Label 1200 4150 2    50   ~ 0
PD6
Text Label 1200 4250 2    50   ~ 0
PB3-TDO_SWD
Text Label 1200 4350 2    50   ~ 0
PB6
Text Label 1200 4450 2    50   ~ 0
PB8
Wire Notes Line
	600  5750 7900 5750
Wire Notes Line
	7900 5750 7900 650 
Wire Notes Line
	7900 650  600  650 
Wire Notes Line
	600  650  600  5750
Text Notes 5300 1750 0    197  ~ 39
STM32F407 VET6\nATARI Keyboard\nAdapter
Text Notes 700  6800 0    100  ~ 20
In the keyboard PCB, the jumper for ATARI/USB must\nbe selected for USB HID. OUT_FN (26) will be used\nfor START, SELECT, OPTION, and RESET keys.
Wire Wire Line
	3500 2450 3400 2450
$Comp
L power:GND #PWR04
U 1 1 61AB4561
P 3400 2450
F 0 "#PWR04" H 3400 2200 50  0001 C CNN
F 1 "GND" V 3450 2300 50  0000 R CNN
F 2 "" H 3400 2450 50  0001 C CNN
F 3 "" H 3400 2450 50  0001 C CNN
	1    3400 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 4400 5350 4400
$Comp
L power:GND #PWR05
U 1 1 61AAB2B4
P 5350 4400
F 0 "#PWR05" H 5350 4150 50  0001 C CNN
F 1 "GND" V 5400 4250 50  0000 R CNN
F 2 "" H 5350 4400 50  0001 C CNN
F 3 "" H 5350 4400 50  0001 C CNN
	1    5350 4400
	0    -1   -1   0   
$EndComp
Text GLabel 8850 1200 0    50   Output ~ 0
IN_4
Text Label 9200 1200 0    50   ~ 0
PE5
Text GLabel 8850 1350 0    50   Output ~ 0
IN_6
Text Label 9200 1350 0    50   ~ 0
PE6
Text GLabel 8850 1500 0    50   Output ~ 0
IN_2
Text Label 9200 1500 0    50   ~ 0
PE7
Text GLabel 8850 1650 0    50   Output ~ 0
IN_7
Text Label 9200 1650 0    50   ~ 0
PE8
Text GLabel 8850 1800 0    50   Output ~ 0
IN_5
Text Label 9200 1800 0    50   ~ 0
PE9
Text GLabel 8850 1950 0    50   Output ~ 0
IN_1
Text Label 9200 1950 0    50   ~ 0
PE10
Text GLabel 8850 2100 0    50   Output ~ 0
IN_0
Text Label 9200 2100 0    50   ~ 0
PE11
Text GLabel 8850 2250 0    50   Output ~ 0
IN_3
Text Label 9200 2250 0    50   ~ 0
PE12
Text GLabel 8850 2400 0    50   Output ~ 0
RSC
Text Label 9200 2400 0    50   ~ 0
PE13
Text GLabel 8850 2550 0    50   Output ~ 0
START
Text Label 9200 2550 0    50   ~ 0
PE14
Text GLabel 8850 2700 0    50   Output ~ 0
SELECT
Text Label 9200 2700 0    50   ~ 0
PE15
Text GLabel 8850 2850 0    50   Output ~ 0
OPTION
Text Label 9200 2850 0    50   ~ 0
PD0
Text GLabel 8850 3000 0    50   Output ~ 0
RESET
Text Label 9200 3000 0    50   ~ 0
PD1
Text GLabel 8850 3150 0    50   Input ~ 0
OUT_1
Text Label 9200 3150 0    50   ~ 0
PC0
Text GLabel 8850 3300 0    50   Input ~ 0
OUT_4
Text Label 9200 3300 0    50   ~ 0
PC1
Text GLabel 8850 3450 0    50   Input ~ 0
OUT_6
Text Label 9200 3450 0    50   ~ 0
PC2
Text GLabel 8850 3600 0    50   Input ~ 0
OUT_2
Text Label 9200 3600 0    50   ~ 0
PC3
Text GLabel 8850 3750 0    50   Input ~ 0
OUT_7
Text Label 9200 3750 0    50   ~ 0
PC4
Text GLabel 8850 3900 0    50   Input ~ 0
OUT_0
Text Label 9200 3900 0    50   ~ 0
PC5
Text GLabel 8850 4050 0    50   Input ~ 0
OUT_3
Text Label 9200 4050 0    50   ~ 0
PC6
Text GLabel 8850 4200 0    50   Input ~ 0
OUT_5
Text Label 9200 4200 0    50   ~ 0
PC7
Text GLabel 8850 4350 0    50   Input ~ 0
OUT_FN
Text Label 9200 4350 0    50   ~ 0
PD8
Wire Wire Line
	8850 1200 9200 1200
Wire Wire Line
	9200 1350 8850 1350
Wire Wire Line
	8850 1500 9200 1500
Wire Wire Line
	9200 1650 8850 1650
Wire Wire Line
	8850 1800 9200 1800
Wire Wire Line
	8850 1950 9200 1950
Wire Wire Line
	9200 2100 8850 2100
Wire Wire Line
	8850 2250 9200 2250
Wire Wire Line
	9200 2400 8850 2400
Wire Wire Line
	8850 2550 9200 2550
Wire Wire Line
	9200 2700 8850 2700
Wire Wire Line
	8850 2850 9200 2850
Wire Wire Line
	8850 3000 9200 3000
Wire Wire Line
	8850 3150 9200 3150
Wire Wire Line
	8850 3300 9200 3300
Wire Wire Line
	8850 3450 9200 3450
Wire Wire Line
	9200 3600 8850 3600
Wire Wire Line
	8850 3750 9200 3750
Wire Wire Line
	9200 3900 8850 3900
Wire Wire Line
	8850 4050 9200 4050
Wire Wire Line
	9200 4200 8850 4200
Wire Wire Line
	8850 4350 9200 4350
Text Notes 8450 1650 3    100  ~ 20
R0-R12\n
Text Notes 8400 3300 3    100  ~ 20
C0-C8\n
Text Notes 9650 3400 1    100  ~ 20
MATRIX RxC 13x9
$Comp
L power:+5V #PWR0115
U 1 1 61BC9ADE
P 4400 5400
F 0 "#PWR0115" H 4400 5250 50  0001 C CNN
F 1 "+5V" H 4400 5600 50  0000 C CNN
F 2 "" H 4400 5400 50  0001 C CNN
F 3 "" H 4400 5400 50  0001 C CNN
	1    4400 5400
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0116
U 1 1 61BC9F8A
P 4850 5400
F 0 "#PWR0116" H 4850 5250 50  0001 C CNN
F 1 "+3V3" V 4750 5500 50  0000 L CNN
F 2 "" H 4850 5400 50  0001 C CNN
F 3 "" H 4850 5400 50  0001 C CNN
	1    4850 5400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 61BCA842
P 5300 5400
F 0 "#PWR0117" H 5300 5150 50  0001 C CNN
F 1 "GND" V 5300 5250 50  0000 R CNN
F 2 "" H 5300 5400 50  0001 C CNN
F 3 "" H 5300 5400 50  0001 C CNN
	1    5300 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5400 4400 5200
Wire Wire Line
	4850 5400 4850 5200
Wire Wire Line
	5300 5400 5300 5200
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61BD06B7
P 4400 5200
F 0 "#FLG0101" H 4400 5275 50  0001 C CNN
F 1 "PWR_FLAG" H 4400 5400 50  0000 C CNN
F 2 "" H 4400 5200 50  0001 C CNN
F 3 "~" H 4400 5200 50  0001 C CNN
	1    4400 5200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61BD0C04
P 4850 5200
F 0 "#FLG0102" H 4850 5275 50  0001 C CNN
F 1 "PWR_FLAG" H 4850 5400 50  0000 C CNN
F 2 "" H 4850 5200 50  0001 C CNN
F 3 "~" H 4850 5200 50  0001 C CNN
	1    4850 5200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61BD1143
P 5300 5200
F 0 "#FLG0103" H 5300 5275 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 5400 50  0000 C CNN
F 2 "" H 5300 5200 50  0001 C CNN
F 3 "~" H 5300 5200 50  0001 C CNN
	1    5300 5200
	1    0    0    -1  
$EndComp
Text Label 1200 4550 2    50   ~ 0
PE0
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 61BF739C
P 4700 2150
F 0 "J6" H 4800 2200 50  0000 L CNN
F 1 "Conn_01x03" H 4800 2100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4700 2150 50  0001 C CNN
F 3 "~" H 4700 2150 50  0001 C CNN
	1    4700 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61BF7E45
P 4500 2050
F 0 "#PWR0118" H 4500 1800 50  0001 C CNN
F 1 "GND" V 4550 1900 50  0000 R CNN
F 2 "" H 4500 2050 50  0001 C CNN
F 3 "" H 4500 2050 50  0001 C CNN
	1    4500 2050
	-1   0    0    1   
$EndComp
Text Label 4500 2150 2    50   ~ 0
PA10-RXD1
Text Label 4500 2250 2    50   ~ 0
PA9-TXD1
Text Notes 5100 2500 2    50   ~ 0
DEBUG UART\n1 GND - 2 RX - 3 TX
$Comp
L Device:R_Small R6
U 1 1 61C027E3
P 1350 2100
F 0 "R6" V 1450 2100 50  0000 C CNN
F 1 "510R" V 1250 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 1350 2100 50  0001 C CNN
F 3 "~" H 1350 2100 50  0001 C CNN
	1    1350 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 61C0476F
P 1350 1800
F 0 "R5" V 1450 1800 50  0000 C CNN
F 1 "510R" V 1250 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 1350 1800 50  0001 C CNN
F 3 "~" H 1350 1800 50  0001 C CNN
	1    1350 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 61C04C9A
P 1350 1500
F 0 "R4" V 1450 1500 50  0000 C CNN
F 1 "510R" V 1250 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 1350 1500 50  0001 C CNN
F 3 "~" H 1350 1500 50  0001 C CNN
	1    1350 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 61C05247
P 1350 1200
F 0 "R3" V 1450 1200 50  0000 C CNN
F 1 "510R" V 1250 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 1350 1200 50  0001 C CNN
F 3 "~" H 1350 1200 50  0001 C CNN
	1    1350 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61C057FB
P 1350 900
F 0 "R2" V 1450 900 50  0000 C CNN
F 1 "510R" V 1250 950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 1350 900 50  0001 C CNN
F 3 "~" H 1350 900 50  0001 C CNN
	1    1350 900 
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 61C13B0D
P 1100 900
F 0 "D2" V 1100 1050 50  0000 R CNN
F 1 "LED" V 1000 1100 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 900 50  0001 C CNN
F 3 "~" H 1100 900 50  0001 C CNN
	1    1100 900 
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 61C14BC5
P 1100 1200
F 0 "D3" V 1100 1350 50  0000 R CNN
F 1 "LED" V 1000 1400 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 1200 50  0001 C CNN
F 3 "~" H 1100 1200 50  0001 C CNN
	1    1100 1200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 61C15306
P 1100 1500
F 0 "D4" V 1100 1650 50  0000 R CNN
F 1 "LED" V 1000 1700 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 1500 50  0001 C CNN
F 3 "~" H 1100 1500 50  0001 C CNN
	1    1100 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 61C15ADA
P 1100 1800
F 0 "D5" V 1100 1950 50  0000 R CNN
F 1 "LED" V 1000 2000 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 1800 50  0001 C CNN
F 3 "~" H 1100 1800 50  0001 C CNN
	1    1100 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 61C162DA
P 1100 2100
F 0 "D6" V 1100 2250 50  0000 R CNN
F 1 "LED" V 1000 2300 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1100 2100 50  0001 C CNN
F 3 "~" H 1100 2100 50  0001 C CNN
	1    1100 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	950  900  950  1200
Connection ~ 950  1200
Wire Wire Line
	950  1200 950  1500
Connection ~ 950  1500
Wire Wire Line
	950  1500 950  1800
Connection ~ 950  1800
Wire Wire Line
	950  1800 950  2100
$Comp
L power:+3V3 #PWR07
U 1 1 61C1849C
P 950 2100
F 0 "#PWR07" H 950 1950 50  0001 C CNN
F 1 "+3V3" V 1050 2150 50  0000 L CNN
F 2 "" H 950 2100 50  0001 C CNN
F 3 "" H 950 2100 50  0001 C CNN
	1    950  2100
	0    -1   -1   0   
$EndComp
Connection ~ 950  2100
Text Label 2000 900  0    50   ~ 0
PA3
Text Label 2000 1200 0    50   ~ 0
PA4
Text Label 2000 1500 0    50   ~ 0
PA5
Text Label 2000 1800 0    50   ~ 0
PA6
Text Label 2000 2100 0    50   ~ 0
PA7
Text Label 1550 900  0    50   ~ 0
NUM_LK
Text Label 1550 1200 0    50   ~ 0
SCR_LK
Text Label 1550 1500 0    50   ~ 0
COMPOSE
Text Label 1550 1800 0    50   ~ 0
CAPSLK
Text Label 1550 2100 0    50   ~ 0
KANA
Wire Wire Line
	1450 900  2000 900 
Wire Wire Line
	1450 1200 2000 1200
Wire Wire Line
	1450 1500 2000 1500
Wire Wire Line
	1450 1800 2000 1800
Wire Wire Line
	1450 2100 2000 2100
$EndSCHEMATC