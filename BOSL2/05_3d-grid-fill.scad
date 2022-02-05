include <BOSL2/std.scad>
poly = [for (i=[0:11]) polar_to_xy(50*(i%2+1), i*360/12-90)];
grid2d(5, stagger=true, inside=poly) {
    cylinder(d=4,h=10,spin=90,$fn=6);
}
