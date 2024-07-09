* SPICE NETLIST
***************************************

.SUBCKT L POS NEG
.ENDS
***************************************
.SUBCKT nor X VDD GND F Y
** N=6 EP=5 IP=0 FDC=4
M0 F X GND GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=2.45e-13 PD=1.48e-06 PS=1.48e-06 $X=45 $Y=-290 $D=0
M1 F Y GND GND N_18 L=1.8e-07 W=5e-07 AD=2.45e-13 AS=2.45e-13 PD=1.48e-06 PS=1.48e-06 $X=1615 $Y=-290 $D=0
M2 VDD X 4 VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06 $X=-1030 $Y=1825 $D=1
M3 F Y 4 VDD P_18 L=1.8e-07 W=1e-06 AD=4.9e-13 AS=4.9e-13 PD=1.98e-06 PS=1.98e-06 $X=2160 $Y=1825 $D=1
.ENDS
***************************************
