CIRCUIT C:\Users\MaironSC\Desktop\Microwind 3\circuito.msk
*
* IC Technology: K-CMOS Free-PDK-Based 45nm - 6 Metal
*
VDD VDD_in 0 DC 1.00
VA in_A 0 DC 0 PULSE(0.00 1.00 2.50N 0.02N 0.02N 3.00N 5.55N)
VB in_B 0 DC 0 PULSE(0.00 1.00 5.00N 0.03N 0.03N 3.00N 8.05N)
VC in_C 0 DC 0 PULSE(0.00 1.00 6.00N 0.03N 0.03N 3.00N 9.05N)
*
* List of nodes
* "N3" corresponds to n°3
* "N4" corresponds to n°4
* "out" corresponds to n°OUT
* "N6" corresponds to n°6
* "N7" corresponds to n°7
* "N8" corresponds to n°8
* "N9" corresponds to n°9
* "not C" corresponds to n°nt_C
* "not B" corresponds to n°nt_b
* "not A" corresponds to n°nt_a
* "GND" corresponds to n°0
* "A" corresponds to n°in_A
* "B" corresponds to n°in_B
* "C" corresponds to n°in_C
*
* MOS devices
MN1 15 in_C OUT 0 NMOS  W= 0.40U L= 0.05U
MN2 OUT nt_a 15 0 NMOS  W= 0.40U L= 0.05U
MN3 15 nt_b OUT 0 NMOS  W= 0.40U L= 0.05U
MN4 16 nt_C 15 0 NMOS  W= 0.40U L= 0.05U
MN5 15 nt_a 16 0 NMOS  W= 0.40U L= 0.05U
MN6 16 in_B 15 0 NMOS  W= 0.40U L= 0.05U
MN7 17 in_A 16 0 NMOS  W= 0.40U L= 0.05U
MN8 16 nt_b 17 0 NMOS  W= 0.40U L= 0.05U
MN9 17 nt_C 16 0 NMOS  W= 0.40U L= 0.05U
MN10 0 in_C 17 0 NMOS  W= 0.40U L= 0.05U
MN11 17 in_B 0 0 NMOS  W= 0.40U L= 0.05U
MN12 0 in_A 17 0 NMOS  W= 0.40U L= 0.05U
MN13 0 in_C nt_C 0 NMOS  W= 0.10U L= 0.05U
MN14 0 in_B nt_b 0 NMOS  W= 0.13U L= 0.05U
MN15 0 in_A nt_a 0 NMOS  W= 0.10U L= 0.05U
MP1 3 in_C VDD_in VDD_in PMOS  W= 0.45U L= 0.05U
MP2 4 nt_a 3 VDD_in PMOS  W= 0.45U L= 0.05U
MP3 OUT nt_b 4 VDD_in PMOS  W= 0.45U L= 0.05U
MP4 6 nt_C OUT VDD_in PMOS  W= 0.45U L= 0.05U
MP5 7 nt_a 6 VDD_in PMOS  W= 0.45U L= 0.05U
MP6 VDD_in in_B 7 VDD_in PMOS  W= 0.45U L= 0.05U
MP7 8 in_A VDD_in VDD_in PMOS  W= 0.45U L= 0.05U
MP8 9 nt_b 8 VDD_in PMOS  W= 0.45U L= 0.05U
MP9 OUT nt_C 9 VDD_in PMOS  W= 0.45U L= 0.05U
MP10 10 in_C OUT VDD_in PMOS  W= 0.45U L= 0.05U
MP11 11 in_B 10 VDD_in PMOS  W= 0.45U L= 0.05U
MP12 VDD_in in_A 11 VDD_in PMOS  W= 0.45U L= 0.05U
MP13 VDD_in in_C nt_C VDD_in PMOS  W= 0.10U L= 0.05U
MP14 VDD_in in_B nt_b VDD_in PMOS  W= 0.10U L= 0.05U
MP15 VDD_in in_A nt_a VDD_in PMOS  W= 0.10U L= 0.05U
*
C2 VDD_in 0  0.944fF
C3 3 0  0.086fF
C4 4 0  0.086fF
C5 OUT 0  0.408fF
C6 6 0  0.086fF
C7 7 0  0.086fF
C8 8 0  0.086fF
C9 9 0  0.086fF
C10 10 0  0.086fF
C11 11 0  0.092fF
C12 nt_C 0  0.202fF
C13 nt_b 0  0.216fF
C14 nt_a 0  0.223fF
C15 15 0  0.281fF
C16 16 0  0.276fF
C17 17 0  0.273fF
C19 in_A 0  0.172fF
C20 20 0  0.001fF
C21 21 0  0.001fF
C22 in_B 0  0.176fF
C23 in_C 0  0.193fF
C24 24 0  0.001fF
C25 25 0  0.001fF
C26 26 0  0.001fF
C27 27 0  0.001fF
C28 28 0  0.001fF
C29 29 0  0.001fF
C30 30 0  0.001fF
C31 31 0  0.001fF
C32 32 0  0.001fF
C33 33 0  0.001fF
C34 34 0  0.001fF
C35 35 0  0.001fF
C36 36 0  0.001fF
C37 37 0  0.001fF
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
.plot  V(nt_a) V(nt_b) V(nt_C) V(in_A) V(in_B) V(in_C) V(OUT)

.END
