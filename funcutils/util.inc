font = "Roboto Condensed:style=Medium";
size = 20;

module t(str) {
    linear_extrude(0.1) text(text = str, size = size, font = font);
}

module i(str) {
    color("black") t(str);
}

module o(str) {
    color("blue") t(str("\u2B5F ", str));
}

module align() {
    idx = $children - 1;
    fm = fontmetrics(size, font);
    for (l = [0:1:idx]) {
        translate([0, fm.interline * (idx - l), 0]) children(l);
    }
}