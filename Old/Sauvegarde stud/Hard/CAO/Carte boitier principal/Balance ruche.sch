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
L Device:Q_PMOS_SGD Q1
U 1 1 6225D390
P 9650 1550
F 0 "Q1" V 9900 1400 50  0000 L CNN
F 1 "LP0701N3" V 10000 1400 50  0000 L CNN
F 2 "" H 9850 1650 50  0001 C CNN
F 3 "~" H 9650 1550 50  0001 C CNN
	1    9650 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 1350 9650 1200
Connection ~ 9650 1200
Wire Wire Line
	9650 1200 9850 1200
$Comp
L Device:R R13
U 1 1 6225EC00
P 10000 1200
F 0 "R13" V 9900 1150 50  0000 C CNN
F 1 "100kR" V 10100 1200 50  0000 C CNN
F 2 "" V 9930 1200 50  0001 C CNN
F 3 "~" H 10000 1200 50  0001 C CNN
	1    10000 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 1200 10300 1200
$Comp
L power:GND #PWR01
U 1 1 6225F6A6
P 10300 1300
F 0 "#PWR01" H 10300 1050 50  0001 C CNN
F 1 "GND" H 10305 1127 50  0000 C CNN
F 2 "" H 10300 1300 50  0001 C CNN
F 3 "" H 10300 1300 50  0001 C CNN
	1    10300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1200 10300 1300
Wire Wire Line
	9650 900  9650 1200
$Comp
L Balance-ruche:+5V_FUSED #PWR0101
U 1 1 62260C2A
P 9650 900
F 0 "#PWR0101" H 9650 750 50  0001 C CNN
F 1 "+5V_FUSED" H 9665 1073 50  0000 C CNN
F 2 "" H 9650 900 50  0001 C CNN
F 3 "" H 9650 900 50  0001 C CNN
	1    9650 900 
	1    0    0    -1  
$EndComp
$Comp
L Balance-ruche:+CELL #PWR0102
U 1 1 62262690
P 8600 1450
F 0 "#PWR0102" H 8600 1300 50  0001 C CNN
F 1 "+CELL" H 8615 1623 50  0000 C CNN
F 2 "" H 8600 1450 50  0001 C CNN
F 3 "" H 8600 1450 50  0001 C CNN
	1    8600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1650 8600 1450
Wire Wire Line
	8600 1700 8600 1650
$Comp
L power:GND #PWR0103
U 1 1 62264B6D
P 7950 2600
F 0 "#PWR0103" H 7950 2350 50  0001 C CNN
F 1 "GND" H 7955 2427 50  0000 C CNN
F 2 "" H 7950 2600 50  0001 C CNN
F 3 "" H 7950 2600 50  0001 C CNN
	1    7950 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2450 7950 2450
Wire Wire Line
	7950 2450 7950 2600
Wire Wire Line
	8600 2000 8600 2100
$Comp
L power:GND #PWR0104
U 1 1 622653F3
P 8600 2100
F 0 "#PWR0104" H 8600 1850 50  0001 C CNN
F 1 "GND" H 8605 1927 50  0000 C CNN
F 2 "" H 8600 2100 50  0001 C CNN
F 3 "" H 8600 2100 50  0001 C CNN
	1    8600 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 62263383
P 8600 1850
F 0 "C1" H 8715 1896 50  0000 L CNN
F 1 "4.7uF 10V" H 8715 1805 50  0000 L CNN
F 2 "" H 8638 1700 50  0001 C CNN
F 3 "~" H 8600 1850 50  0001 C CNN
	1    8600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1650 10950 1650
$Comp
L Balance-ruche:+CELL_ON #PWR0105
U 1 1 6226109B
P 10950 1450
F 0 "#PWR0105" H 10950 1300 50  0001 C CNN
F 1 "+CELL_ON" H 10965 1623 50  0000 C CNN
F 2 "" H 10950 1450 50  0001 C CNN
F 3 "" H 10950 1450 50  0001 C CNN
	1    10950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 1450 10950 1650
$Comp
L Balance-ruche:MCP73837 U1
U 1 1 622606FD
P 7350 1850
F 0 "U1" H 7350 2317 50  0000 C CNN
F 1 "MCP73837" H 7350 2226 50  0000 C CNN
F 2 "" H 7350 1400 50  0001 C CNN
F 3 "" H 6950 2200 50  0001 C CNN
	1    7350 1850
	1    0    0    -1  
$EndComp
NoConn ~ 7850 2050
Wire Wire Line
	7850 1850 7950 1850
