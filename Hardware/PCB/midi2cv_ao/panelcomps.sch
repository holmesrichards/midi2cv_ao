EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 2
Title "midi2cv"
Date "2020-10-20"
Rev ""
Comp "Rich Holmes / Analog Output"
Comment1 "via https://github.com/philippejadin/midi2cv"
Comment2 "Forked from https://github.com/elkayem/midi2cv"
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	7600 5500 7900 5500
Connection ~ 7900 5200
Wire Wire Line
	7250 5200 7900 5200
Wire Wire Line
	7600 4200 7900 4200
Connection ~ 7900 3900
Wire Wire Line
	7250 3900 7900 3900
Wire Wire Line
	8200 4000 8250 4000
Wire Wire Line
	7900 3900 8250 3900
Wire Wire Line
	8200 5300 8200 5500
Wire Wire Line
	8250 5300 8200 5300
Wire Wire Line
	7900 5500 8200 5500
Connection ~ 7900 5500
Wire Wire Line
	7900 5200 8250 5200
$Comp
L Device:D_Schottky D?
U 1 1 5F9BDCAF
P 7900 5350
AR Path="/5F9BDCAF" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDCAF" Ref="D11"  Part="1" 
F 0 "D11" H 7900 5566 50  0000 C CNN
F 1 "1n5817" H 7900 5475 50  0000 C CNN
F 2 "ao_tht:D_DO-41_SOD81_P7.62mm_Horizontal" H 7900 5350 50  0001 C CNN
F 3 "~" H 7900 5350 50  0001 C CNN
	1    7900 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 4200 8200 4200
Connection ~ 7900 4200
$Comp
L Device:D_Schottky D?
U 1 1 5F9BDCBD
P 7900 4050
AR Path="/5F9BDCBD" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDCBD" Ref="D9"  Part="1" 
F 0 "D9" H 7900 4266 50  0000 C CNN
F 1 "1n5817" H 7900 4175 50  0000 C CNN
F 2 "ao_tht:D_DO-41_SOD81_P7.62mm_Horizontal" H 7900 4050 50  0001 C CNN
F 3 "~" H 7900 4050 50  0001 C CNN
	1    7900 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4200 8200 4000
$Comp
L Device:R R?
U 1 1 5F9BDCF1
P 7100 5200
AR Path="/5F9BDCF1" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9BDCF1" Ref="R20"  Part="1" 
F 0 "R20" V 7000 5150 50  0000 C CNN
F 1 "1k" V 7000 5300 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 5200 50  0001 C CNN
F 3 "~" H 7100 5200 50  0001 C CNN
	1    7100 5200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F9BDCFD
P 7450 5500
AR Path="/5F9BDCFD" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDCFD" Ref="D7"  Part="1" 
F 0 "D7" H 7450 5600 50  0000 C CNN
F 1 "LED" H 7450 5700 50  0000 C CNN
F 2 "ao_tht:LED_D5.0mm" H 7450 5500 50  0001 C CNN
F 3 "~" H 7450 5500 50  0001 C CNN
	1    7450 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 5200 6850 5500
Wire Wire Line
	6850 5500 6950 5500
Wire Wire Line
	7250 5500 7300 5500
Wire Wire Line
	6850 5200 6950 5200
$Comp
L Device:R R?
U 1 1 5F9BDD07
P 7100 3900
AR Path="/5F9BDD07" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9BDD07" Ref="R16"  Part="1" 
F 0 "R16" V 7000 3850 50  0000 C CNN
F 1 "1k" V 7000 4000 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 3900 50  0001 C CNN
F 3 "~" H 7100 3900 50  0001 C CNN
	1    7100 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F9BDD13
P 7450 4200
AR Path="/5F9BDD13" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDD13" Ref="D5"  Part="1" 
F 0 "D5" H 7450 4300 50  0000 C CNN
F 1 "LED" H 7450 4400 50  0000 C CNN
F 2 "ao_tht:LED_D5.0mm" H 7450 4200 50  0001 C CNN
F 3 "~" H 7450 4200 50  0001 C CNN
	1    7450 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 3900 6850 4200
