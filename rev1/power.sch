EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Commodity - Power"
Date "2020-07-13"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+BATT #PWR053
U 1 1 5F1ABCCD
P 825 3125
AR Path="/5F0DCA87/5F1ABCCD" Ref="#PWR053"  Part="1" 
AR Path="/5F1A6785/5F1ABCCD" Ref="#PWR?"  Part="1" 
F 0 "#PWR053" H 825 2975 50  0001 C CNN
F 1 "+BATT" H 840 3298 50  0000 C CNN
F 2 "" H 825 3125 50  0001 C CNN
F 3 "" H 825 3125 50  0001 C CNN
	1    825  3125
	1    0    0    -1  
$EndComp
Text Notes 800  4100 0    118  Italic 0
Battery Buck - 5v
Text Notes 750  2525 0    118  Italic 0
Power Connectors
Text GLabel 6975 1200 0    50   Input ~ 0
I2C1_SCL
Text GLabel 6975 1300 0    50   Input ~ 0
I2C1_SDA
$Comp
L power:GND #PWR047
U 1 1 5F1ABCD6
P 6875 1700
AR Path="/5F0DCA87/5F1ABCD6" Ref="#PWR047"  Part="1" 
AR Path="/5F1A6785/5F1ABCD6" Ref="#PWR?"  Part="1" 
F 0 "#PWR047" H 6875 1450 50  0001 C CNN
F 1 "GND" H 6875 1550 50  0000 C CNN
F 2 "" H 6875 1700 50  0001 C CNN
F 3 "" H 6875 1700 50  0001 C CNN
	1    6875 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6975 1400 6875 1400
Wire Wire Line
	6875 1400 6875 1500
Wire Wire Line
	6975 1500 6875 1500
Connection ~ 6875 1500
Wire Wire Line
	6875 1500 6875 1700
$Comp
L power:+3.3V #PWR?
U 1 1 5F178E91
P 8825 1025
AR Path="/5F178E91" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F178E91" Ref="#PWR045"  Part="1" 
AR Path="/5F1A6785/5F178E91" Ref="#PWR?"  Part="1" 
F 0 "#PWR045" H 8825 875 50  0001 C CNN
F 1 "+3.3V" H 8840 1198 50  0000 C CNN
F 2 "" H 8825 1025 50  0001 C CNN
F 3 "" H 8825 1025 50  0001 C CNN
	1    8825 1025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5F17F51E
P 8825 1725
AR Path="/5F0DCA87/5F17F51E" Ref="#PWR048"  Part="1" 
AR Path="/5F1A6785/5F17F51E" Ref="#PWR?"  Part="1" 
F 0 "#PWR048" H 8825 1475 50  0001 C CNN
F 1 "GND" H 8830 1552 50  0000 C CNN
F 2 "" H 8825 1725 50  0001 C CNN
F 3 "" H 8825 1725 50  0001 C CNN
	1    8825 1725
	1    0    0    -1  
$EndComp
Text Notes 5600 750  0    118  Italic 0
Power Monitor
$Comp
L Device:C_Small C26
U 1 1 5F1ABCF0
P 1425 6225
AR Path="/5F0DCA87/5F1ABCF0" Ref="C26"  Part="1" 
AR Path="/5F1A6785/5F1ABCF0" Ref="C?"  Part="1" 
F 0 "C26" H 1517 6271 50  0000 L CNN
F 1 "10u" H 1517 6180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1425 6225 50  0001 C CNN
F 3 "~" H 1425 6225 50  0001 C CNN
F 4 "C15850" H 1425 6225 50  0001 C CNN "LCSC"
F 5 "Cin" H 1425 6225 50  0001 C CNN "WeBench"
	1    1425 6225
	1    0    0    -1  
$EndComp
Text Notes 2850 4350 0    50   ~ 0
TPS6213x 3-V to17-V, 3-A Step-Down Converter In 3x3 QFN Package\n\nDesign: https://webench.ti.com/appinfo/webench/scripts/SDP.cgi?ID=83210779DEE30CCE\nDatasheet: https://www.ti.com/lit/ds/symlink/tps62133.pdf\nReverse Polarity Protection: https://www.ti.com/lit/an/slva139/slva139.pdf\nMax Ripple: 5% @ 5V\n
Wire Notes Line
	5350 475  5350 3775