Text Label 7950 1850 0    50   ~ 0
Therm
Text Notes 7900 1650 0    50   ~ 10
500mA\n(5 Unit load)
Text Notes 8300 1500 0    50   ~ 10
500mA
Text Notes 9100 1650 0    50   ~ 10
100mA
Text Notes 10600 1650 0    50   ~ 10
100mA
NoConn ~ 6850 1650
$Comp
L Balance-ruche:+5V_FUSED #PWR0107
U 1 1 6226656E
P 6500 1450
F 0 "#PWR0107" H 6500 1300 50  0001 C CNN
F 1 "+5V_FUSED" H 6515 1623 50  0000 C CNN
F 2 "" H 6500 1450 50  0001 C CNN
F 3 "" H 6500 1450 50  0001 C CNN
	1    6500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1450 6500 1650
Wire Wire Line
	6500 1850 6850 1850
$Comp
L power:GND #PWR0108
U 1 1 62267C32
P 6700 2600
F 0 "#PWR0108" H 6700 2350 50  0001 C CNN
F 1 "GND" H 6705 2427 50  0000 C CNN
F 2 "" H 6700 2600 50  0001 C CNN
F 3 "" H 6700 2600 50  0001 C CNN
	1    6700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2450 6700 2450
Wire Wire Line
	6700 2450 6700 2600
$Comp
L Device:R R1
U 1 1 622689A1
P 6300 2050
F 0 "R1" V 6200 2000 50  0000 C CNN
F 1 "330R" V 6400 2050 50  0000 C CNN
F 2 "" V 6230 2050 50  0001 C CNN
F 3 "~" H 6300 2050 50  0001 C CNN
	1    6300 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 62268D06
P 6600 2250
F 0 "R2" V 6500 2200 50  0000 C CNN
F 1 "300R" V 6700 2250 50  0000 C CNN
F 2 "" V 6530 2250 50  0001 C CNN
F 3 "~" H 6600 2250 50  0001 C CNN
	1    6600 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2250 6750 2250
Wire Wire Line
	6450 2050 6850 2050
Text Label 5550 2050 0    50   ~ 0
LED_EN_CHARGE
Wire Wire Line
	5550 2050 6150 2050
Wire Wire Line
	5550 2250 6450 2250
Text Label 5550 2250 0    50   ~ 0
LED_CHARGE_OK
$Comp
L Transistor_BJT:BC547 Q5
U 1 1 6226478B
P 14350 5050
F 0 "Q5" H 14541 5096 50  0000 L CNN
F 1 "BC547" H 14541 5005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 4975 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 14350 5050 50  0001 L CNN
	1    14350 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 62265407
P 14450 5400
F 0 "#PWR0109" H 14450 5150 50  0001 C CNN
F 1 "GND" H 14455 5227 50  0000 C CNN
F 2 "" H 14450 5400 50  0001 C CNN
F 3 "" H 14450 5400 50  0001 C CNN
	1    14450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 5400 14450 5250
$Comp
L Device:R R15
U 1 1 62269D9B
P 13550 4700
F 0 "R15" V 13450 4650 50  0000 C CNN
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
Text Label 14600 4700 0    50   ~ 0
DIG1
Wire Wire Line
	13250 4700 13250 4550
$Comp
L Transistor_BJT:BC557 Q4
U 1 1 62281591
P 14350 4300
F 0 "Q4" H 14541 4346 50  0000 L CNN
F 1 "BC557" H 14541 4255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 4225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 14350 4300 50  0001 L CNN
	1    14350 4300
	1    0    0    -1  
$EndComp
$Comp
L Balance-ruche:+5V_BOOST #PWR0110
U 1 1 62282240
P 14450 3900
F 0 "#PWR0110" H 14450 3750 50  0001 C CNN
F 1 "+5V_BOOST" H 14465 4073 50  0000 C CNN
F 2 "" H 14450 3900 50  0001 C CNN
F 3 "" H 14450 3900 50  0001 C CNN
	1    14450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 3900 14450 4100
$Comp
L Balance-ruche:+5V_BOOST #PWR0111
U 1 1 62284806
P 15000 1550
F 0 "#PWR0111" H 15000 1400 50  0001 C CNN
F 1 "+5V_BOOST" H 15015 1723 50  0000 C CNN
F 2 "" H 15000 1550 50  0001 C CNN
F 3 "" H 15000 1550 50  0001 C CNN
	1    15000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 62285437
P 15000 1850
F 0 "#PWR0112" H 15000 1600 50  0001 C CNN
F 1 "GND" H 15005 1677 50  0000 C CNN
F 2 "" H 15000 1850 50  0001 C CNN
F 3 "" H 15000 1850 50  0001 C CNN
	1    15000 1850
	1    0    0    -1  
