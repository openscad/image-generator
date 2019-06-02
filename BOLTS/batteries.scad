include <BOLTS/BOLTS.scad>

$fa = 4;$fs = 0.4;
$vpt = [ 0, 0, 25 ];
$vpr = [ 55, 0, 25 ];
$vpd = 220;

translate([-30, 0, 0])
roundBattery(T="AAA", part_mode="default");
translate([30, 0, 0])
roundBattery(T="AA", part_mode="default");
roundBattery(T="C", part_mode="default");
