module boxDetents(x,y,z,w=WALL_THICKNESS) {

    perCornerInsent = w + G_DETENT_INSET;

    // x - dimensions
    translate([perCornerInsent, w, z-G_DETENT_DEPTH])  {
        MakeDetent();    
    }

    translate([x- perCornerInsent, w, z-G_DETENT_DEPTH])  {
        MakeDetent();    
    }

    translate([perCornerInsent, y-w, z-G_DETENT_DEPTH])  {
        MakeDetent();    
    }

    translate([x- perCornerInsent, y-w, z-G_DETENT_DEPTH])  {
        MakeDetent();    
    }

    // y - dimensions
    translate([w,perCornerInsent, z-G_DETENT_DEPTH])  {
        MakeDetent("Y");    
    }

    translate([w, y -perCornerInsent, z-G_DETENT_DEPTH])  {
        MakeDetent("Y");    
    }

    translate([x-w,perCornerInsent, z-G_DETENT_DEPTH])  {
        MakeDetent("Y");    
    }

    translate([x-w, y -perCornerInsent, z-G_DETENT_DEPTH])  {
        MakeDetent("Y");    
    }

}

module MakeDetent(orientation = "X")
{

    rotation = (orientation == "X")?0:90;
    rotate(rotation) {
        resize( [G_DETENT_DEPTH * 2, 1, 1.0]){
            sphere( r = 1, $fn = 12 ); 
        }
    }

}

