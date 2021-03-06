EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title "Commodity - Sensors"
Date "2020-07-13"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BMX055:BMX055 IC1
U 1 1 5F2577D2
P 2125 2650
F 0 "IC1" H 2600 3750 50  0000 C CNN
F 1 "BMX055" H 2700 3650 50  0000 C CNN
F 2 "lib:LGA_PACKAGE_20_PINS" H 3175 3050 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/621/BST-BMX055-DS000-02-586421.pdf" H 3175 2950 50  0001 L CNN
F 4 "Small versatile 9-axis sensor module" H 3175 2850 50  0001 L CNN "Description"
F 5 "" H 3175 2750 50  0001 L CNN "Height"
F 6 "Bosch Sensortec" H 3175 2650 50  0001 L CNN "Manufacturer_Name"
F 7 "BMX055" H 3175 2550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "262-BMX055" H 3175 2450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=262-BMX055" H 3175 2350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 3175 2250 50  0001 L CNN "RS Part Number"
F 11 "" H 3175 2150 50  0001 L CNN "RS Price/Stock"
F 12 "C94022" H 2125 2650 50  0001 C CNN "LCSC"
	1    2125 2650
	1    0    0    -1  
$EndComp
NoConn ~ 2625 2050
NoConn ~ 2725 2050
NoConn ~ 3325 2650
NoConn ~ 3325 2750
NoConn ~ 2825 3850
NoConn ~ 2625 3850
NoConn ~ 2125 2750
NoConn ~ 2125 2950
NoConn ~ 3325 3050
$Comp
L Device:C_Small C30
U 1 1 5F25E964
P 3800 3500
F 0 "C30" H 3892 3546 50  0000 L CNN
F 1 "100n" H 3892 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3800 3500 50  0001 C CNN
F 3 "~" H 3800 3500 50  0001 C CNN
F 4 "C14663" H 3800 3500 50  0001 C CNN "LCSC"
	1    3800 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR062
U 1 1 5F260138
P 3800 4025
F 0 "#PWR062" H 3800 3775 50  0001 C CNN
F 1 "GND" H 3805 3852 50  0000 C CNN
F 2 "" H 3800 4025 50  0001 C CNN
F 3 "" H 3800 4025 50  0001 C CNN
	1    3800 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3600 3800 4025
$Comp
L power:+3.3V #PWR050
U 1 1 5F260ECF
P 3800 1875
F 0 "#PWR050" H 3800 1725 50  0001 C CNN
F 1 "+3.3V" H 3815 2048 50  0000 C CNN
F 2 "" H 3800 1875 50  0001 C CNN
F 3 "" H 3800 1875 50  0001 C CNN
	1    3800 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2850 3800 1875
Connection ~ 3800 2850
$Comp
L power:GND #PWR055
U 1 1 5F2644D1
P 3325 2950
F 0 "#PWR055" H 3325 2700 50  0001 C CNN
F 1 "GND" V 3330 2822 50  0000 R CNN
F 2 "" H 3325 2950 50  0001 C CNN
F 3 "" H 3325 2950 50  0001 C CNN
	1    3325 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 2850 3800 3250
Connection ~ 3800 3250
Wire Wire Line
	3800 3250 3800 3400
$Comp
L power:GND #PWR059
U 1 1 5F264AB7
P 3325 3150
F 0 "#PWR059" H 3325 2900 50  0001 C CNN
F 1 "GND" V 3330 3022 50  0000 R CNN
F 2 "" H 3325 3150 50  0001 C CNN
F 3 "" H 3325 3150 50  0001 C CNN
	1    3325 3150
	0    -1   -1   0   
