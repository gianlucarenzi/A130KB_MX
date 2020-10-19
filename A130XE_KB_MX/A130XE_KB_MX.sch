EESchema Schematic File Version 4
LIBS:A130XE_KB_MX-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "ATARI XE KEYBOARD PCB "
Date "2020-10-10"
Rev "0.1"
Comp "RetroBitLab Tech Guy"
Comment1 "A PCB KEYBOARD AS DROP IN REPLACEMENT"
Comment2 "FOR ANY ATARI XE LINE OF COMPUTERS"
Comment3 "CHERRY MX BASED"
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x17_Counter_Clockwise J1
U 1 1 5F820B28
P 13100 8050
F 0 "J1" H 13150 7025 50  0000 C CNN
F 1 "34 pin RIBBON KEYBOARD CABLE" H 13150 7116 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x17_P2.54mm_Vertical" H 13100 8050 50  0001 C CNN
F 3 "~" H 13100 8050 50  0001 C CNN
	1    13100 8050
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5F820CC2
P 13550 8850
F 0 "#PWR03" H 13550 8700 50  0001 C CNN
F 1 "+5V" V 13565 8978 50  0000 L CNN
F 2 "" H 13550 8850 50  0001 C CNN
F 3 "" H 13550 8850 50  0001 C CNN
	1    13550 8850
	0    1    1    0   
$EndComp
Wire Wire Line
	13300 8850 13450 8850
$Comp
L Device:LED_Small D1
U 1 1 5F820D36
P 14200 8600
F 0 "D1" V 14154 8698 50  0000 L CNN
F 1 "LED_Small" V 14245 8698 50  0000 L CNN
F 2 "LED_SMD:LED_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 14200 8600 50  0001 C CNN
F 3 "~" V 14200 8600 50  0001 C CNN
	1    14200 8600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F820EDC
P 14200 8500
F 0 "#PWR05" H 14200 8250 50  0001 C CNN
F 1 "GND" H 14205 8327 50  0000 C CNN
F 2 "" H 14200 8500 50  0001 C CNN
F 3 "" H 14200 8500 50  0001 C CNN
	1    14200 8500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F820F2B
P 13600 8650
F 0 "#PWR04" H 13600 8400 50  0001 C CNN
F 1 "GND" V 13605 8522 50  0000 R CNN
F 2 "" H 13600 8650 50  0001 C CNN
F 3 "" H 13600 8650 50  0001 C CNN
	1    13600 8650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13300 8750 14200 8750
Text GLabel 13850 8550 2    39   Output ~ 0
IN_6
Text GLabel 13850 8150 2    39   Output ~ 0
IN_2
Text GLabel 13850 8050 2    39   Output ~ 0
IN_7
Text GLabel 13850 7950 2    39   Output ~ 0
IN_5
Text GLabel 13850 7850 2    39   Output ~ 0
IN_1
Wire Wire Line
	13300 8150 13850 8150
Wire Wire Line
	13850 8050 13300 8050
Wire Wire Line
	13300 7950 13850 7950
Wire Wire Line
	13850 7850 13300 7850
Text GLabel 13850 7350 2    39   Output ~ 0
IN_3
Text GLabel 13850 7250 2    39   Output ~ 0
IN_0
Text GLabel 12550 7350 0    39   Output ~ 0
IN_4
Text GLabel 12550 7450 0    39   Output ~ 0
RSC
Text GLabel 12550 7550 0    39   Output ~ 0
START
Text GLabel 12550 7650 0    39   Output ~ 0
SELECT
Text GLabel 12550 7750 0    39   Output ~ 0
OPTION
Text GLabel 12550 7850 0    39   Output ~ 0
RESET
NoConn ~ 12800 7950
NoConn ~ 12800 8050
NoConn ~ 12800 8150
NoConn ~ 12800 8250
NoConn ~ 12800 8350
NoConn ~ 12800 8450
NoConn ~ 12800 8550
NoConn ~ 12800 8650
NoConn ~ 12800 8750
NoConn ~ 12800 8850
Wire Wire Line
	12550 7850 12800 7850
Wire Wire Line
	12800 7750 12550 7750
Wire Wire Line
	12550 7650 12800 7650
Wire Wire Line
	12800 7550 12550 7550
Wire Wire Line
	12550 7450 12800 7450
Wire Wire Line
	12800 7350 12550 7350
Wire Wire Line
	13850 7250 13300 7250
Wire Wire Line
	13300 7350 13850 7350
Wire Wire Line
	13850 8550 13300 8550
Text GLabel 13850 8450 2    39   Input ~ 0
OUT_3
Text GLabel 13850 8350 2    39   Input ~ 0
OUT_5
Text GLabel 13850 8250 2    39   Input ~ 0
OUT_7
Text GLabel 13850 7750 2    39   Input ~ 0
OUT_6
Text GLabel 13850 7650 2    39   Input ~ 0
OUT_1
Text GLabel 13850 7550 2    39   Input ~ 0
OUT_4
Text GLabel 13850 7450 2    39   Input ~ 0
OUT_2
Text GLabel 12550 7250 0    39   Input ~ 0
OUT_0
Wire Wire Line
	12550 7250 12800 7250
Wire Wire Line
	13300 7450 13850 7450
Wire Wire Line
	13850 7550 13300 7550
Wire Wire Line
	13300 7650 13850 7650
Wire Wire Line
	13850 7750 13300 7750
Wire Wire Line
	13300 8250 13850 8250
Wire Wire Line
	13850 8350 13300 8350
Wire Wire Line
	13300 8450 13850 8450
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F824854
P 14200 8750
F 0 "#FLG02" H 14200 8825 50  0001 C CNN
F 1 "PWR_FLAG" H 14200 8923 50  0000 C CNN
F 2 "" H 14200 8750 50  0001 C CNN
F 3 "~" H 14200 8750 50  0001 C CNN
	1    14200 8750
	-1   0    0    1   
$EndComp
Connection ~ 14200 8750
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F824885
P 13450 8850
F 0 "#FLG01" H 13450 8925 50  0001 C CNN
F 1 "PWR_FLAG" H 13450 9023 50  0000 C CNN
F 2 "" H 13450 8850 50  0001 C CNN
F 3 "~" H 13450 8850 50  0001 C CNN
	1    13450 8850
	-1   0    0    1   
$EndComp
Wire Wire Line
	13450 8850 13550 8850
Connection ~ 13450 8850
Text GLabel 2650 10050 2    39   Output ~ 0
IN_6
Text GLabel 3550 10050 2    39   Output ~ 0
IN_2
Text GLabel 4400 10050 2    39   Output ~ 0
IN_7
Text GLabel 5250 10050 2    39   Output ~ 0
IN_5
Text GLabel 6200 10050 2    39   Output ~ 0
IN_1
Text GLabel 7150 10050 2    39   Output ~ 0
IN_0
Text GLabel 1750 8550 0    39   Input ~ 0
OUT_3
Text GLabel 1750 10050 0    39   Input ~ 0
OUT_5
Text GLabel 2650 8550 2    39   Output ~ 0
IN_4
Text GLabel 8300 9650 2    39   Output ~ 0
RSC
Text GLabel 12250 3150 0    39   Output ~ 0
SELECT
Text GLabel 10450 3150 0    39   Output ~ 0
RESET
Text GLabel 1750 7450 0    39   Input ~ 0
OUT_0
$Comp
L power:GND #PWR02
U 1 1 5F826B7B
P 13850 3600
F 0 "#PWR02" H 13850 3350 50  0001 C CNN
F 1 "GND" H 13855 3427 50  0000 C CNN
F 2 "" H 13850 3600 50  0001 C CNN
F 3 "" H 13850 3600 50  0001 C CNN
	1    13850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F826BB2