Wire Wire Line
	6850 4200 6950 4200
Wire Wire Line
	7250 4200 7300 4200
Wire Wire Line
	6850 3900 6950 3900
$Comp
L Connector:AudioJack2 J?
U 1 1 5F9BDD23
P 8450 5200
AR Path="/5F9BDD23" Ref="J?"  Part="1" 
AR Path="/5F990527/5F9BDD23" Ref="J18"  Part="1" 
F 0 "J18" H 8270 5183 50  0000 R CNN
F 1 "AudioJack2" H 8270 5274 50  0000 R CNN
F 2 "ao_tht:Jack_6.35mm_PJ_629HAN" H 8450 5200 50  0001 C CNN
F 3 "~" H 8450 5200 50  0001 C CNN
	1    8450 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 4300 2750 4300
NoConn ~ 2600 4100
NoConn ~ 2000 4100
$Comp
L Connector:DIN-5 J?
U 1 1 5F9C6D03
P 2300 4200
AR Path="/5F9C6D03" Ref="J?"  Part="1" 
AR Path="/5F990527/5F9C6D03" Ref="J7"  Part="1" 
F 0 "J7" H 2250 3800 59  0000 L BNN
F 1 "MIDIJACK" H 2100 3900 59  0000 L BNN
F 2 "Connector_Wire:SolderWire-0.1sqmm_1x05_P3.6mm_D0.4mm_OD1mm_Relief2x" H 2300 4200 50  0001 C CNN
F 3 "" H 2300 4200 50  0001 C CNN
	1    2300 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 4300 2000 4800
Wire Wire Line
	2750 4400 2600 4400
Wire Wire Line
	2600 4400 2600 4800
Wire Wire Line
	2600 4800 2000 4800
Wire Wire Line
	2750 4500 2300 4500
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F9D6D0E
P 3100 2300
AR Path="/5F9D6D0E" Ref="J?"  Part="1" 
AR Path="/5F990527/5F9D6D0E" Ref="J9"  Part="1" 
F 0 "J9" H 3018 1875 50  0000 C CNN
F 1 "Conn_01x04" H 3018 1966 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.1sqmm_1x04_P3.6mm_D0.4mm_OD1mm" H 3100 2300 50  0001 C CNN
F 3 "~" H 3100 2300 50  0001 C CNN
	1    3100 2300
	1    0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F9D6D14
P 2550 2100
AR Path="/5F9D6D14" Ref="SW?"  Part="1" 
AR Path="/5F990527/5F9D6D14" Ref="SW4"  Part="1" 
F 0 "SW4" H 2550 2385 50  0000 C CNN
F 1 "SW_Push" H 2550 2294 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.1sqmm_1x02_P3.6mm_D0.4mm_OD1mm" H 2550 2300 50  0001 C CNN
F 3 "~" H 2550 2300 50  0001 C CNN
	1    2550 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F9D6D1A
P 2250 2200
AR Path="/5F9D6D1A" Ref="SW?"  Part="1" 
AR Path="/5F990527/5F9D6D1A" Ref="SW2"  Part="1" 
F 0 "SW2" H 2250 2485 50  0000 C CNN
F 1 "SW_Push" H 2250 2394 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.1sqmm_1x02_P3.6mm_D0.4mm_OD1mm" H 2250 2400 50  0001 C CNN
F 3 "~" H 2250 2400 50  0001 C CNN
	1    2250 2200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F9D6D20
P 1950 2300
AR Path="/5F9D6D20" Ref="SW?"  Part="1" 
AR Path="/5F990527/5F9D6D20" Ref="SW1"  Part="1" 
F 0 "SW1" H 1950 2585 50  0000 C CNN
F 1 "SW_Push" H 1950 2494 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.1sqmm_1x02_P3.6mm_D0.4mm_OD1mm" H 1950 2500 50  0001 C CNN
F 3 "~" H 1950 2500 50  0001 C CNN
	1    1950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2100 1750 2100
Wire Wire Line
	1750 2100 1750 2300