$Comp
L Device:C_Small C37
U 1 1 5F1ABCF1
P 8825 1350
AR Path="/5F0DCA87/5F1ABCF1" Ref="C37"  Part="1" 
AR Path="/5F1A6785/5F1ABCF1" Ref="C?"  Part="1" 
F 0 "C37" H 8917 1396 50  0000 L CNN
F 1 "100n" H 8917 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8825 1350 50  0001 C CNN
F 3 "~" H 8825 1350 50  0001 C CNN
F 4 "C14663" H 8825 1350 50  0001 C CNN "LCSC"
	1    8825 1350
	1    0    0    -1  
$EndComp
Text GLabel 7975 1400 2    50   Input ~ 0
INA_VIN-
Wire Wire Line
	8825 1200 8825 1025
Wire Wire Line
	7975 1200 8825 1200
Wire Wire Line
	8825 1200 8825 1250
Connection ~ 8825 1200
Wire Wire Line
	7975 1300 8575 1300
Wire Wire Line
	8575 1300 8575 1575
Wire Wire Line
	8575 1575 8825 1575
Wire Wire Line
	8825 1575 8825 1450
Wire Wire Line
	8825 1575 8825 1725
Connection ~ 8825 1575
Text GLabel 7975 1500 2    50   Input ~ 0
INA_VIN+
Text GLabel 10350 1575 3    50   Input ~ 0
INA_VIN+
Text GLabel 10650 1575 3    50   Input ~ 0
INA_VIN-
$Comp
L Device:R_Small R18
U 1 1 5F1ABCF3
P 10500 1575
AR Path="/5F0DCA87/5F1ABCF3" Ref="R18"  Part="1" 
AR Path="/5F1A6785/5F1ABCF3" Ref="R?"  Part="1" 
F 0 "R18" H 10559 1621 50  0000 L CNN
F 1 "0.01" H 10559 1530 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" H 10500 1575 50  0001 C CNN
F 3 "~" H 10500 1575 50  0001 C CNN
F 4 "1435952RL" H 10500 1575 50  0001 C CNN "Farnell"
	1    10500 1575
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5F1ABCF4
P 10650 875
AR Path="/5F0DCA87/5F1ABCF4" Ref="#PWR0106"  Part="1" 
AR Path="/5F1A6785/5F1ABCF4" Ref="#PWR?"  Part="1" 
F 0 "#PWR0106" H 10650 725 50  0001 C CNN
F 1 "VCC" H 10665 1048 50  0000 C CNN
F 2 "" H 10650 875 50  0001 C CNN
F 3 "" H 10650 875 50  0001 C CNN
	1    10650 875 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F1ABCF5
P 825 3225
AR Path="/5F0DCA87/5F1ABCF5" Ref="#PWR0108"  Part="1" 
AR Path="/5F1A6785/5F1ABCF5" Ref="#PWR?"  Part="1" 
F 0 "#PWR0108" H 825 2975 50  0001 C CNN
F 1 "GND" H 830 3052 50  0000 C CNN
F 2 "" H 825 3225 50  0001 C CNN
F 3 "" H 825 3225 50  0001 C CNN
	1    825  3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 1575 10400 1575
Wire Wire Line
	10650 875  10650 1575
Wire Notes Line
	475  2200 11225 2200
Wire Wire Line
	10600 1575 10650 1575
$Comp
L power:+BATT #PWR0105
U 1 1 5F1ABCF2
P 10350 875
AR Path="/5F0DCA87/5F1ABCF2" Ref="#PWR0105"  Part="1" 
AR Path="/5F1A6785/5F1ABCF2" Ref="#PWR?"  Part="1" 
F 0 "#PWR0105" H 10350 725 50  0001 C CNN
F 1 "+BATT" H 10365 1048 50  0000 C CNN
F 2 "" H 10350 875 50  0001 C CNN
F 3 "" H 10350 875 50  0001 C CNN
	1    10350 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 875  10350 1250
Wire Wire Line
	10250 1250 10350 1250
Connection ~ 10350 1250
Wire Wire Line
	10350 1250 10350 1575
$Comp
L INA219AIDCNR:INA219AIDCNR U4
U 1 1 5F1ABCF9
P 7975 1500
AR Path="/5F0DCA87/5F1ABCF9" Ref="U4"  Part="1" 
AR Path="/5F1A6785/5F1ABCF9" Ref="U?"  Part="1" 
F 0 "U4" H 8475 1375 60  0000 C CNN
F 1 "INA219AIDCNR" H 8475 1675 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8" H 9075 1740 60  0001 C CNN
F 3 "" H 7975 1500 60  0001 C CNN
F 4 "C87469" H 7975 1500 50  0001 C CNN "LCSC"
	1    7975 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 1400 2025 1400