P 10200 3600
F 0 "#PWR01" H 10200 3350 50  0001 C CNN
F 1 "GND" H 10205 3427 50  0000 C CNN
F 2 "" H 10200 3600 50  0001 C CNN
F 3 "" H 10200 3600 50  0001 C CNN
	1    10200 3600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F826BF3
P 10700 3150
F 0 "SW1" H 10700 3435 50  0000 C CNN
F 1 "KS_RESET" H 10700 3344 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 10700 3350 50  0001 C CNN
F 3 "" H 10700 3350 50  0001 C CNN
	1    10700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3150 10500 3150
Wire Wire Line
	10900 3150 10900 3500
Connection ~ 10900 3500
Wire Wire Line
	10900 3500 11800 3500
Text GLabel 11350 3150 0    39   Output ~ 0
OPTION
$Comp
L Switch:SW_Push SW9
U 1 1 5F827A91
P 11600 3150
F 0 "SW9" H 11600 3435 50  0000 C CNN
F 1 "KS_OPTION" H 11600 3344 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 11600 3350 50  0001 C CNN
F 3 "" H 11600 3350 50  0001 C CNN
	1    11600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 3150 11800 3500
Connection ~ 11800 3500
Wire Wire Line
	11800 3500 12700 3500
Wire Wire Line
	11400 3150 11350 3150
$Comp
L Switch:SW_Push SW17
U 1 1 5F828CB1
P 12500 3150
F 0 "SW17" H 12500 3435 50  0000 C CNN
F 1 "KS_SELECT" H 12500 3344 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 12500 3350 50  0001 C CNN
F 3 "" H 12500 3350 50  0001 C CNN
	1    12500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 3150 12700 3500
Connection ~ 12700 3500
Wire Wire Line
	12700 3500 13550 3500
Wire Wire Line
	12300 3150 12250 3150
Text GLabel 13100 3150 0    39   Output ~ 0
START
$Comp
L Switch:SW_Push SW29
U 1 1 5F829FC7
P 13350 3150
F 0 "SW29" H 13350 3435 50  0000 C CNN
F 1 "KS_START" H 13350 3344 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 13350 3350 50  0001 C CNN
F 3 "" H 13350 3350 50  0001 C CNN
	1    13350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 3150 13550 3500
Wire Wire Line
	13150 3150 13100 3150
Text Notes 10850 3650 0    50   ~ 0
3
Text Notes 11750 3650 0    50   ~ 0
3
Text Notes 12650 3650 0    50   ~ 0
3
Text Notes 13500 3650 0    50   ~ 0
3
Text Notes 10100 3150 0    50   ~ 0
24
Text Notes 10950 3150 0    50   ~ 0
23
Text Notes 11850 3150 0    50   ~ 0
22
Text Notes 12750 3150 0    50   ~ 0
21
$Comp
L Switch:SW_Push SW7
U 1 1 5F82B67D
P 2450 10050
F 0 "SW7" H 2450 10335 50  0000 C CNN
F 1 "KS_HELP" H 2450 10244 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 2450 10250 50  0001 C CNN
F 3 "" H 2450 10250 50  0001 C CNN
	1    2450 10050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW15
U 1 1 5F82B76B
P 3350 10050
F 0 "SW15" H 3350 10335 50  0000 C CNN
F 1 "K_B" H 3350 10244 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3350 10250 50  0001 C CNN
F 3 "" H 3350 10250 50  0001 C CNN
	1    3350 10050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW23
U 1 1 5F82BA83
P 4200 10050
F 0 "SW23" H 4200 10335 50  0000 C CNN
F 1 "K_V" H 4200 10244 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4200 10250 50  0001 C CNN
F 3 "" H 4200 10250 50  0001 C CNN
	1    4200 10050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW32
U 1 1 5F82BB01
P 5050 10050
F 0 "SW32" H 5050 10335 50  0000 C CNN
F 1 "K_C" H 5050 10244 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5050 10250 50  0001 C CNN
F 3 "" H 5050 10250 50  0001 C CNN
	1    5050 10050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW38
U 1 1 5F82BEA1
P 6000 10050
F 0 "SW38" H 6000 10335 50  0000 C CNN
F 1 "K_X" H 6000 10244 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6000 10250 50  0001 C CNN
F 3 "" H 6000 10250 50  0001 C CNN
	1    6000 10050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW46
U 1 1 5F82BEF1
P 6950 10050
F 0 "SW46" H 6950 10335 50  0000 C CNN
F 1 "K_Z" H 6950 10244 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6950 10250 50  0001 C CNN
F 3 "" H 6950 10250 50  0001 C CNN
	1    6950 10050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW54
U 1 1 5F82BF41
P 7850 10050
F 0 "SW54" H 7850 10335 50  0000 C CNN
F 1 "K_RSHIFT" H 7850 10244 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.75u_PCB" H 7850 10250 50  0001 C CNN
F 3 "" H 7850 10250 50  0001 C CNN
	1    7850 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 10050 2150 10050
Wire Wire Line
	2150 10050 2150 9650
Wire Wire Line
	2150 9650 3000 9650
Wire Wire Line
	3000 9650 3000 10050
Wire Wire Line
	3000 10050 3150 10050
Connection ~ 2150 10050
Wire Wire Line
	2150 10050 2250 10050
Wire Wire Line
	3000 9650 3850 9650
Wire Wire Line
	3850 9650 3850 10050
Wire Wire Line
	3850 10050 4000 10050
Connection ~ 3000 9650
Wire Wire Line
	3850 9650 4700 9650
Wire Wire Line
	4700 9650 4700 10050
Wire Wire Line
	4700 10050 4850 10050
Connection ~ 3850 9650
Wire Wire Line
	4700 9650 5600 9650
Wire Wire Line
	5600 9650 5600 10050
Wire Wire Line
	5600 10050 5800 10050
Connection ~ 4700 9650
Wire Wire Line
	5600 9650 6550 9650
Wire Wire Line
	6550 9650 6550 10050
Wire Wire Line
	6550 10050 6750 10050
Connection ~ 5600 9650
Wire Wire Line
	6550 9650 7450 9650
Wire Wire Line
	7450 9650 7450 10050
Wire Wire Line
	7450 10050 7650 10050