$EndComp
Text Notes 2250 1175 0    39   Italic 0
Accelerometer: 0x18\nGyroscope: 0x68\nMagnetometer: 0x10
Text Notes 2225 975  0    118  Italic 0
9 Axis IMU
$Comp
L Device:C_Small C23
U 1 1 5F272A27
P 1600 3500
F 0 "C23" H 1692 3546 50  0000 L CNN
F 1 "100n" H 1692 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1600 3500 50  0001 C CNN
F 3 "~" H 1600 3500 50  0001 C CNN
F 4 "C14663" H 1600 3500 50  0001 C CNN "LCSC"
	1    1600 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 5F272A2D
P 1600 4025
F 0 "#PWR060" H 1600 3775 50  0001 C CNN
F 1 "GND" H 1605 3852 50  0000 C CNN
F 2 "" H 1600 4025 50  0001 C CNN
F 3 "" H 1600 4025 50  0001 C CNN
	1    1600 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3600 1600 4025
$Comp
L power:+3.3V #PWR049
U 1 1 5F272A34
P 1600 1875
F 0 "#PWR049" H 1600 1725 50  0001 C CNN
F 1 "+3.3V" H 1615 2048 50  0000 C CNN
F 2 "" H 1600 1875 50  0001 C CNN
F 3 "" H 1600 1875 50  0001 C CNN
	1    1600 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1875 1600 3050
Connection ~ 1600 3050
Wire Wire Line
	1600 3050 1600 3400
$Comp
L power:GND #PWR051
U 1 1 5F27517B
P 2825 2050
F 0 "#PWR051" H 2825 1800 50  0001 C CNN
F 1 "GND" H 2830 1877 50  0000 C CNN
F 2 "" H 2825 2050 50  0001 C CNN
F 3 "" H 2825 2050 50  0001 C CNN
	1    2825 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR054
U 1 1 5F275E66
P 2125 2650
F 0 "#PWR054" H 2125 2400 50  0001 C CNN
F 1 "GND" V 2125 2450 50  0000 C CNN
F 2 "" H 2125 2650 50  0001 C CNN
F 3 "" H 2125 2650 50  0001 C CNN
	1    2125 2650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR056
U 1 1 5F276227
P 2125 3150
F 0 "#PWR056" H 2125 2900 50  0001 C CNN
F 1 "GND" V 2125 2950 50  0000 C CNN
F 2 "" H 2125 3150 50  0001 C CNN
F 3 "" H 2125 3150 50  0001 C CNN
	1    2125 3150
	0    1    1    0   
$EndComp
Text GLabel 2725 3850 3    50   Input ~ 0
I2C1_SCL
Text GLabel 2125 3250 0    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	1600 3050 2125 3050
Wire Wire Line
	3325 2850 3800 2850
Wire Wire Line
	3325 3250 3800 3250
NoConn ~ 2125 2850
$Comp
L power:GND #PWR069
U 1 1 5F3C8A54
P 8525 2700
F 0 "#PWR069" H 8525 2450 50  0001 C CNN
F 1 "GND" V 8525 2500 50  0000 C CNN
F 2 "" H 8525 2700 50  0001 C CNN
F 3 "" H 8525 2700 50  0001 C CNN
	1    8525 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR070
U 1 1 5F3C8C2A
P 8525 2800
F 0 "#PWR070" H 8525 2550 50  0001 C CNN
F 1 "GND" V 8525 2600 50  0000 C CNN
F 2 "" H 8525 2800 50  0001 C CNN
F 3 "" H 8525 2800 50  0001 C CNN
	1    8525 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C32
U 1 1 5F3C9C1F
P 7625 2950
F 0 "C32" H 7717 2996 50  0000 L CNN
F 1 "100n" H 7717 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7625 2950 50  0001 C CNN
F 3 "~" H 7625 2950 50  0001 C CNN
F 4 "C14663" H 7625 2950 50  0001 C CNN "LCSC"
	1    7625 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C31
