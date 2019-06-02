include <dotSCAD/bezier_curve.scad>
include <dotSCAD/bezier_surface.scad>
include <dotSCAD/function_grapher.scad>

$fa = 4;$fs = 0.4;
$vpt = [ 100, 70, 35 ];
$vpr = [ 80, 0, 300 ];
$vpd = 600;

t_step = 0.05;
thickness = 0.5;

ctrl_pts = [
    [[0, 0, 20],  [60, 0, -35],   [90, 0, 60],    [200, 0, 5]],
    [[0, 50, 30], [100, 60, -25], [120, 50, 120], [200, 50, 5]],
    [[0, 100, 0], [60, 120, 35],  [90, 100, 60],  [200, 100, 45]],
    [[0, 150, 0], [60, 150, -35], [90, 180, 60],  [200, 150, 45]]
];

g = bezier_surface(t_step, ctrl_pts);
function_grapher(g, thickness);