Connection ~ 6550 9650
$Comp
L Switch:SW_Push SW53
U 1 1 5F8350A4
P 7850 9650
F 0 "SW53" H 7850 9935 50  0000 C CNN
F 1 "K_LSHIFT" H 7850 9844 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_2.25u_PCB" H 7850 9850 50  0001 C CNN
F 3 "" H 7850 9850 50  0001 C CNN
	1    7850 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 10050 8200 10050
$Comp
L Switch:SW_Push SW6
U 1 1 5F839F17
P 2450 8550
F 0 "SW6" H 2450 8835 50  0000 C CNN
F 1 "K_N" H 2450 8744 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 2450 8750 50  0001 C CNN
F 3 "" H 2450 8750 50  0001 C CNN
	1    2450 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 8550 2100 8550
$Comp
L Switch:SW_Push SW14
U 1 1 5F83BBB3
P 3350 8550
F 0 "SW14" H 3350 8835 50  0000 C CNN
F 1 "K_SPACE" H 3350 8744 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_6.25u_PCB" H 3350 8750 50  0001 C CNN
F 3 "" H 3350 8750 50  0001 C CNN
	1    3350 8550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW22
U 1 1 5F83BC1B
P 4200 8550
F 0 "SW22" H 4200 8835 50  0000 C CNN
F 1 "K_M" H 4200 8744 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4200 8750 50  0001 C CNN
F 3 "" H 4200 8750 50  0001 C CNN
	1    4200 8550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW30
U 1 1 5F83BC8B
P 5000 8550
F 0 "SW30" H 5000 8835 50  0000 C CNN
F 1 "K_comma" H 5000 8744 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5000 8750 50  0001 C CNN
F 3 "" H 5000 8750 50  0001 C CNN
	1    5000 8550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW33
U 1 1 5F83BCF9
P 5800 8550
F 0 "SW33" H 5800 8835 50  0000 C CNN
F 1 "K_dot" H 5800 8744 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5800 8750 50  0001 C CNN
F 3 "" H 5800 8750 50  0001 C CNN
	1    5800 8550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW44
U 1 1 5F83C6C9
P 6800 8550
F 0 "SW44" H 6800 8835 50  0000 C CNN
F 1 "K_slash" H 6800 8744 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6800 8750 50  0001 C CNN
F 3 "" H 6800 8750 50  0001 C CNN
	1    6800 8550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW47
U 1 1 5F83C741
P 7650 8550
F 0 "SW47" H 7650 8835 50  0000 C CNN
F 1 "K_ATARI" H 7650 8744 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7650 8750 50  0001 C CNN
F 3 "" H 7650 8750 50  0001 C CNN
	1    7650 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 8550 2100 8100
Wire Wire Line
	2100 8100 3000 8100
Wire Wire Line
	3000 8100 3000 8550
Wire Wire Line
	3000 8550 3150 8550
Connection ~ 2100 8550
Wire Wire Line
	2100 8550 2250 8550
Wire Wire Line
	3000 8100 3800 8100
Wire Wire Line
	3800 8100 3800 8550
Wire Wire Line
	3800 8550 4000 8550
Connection ~ 3000 8100
Wire Wire Line
	3800 8100 4600 8100
Wire Wire Line
	4600 8100 4600 8550
Wire Wire Line
	4600 8550 4800 8550
Connection ~ 3800 8100
Wire Wire Line
	4600 8100 5450 8100
Wire Wire Line
	5450 8100 5450 8550
Wire Wire Line
	5450 8550 5600 8550
Connection ~ 4600 8100
Wire Wire Line
	5450 8100 6350 8100
Wire Wire Line
	6350 8100 6350 8550
Wire Wire Line
	6350 8550 6600 8550
Connection ~ 5450 8100
Wire Wire Line
	6350 8100 7250 8100
Wire Wire Line
	7250 8100 7250 8550
Wire Wire Line
	7250 8550 7450 8550
Connection ~ 6350 8100
Text GLabel 3600 8550 2    39   Output ~ 0
IN_6
Text GLabel 4400 8550 2    39   Output ~ 0
IN_2
Text GLabel 5200 8550 2    39   Output ~ 0
IN_7
Text GLabel 6000 8550 2    39   Output ~ 0
IN_5
Text GLabel 7000 8550 2    39   Output ~ 0
IN_1
Text GLabel 7850 8550 2    39   Output ~ 0
IN_0
Wire Wire Line
	1750 7450 2100 7450
$Comp
L Switch:SW_Push SW5
U 1 1 5F84F756
P 2450 7450
F 0 "SW5" H 2450 7735 50  0000 C CNN
F 1 "K_H" H 2450 7644 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 2450 7650 50  0001 C CNN
F 3 "" H 2450 7650 50  0001 C CNN
	1    2450 7450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW13
U 1 1 5F84F75C
P 3300 7450
F 0 "SW13" H 3300 7735 50  0000 C CNN
F 1 "K_G" H 3300 7644 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3300 7650 50  0001 C CNN
F 3 "" H 3300 7650 50  0001 C CNN
	1    3300 7450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW21
U 1 1 5F84F762
P 4100 7450
F 0 "SW21" H 4100 7735 50  0000 C CNN
F 1 "K_F" H 4100 7644 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4100 7650 50  0001 C CNN
F 3 "" H 4100 7650 50  0001 C CNN
	1    4100 7450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW28
U 1 1 5F84F768
P 4900 7450
F 0 "SW28" H 4900 7735 50  0000 C CNN
F 1 "K_D" H 4900 7644 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4900 7650 50  0001 C CNN
F 3 "" H 4900 7650 50  0001 C CNN
	1    4900 7450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW37
U 1 1 5F84F76E
P 5900 7450
F 0 "SW37" H 5900 7735 50  0000 C CNN
F 1 "K_S" H 5900 7644 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5900 7650 50  0001 C CNN
F 3 "" H 5900 7650 50  0001 C CNN
	1    5900 7450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW43
U 1 1 5F84F774
P 6750 7450
F 0 "SW43" H 6750 7735 50  0000 C CNN
F 1 "K_A" H 6750 7644 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6750 7650 50  0001 C CNN
F 3 "" H 6750 7650 50  0001 C CNN
	1    6750 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7000 2100 7450
Wire Wire Line
	2100 7450 2250 7450
Wire Wire Line
	2100 7000 2900 7000
Wire Wire Line
	2900 7000 2900 7450
Wire Wire Line
	2900 7450 3100 7450
Wire Wire Line
	2900 7000 3700 7000
Wire Wire Line
	3700 7000 3700 7450
Wire Wire Line
	3700 7450 3900 7450
Connection ~ 2900 7000
Wire Wire Line
	3700 7000 4550 7000
Wire Wire Line
	4550 7000 4550 7450
Wire Wire Line
	4550 7450 4700 7450
Connection ~ 3700 7000
Wire Wire Line
	4550 7000 5450 7000
Wire Wire Line
	5450 7000 5450 7450
Wire Wire Line
	5450 7450 5700 7450
Connection ~ 4550 7000
Wire Wire Line
	5450 7000 6350 7000
Wire Wire Line
	6350 7000 6350 7450
Wire Wire Line
	6350 7450 6550 7450
