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
$Comp
L Device:Q_PMOS_SGD Q?
U 1 1 6225D390
P 5050 2200
F 0 "Q?" V 5300 2050 50  0000 L CNN
F 1 "LP0701N3" V 5400 2050 50  0000 L CNN
F 2 "" H 5250 2300 50  0001 C CNN
F 3 "~" H 5050 2200 50  0001 C CNN
	1    5050 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2000 5050 1850
Connection ~ 5050 1850
Wire Wire Line
	5050 1850 5250 1850
$Comp
L Device:R R?
U 1 1 6225EC00
P 5400 1850
F 0 "R?" V 5300 1800 50  0000 C CNN
F 1 "100kR" V 5500 1850 50  0000 C CNN
F 2 "" V 5330 1850 50  0001 C CNN
F 3 "~" H 5400 1850 50  0001 C CNN
	1    5400 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1850 5700 1850
$Comp
L power:GND #PWR01
U 1 1 6225F6A6
P 5700 1950
F 0 "#PWR01" H 5700 1700 50  0001 C CNN
F 1 "GND" H 5705 1777 50  0000 C CNN
F 2 "" H 5700 1950 50  0001 C CNN
F 3 "" H 5700 1950 50  0001 C CNN
	1    5700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1850 5700 1950
Wire Wire Line
	5050 1550 5050 1850
$Comp
L Balance~ruche:+5V_FUSED #PWR?
U 1 1 62260C2A
P 5050 1550
F 0 "#PWR?" H 5050 1400 50  0001 C CNN
F 1 "+5V_FUSED" H 5065 1723 50  0000 C CNN
F 2 "" H 5050 1550 50  0001 C CNN
F 3 "" H 5050 1550 50  0001 C CNN
	1    5050 1550
	1    0    0    -1  
$EndComp
$Comp
L Balance~ruche:+CELL #PWR?
U 1 1 62262690
P 3750 2100
F 0 "#PWR?" H 3750 1950 50  0001 C CNN
F 1 "+CELL" H 3765 2273 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2300 3750 2100
Wire Wire Line
	4000 2350 4000 2300
$Comp
L power:GND #PWR?
U 1 1 62264B6D
P 3350 3250
F 0 "#PWR?" H 3350 3000 50  0001 C CNN
F 1 "GND" H 3355 3077 50  0000 C CNN
F 2 "" H 3350 3250 50  0001 C CNN
F 3 "" H 3350 3250 50  0001 C CNN
	1    3350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3100 3350 3100
Wire Wire Line
	3350 3100 3350 3250
Wire Wire Line
	3250 2300 3750 2300
Wire Wire Line
	4000 2650 4000 2750
$Comp
L power:GND #PWR?
U 1 1 622653F3
P 4000 2750
F 0 "#PWR?" H 4000 2500 50  0001 C CNN
F 1 "GND" H 4005 2577 50  0000 C CNN
F 2 "" H 4000 2750 50  0001 C CNN
F 3 "" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62263383
P 4000 2500
F 0 "C?" H 4115 2546 50  0000 L CNN
F 1 "4.7uF 10V" H 4115 2455 50  0000 L CNN
F 2 "" H 4038 2350 50  0001 C CNN
F 3 "~" H 4000 2500 50  0001 C CNN
	1    4000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2300 6350 2300
$Comp
L Balance~ruche:+CELL_ON #PWR?
U 1 1 6226109B
P 6350 2100
F 0 "#PWR?" H 6350 1950 50  0001 C CNN
F 1 "+CELL_ON" H 6365 2273 50  0000 C CNN
F 2 "" H 6350 2100 50  0001 C CNN
F 3 "" H 6350 2100 50  0001 C CNN
	1    6350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2100 6350 2300
$Comp
L Balance~ruche:MCP73837 U?
U 1 1 622606FD
P 2750 2500
F 0 "U?" H 2750 2967 50  0000 C CNN
F 1 "MCP73837" H 2750 2876 50  0000 C CNN
F 2 "" H 2750 2050 50  0001 C CNN
F 3 "" H 2350 2850 50  0001 C CNN
	1    2750 2500
	1    0    0    -1  
$EndComp
NoConn ~ 3250 2700
$Comp
L Device:R R?
U 1 1 62263414
P 3500 2900
F 0 "R?" V 3400 2850 50  0000 C CNN
F 1 "1kR" V 3600 2900 50  0000 C CNN
F 2 "" V 3430 2900 50  0001 C CNN
F 3 "~" H 3500 2900 50  0001 C CNN
	1    3500 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2900 3250 2900
