CIRCUIT C:\Users\MaironSC\Desktop\CCI TRAB 2\Circuito 1\F1.MSK
*
* IC Technology: K-CMOS Free-PDK-Based 45nm - 6 Metal
*
VDD 1 0 DC 1.00
VB IN_B 0 DC 0 PULSE(0.00 1.00 1.97N 0.03N 0.03N 1.97N 4.00N)
VD IN_D 0 DC 0 PULSE(0.00 1.00 0.98N 0.03N 0.03N 0.97N 2.00N)
VA IN_A 0 DC 0 PULSE(0.00 1.00 0.98N 0.03N 0.03N 0.97N 2.00N)
VC IN_C 0 DC 0 PULSE(0.00 1.00 3.98N 0.03N 0.03N 3.98N 8.00N)
*
* List of nodes
* "out" corresponds to n°OUT
* "N4" corresponds to n°4
* "GND" corresponds to n°0
* "N6" corresponds to n°6
* "N7" corresponds to n°7
* "N8" corresponds to n°8
* "N9" corresponds to n°9
* "B" corresponds to n°IN_B
* "D" corresponds to n°IN_D
* "A" corresponds to n°IN_A
* "C" corresponds to n°IN_C
*
* MOS devices
MN1 0 4 OUT 0 NMOS  W= 0.10U L= 0.05U
MN2 6 IN_D 4 0 NMOS  W= 0.40U L= 0.05U
MN3 7 IN_C 6 0 NMOS  W= 0.40U L= 0.05U
MN4 8 IN_B 7 0 NMOS  W= 0.40U L= 0.05U
MN5 0 IN_A 8 0 NMOS  W= 0.40U L= 0.05U
MP1 1 4 OUT 1 PMOS  W= 0.10U L= 0.05U
MP2 4 IN_D 1 1 PMOS  W= 0.10U L= 0.05U
MP3 1 IN_C 4 1 PMOS  W= 0.10U L= 0.05U
MP4 4 IN_B 1 1 PMOS  W= 0.10U L= 0.05U
MP5 1 IN_A 4 1 PMOS  W= 0.10U L= 0.05U
*
C2 1 0  0.362fF
C3 OUT 0  0.091fF
C4 4 0  0.215fF
C6 6 0  0.082fF
C7 7 0  0.082fF
C8 8 0  0.082fF
C9 9 0  0.001fF
C10 10 0  0.001fF
C11 11 0  0.001fF
C12 IN_B 0  0.039fF
C13 13 0  0.001fF
C14 IN_D 0  0.045fF
C15 15 0  0.001fF
C16 16 0  0.001fF
C17 17 0  0.001fF
C18 IN_A 0  0.035fF
C19 19 0  0.001fF
C20 20 0  0.001fF
C21 21 0  0.001fF
C22 22 0  0.001fF
C23 IN_C 0  0.042fF
*
* n-MOS Model OUT :
* low leakage
.MODEL NMOS NMOS LEVEL=3 VTO=0.40 UO=600.000 TOX= 2.0E-9
+LD =0.000U THETA=0.500 GAMMA=0.400
+PHI=0.200 KAPPA=0.060 VMAX=120.00K
+CGSO=100.0p CGDO=100.0p
+CGBO= 60.0p CJSW=240.0p
*
* p-MOS Model OUT:
* low leakage
.MODEL PMOS PMOS LEVEL=3 VTO=-0.45 UO=200.000 TOX= 2.0E-9
+LD =0.000U THETA=0.300 GAMMA=0.400
+PHI=0.200 KAPPA=0.060 VMAX=110.00K
+CGSO=100.0p CGDO=100.0p
+CGBO= 60.0p CJSW=240.0p
*
* Transient analysis
*
* (Winspice)
.options temp=27.0
.tran 0.1N 50.00N
.plot  V(IN_D) V(IN_C) V(IN_B) V(IN_A) V(OUT)

.END