Connection ~ 5450 7000
Text GLabel 2650 7450 2    39   Output ~ 0
IN_6
Text GLabel 3500 7450 2    39   Output ~ 0
IN_2
Text GLabel 4300 7450 2    39   Output ~ 0
IN_7
Text GLabel 5100 7450 2    39   Output ~ 0
IN_5
Text GLabel 6100 7450 2    39   Output ~ 0
IN_1
Text GLabel 6950 7450 2    39   Output ~ 0
IN_0
Connection ~ 2100 7450
$Comp
L Switch:SW_Push SW51
U 1 1 5F858EDE
P 7700 7450
F 0 "SW51" H 7700 7735 50  0000 C CNN
F 1 "K_CAPS" H 7700 7644 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.25u_PCB" H 7700 7650 50  0001 C CNN
F 3 "" H 7700 7650 50  0001 C CNN
	1    7700 7450
	1    0    0    -1  
$EndComp
Text GLabel 7900 7450 2    39   Output ~ 0
IN_3
Wire Wire Line
	6350 7000 7300 7000
Wire Wire Line
	7300 7000 7300 7450
Wire Wire Line
	7300 7450 7500 7450
Connection ~ 6350 7000
Text GLabel 1750 6250 0    39   Input ~ 0
OUT_7
$Comp
L Switch:SW_Push SW8
U 1 1 5F861A0D
P 2600 6250
F 0 "SW8" H 2600 6535 50  0000 C CNN
F 1 "K_J" H 2600 6444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 2600 6450 50  0001 C CNN
F 3 "" H 2600 6450 50  0001 C CNN
	1    2600 6250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW16
U 1 1 5F861A13
P 3450 6250
F 0 "SW16" H 3450 6535 50  0000 C CNN
F 1 "K_K" H 3450 6444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3450 6450 50  0001 C CNN
F 3 "" H 3450 6450 50  0001 C CNN
	1    3450 6250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW24
U 1 1 5F861A19
P 4250 6250
F 0 "SW24" H 4250 6535 50  0000 C CNN
F 1 "K_L" H 4250 6444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4250 6450 50  0001 C CNN
F 3 "" H 4250 6450 50  0001 C CNN
	1    4250 6250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW31
U 1 1 5F861A1F
P 5050 6250
F 0 "SW31" H 5050 6535 50  0000 C CNN
F 1 "K_comdot" H 5050 6444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5050 6450 50  0001 C CNN
F 3 "" H 5050 6450 50  0001 C CNN
	1    5050 6250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW39
U 1 1 5F861A25
P 6050 6250
F 0 "SW39" H 6050 6535 50  0000 C CNN
F 1 "K_plus" H 6050 6444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6050 6450 50  0001 C CNN
F 3 "" H 6050 6450 50  0001 C CNN
	1    6050 6250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW45
U 1 1 5F861A2B
P 6900 6250
F 0 "SW45" H 6900 6535 50  0000 C CNN
F 1 "K_asterisk" H 6900 6444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6900 6450 50  0001 C CNN
F 3 "" H 6900 6450 50  0001 C CNN
	1    6900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5800 2250 6250
Wire Wire Line
	2250 6250 2400 6250
Wire Wire Line
	2250 5800 3050 5800
Wire Wire Line
	3050 5800 3050 6250
Wire Wire Line
	3050 6250 3250 6250
Wire Wire Line
	3050 5800 3850 5800
Wire Wire Line
	3850 5800 3850 6250
Wire Wire Line
	3850 6250 4050 6250
Connection ~ 3050 5800
Wire Wire Line
	3850 5800 4700 5800
Wire Wire Line
	4700 5800 4700 6250
Wire Wire Line
	4700 6250 4850 6250
Connection ~ 3850 5800
Wire Wire Line
	4700 5800 5600 5800
Wire Wire Line
	5600 5800 5600 6250
Wire Wire Line
	5600 6250 5850 6250
Connection ~ 4700 5800
Wire Wire Line
	5600 5800 6500 5800
Wire Wire Line
	6500 5800 6500 6250
Wire Wire Line
	6500 6250 6700 6250
Connection ~ 5600 5800
Text GLabel 2800 6250 2    39   Output ~ 0
IN_6
Text GLabel 3650 6250 2    39   Output ~ 0
IN_2
Text GLabel 4450 6250 2    39   Output ~ 0
IN_7
Text GLabel 5250 6250 2    39   Output ~ 0
IN_5
Text GLabel 6250 6250 2    39   Output ~ 0
IN_1
Text GLabel 7100 6250 2    39   Output ~ 0
IN_0
Wire Wire Line
	13550 3500 13850 3500
Connection ~ 13550 3500
Wire Wire Line
	7450 9650 7650 9650
Connection ~ 7450 9650
Wire Wire Line
	8050 9650 8200 9650
Wire Wire Line
	8200 9650 8200 10050
Wire Wire Line
	8200 9650 8300 9650
Connection ~ 8200 9650
Text GLabel 1700 1800 0    39   Input ~ 0
OUT_1
$Comp
L Switch:SW_Push SW62
U 1 1 5F8BFA1E
P 2350 1800
F 0 "SW62" H 2450 2100 50  0000 R CNN
F 1 "K_7" H 2400 2000 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 2350 2000 50  0001 C CNN
F 3 "" H 2350 2000 50  0001 C CNN
	1    2350 1800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW61
U 1 1 5F8BFA24
P 3400 1800
F 0 "SW61" H 3500 2100 50  0000 R CNN
F 1 "K_8" H 3450 2000 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3400 2000 50  0001 C CNN
F 3 "" H 3400 2000 50  0001 C CNN
	1    3400 1800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW60
U 1 1 5F8BFA2A
P 4350 1800
F 0 "SW60" H 4450 2100 50  0000 R CNN
F 1 "K_9" H 4400 2000 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4350 2000 50  0001 C CNN
F 3 "" H 4350 2000 50  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW59
U 1 1 5F8BFA30
P 5350 1800
F 0 "SW59" H 5450 2100 50  0000 R CNN
F 1 "K_0" H 5400 2000 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5350 2000 50  0001 C CNN
F 3 "" H 5350 2000 50  0001 C CNN
	1    5350 1800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW58
U 1 1 5F8BFA36
P 6500 1800
F 0 "SW58" H 6600 2100 50  0000 R CNN
F 1 "K_LT" H 6550 2000 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6500 2000 50  0001 C CNN
F 3 "" H 6500 2000 50  0001 C CNN
	1    6500 1800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW57
U 1 1 5F8BFA3C
P 7500 1800
F 0 "SW57" H 7600 2100 50  0000 R CNN
F 1 "K_GT" H 7550 2000 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7500 2000 50  0001 C CNN
F 3 "" H 7500 2000 50  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
Text GLabel 2550 1800 2    39   Output ~ 0
IN_4
Text GLabel 3600 1800 2    39   Output ~ 0
IN_2
Text GLabel 4550 1800 2    39   Output ~ 0
IN_7
Text GLabel 5550 1800 2    39   Output ~ 0
IN_5
Text GLabel 6700 1800 2    39   Output ~ 0
IN_1
Text GLabel 7700 1800 2    39   Output ~ 0
IN_0
$Comp
L Switch:SW_Push SW56
U 1 1 5F8BFA5E
P 8550 1800
F 0 "SW56" H 8650 2100 50  0000 R CNN
F 1 "K_DEL" H 8650 2000 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 8550 2000 50  0001 C CNN
F 3 "" H 8550 2000 50  0001 C CNN
	1    8550 1800
	1    0    0    -1  