Connection ~ 1850 1400
Wire Wire Line
	1850 1650 1850 1400
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5F1ABCFA
P 2725 1400
AR Path="/5F1ABCFA" Ref="FB?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCFA" Ref="FB2"  Part="1" 
AR Path="/5F1A6785/5F1ABCFA" Ref="FB?"  Part="1" 
F 0 "FB2" V 2488 1400 50  0000 C CNN
F 1 "100 @ 100MHz" V 2579 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2655 1400 50  0001 C CNN
F 3 "~" H 2725 1400 50  0001 C CNN
F 4 "C1015" V 2725 1400 50  0001 C CNN "LCSC"
	1    2725 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F1ABCF8
P 4075 1600
AR Path="/5F1ABCF8" Ref="C?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCF8" Ref="C25"  Part="1" 
AR Path="/5F1A6785/5F1ABCF8" Ref="C?"  Part="1" 
F 0 "C25" H 3983 1554 50  0000 R CNN
F 1 "10u" H 3983 1645 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4075 1600 50  0001 C CNN
F 3 "~" H 4075 1600 50  0001 C CNN
F 4 "C15850" H 4075 1600 50  0001 C CNN "LCSC"
	1    4075 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4075 1025 4075 1400
Connection ~ 4075 1025
Wire Wire Line
	3950 1025 4075 1025
$Comp
L Connector:TestPoint TP1
U 1 1 5F1ABCF7
P 3950 1025
AR Path="/5F0DCA87/5F1ABCF7" Ref="TP1"  Part="1" 
AR Path="/5F1A6785/5F1ABCF7" Ref="TP?"  Part="1" 
F 0 "TP1" V 4145 1097 50  0000 C CNN
F 1 "3.3v" V 4054 1097 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4150 1025 50  0001 C CNN
F 3 "~" H 4150 1025 50  0001 C CNN
	1    3950 1025
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4325 1400 4375 1400
Wire Wire Line
	4125 1400 4075 1400
Connection ~ 4075 1800
Wire Wire Line
	4375 1800 4075 1800
Wire Wire Line
	4375 1700 4375 1800
Wire Wire Line
	4375 1400 4375 1500
$Comp
L Device:R_Small R?
U 1 1 5F1ABCE3
P 4375 1600
AR Path="/5F1ABCE3" Ref="R?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCE3" Ref="R10"  Part="1" 
AR Path="/5F1A6785/5F1ABCE3" Ref="R?"  Part="1" 
F 0 "R10" H 4316 1554 50  0000 R CNN
F 1 "330" H 4316 1645 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4375 1600 50  0001 C CNN
F 3 "~" H 4375 1600 50  0001 C CNN
F 4 "C23138" H 4375 1600 50  0001 C CNN "LCSC"
	1    4375 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 5F174F20
P 4225 1400
AR Path="/5F174F20" Ref="D?"  Part="1" 
AR Path="/5F0DCA87/5F174F20" Ref="D3"  Part="1" 
AR Path="/5F1A6785/5F174F20" Ref="D?"  Part="1" 
F 0 "D3" H 4250 1200 50  0000 C CNN
F 1 "Red" H 4225 1284 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 4225 1400 50  0001 C CNN
F 3 "~" V 4225 1400 50  0001 C CNN
F 4 "C2286" H 4225 1400 50  0001 C CNN "LCSC"
	1    4225 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3175 1800 3175 1700
Wire Wire Line
	3625 1800 3175 1800
Wire Wire Line
	3625 1800 3625 1850
Connection ~ 3625 1800
Wire Wire Line
	4075 1800 3625 1800
Wire Wire Line
	4075 1700 4075 1800
Connection ~ 4075 1400
Wire Wire Line
	4075 1500 4075 1400
Wire Wire Line
	3175 1400 3325 1400
Connection ~ 3175 1400
Wire Wire Line
	3175 1500 3175 1400
Wire Wire Line
	2825 1400 3175 1400
Wire Wire Line
	3625 1700 3625 1800
Wire Wire Line
	3925 1400 4075 1400
Text Notes 650  825  0    118  Italic 0
General LDO - 3.3v
$Comp
L power:GND #PWR?
U 1 1 5F1ABCE0
P 3625 1850
AR Path="/5F1ABCE0" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCE0" Ref="#PWR057"  Part="1" 
AR Path="/5F1A6785/5F1ABCE0" Ref="#PWR?"  Part="1" 
F 0 "#PWR057" H 3625 1600 50  0001 C CNN
F 1 "GND" H 3630 1677 50  0000 C CNN
F 2 "" H 3625 1850 50  0001 C CNN
F 3 "" H 3625 1850 50  0001 C CNN
	1    3625 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F1ABCDF
