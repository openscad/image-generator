include <BOSL2/std.scad>
include <BOSL2/gears.scad>
t1 = 16; t2 = 28;
bevel_gear(
    pitch=5, teeth=t1, mate_teeth=t2,
    slices=12, anchor="apex", orient=FWD
);
bevel_gear(
    pitch=5, teeth=t2, mate_teeth=t1, left_handed=true,
    slices=12, anchor="apex", spin=180/t2
);