$EndComp
Text GLabel 8750 1800 2    39   Output ~ 0
IN_3
$Comp
L Switch:SW_Push SW55
U 1 1 5F9FD857
P 9750 1800
F 0 "SW55" H 9800 2100 50  0000 R CNN
F 1 "K_BRK" H 9850 2000 50  0000 R CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 9750 2000 50  0001 C CNN
F 3 "" H 9750 2000 50  0001 C CNN
	1    9750 1800
	1    0    0    -1  
$EndComp
Text GLabel 9950 1800 2    39   Output ~ 0
RSC
Wire Wire Line
	1750 6250 2250 6250
Connection ~ 2250 6250
$Comp
L Switch:SW_Push SW52
U 1 1 5FA2D87D
P 7750 6250
F 0 "SW52" H 7750 6535 50  0000 C CNN
F 1 "K_CTRL" H 7750 6444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.75u_PCB" H 7750 6450 50  0001 C CNN
F 3 "" H 7750 6450 50  0001 C CNN
	1    7750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5800 7400 5800
Wire Wire Line
	7400 5800 7400 6250
Wire Wire Line
	7400 6250 7550 6250
Connection ~ 6500 5800
Text GLabel 7950 6250 2    39   Output ~ 0
RSC
Wire Wire Line
	7250 5350 7450 5350
Wire Wire Line
	7250 4900 7250 5350
Wire Wire Line
	6300 4900 7250 4900
Text GLabel 7850 5350 2    39   Output ~ 0
IN_3
$Comp
L Switch:SW_Push SW50
U 1 1 5F861A92
P 7650 5350
F 0 "SW50" H 7650 5635 50  0000 C CNN
F 1 "K_TAB" H 7650 5544 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.50u_PCB" H 7650 5550 50  0001 C CNN
F 3 "" H 7650 5550 50  0001 C CNN
	1    7650 5350
	1    0    0    -1  
$EndComp
Text GLabel 6900 5350 2    39   Output ~ 0
IN_0
Text GLabel 6050 5350 2    39   Output ~ 0
IN_1
Text GLabel 5050 5350 2    39   Output ~ 0
IN_5
Text GLabel 4250 5350 2    39   Output ~ 0
IN_7
Text GLabel 3450 5350 2    39   Output ~ 0
IN_2
Text GLabel 2600 5350 2    39   Output ~ 0
IN_4
Wire Wire Line
	6300 5350 6500 5350
Wire Wire Line
	6300 4900 6300 5350
Connection ~ 6300 4900
Wire Wire Line
	5400 4900 6300 4900
Wire Wire Line
	5400 5350 5650 5350
Wire Wire Line
	5400 4900 5400 5350
Connection ~ 5400 4900
Wire Wire Line
	4500 4900 5400 4900
Wire Wire Line
	4500 5350 4650 5350
Wire Wire Line
	4500 4900 4500 5350
Connection ~ 4500 4900
Wire Wire Line
	3650 4900 4500 4900
Wire Wire Line
	3650 5350 3850 5350
Wire Wire Line
	3650 4900 3650 5350
Connection ~ 3650 4900
Wire Wire Line
	2850 4900 3650 4900
Wire Wire Line
	2850 5350 3050 5350
Wire Wire Line
	2850 4900 2850 5350
Connection ~ 2850 4900
Wire Wire Line
	2050 4900 2850 4900
Wire Wire Line
	2050 5350 2200 5350
Wire Wire Line
	2050 4900 2050 5350
$Comp
L Switch:SW_Push SW42
U 1 1 5F861A70
P 6700 5350
F 0 "SW42" H 6700 5635 50  0000 C CNN
F 1 "K_Q" H 6700 5544 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6700 5550 50  0001 C CNN
F 3 "" H 6700 5550 50  0001 C CNN
	1    6700 5350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW36
U 1 1 5F861A6A
P 5850 5350
F 0 "SW36" H 5850 5635 50  0000 C CNN
F 1 "K_W" H 5850 5544 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5850 5550 50  0001 C CNN
F 3 "" H 5850 5550 50  0001 C CNN
	1    5850 5350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW27
U 1 1 5F861A64
P 4850 5350
F 0 "SW27" H 4850 5635 50  0000 C CNN
F 1 "K_E" H 4850 5544 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4850 5550 50  0001 C CNN
F 3 "" H 4850 5550 50  0001 C CNN
	1    4850 5350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW20
U 1 1 5F861A5E
P 4050 5350
F 0 "SW20" H 4050 5635 50  0000 C CNN
F 1 "K_R" H 4050 5544 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4050 5550 50  0001 C CNN
F 3 "" H 4050 5550 50  0001 C CNN
	1    4050 5350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW12
U 1 1 5F861A58
P 3250 5350
F 0 "SW12" H 3250 5635 50  0000 C CNN
F 1 "K_T" H 3250 5544 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3250 5550 50  0001 C CNN
F 3 "" H 3250 5550 50  0001 C CNN
	1    3250 5350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5F861A52
P 2400 5350
F 0 "SW4" H 2400 5635 50  0000 C CNN
F 1 "K_Y" H 2400 5544 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 2400 5550 50  0001 C CNN
F 3 "" H 2400 5550 50  0001 C CNN
	1    2400 5350
	1    0    0    -1  
$EndComp
Connection ~ 2050 5350
Wire Wire Line
	1700 5350 2050 5350
Text GLabel 1700 5350 0    39   Input ~ 0
OUT_2
Wire Wire Line
	7250 4250 7450 4250
Wire Wire Line
	7250 3800 7250 4250
Wire Wire Line
	6300 3800 7250 3800
Text GLabel 7850 4250 2    39   Output ~ 0
IN_3
$Comp
L Switch:SW_Push SW49
U 1 1 5FA6DD93
P 7650 4250
F 0 "SW49" H 7650 4535 50  0000 C CNN
F 1 "K_RETURN" H 7650 4444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.50u_PCB" H 7650 4450 50  0001 C CNN
F 3 "" H 7650 4450 50  0001 C CNN
	1    7650 4250
	1    0    0    -1  
$EndComp
Text GLabel 6900 4250 2    39   Output ~ 0
IN_0
Text GLabel 6050 4250 2    39   Output ~ 0
IN_1
Text GLabel 5050 4250 2    39   Output ~ 0
IN_5
Text GLabel 4250 4250 2    39   Output ~ 0
IN_7
Text GLabel 3450 4250 2    39   Output ~ 0
IN_2
Text GLabel 2600 4250 2    39   Output ~ 0
IN_4
Wire Wire Line
	6300 4250 6500 4250
Wire Wire Line
	6300 3800 6300 4250
