include <BOSL2/std.scad>
$fa=1; $fs=1;
rgn = [ for (d=[50:-10:10]) circle(d=d) ];
tforms = [
    for (a=[90:-5:0]) xrot(a, cp=[0,-70]),
    for (a=[0:5:90]) xrot(a, cp=[0,70]),
    move([0,150,-70]) * xrot(90),
];
sweep(rgn, tforms, closed=false, caps=true);
