EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HP Supply"
Date "2020-05-16"
Rev "1.1"
Comp "Nathan Schenk"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x32_Counter_Clockwise J1
U 1 1 5EC0B01A
P 1300 2450
F 0 "J1" H 1350 4167 50  0000 C CNN
F 1 "64Pin Edge Card" H 1350 4076 50  0000 C CNN
F 2 "_NTSFootprints:FCI_10046971-001LF" H 1300 2450 50  0001 C CNN
F 3 "~" H 1300 2450 50  0001 C CNN
	1    1300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2150 1100 2050
Connection ~ 1100 1050
Wire Wire Line
	1100 1050 1100 950 
Connection ~ 1100 1150
Wire Wire Line
	1100 1150 1100 1050
Connection ~ 1100 1250
Wire Wire Line
	1100 1250 1100 1150
Connection ~ 1100 1350
Wire Wire Line
	1100 1350 1100 1250
Connection ~ 1100 1450
Wire Wire Line
	1100 1450 1100 1350
Connection ~ 1100 1550
Wire Wire Line
	1100 1550 1100 1450
Connection ~ 1100 1650
Wire Wire Line
	1100 1650 1100 1550
Connection ~ 1100 1750
Wire Wire Line
	1100 1750 1100 1650
Connection ~ 1100 1850
Wire Wire Line
	1100 1850 1100 1750
Connection ~ 1100 1950
Wire Wire Line
	1100 1950 1100 1850
Connection ~ 1100 2050
Wire Wire Line
	1100 2050 1100 1950
Wire Wire Line
	1600 2150 1600 2050
Connection ~ 1600 1050
Wire Wire Line
	1600 1050 1600 950 
Connection ~ 1600 1150
Wire Wire Line
	1600 1150 1600 1050
Connection ~ 1600 1250
Wire Wire Line
	1600 1250 1600 1150
Connection ~ 1600 1350
Wire Wire Line
	1600 1350 1600 1250
Connection ~ 1600 1450
Wire Wire Line
	1600 1450 1600 1350
Connection ~ 1600 1550
Wire Wire Line
	1600 1550 1600 1450
Connection ~ 1600 1650
Wire Wire Line
	1600 1650 1600 1550
Connection ~ 1600 1750
Wire Wire Line
	1600 1750 1600 1650
Connection ~ 1600 1850
Wire Wire Line
	1600 1850 1600 1750
Connection ~ 1600 1950
Wire Wire Line
	1600 1950 1600 1850
Connection ~ 1600 2050
Wire Wire Line
	1600 2050 1600 1950
Wire Wire Line
	1100 950  1600 950 
Connection ~ 1100 950 
Connection ~ 1600 950 
Wire Wire Line
	1600 2150 1100 2150
Connection ~ 1600 2150
Connection ~ 1100 2150
Wire Wire Line
	1100 3450 1100 3350
Connection ~ 1100 2350
Wire Wire Line
	1100 2350 1100 2250
Connection ~ 1100 2450
Wire Wire Line
	1100 2450 1100 2350
Connection ~ 1100 2550
Wire Wire Line
	1100 2550 1100 2450
Connection ~ 1100 2650
Wire Wire Line
	1100 2650 1100 2550
Connection ~ 1100 2750
Wire Wire Line
	1100 2750 1100 2650
Connection ~ 1100 2850
Wire Wire Line
	1100 2850 1100 2750
Connection ~ 1100 2950
Wire Wire Line
	1100 2950 1100 2850
Connection ~ 1100 3050
Wire Wire Line
	1100 3050 1100 2950
Connection ~ 1100 3150
Wire Wire Line
	1100 3150 1100 3050
Connection ~ 1100 3250
Wire Wire Line
	1100 3250 1100 3150
Connection ~ 1100 3350
Wire Wire Line
	1100 3350 1100 3250
Wire Wire Line
	1600 3450 1600 3350
Connection ~ 1600 2350
Wire Wire Line
	1600 2350 1600 2250
Connection ~ 1600 2450
Wire Wire Line
	1600 2450 1600 2350
Connection ~ 1600 2550
Wire Wire Line
	1600 2550 1600 2450
Connection ~ 1600 2650
Wire Wire Line
	1600 2650 1600 2550
Connection ~ 1600 2750
Wire Wire Line
	1600 2750 1600 2650
Connection ~ 1600 2850
Wire Wire Line
	1600 2850 1600 2750
Connection ~ 1600 2950
Wire Wire Line
	1600 2950 1600 2850
Connection ~ 1600 3050
Wire Wire Line
	1600 3050 1600 2950
Connection ~ 1600 3150
Wire Wire Line
	1600 3150 1600 3050
Connection ~ 1600 3250
Wire Wire Line
	1600 3250 1600 3150
Connection ~ 1600 3350
Wire Wire Line
	1600 3350 1600 3250
Wire Wire Line
	1100 2250 1600 2250
Connection ~ 1100 2250
Connection ~ 1600 2250
Wire Wire Line
	1100 3450 1600 3450