$Comp
L power:GND #PWR?
U 1 1 62263AA3
P 3750 3050
F 0 "#PWR?" H 3750 2800 50  0001 C CNN
F 1 "GND" H 3755 2877 50  0000 C CNN
F 2 "" H 3750 3050 50  0001 C CNN
F 3 "" H 3750 3050 50  0001 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2900 3750 2900
Wire Wire Line
	3750 2900 3750 3050
Wire Wire Line
	3250 2500 3350 2500
Text Label 3350 2500 0    50   ~ 0
Therm
Text Notes 3450 2300 0    50   ~ 10
1A
Text Notes 3650 2200 0    50   ~ 10
1A
Text Notes 4500 2300 0    50   ~ 10
100mA
Text Notes 6000 2300 0    50   ~ 10
100mA
NoConn ~ 2250 2300
$Comp
L Balance~ruche:+5V_FUSED #PWR?
U 1 1 6226656E
P 1900 2100
F 0 "#PWR?" H 1900 1950 50  0001 C CNN
F 1 "+5V_FUSED" H 1915 2273 50  0000 C CNN
F 2 "" H 1900 2100 50  0001 C CNN
F 3 "" H 1900 2100 50  0001 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2100 1900 2500
Wire Wire Line
	1900 2500 2250 2500
$Comp
L power:GND #PWR?
U 1 1 62267C32
P 2100 3250
F 0 "#PWR?" H 2100 3000 50  0001 C CNN
F 1 "GND" H 2105 3077 50  0000 C CNN
F 2 "" H 2100 3250 50  0001 C CNN
F 3 "" H 2100 3250 50  0001 C CNN
	1    2100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3100 2100 3100
Wire Wire Line
	2100 3100 2100 3250
$Comp
L Device:R R?
U 1 1 622689A1
P 1700 2700
F 0 "R?" V 1600 2650 50  0000 C CNN
F 1 "330R" V 1800 2700 50  0000 C CNN
F 2 "" V 1630 2700 50  0001 C CNN
F 3 "~" H 1700 2700 50  0001 C CNN
	1    1700 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62268D06
P 2000 2900
F 0 "R?" V 1900 2850 50  0000 C CNN
F 1 "300R" V 2100 2900 50  0000 C CNN
F 2 "" V 1930 2900 50  0001 C CNN
F 3 "~" H 2000 2900 50  0001 C CNN
	1    2000 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 2900 2150 2900
Wire Wire Line
	1850 2700 2250 2700
Text Label 950  2700 0    50   ~ 0
LED_EN_CHARGE
Wire Wire Line
	950  2700 1550 2700
Wire Wire Line
	950  2900 1850 2900
Text Label 950  2900 0    50   ~ 0
LED_CHARGE_OK
$Comp
L Balance~ruche:BOOST_5V U?
U 1 1 6226A91E
P 7800 2100
F 0 "U?" H 7800 2567 50  0000 C CNN
F 1 "BOOST_5V" H 7800 2476 50  0000 C CNN
F 2 "" H 7800 1650 50  0001 C CNN
F 3 "" H 7400 2450 50  0001 C CNN
	1    7800 2100
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 62262C29
P 8100 5500
F 0 "A?" H 7750 4550 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 8750 4550 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8100 5500 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 8100 5500 50  0001 C CNN
	1    8100 5500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 6226478B
P 14350 5050
F 0 "Q?" H 14541 5096 50  0000 L CNN
F 1 "BC547" H 14541 5005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 4975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 14350 5050 50  0001 L CNN
	1    14350 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62265407
P 14450 5400
F 0 "#PWR?" H 14450 5150 50  0001 C CNN
F 1 "GND" H 14455 5227 50  0000 C CNN
F 2 "" H 14450 5400 50  0001 C CNN
F 3 "" H 14450 5400 50  0001 C CNN
	1    14450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 5400 14450 5250
$Comp
L Device:R R?
U 1 1 62269D9B
P 13550 4700
F 0 "R?" V 13450 4650 50  0000 C CNN
F 1 "470R" V 13650 4700 50  0000 C CNN
F 2 "" V 13480 4700 50  0001 C CNN
F 3 "~" H 13550 4700 50  0001 C CNN
	1    13550 4700
	0    1    1    0   
$EndComp
Text Label 13250 4550 1    50   ~ 0
DIG1_BASE
Wire Wire Line
	13400 4700 13250 4700
Text Label 14450 4700 0    50   ~ 0
DIG1
Wire Wire Line
	13250 4700 13250 4550
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 62281591
P 14350 4300
F 0 "Q?" H 14541 4346 50  0000 L CNN
F 1 "BC557" H 14541 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 4225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 14350 4300 50  0001 L CNN
	1    14350 4300
	1    0    0    -1  