Connection ~ 6300 3800
Wire Wire Line
	5400 3800 6300 3800
Wire Wire Line
	5400 4250 5650 4250
Wire Wire Line
	5400 3800 5400 4250
Connection ~ 5400 3800
Wire Wire Line
	4500 3800 5400 3800
Wire Wire Line
	4500 4250 4650 4250
Wire Wire Line
	4500 3800 4500 4250
Connection ~ 4500 3800
Wire Wire Line
	3650 3800 4500 3800
Wire Wire Line
	3650 4250 3850 4250
Wire Wire Line
	3650 3800 3650 4250
Connection ~ 3650 3800
Wire Wire Line
	2850 3800 3650 3800
Wire Wire Line
	2850 4250 3050 4250
Wire Wire Line
	2850 3800 2850 4250
Connection ~ 2850 3800
Wire Wire Line
	2050 3800 2850 3800
Wire Wire Line
	2050 4250 2200 4250
Wire Wire Line
	2050 3800 2050 4250
$Comp
L Switch:SW_Push SW41
U 1 1 5FA6DDB5
P 6700 4250
F 0 "SW41" H 6700 4535 50  0000 C CNN
F 1 "K_equal" H 6700 4444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6700 4450 50  0001 C CNN
F 3 "" H 6700 4450 50  0001 C CNN
	1    6700 4250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW35
U 1 1 5FA6DDBB
P 5850 4250
F 0 "SW35" H 5850 4535 50  0000 C CNN
F 1 "K_minus" H 5850 4444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5850 4450 50  0001 C CNN
F 3 "" H 5850 4450 50  0001 C CNN
	1    5850 4250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW26
U 1 1 5FA6DDC1
P 4850 4250
F 0 "SW26" H 4850 4535 50  0000 C CNN
F 1 "K_P" H 4850 4444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4850 4450 50  0001 C CNN
F 3 "" H 4850 4450 50  0001 C CNN
	1    4850 4250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW19
U 1 1 5FA6DDC7
P 4050 4250
F 0 "SW19" H 4050 4535 50  0000 C CNN
F 1 "K_O" H 4050 4444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4050 4450 50  0001 C CNN
F 3 "" H 4050 4450 50  0001 C CNN
	1    4050 4250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW11
U 1 1 5FA6DDCD
P 3250 4250
F 0 "SW11" H 3250 4535 50  0000 C CNN
F 1 "K_I" H 3250 4444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3250 4450 50  0001 C CNN
F 3 "" H 3250 4450 50  0001 C CNN
	1    3250 4250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5FA6DDD3
P 2400 4250
F 0 "SW3" H 2400 4535 50  0000 C CNN
F 1 "K_U" H 2400 4444 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 2400 4450 50  0001 C CNN
F 3 "" H 2400 4450 50  0001 C CNN
	1    2400 4250
	1    0    0    -1  
$EndComp
Connection ~ 2050 4250
Wire Wire Line
	1700 4250 2050 4250
Text GLabel 1700 4250 0    39   Input ~ 0
OUT_6
Wire Wire Line
	7250 3300 7450 3300
Wire Wire Line
	7250 2850 7250 3300
Wire Wire Line
	6300 2850 7250 2850
Text GLabel 7850 3300 2    39   Output ~ 0
IN_3
$Comp
L Switch:SW_Push SW48
U 1 1 5FA7AD3F
P 7650 3300
F 0 "SW48" H 7650 3585 50  0000 C CNN
F 1 "K_ESC" H 7650 3494 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 7650 3500 50  0001 C CNN
F 3 "" H 7650 3500 50  0001 C CNN
	1    7650 3300
	1    0    0    -1  
$EndComp
Text GLabel 6900 3300 2    39   Output ~ 0
IN_0
Text GLabel 6050 3300 2    39   Output ~ 0
IN_1
Text GLabel 5050 3300 2    39   Output ~ 0
IN_5
Text GLabel 4250 3300 2    39   Output ~ 0
IN_7
Text GLabel 3450 3300 2    39   Output ~ 0
IN_2
Text GLabel 2600 3300 2    39   Output ~ 0
IN_4
Wire Wire Line
	6300 3300 6500 3300
Wire Wire Line
	6300 2850 6300 3300
Connection ~ 6300 2850
Wire Wire Line
	5400 2850 6300 2850
Wire Wire Line
	5400 3300 5650 3300
Wire Wire Line
	5400 2850 5400 3300
Connection ~ 5400 2850
Wire Wire Line
	4500 2850 5400 2850
Wire Wire Line
	4500 3300 4650 3300
Wire Wire Line
	4500 2850 4500 3300
Connection ~ 4500 2850
Wire Wire Line
	3650 2850 4500 2850
Wire Wire Line
	3650 3300 3850 3300
Wire Wire Line
	3650 2850 3650 3300
Connection ~ 3650 2850
Wire Wire Line
	2850 2850 3650 2850
Wire Wire Line
	2850 3300 3050 3300
Wire Wire Line
	2850 2850 2850 3300
Connection ~ 2850 2850
Wire Wire Line
	2050 2850 2850 2850
Wire Wire Line
	2050 3300 2200 3300
Wire Wire Line
	2050 2850 2050 3300
$Comp
L Switch:SW_Push SW40
U 1 1 5FA7AD61
P 6700 3300
F 0 "SW40" H 6700 3585 50  0000 C CNN
F 1 "K_1" H 6700 3494 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 6700 3500 50  0001 C CNN
F 3 "" H 6700 3500 50  0001 C CNN
	1    6700 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW34
U 1 1 5FA7AD67
P 5850 3300
F 0 "SW34" H 5850 3585 50  0000 C CNN
F 1 "K_2" H 5850 3494 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 5850 3500 50  0001 C CNN
F 3 "" H 5850 3500 50  0001 C CNN
	1    5850 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW25
U 1 1 5FA7AD6D
P 4850 3300
F 0 "SW25" H 4850 3585 50  0000 C CNN
F 1 "K_3" H 4850 3494 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4850 3500 50  0001 C CNN
F 3 "" H 4850 3500 50  0001 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW18
U 1 1 5FA7AD73
P 4050 3300
F 0 "SW18" H 4050 3585 50  0000 C CNN
F 1 "K_4" H 4050 3494 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 4050 3500 50  0001 C CNN
F 3 "" H 4050 3500 50  0001 C CNN
	1    4050 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW10
U 1 1 5FA7AD79
P 3250 3300
F 0 "SW10" H 3250 3585 50  0000 C CNN
F 1 "K_5" H 3250 3494 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3250 3500 50  0001 C CNN
F 3 "" H 3250 3500 50  0001 C CNN
	1    3250 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5FA7AD7F
P 2400 3300
F 0 "SW2" H 2400 3585 50  0000 C CNN
F 1 "K_6" H 2400 3494 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 2400 3500 50  0001 C CNN
F 3 "" H 2400 3500 50  0001 C CNN
	1    2400 3300
	1    0    0    -1  
$EndComp
Connection ~ 2050 3300
Wire Wire Line
	1700 3300 2050 3300
