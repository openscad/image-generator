include <dotSCAD/shape_cyclicpolygon.scad>

$fa = 4;$fs = 0.4;
$vpt = [20, -10, 0];
$vpr = [ 50, 0, 30 ];
$vpd = 170;

circle_r = 10;
corner_r = 3;

$fn = 24;

for(i = [0:2]) {
    translate([i * circle_r * 2, 0, 0])
        polygon(
            shape_cyclicpolygon(
                sides = 3 + i,
                circle_r = circle_r,
                corner_r = corner_r
            )
        );
}

for(i = [0:2]) {
    translate([i * circle_r * 2, -circle_r * 2, 0])
        polygon(
            shape_cyclicpolygon(
                sides = 4 + i,
                circle_r = circle_r,
                corner_r = corner_r
            )
        );
}
