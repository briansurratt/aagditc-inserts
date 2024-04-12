
module xenoTray() {

    xDim = 129; // this is the size of the other tray
    yDim = (BOX_Y - 2)  / 3; // keep a little extra wiggle room
    zDim = MAX_Z;

    // interior dimensions
    xIntDim = xDim - 2 * WALL_THICKNESS;
    yIntDim = yDim - 2 * WALL_THICKNESS;
    zIntDim = zDim - WALL_THICKNESS; // allow for lid insert;

    interiorWallThickness = 1;

    cellsInX = 4;
    cellsInY = 2;

    wallsInX = cellsInX - 1;
    wallsInY = cellsInY - 1;

    cellXDim = (xIntDim - (wallsInX * WALL_THICKNESS)) / cellsInX;
    cellYDim = (yIntDim - (wallsInY * WALL_THICKNESS)) / cellsInY;

    difference() {
        cube([xDim, yDim, zDim]);
        // cellArray(cellsInX, cellsInY, cellXDim, cellYDim,zDim );
        translate([WALL_THICKNESS, WALL_THICKNESS, WALL_THICKNESS])  {
            cube([xIntDim, yIntDim, zDim]);
        }
        versionText("1.0.0", xDim, yDim);
        lidAccess(xDim,yDim, zDim);
        boxDetents(xDim, yDim, zDim);
    }

    cellWallArray(cellsInX, xDim, yDim, zIntDim, interiorWallThickness);
    boxFillets(xDim, yDim);

    // central divider
    translate([0,yDim/2 - interiorWallThickness/2,0]) cube([xDim,interiorWallThickness, 3*MINI_BASE_THICKNESS]);



    translate([0,yDim + 10,0]) {
        lid(x = xDim, y = yDim, lText ="XENOMORPHS");
    }


    module cellArray(xCount, yCount, cellX, cellY, cellZ) {

        for (y = [1:yCount]) {
            shiftY = WALL_THICKNESS + (y - 1) * (cellY + WALL_THICKNESS) ;
            for (x = [1:xCount]) {
                shiftX = WALL_THICKNESS + (x - 1) * (cellX + WALL_THICKNESS) ;
                translate([
                    shiftX, 
                    shiftY, 
                    WALL_THICKNESS]) {
                    #cube([cellX, cellY, cellZ]);
                }
            }
        }
        
    }

    module cellWallArray(numberOfCells, trayX, wallY, wallZ, wallThickness) {

        xShfit = trayX / numberOfCells;

        for (x = [1:numberOfCells-1]) {
            translate([xShfit * x,0,0]) 
            interiorWall(wallY, wallZ,wallThickness);
        }
      
    }

    module interiorWall(wallY, wallZ, cellWallThickness) {

        wallMaxZ = wallZ * 2/3;
        wallMinZ = 3 * MINI_BASE_THICKNESS;
        wallSlopeRun = wallMaxZ - wallMinZ;

        translate([cellWallThickness / 2,0,0]) 
        rotate([0,-90,0]) 
        linear_extrude(height = cellWallThickness) {
        polygon([
            [0,0],
            [wallMaxZ, 0],
            [wallMinZ, wallSlopeRun],
            [ wallMinZ, wallY-wallSlopeRun],
            [wallMaxZ, wallY],
            [0, wallY],
        ]);
        }

    }

}
