* Nome do aluno: Mairon Schneider Cardoso

*A000  -> 0000-1000-0000
*A001  -> 0001-1001-0001
*A010  -> 0010-1010-0010
*A011  -> 0011-1011-0011
*A100  -> 0100-1100-0100
*A101  -> 0101-1101-0101
*A110  -> 0110-1110-0110

*0B00  -> 0000-0100-0000
*0B01  -> 0001-0101-0001
*0B10  -> 0010-0110-0010
*0B11  -> 0011-0111-0011
*1B00  -> 1000-1100-1000
*1B01  -> 1001-1101-1001
*1B10  -> 1010-1110-1010

*00C0  -> 0000-0010-0000
*00C1  -> 0001-0011-0001
*01C0  -> 0100-0110-0100
*01C1  -> 0101-0110-0101
*10C0  -> 1000-1010-1000
*10C1  -> 1001-1011-1001
*11C0  -> 1100-1110-1100

*111D  -> 1110-1111-1110


.include ptm45nmhp.l.txt
.param L0 = 50n
.param WN = 100n
.param WP = '1.5*WN'

V1 VDD 0 DC 1
V2 VDD2 0 DC 1

VinA in_A 0 PWL(0ns 0 1ns 0 1.001ns 1 2ns 1 2.001ns 0 3ns 0 4ns 0 4.001ns 1 5ns 1 5.001ns 0 6ns 0 6.001ns 0 7ns 0 7.001ns 1 8ns 1 8.001ns 0 10ns 0 10.001ns 1 11ns 1 11.001ns 0 13ns 0 13.001ns 1 14ns 1 14.001ns 0 16ns 0 16.001ns 1 17ns 1 17.001ns 0 19ns 0 19.001ns 1 20ns 1 20.001ns 0 21ns 0 21.001ns 0 33ns 0 33.001ns 1 42ns 1 42.001ns 0 54ns 0 54.001ns 1 66ns 1)
VinB in_B 0 PWL(0ns 0 12ns 0 12.001ns 1 18ns 1 18.001ns 1 21ns 1 21.001ns 0 22ns 0 22.001ns 1 23ns 1 23.001ns 0 25ns 0 25.001ns 1 26ns 1 26.001ns 0 28ns 0 28.001ns 1 29ns 1 29.001ns 0 31ns 0 31.001ns 1 32ns 1 32.001ns 0 34ns 0 34.001ns 1 35ns 1 35.001ns 0 37ns 0 37.001ns 1 38ns 1 38.001ns 0 40ns 0 40.001ns 1 41ns 1 41.001ns 0 42ns 0 42.001ns 0 48ns 0 48.001ns 1 54ns 1 54.001ns 0 60ns 0  60.001ns 1 66ns 1)
VinC in_C 0 PWL(0ns 0 6ns 0 6.001ns 1 12ns 1 12.001ns 0 18ns 0 18.001ns 1 21ns 1 21.001ns 0 27ns 0 27.001ns 1 33ns 1 33.001ns 0 39ns 0 39.001ns 1 42ns 1 42.001ns 0 43ns 0 43.001ns 1 44ns 1 44.001ns 0 46ns 0 46.001ns 1 47ns 1 47.001ns 0 49ns 0 49.001ns 1 50ns 1 50.001ns 0 52ns 0 52.001ns 1 53ns 1 53.001ns 0 55ns 0 55.001ns 1 56ns 1 56.001ns 0 58ns 0 58.001ns 1 59ns 1 59.001ns 0 61ns 0 61.001ns 1 62ns 1 62.001ns 0 63ns 0 63.001ns 1 66ns 1)
VinD in_D 0 PWL(0ns 0 3ns 0 3.001ns 1 6ns 1 6.001ns 0 9ns 0 9.001ns 1 12ns 1 12.001ns 0 15ns 0 15.001ns 1 18ns 1 18.001ns 0 24ns 0 24.001ns 1 27ns 1 27.001ns 0 30ns 0 30.001ns 1 33ns 1 33.001ns 0 36ns 0 36.001ns 1 39ns 1 39.001ns 0 45ns 0 45.001ns 1 48ns 1 48.001ns 0 51ns 0 51.001ns 1 54ns 1 54.001ns 0 57ns 0 57.001ns 1 60ns 1 60.001ns 0 63ns 0 63.001ns 0 64ns 0 64.001ns 1 65ns 1 65.001ns 0 66ns 0)


