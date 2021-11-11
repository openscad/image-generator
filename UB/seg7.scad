use <UB/ub.scad>

$fa = 2; $fs = 0.2;

for (n = [0:1:9]) translate([8 * n, 0]) Seg7(n);