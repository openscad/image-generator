translate([500, 532]) text("SCON", 32);
translate([500, 500]) text("JSON for OpenSCAD", 16);

module t(y, t) color("black") translate([500, 500 - y]) text(t, 12, font="Liberation Mono:style=Bold");
t( 40, "cfg_scon = [");
t( 60, "    [\"fn\",100],");
t( 80, "    [\"sphere\",[");
t(100, "        [\"radius\",1],");
t(120, "        [\"center\",[1,2,3]],");
t(140, "    ]],");
t(160, "];");

$vpt = [ 620.00, 450.00, 0.00 ];
$vpr = [ 40.00, 0.00, 20.00 ];
$vpd = 600;
