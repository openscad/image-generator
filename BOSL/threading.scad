include <BOSL/constants.scad>
use <BOSL/threading.scad>
use <BOSL/transforms.scad>

$fa = 4; $fs = 0.4;
$vpt = [0, 0, 15];
$vpr = [ 65, 0, 30 ];
$vpd = 120;

xmove(-12) zmove(15)
  metric_trapezoidal_threaded_rod(d=10, l=30, pitch=2, left_handed=true, bevel=true);
xmove(12) zmove(5)
  metric_trapezoidal_threaded_nut(od=16, id=10, h=10, pitch=2, left_handed=true, bevel=true);
