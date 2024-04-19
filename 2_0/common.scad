module boxFillets(x,y,s=7,h=MAX_Z, w=WALL_THICKNESS) {

    // 0,0
    cornerFillet(s,h);

    // x, 0
    translate([x,0,0])  {
        rotate(90) cornerFillet(s,h);
    }

    // x, y
    translate([x,y,0])  {
    rotate(180) cornerFillet(s,h);
    }


    // x, y
    translate([0,y,0])  {
    rotate(270) cornerFillet(s,h);
    }


}

module boxShell(xDim = 100, yDim = 50, zDim = 25, zLift = 0, fillets=false) {
    difference() {
        cube([xDim, yDim, zDim]);
        translate([WALL_THICKNESS, WALL_THICKNESS, WALL_THICKNESS + zLift])
        cube([xDim- 2* WALL_THICKNESS, yDim - 2 * WALL_THICKNESS, zDim]);
        lidAccess(xDim,yDim, zDim);
        boxDetents(xDim, yDim, zDim);
    }
    if (fillets) {
        boxFillets(x=xDim, y=yDim, h=zDim);
    }
}

module versionText(text= "0.0.0", x,y) {

    translate([x/2,y/2,-0.5]) 
    linear_extrude(height = 1) {


    mirror([1,0,0]) 
    text(text, font = "Liberation Sans",
    size = 5,
    halign = "center",
    valign = "center"
    );}

}


module cornerFillet(s= 10, h = MAX_Z ) {
    linear_extrude(h - 2)  {
        polygon(
            [
                [0,0],
                [0,s],
                [s,0]
            ]
            );
    }
}


module unitArray(
            xOffset=0, // distance from 0,0,0 to start the array
             yOffset=0, // distance from 0,0,0 to start the array
             zOffset=0, // distance from 0,0,0 to start the array
             xCount=2,  // number units in X
             yCount=2,  // number units in Y
             xDim = 10, // size of the unit in X
             yDim = 10, // size of the unit in T
             xGap = 1,  // space between units in X
             yGap = 1,  // space between units in Y
    ) 
{ 

    translate([xOffset, yOffset, zOffset])  {
        for (y = [1:yCount]) {
            shiftY = yDim/2 + (y - 1) * (yDim + yGap);
            for (x = [1:xCount]) {
                shiftX = xDim/2 + (x - 1) * (xDim + xGap);;
                translate([shiftX, shiftY,0]) 
                children();
            }
        }
    }
}