$EndComp
$Comp
L Balance-ruche:+CELL_ON_ENA #PWR0113
U 1 1 6228C23E
P 13650 1550
F 0 "#PWR0113" H 13650 1400 50  0001 C CNN
F 1 "+CELL_ON_ENA" H 13665 1723 50  0000 C CNN
F 2 "" H 13650 1550 50  0001 C CNN
F 3 "" H 13650 1550 50  0001 C CNN
	1    13650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 1550 15000 1600
Wire Wire Line
	15000 1600 14850 1600
Wire Wire Line
	14850 1800 15000 1800
Wire Wire Line
	15000 1800 15000 1850
Wire Wire Line
	13650 1600 13650 1550
$Comp
L power:GND #PWR0114
U 1 1 6229193C
P 13650 1850
F 0 "#PWR0114" H 13650 1600 50  0001 C CNN
F 1 "GND" H 13655 1677 50  0000 C CNN
F 2 "" H 13650 1850 50  0001 C CNN
F 3 "" H 13650 1850 50  0001 C CNN
	1    13650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 1800 13650 1850
$Comp
L Balance-ruche:+CELL #PWR0115
U 1 1 62297127
P 1500 1100
F 0 "#PWR0115" H 1500 950 50  0001 C CNN
F 1 "+CELL" H 1515 1273 50  0000 C CNN
F 2 "" H 1500 1100 50  0001 C CNN
F 3 "" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 62297852
P 1500 1300
F 0 "#PWR0116" H 1500 1050 50  0001 C CNN
F 1 "GND" H 1505 1127 50  0000 C CNN
F 2 "" H 1500 1300 50  0001 C CNN
F 3 "" H 1500 1300 50  0001 C CNN
	1    1500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1100 1500 1150
Wire Wire Line
	1500 1150 1250 1150
Wire Wire Line
	1500 1300 1500 1250
Wire Wire Line
	1500 1250 1250 1250
Text Label 2800 1150 0    50   ~ 0
Therm
$Comp
L power:GND #PWR0117
U 1 1 6229B998
P 2800 1300
F 0 "#PWR0117" H 2800 1050 50  0001 C CNN
F 1 "GND" H 2805 1127 50  0000 C CNN
F 2 "" H 2800 1300 50  0001 C CNN
F 3 "" H 2800 1300 50  0001 C CNN
	1    2800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1300 2800 1250
Wire Wire Line
	2800 1250 2600 1250
Wire Wire Line
	2800 1150 2600 1150
Wire Wire Line
	13700 4700 14050 4700
Wire Wire Line
	14050 4300 14150 4300
Wire Wire Line
	14050 5050 14150 5050
Wire Wire Line
	14450 4500 14450 4700
Wire Wire Line
	14050 4300 14050 4700
Connection ~ 14050 4700
Wire Wire Line
	14050 4700 14050 5050
Text Notes 14850 4550 0    50   ~ 0
PLACE ONLY 1 BJT\nAccording to common 7seg
Text Notes 12400 3950 0    50   ~ 0
Ne faire qu'un seul code avec des ifdef ?\n==> monopoliser 1 GPIO pour cfg
$Comp
L Transistor_BJT:BC547 Q7
U 1 1 622AD3A9
P 14350 7150
F 0 "Q7" H 14541 7196 50  0000 L CNN
F 1 "BC547" H 14541 7105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 7075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 14350 7150 50  0001 L CNN
	1    14350 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 622AD3AF
P 14450 7500
F 0 "#PWR0118" H 14450 7250 50  0001 C CNN
F 1 "GND" H 14455 7327 50  0000 C CNN
F 2 "" H 14450 7500 50  0001 C CNN
F 3 "" H 14450 7500 50  0001 C CNN
	1    14450 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 7500 14450 7350
$Comp
L Device:R R16
U 1 1 622AD3B6
P 13550 6800
F 0 "R16" V 13450 6750 50  0000 C CNN
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
Text Label 14650 6800 0    50   ~ 0
DIG2
Wire Wire Line
	13250 6800 13250 6650
$Comp
L Transistor_BJT:BC557 Q6
U 1 1 622AD3C0
P 14350 6400
F 0 "Q6" H 14541 6446 50  0000 L CNN
F 1 "BC557" H 14541 6355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 6325 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 14350 6400 50  0001 L CNN
	1    14350 6400
	1    0    0    -1  
$EndComp
$Comp
L Balance-ruche:+5V_BOOST #PWR0119
U 1 1 622AD3C6
P 14450 6000
F 0 "#PWR0119" H 14450 5850 50  0001 C CNN
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
	14450 6600 14450 6800
Wire Wire Line
	14050 6400 14050 6800
Connection ~ 14050 6800
Wire Wire Line
	14050 6800 14050 7150
