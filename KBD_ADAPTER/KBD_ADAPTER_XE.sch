EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Keyboard PCB Adapter for Cherry MX"
Date "2020-10-11"
Rev "1.0"
Comp "RetroBitLab Tech Guy"
Comment1 "Adapter PCB for 24 pin flat single line 2.54 connector"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x24 J1
U 1 1 5F832F4F
P 2900 4300
F 0 "J1" H 2820 2875 50  0000 C CNN
F 1 "Conn_01x24" H 2820 2966 50  0000 C CNN
F 2 "RetroBitLab:ATARI_XE_KEYBOARD_CONN_01x24_2.54mm" H 2900 4300 50  0001 C CNN
F 3 "~" H 2900 4300 50  0001 C CNN
	1    2900 4300
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x17_Counter_Clockwise J2
U 1 1 5F83385D
P 7800 4200
F 0 "J2" H 7850 3175 50  0000 C CNN
F 1 "Conn_02x17_Counter_Clockwise" H 7850 3266 50  0000 C CNN
F 2 "RetroBitLab:IDC-Header_2x17_P2.54mm_Vertical_Lock" H 7800 4200 50  0001 C CNN
F 3 "~" H 7800 4200 50  0001 C CNN
	1    7800 4200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F833AF5
P 5900 4250
F 0 "#PWR0101" H 5900 4000 50  0001 C CNN
F 1 "GND" V 5905 4122 50  0000 R CNN
F 2 "" H 5900 4250 50  0001 C CNN
F 3 "" H 5900 4250 50  0001 C CNN
	1    5900 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5F833B2A
P 5200 4250
F 0 "#PWR0102" H 5200 4100 50  0001 C CNN
F 1 "+5V" V 5215 4378 50  0000 L CNN
F 2 "" H 5200 4250 50  0001 C CNN
F 3 "" H 5200 4250 50  0001 C CNN
	1    5200 4250
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F833CC0
P 5100 4250
F 0 "#FLG0101" H 5100 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 5100 4423 50  0000 C CNN
F 2 "" H 5100 4250 50  0001 C CNN
F 3 "~" H 5100 4250 50  0001 C CNN
	1    5100 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 4250 5100 4250
Connection ~ 5100 4250
Wire Wire Line
	5100 4250 5200 4250
Text GLabel 8450 4900 2    39   Input ~ 0
J_LED
Wire Wire Line
	8000 4900 8450 4900
Text GLabel 8450 4700 2    39   Input ~ 0
IN_6
Text GLabel 8450 4600 2    39   Input ~ 0
OUT_3
Text GLabel 8450 4500 2    39   Input ~ 0
OUT_5
Text GLabel 8450 4400 2    39   Input ~ 0
OUT_7
Text GLabel 8450 4300 2    39   Input ~ 0
IN_2
Text GLabel 8450 4200 2    39   Input ~ 0
IN_7
Text GLabel 8450 4100 2    39   Input ~ 0
IN_5
Text GLabel 8450 4000 2    39   Input ~ 0
IN_1
Text GLabel 8450 3900 2    39   Input ~ 0
OUT_6
Text GLabel 8450 3800 2    39   Input ~ 0
OUT_1
Text GLabel 8450 3700 2    39   Input ~ 0
OUT_4
Text GLabel 8450 3600 2    39   Input ~ 0
OUT_2
Text GLabel 8450 3500 2    39   Input ~ 0
IN_3
Text GLabel 8450 3400 2    39   Input ~ 0
IN_0
Text GLabel 7000 3400 0    39   Input ~ 0
OUT_0
Text GLabel 7000 3500 0    39   Input ~ 0
IN_4
Text GLabel 7000 3600 0    39   Input ~ 0
RSC
Text GLabel 7000 3700 0    39   Input ~ 0
START
Text GLabel 7000 3800 0    39   Input ~ 0
SELECT
Text GLabel 7000 3900 0    39   Input ~ 0
OPTION
Text GLabel 7000 4000 0    39   Input ~ 0
RESET
Wire Wire Line
	8000 4700 8450 4700
Wire Wire Line
	8000 4600 8450 4600
Wire Wire Line
	8000 4500 8450 4500
Wire Wire Line
	8000 4400 8450 4400
Wire Wire Line
	8000 4300 8450 4300
Wire Wire Line
	8000 4200 8450 4200
Wire Wire Line
	8000 4100 8450 4100
Wire Wire Line
	8000 4000 8450 4000
Wire Wire Line
	8000 3900 8450 3900
Wire Wire Line
	8000 3800 8450 3800
Wire Wire Line
	8000 3700 8450 3700
Wire Wire Line
	8000 3600 8450 3600
Wire Wire Line
	8000 3500 8450 3500
Wire Wire Line
	8000 3400 8450 3400
Wire Wire Line
	7500 3400 7000 3400
