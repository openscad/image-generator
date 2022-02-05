include <BOSL2/std.scad>
include <BOSL2/metric_screws.scad>
translate([-25, 0, 0])
metric_bolt(headtype="hex", size=10, l=15, torx=50);
metric_bolt(size=10, l=15, flange=5);
translate([25, 0, 0])
metric_nut(size=10, hole=true, pitch=1.5, flange=3, details=true);