Wire Wire Line
	1750 2300 1750 2400
Connection ~ 1750 2300
Wire Wire Line
	2150 2300 2900 2300
Wire Wire Line
	2450 2200 2900 2200
Wire Wire Line
	2750 2100 2900 2100
Wire Wire Line
	1750 2400 2900 2400
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F9D6D2E
P 3100 2900
AR Path="/5F9D6D2E" Ref="J?"  Part="1" 
AR Path="/5F990527/5F9D6D2E" Ref="J10"  Part="1" 
F 0 "J10" H 3018 2475 50  0000 C CNN
F 1 "Conn_01x04" H 3018 2566 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.1sqmm_1x04_P3.6mm_D0.4mm_OD1mm" H 3100 2900 50  0001 C CNN
F 3 "~" H 3100 2900 50  0001 C CNN
	1    3100 2900
	1    0    0    1   
$EndComp
Wire Wire Line
	2200 3000 2900 3000
$Comp
L Switch:SW_SPDT SW?
U 1 1 5F9D6D35
P 2500 2800
AR Path="/5F9D6D35" Ref="SW?"  Part="1" 
AR Path="/5F990527/5F9D6D35" Ref="SW3"  Part="1" 
F 0 "SW3" H 2500 3085 50  0000 C CNN
F 1 "SW_SPDT" H 2500 2994 50  0000 C CNN
F 2 "ao_tht:SPDT-toggle-switch-1M-series" H 2500 2800 50  0001 C CNN
F 3 "~" H 2500 2800 50  0001 C CNN
	1    2500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3000 2200 2800
Wire Wire Line
	2200 2800 2300 2800
Wire Wire Line
	2700 2700 2900 2700
Wire Wire Line
	2700 2900 2900 2900
Wire Notes Line
	3300 1750 3300 3150
Wire Notes Line
	3300 3150 1650 3150
Wire Notes Line
	1650 3150 1650 1750
Wire Notes Line
	1650 1750 3300 1750
Text Notes 1900 2900 0    50   ~ 0
or
Connection ~ 6850 3900
Connection ~ 6850 5200
$Comp
L Connector:AudioJack2 J?
U 1 1 5F973149
P 8450 3150
AR Path="/5F973149" Ref="J?"  Part="1" 
AR Path="/5F990527/5F973149" Ref="J15"  Part="1" 
F 0 "J15" H 8270 3133 50  0000 R CNN
F 1 "AudioJack2" H 8270 3224 50  0000 R CNN
F 2 "ao_tht:Jack_6.35mm_PJ_629HAN" H 8450 3150 50  0001 C CNN
F 3 "~" H 8450 3150 50  0001 C CNN
	1    8450 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 3250 8200 3250
$Comp
L Device:R R?
U 1 1 5F9B97F1
P 7100 4200
AR Path="/5F9B97F1" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9B97F1" Ref="R17"  Part="1" 
F 0 "R17" V 7000 4150 50  0000 C CNN
F 1 "1k" V 7000 4300 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 4200 50  0001 C CNN
F 3 "~" H 7100 4200 50  0001 C CNN
	1    7100 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F9B9A31
P 7100 5500
AR Path="/5F9B9A31" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9B9A31" Ref="R21"  Part="1" 
F 0 "R21" V 7000 5450 50  0000 C CNN
F 1 "1k" V 7000 5600 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 5500 50  0001 C CNN
F 3 "~" H 7100 5500 50  0001 C CNN
	1    7100 5500
	0    1    1    0   
$EndComp
Text Label 8000 3150 2    70   ~ 0
VELOCITY
Text Label 8000 3900 2    70   ~ 0
CLOCK_4
Text Label 8000 5200 2    70   ~ 0
TRIGGER
Wire Wire Line
	4450 3850 4450 3750
