
module assetBox1() {
 




crateSize = 21;
crate_z = 13.8;
crate_count = 16;



boxShell(assets_box_x, assert_box_y, asset_box_z_1);
#eggArray(2,4);
turretArray();
faceHuggerArray();



module eggProxy() {
    cylinder(h = egg_z, d = egg_base_d);
}

module eggArray(xCount,yCount) {

    // for (y = [1:yCount]) {
    //     shiftY = WALL_THICKNESS * 2 + egg_base_d/2 + (y - 1) * (egg_base_d + WALL_THICKNESS);
    //     for (x = [1:xCount]) {
    //         shiftX = WALL_THICKNESS * 2 + egg_base_d/2 + (x - 1) * (egg_base_d + WALL_THICKNESS);;
    //         translate([shiftX, shiftY,WALL_THICKNESS ]) 
    //         eggProxy(); 
    //     }
    // }

    unitArray(WALL_THICKNESS * 2,WALL_THICKNESS * 2,WALL_THICKNESS,xCount,yCount, egg_base_d, egg_base_d, WALL_THICKNESS, WALL_THICKNESS ) {
        eggProxy();
    }

}

    module turretArray() {
        xOffset = assets_box_x - 2 * WALL_THICKNESS - turret_base_side;
        unitArray(xOffset,WALL_THICKNESS * 2,WALL_THICKNESS,1,2, turret_base_side, turret_base_side, WALL_THICKNESS, WALL_THICKNESS ) {
            translate([0,0,turret_z/2]) 
            #cube([turret_base_side,turret_base_side,turret_z], true);
        }
    }   

    module faceHuggerArray() {
        xOffset = assets_box_x - 3 * WALL_THICKNESS - turret_base_side - MINI_BASE_DIAMETER;
        unitArray(xOffset,WALL_THICKNESS * 2,WALL_THICKNESS,1,2, facehugger_diameter, facehugger_diameter, WALL_THICKNESS, WALL_THICKNESS ) {
             #cylinder(h = faceHugger_z, d = facehugger_diameter);
        }
    }

}

module assetBox2() {
    boxShell(assets_box_x, assert_box_y, asset_box_z_2);
}





