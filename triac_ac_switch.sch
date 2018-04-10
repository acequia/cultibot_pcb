EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:SeeedOPL-Relay-2016
LIBS:SeeedOPL-Capacitor-2016
LIBS:SeeedOPL-Connector-2016
LIBS:SeeedOPL-Crystal Oscillator-2016
LIBS:SeeedOPL-Diode-2016
LIBS:SeeedOPL-Display-2016
LIBS:SeeedOPL-Fuse-2016
LIBS:SeeedOPL-IC-2016
LIBS:SeeedOPL-Inductor-2016
LIBS:SeeedOPL-LED-2016
LIBS:SeeedOPL-Resistor-2016
LIBS:SeeedOPL-Sensor-2016
LIBS:SeeedOPL-Switch-2016
LIBS:SeeedOPL-Transistor-2016
LIBS:ESP8266
LIBS:ECS-3225S33-260-FN-TR
LIBS:cultibot
LIBS:cultibot-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L Q_TRIAC_AAG D3
U 1 1 5ACD7198
P 4850 5550
AR Path="/5ACD7149/5ACD7198" Ref="D3"  Part="1" 
AR Path="/5ACE052D/5ACD7198" Ref="D5"  Part="1" 
AR Path="/5ACECAA1/5ACD7198" Ref="D7"  Part="1" 
AR Path="/5ACED0B2/5ACD7198" Ref="D9"  Part="1" 
F 0 "D9" H 4975 5575 50  0000 L CNN
F 1 "BTA06-600BWRG" H 4975 5500 50  0000 L CNN
F 2 "" V 4925 5575 50  0001 C CNN
F 3 "" V 4850 5550 50  0001 C CNN
	1    4850 5550
	1    0    0    -1  
$EndComp
$Comp
L FODM3052 U3
U 1 1 5ACD7247
P 3850 5400
AR Path="/5ACD7149/5ACD7247" Ref="U3"  Part="1" 
AR Path="/5ACE052D/5ACD7247" Ref="U4"  Part="1" 
AR Path="/5ACECAA1/5ACD7247" Ref="U5"  Part="1" 
AR Path="/5ACED0B2/5ACD7247" Ref="U6"  Part="1" 
F 0 "U6" H 3650 5600 50  0000 L CNN
F 1 "FODM3053-NF098" H 3500 5200 50  0000 L CNN
F 2 "Housings_DIP:DIP-4_W7.62mm_SMD" H 3650 5200 50  0001 L CIN
F 3 "" H 3825 5400 50  0001 L CNN
	1    3850 5400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR032
U 1 1 5ACDBD28
P 2850 5100
AR Path="/5ACD7149/5ACDBD28" Ref="#PWR032"  Part="1" 
AR Path="/5ACE052D/5ACDBD28" Ref="#PWR033"  Part="1" 
AR Path="/5ACECAA1/5ACDBD28" Ref="#PWR034"  Part="1" 
AR Path="/5ACED0B2/5ACDBD28" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 2850 4950 50  0001 C CNN
F 1 "+3.3V" H 2850 5240 50  0000 C CNN
F 2 "" H 2850 5100 50  0001 C CNN
F 3 "" H 2850 5100 50  0001 C CNN
	1    2850 5100
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5ACDBD40
P 3200 5300
AR Path="/5ACD7149/5ACDBD40" Ref="R7"  Part="1" 
AR Path="/5ACE052D/5ACDBD40" Ref="R10"  Part="1" 
AR Path="/5ACECAA1/5ACDBD40" Ref="R13"  Part="1" 
AR Path="/5ACED0B2/5ACDBD40" Ref="R16"  Part="1" 
F 0 "R16" V 3280 5300 50  0000 C CNN
F 1 "220" V 3200 5300 50  0000 C CNN
F 2 "" V 3130 5300 50  0001 C CNN
F 3 "" H 3200 5300 50  0001 C CNN
	1    3200 5300
	0    1    1    0   
