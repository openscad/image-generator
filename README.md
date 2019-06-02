# image-generator
This is just a simple Makefile to generate animated images from OpenSCAD
files as input. It takes a list of `.scad` files, converts those to `PNG`
relying on the OpenSCAD script to set the camera position and then joins
the images with morphing transition using ImageMagick.

Tested on Debian/Testing with ImageMagick 7.0.8-39.
```
$ convert --version
Version: ImageMagick 7.0.8-39 Q16 x86_64 2019-04-11 https://imagemagick.org
Copyright: © 1999-2019 ImageMagick Studio LLC
License: https://imagemagick.org/script/license.php
Features: Cipher DPC HDRI OpenMP 
Delegates (built-in): bzlib fontconfig freetype pangocairo png x xml zlib
```
