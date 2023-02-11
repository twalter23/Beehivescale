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
	3950 1500 4800 1500
Wire Notes Line
	4800 1500 4800 2300
Wire Notes Line
	4800 2300 3950 2300
Wire Notes Line
	3950 2300 3950 1500
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
F 1 "500mA fast FUSE" V 3100 1750 50  0000 C CNN
F 2 "" V 3130 1650 50  0001 C CNN
F 3 "~" H 3200 1650 50  0001 C CNN
	1    3200 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 1650 3450 1650
Wire Wire Line
	3450 1650 3950 1650
Wire Wire Line
	3950 1650 3950 2100
Wire Wire Line
	3950 2100 3450 2100
Connection ~ 3450 1650
Connection ~ 3450 2100
Text Notes 3950 1850 0    50   ~ 0
Overvoltage protection
Wire Notes Line
	5200 1500 6050 1500
Wire Notes Line
	6050 1500 6050 2300
Wire Notes Line
	6050 2300 5200 2300
Wire Notes Line
	5200 2300 5200 1500
Wire Wire Line
	5200 1650 5200 2100
Text Notes 5300 1950 0    50   ~ 0
Li Ion \nsingle cell charger\n
Wire Wire Line
	5200 1650 5000 1650
Wire Wire Line
	4800 2100 5200 2100
Wire Wire Line
	4800 1650 4800 2100
$Comp
L power:GND #PWR02
U 1 1 6232419A
P 7800 2550
F 0 "#PWR02" H 7800 2300 50  0001 C CNN
F 1 "GND" H 7805 2377 50  0000 C CNN
F 2 "" H 7800 2550 50  0001 C CNN
F 3 "" H 7800 2550 50  0001 C CNN
	1    7800 2550
	1    0    0    -1  
$EndComp
Wire Notes Line
	8600 1750 9450 1750
Wire Notes Line
	9450 1750 9450 2550
Wire Notes Line
	9450 2550 8600 2550
Wire Notes Line
	8600 2550 8600 1750
Wire Wire Line
	8600 1900 8600 2350
Text Notes 8700 2200 0    50   ~ 0
Undervoltage\nProtection
Wire Wire Line
	8600 2350 7800 2350
Connection ~ 7800 2350
Wire Wire Line
	9000 1750 9000 1600
Wire Wire Line
	8100 1600 9000 1600
Wire Wire Line
	7800 1800 7800 1900
$Comp
L Device:Q_PMOS_GDS Q2
U 1 1 6232CE0A
P 7900 1600
F 0 "Q2" H 8105 1646 50  0000 L CNN
F 1 "PMOS" H 8105 1555 50  0000 L CNN
F 2 "" H 8100 1700 50  0001 C CNN
F 3 "~" H 7900 1600 50  0001 C CNN
	1    7900 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 1900 8600 1900
Connection ~ 7800 1900
Wire Wire Line
	7800 2350 7800 2550
$Comp
L Device:Q_PMOS_GDS Q3
U 1 1 62332765
P 8600 1150
F 0 "Q3" V 8849 1150 50  0000 C CNN
F 1 "PMOS" V 8940 1150 50  0000 C CNN
F 2 "" H 8800 1250 50  0001 C CNN
F 3 "~" H 8600 1150 50  0001 C CNN
	1    8600 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 1250 7800 1250
Wire Wire Line
	7800 1250 7800 1400
Wire Wire Line
	5000 1650 5000 750 
Wire Wire Line
	8600 750  8600 950 
Connection ~ 5000 1650
Wire Wire Line
	5000 1650 4800 1650
Text Notes 8700 1100 0    50   ~ 0
Protection utilisation \nen charge
$Comp
L Device:Q_PMOS_GDS Q1
U 1 1 6233460C
P 7050 1550
F 0 "Q1" V 7299 1550 50  0000 C CNN
F 1 "PMOS" V 7390 1550 50  0000 C CNN
F 2 "" H 7250 1650 50  0001 C CNN
F 3 "~" H 7050 1550 50  0001 C CNN
	1    7050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 750  8600 750 
Wire Wire Line
	8800 1250 9300 1250
Text Notes 9200 1200 0    50   ~ 0
Vers DCDC
Wire Wire Line
	6050 2150 6500 2150
Wire Wire Line
	6500 2150 6500 2350
Wire Wire Line
	6500 2350 7800 2350
Wire Wire Line
	7250 1650 7250 1900
Wire Wire Line
	7250 1900 7800 1900
$Comp
L Device:Battery_Cell BT1
U 1 1 62321516
P 7800 2150
F 0 "BT1" H 7918 2246 50  0000 L CNN
F 1 "Battery_Cell" H 7918 2155 50  0000 L CNN
F 2 "" V 7800 2210 50  0001 C CNN
F 3 "~" V 7800 2210 50  0001 C CNN
	1    7800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1950 7800 1900
Wire Wire Line
	7800 2250 7800 2350
Wire Wire Line
	6050 2150 6050 1650
Text Notes 6300 1000 0    50   ~ 0
Protection V > 4.3V\n
Wire Notes Line
	6250 900  7100 900 
Wire Notes Line
	7100 900  7100 1100
Wire Notes Line
	7100 1100 6250 1100
Wire Notes Line
	6250 1100 6250 900 
Wire Wire Line
	6250 1000 6150 1000
Wire Wire Line
	6150 1000 6150 1650
Wire Wire Line
	6050 1650 6150 1650
Connection ~ 6150 1650
Wire Wire Line
	6150 1650 6850 1650
Wire Wire Line
	6650 1100 6650 1250
Wire Wire Line
	6650 1250 7050 1250
Wire Wire Line
	7050 1250 7050 1350
Text Notes 3950 1500 0    50   ~ 0
U1
Text Notes 5200 1500 0    50   ~ 0
U2
Text Notes 6250 900  0    50   ~ 0
U3\n
Text Notes 8600 1750 0    50   ~ 0
U4
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
$EndSCHEMATC
