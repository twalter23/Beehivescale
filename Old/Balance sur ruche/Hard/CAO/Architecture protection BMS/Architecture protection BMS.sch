EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	1750 1400 2800 1400
Wire Notes Line
	2800 1400 2800 2250
Wire Notes Line
	2800 2250 1750 2250
Wire Notes Line
	1750 2250 1750 1400
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 623172AA
P 2250 1800
F 0 "D1" H 2594 1846 50  0000 L CNN
F 1 "D_Bridge_+-AA" H 2500 1550 50  0001 L CNN
F 2 "" H 2250 1800 50  0001 C CNN
F 3 "~" H 2250 1800 50  0001 C CNN
	1    2250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2050 1300 2050
Wire Wire Line
	1750 1650 1300 1650
Text Notes 1350 1650 0    50   ~ 0
+230VAC
Text Notes 2800 1650 0    50   ~ 0
+5V
$Comp
L power:GND #PWR01
U 1 1 623185F7
P 3100 2150
F 0 "#PWR01" H 3100 1900 50  0001 C CNN
F 1 "GND" H 3105 1977 50  0000 C CNN
F 2 "" H 3100 2150 50  0001 C CNN
F 3 "" H 3100 2150 50  0001 C CNN
	1    3100 2150
	1    0    0    -1  
$EndComp
Wire Notes Line
	4100 1350 4950 1350
Wire Wire Line
	2800 2100 3100 2100
Wire Wire Line
	3100 2150 3100 2100
Connection ~ 3100 2100
Wire Wire Line
	3450 2050 3450 2100
Wire Wire Line
	3100 2100 3450 2100
Wire Wire Line
	3450 1750 3450 1650
Wire Wire Line
	2800 1650 3050 1650
$Comp
L Device:Fuse F1
U 1 1 6231DCEF
P 3200 1650
F 0 "F1" V 3000 1700 50  0000 C CNN
F 1 "500mA fast" V 3100 1750 50  0000 C CNN
F 2 "" V 3130 1650 50  0001 C CNN
F 3 "~" H 3200 1650 50  0001 C CNN
	1    3200 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 1650 3450 1650
Text Notes 4350 2400 0    50   ~ 0
BQ2438x\nFront end \novervoltage\novercurrent\nprotection
Wire Notes Line
	5350 1500 6200 1500
Wire Notes Line
	6200 1500 6200 2300
Wire Notes Line
	6200 2300 5350 2300
Wire Notes Line
	5350 2300 5350 1500
Text Notes 5450 2000 0    50   ~ 0
MCP73837\nLi Ion \nsingle cell charger\n
Text Notes 4100 1350 0    50   ~ 0
U1
Text Notes 5350 1500 0    50   ~ 0
U2
$Comp
L Diode:SM6T220A D2
U 1 1 6231C5A3
P 3450 1900
F 0 "D2" V 3404 1980 50  0000 L CNN
F 1 "TVS 5V" V 3495 1980 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 3450 1700 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/sm6t.pdf" H 3400 1900 50  0001 C CNN
	1    3450 1900
	0    1    1    0   
$EndComp
Connection ~ 3450 1650
Wire Wire Line
	4750 1650 5350 1650
$Comp
L power:GND #PWR?
U 1 1 6239EABD
P 6750 2300
F 0 "#PWR?" H 6750 2050 50  0001 C CNN
F 1 "GND" H 6755 2127 50  0000 C CNN
F 2 "" H 6750 2300 50  0001 C CNN
F 3 "" H 6750 2300 50  0001 C CNN
	1    6750 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 623B3298
P 4550 1750
F 0 "Q?" V 4892 1750 50  0000 C CNN
F 1 "NMOS" V 4801 1750 50  0000 C CNN
F 2 "" H 4750 1850 50  0001 C CNN
F 3 "~" H 4550 1750 50  0001 C CNN
	1    4550 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 623BB541
P 6500 1600
F 0 "F?" V 6300 1650 50  0000 C CNN
F 1 "500mA fast" V 6400 1700 50  0000 C CNN
F 2 "" V 6430 1600 50  0001 C CNN
F 3 "~" H 6500 1600 50  0001 C CNN
	1    6500 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 1600 6200 1600
