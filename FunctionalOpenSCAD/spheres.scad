use <FunctionalOpenSCAD/functional.scad>
use <FunctionalOpenSCAD/alternative_spheres.scad>

r = 14;

translate([-45, 0, 0]) poly3d(sphere2(r));

translate([-15, 0, 0]) poly3d(normalized_cube(r, div_count = 8));

translate([15, 0, 0]) poly3d(spherified_cube(r, div_count = 8));

translate([45, 0, 0]) poly3d(icosahedron_old(r, n = 2));