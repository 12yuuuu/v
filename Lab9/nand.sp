* SPICE NETLIST
***************************************

.SUBCKT L POS NEG
.ENDS
***************************************
.SUBCKT nand X GND VDD F Y
** N=6 EP=5 IP=0 FDC=4
M0 F X 2 GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=2.45e-13 PD=1.48e-06 PS=1.48e-06 $X=-880 $Y=160 $D=0
M1 2 Y GND GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=2.45e-13 PD=1.48e-06 PS=1.48e-06 $X=595 $Y=160 $D=0
M2 VDD X F VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06 $X=-1925 $Y=2345 $D=1
M3 VDD Y F VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06 $X=1265 $Y=2345 $D=1
.ENDS
***************************************