P 3175 1600
AR Path="/5F1ABCDF" Ref="C?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCDF" Ref="C24"  Part="1" 
AR Path="/5F1A6785/5F1ABCDF" Ref="C?"  Part="1" 
F 0 "C24" H 3083 1554 50  0000 R CNN
F 1 "10u" H 3083 1645 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3175 1600 50  0001 C CNN
F 3 "~" H 3175 1600 50  0001 C CNN
F 4 "C15850" H 3175 1600 50  0001 C CNN "LCSC"
	1    3175 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2225 1400 2625 1400
Wire Wire Line
	1625 1400 1850 1400
$Comp
L Device:D_Schottky_Small D?
U 1 1 5F1ABCDE
P 1525 1400
AR Path="/5F1ABCDE" Ref="D?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCDE" Ref="D2"  Part="1" 
AR Path="/5F1A6785/5F1ABCDE" Ref="D?"  Part="1" 
F 0 "D2" H 1525 1193 50  0000 C CNN
F 1 "B5819W" H 1525 1284 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 1525 1400 50  0001 C CNN
F 3 "~" V 1525 1400 50  0001 C CNN
F 4 "C8598" H 1525 1400 50  0001 C CNN "LCSC"
	1    1525 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse_Small F?
U 1 1 5F1ABCDD
P 2125 1400
AR Path="/5F1ABCDD" Ref="F?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCDD" Ref="F1"  Part="1" 
AR Path="/5F1A6785/5F1ABCDD" Ref="F?"  Part="1" 
F 0 "F1" H 2125 1585 50  0000 C CNN
F 1 "800mA" H 2125 1494 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2125 1400 50  0001 C CNN
F 3 "~" H 2125 1400 50  0001 C CNN
F 4 "2291894" H 2125 1400 50  0001 C CNN "Farnell"
	1    2125 1400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 5F1ABCDC
P 3625 1400
AR Path="/5F1ABCDC" Ref="U?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCDC" Ref="U5"  Part="1" 
AR Path="/5F1A6785/5F1ABCDC" Ref="U?"  Part="1" 
F 0 "U5" H 3625 1642 50  0000 C CNN
F 1 "AMS1117-3.3" H 3625 1551 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3625 1600 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3725 1150 50  0001 C CNN
F 4 "C6186" H 3625 1400 50  0001 C CNN "LCSC"
	1    3625 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F1ABCE1
P 4075 775
AR Path="/5F1ABCE1" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCE1" Ref="#PWR052"  Part="1" 
AR Path="/5F1A6785/5F1ABCE1" Ref="#PWR?"  Part="1" 
F 0 "#PWR052" H 4075 625 50  0001 C CNN
F 1 "+3.3V" H 4090 948 50  0000 C CNN
F 2 "" H 4075 775 50  0001 C CNN
F 3 "" H 4075 775 50  0001 C CNN
	1    4075 775 
	1    0    0    -1  
$EndComp
Wire Notes Line
	475  3775 11225 3775
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5F12BF21
P 1025 3125
AR Path="/5F0DCA87/5F12BF21" Ref="J8"  Part="1" 
AR Path="/5F1A6785/5F12BF21" Ref="J?"  Part="1" 
F 0 "J8" H 1105 3117 50  0000 L CNN
F 1 "BAT" H 1105 3026 50  0000 L CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A_1x02_P2.50mm_Horizontal" H 1025 3125 50  0001 C CNN
F 3 "~" H 1025 3125 50  0001 C CNN
F 4 "1516289" H 1025 3125 50  0001 C CNN "Farnell"
	1    1025 3125
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5F14184A
P 1170 1210
AR Path="/5F0DCA87/5F14184A" Ref="#PWR011"  Part="1" 
AR Path="/5F1A6785/5F14184A" Ref="#PWR?"  Part="1" 
F 0 "#PWR011" H 1170 1060 50  0001 C CNN
F 1 "VCC" H 1185 1383 50  0000 C CNN
F 2 "" H 1170 1210 50  0001 C CNN
F 3 "" H 1170 1210 50  0001 C CNN
	1    1170 1210
	1    0    0    -1  
$EndComp
Wire Wire Line
	1170 1210 1170 1400
Wire Wire Line
	1170 1400 1425 1400