Connection ~ 1100 3450
Connection ~ 1600 3450
$Comp
L power:+12P #PWR0101
U 1 1 5EC132EE
P 1600 950
F 0 "#PWR0101" H 1600 800 50  0001 C CNN
F 1 "+12P" V 1615 1078 50  0000 L CNN
F 2 "" H 1600 950 50  0001 C CNN
F 3 "" H 1600 950 50  0001 C CNN
	1    1600 950 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EC14B72
P 1100 3850
F 0 "#PWR0103" H 1100 3600 50  0001 C CNN
F 1 "GND" V 1105 3722 50  0000 R CNN
F 2 "" H 1100 3850 50  0001 C CNN
F 3 "" H 1100 3850 50  0001 C CNN
	1    1100 3850
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5EC15286
P 2400 3650
F 0 "#PWR0104" H 2400 3500 50  0001 C CNN
F 1 "+12V" V 2400 3800 50  0000 L CNN
F 2 "" H 2400 3650 50  0001 C CNN
F 3 "" H 2400 3650 50  0001 C CNN
	1    2400 3650
	0    1    1    0   
$EndComp
Text GLabel 1100 3950 0    50   BiDi ~ 0
SDA
Text GLabel 1100 4050 0    50   BiDi ~ 0
SCL
Text GLabel 1600 4050 2    50   Input ~ 0
PsOn
Text GLabel 1600 3950 2    50   Output ~ 0
Imon
Text GLabel 1600 3850 2    50   Output ~ 0
PsOk
Text GLabel 1600 3550 2    50   Output ~ 0
PsInterrupt
Text GLabel 1100 3550 0    50   Input ~ 0
Adr0
Text GLabel 1100 3650 0    50   Input ~ 0
Adr1
Text GLabel 1100 3750 0    50   Input ~ 0
Adr2
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5EC17857
P 5400 2100
F 0 "A1" H 5050 3050 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 5400 2100 50  0000 C CNN
F 2 "_NTSFootprints:Arduino_Nano" H 5400 2100 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5400 2100 50  0001 C CNN
	1    5400 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 5EC18D9A
P 5500 1100
F 0 "#PWR0105" H 5500 950 50  0001 C CNN
F 1 "+3.3V" H 5500 1400 50  0000 C CNN
F 2 "" H 5500 1100 50  0001 C CNN
F 3 "" H 5500 1100 50  0001 C CNN
	1    5500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5EC19EF3
P 5600 1100
F 0 "#PWR0106" H 5600 950 50  0001 C CNN
F 1 "+5V" H 5615 1273 50  0000 C CNN
F 2 "" H 5600 1100 50  0001 C CNN
F 3 "" H 5600 1100 50  0001 C CNN
	1    5600 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5EC1A569
P 5300 1100
F 0 "#PWR0107" H 5300 950 50  0001 C CNN
F 1 "+12V" H 5315 1273 50  0000 C CNN
F 2 "" H 5300 1100 50  0001 C CNN
F 3 "" H 5300 1100 50  0001 C CNN
	1    5300 1100
	1    0    0    -1  
$EndComp
Text GLabel 6850 2600 2    50   BiDi ~ 0
SCL
Text GLabel 6850 2500 2    50   BiDi ~ 0
SDA
$Comp
L power:GND #PWR0108
U 1 1 5EC1B8AC
P 5400 3100
F 0 "#PWR0108" H 5400 2850 50  0001 C CNN
F 1 "GND" H 5350 2950 50  0000 C CNN
F 2 "" H 5400 3100 50  0001 C CNN
F 3 "" H 5400 3100 50  0001 C CNN
	1    5400 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EC1C100
P 5500 3100
F 0 "#PWR0109" H 5500 2850 50  0001 C CNN
F 1 "GND" H 5550 2950 50  0000 C CNN
F 2 "" H 5500 3100 50  0001 C CNN
F 3 "" H 5500 3100 50  0001 C CNN
	1    5500 3100
	1    0    0    -1  
$EndComp
NoConn ~ 4900 1500
NoConn ~ 4900 1600
NoConn ~ 5900 1500
NoConn ~ 5900 1600
NoConn ~ 5900 1900
Text GLabel 3900 4300 1    50   Output ~ 0
PsOn
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5EC243AB
P 4000 4500
F 0 "Q1" H 4190 4546 50  0000 L CNN
F 1 "2N3904" H 4190 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 4200 4425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4000 4500 50  0001 L CNN
	1    4000 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EC24E8E
P 3900 4700
F 0 "#PWR0110" H 3900 4450 50  0001 C CNN
F 1 "GND" H 3850 4550 50  0000 C CNN
F 2 "" H 3900 4700 50  0001 C CNN
F 3 "" H 3900 4700 50  0001 C CNN
	1    3900 4700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EC27818
P 4350 4500
F 0 "R2" V 4450 4500 50  0000 C CNN
F 1 "3.9k" V 4350 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4280 4500 50  0001 C CNN
F 3 "~" H 4350 4500 50  0001 C CNN
	1    4350 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5EC2C500
P 6600 2250
F 0 "R10" V 6500 2250 50  0000 C CNN
F 1 "3.9k" V 6600 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6530 2250 50  0001 C CNN
F 3 "~" H 6600 2250 50  0001 C CNN
	1    6600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5EC2CDF0
