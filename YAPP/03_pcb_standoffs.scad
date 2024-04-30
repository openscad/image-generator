include <YAPP/library/YAPPgenerator_v12.scad>
pcbLength    = 68.5; 
pcbWidth     = 53.3; 
pcbThickness = 1.5;                              
pcbStands = [
                 [14.0, 2.5,  yappBoth,     yappPin]  // back-left 
               , [15.3, 50.7, yappBaseOnly, yappPin]  // back-right 
               , [66.1, 7.6,  yappBoth,     yappPin]  // front-left  
               , [66.1, 35.5, yappBoth,     yappPin]  // front-right 
            ];
YAPPgenerate();
