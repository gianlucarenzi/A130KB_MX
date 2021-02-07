EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Keyboard PCB Adapter for Cherry MX"
Date "2021-02-07"
Rev "2.0"
Comp "RetroBitLab Tech Guy"
Comment1 "Adapter PCB for 24 pin flat single line 2.54 connector"
Comment2 "Using FPC https://www.mouser.it/datasheet/2/276/0151680400_CABLE-696312.pdf"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x24 J1
U 1 1 5F832F4F
P 2700 4200
F 0 "J1" H 2620 2775 50  0000 C CNN
F 1 "Conn_01x24" H 2620 2866 50  0000 C CNN
F 2 "RetroBitLab:ATARI_XE_KEYBOARD_CONN_01x24_2.54mm" H 2700 4200 50  0001 C CNN
F 3 "~" H 2700 4200 50  0001 C CNN
	1    2700 4200
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
Text GLabel 3350 5200 2    39   Input ~ 0
J_LED
Text GLabel 3350 5000 2    39   Input ~ 0
IN_6
Text GLabel 3350 4900 2    39   Input ~ 0
OUT_3
Text GLabel 3350 4800 2    39   Input ~ 0
OUT_5
Text GLabel 3350 4700 2    39   Input ~ 0
OUT_7
Text GLabel 3350 4600 2    39   Input ~ 0
IN_2
Text GLabel 3350 4500 2    39   Input ~ 0
IN_7
Text GLabel 3350 4400 2    39   Input ~ 0
IN_5
Text GLabel 3350 4300 2    39   Input ~ 0
IN_1
Text GLabel 3350 4200 2    39   Input ~ 0
OUT_6
Text GLabel 3350 4100 2    39   Input ~ 0
OUT_1
Text GLabel 3350 4000 2    39   Input ~ 0
OUT_4
Text GLabel 3350 3900 2    39   Input ~ 0
OUT_2
Text GLabel 3350 3800 2    39   Input ~ 0
IN_3
Text GLabel 3350 3700 2    39   Input ~ 0
IN_0
Wire Wire Line
	2900 5000 3350 5000
Wire Wire Line
	2900 4900 3350 4900
Wire Wire Line
	2900 4800 3350 4800
Wire Wire Line
	2900 4700 3350 4700
Wire Wire Line
	2900 4600 3350 4600
Wire Wire Line
	2900 4500 3350 4500
Wire Wire Line
	2900 4400 3350 4400
Wire Wire Line
	2900 4300 3350 4300
Wire Wire Line
	2900 4200 3350 4200
Wire Wire Line
	2900 4100 3350 4100
Wire Wire Line
	2900 4000 3350 4000
Wire Wire Line
	2900 3900 3350 3900
Wire Wire Line
	2900 3800 3350 3800
Wire Wire Line
	2900 3700 3350 3700
Text GLabel 3400 3600 2    39   Input ~ 0
OUT_0
Text GLabel 3400 3500 2    39   Input ~ 0
IN_4
Text GLabel 3400 3400 2    39   Input ~ 0
RSC
Text GLabel 3400 3300 2    39   Input ~ 0
START
Text GLabel 3400 3200 2    39   Input ~ 0
SELECT
Text GLabel 3400 3100 2    39   Input ~ 0
OPTION
Text GLabel 3400 3000 2    39   Input ~ 0
RESET
Wire Wire Line
	2900 3600 3400 3600
Wire Wire Line
	3400 3500 2900 3500
Wire Wire Line
	2900 3400 3400 3400
Wire Wire Line
	2900 3300 3400 3300
Wire Wire Line
	2900 3200 3400 3200
Wire Wire Line
	3400 3100 2900 3100
Wire Wire Line
	3400 3000 2900 3000
Wire Wire Line
	2900 5200 3350 5200
Text GLabel 3350 5100 2    39   Input ~ 0
GND
Wire Wire Line
	2900 5100 3350 5100