$EndComp
$Comp
L Balance~ruche:+5V_BOOST #PWR?
U 1 1 62282240
P 14450 3900
F 0 "#PWR?" H 14450 3750 50  0001 C CNN
F 1 "+5V_BOOST" H 14465 4073 50  0000 C CNN
F 2 "" H 14450 3900 50  0001 C CNN
F 3 "" H 14450 3900 50  0001 C CNN
	1    14450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 3900 14450 4100
$Comp
L Balance~ruche:+5V_BOOST #PWR?
U 1 1 62284806
P 8450 1850
F 0 "#PWR?" H 8450 1700 50  0001 C CNN
F 1 "+5V_BOOST" H 8465 2023 50  0000 C CNN
F 2 "" H 8450 1850 50  0001 C CNN
F 3 "" H 8450 1850 50  0001 C CNN
	1    8450 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62285437
P 8450 2150
F 0 "#PWR?" H 8450 1900 50  0001 C CNN
F 1 "GND" H 8455 1977 50  0000 C CNN
F 2 "" H 8450 2150 50  0001 C CNN
F 3 "" H 8450 2150 50  0001 C CNN
	1    8450 2150
	1    0    0    -1  
$EndComp
$Comp
L Balance~ruche:+CELL_ON_ENA #PWR?
U 1 1 6228C23E
P 7100 1850
F 0 "#PWR?" H 7100 1700 50  0001 C CNN
F 1 "+CELL_ON_ENA" H 7115 2023 50  0000 C CNN
F 2 "" H 7100 1850 50  0001 C CNN
F 3 "" H 7100 1850 50  0001 C CNN
	1    7100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1850 8450 1900
Wire Wire Line
	8450 1900 8300 1900
Wire Wire Line
	8300 2100 8450 2100
Wire Wire Line
	8450 2100 8450 2150
Wire Wire Line
	7100 1900 7100 1850
$Comp
L power:GND #PWR?
U 1 1 6229193C
P 7100 2150
F 0 "#PWR?" H 7100 1900 50  0001 C CNN
F 1 "GND" H 7105 1977 50  0000 C CNN
F 2 "" H 7100 2150 50  0001 C CNN
F 3 "" H 7100 2150 50  0001 C CNN
	1    7100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2100 7100 2150
$Comp
L Balance~ruche:+CELL #PWR?
U 1 1 62297127
P 1800 850
F 0 "#PWR?" H 1800 700 50  0001 C CNN
F 1 "+CELL" H 1815 1023 50  0000 C CNN
F 2 "" H 1800 850 50  0001 C CNN
F 3 "" H 1800 850 50  0001 C CNN
	1    1800 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62297852
P 1800 1050
F 0 "#PWR?" H 1800 800 50  0001 C CNN
F 1 "GND" H 1805 877 50  0000 C CNN
F 2 "" H 1800 1050 50  0001 C CNN
F 3 "" H 1800 1050 50  0001 C CNN
	1    1800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 850  1800 900 
Wire Wire Line
	1800 900  1550 900 
Wire Wire Line
	1800 1050 1800 1000
Wire Wire Line
	1800 1000 1550 1000
Text Label 3100 900  0    50   ~ 0
Therm
$Comp
L power:GND #PWR?
U 1 1 6229B998
P 3100 1050
F 0 "#PWR?" H 3100 800 50  0001 C CNN
F 1 "GND" H 3105 877 50  0000 C CNN
F 2 "" H 3100 1050 50  0001 C CNN
F 3 "" H 3100 1050 50  0001 C CNN
	1    3100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1050 3100 1000
Wire Wire Line
	3100 1000 2900 1000
Wire Wire Line
	3100 900  2900 900 
Wire Wire Line
	13700 4700 14050 4700
Wire Wire Line
	14050 4300 14150 4300
Wire Wire Line
	14050 5050 14150 5050
Wire Wire Line
	14450 4500 14450 4850
Wire Wire Line
	14050 4300 14050 4700
Connection ~ 14050 4700
Wire Wire Line
	14050 4700 14050 5050
Text Notes 14850 4650 0    50   ~ 0
MOUNT ONLY 1 BJT\nAccording to common 7seg
Text Notes 12400 3950 0    50   ~ 0
Ne faire qu'un seul code avec des ifdef ?\n==> monopoliser 1 GPIO pour cfg
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 622AD3A9
P 14350 7150
F 0 "Q?" H 14541 7196 50  0000 L CNN
F 1 "BC547" H 14541 7105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 7075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 14350 7150 50  0001 L CNN
	1    14350 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 622AD3AF
