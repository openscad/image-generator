include <BOLTS/BOLTS.scad>

$fa = 4;$fs = 0.4;
$vpt = [ 0, 0, 0 ];
$vpr = [ 80, 0, 20 ];
$vpd = 160;

translate([-20, 0, 0])
DIN711(key="51200", part_mode="default");

translate([20, 0, 3])
rotate([90, 0, 0])
DIN625_1(key="6000", type="open", part_mode="default");
