
alpha_x_mini_count = 5;
bravo_x_mini_count = 4;

number_of_cells_x = alpha_x_mini_count + bravo_x_mini_count;
number_of_cell_walls_x = number_of_cells_x + 2;
number_of_cells_y = 2;
nunber_of_cell_walls_y = number_of_cells_y + 1;

relief_hole_diameter = 15;

space_between_cells_x = 2;
space_between_cells_y = space_between_cells_x;

// alpha_section_x = space_between_cells_x * (alpha_x_mini_count + 1)  + alpha_x_mini_count * PADDED_MINI_BASE_DIAMETER;
// alpha_section_y = space_between_cells_y * nunber_of_cell_walls_y + number_of_cells_y * (PADDED_MINI_BASE_DIAMETER + 2 * PADDING);


// bravo_section_x = space_between_cells_x * (bravo_x_mini_count + 1)  + bravo_x_mini_count * PADDED_MINI_BASE_DIAMETER;

characterMiniRadius = PADDED_MINI_BASE_DIAMETER/2;
totalCharCellDim = PADDED_MINI_BASE_DIAMETER  + 2 * PADDING;

module characterMinisAlpha() {
    characterBox(cellsX = alpha_x_mini_count,
                cellsY = number_of_cells_y,
                version="1.1.0",
                lText = "FIRE TEAM");
}

module characterMinisBravo() {
    characterBox(
                cellsX = bravo_x_mini_count,
                cellsY = number_of_cells_y,
                version="1.1.0",
               lText = "CIVILIANS");
} 


module characterBox(cellsX, cellsY, version, lText) {

    xDim = 2 * WALL_THICKNESS + (totalCharCellDim * cellsX)  + (space_between_cells_x *  (cellsX - 1));
    yDim = 2 * WALL_THICKNESS + (totalCharCellDim * cellsY)  + (space_between_cells_y *  (cellsY - 1));

    zDim = CHARACTER_BOX_Z;

    difference() {

        cube([xDim, yDim, zDim]);
        translate([WALL_THICKNESS, WALL_THICKNESS, WALL_THICKNESS + MINI_BASE_THICKNESS * 3])  {
            cube([xDim - 2 * WALL_THICKNESS, yDim - 2 * WALL_THICKNESS, zDim]);
        }

        for (y = [1:cellsY]) {

            shift_y = WALL_THICKNESS +  (totalCharCellDim / 2)  + ((totalCharCellDim + space_between_cells_y) * (y-1));
            for (x =[1:cellsX]) {

                shift_x = WALL_THICKNESS +  (totalCharCellDim / 2)  + ((totalCharCellDim + space_between_cells_x) * (x-1));
                translate([shift_x, shift_y,0]) 
                characterColumn(zDim);

            }  

            translate([0,shift_y,0]) {
                fingerHole();
            }
            translate([xDim - WALL_THICKNESS  ,shift_y,0]) {
                fingerHole();
            }

        }

        versionText(version, xDim, yDim);
        boxDetents(xDim, yDim, zDim);
        lidAccess(xDim, yDim, zDim);

    }

    boxFillets(x = xDim,y = yDim, h=zDim);

    // central spine
    translate([0,-space_between_cells_y/2 + yDim/2, 0,]) 
    cube([xDim, space_between_cells_y, zDim-2]) ;  // 


    translate([0,yDim + 10,0]) {
        lid(x = xDim, y = yDim, lText = lText);
    }

}

module fingerHole() {
    translate([-WALL_THICKNESS/2,-relief_hole_diameter/2,WALL_THICKNESS + MINI_BASE_THICKNESS * 3]) 
    cube([WALL_THICKNESS * 2,relief_hole_diameter, MAX_Z ]);
}

module characterColumn(zDim) {

    translate([0,0,WALL_THICKNESS])  {
        cylinder(h = zDim + 2, d = PADDED_MINI_BASE_DIAMETER);
    }

    cylinder(h = zDim, d = relief_hole_diameter);

}

module interiorRelief(xDim, yDim, zDim, cellsY) {

    for (y = [1:cellsY]) {

        translate([
            space_between_cells_x,
            y * (space_between_cells_y + PADDING) + (y -1) * characterMiniReliefY,
            3 * MINI_BASE_THICKNESS
            ]
            ) {

        cube([xDim - 2 * space_between_cells_x, characterMiniReliefY, zDim]);
        }

    }


translate([space_between_cells_x, space_between_cells_y, zDim - WALL_THICKNESS]) 
    cube ([
        xDim - 2 * space_between_cells_x,
        yDim - 2 * space_between_cells_y,
        WALL_THICKNESS + 1
    ]);


}


