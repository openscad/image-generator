use <catchnhole/catchnhole.scad>

$fa = 4;
$fs = 0.4;
eps = 0.01;

translate([0, 0, 10])
mirror([0, 0, 1])
difference () {
  translate([-5, -5, eps]) cube([10, 10, 10]);

  // Draw a nutcatch parallel to bolt shaft:
  nutcatch_parallel("M3");
  // Draw a bolt gripping the nutcatch:
  bolt("M3", length = 10);

  // Or, draw a nutcatch sidecut into the part:
  translate([0, 0, 4]) {
    nutcatch_sidecut("M3");
    // Draw a bolt gripping the nutcatch:
    bolt("M3", length = 6);
  }
}
