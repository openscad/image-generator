use <rcolyer-plot-function/demo_plot_function.scad>
union() {
	PlotFunction(4, [-25, 0.4, 25], [-25, 0.4, 0]);
	difference() {
		translate([-25, -1, 0]) cube([50, 2, 16]);
		translate([slit_pos, 0, 16/2]) cube([2, 3, 16+2], center=true);
		translate([-slit_pos, 0, 16/2]) cube([2, 3, 16+2], center=true);
	}
	PlotFunction(5, [-25, 0.4, 25], [0, 0.4, 30]);
}
