include <BOSL/constants.scad>
use <BOSL/nema_steppers.scad>
use <BOSL/transforms.scad>

$fa = 4; $fs = 0.4;
$vpt = [ 0, 0, -20 ];
$vpr = [ 60, 0, 40 ];
$vpd = 320;

nema23_stepper();
