

CARD_BOX_X = spinnerBoxY;
CARD_BOX_Y = STANDARD_CARD_Y + 3;
CARD_BOX_Z = STANDARD_CARD_X + 2;

cardBox =     
    [   "standard card box",
        [
            [ BOX_SIZE_XYZ, [CARD_BOX_X, CARD_BOX_Y, CARD_BOX_Z] ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, t],
                ]
            ],
            [ BOX_COMPONENT, // scanner level 1
                [                                
                    [ POSITION_XY, [0,0]], 
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ,  [9, STANDARD_CARD_Y, STANDARD_CARD_X] ],
                    [CMP_CUTOUT_SIDES_4B, [f,f,t,t]],
                    [CMP_CUTOUT_TYPE, BOTH],
                    [CMP_CUTOUT_WIDTH_PCT,50], // how wide the finger hole is
                    [CMP_CUTOUT_HEIGHT_PCT,60 ], // how deep the finger-hole is from top
                ]
            ],                            
            [ BOX_COMPONENT, // scanner level 2
                [                                
                    [ POSITION_XY, [11,0]], 
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ,  [ 8, STANDARD_CARD_Y, STANDARD_CARD_X] ],
                ]
            ],                            
            [ BOX_COMPONENT, // scanner level 4
                [                                
                    [ POSITION_XY, [21,0]], 
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ,  [ 7, STANDARD_CARD_Y, STANDARD_CARD_X] ],
                ]
            ],                            
            [ BOX_COMPONENT, // endurance
                [                                
                    [ POSITION_XY, [30,0]], 
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ,  [ 34, STANDARD_CARD_Y, STANDARD_CARD_X] ],
                    [CMP_CUTOUT_SIDES_4B, [f,f,t,t]],
                    [CMP_CUTOUT_TYPE, BOTH],
                    [CMP_CUTOUT_WIDTH_PCT,50], // how wide the finger hole is
                    [CMP_CUTOUT_HEIGHT_PCT,60 ], // how deep the finger-hole is from top
                ]
            ],

        ]
    ];