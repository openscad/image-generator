include <Stemfie/stemfie.scad>
difference()
{
  union()
  {
    brace(4, holes = false);

    cutout(l = 0.25, neg = false)
      BU_Tx(1)
        hole_slot(l = 3);
  }
  cutout(l = 0.25, neg = true)
    BU_Tx(1)
      hole_slot(l = 3);
}
