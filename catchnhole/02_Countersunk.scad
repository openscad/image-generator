use <catchnhole/catchnhole.scad>

$fa = 4;
$fs = 0.4;
eps = 0.01;

bolt("M4", 20, kind = "countersunk", head_diameter_clearance = 0.1, countersink = 0);