.subckt inversor A OUT VDD
MP1 OUT A VDD VDD   PMOS L=L0 W=WP
MN1 OUT A 0 0 		NMOS L=L0 W=WN
.ends inversor

.subckt FO4 OUT A VDD
X1 OUT A VDD inversor
X2 OUT A VDD inversor
X3 OUT A VDD inversor
X4 OUT A VDD inversor
.ends FO4

.subckt inputDelay out in_s vdd_in
M1 out_s in_s vdd_in vdd_in PMOS W = WP 		 L = L0
M2 out_s in_s 0 0           NMOS W = WN   	     L = L0

M3 out out_s vdd_in vdd_in  PMOS W = WP 		 L = L0
M4 out out_s 0 0 		    NMOS W = WN    	     L = L0
.ends inputDelay

.SUBCKT F1 inA inB inC inD not_out VDD
*.PININFO inA:I inB:I inC:I inD:I not_out:O VDD:P 0:G
*.EQN not_out=!(!inA + !inD + !inB + !inC);
MP1 out inA VDD VDD 			 PMOS W = WP 	   L = L0
MP2 out inD VDD VDD 			 PMOS W = WP 	   L = L0
MP3 out inB VDD VDD 			 PMOS W = WP 	   L = L0
MP4 out inC VDD VDD 			 PMOS W = WP 	   L = L0
MN5 pd_n1 inA 0 0 			 NMOS W = '4*WN'   L = L0
MN6 pd_n3 inD pd_n1 0		 NMOS W = '4*WN'   L = L0
MN7 pd_n5 inB pd_n3 0 		 NMOS W = '4*WN'   L = L0
MN8 out inC pd_n5 0 			 NMOS W = '4*WN'   L = L0

MP_inv9 not_out out VDD VDD  PMOS W = WP 		 L = L0
MN_inv10 not_out out 0 0 	  NMOS W = WN    	 L = L0
.ENDS F1


.SUBCKT F2 inA inB inC out VDD
*.PININFO inA:I inB:I inC:I out:O VDD:P 0:G
*.EQN out=((!inC * !inA * !inB) + (inC * !inA * inB) + (inC * !inB * inA) + (inB * !inC * inA));
MP1 pu_n1 inA VDD VDD 			 PMOS W = '3*WP' 	L = L0
MP2 pu_n3 inB pu_n1 VDD 		 PMOS W = '3*WP' 	L = L0
MP3 out inC pu_n3 VDD 			 PMOS W = '3*WP' 	L = L0
MP4 pu_n7 inA VDD VDD 			 PMOS W = '3*WP' 	L = L0
MP5 pu_n9 not_inB pu_n7 VDD 	 PMOS W = '3*WP' 	L = L0
MP6 out not_inC pu_n9 VDD 		 PMOS W = '3*WP' 	L = L0
MP7 pu_n15 inB VDD VDD 			 PMOS W = '3*WP' 	L = L0
MP8 pu_n17 not_inA pu_n15 VDD    PMOS W = '3*WP' 	L = L0
MP9 out not_inC pu_n17 VDD 	     PMOS W = '3*WP' 	L = L0
MP10 pu_n21 inC VDD VDD 		 PMOS W = '3*WP' 	L = L0
MP11 pu_n23 not_inA pu_n21 VDD   PMOS W = '3*WP' 	L = L0
MP12 out not_inB pu_n23 VDD 	 PMOS W = '3*WP' 	L = L0