Wire Wire Line
	4450 3750 4350 3750
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5F9C6D0A
P 2950 4400
AR Path="/5F9C6D0A" Ref="J?"  Part="1" 
AR Path="/5F990527/5F9C6D0A" Ref="J8"  Part="1" 
F 0 "J8" H 2950 4700 50  0000 L CNN
F 1 "Conn_01x03" H 2750 4600 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.1sqmm_1x03_P3.6mm_D0.4mm_OD1mm" H 2950 4400 50  0001 C CNN
F 3 "~" H 2950 4400 50  0001 C CNN
	1    2950 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	5150 5200 6850 5200
Wire Wire Line
	5250 3900 6850 3900
Wire Notes Line
	3350 700  3350 7550
Text Notes 650  1150 0    100  ~ 0
Components mounted on panel
Text Notes 3650 1150 0    100  ~ 0
Components mounted on jacks board
$Comp
L power:GND1 #PWR033
U 1 1 5FBFDCC2
P 4450 3850
F 0 "#PWR033" H 4450 3600 50  0001 C CNN
F 1 "GND1" H 4455 3677 50  0000 C CNN
F 2 "" H 4450 3850 50  0001 C CNN
F 3 "" H 4450 3850 50  0001 C CNN
	1    4450 3850
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J11
U 1 1 5FA94E70
P 4150 3350
F 0 "J11" H 4068 2625 50  0000 C CNN
F 1 "Conn_01x10" H 4068 2716 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x10_P2.54mm_Vertical" H 4150 3350 50  0001 C CNN
F 3 "~" H 4150 3350 50  0001 C CNN
	1    4150 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 3650 5100 3650
Wire Wire Line
	5100 3650 5100 5850
Wire Wire Line
	4350 3550 5150 3550
Wire Wire Line
	5150 3550 5150 5200
Wire Wire Line
	4350 3450 5200 3450
Wire Wire Line
	4350 3350 5250 3350
Wire Wire Line
	5250 3350 5250 3900
Wire Wire Line
	4350 3150 8250 3150
Wire Wire Line
	4350 3050 5200 3050
Wire Wire Line
	5100 2850 4350 2850
Wire Wire Line
	5150 2950 4350 2950
Wire Wire Line
	8200 2750 8250 2750
Wire Wire Line
	5200 2650 5200 3050
Text Label 8000 2650 2    70   ~ 0
PITCH_BEND
$Comp
L Connector:AudioJack2 J?
U 1 1 5F97313D
P 8450 2650
AR Path="/5F97313D" Ref="J?"  Part="1" 
AR Path="/5F990527/5F97313D" Ref="J14"  Part="1" 
F 0 "J14" H 8270 2633 50  0000 R CNN
F 1 "AudioJack2" H 8270 2724 50  0000 R CNN
F 2 "ao_tht:Jack_6.35mm_PJ_629HAN" H 8450 2650 50  0001 C CNN
F 3 "~" H 8450 2650 50  0001 C CNN
	1    8450 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 2650 8250 2650
Wire Wire Line
	5150 2150 5150 2950
Wire Wire Line
	5200 3450 5200 4550
Wire Wire Line
	5300 3550 6950 3550
Text Label 8000 3550 2    70   ~ 0
MIDI_LED
$Comp
L Device:R R?
U 1 1 5F9BA08E
P 7100 3550
AR Path="/5F9BA08E" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9BA08E" Ref="R15"  Part="1" 
F 0 "R15" V 7000 3500 50  0000 C CNN
F 1 "1k" V 7000 3650 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 3550 50  0001 C CNN
F 3 "~" H 7100 3550 50  0001 C CNN
	1    7100 3550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F9BDD30
P 7450 3550
AR Path="/5F9BDD30" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDD30" Ref="D4"  Part="1" 
F 0 "D4" H 7450 3650 50  0000 C CNN
F 1 "LED" H 7450 3750 50  0000 C CNN
F 2 "ao_tht:LED_D5.0mm" H 7450 3550 50  0001 C CNN
F 3 "~" H 7450 3550 50  0001 C CNN
	1    7450 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 3550 7300 3550
Wire Wire Line
	7600 3550 8200 3550
Connection ~ 6850 4550
Wire Wire Line
	6850 4550 6850 4850
Wire Wire Line
	6850 4550 6950 4550
Wire Wire Line
	7250 4550 7900 4550