P 6750 2250
F 0 "R11" V 6850 2250 50  0000 C CNN
F 1 "3.9k" V 6750 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6680 2250 50  0001 C CNN
F 3 "~" H 6750 2250 50  0001 C CNN
	1    6750 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2400 6600 2500
Connection ~ 6600 2500
Wire Wire Line
	6600 2500 6850 2500
Wire Wire Line
	6750 2400 6750 2600
Connection ~ 6750 2600
Wire Wire Line
	6750 2600 6850 2600
$Comp
L power:+3.3V #PWR0111
U 1 1 5EC2FB00
P 6600 2100
F 0 "#PWR0111" H 6600 1950 50  0001 C CNN
F 1 "+3.3V" H 6650 2300 50  0000 C CNN
F 2 "" H 6600 2100 50  0001 C CNN
F 3 "" H 6600 2100 50  0001 C CNN
	1    6600 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 5EC30516
P 6750 2100
F 0 "#PWR0112" H 6750 1950 50  0001 C CNN
F 1 "+3.3V" H 6850 2300 50  0001 C CNN
F 2 "" H 6750 2100 50  0001 C CNN
F 3 "" H 6750 2100 50  0001 C CNN
	1    6750 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EC31924
P 1750 3750
F 0 "R1" V 1800 3950 50  0000 C CNN
F 1 "3.9k" V 1750 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1680 3750 50  0001 C CNN
F 3 "~" H 1750 3750 50  0001 C CNN
	1    1750 3750
	0    1    1    0   
$EndComp
$Comp
L Display_Character:WC1602A DS1
U 1 1 5EC38283
P 8100 4850
F 0 "DS1" H 7850 5600 50  0000 C CNN
F 1 "WC1602A" V 8100 4700 50  0000 C CNN
F 2 "_NTSFootprints:WC1602A_3mmHoles" H 8100 3950 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 8800 4850 50  0001 C CNN
	1    8100 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5EC3AAD8
P 8700 4050
F 0 "RV1" V 8493 4050 50  0000 C CNN
F 1 "Contrast" V 8584 4050 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3386P_Vertical" H 8700 4050 50  0001 C CNN
F 3 "~" H 8700 4050 50  0001 C CNN
	1    8700 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 4250 8700 4250
$Comp
L power:GND #PWR0114
U 1 1 5EC3CFD4
P 8850 4050
F 0 "#PWR0114" H 8850 3800 50  0001 C CNN
F 1 "GND" H 8800 3900 50  0000 C CNN
F 2 "" H 8850 4050 50  0001 C CNN
F 3 "" H 8850 4050 50  0001 C CNN
	1    8850 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 4250 8700 4200
Wire Wire Line
	8100 4050 8550 4050
Text GLabel 4900 2500 0    50   BiDi ~ 0
lcd4
Text GLabel 4900 2600 0    50   BiDi ~ 0
lcd5
Text GLabel 4900 2700 0    50   BiDi ~ 0
lcd6
Text GLabel 4900 2800 0    50   BiDi ~ 0
lcd7
$Comp
L power:GND #PWR0116
U 1 1 5EC41CED
P 8100 5650
F 0 "#PWR0116" H 8100 5400 50  0001 C CNN
F 1 "GND" H 8100 5500 50  0000 C CNN
F 2 "" H 8100 5650 50  0001 C CNN
F 3 "" H 8100 5650 50  0001 C CNN
	1    8100 5650
	1    0    0    -1  
$EndComp
Text GLabel 7700 4250 0    50   Input ~ 0
lcdE
Text GLabel 7700 4450 0    50   Input ~ 0
lcdRS
Text GLabel 9100 5150 2    50   Input ~ 0
lcdBL
$Comp
L power:GND #PWR0117
U 1 1 5EC44802
P 7700 4350
F 0 "#PWR0117" H 7700 4100 50  0001 C CNN
F 1 "GND" V 7700 4150 50  0000 C CNN
F 2 "" H 7700 4350 50  0001 C CNN
F 3 "" H 7700 4350 50  0001 C CNN
	1    7700 4350
	0    1    1    0   
$EndComp
NoConn ~ 7700 4750
NoConn ~ 7700 4850
NoConn ~ 7700 4950
NoConn ~ 7700 5050
Text GLabel 4900 2400 0    50   Output ~ 0
lcdRS
Text GLabel 4900 2300 0    50   Output ~ 0
lcdE
$Comp
L Device:R R9
U 1 1 5EC4BABC
P 8950 5150
F 0 "R9" V 9050 5150 50  0000 C CNN
F 1 "3.9k" V 8950 5150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8880 5150 50  0001 C CNN
F 3 "~" H 8950 5150 50  0001 C CNN
	1    8950 5150
	0    -1   -1   0   
$EndComp
Text GLabel 4900 2100 0    50   Output ~ 0
lcdBL
Text GLabel 7700 5150 0    50   BiDi ~ 0
lcd4
Text GLabel 7700 5250 0    50   BiDi ~ 0
lcd5
Text GLabel 7700 5350 0    50   BiDi ~ 0
lcd6
Text GLabel 7700 5450 0    50   BiDi ~ 0
lcd7
Wire Wire Line
	5900 2500 6600 2500
