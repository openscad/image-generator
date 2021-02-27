use <rcolyer-threads/threads.scad>
translate([0, 0, 5.99]) AugerThread(15, 3.5, 22, 7, tooth_angle=15, tip_height=7);
translate([-4, -9, 0]) cube([8, 18, 6]);
