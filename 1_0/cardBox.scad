

CARD_BOX_X = spinnerBoxY;
CARD_BOX_Y = STANDARD_CARD_Y + 3;
CARD_BOX_Z = STANDARD_CARD_X + 4;

echo (CARD_BOX_Z);

SCANNER_STACK = 9 + 8 + 7 + 2;




cardBox =     
    [   "standard card box",
        [
            [ BOX_SIZE_XYZ, [CARD_BOX_X, CARD_BOX_Y, CARD_BOX_Z] ],
            [ BOX_LID,
                [
                    [ LID_SOLID_B, t],
                ]
            ],
            [ BOX_COMPONENT, // scanner cards
                [                                
                    [ POSITION_XY, [0,0]], 
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ,  [SCANNER_STACK, STANDARD_CARD_Y, STANDARD_CARD_X] ],
                    [CMP_CUTOUT_SIDES_4B, [t,t,t,t]],
                    [CMP_CUTOUT_TYPE, BOTH],
                    [CMP_CUTOUT_WIDTH_PCT,50], // how wide the finger hole is
                    [CMP_CUTOUT_HEIGHT_PCT,60 ], // how deep the finger-hole is from top
                ]
            ],                            
            [ BOX_COMPONENT, // endurance
                [                                
                    [ POSITION_XY, [MAX,0]], 
                    [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                    [ CMP_COMPARTMENT_SIZE_XYZ,  [ CARD_BOX_X-SCANNER_STACK - 4.5, STANDARD_CARD_Y, STANDARD_CARD_X] ],
                    [CMP_CUTOUT_SIDES_4B, [t,t,t,t]],
                    [CMP_CUTOUT_TYPE, BOTH],
                    [CMP_CUTOUT_WIDTH_PCT,50], // how wide the finger hole is
                    [CMP_CUTOUT_HEIGHT_PCT,60 ], // how deep the finger-hole is from top
                ]
            ],

        ]
    ];