Text Notes 14850 6650 0    50   ~ 0
PLACE ONLY 1 BJT\nAccording to common 7seg
Text Notes 12400 6050 0    50   ~ 0
Ne faire qu'un seul code avec des ifdef ?\n==> monopoliser 1 GPIO pour cfg
$Comp
L Transistor_BJT:BC547 Q9
U 1 1 622B4FEF
P 14350 9200
F 0 "Q9" H 14541 9246 50  0000 L CNN
F 1 "BC547" H 14541 9155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 9125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 14350 9200 50  0001 L CNN
	1    14350 9200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 622B4FF5
P 14450 9550
F 0 "#PWR0120" H 14450 9300 50  0001 C CNN
F 1 "GND" H 14455 9377 50  0000 C CNN
F 2 "" H 14450 9550 50  0001 C CNN
F 3 "" H 14450 9550 50  0001 C CNN
	1    14450 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14450 9550 14450 9400
$Comp
L Device:R R17
U 1 1 622B4FFC
P 13550 8850
F 0 "R17" V 13450 8800 50  0000 C CNN
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
Text Label 14600 8850 0    50   ~ 0
DIG3
Wire Wire Line
	13250 8850 13250 8700
$Comp
L Transistor_BJT:BC557 Q8
U 1 1 622B5006
P 14350 8450
F 0 "Q8" H 14541 8496 50  0000 L CNN
F 1 "BC557" H 14541 8405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14550 8375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC556BTA-D.pdf" H 14350 8450 50  0001 L CNN
	1    14350 8450
	1    0    0    -1  
$EndComp
$Comp
L Balance-ruche:+5V_BOOST #PWR0121
U 1 1 622B500C
P 14450 8050
F 0 "#PWR0121" H 14450 7900 50  0001 C CNN
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
	14450 8650 14450 8850
Wire Wire Line
	14050 8450 14050 8850
Connection ~ 14050 8850
Wire Wire Line
	14050 8850 14050 9200
Text Notes 14900 8700 0    50   ~ 0
PLACE ONLY 1 BJT\nAccording to common 7seg
Text Notes 12400 8100 0    50   ~ 0
Ne faire qu'un seul code avec des ifdef ?\n==> monopoliser 1 GPIO pour cfg
Wire Wire Line
	13650 1600 13850 1600
Wire Wire Line
	13850 1800 13650 1800
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 622C17F4
P 2400 1250
F 0 "J2" H 2318 925 50  0000 C CNN
F 1 "Conn_01x02" H 2318 1016 50  0000 C CNN
F 2 "" H 2400 1250 50  0001 C CNN
F 3 "~" H 2400 1250 50  0001 C CNN
	1    2400 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 62294092
P 5550 9150
F 0 "#PWR0122" H 5550 8900 50  0001 C CNN
F 1 "GND" H 5555 8977 50  0000 C CNN
F 2 "" H 5550 9150 50  0001 C CNN
F 3 "" H 5550 9150 50  0001 C CNN
	1    5550 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 9150 5550 9100
Wire Wire Line
	5550 9100 5500 9100
Wire Wire Line
	5500 9100 5500 9000
Wire Wire Line
	5550 9100 5600 9100
Wire Wire Line
	5600 9100 5600 9000
Connection ~ 5550 9100
$Comp
L Balance-ruche:+5V_BOOST #PWR0123
U 1 1 6229952F
P 5700 6850
F 0 "#PWR0123" H 5700 6700 50  0001 C CNN
F 1 "+5V_BOOST" H 5715 7023 50  0000 C CNN
F 2 "" H 5700 6850 50  0001 C CNN
F 3 "" H 5700 6850 50  0001 C CNN
	1    5700 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6850 5700 7000
NoConn ~ 5600 7000
NoConn ~ 5400 7000
NoConn ~ 6000 7400
NoConn ~ 6000 7500
Text Label 4800 7400 2    50   ~ 0
RX
Text Label 4800 7500 2    50   ~ 0
TX
Wire Wire Line
	4800 7500 5000 7500
Text Label 4850 7600 2    50   ~ 0
DIG1_BASE
Text Label 4850 7700 2    50   ~ 0
DIG2_BASE
Text Label 4850 7800 2    50   ~ 0
DIG3_BASE
Wire Wire Line
	5000 7600 4850 7600
Wire Wire Line
	5000 7700 4850 7700
Wire Wire Line
	5000 7800 4850 7800
Text Notes 13050 2700 0    50   ~ 0
Préparer une option avec boost réglable (env. 7V) + LDO derrière ? \nBut : filtrer la tension\nNote : il y a déjà un LDO sur l'arduino. A voir la puissance...\nUA78M05, DCY (SOT-223 : 350m = ok. Pas fait le calcul avec RO)\n53°C/W en pckge DCY\nMax Virtual operating junction temp : 150°C (recommended 125)
Text Label 4850 7900 2    50   ~ 0
SEG_A_GPIO
Wire Wire Line
	5000 7900 4850 7900