$Comp
L Regulator_Switching:TPS62133 U6
U 1 1 5F1ABCE4
P 4300 5625
AR Path="/5F0DCA87/5F1ABCE4" Ref="U6"  Part="1" 
AR Path="/5F1A6785/5F1ABCE4" Ref="U?"  Part="1" 
F 0 "U6" H 4990 5095 50  0000 C CNN
F 1 "TPS62133" H 5130 5005 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-16-1EP_3x3mm_P0.5mm_EP1.68x1.68mm_ThermalVias" H 4450 5175 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps62130.pdf" H 4300 5625 50  0001 C CNN
F 4 "C73973" H 4300 5625 50  0001 C CNN "LCSC"
	1    4300 5625
	1    0    0    -1  
$EndComp
Text GLabel 3900 5425 0    50   Input ~ 0
TPS_PVIN
Text GLabel 3900 5525 0    50   Input ~ 0
TPS_SS
$Comp
L power:GND #PWR?
U 1 1 5F1ABCE7
P 3900 5625
AR Path="/5F1ABCE7" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCE7" Ref="#PWR019"  Part="1" 
AR Path="/5F1A6785/5F1ABCE7" Ref="#PWR?"  Part="1" 
F 0 "#PWR019" H 3900 5375 50  0001 C CNN
F 1 "GND" V 3900 5425 50  0000 C CNN
F 2 "" H 3900 5625 50  0001 C CNN
F 3 "" H 3900 5625 50  0001 C CNN
	1    3900 5625
	0    1    1    0   
$EndComp
Text GLabel 3900 5725 0    50   Input ~ 0
TPS_VOS
Text GLabel 4700 5625 2    50   Input ~ 0
TPS_VOS
$Comp
L power:GND #PWR?
U 1 1 5F1B2FDA
P 4700 5825
AR Path="/5F1B2FDA" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1B2FDA" Ref="#PWR027"  Part="1" 
AR Path="/5F1A6785/5F1B2FDA" Ref="#PWR?"  Part="1" 
F 0 "#PWR027" H 4700 5575 50  0001 C CNN
F 1 "GND" V 4700 5625 50  0000 C CNN
F 2 "" H 4700 5825 50  0001 C CNN
F 3 "" H 4700 5825 50  0001 C CNN
	1    4700 5825
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1B3BAB
P 4400 6125
AR Path="/5F1B3BAB" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1B3BAB" Ref="#PWR030"  Part="1" 
AR Path="/5F1A6785/5F1B3BAB" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 4400 5875 50  0001 C CNN
F 1 "GND" V 4400 5925 50  0000 C CNN
F 2 "" H 4400 6125 50  0001 C CNN
F 3 "" H 4400 6125 50  0001 C CNN
	1    4400 6125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1B409E
P 4200 6125
AR Path="/5F1B409E" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1B409E" Ref="#PWR029"  Part="1" 
AR Path="/5F1A6785/5F1B409E" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 4200 5875 50  0001 C CNN
F 1 "GND" V 4200 5925 50  0000 C CNN
F 2 "" H 4200 6125 50  0001 C CNN
F 3 "" H 4200 6125 50  0001 C CNN
	1    4200 6125
	1    0    0    -1  
$EndComp
Text GLabel 4700 5425 2    50   Input ~ 0
TPS_SW
Text GLabel 4700 5725 2    50   Input ~ 0
TPS_PG
$Comp
L power:VCC #PWR016
U 1 1 5F1ABCEB
P 1425 5275
AR Path="/5F0DCA87/5F1ABCEB" Ref="#PWR016"  Part="1" 
AR Path="/5F1A6785/5F1ABCEB" Ref="#PWR?"  Part="1" 
F 0 "#PWR016" H 1425 5125 50  0001 C CNN
F 1 "VCC" H 1440 5448 50  0000 C CNN
F 2 "" H 1425 5275 50  0001 C CNN
F 3 "" H 1425 5275 50  0001 C CNN
	1    1425 5275
	1    0    0    -1  
$EndComp
Text GLabel 4200 5125 1    50   Input ~ 0
TPS_AVIN
Text GLabel 4400 5125 1    50   Input ~ 0
TPS_PVIN
$Comp
L Device:C_Small C21
U 1 1 5F1ABCEC
P 1875 6225
AR Path="/5F0DCA87/5F1ABCEC" Ref="C21"  Part="1" 
AR Path="/5F1A6785/5F1ABCEC" Ref="C?"  Part="1" 
F 0 "C21" H 1967 6271 50  0000 L CNN
F 1 "100n" H 1967 6180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1875 6225 50  0001 C CNN
F 3 "~" H 1875 6225 50  0001 C CNN
F 4 "C14663" H 1875 6225 50  0001 C CNN "LCSC"
F 5 "Cinx" H 1875 6225 50  0001 C CNN "WeBench"
	1    1875 6225
	1    0    0    -1  
