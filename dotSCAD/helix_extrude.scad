include <dotSCAD/helix.scad>
include <dotSCAD/rotate_p.scad>
include <dotSCAD/cross_sections.scad>
include <dotSCAD/polysections.scad>
include <dotSCAD/helix_extrude.scad>

$fa = 4;$fs = 0.4;
$vpt = [-20, 40, 0];
$vpr = [ 65, 0, 30 ];
$vpd = 300;

r1 = 40;
r2 = 20;
levels = 5;
level_dist = 10;

shape_pts = [
    [10, -2],
    [10, 2],
    [9, 2],
    [9, 0],
    [1, 0],
    [1, 2],
    [0, 2],
    [0, -2],
];

helix_extrude(shape_pts,
    radius = [r1, r2],
    levels = levels,
    level_dist = level_dist,
    vt_dir = "SPI_UP"
);

%cylinder(h = levels * level_dist, r1 = r1, r2 = r2);