Text GLabel 1700 3300 0    39   Input ~ 0
OUT_4
Wire Wire Line
	13850 3500 13850 3600
Wire Wire Line
	14200 8750 14200 8700
Wire Wire Line
	13300 8650 13600 8650
Wire Wire Line
	10200 3600 10200 3500
Wire Wire Line
	10200 3500 10900 3500
Text Notes 2250 10000 0    50   ~ 0
6
Text Notes 3100 10000 0    50   ~ 0
6
Text Notes 3950 10000 0    50   ~ 0
6
Text Notes 4800 10000 0    50   ~ 0
6
Text Notes 5750 10000 0    50   ~ 0
6
Text Notes 6700 10000 0    50   ~ 0
6
Text Notes 7600 10000 0    50   ~ 0
6
Text Notes 2750 10200 0    50   ~ 0
4
Text Notes 3650 10200 0    50   ~ 0
8
Text Notes 4550 10200 0    50   ~ 0
9
Text Notes 5400 10200 0    50   ~ 0
10
Text Notes 6350 10200 0    50   ~ 0
11
Text Notes 7300 10200 0    50   ~ 0
17
Text Notes 8100 10150 0    50   ~ 0
20
Text Notes 8100 9600 0    50   ~ 0
20
Text Notes 7600 9600 0    50   ~ 0
6
Text Notes 2250 8500 0    50   ~ 0
5
Text Notes 3100 8500 0    50   ~ 0
5
Text Notes 3950 8500 0    50   ~ 0
5
Text Notes 4750 8500 0    50   ~ 0
5
Text Notes 5550 8500 0    50   ~ 0
5
Text Notes 6500 8500 0    50   ~ 0
5
Text Notes 7350 8500 0    50   ~ 0
5
Text Notes 2750 8700 0    50   ~ 0
19
Text Notes 3650 8700 0    50   ~ 0
4
Text Notes 4500 8700 0    50   ~ 0
8
Text Notes 5300 8700 0    50   ~ 0
9
Text Notes 6100 8700 0    50   ~ 0
10
Text Notes 7100 8700 0    50   ~ 0
11
Text Notes 8100 8600 0    50   ~ 0
17
Text Notes 2200 7400 0    50   ~ 0
18
Text Notes 3000 7400 0    50   ~ 0
18
Text Notes 3850 7400 0    50   ~ 0
18
Text Notes 4600 7400 0    50   ~ 0
18
Text Notes 5600 7400 0    50   ~ 0
18
Text Notes 6450 7400 0    50   ~ 0
18
Text Notes 7400 7400 0    50   ~ 0
18
Text Notes 2350 6200 0    50   ~ 0
7
Text Notes 3200 6200 0    50   ~ 0
7
Text Notes 4000 6200 0    50   ~ 0
7
Text Notes 4850 6200 0    50   ~ 0
7
Text Notes 5800 6200 0    50   ~ 0
7
Text Notes 6650 6200 0    50   ~ 0
7
Text Notes 7500 6200 0    50   ~ 0
7
Text Notes 2750 7600 0    50   ~ 0
4
Text Notes 3600 7600 0    50   ~ 0
8
Text Notes 4450 7600 0    50   ~ 0
9
Text Notes 5250 7600 0    50   ~ 0
10
Text Notes 6250 7600 0    50   ~ 0
11
Text Notes 7100 7600 0    50   ~ 0
17
Text Notes 8100 7450 0    50   ~ 0
16
Text Notes 2900 6400 0    50   ~ 0
4
Text Notes 3750 6400 0    50   ~ 0
8
Text Notes 4600 6400 0    50   ~ 0
9
Text Notes 5400 6400 0    50   ~ 0
10
Text Notes 6400 6400 0    50   ~ 0
11
Text Notes 7250 6400 0    50   ~ 0
17
Text Notes 8100 6400 0    50   ~ 0
20
Text Notes 2150 5300 0    50   ~ 0
15
Text Notes 2950 5300 0    50   ~ 0
15
Text Notes 3750 5300 0    50   ~ 0
15
Text Notes 4600 5300 0    50   ~ 0
15
Text Notes 5550 5300 0    50   ~ 0
15
Text Notes 6400 5300 0    50   ~ 0
15
Text Notes 7400 5300 0    50   ~ 0
15
Text Notes 2700 5500 0    50   ~ 0
19
Text Notes 3550 5500 0    50   ~ 0
8
Text Notes 4400 5500 0    50   ~ 0
9
Text Notes 5200 5500 0    50   ~ 0
10
Text Notes 6200 5500 0    50   ~ 0
11
Text Notes 7050 5500 0    50   ~ 0
17
Text Notes 8050 5450 0    50   ~ 0
16
Text Notes 8000 4350 0    50   ~ 0
16
Text Notes 8000 3400 0    50   ~ 0
16
Text Notes 7050 4400 0    50   ~ 0
17
Text Notes 7050 3450 0    50   ~ 0
17
Text Notes 6150 4400 0    50   ~ 0
11
Text Notes 6200 3450 0    50   ~ 0
11
Text Notes 5200 4400 0    50   ~ 0
10
Text Notes 5200 3450 0    50   ~ 0
10
Text Notes 4400 4400 0    50   ~ 0
9
Text Notes 4400 3450 0    50   ~ 0
9
Text Notes 3600 4400 0    50   ~ 0
8
Text Notes 3600 3450 0    50   ~ 0
8
Text Notes 2750 4400 0    50   ~ 0
19
Text Notes 2750 3450 0    50   ~ 0
19
Text Notes 2150 4150 0    50   ~ 0
12
Text Notes 2950 4150 0    50   ~ 0
12
Text Notes 3750 4200 0    50   ~ 0
12
Text Notes 4600 4200 0    50   ~ 0
12
Text Notes 5500 4200 0    50   ~ 0
12
Text Notes 6400 4200 0    50   ~ 0
12
Text Notes 7350 4200 0    50   ~ 0
12
Text Notes 2150 3250 0    50   ~ 0
14
Text Notes 3000 3250 0    50   ~ 0
14
Text Notes 3800 3250 0    50   ~ 0
14
Text Notes 4600 3250 0    50   ~ 0
14
Text Notes 5550 3250 0    50   ~ 0
14
Text Notes 6400 3250 0    50   ~ 0
14
Text Notes 7350 3250 0    50   ~ 0
14
Text Notes 2150 1700 2    50   ~ 0
13
Text Notes 6300 1750 2    50   ~ 0
13
Text Notes 2800 1950 2    50   ~ 0
19
Text Notes 3850 1950 2    50   ~ 0
8
Text Notes 4700 1950 0    50   ~ 0
9
Text Notes 5700 1950 0    50   ~ 0
10
Text Notes 6850 1950 0    50   ~ 0
11
Text Notes 7900 1900 0    50   ~ 0
17
Text Notes 9050 1900 2    50   ~ 0
16
$Comp
L Switch:SW_Push SW63
U 1 1 5FB2856D
P 3350 8950
F 0 "SW63" H 3350 9201 50  0000 C CNN
F 1 "K_SPACE_1" H 3350 9127 28  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3350 9150 50  0001 C CNN
F 3 "" H 3350 9150 50  0001 C CNN
	1    3350 8950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW64
