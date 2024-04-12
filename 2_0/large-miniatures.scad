
module larageCharacterBox() {



    large_character_box_interior_x = large_character_box_x - 2 * WALL_THICKNESS;
    large_character_box_interior_y = large_character_box_y - 2 * WALL_THICKNESS;



    loaderOffset =    WALL_THICKNESS+ LARGE_BASE_HOLE_RADIUS + PADDING; 

    difference() {
        cube([large_character_box_x,large_character_box_y,large_character_box_z]);
    
        translate([
            WALL_THICKNESS, 
            WALL_THICKNESS, 
            WALL_THICKNESS + 3 * MINI_BASE_THICKNESS])  {
            cube([large_character_box_interior_x,large_character_box_interior_y,large_character_box_z]);
        }


        translate([loaderOffset, loaderOffset, 0]) {
            largeCharacterBaseHole();
        }

        translate([loaderOffset + LARGE_BASE_DIAMETER + WALL_THICKNESS, large_character_box_y/2, 0]) {
            largeCharacterBaseHole();
        }

        versionText("1.1.0", large_character_box_x, large_character_box_y);
        boxDetents(large_character_box_x, large_character_box_y,large_character_box_z);
        lidAccess(large_character_box_x, large_character_box_y,large_character_box_z);
    }
    
    boxFillets(large_character_box_x, large_character_box_y );


    translate([0,large_character_box_y + 10, 0] ) lid(large_character_box_x, large_character_box_y);

}

module largeCharacterBaseHole() {
    translate([0,0,WALL_THICKNESS]) 
    cylinder(h = 5 * MINI_BASE_THICKNESS, r = LARGE_BASE_HOLE_RADIUS);
}