Wire Wire Line
	6300 1750 6300 2500
Wire Notes Line
	4950 2400 4100 2400
Wire Notes Line
	4950 1350 4950 2400
Wire Notes Line
	4100 1350 4100 2400
Wire Wire Line
	6300 2500 5100 2500
Wire Wire Line
	5100 2500 5100 2150
Wire Wire Line
	5100 2150 4950 2150
$Comp
L Device:Battery_Cell BT?
U 1 1 6239E17F
P 6750 2050
F 0 "BT?" H 6600 2200 50  0000 L CNN
F 1 "Battery_Cell" H 6800 2000 50  0000 L CNN
F 2 "" V 6750 2110 50  0001 C CNN
F 3 "~" V 6750 2110 50  0001 C CNN
	1    6750 2050
	1    0    0    -1  
$EndComp
Text Notes 5000 2150 0    50   ~ 0
BQ2438\nSense
Wire Wire Line
	6750 2150 6750 2200
Wire Wire Line
	6650 1600 6750 1600
Wire Wire Line
	6750 1600 6750 1750
Wire Wire Line
	6750 1750 6300 1750
Connection ~ 6750 1750
Wire Wire Line
	6750 1750 6750 1850
Wire Wire Line
	3450 1650 3900 1650
Text Notes 9800 1550 0    50   ~ 0
Protection utilisation \nen charge
Connection ~ 3900 1650
Wire Wire Line
	3900 1650 4350 1650
$Comp
L Device:R Pulldown
U 1 1 6239F0F7
P 11450 1600
F 0 "Pulldown" V 11350 1450 50  0000 L CNN
F 1 "R" V 11550 1650 50  0000 L CNN
F 2 "" V 11380 1600 50  0001 C CNN
F 3 "~" H 11450 1600 50  0001 C CNN
	1    11450 1600
	0    -1   -1   0   
$EndComp
Wire Notes Line
	7350 2350 8100 2350
Wire Notes Line
	8100 2350 8100 1500
Wire Notes Line
	8100 1500 7350 1500
Wire Notes Line
	7350 1500 7350 2350
Text Notes 7500 2150 0    50   ~ 0
Undervoltage\nProtection\nCharge pump\nPour grille\nMOS
Wire Wire Line
	3900 1650 3900 3400
Text Notes 11350 1150 0    50   ~ 0
Vers DCDC
Wire Wire Line
	11450 1200 11200 1200
$Comp
L Device:Q_NMOS_DGS Q?
U 1 1 623CAF9A
P 11000 1300
F 0 "Q?" H 10850 1150 50  0000 L CNN
F 1 "NMOS" H 10750 1450 50  0000 L CNN
F 2 "" H 11200 1400 50  0001 C CNN
F 3 "~" H 11000 1300 50  0001 C CNN
	1    11000 1300
	0    -1   -1   0   
$EndComp
Text Notes 10800 1000 0    50   ~ 0
Undervoltage\nProtection\nMOS externe
$Comp
L power:GND #PWR?
U 1 1 623CAFA2
P 11700 1600
F 0 "#PWR?" H 11700 1350 50  0001 C CNN
F 1 "GND" V 11700 1350 50  0000 C CNN
F 2 "" H 11700 1600 50  0001 C CNN
F 3 "" H 11700 1600 50  0001 C CNN
	1    11700 1600
	0    -1   -1   0   
$EndComp
Wire Notes Line
	10700 1500 11300 1500
Wire Notes Line
	11300 700  10700 700 
Wire Notes Line
	11300 700  11300 1500
Wire Notes Line
	10700 700  10700 1500
Wire Wire Line
	11600 1600 11700 1600
Wire Wire Line
	11300 1600 11000 1600
Wire Wire Line
	11000 1500 11000 1600
Wire Wire Line
	10500 1200 10800 1200
Wire Wire Line
	6750 1750 7350 1750
Wire Wire Line
	6750 2200 7350 2200
Connection ~ 6750 2200
Wire Wire Line
	6750 2200 6750 2300
Wire Wire Line
	3900 3400 7750 3400
Wire Wire Line
	7750 3400 7750 2350
Wire Wire Line
	8100 1750 8400 1750
$EndSCHEMATC