Text Label 4850 8000 2    50   ~ 0
SEG_B_GPIO
Wire Wire Line
	5000 8000 4850 8000
Text Label 4850 8100 2    50   ~ 0
SEG_C_GPIO
Wire Wire Line
	5000 8100 4850 8100
Text Label 4850 8200 2    50   ~ 0
SEG_D_GPIO
Wire Wire Line
	5000 8200 4850 8200
Text Label 4850 8300 2    50   ~ 0
SEG_E_GPIO
Wire Wire Line
	5000 8300 4850 8300
Text Label 4850 8400 2    50   ~ 0
SEG_F_GPIO
Wire Wire Line
	5000 8400 4850 8400
Text Label 4850 8500 2    50   ~ 0
SEG_G_GPIO
Wire Wire Line
	5000 8500 4850 8500
Text Label 4850 8600 2    50   ~ 0
SEG_H_GPIO
Wire Wire Line
	5000 8600 4850 8600
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 622D37FC
P 1050 1250
F 0 "J1" H 968 925 50  0000 C CNN
F 1 "Conn_01x02" H 968 1016 50  0000 C CNN
F 2 "" H 1050 1250 50  0001 C CNN
F 3 "~" H 1050 1250 50  0001 C CNN
	1    1050 1250
	-1   0    0    1   
$EndComp
Connection ~ 8600 1650
Wire Wire Line
	8600 1650 9450 1650
$Comp
L Device:R R4
U 1 1 622A5289
P 2500 7050
F 0 "R4" V 2400 7000 50  0000 C CNN
F 1 "470R" V 2600 7050 50  0000 C CNN
F 2 "" V 2430 7050 50  0001 C CNN
F 3 "~" H 2500 7050 50  0001 C CNN
	1    2500 7050
	0    -1   1    0   
$EndComp
Text Label 2800 7050 0    50   ~ 0
SEG_A_GPIO
Wire Wire Line
	2650 7050 2800 7050
$Comp
L Device:R R5
U 1 1 622AA802
P 2500 7400
F 0 "R5" V 2400 7350 50  0000 C CNN
F 1 "470R" V 2600 7400 50  0000 C CNN
F 2 "" V 2430 7400 50  0001 C CNN
F 3 "~" H 2500 7400 50  0001 C CNN
	1    2500 7400
	0    -1   1    0   
$EndComp
Text Label 2800 7400 0    50   ~ 0
SEG_B_GPIO
Wire Wire Line
	2650 7400 2800 7400
$Comp
L Device:R R6
U 1 1 622ACC70
P 2500 7750
F 0 "R6" V 2400 7700 50  0000 C CNN
F 1 "470R" V 2600 7750 50  0000 C CNN
F 2 "" V 2430 7750 50  0001 C CNN
F 3 "~" H 2500 7750 50  0001 C CNN
	1    2500 7750
	0    -1   1    0   
$EndComp
Text Label 2800 7750 0    50   ~ 0
SEG_C_GPIO
Wire Wire Line
	2650 7750 2800 7750
$Comp
L Device:R R7
U 1 1 622AF1A3
P 2500 8100
F 0 "R7" V 2400 8050 50  0000 C CNN
F 1 "470R" V 2600 8100 50  0000 C CNN
F 2 "" V 2430 8100 50  0001 C CNN
F 3 "~" H 2500 8100 50  0001 C CNN
	1    2500 8100
	0    -1   1    0   
$EndComp
Text Label 2800 8100 0    50   ~ 0
SEG_D_GPIO
Wire Wire Line
	2650 8100 2800 8100
$Comp
L Device:R R8
U 1 1 622B1747
P 2500 8450
F 0 "R8" V 2400 8400 50  0000 C CNN
F 1 "470R" V 2600 8450 50  0000 C CNN
F 2 "" V 2430 8450 50  0001 C CNN
F 3 "~" H 2500 8450 50  0001 C CNN
	1    2500 8450
	0    -1   1    0   
$EndComp
Text Label 2800 8450 0    50   ~ 0
SEG_E_GPIO
Wire Wire Line
	2650 8450 2800 8450
Text Label 2200 7050 2    50   ~ 0
SEG_A
Wire Wire Line
	2200 7050 2350 7050
Text Label 2200 7400 2    50   ~ 0
SEG_B
Wire Wire Line
	2200 7400 2350 7400
Text Label 2200 7750 2    50   ~ 0
SEG_C
Wire Wire Line
	2200 7750 2350 7750
Text Label 2200 8100 2    50   ~ 0
SEG_D
Wire Wire Line
	2200 8100 2350 8100