Wire Wire Line
	5900 2600 6750 2600
Text GLabel 5900 2800 2    50   Input ~ 0
Imon
Text GLabel 5900 2700 2    50   Input ~ 0
PsOk
$Comp
L Switch:SW_Push SW1
U 1 1 5EC36CFB
P 6750 4550
F 0 "SW1" H 6600 4650 50  0000 C CNN
F 1 "On/Off" H 6750 4744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 6750 4750 50  0001 C CNN
F 3 "~" H 6750 4750 50  0001 C CNN
	1    6750 4550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5EC3798D
P 6750 4850
F 0 "SW2" H 6600 4950 50  0000 C CNN
F 1 "Up" H 6750 5044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 6750 5050 50  0001 C CNN
F 3 "~" H 6750 5050 50  0001 C CNN
	1    6750 4850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5EC38023
P 6750 5150
F 0 "SW3" H 6600 5250 50  0000 C CNN
F 1 "Down" H 6750 5344 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 6750 5350 50  0001 C CNN
F 3 "~" H 6750 5350 50  0001 C CNN
	1    6750 5150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5EC3857D
P 6750 5450
F 0 "SW4" H 6600 5550 50  0000 C CNN
F 1 "Left" H 6750 5644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 6750 5650 50  0001 C CNN
F 3 "~" H 6750 5650 50  0001 C CNN
	1    6750 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5EC388FF
P 6750 5750
F 0 "SW5" H 6600 5850 50  0000 C CNN
F 1 "Right" H 6750 5944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 6750 5950 50  0001 C CNN
F 3 "~" H 6750 5950 50  0001 C CNN
	1    6750 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5EC38E97
P 6950 5750
F 0 "#PWR0118" H 6950 5500 50  0001 C CNN
F 1 "GND" H 6950 5600 50  0000 C CNN
F 2 "" H 6950 5750 50  0001 C CNN
F 3 "" H 6950 5750 50  0001 C CNN
	1    6950 5750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5EC3957B
P 6950 5450
F 0 "#PWR0119" H 6950 5200 50  0001 C CNN
F 1 "GND" H 6950 5300 50  0000 C CNN
F 2 "" H 6950 5450 50  0001 C CNN
F 3 "" H 6950 5450 50  0001 C CNN
	1    6950 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5EC3983E
P 6950 5150
F 0 "#PWR0120" H 6950 4900 50  0001 C CNN
F 1 "GND" H 6950 5000 50  0000 C CNN
F 2 "" H 6950 5150 50  0001 C CNN
F 3 "" H 6950 5150 50  0001 C CNN
	1    6950 5150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5EC39B94
P 6950 4850
F 0 "#PWR0121" H 6950 4600 50  0001 C CNN
F 1 "GND" H 6950 4700 50  0000 C CNN
F 2 "" H 6950 4850 50  0001 C CNN
F 3 "" H 6950 4850 50  0001 C CNN
	1    6950 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5EC39F7F
P 6950 4550
F 0 "#PWR0122" H 6950 4300 50  0001 C CNN
F 1 "GND" H 6950 4400 50  0000 C CNN
F 2 "" H 6950 4550 50  0001 C CNN
F 3 "" H 6950 4550 50  0001 C CNN
	1    6950 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5EC3A784
P 5950 4200
F 0 "R4" V 6000 4050 50  0000 C CNN
F 1 "3.9k" V 5950 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 4200 50  0001 C CNN
F 3 "~" H 5950 4200 50  0001 C CNN
	1    5950 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5EC3BC94
P 6050 4200
F 0 "R5" V 6100 4050 50  0000 C CNN
F 1 "3.9k" V 6050 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 4200 50  0001 C CNN
F 3 "~" H 6050 4200 50  0001 C CNN
	1    6050 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5EC3C036
P 6150 4200
F 0 "R6" V 6200 4050 50  0000 C CNN
F 1 "3.9k" V 6150 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6080 4200 50  0001 C CNN
F 3 "~" H 6150 4200 50  0001 C CNN
	1    6150 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5EC3C27D
P 6250 4200
F 0 "R7" V 6300 4050 50  0000 C CNN
F 1 "3.9k" V 6250 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 4200 50  0001 C CNN
F 3 "~" H 6250 4200 50  0001 C CNN
	1    6250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5EC3C404
P 6350 4200
F 0 "R8" V 6400 4050 50  0000 C CNN
F 1 "3.9k" V 6350 4200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6280 4200 50  0001 C CNN
F 3 "~" H 6350 4200 50  0001 C CNN
	1    6350 4200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5EC3C619
P 6150 4050
F 0 "#PWR0123" H 6150 3900 50  0001 C CNN
F 1 "+5V" H 6165 4223 50  0000 C CNN
F 2 "" H 6150 4050 50  0001 C CNN
F 3 "" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4050 6050 4050
Connection ~ 6050 4050
Wire Wire Line
	6050 4050 6150 4050
Connection ~ 6150 4050
Wire Wire Line
	6150 4050 6250 4050
Connection ~ 6250 4050
Wire Wire Line
	6250 4050 6350 4050
Wire Wire Line
	5950 4350 5950 4550
Wire Wire Line
	5950 4550 6550 4550
