use <dotSCAD/box_extrude.scad>

$fa = 4;$fs = 0.4;
$vpt = [70, 40, 0];
$vpr = [ 55, 0, 20 ];
$vpd = 400;

box_extrude(height = 10, shell_thickness = 1)
    offset(3) offset(-3)
    text("SCAD", size = 40, font = "Montserrat:style=Black");
