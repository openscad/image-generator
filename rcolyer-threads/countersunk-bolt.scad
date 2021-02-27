use <rcolyer-threads/threads.scad>
translate([-10,0,0]) MetricCountersunkBolt(5, 10);
translate([10,-8,5])
	scale([1,1,-1])
	CountersunkClearanceHole(5, 8, [7,7,0], [0,0,0])
	cube([14, 14, 5]);