Wire Wire Line
	6050 4350 6050 4850
Wire Wire Line
	6050 4850 6550 4850
Wire Wire Line
	6150 4350 6150 5150
Wire Wire Line
	6150 5150 6550 5150
Wire Wire Line
	6250 4350 6250 5450
Wire Wire Line
	6250 5450 6550 5450
Wire Wire Line
	6350 4350 6350 5750
Wire Wire Line
	6350 5750 6550 5750
Text GLabel 4900 2200 0    50   Output ~ 0
PsOnS
Text GLabel 4500 4500 2    50   Input ~ 0
PsOnS
Text GLabel 5900 2400 2    50   Input ~ 0
OnOff
Text GLabel 5900 4850 0    50   Output ~ 0
Up
Text GLabel 5900 5150 0    50   Output ~ 0
Down
Text GLabel 5900 5450 0    50   Output ~ 0
Left
Text GLabel 5900 5750 0    50   Output ~ 0
Right
Wire Wire Line
	5900 4550 5950 4550
Connection ~ 5950 4550
Wire Wire Line
	5900 4850 6050 4850
Connection ~ 6050 4850
Wire Wire Line
	5900 5150 6150 5150
Connection ~ 6150 5150
Wire Wire Line
	5900 5450 6250 5450
Connection ~ 6250 5450
Wire Wire Line
	6350 5750 5900 5750
Connection ~ 6350 5750
Text GLabel 5900 4550 0    50   Output ~ 0
OnOff
Text GLabel 4900 1700 0    50   Input ~ 0
Up
Text GLabel 4900 1800 0    50   Input ~ 0
Down
Text GLabel 4900 1900 0    50   Input ~ 0
Left
Text GLabel 4900 2000 0    50   Input ~ 0
Right
$Comp
L Device:Polyfuse F1
U 1 1 5EC68979
P 2250 3650
F 0 "F1" V 2150 3650 50  0000 C CNN
F 1 "0.5A Polyfuse" V 2150 4000 50  0000 C CNN
F 2 "Fuse:Fuse_Bourns_MF-RHT100" H 2300 3450 50  0001 L CNN
F 3 "~" H 2250 3650 50  0001 C CNN
	1    2250 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 3650 2100 3650
$Comp
L Device:Fuse F2
U 1 1 5ECA839C
P 8900 1050
F 0 "F2" V 8703 1050 50  0000 C CNN
F 1 "25A Max" V 8794 1050 50  0000 C CNN
F 2 "_NTSFootprints:FuseHolder_Keystone_3557-2" V 8830 1050 50  0001 C CNN
F 3 "~" H 8900 1050 50  0001 C CNN
	1    8900 1050
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5ECAA3A3
P 9800 1050
F 0 "J2" H 9880 1042 50  0000 L CNN
F 1 "Binding Post" H 9880 951 50  0000 L CNN
F 2 "_NTSFootprints:BindingPost_Keystone_7019" H 9800 1050 50  0001 C CNN
F 3 "~" H 9800 1050 50  0001 C CNN
	1    9800 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR0125
U 1 1 5ECAB96D
P 8750 1050
F 0 "#PWR0125" H 8750 900 50  0001 C CNN
F 1 "+12P" V 8765 1178 50  0000 L CNN
F 2 "" H 8750 1050 50  0001 C CNN
F 3 "" H 8750 1050 50  0001 C CNN
	1    8750 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F3
U 1 1 5ECB4694
P 8900 1950
F 0 "F3" V 8703 1950 50  0000 C CNN
F 1 "25A Max" V 8794 1950 50  0000 C CNN
F 2 "_NTSFootprints:FuseHolder_Keystone_3557-2" V 8830 1950 50  0001 C CNN
F 3 "~" H 8900 1950 50  0001 C CNN
	1    8900 1950
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5ECB469A
P 9800 1950
F 0 "J3" H 9880 1942 50  0000 L CNN
F 1 "Binding Post" H 9880 1851 50  0000 L CNN
F 2 "_NTSFootprints:BindingPost_Keystone_7019" H 9800 1950 50  0001 C CNN
F 3 "~" H 9800 1950 50  0001 C CNN
	1    9800 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR0127
U 1 1 5ECB46A6
P 8750 1950
F 0 "#PWR0127" H 8750 1800 50  0001 C CNN
F 1 "+12P" V 8765 2078 50  0000 L CNN
F 2 "" H 8750 1950 50  0001 C CNN
F 3 "" H 8750 1950 50  0001 C CNN
	1    8750 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F4
U 1 1 5ECB64C9
P 8900 2850
F 0 "F4" V 8703 2850 50  0000 C CNN
F 1 "25A Max" V 8794 2850 50  0000 C CNN
F 2 "_NTSFootprints:FuseHolder_Keystone_3557-2" V 8830 2850 50  0001 C CNN
F 3 "~" H 8900 2850 50  0001 C CNN
	1    8900 2850
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5ECB64CF
P 9800 2850
F 0 "J4" H 9880 2842 50  0000 L CNN
F 1 "Binding Post" H 9880 2751 50  0000 L CNN
F 2 "_NTSFootprints:BindingPost_Keystone_7019" H 9800 2850 50  0001 C CNN
F 3 "~" H 9800 2850 50  0001 C CNN
	1    9800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR0129
