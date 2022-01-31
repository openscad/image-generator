use <util.inc>
include <funcutils/funcutils.scad>

v=[ [], [0,1,2,3], [0,1,2,3,0/0], [[],false,true,"ok"] ];

for(b) let(p = function(x) is_num(x)) {
  if (all_of(v, p = p)) echo(str("all_of(", v, ",is_num) = true"));
  if (any_of(v, p = p)) echo(str("any_of(", v, ",is_num) = true"));
  if (none_of(v, p = p)) echo(str("none_of(", v, ",is_num) = true"));
}

align() {
    i(str("v = ", v));
    i("for(b) let(p = function(x) is_num(x)) {");
    i("  if (all_of(v, p = p)) echo(str(\"all_of(\", v, \",is_num) = true\"));");
    i("  if (any_of(v, p = p)) echo(str(\"any_of(\", v, \",is_num) = true\"));");
    i("  if (none_of(v, p = p)) echo(str(\"none_of(\", v, \",is_num) = true\"));");
    i("}");
    o(str(s));
}
