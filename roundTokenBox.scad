BLIP_STACK = discs(42);  
MISSION_BLIP_X = BLIP_STACK + 2;
MISSION_BLIP_STACK = discs(4); 
EGG_X = MISSION_BLIP_X + MISSION_BLIP_STACK + 2;
EGG_STACK = discs(9); 
ACID_X = EGG_X + EGG_STACK + 2;

//ROUND_TOKEN_Y = PLAYER_CARD_BOX_Y - TOKEN_BOX_Y - 2; // 64.5
ROUND_TOKEN_Y = 57;

SWARM_STACK = discs(21);

roundTokenBox = [
    "round token box",
    [
    [ BOX_SIZE_XYZ, [TOKEN_BOX_X, ROUND_TOKEN_Y, TOKEN_BOX_Z] ],
    [ BOX_STACKABLE_B, false],
    [ BOX_LID,
        [
            [ LID_SOLID_B, t]
        ]
    ],
[
        BOX_COMPONENT, // blips
        [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            // [ CMP_SHAPE, ROUND], 
            [ POSITION_XY, [0,  0 ]],  
            [CMP_SHAPE_ROTATED_B, true],
            [ CMP_COMPARTMENT_SIZE_XYZ, [ BLIP_STACK, DISC_DIA, DISC_DIA] ],
            [CMP_CUTOUT_WIDTH_PCT,75], 
            [CMP_CUTOUT_HEIGHT_PCT,50],
            [CMP_CUTOUT_TYPE, BOTH],
            [CMP_CUTOUT_SIDES_4B, [f,f,t,t]],

        ]
    ],
    [
        BOX_COMPONENT, // mission blips
        [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [MISSION_BLIP_X,  0 ]],  
            [CMP_SHAPE_ROTATED_B, true],
            [ CMP_COMPARTMENT_SIZE_XYZ, [ MISSION_BLIP_STACK, DISC_DIA, DISC_DIA] ],
            [CMP_CUTOUT_WIDTH_PCT,75], 
            [CMP_CUTOUT_HEIGHT_PCT,50],
            [CMP_CUTOUT_TYPE, BOTH],
            [CMP_CUTOUT_SIDES_4B, [f,f,t,t]],
        ]
    ],
    [
        BOX_COMPONENT, // blips
        [
            [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [ POSITION_XY, [EGG_X,  0 ]],  
            [CMP_SHAPE_ROTATED_B, true],
            [ CMP_COMPARTMENT_SIZE_XYZ, [ EGG_STACK, DISC_DIA, DISC_DIA] ],
            [CMP_CUTOUT_WIDTH_PCT,75], 
            [CMP_CUTOUT_HEIGHT_PCT,50],
            [CMP_CUTOUT_TYPE, BOTH],
            [CMP_CUTOUT_SIDES_4B, [f,f,t,t]],
        ]
    ],
    [ BOX_COMPONENT,   // acid, facehuggers
        [ 
            [CMP_NUM_COMPARTMENTS_XY, [1, 2] ],
            // [ CMP_SHAPE, ROUND], 
            [ POSITION_XY, [ACID_X, 0]],  
            [ CMP_COMPARTMENT_SIZE_XYZ, [ discs(2), DISC_DIA, DISC_DIA] ],
            [CMP_CUTOUT_WIDTH_PCT,75], 
            [CMP_CUTOUT_HEIGHT_PCT,50],
            [CMP_CUTOUT_TYPE, BOTH],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
        ]

    ],
    [ BOX_COMPONENT,   // extra
        [ 
            [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [POSITION_XY, [0, DISC_DIA + 2]],  
            [CMP_COMPARTMENT_SIZE_XYZ, [ 72, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],
        ]

    ],
    [ BOX_COMPONENT,   // swarm markers
        [ 
            [CMP_NUM_COMPARTMENTS_XY, [1, 1] ],
            [POSITION_XY, [74, DISC_DIA + 2]],  
            [CMP_COMPARTMENT_SIZE_XYZ, [ SWARM_STACK, SQUARE_TILE_DIM, SQUARE_TILE_DIM] ],
            [CMP_CUTOUT_WIDTH_PCT,75], 
            [CMP_CUTOUT_HEIGHT_PCT,50],
            [CMP_CUTOUT_TYPE, BOTH],
            [CMP_CUTOUT_SIDES_4B, [f,f,f,t]],
        ]
    ],

    ]
]