MN13 pd_n9 inA 0 0 				 NMOS W = '4*WN'  L = L0
MN14 pd_n9 inB 0 0 				 NMOS W = '4*WN'  L = L0
MN15 pd_n9 inC 0 0 				 NMOS W = '4*WN'  L = L0
MN16 pd_n19 inA pd_n9 0 		 NMOS W = '4*WN'  L = L0
MN17 pd_n19 not_inB pd_n9 0 	 NMOS W = '4*WN'  L = L0
MN18 pd_n19 not_inC pd_n9 0 	 NMOS W = '4*WN'  L = L0
MN19 pd_n29 inB pd_n19 0 		 NMOS W = '4*WN'  L = L0
MN20 pd_n29 not_inA pd_n19 0 	 NMOS W = '4*WN'  L = L0
MN21 pd_n29 not_inC pd_n19 0 	 NMOS W = '4*WN'  L = L0
MN22 out inC pd_n29 0 			 NMOS W = '4*WN'  L = L0
MN23 out not_inA pd_n29 0 		 NMOS W = '4*WN'  L = L0
MN24 out not_inB pd_n29 0 		 NMOS W = '4*WN'  L = L0

MP_inv25 not_inA inA VDD VDD  	 PMOS W = WP 	  L = L0
MN_inv26 not_inA inA 0 0 	  	    NMOS W = WN      L = L0
MP_inv27 not_inB inB VDD VDD  	 PMOS W = WP 	  L = L0
MN_inv28 not_inB inB 0 0 	  	    NMOS W = WN      L = L0
MP_inv29 not_inC inC VDD VDD  	 PMOS W = WP 	  L = L0
MN_inv30 not_inC inC 0 0 	  	    NMOS W = WN      L = L0
.ENDS F2


.SUBCKT F3 A B not_out VDD
*.PININFO A:I B:I not_out:O VDD:P GND:G
*.EQN not_out=!(!A * !B);
MP1 pu_n1 A VDD VDD 		 PMOS W = '2*WP' 	 L = L0
MP2 out B pu_n1 VDD 		 PMOS W = '2*WP' 	 L = L0

MN3 out A 0 0   			 NMOS W = WN    	 L = L0
MN4 out B 0 0 			 	 NMOS W = WN    	 L = L0

MP_inv5 not_out out VDD VDD  PMOS W = WP 		 L = L0
MN_inv6 not_out out 0 0 	 NMOS W = WN    	 L = L0
.ENDS F3

XinputDelay1 inA in_A VDD2 inputDelay
XinputDelay2 inB in_B VDD2 inputDelay
XinputDelay3 inC in_C VDD2 inputDelay
XinputDelay4 inD in_D VDD2 inputDelay

XF1 inA inB inC inD F1_out VDD F1
XF2 inA inB inC F2_out VDD     F2
XF3 F1_out F2_out F3_out VDD   F3
XFO4 F3_out out VDD2 FO4


.tran 1p 66.1n


* A000
.measure tran atrasoA000HL
+ trig v(inA) val=0.5 td=1ns rise=1
+ targ v(F3_out)  val=0.5 td=1ns fall=1

.measure tran atrasoA000LH
+ trig v(inA) val=0.5 td=1ns fall=1
+ targ v(F3_out)  val=0.5 td=1ns rise=1

* A001
.measure tran atrasoA001HL
+ trig v(inA) val=0.5 td=4ns rise=1
+ targ v(F3_out)  val=0.5 td=4ns fall=1

.measure tran atrasoA001LH
+ trig v(inA) val=0.5 td=4ns fall=1
+ targ v(F3_out)  val=0.5 td=4ns rise=1

* A010
.measure tran atrasoA010HL
+ trig v(inA) val=0.5 td=7ns fall=1
+ targ v(F3_out)  val=0.5 td=7ns fall=1

.measure tran atrasoA010LH
+ trig v(inA) val=0.5 td=7ns rise=1
+ targ v(F3_out)  val=0.5 td=7ns rise=1

* A011
.measure tran atrasoA011HL
+ trig v(inA) val=0.5 td=10ns fall=1
+ targ v(F3_out)  val=0.5 td=10ns fall=1

