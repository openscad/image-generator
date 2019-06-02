include <BOLTS/BOLTS.scad>

$fa = 4;$fs = 0.4;
$vpt = [ 0, 0, 10 ];
$vpr = [ 35, 0, 20 ];
$vpd = 160;

l=5;
tslot20x20(l=l, detailed=true, part_mode="default");
translate([30, 0, 0])
tslot20x20_2s(l=l, detailed=true, part_mode="default");
translate([-30, 0, 0])
tslot20x20_1s(l=l, detailed=true, part_mode="default");
