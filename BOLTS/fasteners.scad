include <BOLTS/BOLTS.scad>

$fa = 4;$fs = 0.4;
$vpt = [ 10, 15, 20 ];
$vpr = [ 70, 0, 310 ];
$vpd = 160;
include <BOLTS.scad>

%translate([0, -5, 0]) cube([10,30,40]);

module screw(cube_cs, m) {
    //BOLTS part connectors
    washer_cs = ISO7089_conn("top",m);
    bolt_cs = ISO4017_conn("root",m,20);
    nut_cs = ISO4035_conn("bottom",m);

    //connectors can be displayed with
    //show_cs(cube_cs);

    //thickness of washer
    s = get_dim(ISO7089_dims(m),"s");

    //position washer and bolt at the location specified by cube_cs
    align(washer_cs,cube_cs) ISO7089(m);
    align(bolt_cs,cube_cs,[-s,0,0]) ISO4017(m,20);
    align(washer_cs,cube_cs,[10+s,0,0]) ISO7089(m);
    align(nut_cs,cube_cs,[10+s,0,0]) ISO4035(m);
}

//target connector
cube_cs1 = new_cs(origin = [10,10,10], axes = [[-1,0,0],[0,-1,0]]);
screw(cube_cs1, "M8");
cube_cs2 = new_cs(origin = [10,10,30], axes = [[-1,0,0],[0,-1,0]]);
screw(cube_cs2, "M3");
