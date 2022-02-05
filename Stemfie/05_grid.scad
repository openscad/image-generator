include <Stemfie/stemfie.scad>
difference()
{
  union()
  {
    bevel_plate(h = 0.25)
      offset(r = BU/2)
        square([3 * BU, 4 * BU], center = true);
    hole_grid([4,5], l = 0.25, neg = false);
  }
  hole_grid([4,5], l = 0.25);
}