Text Label 2200 8450 2    50   ~ 0
SEG_E
Wire Wire Line
	2200 8450 2350 8450
$Comp
L Device:R R9
U 1 1 622C245C
P 2500 8800
F 0 "R9" V 2400 8750 50  0000 C CNN
F 1 "470R" V 2600 8800 50  0000 C CNN
F 2 "" V 2430 8800 50  0001 C CNN
F 3 "~" H 2500 8800 50  0001 C CNN
	1    2500 8800
	0    -1   1    0   
$EndComp
Text Label 2800 8800 0    50   ~ 0
SEG_F_GPIO
Wire Wire Line
	2650 8800 2800 8800
$Comp
L Device:R R10
U 1 1 622C2464
P 2500 9150
F 0 "R10" V 2400 9100 50  0000 C CNN
F 1 "470R" V 2600 9150 50  0000 C CNN
F 2 "" V 2430 9150 50  0001 C CNN
F 3 "~" H 2500 9150 50  0001 C CNN
	1    2500 9150
	0    -1   1    0   
$EndComp
Text Label 2800 9150 0    50   ~ 0
SEG_G_GPIO
Wire Wire Line
	2650 9150 2800 9150
$Comp
L Device:R R11
U 1 1 622C246C
P 2500 9500
F 0 "R11" V 2400 9450 50  0000 C CNN
F 1 "470R" V 2600 9500 50  0000 C CNN
F 2 "" V 2430 9500 50  0001 C CNN
F 3 "~" H 2500 9500 50  0001 C CNN
	1    2500 9500
	0    -1   1    0   
$EndComp
Text Label 2800 9500 0    50   ~ 0
SEG_H_GPIO
Wire Wire Line
	2650 9500 2800 9500
Text Label 2200 8800 2    50   ~ 0
SEG_F
Wire Wire Line
	2200 8800 2350 8800
Text Label 2200 9150 2    50   ~ 0
SEG_G
Wire Wire Line
	2200 9150 2350 9150
Text Label 2200 9500 2    50   ~ 0
SEG_H
Wire Wire Line
	2200 9500 2350 9500
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 622B618B
P 7900 8700
F 0 "Q3" H 8091 8746 50  0000 L CNN
F 1 "BC547" H 8091 8655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8100 8625 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC550-D.pdf" H 7900 8700 50  0001 L CNN
	1    7900 8700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 622E0381
P 7800 9100
F 0 "#PWR0124" H 7800 8850 50  0001 C CNN
F 1 "GND" H 7805 8927 50  0000 C CNN
F 2 "" H 7800 9100 50  0001 C CNN
F 3 "" H 7800 9100 50  0001 C CNN
	1    7800 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 8900 7800 9100
$Comp
L Device:R R14
U 1 1 622E75E5
P 8450 8700
F 0 "R14" V 8350 8650 50  0000 C CNN
F 1 "10kR" V 8550 8700 50  0000 C CNN
F 2 "" V 8380 8700 50  0001 C CNN
F 3 "~" H 8450 8700 50  0001 C CNN
	1    8450 8700
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 8700 8100 8700
Wire Wire Line
	8600 8700 8800 8700
Wire Wire Line
	8800 8700 8800 8400
$Comp
L Balance-ruche:+5V_BOOST #PWR0125
U 1 1 622F7F68
P 8800 8400
F 0 "#PWR0125" H 8800 8250 50  0001 C CNN
F 1 "+5V_BOOST" H 8815 8573 50  0000 C CNN
F 2 "" H 8800 8400 50  0001 C CNN
F 3 "" H 8800 8400 50  0001 C CNN
	1    8800 8400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_SGD Q2
U 1 1 622FC38E
P 7800 8100
F 0 "Q2" V 8050 7950 50  0000 L CNN
F 1 "REF" V 8150 7950 50  0000 L CNN
F 2 "" H 8000 8200 50  0001 C CNN
F 3 "~" H 7800 8100 50  0001 C CNN
	1    7800 8100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 8300 7800 8500
Wire Wire Line
	6000 8000 6150 8000
Text Label 6150 8000 0    50   ~ 0
+CELL_ENA_ADC_IN
Wire Wire Line
	8000 8000 8400 8000
Wire Wire Line
	8400 8000 8400 7900
$Comp
L Balance-ruche:+CELL_ON #PWR0126
U 1 1 62326CC2
P 8400 7900
F 0 "#PWR0126" H 8400 7750 50  0001 C CNN
F 1 "+CELL_ON" H 8415 8073 50  0000 C CNN
F 2 "" H 8400 7900 50  0001 C CNN
F 3 "" H 8400 7900 50  0001 C CNN
	1    8400 7900
	1    0    0    -1  