$EndComp
$Comp
L LED_ALT D2
U 1 1 5ACDC9FE
P 2850 5950
AR Path="/5ACD7149/5ACDC9FE" Ref="D2"  Part="1" 
AR Path="/5ACE052D/5ACDC9FE" Ref="D4"  Part="1" 
AR Path="/5ACECAA1/5ACDC9FE" Ref="D6"  Part="1" 
AR Path="/5ACED0B2/5ACDC9FE" Ref="D8"  Part="1" 
F 0 "D8" H 2850 6050 50  0000 C CNN
F 1 "Green" H 2850 5850 50  0000 C CNN
F 2 "" H 2850 5950 50  0001 C CNN
F 3 "" H 2850 5950 50  0001 C CNN
	1    2850 5950
	0    -1   -1   0   
$EndComp
Text Notes 3000 5200 0    60   ~ 0
10 mA ->
$Comp
L R R6
U 1 1 5ACDCB25
P 2850 5550
AR Path="/5ACD7149/5ACDCB25" Ref="R6"  Part="1" 
AR Path="/5ACE052D/5ACDCB25" Ref="R9"  Part="1" 
AR Path="/5ACECAA1/5ACDCB25" Ref="R12"  Part="1" 
AR Path="/5ACED0B2/5ACDCB25" Ref="R15"  Part="1" 
F 0 "R15" V 2930 5550 50  0000 C CNN
F 1 "150" V 2850 5550 50  0000 C CNN
F 2 "" V 2780 5550 50  0001 C CNN
F 3 "" H 2850 5550 50  0001 C CNN
	1    2850 5550
	-1   0    0    1   
$EndComp
Text Notes 2700 5850 1    60   ~ 0
<- 10 mA
Wire Wire Line
	2850 5100 2850 5400
Wire Wire Line
	2850 5300 3050 5300
Wire Wire Line
	3350 5300 3550 5300
Connection ~ 2850 5300
Wire Wire Line
	2850 5700 2850 5800
Wire Wire Line
	2850 6100 2850 6200
Wire Wire Line
	2550 6200 3350 6200
Wire Wire Line
	3550 5500 3350 5500
Wire Wire Line
	3350 5500 3350 6200
Connection ~ 2850 6200
Text HLabel 2550 6200 0    60   Input ~ 0
Control
Text Notes 3600 5750 0    60   ~ 0
1.2 V drop
Text Notes 3050 6000 0    60   ~ 0
1.75 V drop
Wire Wire Line
	4850 5700 4850 5900
Wire Wire Line
	4850 5900 4950 5900
Text HLabel 4950 5900 2    60   Input ~ 0
A2
Wire Wire Line
	4850 5400 4850 5300
Wire Wire Line
	4650 5300 4950 5300
Text HLabel 4950 5300 2    60   Input ~ 0
A1
$Comp
L R R8
U 1 1 5ACDCE47
P 4500 5300
AR Path="/5ACD7149/5ACDCE47" Ref="R8"  Part="1" 
AR Path="/5ACE052D/5ACDCE47" Ref="R11"  Part="1" 
AR Path="/5ACECAA1/5ACDCE47" Ref="R14"  Part="1" 
AR Path="/5ACED0B2/5ACDCE47" Ref="R17"  Part="1" 
F 0 "R17" V 4580 5300 50  0000 C CNN
F 1 "330" V 4500 5300 50  0000 C CNN
F 2 "" V 4430 5300 50  0001 C CNN
F 3 "" H 4500 5300 50  0001 C CNN
	1    4500 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 5300 4350 5300
Connection ~ 4850 5300
Wire Wire Line
	4150 5500 4350 5500
Wire Wire Line
	4350 5500 4350 5650
Wire Wire Line
	4350 5650 4700 5650
Text Notes 5250 5450 0    60   ~ 0
Inductive load\nPF = 0.44\nI = 4.45 A
$EndSCHEMATC
