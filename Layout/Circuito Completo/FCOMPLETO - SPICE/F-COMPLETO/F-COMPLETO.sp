CIRCUIT C:\Users\MaironSC\Desktop\CCI TRAB 2\Circuito Completo\CIRCUITO COMPLETO - MICROWIND\F1eF2eF3.MSK
*
* IC Technology: K-CMOS Free-PDK-Based 45nm - 6 Metal
*
VDD 1 0 DC 1.00
VC in_c 0 DC 0 PULSE(0.00 1.00 3.00N 0.02N 0.03N 3.98N 7.03N)
VD in_d 0 DC 0 PULSE(0.00 1.00 8.00N 0.03N 0.02N 7.98N 16.02N)
VB in_b 0 DC 0 PULSE(0.00 1.00 4.00N 0.03N 0.03N 1.97N 6.03N)
VA in_a 0 DC 0 PULSE(0.00 1.00 2.00N 0.02N 0.02N 0.98N 3.02N)
*
* List of nodes
* "out" corresponds to n°out
* "N5" corresponds to n°5
* "N6" corresponds to n°6
* "N7" corresponds to n°7
* "N8" corresponds to n°8
* "F2" corresponds to F2
* "F1" corresponds to n°F1
* "not C" corresponds to n°not_C
* "not B" corresponds to n°not_B
* "not A" corresponds to n°not_A
* "GND" corresponds to n°0
* "C" corresponds to n°in_c
* "D" corresponds to n°in_d
* "B" corresponds to n°in_b
* "A" corresponds to n°in_a
*
* MOS devices
MN1 0 5 out 0 NMOS  W= 0.10U L= 0.05U
MN2 0 F1 5 0 NMOS  W= 0.20U L= 0.05U
MN3 5 F2 0 0 NMOS  W= 0.20U L= 0.05U
MN4 22 in_c F2 0 NMOS  W= 0.40U L= 0.05U
MN5 23 not_A 22 0 NMOS  W= 0.40U L= 0.05U
MN6 22 not_B 23 0 NMOS  W= 0.40U L= 0.05U
MN7 24 not_C 22 0 NMOS  W= 0.40U L= 0.05U
MN8 22 not_A 24 0 NMOS  W= 0.40U L= 0.05U
MN9 24 in_b 22 0 NMOS  W= 0.40U L= 0.05U
MN10 25 in_a 24 0 NMOS  W= 0.40U L= 0.05U
MN11 24 not_B 25 0 NMOS  W= 0.40U L= 0.05U
MN12 25 not_C 24 0 NMOS  W= 0.40U L= 0.05U
MN13 0 18 F1 0 NMOS  W= 0.10U L= 0.05U
MN14 0 in_c 25 0 NMOS  W= 0.40U L= 0.05U
MN15 25 in_b 0 0 NMOS  W= 0.40U L= 0.05U
MN16 0 in_a 25 0 NMOS  W= 0.40U L= 0.05U
MN17 26 in_d 18 0 NMOS  W= 0.40U L= 0.05U
MN18 0 in_c not_C 0 NMOS  W= 0.10U L= 0.05U
MN19 27 in_c 26 0 NMOS  W= 0.40U L= 0.05U
MN20 0 in_b not_B 0 NMOS  W= 0.13U L= 0.05U
MN21 28 in_b 27 0 NMOS  W= 0.40U L= 0.05U
MN22 0 in_a not_A 0 NMOS  W= 0.10U L= 0.05U
MN23 0 in_a 28 0 NMOS  W= 0.40U L= 0.05U
MP1 1 5 out 1 PMOS  W= 0.10U L= 0.05U
MP2 6 F1 5 1 PMOS  W= 0.28U L= 0.05U
MP3 1 F2 6 1 PMOS  W= 0.28U L= 0.05U
MP4 7 in_c 1 1 PMOS  W= 0.45U L= 0.05U
MP5 8 not_A 7 1 PMOS  W= 0.45U L= 0.05U
MP6 F2 not_B 8 1 PMOS  W= 0.45U L= 0.05U
MP7 10 not_C F2 1 PMOS  W= 0.45U L= 0.05U
MP8 11 not_A 10 1 PMOS  W= 0.45U L= 0.05U
MP9 1 in_b 11 1 PMOS  W= 0.45U L= 0.05U
MP10 12 in_a 1 1 PMOS  W= 0.45U L= 0.05U
MP11 13 not_B 12 1 PMOS  W= 0.45U L= 0.05U
MP12 F2 not_C 13 1 PMOS  W= 0.45U L= 0.05U
MP13 1 18 F1 1 PMOS  W= 0.10U L= 0.05U
MP14 15 in_c F2 1 PMOS  W= 0.45U L= 0.05U
MP15 16 in_b 15 1 PMOS  W= 0.45U L= 0.05U
MP16 1 in_a 16 1 PMOS  W= 0.45U L= 0.05U
MP17 18 in_d 1 1 PMOS  W= 0.10U L= 0.05U
MP18 1 in_c not_C 1 PMOS  W= 0.10U L= 0.05U
MP19 1 in_c 18 1 PMOS  W= 0.10U L= 0.05U
MP20 1 in_b not_B 1 PMOS  W= 0.10U L= 0.05U
MP21 18 in_b 1 1 PMOS  W= 0.10U L= 0.05U
MP22 1 in_a not_A 1 PMOS  W= 0.10U L= 0.05U
MP23 1 in_a 18 1 PMOS  W= 0.10U L= 0.05U
*
C2 1 0  1.188fF
C3 1 0  0.528fF
C4 out 0  0.092fF
C5 5 0  0.308fF
C6 6 0  0.059fF
C7 7 0  0.086fF
C8 8 0  0.086fF
C9 F2 0  0.376fF
C10 10 0  0.086fF
C11 11 0  0.086fF
C12 12 0  0.086fF
C13 13 0  0.086fF
C14 F1 0  0.188fF
C15 15 0  0.086fF
C16 16 0  0.092fF
C17 not_C 0  0.202fF
C18 18 0  0.309fF
C19 not_B 0  0.216fF
C20 not_A 0  0.223fF
C22 22 0  0.281fF
C23 23 0  0.083fF
C24 24 0  0.276fF
C25 25 0  0.273fF
C26 26 0  0.130fF
C27 27 0  0.136fF
C28 28 0  0.136fF
C29 in_c 0  0.282fF
C30 in_d 0  0.059fF
C31 31 0  0.001fF
C32 in_b 0  0.259fF
C33 33 0  0.001fF
C34 in_a 0  0.249fF
C35 35 0  0.001fF
C36 36 0  0.001fF
C37 37 0  0.001fF
C38 38 0  0.001fF
C39 39 0  0.001fF
C40 40 0  0.001fF
C41 41 0  0.001fF
C42 42 0  0.001fF
C43 43 0  0.001fF
C44 44 0  0.001fF
C45 45 0  0.001fF
C46 46 0  0.001fF
C47 47 0  0.001fF
C48 48 0  0.001fF
C49 49 0  0.001fF
C50 50 0  0.001fF
C51 51 0  0.001fF
C52 52 0  0.001fF
C53 53 0  0.001fF
C54 54 0  0.001fF
C55 55 0  0.001fF
C56 56 0  0.001fF
C57 57 0  0.001fF
C58 58 0  0.001fF
C59 59 0  0.001fF
*
* n-MOS Model 3 :
* low leakage
.MODEL NMOS NMOS LEVEL=3 VTO=0.40 UO=600.000 TOX= 2.0E-9
+LD =0.000U THETA=0.500 GAMMA=0.400
+PHI=0.200 KAPPA=0.060 VMAX=120.00K
+CGSO=100.0p CGDO=100.0p
+CGBO= 60.0p CJSW=240.0p
*
* p-MOS Model 3:
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
.print  V(F1) V(not_A) V(out) V(F2) V(not_C) V(in_b) V(in_a) V(in_c) V(in_d) > out.txt
.END