U 1 1 5ECB64DB
P 8750 2850
F 0 "#PWR0129" H 8750 2700 50  0001 C CNN
F 1 "+12P" V 8765 2978 50  0000 L CNN
F 2 "" H 8750 2850 50  0001 C CNN
F 3 "" H 8750 2850 50  0001 C CNN
	1    8750 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5ECCC855
P 4500 5100
F 0 "D1" V 4539 4983 50  0000 R CNN
F 1 "On" V 4448 4983 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4500 5100 50  0001 C CNN
F 3 "~" H 4500 5100 50  0001 C CNN
	1    4500 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5ECCDF33
P 4500 4800
F 0 "R3" V 4600 4800 50  0000 C CNN
F 1 "1k" V 4500 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 4800 50  0001 C CNN
F 3 "~" H 4500 4800 50  0001 C CNN
	1    4500 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5ECD08E8
P 4500 5250
F 0 "#PWR0132" H 4500 5000 50  0001 C CNN
F 1 "GND" H 4450 5100 50  0000 C CNN
F 2 "" H 4500 5250 50  0001 C CNN
F 3 "" H 4500 5250 50  0001 C CNN
	1    4500 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 4650 4500 4500
$Comp
L Device:LED D2
U 1 1 5ECD489F
P 9800 850
F 0 "D2" H 9850 750 50  0000 R CNN
F 1 "Output 1" H 9850 950 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9800 850 50  0001 C CNN
F 3 "~" H 9800 850 50  0001 C CNN
	1    9800 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5ECD48A5
P 10100 850
F 0 "R12" V 10200 850 50  0000 C CNN
F 1 "3.9k" V 10100 850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10030 850 50  0001 C CNN
F 3 "~" H 10100 850 50  0001 C CNN
	1    10100 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 1050 9600 850 
Wire Wire Line
	9600 850  9650 850 
$Comp
L Device:LED D3
U 1 1 5ECDDA21
P 9800 1750
F 0 "D3" H 9850 1650 50  0000 R CNN
F 1 "Output 2" H 9850 1850 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9800 1750 50  0001 C CNN
F 3 "~" H 9800 1750 50  0001 C CNN
	1    9800 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 5ECDDA27
P 10100 1750
F 0 "R13" V 10200 1750 50  0000 C CNN
F 1 "3.9k" V 10100 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10030 1750 50  0001 C CNN
F 3 "~" H 10100 1750 50  0001 C CNN
	1    10100 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 1950 9600 1750
Wire Wire Line
	9600 1750 9650 1750
$Comp
L Device:LED D4
U 1 1 5ECE016D
P 9800 2650
F 0 "D4" H 9850 2550 50  0000 R CNN
F 1 "Output 3" H 9850 2750 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9800 2650 50  0001 C CNN
F 3 "~" H 9800 2650 50  0001 C CNN
	1    9800 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5ECE0173
P 10100 2650
F 0 "R14" V 10200 2650 50  0000 C CNN
F 1 "3.9k" V 10100 2650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10030 2650 50  0001 C CNN
F 3 "~" H 10100 2650 50  0001 C CNN
	1    10100 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9600 2850 9600 2650
Wire Wire Line
	9600 2650 9650 2650
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EC75891
P 250 -450
F 0 "#FLG0101" H 250 -375 50  0001 C CNN
F 1 "PWR_FLAG" H 250 -277 50  0000 C CNN
F 2 "" H 250 -450 50  0001 C CNN
F 3 "~" H 250 -450 50  0001 C CNN
	1    250  -450
	1    0    0    -1  
$EndComp
$Comp
L power:+12P #PWR0137
U 1 1 5EC75CDA
P 250 -450
F 0 "#PWR0137" H 250 -600 50  0001 C CNN
F 1 "+12P" V 265 -322 50  0000 L CNN
F 2 "" H 250 -450 50  0001 C CNN
F 3 "" H 250 -450 50  0001 C CNN
	1    250  -450
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EC766F7
P 650 -450
F 0 "#FLG0102" H 650 -375 50  0001 C CNN
F 1 "PWR_FLAG" H 650 -277 50  0000 C CNN
F 2 "" H 650 -450 50  0001 C CNN
F 3 "~" H 650 -450 50  0001 C CNN
	1    650  -450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5EC76A42
P 650 -450
F 0 "#PWR0138" H 650 -700 50  0001 C CNN
F 1 "GND" V 655 -578 50  0000 R CNN
F 2 "" H 650 -450 50  0001 C CNN
F 3 "" H 650 -450 50  0001 C CNN
	1    650  -450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5EC77074
P 1050 -450
F 0 "#FLG0103" H 1050 -375 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 -277 50  0000 C CNN
F 2 "" H 1050 -450 50  0001 C CNN
F 3 "~" H 1050 -450 50  0001 C CNN
	1    1050 -450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0139
