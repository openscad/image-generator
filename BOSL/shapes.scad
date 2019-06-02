include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/transforms.scad>

$fa = 4; $fs = 0.4;
$vpt = [0, 0, 0];
$vpr = [ 55, 0, 30 ];
$vpd = 500;

ymove(50) xdistribute(80) {
    // Shown Left to right.
    cyl(l=40, d=40, chamfer=7);  // Default chamfang=45
    cyl(l=40, d=40, chamfer=7, chamfang=30, from_end=false);
    cyl(l=40, d=40, chamfer=7, chamfang=30, from_end=true);
}

ymove(-50) distribute(80) {
    // Shown Front to Back.
    cyl(l=40, d=40, fillet1=15, orient=ORIENT_X);
    cyl(l=40, d=40, chamfer2=5, orient=ORIENT_X);
    cyl(l=40, d=40, chamfer1=12, fillet2=10, orient=ORIENT_X);
}