P 14450 7500
F 0 "#PWR?" H 14450 7250 50  0001 C CNN
F 1 "GND" H 14455 7327 50  0000 C CNN
F 2 "" H 14450 7500 50  0001 C CNN
F 3 "" H 14450 7500 50  0001 C CNN
	1    14450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 7500 14450 7350
$Comp
L Device:R R?
U 1 1 622AD3B6
P 13550 6800
F 0 "R?" V 13450 6750 50  0000 C CNN
F 1 "470R" V 13650 6800 50  0000 C CNN
F 2 "" V 13480 6800 50  0001 C CNN
F 3 "~" H 13550 6800 50  0001 C CNN
	1    13550 6800
	0    1    1    0   
$EndComp
Text Label 13250 6650 1    50   ~ 0
DIG2_BASE
Wire Wire Line
	13400 6800 13250 6800
Text Label 14450 6800 0    50   ~ 0
DIG2
Wire Wire Line
	13250 6800 13250 6650
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 622AD3C0
P 14350 6400
F 0 "Q?" H 14541 6446 50  0000 L CNN
F 1 "BC557" H 14541 6355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 6325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 14350 6400 50  0001 L CNN
	1    14350 6400
	1    0    0    -1  
$EndComp
$Comp
L Balance~ruche:+5V_BOOST #PWR?
U 1 1 622AD3C6
P 14450 6000
F 0 "#PWR?" H 14450 5850 50  0001 C CNN
F 1 "+5V_BOOST" H 14465 6173 50  0000 C CNN
F 2 "" H 14450 6000 50  0001 C CNN
F 3 "" H 14450 6000 50  0001 C CNN
	1    14450 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 6000 14450 6200
Wire Wire Line
	13700 6800 14050 6800
Wire Wire Line
	14050 6400 14150 6400
Wire Wire Line
	14050 7150 14150 7150
Wire Wire Line
	14450 6600 14450 6950
Wire Wire Line
	14050 6400 14050 6800
Connection ~ 14050 6800
Wire Wire Line
	14050 6800 14050 7150
Text Notes 14850 6750 0    50   ~ 0
MOUNT ONLY 1 BJT\nAccording to common 7seg
Text Notes 12400 6050 0    50   ~ 0
Ne faire qu'un seul code avec des ifdef ?\n==> monopoliser 1 GPIO pour cfg
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 622B4FEF
P 14350 9200
F 0 "Q?" H 14541 9246 50  0000 L CNN
F 1 "BC547" H 14541 9155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 9125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 14350 9200 50  0001 L CNN
	1    14350 9200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 622B4FF5
P 14450 9550
F 0 "#PWR?" H 14450 9300 50  0001 C CNN
F 1 "GND" H 14455 9377 50  0000 C CNN
F 2 "" H 14450 9550 50  0001 C CNN
F 3 "" H 14450 9550 50  0001 C CNN
	1    14450 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 9550 14450 9400
$Comp
L Device:R R?
U 1 1 622B4FFC
P 13550 8850
F 0 "R?" V 13450 8800 50  0000 C CNN
F 1 "470R" V 13650 8850 50  0000 C CNN
F 2 "" V 13480 8850 50  0001 C CNN
F 3 "~" H 13550 8850 50  0001 C CNN
	1    13550 8850
	0    1    1    0   
$EndComp
Text Label 13250 8700 1    50   ~ 0
DIG3_BASE
Wire Wire Line
	13400 8850 13250 8850
Text Label 14450 8850 0    50   ~ 0
DIG3
Wire Wire Line
	13250 8850 13250 8700
$Comp
L Transistor_BJT:BC557 Q?
U 1 1 622B5006
P 14350 8450
F 0 "Q?" H 14541 8496 50  0000 L CNN
F 1 "BC557" H 14541 8405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 8375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 14350 8450 50  0001 L CNN
	1    14350 8450
	1    0    0    -1  
$EndComp
$Comp
L Balance~ruche:+5V_BOOST #PWR?
U 1 1 622B500C
P 14450 8050
F 0 "#PWR?" H 14450 7900 50  0001 C CNN
F 1 "+5V_BOOST" H 14465 8223 50  0000 C CNN
F 2 "" H 14450 8050 50  0001 C CNN
F 3 "" H 14450 8050 50  0001 C CNN
	1    14450 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 8050 14450 8250
Wire Wire Line
	13700 8850 14050 8850
Wire Wire Line
	14050 8450 14150 8450
Wire Wire Line
	14050 9200 14150 9200
Wire Wire Line
	14450 8650 14450 9000
Wire Wire Line
	14050 8450 14050 8850
