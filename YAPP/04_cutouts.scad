include <YAPP/library/YAPPgenerator_v11.scad>

 wallThickness        = 1.5;
 basePlaneThickness   = 1.0;
 lidPlaneThickness    = 1.0;

 baseWallHeight       = 5;
 lidWallHeight        = 5;

 pcbLength            = 35.0;
 pcbWidth             = 26.0;
 pcbThickness         = 1.0; 

 // padding between pcb and inside wall
 paddingFront         = 1;
 paddingBack          = 1;
 paddingRight         = 1.5;
 paddingLeft          = 1.5;

 // ridge where base and lid off box can overlap
 // Make sure this isn't less than lidWallHeight
 ridgeHeight          = 2; 
roundRadius         = 0.5;

 pinDiameter          = 1.8;
 standoffDiameter     = 4;

 // How much the PCB needs to be raised from the bottom 
 // to leave room for solderings and whatnot
 standoffHeight       = 2.0; 
 
//-- pcb standoffs -- origin is pcb-0,0
pcbStands =    [
                   [3.4,         3.0,        yappBoth, yappPin]  // back-left
                 , [3.4,         pcbWidth-3, yappBoth, yappHole] // back-right
                 , [pcbLength-3, 7.5,        yappBoth, yappHole] // front-left
                 , [pcbLength-3, pcbWidth-3, yappBoth, yappPin]  // front-right
               ];

//-- front plane -- origin is pcb-0,0 (red)
cutoutsFront = [
                    [14.0, 1.0, 12.0, 10.0, yappRectCenter] // microUSB
               ];

//-- top plane -- origin is pcb-0,0
cutoutsLid =   [
                    [6.0, -1.0,       6.0, pcbLength-12, yappRectangle] // left-header
                  , [6.0, pcbWidth-4, 6.0, pcbLength-12, yappRectangle] // right-header
                  , [18.7, 8.8,       2.0, 0.0,          yappCircle]  // blue led
               ];

//-- bottom plane -- origin is pcb-0,0
cutoutsBase =  [ 
                    [6.0, -1.0,       6.0, pcbLength-12, yappRectangle] // left-header
                  , [6.0, pcbWidth-4, 6.0, pcbLength-12, yappRectangle] // right-header
               ];

//-- left plane -- origin is pcb-0,0
cutoutsLeft =  [
                    [31.0, 0.5, 4.5, 3, yappRectCenter] // reset button
               ];

YAPPgenerate();