$EndComp
Text GLabel 2875 5625 2    50   Input ~ 0
TPS_AVIN
Text GLabel 2875 5425 2    50   Input ~ 0
TPS_PVIN
Wire Wire Line
	1875 5625 2225 5625
Wire Wire Line
	1425 5275 1425 5425
Wire Wire Line
	2225 5425 2225 5625
Wire Wire Line
	2225 5425 1425 5425
$Comp
L power:GND #PWR?
U 1 1 5F1ABCED
P 1425 6525
AR Path="/5F1ABCED" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1ABCED" Ref="#PWR034"  Part="1" 
AR Path="/5F1A6785/5F1ABCED" Ref="#PWR?"  Part="1" 
F 0 "#PWR034" H 1425 6275 50  0001 C CNN
F 1 "GND" V 1425 6325 50  0000 C CNN
F 2 "" H 1425 6525 50  0001 C CNN
F 3 "" H 1425 6525 50  0001 C CNN
	1    1425 6525
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 6325 1425 6475
Wire Wire Line
	1425 6475 1875 6475
Wire Wire Line
	1875 6475 1875 6325
Connection ~ 1425 6475
Wire Wire Line
	1425 6475 1425 6525
Text GLabel 2875 5825 2    50   Input ~ 0
TPS_SS
Wire Wire Line
	2225 6325 2225 6475
Wire Wire Line
	2225 6475 1875 6475
Connection ~ 1875 6475
$Comp
L Device:C_Small C27
U 1 1 5F1ABCEF
P 2225 6225
AR Path="/5F0DCA87/5F1ABCEF" Ref="C27"  Part="1" 
AR Path="/5F1A6785/5F1ABCEF" Ref="C?"  Part="1" 
F 0 "C27" H 2317 6271 50  0000 L CNN
F 1 "620pf" H 2317 6180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2225 6225 50  0001 C CNN
F 3 "~" H 2225 6225 50  0001 C CNN
F 4 "2819768" H 2225 6225 50  0001 C CNN "Farnell"
F 5 "Css" H 2225 6225 50  0001 C CNN "WeBench"
	1    2225 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 5825 2225 6125
Wire Wire Line
	2225 5825 2875 5825
Wire Wire Line
	2225 5625 2875 5625
Connection ~ 2225 5625
Wire Wire Line
	2225 5425 2875 5425
Connection ~ 2225 5425
Wire Wire Line
	1875 5625 1875 6125
Wire Wire Line
	1425 5425 1425 6125
Connection ~ 1425 5425
Text GLabel 5725 5425 0    50   Input ~ 0
TPS_SW
$Comp
L Device:R_Small R11
U 1 1 5F1662E2
P 6125 5625
AR Path="/5F0DCA87/5F1662E2" Ref="R11"  Part="1" 
AR Path="/5F1A6785/5F1662E2" Ref="R?"  Part="1" 
F 0 "R11" V 5975 5600 50  0000 C CNN
F 1 "100k" V 6050 5625 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6125 5625 50  0001 C CNN
F 3 "~" H 6125 5625 50  0001 C CNN
F 4 "C25741" V 6125 5625 50  0001 C CNN "LCSC"
F 5 "Rpg" V 6125 5625 50  0001 C CNN "WeBench"
	1    6125 5625
	0    1    1    0   
$EndComp
Text GLabel 5725 5625 0    50   Input ~ 0
TPS_PG
Wire Wire Line
	5725 5425 6025 5425
Wire Wire Line
	5725 5625 6025 5625
Text GLabel 5725 5825 0    50   Input ~ 0
TPS_VOS
$Comp
L power:GND #PWR?
U 1 1 5F1662EC
P 7075 6200
AR Path="/5F1662EC" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1662EC" Ref="#PWR031"  Part="1" 
AR Path="/5F1A6785/5F1662EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 7075 5950 50  0001 C CNN
F 1 "GND" V 7075 6000 50  0000 C CNN
F 2 "" H 7075 6200 50  0001 C CNN
F 3 "" H 7075 6200 50  0001 C CNN
	1    7075 6200
	1    0    0    -1  
