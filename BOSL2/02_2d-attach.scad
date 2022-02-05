include <BOSL2/std.scad>
ellipse(d=50)
    attach(BACK+RIGHT, FRONT+LEFT)
        ellipse(d=30);