U 1 1 5EC7733E
P 1050 -450
F 0 "#PWR0139" H 1050 -600 50  0001 C CNN
F 1 "+12V" H 1065 -277 50  0000 C CNN
F 2 "" H 1050 -450 50  0001 C CNN
F 3 "" H 1050 -450 50  0001 C CNN
	1    1050 -450
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0140
U 1 1 5EC781AC
P 8100 4050
F 0 "#PWR0140" H 8100 3900 50  0001 C CNN
F 1 "+5V" H 8115 4223 50  0000 C CNN
F 2 "" H 8100 4050 50  0001 C CNN
F 3 "" H 8100 4050 50  0001 C CNN
	1    8100 4050
	1    0    0    -1  
$EndComp
Connection ~ 8100 4050
Text GLabel 1300 4700 2    50   Output ~ 0
Adr0
Text GLabel 1300 4800 2    50   Output ~ 0
Adr1
Text GLabel 1300 4900 2    50   Output ~ 0
Adr2
Text GLabel 1300 4550 2    50   Input ~ 0
PsInterrupt
NoConn ~ 1300 4550
NoConn ~ 1300 4700
NoConn ~ 1300 4800
NoConn ~ 1300 4900
NoConn ~ 5900 2100
NoConn ~ 5900 2200
NoConn ~ 5900 2300
$Comp
L power:+5V #PWR03
U 1 1 5ECA251C
P 8500 4550
F 0 "#PWR03" H 8500 4400 50  0001 C CNN
F 1 "+5V" H 8515 4723 50  0000 C CNN
F 2 "" H 8500 4550 50  0001 C CNN
F 3 "" H 8500 4550 50  0001 C CNN
	1    8500 4550
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5ECA2CE4
P 8600 5150
F 0 "Q2" H 8450 5250 50  0000 L CNN
F 1 "2N3904" H 8250 5050 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8800 5075 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8600 5150 50  0001 L CNN
	1    8600 5150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5ECAC303
P 8500 5350
F 0 "#PWR04" H 8500 5100 50  0001 C CNN
F 1 "GND" H 8500 5200 50  0000 C CNN
F 2 "" H 8500 5350 50  0001 C CNN
F 3 "" H 8500 5350 50  0001 C CNN
	1    8500 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5ECAC74F
P 8500 4800
F 0 "R17" V 8600 4800 50  0000 C CNN
F 1 "270" V 8500 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 4800 50  0001 C CNN
F 3 "~" H 8500 4800 50  0001 C CNN
	1    8500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3750 2400 3750
Wire Wire Line
	2400 3750 2400 3650
Connection ~ 2400 3650
$Comp
L power:GNDPWR #PWR0102
U 1 1 5ECD985A
P 1600 2250
F 0 "#PWR0102" H 1600 2050 50  0001 C CNN
F 1 "GNDPWR" V 1605 2142 50  0000 R CNN
F 2 "" H 1600 2200 50  0001 C CNN
F 3 "" H 1600 2200 50  0001 C CNN
	1    1600 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0113
U 1 1 5ECDA652
P 10250 850
F 0 "#PWR0113" H 10250 650 50  0001 C CNN
F 1 "GNDPWR" V 10255 742 50  0000 R CNN
F 2 "" H 10250 800 50  0001 C CNN
F 3 "" H 10250 800 50  0001 C CNN
	1    10250 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0115
U 1 1 5ECDB46D
P 10250 1750
F 0 "#PWR0115" H 10250 1550 50  0001 C CNN
F 1 "GNDPWR" V 10255 1642 50  0000 R CNN
F 2 "" H 10250 1700 50  0001 C CNN
F 3 "" H 10250 1700 50  0001 C CNN
	1    10250 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDPWR #PWR0133
U 1 1 5ECDB8D7
P 10250 2650
F 0 "#PWR0133" H 10250 2450 50  0001 C CNN
F 1 "GNDPWR" V 10255 2542 50  0000 R CNN
F 2 "" H 10250 2600 50  0001 C CNN
F 3 "" H 10250 2600 50  0001 C CNN
	1    10250 2650
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5ECDC520
P 1450 -450
F 0 "#FLG0104" H 1450 -375 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 -277 50  0000 C CNN
F 2 "" H 1450 -450 50  0001 C CNN
F 3 "~" H 1450 -450 50  0001 C CNN
	1    1450 -450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0135
U 1 1 5ECDC7FB
P 1450 -450
F 0 "#PWR0135" H 1450 -650 50  0001 C CNN
F 1 "GNDPWR" H 1454 -604 50  0000 C CNN
F 2 "" H 1450 -500 50  0001 C CNN
F 3 "" H 1450 -500 50  0001 C CNN
	1    1450 -450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0124
U 1 1 5EDAAB46
P 9600 1150
F 0 "#PWR0124" H 9600 950 50  0001 C CNN
F 1 "GNDPWR" V 9604 1041 50  0000 R CNN
F 2 "" H 9600 1100 50  0001 C CNN
F 3 "" H 9600 1100 50  0001 C CNN
	1    9600 1150
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0126
U 1 1 5EDACDA4
P 9600 2050
F 0 "#PWR0126" H 9600 1850 50  0001 C CNN
F 1 "GNDPWR" V 9604 1941 50  0000 R CNN
F 2 "" H 9600 2000 50  0001 C CNN
F 3 "" H 9600 2000 50  0001 C CNN
	1    9600 2050
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR0128
U 1 1 5EDAD31B
P 9600 2950
F 0 "#PWR0128" H 9600 2750 50  0001 C CNN
F 1 "GNDPWR" V 9604 2841 50  0000 R CNN
F 2 "" H 9600 2900 50  0001 C CNN
F 3 "" H 9600 2900 50  0001 C CNN
	1    9600 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5EE5E199
