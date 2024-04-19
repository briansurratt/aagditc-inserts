
module assetBox1() {

    difference () {
        boxShell(assets_box_x, assets_box_y, asset_box_z_1, 3 * turret_base_z, true);
        terminalArray();
        turretArray();
        versionText("1.0.0", assets_box_x, assets_box_y);
    }

    translate([0,assets_box_y + 10,0]) {
        lid(x = assets_box_x, y = assets_box_y, lText ="TECHNOLOGY");
    }

}

module assetBox2() {
    difference() {
        boxShell(assets_box_x, assets_box_y, asset_box_z_2, 3 * turret_base_z, true);
        eggArray(xCount = 4, yCount = 2);
        faceHuggerArray();
        versionText("1.0.0", assets_box_x, assets_box_y);
    }

    translate([0,assets_box_y + 10,0]) {
        lid(x = assets_box_x, y = assets_box_y, lText ="INFESTATION");
    }
    
}

module termninalProxy() {
    translate([0,0,termninal_side/2]) 
    cube([termninal_side, termninal_side, termninal_side], true);
}

module terminalVoid() {
    translate([0,0,padded_termninal_side/2]) 
    cube([padded_termninal_side, padded_termninal_side, padded_termninal_side], true);
}

module crateProxy() {
    translate([0,0,crate_z/2]) 
    cube([padded_crate_size, padded_crate_size, crate_z],true);
}


module eggProxy() {
    cylinder(h = egg_z, d = padded_egg_base_d);
}

module eggArray(xCount,yCount) {
    
    yOffset = (assets_box_y - 1.5 * WALL_THICKNESS - padded_egg_base_d * 2 - WALL_THICKNESS) / 2;
    unitArray(WALL_THICKNESS * 2,yOffset,WALL_THICKNESS,xCount,yCount, padded_egg_base_d, padded_egg_base_d,1.5 *  WALL_THICKNESS, 1.5 * WALL_THICKNESS ) {
        eggProxy();
    }

}

module turretArray() {

    padded_turret_side = turret_base_side + 1;

    xOffset = assets_box_x - 3 * WALL_THICKNESS - padded_turret_side;
    yOffset = (assets_box_y - 2 * WALL_THICKNESS - padded_turret_side * 2 - WALL_THICKNESS) / 2;

    unitArray(xOffset,yOffset,WALL_THICKNESS,1,2, padded_turret_side, padded_turret_side, WALL_THICKNESS* 2, WALL_THICKNESS* 2 ) {
        translate([0,0,turret_z/2]) 
        cube([padded_turret_side,padded_turret_side,turret_z], true);
    }
}   

module faceHuggerArray() {
    xOffset = assets_box_x - 3 * WALL_THICKNESS  - PADDED_MINI_BASE_DIAMETER;
    yOffset = (assets_box_y - 2 * WALL_THICKNESS - PADDED_MINI_BASE_DIAMETER * 2 - WALL_THICKNESS) / 2;
    unitArray(xOffset,yOffset,WALL_THICKNESS,1,2, PADDED_MINI_BASE_DIAMETER, PADDED_MINI_BASE_DIAMETER, 2 * WALL_THICKNESS, 2 * WALL_THICKNESS ) {
        cylinder(h = faceHugger_z, d = PADDED_MINI_BASE_DIAMETER);
    }
}


module terminalArray() {

    yOffset = (assets_box_y - 2 * WALL_THICKNESS - padded_termninal_side * 2 - WALL_THICKNESS) / 2;

    unitArray(
    WALL_THICKNESS * 3,
    yOffset,
    WALL_THICKNESS,
    3,
    2, 
    padded_termninal_side, 
    padded_termninal_side, 
    WALL_THICKNESS * 2, 
    WALL_THICKNESS * 2) {
        terminalVoid();
    }
}

module assetBox3() {

    crate_box_x = 90;
    crate_box_y = 58;
    crate_box_z = 20;

    difference() {
        boxShell(xDim = crate_box_x, yDim = crate_box_y, zDim = crate_box_z, fillets = true);
        versionText("1.0.0", crate_box_x, crate_box_y);
    }
    translate(v = [0,crate_box_y + 10,0])  {
        lid (x = crate_box_x,  y = crate_box_y, w=WALL_THICKNESS, lText="CRATES");
    }
}