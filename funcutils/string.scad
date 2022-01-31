use <util.inc>

base = 1 * 4096 + 94 * 256;

for (y = [0:1:15])
    for (x = [0:1:15])
        translate(29 * [x, y])
            i(chr(base + 16 * y + x));