Wire Wire Line
	7000 3500 7500 3500
Wire Wire Line
	7500 3600 7000 3600
Wire Wire Line
	7500 3700 7000 3700
Wire Wire Line
	7500 3800 7000 3800
Wire Wire Line
	7000 3900 7500 3900
Wire Wire Line
	7000 4000 7500 4000
NoConn ~ 7500 5000
NoConn ~ 7500 4900
NoConn ~ 7500 4800
NoConn ~ 7500 4700
NoConn ~ 7500 4600
NoConn ~ 7500 4500
NoConn ~ 7500 4400
NoConn ~ 7500 4300
NoConn ~ 7500 4200
NoConn ~ 7500 4100
Text GLabel 3550 5300 2    39   Input ~ 0
J_LED
Text GLabel 3550 5100 2    39   Input ~ 0
IN_6
Text GLabel 3550 5000 2    39   Input ~ 0
OUT_3
Text GLabel 3550 4900 2    39   Input ~ 0
OUT_5
Text GLabel 3550 4800 2    39   Input ~ 0
OUT_7
Text GLabel 3550 4700 2    39   Input ~ 0
IN_2
Text GLabel 3550 4600 2    39   Input ~ 0
IN_7
Text GLabel 3550 4500 2    39   Input ~ 0
IN_5
Text GLabel 3550 4400 2    39   Input ~ 0
IN_1
Text GLabel 3550 4300 2    39   Input ~ 0
OUT_6
Text GLabel 3550 4200 2    39   Input ~ 0
OUT_1
Text GLabel 3550 4100 2    39   Input ~ 0
OUT_4
Text GLabel 3550 4000 2    39   Input ~ 0
OUT_2
Text GLabel 3550 3900 2    39   Input ~ 0
IN_3
Text GLabel 3550 3800 2    39   Input ~ 0
IN_0
Wire Wire Line
	3100 5100 3550 5100
Wire Wire Line
	3100 5000 3550 5000
Wire Wire Line
	3100 4900 3550 4900
Wire Wire Line
	3100 4800 3550 4800
Wire Wire Line
	3100 4700 3550 4700
Wire Wire Line
	3100 4600 3550 4600
Wire Wire Line
	3100 4500 3550 4500
Wire Wire Line
	3100 4400 3550 4400
Wire Wire Line
	3100 4300 3550 4300
Wire Wire Line
	3100 4200 3550 4200
Wire Wire Line
	3100 4100 3550 4100
Wire Wire Line
	3100 4000 3550 4000
Wire Wire Line
	3100 3900 3550 3900
Wire Wire Line
	3100 3800 3550 3800
Text GLabel 3600 3700 2    39   Input ~ 0
OUT_0
Text GLabel 3600 3600 2    39   Input ~ 0
IN_4
Text GLabel 3600 3500 2    39   Input ~ 0
RSC
Text GLabel 3600 3400 2    39   Input ~ 0
START
Text GLabel 3600 3300 2    39   Input ~ 0
SELECT
Text GLabel 3600 3200 2    39   Input ~ 0
OPTION
Text GLabel 3600 3100 2    39   Input ~ 0
RESET
Wire Wire Line
	3100 3700 3600 3700
Wire Wire Line
	3600 3600 3100 3600
Wire Wire Line
	3100 3500 3600 3500
Wire Wire Line
	3100 3400 3600 3400
Wire Wire Line
	3100 3300 3600 3300
Wire Wire Line
	3600 3200 3100 3200
Wire Wire Line
	3600 3100 3100 3100
Wire Wire Line
	3100 5300 3550 5300
Text GLabel 3550 5200 2    39   Input ~ 0
GND
Wire Wire Line
	3100 5200 3550 5200
Text GLabel 3550 5400 2    39   Input ~ 0
VCC
Wire Wire Line
	3100 5400 3550 5400
Text GLabel 8450 5000 2    39   Input ~ 0
VCC
Text GLabel 8450 4800 2    39   Input ~ 0
GND
Wire Wire Line
	8000 4800 8450 4800
Wire Wire Line
	8450 5000 8000 5000
Text GLabel 5750 4250 0    39   Input ~ 0
GND
Text GLabel 4800 4250 0    39   Input ~ 0
VCC
Wire Wire Line
	5750 4250 5850 4250
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F852EF9
P 5850 4250
F 0 "#FLG0102" H 5850 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 4423 50  0000 C CNN
F 2 "" H 5850 4250 50  0001 C CNN
F 3 "~" H 5850 4250 50  0001 C CNN
	1    5850 4250
	-1   0    0    1   
$EndComp
Connection ~ 5850 4250
Wire Wire Line
	5850 4250 5900 4250
Text Notes 2200 6150 0    157  ~ 31
KEEP THE PCB AS SMALL AS POSSIBLE. PCB Thickness 0.8
$EndSCHEMATC
