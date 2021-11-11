use <UB/ub.scad>

$fa = 2; $fs = 0.2;

Ttorus(r=2,r2=+0.5,pitch=6,twist=360,angle=720,scale=0.4)R(90)cylinder(.1,d1=2,d2=0,$fn=6);