Connection ~ 7900 4550
$Comp
L Device:D_Schottky D?
U 1 1 5F9BDC68
P 7900 4700
AR Path="/5F9BDC68" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDC68" Ref="D10"  Part="1" 
F 0 "D10" H 7900 4916 50  0000 C CNN
F 1 "1n5817" H 7900 4825 50  0000 C CNN
F 2 "ao_tht:D_DO-41_SOD81_P7.62mm_Horizontal" H 7900 4700 50  0001 C CNN
F 3 "~" H 7900 4700 50  0001 C CNN
	1    7900 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F9BDC71
P 7100 4550
AR Path="/5F9BDC71" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9BDC71" Ref="R18"  Part="1" 
F 0 "R18" V 7000 4500 50  0000 C CNN
F 1 "1k" V 7000 4650 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 4550 50  0001 C CNN
F 3 "~" H 7100 4550 50  0001 C CNN
	1    7100 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 4550 8250 4550
Wire Wire Line
	7600 4850 7900 4850
Wire Wire Line
	7900 4850 8200 4850
Connection ~ 7900 4850
Wire Wire Line
	8200 4650 8250 4650
Wire Wire Line
	7250 4850 7300 4850
$Comp
L Device:R R?
U 1 1 5F9BDC77
P 7100 4850
AR Path="/5F9BDC77" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9BDC77" Ref="R19"  Part="1" 
F 0 "R19" V 7000 4800 50  0000 C CNN
F 1 "1k" V 7000 4950 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 4850 50  0001 C CNN
F 3 "~" H 7100 4850 50  0001 C CNN
	1    7100 4850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F9BDC7D
P 7450 4850
AR Path="/5F9BDC7D" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDC7D" Ref="D6"  Part="1" 
F 0 "D6" H 7450 4950 50  0000 C CNN
F 1 "LED" H 7450 5050 50  0000 C CNN
F 2 "ao_tht:LED_D5.0mm" H 7450 4850 50  0001 C CNN
F 3 "~" H 7450 4850 50  0001 C CNN
	1    7450 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 4850 6950 4850
Wire Wire Line
	8200 4850 8200 4650
Text Label 8000 4550 2    70   ~ 0
CLOCK
Wire Wire Line
	5300 3250 5300 3550
Wire Wire Line
	4350 3250 5300 3250
Wire Wire Line
	5200 4550 6850 4550
$Comp
L power:GND1 #PWR036
U 1 1 5FA4AF10
P 8200 2800
F 0 "#PWR036" H 8200 2550 50  0001 C CNN
F 1 "GND1" H 8205 2627 50  0000 C CNN
F 2 "" H 8200 2800 50  0001 C CNN
F 3 "" H 8200 2800 50  0001 C CNN
	1    8200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2800 8200 2750
$Comp
L power:GND1 #PWR037
U 1 1 5FA6E30F
P 8200 3300
F 0 "#PWR037" H 8200 3050 50  0001 C CNN
F 1 "GND1" H 8205 3127 50  0000 C CNN
F 2 "" H 8200 3300 50  0001 C CNN
F 3 "" H 8200 3300 50  0001 C CNN
	1    8200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3300 8200 3250
$Comp
L Connector:AudioJack2 J?
U 1 1 5F9BDC87
P 8450 4550
AR Path="/5F9BDC87" Ref="J?"  Part="1" 
AR Path="/5F990527/5F9BDC87" Ref="J17"  Part="1" 
F 0 "J17" H 8270 4533 50  0000 R CNN
F 1 "AudioJack2" H 8270 4624 50  0000 R CNN
F 2 "ao_tht:Jack_6.35mm_PJ_629HAN" H 8450 4550 50  0001 C CNN
F 3 "~" H 8450 4550 50  0001 C CNN
	1    8450 4550
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J?
U 1 1 5F9BDD29
P 8450 3900
AR Path="/5F9BDD29" Ref="J?"  Part="1" 
AR Path="/5F990527/5F9BDD29" Ref="J16"  Part="1" 
F 0 "J16" H 8270 3883 50  0000 R CNN
F 1 "AudioJack2" H 8270 3974 50  0000 R CNN
F 2 "ao_tht:Jack_6.35mm_PJ_629HAN" H 8450 3900 50  0001 C CNN
F 3 "~" H 8450 3900 50  0001 C CNN
	1    8450 3900
	-1   0    0    1   