$EndComp
Text Label 4850 8700 2    50   ~ 0
LED_LOW_BAT_GPIO
Wire Wire Line
	5000 8700 4850 8700
Text Notes 4300 9850 0    50   ~ 0
***SOFT*** :\nLOW BAT SEUIL 1 (xxV) : LED LOW BAT s'allume\nLOW BAT SEUIL 2 (xxV) : LED LOW BAT s'allume + afficheurs ne s'allument plus\nPrévoir un hystérésis pour chaque seuil (surtout seuil 2 car I diminue et Vbat va augmenter)\nLa LED verte s'allume toujours (pas gérée par Arduino)\nLa LED verte s'éteint suite au circuit UVP
$Comp
L Device:R R12
U 1 1 62365FE1
P 2500 9850
F 0 "R12" V 2400 9800 50  0000 C CNN
F 1 "470R" V 2600 9850 50  0000 C CNN
F 2 "" V 2430 9850 50  0001 C CNN
F 3 "~" H 2500 9850 50  0001 C CNN
	1    2500 9850
	0    -1   1    0   
$EndComp
Text Label 2800 9850 0    50   ~ 0
LED_LOW_BAT_GPIO
Wire Wire Line
	2650 9850 2800 9850
Text Label 2200 9850 2    50   ~ 0
LED_LOW_BAT
Wire Wire Line
	2200 9850 2350 9850
Wire Wire Line
	5000 7400 4800 7400
NoConn ~ 6000 8100
NoConn ~ 6000 8200
NoConn ~ 6000 8300
NoConn ~ 6000 8400
NoConn ~ 6000 8500
NoConn ~ 6000 8600
NoConn ~ 6000 8700
$Comp
L Balance-ruche:+5V_FUSED #PWR0127
U 1 1 622B930F
P 1550 2800
F 0 "#PWR0127" H 1550 2650 50  0001 C CNN
F 1 "+5V_FUSED" H 1565 2973 50  0000 C CNN
F 2 "" H 1550 2800 50  0001 C CNN
F 3 "" H 1550 2800 50  0001 C CNN
	1    1550 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 622BE142
P 1900 3950
F 0 "#PWR0128" H 1900 3700 50  0001 C CNN
F 1 "GND" H 1905 3777 50  0000 C CNN
F 2 "" H 1900 3950 50  0001 C CNN
F 3 "" H 1900 3950 50  0001 C CNN
	1    1900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2950 1550 2950
Wire Wire Line
	1550 2800 1550 2950
Text Label 2700 2950 0    50   ~ 0
SEG_A
Wire Wire Line
	2700 2950 2550 2950
Text Label 1900 3250 2    50   ~ 0
LED_LOW_BAT
Text Label 2750 3750 0    50   ~ 0
RX
Text Label 2750 3850 0    50   ~ 0
TX
Wire Wire Line
	2750 3850 2550 3850
Wire Wire Line
	2550 3750 2750 3750
Wire Wire Line
	14600 4700 14450 4700
Connection ~ 14450 4700
Wire Wire Line
	14450 4700 14450 4850
Wire Wire Line
	14650 6800 14450 6800
Connection ~ 14450 6800
Wire Wire Line
	14450 6800 14450 6950
Wire Wire Line
	14600 8850 14450 8850
Connection ~ 14450 8850
Wire Wire Line
	14450 8850 14450 9000
$Comp
L Balance-ruche:+5V_BOOST #PWR0129
U 1 1 623C07EC
P 950 3300
F 0 "#PWR0129" H 950 3150 50  0001 C CNN
F 1 "+5V_BOOST" H 965 3473 50  0000 C CNN
F 2 "" H 950 3300 50  0001 C CNN
F 3 "" H 950 3300 50  0001 C CNN
	1    950  3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3350 950  3300
Wire Wire Line
	2050 3850 1900 3850
Wire Wire Line
	1900 3850 1900 3950
Text Label 1900 3050 2    50   ~ 0
LED_EN_CHARGE
Text Label 1900 3150 2    50   ~ 0
LED_CHARGE_OK
Wire Wire Line
	950  3350 2050 3350
Wire Wire Line
	1900 3050 2050 3050
Wire Wire Line
	2050 3150 1900 3150
Wire Wire Line
	1900 3250 2050 3250
Text Label 2700 3050 0    50   ~ 0
SEG_B
Wire Wire Line
	2700 3050 2550 3050
Text Label 2700 3150 0    50   ~ 0
SEG_C
Wire Wire Line
	2700 3150 2550 3150
Text Label 2700 3250 0    50   ~ 0
SEG_D
Wire Wire Line
	2700 3250 2550 3250
Text Label 2700 3350 0    50   ~ 0
SEG_E
Wire Wire Line
	2700 3350 2550 3350
