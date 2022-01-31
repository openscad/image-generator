use <util.inc>
include <funcutils/funcutils.scad>

v = [1, 2, 3, 4, 5, 6, 7, 8, 9];
s = slice(v, 1, 2, 7);

align() {
    i(str("v = ", v));
    i("s = slice(v, 1, 2, 7);");
    o(str(s));
}