$EndComp
$Comp
L power:GND1 #PWR038
U 1 1 5FA8A7BB
P 8200 3600
F 0 "#PWR038" H 8200 3350 50  0001 C CNN
F 1 "GND1" H 8205 3427 50  0000 C CNN
F 2 "" H 8200 3600 50  0001 C CNN
F 3 "" H 8200 3600 50  0001 C CNN
	1    8200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3600 8200 3550
$Comp
L power:GND1 #PWR039
U 1 1 5FA9B8F7
P 8200 4250
F 0 "#PWR039" H 8200 4000 50  0001 C CNN
F 1 "GND1" H 8205 4077 50  0000 C CNN
F 2 "" H 8200 4250 50  0001 C CNN
F 3 "" H 8200 4250 50  0001 C CNN
	1    8200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4250 8200 4200
$Comp
L power:GND1 #PWR040
U 1 1 5FAA5F8D
P 8200 4900
F 0 "#PWR040" H 8200 4650 50  0001 C CNN
F 1 "GND1" H 8205 4727 50  0000 C CNN
F 2 "" H 8200 4900 50  0001 C CNN
F 3 "" H 8200 4900 50  0001 C CNN
	1    8200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4900 8200 4850
Wire Wire Line
	5100 5850 6850 5850
Text Label 8000 5850 2    70   ~ 0
GATE
$Comp
L Device:R R?
U 1 1 5F9B9E4D
P 7100 6150
AR Path="/5F9B9E4D" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9B9E4D" Ref="R23"  Part="1" 
F 0 "R23" V 7000 6100 50  0000 C CNN
F 1 "1k" V 7000 6250 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 6150 50  0001 C CNN
F 3 "~" H 7100 6150 50  0001 C CNN
	1    7100 6150
	0    1    1    0   
$EndComp
Connection ~ 6850 5850
$Comp
L Connector:AudioJack2 J?
U 1 1 5F9BDD1D
P 8450 5850
AR Path="/5F9BDD1D" Ref="J?"  Part="1" 
AR Path="/5F990527/5F9BDD1D" Ref="J19"  Part="1" 
F 0 "J19" H 8270 5833 50  0000 R CNN
F 1 "AudioJack2" H 8270 5924 50  0000 R CNN
F 2 "ao_tht:Jack_6.35mm_PJ_629HAN" H 8450 5850 50  0001 C CNN
F 3 "~" H 8450 5850 50  0001 C CNN
	1    8450 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 5850 6950 5850
Wire Wire Line
	7250 6150 7300 6150
Wire Wire Line
	6850 6150 6950 6150
Wire Wire Line
	6850 5850 6850 6150
$Comp
L Device:LED D?
U 1 1 5F9BDCE7
P 7450 6150
AR Path="/5F9BDCE7" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDCE7" Ref="D8"  Part="1" 
F 0 "D8" H 7450 6250 50  0000 C CNN
F 1 "LED" H 7450 6350 50  0000 C CNN
F 2 "ao_tht:LED_D5.0mm" H 7450 6150 50  0001 C CNN
F 3 "~" H 7450 6150 50  0001 C CNN
	1    7450 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F9BDCDB
P 7100 5850
AR Path="/5F9BDCDB" Ref="R?"  Part="1" 
AR Path="/5F990527/5F9BDCDB" Ref="R22"  Part="1" 
F 0 "R22" V 7000 5800 50  0000 C CNN
F 1 "1k" V 7000 5950 50  0000 C CNN
F 2 "ao_tht:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7030 5850 50  0001 C CNN
F 3 "~" H 7100 5850 50  0001 C CNN
	1    7100 5850
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5F9BDCA6
P 7900 6000
AR Path="/5F9BDCA6" Ref="D?"  Part="1" 
AR Path="/5F990527/5F9BDCA6" Ref="D12"  Part="1" 
F 0 "D12" H 7900 6216 50  0000 C CNN
F 1 "1n5817" H 7900 6125 50  0000 C CNN
F 2 "ao_tht:D_DO-41_SOD81_P7.62mm_Horizontal" H 7900 6000 50  0001 C CNN
F 3 "~" H 7900 6000 50  0001 C CNN
	1    7900 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 5850 8250 5850