Text Label 2700 3450 0    50   ~ 0
SEG_F
Wire Wire Line
	2700 3450 2550 3450
Text Label 2700 3550 0    50   ~ 0
SEG_G
Wire Wire Line
	2700 3550 2550 3550
Text Label 2700 3650 0    50   ~ 0
SEG_H
Wire Wire Line
	2700 3650 2550 3650
Text Label 1900 3450 2    50   ~ 0
DIG1
Wire Wire Line
	1900 3450 2050 3450
Text Label 1900 3550 2    50   ~ 0
DIG2
Wire Wire Line
	1900 3550 2050 3550
Text Label 1900 3650 2    50   ~ 0
DIG3
Wire Wire Line
	1900 3650 2050 3650
$Comp
L Connector_Generic:Conn_02x10_Top_Bottom J3
U 1 1 622B8379
P 2250 3350
F 0 "J3" H 2300 3967 50  0000 C CNN
F 1 "Conn_02x10_Top_Bottom" H 2300 3876 50  0000 C CNN
F 2 "" H 2250 3350 50  0001 C CNN
F 3 "~" H 2250 3350 50  0001 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
NoConn ~ 2050 3750
$Comp
L Balance-ruche:BOOST_5V U2
U 1 1 6233AA7F
P 14350 1800
F 0 "U2" H 14350 2267 50  0000 C CNN
F 1 "BOOST_5V" H 14350 2176 50  0000 C CNN
F 2 "" H 14350 1350 50  0001 C CNN
F 3 "" H 13950 2150 50  0001 C CNN
	1    14350 1800
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 62262C29
P 5500 8000
F 0 "A1" H 5150 7050 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6150 7050 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5500 8000 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5500 8000 50  0001 C CNN
	1    5500 8000
	1    0    0    -1  
$EndComp
Text Label 7000 8500 2    50   ~ 0
+CELL_ENA_ADC_IN
$Comp
L Device:C C?
U 1 1 62327CAA
P 6250 1650
F 0 "C?" V 5998 1650 50  0000 C CNN
F 1 "10V 4.7uF" V 6089 1650 50  0000 C CNN
F 2 "" H 6288 1500 50  0001 C CNN
F 3 "~" H 6250 1650 50  0001 C CNN
	1    6250 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 1650 6500 1650
Connection ~ 6500 1650
Wire Wire Line
	6500 1650 6500 1850
$Comp
L power:GND #PWR?
U 1 1 623300F7
P 5950 1700
F 0 "#PWR?" H 5950 1450 50  0001 C CNN
F 1 "GND" H 5955 1527 50  0000 C CNN
F 2 "" H 5950 1700 50  0001 C CNN
F 3 "" H 5950 1700 50  0001 C CNN
	1    5950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1650 5950 1650
Wire Wire Line
	5950 1650 5950 1700
$Comp
L Device:R R?
U 1 1 62337B1C
P 7200 8300
F 0 "R?" V 7100 8250 50  0000 C CNN
F 1 "10kR" V 7300 8300 50  0000 C CNN
F 2 "" V 7130 8300 50  0001 C CNN
F 3 "~" H 7200 8300 50  0001 C CNN
	1    7200 8300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 62338095
P 7200 8700
F 0 "R?" V 7100 8650 50  0000 C CNN
F 1 "10kR" V 7300 8700 50  0000 C CNN
F 2 "" V 7130 8700 50  0001 C CNN
F 3 "~" H 7200 8700 50  0001 C CNN
	1    7200 8700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 8550 7200 8500
Wire Wire Line
	7200 8150 7200 8000
Wire Wire Line
	7200 8000 7600 8000
Wire Wire Line
	7000 8500 7200 8500
Connection ~ 7200 8500
Wire Wire Line
	7200 8500 7200 8450
NoConn ~ 6000 7800
$Comp
L power:GND #PWR?
U 1 1 623608A2
P 7200 9100
F 0 "#PWR?" H 7200 8850 50  0001 C CNN
F 1 "GND" H 7205 8927 50  0000 C CNN
F 2 "" H 7200 9100 50  0001 C CNN
F 3 "" H 7200 9100 50  0001 C CNN
	1    7200 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 9100 7200 8850
$Comp
L Balance-ruche:+5V_FUSED #PWR?
U 1 1 62329188
P 8150 2150
F 0 "#PWR?" H 8150 2000 50  0001 C CNN
F 1 "+5V_FUSED" H 8165 2323 50  0000 C CNN
F 2 "" H 8150 2150 50  0001 C CNN
F 3 "" H 8150 2150 50  0001 C CNN
	1    8150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2150 8150 2250
Wire Wire Line
	7850 2250 8150 2250
Wire Wire Line
	7850 1650 8600 1650
$EndSCHEMATC