.measure tran atrasoA011LH
+ trig v(inA) val=0.5 td=10ns rise=1
+ targ v(F3_out)  val=0.5 td=10ns rise=1

* A100
.measure tran atrasoA100HL
+ trig v(inA) val=0.5 td=13ns fall=1
+ targ v(F3_out)  val=0.5 td=13ns fall=1

.measure tran atrasoA100LH
+ trig v(inA) val=0.5 td=13ns rise=1
+ targ v(F3_out)  val=0.5 td=13ns rise=1

* A101
.measure tran atrasoA101HL
+ trig v(inA) val=0.5 td=16ns fall=1
+ targ v(F3_out)  val=0.5 td=16ns fall=1

.measure tran atrasoA101LH
+ trig v(inA) val=0.5 td=16ns rise=1
+ targ v(F3_out)  val=0.5 td=16ns rise=1

* A110
.measure tran atrasoA110HL
+ trig v(inA) val=0.5 td=19ns rise=1
+ targ v(F3_out)  val=0.5 td=19ns fall=1

.measure tran atrasoA110LH
+ trig v(inA) val=0.5 td=19ns fall=1
+ targ v(F3_out)  val=0.5 td=19ns rise=1

* 0B00
.measure tran atraso0B00HL
+ trig v(inB) val=0.5 td=22ns rise=1
+ targ v(F3_out)  val=0.5 td=22ns fall=1

.measure tran atraso0B00LH
+ trig v(inB) val=0.5 td=22ns fall=1
+ targ v(F3_out)  val=0.5 td=22ns rise=1

* 0B01
.measure tran atraso0B01HL
+ trig v(inB) val=0.5 td=25ns rise=1
+ targ v(F3_out)  val=0.5 td=25ns fall=1

.measure tran atraso0B01LH
+ trig v(inB) val=0.5 td=25ns fall=1
+ targ v(F3_out)  val=0.5 td=25ns rise=1

* 0B10
.measure tran atraso0B10HL
+ trig v(inB) val=0.5 td=28ns fall=1
+ targ v(F3_out)  val=0.5 td=28ns fall=1

.measure tran atraso0B10LH
+ trig v(inB) val=0.5 td=28ns rise=1
+ targ v(F3_out)  val=0.5 td=28ns rise=1

* 0B11
.measure tran atraso0B11HL
+ trig v(inB) val=0.5 td=31ns fall=1
+ targ v(F3_out)  val=0.5 td=31ns fall=1

.measure tran atraso0B11LH
+ trig v(inB) val=0.5 td=31ns rise=1
+ targ v(F3_out)  val=0.5 td=31ns rise=1

* 1B00
.measure tran atraso1B00HL
+ trig v(inB) val=0.5 td=34ns fall=1
+ targ v(F3_out)  val=0.5 td=34ns fall=1

.measure tran atraso1B00LH
+ trig v(inB) val=0.5 td=34ns rise=1
+ targ v(F3_out)  val=0.5 td=34ns rise=1

* 1B01
.measure tran atraso1B01HL
+ trig v(inB) val=0.5 td=37ns fall=1
+ targ v(F3_out)  val=0.5 td=37ns fall=1

.measure tran atraso1B01LH
+ trig v(inB) val=0.5 td=37ns rise=1
+ targ v(F3_out)  val=0.5 td=37ns rise=1

* 1B10
.measure tran atraso1B10HL
+ trig v(inB) val=0.5 td=40ns rise=1
+ targ v(F3_out)  val=0.5 td=40ns fall=1

.measure tran atraso1B10LH
+ trig v(inB) val=0.5 td=40ns fall=1
+ targ v(F3_out)  val=0.5 td=40ns rise=1

* 00C0
.measure tran atraso00C0HL
+ trig v(inC) val=0.5 td=43ns rise=1
+ targ v(F3_out)  val=0.5 td=43ns fall=1

.measure tran atraso00C0LH
+ trig v(inC) val=0.5 td=43ns fall=1
+ targ v(F3_out)  val=0.5 td=43ns rise=1

