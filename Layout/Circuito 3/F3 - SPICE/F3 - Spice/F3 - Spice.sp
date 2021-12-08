CIRCUIT C:\Users\MaironSC\Desktop\CCI TRAB 2\Circuito OUT\F3.MSK
*
* IC Technology: K-CMOS Free-PDK-Based 45nm - 0 Metal
*
VDD 1 0 DC 1.00
VB IN_B 0 DC 0 PULSE(0.00 1.00 0.98N 0.03N 0.03N 0.97N 2.00N)
VA IN_A 0 DC 0 PULSE(0.00 1.00 0.23N 0.03N 0.03N 0.23N 0.50N)
*
* List of nodes
* "out" corresponds to n°OUT
* "N4" corresponds to n°4
* "N5" corresponds to n°5
* "GND" corresponds to n°0
* "B" corresponds to n°IN_B
* "N8" corresponds to n°8
* "N9" corresponds to n°9
* "A" corresponds to n°IN_A
*
* MOS devices
MN1 0 4 OUT 0 NMOS  W= 0.10U L= 0.05U
MN2 0 IN_B 4 0 NMOS  W= 0.20U L= 0.05U
MN3 4 IN_A 0 0 NMOS  W= 0.20U L= 0.05U
MP1 1 4 OUT 1 PMOS  W= 0.10U L= 0.05U
MP2 5 IN_B 4 1 PMOS  W= 0.28U L= 0.05U
MP3 1 IN_A 5 1 PMOS  W= 0.28U L= 0.05U
*
C2 1 0  0.310fF
C3 OUT 0  0.076fF
C4 4 0  0.271fF
C5 5 0  0.059fF
C7 IN_B 0  0.034fF
C8 8 0  0.001fF
C9 9 0  0.001fF
C10 10 0  0.001fF
C11 11 0  0.001fF
C12 12 0  0.001fF
C13 13 0  0.001fF
C14 14 0  0.001fF
C15 15 0  0.001fF
C16 16 0  0.001fF
C17 IN_A 0  0.031fF
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
.tran 0.1N 5.00N
.plot  V(IN_A) V(IN_B) V(OUT)

.END
