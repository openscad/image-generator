use <rcolyer-plot-function/demo_plot_function.scad>
difference() {
	PlotPolarFunction(2, 20, 0.8);
	translate([0, 0, -2]) PlotPolarFunction(2, 20.1, 0.8);
}