* 00C1
.measure tran atraso00C1HL
+ trig v(inC) val=0.5 td=46ns rise=1
+ targ v(F3_out)  val=0.5 td=46ns fall=1

.measure tran atraso00C1LH
+ trig v(inC) val=0.5 td=46ns fall=1
+ targ v(F3_out)  val=0.5 td=46ns rise=1

* 01C0
.measure tran atraso01C0HL
+ trig v(inC) val=0.5 td=49ns fall=1
+ targ v(F3_out)  val=0.5 td=49ns fall=1

.measure tran atraso01C0LH
+ trig v(inC) val=0.5 td=49ns rise=1
+ targ v(F3_out)  val=0.5 td=49ns rise=1

* 01C1
.measure tran atraso01C1HL
+ trig v(inC) val=0.5 td=52ns fall=1
+ targ v(F3_out)  val=0.5 td=52ns fall=1

.measure tran atraso01C1LH
+ trig v(inC) val=0.5 td=52ns rise=1
+ targ v(F3_out)  val=0.5 td=52ns rise=1

* 10C0
.measure tran atraso10C0HL
+ trig v(inC) val=0.5 td=55ns fall=1
+ targ v(F3_out)  val=0.5 td=55ns fall=1

.measure tran atraso10C0LH
+ trig v(inC) val=0.5 td=55ns rise=1
+ targ v(F3_out)  val=0.5 td=55ns rise=1

* 10C1
.measure tran atraso10C1HL
+ trig v(inC) val=0.5 td=58ns fall=1
+ targ v(F3_out)  val=0.5 td=58ns fall=1

.measure tran atraso10C1LH
+ trig v(inC) val=0.5 td=58ns rise=1
+ targ v(F3_out)  val=0.5 td=58ns rise=1

* 11C0
.measure tran atraso11C0HL
+ trig v(inC) val=0.5 td=61ns rise=1
+ targ v(F3_out)  val=0.5 td=61ns fall=1

.measure tran atraso11C0LH
+ trig v(inC) val=0.5 td=61ns fall=1
+ targ v(F3_out)  val=0.5 td=61ns rise=1

* 111D
.measure tran atraso111DHL
+ trig v(inD) val=0.5 td=64ns fall=1
+ targ v(F3_out)  val=0.5 td=64ns fall=1

.measure tran atraso111DLH
+ trig v(inD) val=0.5 td=64ns rise=1
+ targ v(F3_out)  val=0.5 td=64ns rise=1



*CONSUMO MÉDIO
.measure tran consumo_Medio AVG(i(V1)*-v(VDD)) from=0ns to=66ns


* Consumo Estático
.measure tran consumo_Estatico_A000HL AVG(i(V1)*-v(VDD)) from=1.97ns to=2ns
.measure tran consumo_Estatico_A000LH AVG(i(V1)*-v(VDD)) from=2.97ns to=3ns

.measure tran consumo_Estatico_A001HL AVG(i(V1)*-v(VDD)) from=4.97ns to=5ns
.measure tran consumo_Estatico_A001LH AVG(i(V1)*-v(VDD)) from=5.97ns to=6ns

.measure tran consumo_Estatico_A010HL AVG(i(V1)*-v(VDD)) from=7.97ns to=8ns
.measure tran consumo_Estatico_A010LH AVG(i(V1)*-v(VDD)) from=8.97ns to=9ns

.measure tran consumo_Estatico_A011HL AVG(i(V1)*-v(VDD)) from=10.97ns to=11ns
.measure tran consumo_Estatico_A011LH AVG(i(V1)*-v(VDD)) from=11.97ns to=12ns

.measure tran consumo_Estatico_A100HL AVG(i(V1)*-v(VDD)) from=13.97ns to=14ns
.measure tran consumo_Estatico_A100LH AVG(i(V1)*-v(VDD)) from=14.97ns to=15ns

.measure tran consumo_Estatico_A101HL AVG(i(V1)*-v(VDD)) from=16.97ns to=17ns
.measure tran consumo_Estatico_A101LH AVG(i(V1)*-v(VDD)) from=17.97ns to=18ns

