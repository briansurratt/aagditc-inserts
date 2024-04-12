HOBBIT_CARD_X = STANDARD_CARD_X;
HOBBIT_CARD_Y = 41;

HOBBIT_BOX_X = spinnerBoxY;
HOBBIT_BOX_Y = 54;
HOBBIT_BOX_Z = HOBBIT_CARD_Y + 2;

hobbitCardBox = [
    "hobbit card box",
    [
        [ BOX_SIZE_XYZ, [HOBBIT_BOX_X, HOBBIT_BOX_Y, HOBBIT_BOX_Z] ],
        [ BOX_LID,
            [
                [ LID_SOLID_B, t],
            ]
        ],
        [ BOX_COMPONENT, // experience cards
            [
                [ POSITION_XY, [0,0]], 
                [ CMP_NUM_COMPARTMENTS_XY, [1, 8] ],
                [ CMP_COMPARTMENT_SIZE_XYZ,  [HOBBIT_CARD_X,4, HOBBIT_BOX_Z] ],
                [CMP_CUTOUT_SIDES_4B, [t,t,f,f]],
                [CMP_CUTOUT_TYPE, BOTH],
                [CMP_CUTOUT_WIDTH_PCT,50], 
                [CMP_CUTOUT_HEIGHT_PCT,60 ], 
            ]
        ],
        [ BOX_COMPONENT, // hivemind cards
            [
                [ POSITION_XY, [0,40]], 
                [ CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
                [ CMP_COMPARTMENT_SIZE_XYZ,  [HOBBIT_CARD_X,11, HOBBIT_BOX_Z] ],
                [CMP_CUTOUT_SIDES_4B, [f,t,f,f]],
                [CMP_CUTOUT_TYPE, BOTH],
                [CMP_CUTOUT_WIDTH_PCT,50], 
                [CMP_CUTOUT_HEIGHT_PCT,60 ], 
            ]
        ]

    ]

];