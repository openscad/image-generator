include <BOSL/constants.scad>
use <BOSL/beziers.scad>
use <BOSL/transforms.scad>

$fa = 4; $fs = 0.4;
$vpt = [ 80, 10, 0];
$vpr = [ 60, 0, 130 ];
$vpd = 400;

path = [
  [  0, 10], [ 50,  0], [ 50, 40],
  [ 95, 40], [100, 40], [100, 45],
  [ 95, 45], [ 66, 45], [  0, 20],
  [  0, 12], [  0, 12], [  0, 10],
  [  0, 10]
];
revolve_bezier(path, splinesteps=32, $fn=180);