$EndComp
$Comp
L MWSA0402S-3R3MT:MWSA0402S-3R3MT L1
U 1 1 5F1ABCD9
P 6025 5425
AR Path="/5F0DCA87/5F1ABCD9" Ref="L1"  Part="1" 
AR Path="/5F1A6785/5F1ABCD9" Ref="L?"  Part="1" 
F 0 "L1" H 6275 5650 50  0000 C CNN
F 1 "2.2uH, 58mO" H 6475 5575 50  0000 C CNN
F 2 "lib:INDPM4442X200N" H 6025 5425 50  0001 C CNN
F 3 "~" H 6025 5425 50  0001 C CNN
F 4 "C408335" V 6025 5425 50  0001 C CNN "LCSC"
	1    6025 5425
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5F1662F9
P 7375 5325
AR Path="/5F0DCA87/5F1662F9" Ref="#PWR017"  Part="1" 
AR Path="/5F1A6785/5F1662F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR017" H 7375 5175 50  0001 C CNN
F 1 "+5V" H 7390 5498 50  0000 C CNN
F 2 "" H 7375 5325 50  0001 C CNN
F 3 "" H 7375 5325 50  0001 C CNN
	1    7375 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 6200 7075 6150
$Comp
L Device:C_Small C17
U 1 1 5F166302
P 7075 6050
AR Path="/5F0DCA87/5F166302" Ref="C17"  Part="1" 
AR Path="/5F1A6785/5F166302" Ref="C?"  Part="1" 
F 0 "C17" H 6800 6100 50  0000 L CNN
F 1 "22u" H 6800 6025 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7075 6050 50  0001 C CNN
F 3 "~" H 7075 6050 50  0001 C CNN
F 4 "C45783" H 7075 6050 50  0001 C CNN "LCSC"
F 5 "Cout" H 7075 6050 50  0001 C CNN "WeBench"
	1    7075 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 5425 7375 5425
Connection ~ 7075 5425
Wire Wire Line
	6875 5425 7075 5425
Connection ~ 6875 5425
Wire Wire Line
	6875 5625 6875 5425
Wire Wire Line
	7375 5425 7375 5325
Wire Wire Line
	6825 5425 6875 5425
Wire Wire Line
	6875 5625 6225 5625
Wire Wire Line
	7075 5425 7075 5825
Wire Wire Line
	5725 5825 7075 5825
Connection ~ 7075 5825
Wire Wire Line
	7075 5825 7075 5950
$Comp
L power:+5V #PWR040
U 1 1 5F1ABCD4
P 2150 3125
AR Path="/5F0DCA87/5F1ABCD4" Ref="#PWR040"  Part="1" 
AR Path="/5F1A6785/5F1ABCD4" Ref="#PWR?"  Part="1" 
F 0 "#PWR040" H 2150 2975 50  0001 C CNN
F 1 "+5V" H 2165 3298 50  0000 C CNN
F 2 "" H 2150 3125 50  0001 C CNN
F 3 "" H 2150 3125 50  0001 C CNN
	1    2150 3125
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5F1B5D13
P 7375 5425
F 0 "TP3" V 7329 5613 50  0000 L CNN
F 1 "5V" V 7420 5613 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7575 5425 50  0001 C CNN
F 3 "~" H 7575 5425 50  0001 C CNN
	1    7375 5425
	0    1    1    0   
$EndComp
Connection ~ 7375 5425
$Comp
L power:GND #PWR?
U 1 1 5F1D2C01
P 4300 6125
AR Path="/5F1D2C01" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F1D2C01" Ref="#PWR0107"  Part="1" 
AR Path="/5F1A6785/5F1D2C01" Ref="#PWR?"  Part="1" 
F 0 "#PWR0107" H 4300 5875 50  0001 C CNN
F 1 "GND" V 4300 5925 50  0000 C CNN
F 2 "" H 4300 6125 50  0001 C CNN
F 3 "" H 4300 6125 50  0001 C CNN
	1    4300 6125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2394ED
P 1500 3225
AR Path="/5F2394ED" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F2394ED" Ref="#PWR044"  Part="1" 
AR Path="/5F1A6785/5F2394ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR044" H 1500 2975 50  0001 C CNN
F 1 "GND" H 1505 3052 50  0000 C CNN
F 2 "" H 1500 3225 50  0001 C CNN
F 3 "" H 1500 3225 50  0001 C CNN
	1    1500 3225
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F242E1E
P 1500 3125
AR Path="/5F242E1E" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F242E1E" Ref="#PWR038"  Part="1" 
AR Path="/5F1A6785/5F242E1E" Ref="#PWR?"  Part="1" 
F 0 "#PWR038" H 1500 2975 50  0001 C CNN
F 1 "+3.3V" H 1515 3298 50  0000 C CNN
F 2 "" H 1500 3125 50  0001 C CNN
F 3 "" H 1500 3125 50  0001 C CNN
	1    1500 3125
	1    0    0    -1  