.measure tran consumo_Estatico_A110HL AVG(i(V1)*-v(VDD)) from=19.97ns to=20ns
.measure tran consumo_Estatico_A110LH AVG(i(V1)*-v(VDD)) from=20.97ns to=21ns

.measure tran consumo_Estatico_0B00HL AVG(i(V1)*-v(VDD)) from=22.97ns to=23ns
.measure tran consumo_Estatico_0B00LH AVG(i(V1)*-v(VDD)) from=23.97ns to=24ns

.measure tran consumo_Estatico_0B01HL AVG(i(V1)*-v(VDD)) from=25.97ns to=26ns
.measure tran consumo_Estatico_0B01LH AVG(i(V1)*-v(VDD)) from=26.97ns to=27ns

.measure tran consumo_Estatico_0B10HL AVG(i(V1)*-v(VDD)) from=28.97ns to=29ns
.measure tran consumo_Estatico_0B10LH AVG(i(V1)*-v(VDD)) from=29.97ns to=30ns

.measure tran consumo_Estatico_0B11HL AVG(i(V1)*-v(VDD)) from=31.97ns to=32ns
.measure tran consumo_Estatico_0B11LH AVG(i(V1)*-v(VDD)) from=32.97ns to=33ns

.measure tran consumo_Estatico_1B00HL AVG(i(V1)*-v(VDD)) from=34.97ns to=35ns
.measure tran consumo_Estatico_1B00LH AVG(i(V1)*-v(VDD)) from=35.97ns to=36ns

.measure tran consumo_Estatico_1B01HL AVG(i(V1)*-v(VDD)) from=37.97ns to=38ns
.measure tran consumo_Estatico_1B01LH AVG(i(V1)*-v(VDD)) from=38.97ns to=39ns

.measure tran consumo_Estatico_1B10HL AVG(i(V1)*-v(VDD)) from=40.97ns to=41ns
.measure tran consumo_Estatico_1B10LH AVG(i(V1)*-v(VDD)) from=41.97ns to=42ns

.measure tran consumo_Estatico_00C0HL AVG(i(V1)*-v(VDD)) from=43.97ns to=44ns
.measure tran consumo_Estatico_00C0LH AVG(i(V1)*-v(VDD)) from=44.97ns to=45ns

.measure tran consumo_Estatico_00C1HL AVG(i(V1)*-v(VDD)) from=46.97ns to=47ns
.measure tran consumo_Estatico_00C1LH AVG(i(V1)*-v(VDD)) from=47.97ns to=48ns

.measure tran consumo_Estatico_01C0HL AVG(i(V1)*-v(VDD)) from=49.97ns to=50ns
.measure tran consumo_Estatico_01C0LH AVG(i(V1)*-v(VDD)) from=50.97ns to=51ns

.measure tran consumo_Estatico_01C1HL AVG(i(V1)*-v(VDD)) from=52.97ns to=53ns
.measure tran consumo_Estatico_01C1LH AVG(i(V1)*-v(VDD)) from=53.97ns to=54ns

.measure tran consumo_Estatico_10C0HL AVG(i(V1)*-v(VDD)) from=55.97ns to=56ns
.measure tran consumo_Estatico_10C0LH AVG(i(V1)*-v(VDD)) from=56.97ns to=57ns

.measure tran consumo_Estatico_10C1HL AVG(i(V1)*-v(VDD)) from=58.97ns to=59ns
.measure tran consumo_Estatico_10C1LH AVG(i(V1)*-v(VDD)) from=59.97ns to=60ns

.measure tran consumo_Estatico_11C0HL AVG(i(V1)*-v(VDD)) from=61.97ns to=62ns
.measure tran consumo_Estatico_11C0LH AVG(i(V1)*-v(VDD)) from=62.97ns to=63ns

.measure tran consumo_Estatico_111DHL AVG(i(V1)*-v(VDD)) from=64.97ns to=65ns
.measure tran consumo_Estatico_111DLH AVG(i(V1)*-v(VDD)) from=65.97ns to=66ns

.end