U 1 1 5FB28611
P 3350 9300
F 0 "SW64" H 3350 9551 50  0000 C CNN
F 1 "K_SPACE_2" H 3350 9477 28  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 3350 9500 50  0001 C CNN
F 3 "" H 3350 9500 50  0001 C CNN
	1    3350 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 8550 3600 8550
Connection ~ 3550 8550
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5FB7B9E2
P 2400 8850
F 0 "J2" H 2373 8730 50  0000 R CNN
F 1 "Conn_01x02_Male" H 2373 8821 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2400 8850 50  0001 C CNN
F 3 "~" H 2400 8850 50  0001 C CNN
	1    2400 8850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 8550 2100 8750
Wire Wire Line
	2100 8750 2200 8750
Text GLabel 13450 5000 0    39   Input ~ 0
OUT_7
Text GLabel 13450 5650 0    39   Input ~ 0
OUT_5
$Comp
L Switch:SW_Push SW65
U 1 1 5F8424D3
P 13800 5000
F 0 "SW65" H 13800 5285 50  0000 C CNN
F 1 "K_F1" H 13800 5194 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 13800 5200 50  0001 C CNN
F 3 "" H 13800 5200 50  0001 C CNN
	1    13800 5000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW66
U 1 1 5F8425CB
P 13800 5300
F 0 "SW66" H 13800 5585 50  0000 C CNN
F 1 "K_F2" H 13800 5494 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 13800 5500 50  0001 C CNN
F 3 "" H 13800 5500 50  0001 C CNN
	1    13800 5300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW67
U 1 1 5F842671
P 13800 5650
F 0 "SW67" H 13800 5935 50  0000 C CNN
F 1 "K_F3" H 13800 5844 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 13800 5850 50  0001 C CNN
F 3 "" H 13800 5850 50  0001 C CNN
	1    13800 5650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW68
U 1 1 5F84271F
P 13800 6000
F 0 "SW68" H 13800 6285 50  0000 C CNN
F 1 "K_F4" H 13800 6194 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX1A_1.00u_PCB" H 13800 6200 50  0001 C CNN
F 3 "" H 13800 6200 50  0001 C CNN
	1    13800 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	13450 5650 13600 5650
Wire Wire Line
	13600 5650 13600 6000
Connection ~ 13600 5650
Wire Wire Line
	13450 5000 13600 5000
Wire Wire Line
	13600 5300 13600 5000
Connection ~ 13600 5000
Text GLabel 14000 5300 2    39   Output ~ 0
IN_3
Text GLabel 14000 5650 2    39   Output ~ 0
IN_3
Text GLabel 14000 6000 2    39   Output ~ 0
IN_4
Text GLabel 14000 5000 2    39   Output ~ 0
IN_4
Wire Bus Line
	13000 4600 14500 4600
Wire Bus Line
	14500 4600 14500 6200
Wire Bus Line
	14500 6200 13000 6200
Wire Bus Line
	13000 6200 13000 4600
Text Notes 15100 6300 2    50   ~ 0
EXTRA FUNCTION KEYS (as Atari 1200XL) F1, F2, F3, F4
$Comp
L Mechanical:MountingHole H1
U 1 1 5F89E488
P 10400 10100
F 0 "H1" H 10500 10146 50  0000 L CNN
F 1 "MountingHole" H 10500 10055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm" H 10400 10100 50  0001 C CNN
F 3 "~" H 10400 10100 50  0001 C CNN
	1    10400 10100
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F89E760
P 10400 9900
F 0 "H2" H 10500 9946 50  0000 L CNN
F 1 "MountingHole" H 10500 9855 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm" H 10400 9900 50  0001 C CNN
F 3 "~" H 10400 9900 50  0001 C CNN
	1    10400 9900
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F89E80E
P 10400 9700
F 0 "H3" H 10500 9746 50  0000 L CNN
F 1 "MountingHole" H 10500 9655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm" H 10400 9700 50  0001 C CNN
F 3 "~" H 10400 9700 50  0001 C CNN
	1    10400 9700
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F89E8B6
P 10400 9500
F 0 "H4" H 10500 9546 50  0000 L CNN
F 1 "MountingHole" H 10500 9455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm" H 10400 9500 50  0001 C CNN
F 3 "~" H 10400 9500 50  0001 C CNN
	1    10400 9500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 9300 3150 9300
Wire Wire Line
	2200 8850 2200 9300
Wire Wire Line
	3150 8950 3150 9300
Connection ~ 3150 9300
Wire Wire Line
	3550 8550 3550 8950
Connection ~ 3550 8950
Wire Wire Line
	3550 8950 3550 9300
Wire Wire Line
	2150 1800 2000 1800
Wire Wire Line
	2000 1800 2000 1400
Wire Wire Line
	2000 1400 3000 1400
Wire Wire Line
	3000 1400 3000 1800
Wire Wire Line
	3000 1800 3200 1800
Connection ~ 2000 1800
Wire Wire Line
	2000 1800 1700 1800
Text Notes 3200 1750 2    50   ~ 0
13
Wire Wire Line
	3000 1400 4000 1400
Wire Wire Line
	4000 1400 4000 1800
Wire Wire Line
	4000 1800 4150 1800
Connection ~ 3000 1400
Wire Wire Line
	4000 1400 4950 1400
Wire Wire Line
	4950 1400 4950 1800
Wire Wire Line
	4950 1800 5150 1800
Connection ~ 4000 1400
Wire Wire Line
	4950 1400 6050 1400
Wire Wire Line
	6050 1400 6050 1800
Wire Wire Line
	6050 1800 6300 1800
Connection ~ 4950 1400
Text Notes 5100 1750 2    50   ~ 0
13
Text Notes 4150 1750 2    50   ~ 0
13
Wire Wire Line
	6050 1400 7100 1400
Wire Wire Line
	7100 1400 7100 1800
Wire Wire Line
	7100 1800 7300 1800
Connection ~ 6050 1400
Text Notes 7300 1750 2    50   ~ 0
13
Text Notes 10150 1900 0    50   ~ 0
20
Text Notes 8300 1750 2    50   ~ 0
13
Text Notes 9550 1750 2    50   ~ 0
13
Wire Wire Line
	7100 1400 8150 1400
Wire Wire Line
	8150 1400 8150 1800
Wire Wire Line
	8150 1800 8350 1800
Connection ~ 7100 1400
Wire Wire Line
	8150 1400 9250 1400
Wire Wire Line
	9250 1400 9250 1800
Wire Wire Line
	9250 1800 9550 1800
Connection ~ 8150 1400
Wire Bus Line
	9700 2400 14350 2400
Wire Bus Line
	14350 2400 14350 4100
Wire Bus Line
	14350 4100 9700 4100
Wire Bus Line
	9700 4100 9700 2400
Text Notes 11100 4350 0    50   ~ 0
FUNCTION KEYS: HELP, START, SELECT, OPTION and RESET\nThose keys should be reused from original
$EndSCHEMATC