$EndComp
Text Notes 5625 850  0    39   Italic 0
I2C Address: 0x40
Text Label 10650 1075 1    50   ~ 0
VCC
$Comp
L power:GND #PWR?
U 1 1 5F2B3B77
P 7375 6200
AR Path="/5F2B3B77" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F2B3B77" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 7375 5950 50  0001 C CNN
F 1 "GND" H 7380 6027 50  0000 C CNN
F 2 "" H 7375 6200 50  0001 C CNN
F 3 "" H 7375 6200 50  0001 C CNN
	1    7375 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 5F2B3B7F
P 7375 5725
AR Path="/5F2B3B7F" Ref="D?"  Part="1" 
AR Path="/5F0DCA87/5F2B3B7F" Ref="D6"  Part="1" 
F 0 "D6" H 7375 5518 50  0000 C CNN
F 1 "Red" H 7375 5609 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 7375 5725 50  0001 C CNN
F 3 "~" V 7375 5725 50  0001 C CNN
F 4 "C2286" H 7375 5725 50  0001 C CNN "LCSC"
	1    7375 5725
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F2B3B86
P 7375 6000
AR Path="/5F2B3B86" Ref="R?"  Part="1" 
AR Path="/5F0DCA87/5F2B3B86" Ref="R14"  Part="1" 
F 0 "R14" H 7316 5954 50  0000 R CNN
F 1 "680" H 7316 6045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7375 6000 50  0001 C CNN
F 3 "~" H 7375 6000 50  0001 C CNN
F 4 " C23228" H 7375 6000 50  0001 C CNN "LCSC"
	1    7375 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7375 5825 7375 5900
Wire Wire Line
	7375 6100 7375 6200
Wire Wire Line
	7375 5625 7375 5425
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5F34E1E2
P 1700 3125
F 0 "J7" H 1780 3117 50  0000 L CNN
F 1 "3.3V" H 1780 3026 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1700 3125 50  0001 C CNN
F 3 "~" H 1700 3125 50  0001 C CNN
	1    1700 3125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F3556C5
P 2150 3225
AR Path="/5F3556C5" Ref="#PWR?"  Part="1" 
AR Path="/5F0DCA87/5F3556C5" Ref="#PWR039"  Part="1" 
AR Path="/5F1A6785/5F3556C5" Ref="#PWR?"  Part="1" 
F 0 "#PWR039" H 2150 2975 50  0001 C CNN
F 1 "GND" H 2155 3052 50  0000 C CNN
F 2 "" H 2150 3225 50  0001 C CNN
F 3 "" H 2150 3225 50  0001 C CNN
	1    2150 3225
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5F3556D1
P 2350 3125
F 0 "J6" H 2430 3117 50  0000 L CNN
F 1 "5V" H 2430 3026 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2350 3125 50  0001 C CNN
F 3 "~" H 2350 3125 50  0001 C CNN
	1    2350 3125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5F1C743D
P 9650 1725
AR Path="/5F0DCA87/5F1C743D" Ref="#PWR0128"  Part="1" 
AR Path="/5F1A6785/5F1C743D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0128" H 9650 1475 50  0001 C CNN
F 1 "GND" H 9655 1552 50  0000 C CNN
F 2 "" H 9650 1725 50  0001 C CNN
F 3 "" H 9650 1725 50  0001 C CNN
	1    9650 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4075 775  4075 1025
$Comp
L Connector:TestPoint TP2
U 1 1 5F1ABCF6
P 10250 1250
AR Path="/5F0DCA87/5F1ABCF6" Ref="TP2"  Part="1" 
AR Path="/5F1A6785/5F1ABCF6" Ref="TP?"  Part="1" 
F 0 "TP2" V 10445 1322 50  0000 C CNN
F 1 "VBAT" V 10354 1322 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10450 1250 50  0001 C CNN
F 3 "~" H 10450 1250 50  0001 C CNN
	1    10250 1250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5F1C982E
P 9650 1725
F 0 "TP5" H 9708 1843 50  0000 L CNN
F 1 "GND" H 9708 1752 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 9850 1725 50  0001 C CNN
F 3 "~" H 9850 1725 50  0001 C CNN
	1    9650 1725
	1    0    0    -1  
$EndComp
Text Notes 5625 925  0    39   Italic 0
R_shunt = 0.1Ohm, 2512 @ 1W
$EndSCHEMATC
