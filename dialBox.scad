bigDialDiameter = 60;
spinnerDia = 45;
spinnerBoxX = 67;
spinnerBoxY = 68.5;
spinnerBoxZ = bigDialDiameter + 2;

dialsBox = [

     "dial box",
        [
            [ BOX_SIZE_XYZ, [spinnerBoxX, spinnerBoxY, spinnerBoxZ] ],
            [BOX_STACKABLE_B, false],
            [ ENABLED_B, true],
            [ BOX_LID,
                [   
                    [ LID_SOLID_B, t],
                ]
            ],
            [ BOX_COMPONENT, // aim dials
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [CMP_SHAPE, ROUND],
                    [ POSITION_XY, [0,0]],  
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ spinnerDia, spinnerBoxY - walls(2), spinnerBoxZ] ],
                    [CMP_CUTOUT_SIDES_4B, [t,t,f,f]],
                    [CMP_CUTOUT_TYPE, BOTH],
                    [CMP_CUTOUT_WIDTH_PCT,50], // how wide the finger hole is
                    [CMP_CUTOUT_HEIGHT_PCT,60 ], // how deep the finger-hole is from top
                ]
            ],                            
            [ BOX_COMPONENT, // big dials
                [
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [CMP_SHAPE, ROUND],
                    [ POSITION_XY, [MAX,MAX]],  
                    [CMP_SHAPE_ROTATED_B, true],
                    [CMP_COMPARTMENT_SIZE_XYZ,  [ 18, , spinnerBoxY - walls(2), spinnerBoxZ] ],
                    [CMP_CUTOUT_TYPE, BOTH],
                    [CMP_CUTOUT_BOTTOM_B, false],
                    [CMP_CUTOUT_HEIGHT_PCT,60 ], // how deep the finger-hole is from top
                    [CMP_CUTOUT_SIDES_4B, [f,f,t,f]],
                    [CMP_PEDESTAL_BASE_B, false]


                ]
            ],                           
        ]
   

];