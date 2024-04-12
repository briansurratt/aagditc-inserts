module lidAccess(x,y,z,w=WALL_THICKNESS) {

    accessLength = 20;
    accessHeight = 1.5;

    insetMod = -w * 2/3;

    zMod = z-accessHeight + 0.1;


    translate([0, insetMod,zMod]) cube([accessLength, w, accessHeight]);
    translate([x-accessLength, insetMod,zMod]) cube([accessLength, w, accessHeight]);
    translate([0, y-w-insetMod,zMod]) cube([accessLength, w, accessHeight]);
    translate([x-accessLength, y-w-insetMod,zMod]) cube([accessLength, w, accessHeight]);

    translate([insetMod, 0,zMod]) cube([w, accessLength, accessHeight]);
    translate([insetMod, y-accessLength,zMod]) cube([w, accessLength, accessHeight]);
    translate([x-w - insetMod , 0,zMod]) cube([w, accessLength, accessHeight]);
    translate([x-w - insetMod, y-accessLength,zMod]) cube([w, accessLength, accessHeight]);

}


module lid(x,y,w=WALL_THICKNESS, lText="YOUR TEXT HERE")  {

    inset = WALL_THICKNESS + PADDING;

    innerX = x - 2 * (inset);
    innerY = y - 2 * (inset);
    innerZ = 2 * WALL_THICKNESS;
    
    difference() {

        union() {
            cube([x,y,WALL_THICKNESS]);
            difference() {
                translate([inset, inset, 0]) {
                    cube([innerX, innerY, innerZ]);
                }

                translate([inset + WALL_THICKNESS, inset + WALL_THICKNESS, WALL_THICKNESS]) {
                    cube([innerX - 2 * WALL_THICKNESS, innerY - 2 * WALL_THICKNESS , WALL_THICKNESS + 1]);
                }
            }
            lidDetents(x,y);
        }

        lidText(lText, x,y) ;
    }

}


module lidDetents(x,y) {
    
    inset = WALL_THICKNESS + G_DETENT_INSET;

    translate([inset, WALL_THICKNESS, WALL_THICKNESS + G_DETENT_DEPTH]) {
        MakeDetent();
    }

    translate([x - inset, WALL_THICKNESS, WALL_THICKNESS + G_DETENT_DEPTH]) {
        MakeDetent();
    }

    translate([inset, y - WALL_THICKNESS, WALL_THICKNESS + G_DETENT_DEPTH]) {
        MakeDetent();
    }

    translate([x - inset, y - WALL_THICKNESS, WALL_THICKNESS + G_DETENT_DEPTH]) {
        MakeDetent();
    }


    translate([WALL_THICKNESS, inset, WALL_THICKNESS + G_DETENT_DEPTH]) {
        MakeDetent("Y");
    }


    translate([WALL_THICKNESS, y - inset, WALL_THICKNESS + G_DETENT_DEPTH]) {
        MakeDetent("Y");
    }


    translate([x - WALL_THICKNESS, inset, WALL_THICKNESS + G_DETENT_DEPTH]) {
        MakeDetent("Y");
    }


    translate([x - WALL_THICKNESS, y - inset, WALL_THICKNESS + G_DETENT_DEPTH]) {
        MakeDetent("Y");
    }
        

    
}

module lidText(text, x,y)  {

    translate([x/2,y/2,-0.5]) 
    linear_extrude(height = 3 * WALL_THICKNESS + 1) {


    mirror([1,0,0]) 
    text(text, 
    font = "Major Snafu:style=Regular",
    size = 7,
    halign = "center",
    valign = "center",
    spacing=1.25
    );

    }

}