P 3500 1250
F 0 "C2" H 3615 1296 50  0000 L CNN
F 1 "100nF" H 3615 1205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3538 1100 50  0001 C CNN
F 3 "~" H 3500 1250 50  0001 C CNN
	1    3500 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EE5F83C
P 3500 1400
F 0 "#PWR06" H 3500 1150 50  0001 C CNN
F 1 "GND" H 3500 1250 50  0000 C CNN
F 2 "" H 3500 1400 50  0001 C CNN
F 3 "" H 3500 1400 50  0001 C CNN
	1    3500 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5EE5FA9B
P 3500 1100
F 0 "#PWR05" H 3500 950 50  0001 C CNN
F 1 "+5V" H 3515 1273 50  0000 C CNN
F 2 "" H 3500 1100 50  0001 C CNN
F 3 "" H 3500 1100 50  0001 C CNN
	1    3500 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5EE66733
P 3000 1250
F 0 "C1" H 3115 1296 50  0000 L CNN
F 1 "100nF" H 3115 1205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3038 1100 50  0001 C CNN
F 3 "~" H 3000 1250 50  0001 C CNN
	1    3000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5EE66739
P 3000 1400
F 0 "#PWR02" H 3000 1150 50  0001 C CNN
F 1 "GND" H 3000 1250 50  0000 C CNN
F 2 "" H 3000 1400 50  0001 C CNN
F 3 "" H 3000 1400 50  0001 C CNN
	1    3000 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5EE6AA4A
P 3000 1100
F 0 "#PWR01" H 3000 950 50  0001 C CNN
F 1 "+12V" H 3015 1273 50  0000 C CNN
F 2 "" H 3000 1100 50  0001 C CNN
F 3 "" H 3000 1100 50  0001 C CNN
	1    3000 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5EF0A90A
P 9800 1300
F 0 "J5" H 9880 1292 50  0000 L CNN
F 1 "Anderson" H 9880 1201 50  0000 L CNN
F 2 "_NTSFootprints:ASMPV45-1X2-RK" H 9800 1300 50  0001 C CNN
F 3 "~" H 9800 1300 50  0001 C CNN
	1    9800 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR07
U 1 1 5EF0B7F8
P 9600 1400
F 0 "#PWR07" H 9600 1200 50  0001 C CNN
F 1 "GNDPWR" V 9604 1291 50  0000 R CNN
F 2 "" H 9600 1350 50  0001 C CNN
F 3 "" H 9600 1350 50  0001 C CNN
	1    9600 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 1050 9150 1050
Connection ~ 9600 1050
Wire Wire Line
	9600 1300 9150 1300
Wire Wire Line
	9150 1300 9150 1050
Connection ~ 9150 1050
Wire Wire Line
	9150 1050 9050 1050
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5EF208ED
P 9800 2200
F 0 "J6" H 9880 2192 50  0000 L CNN
F 1 "Anderson" H 9880 2101 50  0000 L CNN
F 2 "_NTSFootprints:ASMPV45-1X2-RK" H 9800 2200 50  0001 C CNN
F 3 "~" H 9800 2200 50  0001 C CNN
	1    9800 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 5EF20F12
P 9800 3100
F 0 "J7" H 9880 3092 50  0000 L CNN
F 1 "Anderson" H 9880 3001 50  0000 L CNN
F 2 "_NTSFootprints:ASMPV45-1X2-RK" H 9800 3100 50  0001 C CNN
F 3 "~" H 9800 3100 50  0001 C CNN
	1    9800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1950 9150 1950
Connection ~ 9600 1950
Wire Wire Line
	9050 2850 9150 2850
Connection ~ 9600 2850
$Comp
L power:GNDPWR #PWR08
U 1 1 5EF399DC
P 9600 2300
F 0 "#PWR08" H 9600 2100 50  0001 C CNN
F 1 "GNDPWR" V 9604 2191 50  0000 R CNN
F 2 "" H 9600 2250 50  0001 C CNN
F 3 "" H 9600 2250 50  0001 C CNN
	1    9600 2300
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR09
U 1 1 5EF39C5D
P 9600 3200
F 0 "#PWR09" H 9600 3000 50  0001 C CNN
F 1 "GNDPWR" V 9604 3091 50  0000 R CNN
F 2 "" H 9600 3150 50  0001 C CNN
F 3 "" H 9600 3150 50  0001 C CNN
	1    9600 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 1950 9150 2200
Wire Wire Line
	9150 2200 9600 2200
Connection ~ 9150 1950
Wire Wire Line
	9150 1950 9600 1950
Wire Wire Line
	9150 2850 9150 3100
Wire Wire Line
	9150 3100 9600 3100
Connection ~ 9150 2850
Wire Wire Line
	9150 2850 9600 2850
$EndSCHEMATC