U 1 1 5F3CA7DE
P 7275 2950
F 0 "C31" H 7367 2996 50  0000 L CNN
F 1 "100n" H 7367 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7275 2950 50  0001 C CNN
F 3 "~" H 7275 2950 50  0001 C CNN
F 4 "C14663" H 7275 2950 50  0001 C CNN "LCSC"
	1    7275 2950
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Pressure:BMP280 U8
U 1 1 5F3C2DD4
P 8225 2800
F 0 "U8" V 8592 2850 50  0000 C CNN
F 1 "BMP280" V 8501 2850 50  0000 C CNN
F 2 "Package_LGA:Bosch_LGA-8_2x2.5mm_P0.65mm_ClockwisePinNumbering" H 8225 2100 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BMP280-DS001.pdf" H 8225 2800 50  0001 C CNN
F 4 "C83291" V 8225 2800 50  0001 C CNN "LCSC"
	1    8225 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7825 2700 7275 2700
Wire Wire Line
	7275 2700 7275 2850
Wire Wire Line
	7625 2850 7625 2800
Wire Wire Line
	7625 2800 7825 2800
$Comp
L power:GND #PWR071
U 1 1 5F3CB7BA
P 7275 3150
F 0 "#PWR071" H 7275 2900 50  0001 C CNN
F 1 "GND" H 7280 2977 50  0000 C CNN
F 2 "" H 7275 3150 50  0001 C CNN
F 3 "" H 7275 3150 50  0001 C CNN
	1    7275 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR072
U 1 1 5F3CBA61
P 7625 3150
F 0 "#PWR072" H 7625 2900 50  0001 C CNN
F 1 "GND" H 7630 2977 50  0000 C CNN
F 2 "" H 7625 3150 50  0001 C CNN
F 3 "" H 7625 3150 50  0001 C CNN
	1    7625 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7625 3050 7625 3150
Wire Wire Line
	7275 3050 7275 3150
$Comp
L power:+3.3V #PWR066
U 1 1 5F3CC728
P 7275 2400
F 0 "#PWR066" H 7275 2250 50  0001 C CNN
F 1 "+3.3V" H 7290 2573 50  0000 C CNN
F 2 "" H 7275 2400 50  0001 C CNN
F 3 "" H 7275 2400 50  0001 C CNN
	1    7275 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR067
U 1 1 5F3CE12C
P 7625 2400
F 0 "#PWR067" H 7625 2250 50  0001 C CNN
F 1 "+3.3V" H 7640 2573 50  0000 C CNN
F 2 "" H 7625 2400 50  0001 C CNN
F 3 "" H 7625 2400 50  0001 C CNN
	1    7625 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7625 2800 7625 2400
Connection ~ 7625 2800
Wire Wire Line
	7275 2700 7275 2400
Connection ~ 7275 2700
$Comp
L power:GND #PWR073
U 1 1 5F3CF951
P 8225 3200
F 0 "#PWR073" H 8225 2950 50  0001 C CNN
F 1 "GND" V 8225 3000 50  0000 C CNN
F 2 "" H 8225 3200 50  0001 C CNN
F 3 "" H 8225 3200 50  0001 C CNN
	1    8225 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR068
U 1 1 5F3D02E5
P 8950 2400
F 0 "#PWR068" H 8950 2250 50  0001 C CNN
F 1 "+3.3V" H 8965 2573 50  0000 C CNN
F 2 "" H 8950 2400 50  0001 C CNN
F 3 "" H 8950 2400 50  0001 C CNN
	1    8950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8325 3200 8325 3275
Wire Wire Line
	8325 3275 8950 3275
Wire Wire Line
	8950 3275 8950 2400
Text GLabel 8025 3200 3    50   Input ~ 0
I2C1_SCL
Text GLabel 8125 3200 3    50   Input ~ 0
I2C1_SDA
Text Notes 7200 1050 0    39   Italic 0
I2C Address: 0x76
Text Notes 7175 975  0    118  Italic 0
Environment Sensor
Wire Notes Line
	5375 475  5375 4475
Wire Notes Line
	475  4475 11225 4475
$EndSCHEMATC