Connection ~ 14050 8850
Wire Wire Line
	14050 8850 14050 9200
Text Notes 14850 8800 0    50   ~ 0
MOUNT ONLY 1 BJT\nAccording to common 7seg
Text Notes 12400 8100 0    50   ~ 0
Ne faire qu'un seul code avec des ifdef ?\n==> monopoliser 1 GPIO pour cfg
Wire Wire Line
	7100 1900 7300 1900
Wire Wire Line
	7300 2100 7100 2100
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 622C17F4
P 2700 1000
F 0 "J?" H 2618 675 50  0000 C CNN
F 1 "Conn_01x02" H 2618 766 50  0000 C CNN
F 2 "" H 2700 1000 50  0001 C CNN
F 3 "~" H 2700 1000 50  0001 C CNN
	1    2700 1000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62294092
P 8150 6650
F 0 "#PWR?" H 8150 6400 50  0001 C CNN
F 1 "GND" H 8155 6477 50  0000 C CNN
F 2 "" H 8150 6650 50  0001 C CNN
F 3 "" H 8150 6650 50  0001 C CNN
	1    8150 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 6650 8150 6600
Wire Wire Line
	8150 6600 8100 6600
Wire Wire Line
	8100 6600 8100 6500
Wire Wire Line
	8150 6600 8200 6600
Wire Wire Line
	8200 6600 8200 6500
Connection ~ 8150 6600
$Comp
L Balance~ruche:+5V_BOOST #PWR?
U 1 1 6229952F
P 8300 4350
F 0 "#PWR?" H 8300 4200 50  0001 C CNN
F 1 "+5V_BOOST" H 8315 4523 50  0000 C CNN
F 2 "" H 8300 4350 50  0001 C CNN
F 3 "" H 8300 4350 50  0001 C CNN
	1    8300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4350 8300 4500
NoConn ~ 8200 4500
NoConn ~ 8000 4500
NoConn ~ 8600 4900
NoConn ~ 8600 5000
NoConn ~ 8600 5300
Text Label 7400 4900 2    50   ~ 0
RX
Wire Wire Line
	7400 4900 7600 4900
Text Label 7400 5000 2    50   ~ 0
TX
Wire Wire Line
	7400 5000 7600 5000
Text Label 7450 5100 2    50   ~ 0
DIG1_BASE
Text Label 7450 5200 2    50   ~ 0
DIG2_BASE
Text Label 7450 5300 2    50   ~ 0
DIG3_BASE
Wire Wire Line
	7600 5100 7450 5100
Wire Wire Line
	7600 5200 7450 5200
Wire Wire Line
	7600 5300 7450 5300
Text Notes 6700 1250 0    50   ~ 0
Préparer une option avec boost réglable (env. 7V) + LDO derrière ? \nBut : filtrer la tension\nNote : il y a déjà un LDO sur l'arduino. A voir la puissance...\nUA78M05, DCY (SOT-223 : 350m = ok. Pas fait le calcul avec RO)\n53°C/W en pckge DCY\nMax Virtual operating junction temp : 150°C (recommended 125)
Text Label 7450 5400 2    50   ~ 0
SEG_1
Wire Wire Line
	7600 5400 7450 5400
Text Label 7450 5500 2    50   ~ 0
SEG_2
Wire Wire Line
	7600 5500 7450 5500
Text Label 7450 5600 2    50   ~ 0
SEG_3
Wire Wire Line
	7600 5600 7450 5600
Text Label 7450 5700 2    50   ~ 0
SEG_4
Wire Wire Line
	7600 5700 7450 5700
Text Label 7450 5800 2    50   ~ 0
SEG_5
Wire Wire Line
	7600 5800 7450 5800
Text Label 7450 5900 2    50   ~ 0
SEG_6
Wire Wire Line
	7600 5900 7450 5900
Text Label 7450 6000 2    50   ~ 0
SEG_7
Wire Wire Line
	7600 6000 7450 6000
Text Label 7450 6100 2    50   ~ 0
SEG_8
Wire Wire Line
	7600 6100 7450 6100
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 622D37FC
P 1350 1000
F 0 "J?" H 1268 675 50  0000 C CNN
F 1 "Conn_01x02" H 1268 766 50  0000 C CNN
F 2 "" H 1350 1000 50  0001 C CNN
F 3 "~" H 1350 1000 50  0001 C CNN
	1    1350 1000
	-1   0    0    1   
$EndComp
Connection ~ 3750 2300
Wire Wire Line
	3750 2300 4000 2300
Connection ~ 4000 2300
Wire Wire Line
	4000 2300 4850 2300
$EndSCHEMATC