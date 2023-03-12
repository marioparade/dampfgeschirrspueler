
laenge = 40;
breite = 40; 
dicke = 0.2;
hoehe = 1;
difference(){
    difference(){
        cube([laenge,breite,dicke],center = false);
        translate([breite/2,5,0])
            square(0.5);
     }
     for (i=[1:4])
        for (j=[1:4])
            translate([i*10-5.5,j*10-5.5,0])
            square(1);
}
// translate([laenge/2,    breite    ,1])
    cube([laenge,dicke,hoehe],center = false);
    cube([dicke,laenge,hoehe],center = false);
translate([0,    breite    ,0])
    cube([laenge,dicke,hoehe],center = false);
translate([laenge,    0    ,0])
    cube([dicke,laenge,hoehe],center = false);
translate([breite/2,5,-1])   
   linear_extrude(height = 1, twist = 0, slices = 10) {
        difference() {
            offset(r = 0.6) {
            square(0.5, center = true);
            }
            offset(r = 0.4) {
            square(0.5, center = true);
            }
        }
    } 

for (i=[1:4])
     for (j=[1:4])
         translate([i*10-5,j*10-5,0])   
            linear_extrude(height = 1, twist = 0, slices = 10) {
                difference() {
                    offset(r = 0.6) {
                    square(0.5, center = true);
                    }
                    offset(r = 0.4) {
                    square(0.5, center = true);
                    }
        }
    } 