Connection ~ 7900 6150
Wire Wire Line
	7900 6150 8200 6150
Wire Wire Line
	8250 5950 8200 5950
Wire Wire Line
	8200 5950 8200 6150
Wire Wire Line
	7250 5850 7900 5850
Connection ~ 7900 5850
Wire Wire Line
	7600 6150 7900 6150
$Comp
L power:GND1 #PWR041
U 1 1 5FAB6363
P 8200 5550
F 0 "#PWR041" H 8200 5300 50  0001 C CNN
F 1 "GND1" H 8205 5377 50  0000 C CNN
F 2 "" H 8200 5550 50  0001 C CNN
F 3 "" H 8200 5550 50  0001 C CNN
	1    8200 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5550 8200 5500
$Comp
L power:GND1 #PWR042
U 1 1 5FAC8F66
P 8200 6200
F 0 "#PWR042" H 8200 5950 50  0001 C CNN
F 1 "GND1" H 8205 6027 50  0000 C CNN
F 2 "" H 8200 6200 50  0001 C CNN
F 3 "" H 8200 6200 50  0001 C CNN
	1    8200 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6200 8200 6150
Wire Wire Line
	5100 1650 5100 2850
Wire Wire Line
	8200 1800 8200 1750
$Comp
L power:GND1 #PWR034
U 1 1 5FA44B33
P 8200 1800
F 0 "#PWR034" H 8200 1550 50  0001 C CNN
F 1 "GND1" H 8205 1627 50  0000 C CNN
F 2 "" H 8200 1800 50  0001 C CNN
F 3 "" H 8200 1800 50  0001 C CNN
	1    8200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1650 8250 1650
$Comp
L Connector:AudioJack2 J?
U 1 1 5F973172
P 8450 1650
AR Path="/5F973172" Ref="J?"  Part="1" 
AR Path="/5F990527/5F973172" Ref="J12"  Part="1" 
F 0 "J12" H 8270 1633 50  0000 R CNN
F 1 "AudioJack2" H 8270 1724 50  0000 R CNN
F 2 "ao_tht:Jack_6.35mm_PJ_629HAN" H 8450 1650 50  0001 C CNN
F 3 "~" H 8450 1650 50  0001 C CNN
	1    8450 1650
	-1   0    0    1   
$EndComp
Text Label 8000 1650 2    70   ~ 0
NOTE
Wire Wire Line
	8250 1750 8200 1750
Wire Wire Line
	8200 2300 8200 2250
$Comp
L power:GND1 #PWR035
U 1 1 5FA47D26
P 8200 2300
F 0 "#PWR035" H 8200 2050 50  0001 C CNN
F 1 "GND1" H 8205 2127 50  0000 C CNN
F 2 "" H 8200 2300 50  0001 C CNN
F 3 "" H 8200 2300 50  0001 C CNN
	1    8200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2150 8250 2150
Text Label 8000 2150 2    70   ~ 0
CONTROL
$Comp
L Connector:AudioJack2 J?
U 1 1 5F973143
P 8450 2150
AR Path="/5F973143" Ref="J?"  Part="1" 
AR Path="/5F990527/5F973143" Ref="J13"  Part="1" 
F 0 "J13" H 8270 2133 50  0000 R CNN
F 1 "AudioJack2" H 8270 2224 50  0000 R CNN
F 2 "ao_tht:Jack_6.35mm_PJ_629HAN" H 8450 2150 50  0001 C CNN
F 3 "~" H 8450 2150 50  0001 C CNN
	1    8450 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8250 2250 8200 2250
$EndSCHEMATC