Text GLabel 3350 5300 2    39   Input ~ 0
VCC
Wire Wire Line
	2900 5300 3350 5300
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
KEEP THE PCB AS SMALL AS POSSIBLE. PCB Thickness 0.6
Text GLabel 7550 5200 2    39   Input ~ 0
J_LED
Text GLabel 7550 5000 2    39   Input ~ 0
IN_6
Text GLabel 7550 4900 2    39   Input ~ 0
OUT_3
Text GLabel 7550 4800 2    39   Input ~ 0
OUT_5
Text GLabel 7550 4700 2    39   Input ~ 0
OUT_7
Text GLabel 7550 4600 2    39   Input ~ 0
IN_2
Text GLabel 7550 4500 2    39   Input ~ 0
IN_7
Text GLabel 7550 4400 2    39   Input ~ 0
IN_5
Text GLabel 7550 4300 2    39   Input ~ 0
IN_1
Text GLabel 7550 4200 2    39   Input ~ 0
OUT_6
Text GLabel 7550 4100 2    39   Input ~ 0
OUT_1
Text GLabel 7550 4000 2    39   Input ~ 0
OUT_4
Text GLabel 7550 3900 2    39   Input ~ 0
OUT_2
Text GLabel 7550 3800 2    39   Input ~ 0
IN_3
Text GLabel 7550 3700 2    39   Input ~ 0
IN_0
Wire Wire Line
	7100 5000 7550 5000
Wire Wire Line
	7100 4900 7550 4900
Wire Wire Line
	7100 4800 7550 4800
Wire Wire Line
	7100 4700 7550 4700
Wire Wire Line
	7100 4600 7550 4600
Wire Wire Line
	7100 4500 7550 4500
Wire Wire Line
	7100 4400 7550 4400
Wire Wire Line
	7100 4300 7550 4300
Wire Wire Line
	7100 4200 7550 4200
Wire Wire Line
	7100 4100 7550 4100
Wire Wire Line
	7100 4000 7550 4000
Wire Wire Line
	7100 3900 7550 3900
Wire Wire Line
	7100 3800 7550 3800
Wire Wire Line
	7100 3700 7550 3700
Text GLabel 7600 3600 2    39   Input ~ 0
OUT_0
Text GLabel 7600 3500 2    39   Input ~ 0
IN_4
Text GLabel 7600 3400 2    39   Input ~ 0
RSC
Text GLabel 7600 3300 2    39   Input ~ 0
START
Text GLabel 7600 3200 2    39   Input ~ 0
SELECT
Text GLabel 7600 3100 2    39   Input ~ 0
OPTION
Text GLabel 7600 3000 2    39   Input ~ 0
RESET
Wire Wire Line
	7100 3600 7600 3600
Wire Wire Line
	7600 3500 7100 3500
Wire Wire Line
	7100 3400 7600 3400
Wire Wire Line
	7100 3300 7600 3300
Wire Wire Line
	7100 3200 7600 3200
Wire Wire Line
	7600 3100 7100 3100
Wire Wire Line
	7600 3000 7100 3000
Wire Wire Line
	7100 5200 7550 5200
Text GLabel 7550 5100 2    39   Input ~ 0
GND
Wire Wire Line
	7100 5100 7550 5100
Text GLabel 7550 5300 2    39   Input ~ 0
VCC
Wire Wire Line
	7100 5300 7550 5300
$Comp
L Connector_Generic:Conn_01x32 J2
U 1 1 601FF20D
P 6900 3800
F 0 "J2" H 6800 1950 50  0000 C CNN
F 1 "Conn_01x32" H 6800 2050 50  0000 C CNN
F 2 "RetroBitLab:FFC-1.25mm-RA-5204403245" H 6900 3800 50  0001 C CNN
F 3 "~" H 6900 3800 50  0001 C CNN
	1    6900 3800
	-1   0    0    1   
$EndComp
NoConn ~ 7100 2900
NoConn ~ 7100 2800
NoConn ~ 7100 2700
NoConn ~ 7100 2600
NoConn ~ 7100 2500
NoConn ~ 7100 2400
NoConn ~ 7100 2300
NoConn ~ 7100 2200
$EndSCHEMATC
